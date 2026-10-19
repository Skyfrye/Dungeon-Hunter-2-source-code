; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed48, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efb8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getValueSize() const
; decoder-mode: arm
0060efb8  0c 00 a0 e3                                      mov r0, #0xc
0060efbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f610, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::~CVirtualEx()
; decoder-mode: arm
0060f610  10 40 2d e9                                      push {r4, lr}
0060f614  00 40 a0 e1                                      mov r4, r0
0060f618  24 fb f3 eb                                      bl #0x30e2b0
0060f61c  04 00 a0 e1                                      mov r0, r4
0060f620  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610738, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getInstance()
; decoder-mode: arm
00610738  70 40 2d e9                                      push {r4, r5, r6, lr}
0061073c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610740  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610744  04 40 8f e0                                      add r4, pc, r4
00610748  03 60 94 e7                                      ldr r6, [r4, r3]
0061074c  00 30 96 e5                                      ldr r3, [r6]
00610750  01 00 13 e3                                      tst r3, #1
00610754  02 00 00 0a                                      beq #0x610764
00610758  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0061075c  05 00 94 e7                                      ldr r0, [r4, r5]
00610760  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610764  06 00 a0 e1                                      mov r0, r6
00610768  ff f7 f3 eb                                      bl #0x30e76c
0061076c  00 00 50 e3                                      cmp r0, #0
00610770  f8 ff ff 0a                                      beq #0x610758
00610774  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610778  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0061077c  06 00 a0 e1                                      mov r0, r6
00610780  03 30 94 e7                                      ldr r3, [r4, r3]
00610784  05 60 94 e7                                      ldr r6, [r4, r5]
00610788  08 30 83 e2                                      add r3, r3, #8
0061078c  00 30 86 e5                                      str r3, [r6]
00610790  a9 f8 f3 eb                                      bl #0x30ea3c
00610794  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610798  06 00 a0 e1                                      mov r0, r6
0061079c  03 10 94 e7                                      ldr r1, [r4, r3]
006107a0  20 30 9f e5                                      ldr r3, [pc, #0x20]
006107a4  03 20 94 e7                                      ldr r2, [r4, r3]
006107a8  d5 f6 f3 eb                                      bl #0x30e304
006107ac  05 00 94 e7                                      ldr r0, [r4, r5]
006107b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006107b4  4c 43 38 00 d8 27 00 00 ac 0d 00 00 50 29 00 00  .byte 0x4c, 0x43, 0x38, 0x00, 0xd8, 0x27, 0x00, 0x00, 0xac, 0x0d, 0x00, 0x00, 0x50, 0x29, 0x00, 0x00
006107c4  ec 3a 00 00 90 18 00 00                          .byte 0xec, 0x3a, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00615af8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00615af8  01 00 a0 e1                                      mov r0, r1
00615afc  02 10 a0 e1                                      mov r1, r2
00615b00  03 20 a0 e1                                      mov r2, r3
00615b04  d4 ff ff ea                                      b #0x615a5c

; FUNCTION 0x00615c10, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00615c10  01 00 a0 e1                                      mov r0, r1
00615c14  04 c0 9d e5                                      ldr ip, [sp, #4]
00615c18  02 10 a0 e1                                      mov r1, r2
00615c1c  03 20 a0 e1                                      mov r2, r3
00615c20  00 30 9d e5                                      ldr r3, [sp]
00615c24  00 c0 8d e5                                      str ip, [sp]
00615c28  b6 ff ff ea                                      b #0x615b08

; FUNCTION 0x00615cf4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00615cf4  01 00 a0 e1                                      mov r0, r1
00615cf8  02 10 a0 e1                                      mov r1, r2
00615cfc  03 20 a0 e1                                      mov r2, r3
00615d00  00 30 9d e5                                      ldr r3, [sp]
00615d04  c8 ff ff ea                                      b #0x615c2c

; FUNCTION 0x00615e48, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00615e48  04 c0 9d e5                                      ldr ip, [sp, #4]
00615e4c  01 00 a0 e1                                      mov r0, r1
00615e50  02 10 a0 e1                                      mov r1, r2
00615e54  03 20 a0 e1                                      mov r2, r3
00615e58  00 30 9d e5                                      ldr r3, [sp]
00615e5c  00 c0 8d e5                                      str ip, [sp]
00615e60  08 c0 9d e5                                      ldr ip, [sp, #8]
00615e64  04 c0 8d e5                                      str ip, [sp, #4]
00615e68  a6 ff ff ea                                      b #0x615d08

; FUNCTION 0x0061898c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061898c  00 20 a0 e3                                      mov r2, #0
00618990  01 30 a0 e1                                      mov r3, r1
00618994  01 20 c3 e4                                      strb r2, [r3], #1
00618998  01 30 83 e2                                      add r3, r3, #1
0061899c  01 20 c1 e5                                      strb r2, [r1, #1]
006189a0  01 20 c3 e4                                      strb r2, [r3], #1
006189a4  01 20 c3 e4                                      strb r2, [r3], #1
006189a8  01 20 c3 e4                                      strb r2, [r3], #1
006189ac  01 20 c3 e4                                      strb r2, [r3], #1
006189b0  01 20 c3 e4                                      strb r2, [r3], #1
006189b4  01 20 c3 e4                                      strb r2, [r3], #1
006189b8  01 20 c3 e4                                      strb r2, [r3], #1
006189bc  01 20 c3 e4                                      strb r2, [r3], #1
006189c0  01 20 c3 e4                                      strb r2, [r3], #1
006189c4  00 20 c3 e5                                      strb r2, [r3]
006189c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006203f8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006203f8  10 40 2d e9                                      push {r4, lr}
006203fc  00 30 91 e5                                      ldr r3, [r1]
00620400  01 00 a0 e1                                      mov r0, r1
00620404  02 40 a0 e1                                      mov r4, r2
00620408  0f e0 a0 e1                                      mov lr, pc
0062040c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00620410  00 30 90 e5                                      ldr r3, [r0]
00620414  00 30 84 e5                                      str r3, [r4]
00620418  04 30 90 e5                                      ldr r3, [r0, #4]
0062041c  04 30 84 e5                                      str r3, [r4, #4]
00620420  08 30 90 e5                                      ldr r3, [r0, #8]
00620424  08 30 84 e5                                      str r3, [r4, #8]
00620428  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622cd0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622cd0  10 40 2d e9                                      push {r4, lr}
00622cd4  02 00 a0 e1                                      mov r0, r2
00622cd8  00 30 92 e5                                      ldr r3, [r2]
00622cdc  0f e0 a0 e1                                      mov lr, pc
00622ce0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622ce4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623a74, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623a74  01 00 a0 e1                                      mov r0, r1
00623a78  02 10 a0 e1                                      mov r1, r2
00623a7c  03 20 a0 e1                                      mov r2, r3
00623a80  00 30 9d e5                                      ldr r3, [sp]
00623a84  e9 ff ff ea                                      b #0x623a30

; FUNCTION 0x00623acc, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623acc  04 c0 9d e5                                      ldr ip, [sp, #4]
00623ad0  01 00 a0 e1                                      mov r0, r1
00623ad4  02 10 a0 e1                                      mov r1, r2
00623ad8  03 20 a0 e1                                      mov r2, r3
00623adc  00 30 9d e5                                      ldr r3, [sp]
00623ae0  00 c0 8d e5                                      str ip, [sp]
00623ae4  08 c0 9d e5                                      ldr ip, [sp, #8]
00623ae8  04 c0 8d e5                                      str ip, [sp, #4]
00623aec  e5 ff ff ea                                      b #0x623a88

; FUNCTION 0x0062726c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062726c  01 00 53 e3                                      cmp r3, #1
00627270  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627274  03 40 a0 e1                                      mov r4, r3
00627278  02 b0 a0 e1                                      mov fp, r2
0062727c  29 00 00 0a                                      beq #0x627328
00627280  00 00 53 e3                                      cmp r3, #0
00627284  00 80 a0 03                                      moveq r8, #0
00627288  08 90 a0 01                                      moveq sb, r8
0062728c  08 a0 a0 01                                      moveq sl, r8
00627290  1e 00 00 0a                                      beq #0x627310
00627294  00 80 a0 e3                                      mov r8, #0
00627298  01 50 a0 e1                                      mov r5, r1
0062729c  00 70 a0 e3                                      mov r7, #0
006272a0  08 90 a0 e1                                      mov sb, r8
006272a4  08 a0 a0 e1                                      mov sl, r8
006272a8  07 60 9b e7                                      ldr r6, [fp, r7]
006272ac  00 10 95 e5                                      ldr r1, [r5]
006272b0  04 70 87 e2                                      add r7, r7, #4
006272b4  06 00 a0 e1                                      mov r0, r6
006272b8  ab 9e f3 eb                                      bl #0x30ed6c
006272bc  00 10 a0 e1                                      mov r1, r0
006272c0  08 00 a0 e1                                      mov r0, r8
006272c4  36 9e f3 eb                                      bl #0x30eba4
006272c8  04 10 95 e5                                      ldr r1, [r5, #4]
006272cc  00 80 a0 e1                                      mov r8, r0
006272d0  06 00 a0 e1                                      mov r0, r6
006272d4  a4 9e f3 eb                                      bl #0x30ed6c
006272d8  00 10 a0 e1                                      mov r1, r0
006272dc  09 00 a0 e1                                      mov r0, sb
006272e0  2f 9e f3 eb                                      bl #0x30eba4
006272e4  08 10 95 e5                                      ldr r1, [r5, #8]
006272e8  00 90 a0 e1                                      mov sb, r0
006272ec  06 00 a0 e1                                      mov r0, r6
006272f0  9d 9e f3 eb                                      bl #0x30ed6c
006272f4  00 10 a0 e1                                      mov r1, r0
006272f8  0a 00 a0 e1                                      mov r0, sl
006272fc  28 9e f3 eb                                      bl #0x30eba4
00627300  01 40 54 e2                                      subs r4, r4, #1
00627304  00 a0 a0 e1                                      mov sl, r0
00627308  0c 50 85 e2                                      add r5, r5, #0xc
0062730c  e5 ff ff 1a                                      bne #0x6272a8
00627310  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627314  04 80 83 e4                                      str r8, [r3], #4
00627318  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062731c  04 90 82 e5                                      str sb, [r2, #4]
00627320  04 a0 83 e5                                      str sl, [r3, #4]
00627324  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627328  01 20 a0 e1                                      mov r2, r1
0062732c  04 00 92 e4                                      ldr r0, [r2], #4
00627330  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627334  04 00 83 e4                                      str r0, [r3], #4
00627338  04 10 91 e5                                      ldr r1, [r1, #4]
0062733c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00627340  04 10 80 e5                                      str r1, [r0, #4]
00627344  04 20 92 e5                                      ldr r2, [r2, #4]
00627348  04 20 83 e5                                      str r2, [r3, #4]
0062734c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062904c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062904c  01 00 a0 e1                                      mov r0, r1
00629050  04 c0 9d e5                                      ldr ip, [sp, #4]
00629054  02 10 a0 e1                                      mov r1, r2
00629058  03 20 a0 e1                                      mov r2, r3
0062905c  00 30 9d e5                                      ldr r3, [sp]
00629060  00 c0 8d e5                                      str ip, [sp]
00629064  ba ff ff ea                                      b #0x628f54

; FUNCTION 0x00629160, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629160  01 00 a0 e1                                      mov r0, r1
00629164  04 c0 9d e5                                      ldr ip, [sp, #4]
00629168  02 10 a0 e1                                      mov r1, r2
0062916c  03 20 a0 e1                                      mov r2, r3
00629170  00 30 9d e5                                      ldr r3, [sp]
00629174  00 c0 8d e5                                      str ip, [sp]
00629178  ba ff ff ea                                      b #0x629068

; FUNCTION 0x0062ae74, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIcEELi1EcEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<char>, 1, char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062ae74  01 00 53 e3                                      cmp r3, #1
0062ae78  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062ae7c  03 40 a0 e1                                      mov r4, r3
0062ae80  02 b0 a0 e1                                      mov fp, r2
0062ae84  29 00 00 0a                                      beq #0x62af30
0062ae88  00 00 53 e3                                      cmp r3, #0
0062ae8c  00 80 a0 03                                      moveq r8, #0
0062ae90  08 90 a0 01                                      moveq sb, r8
0062ae94  08 a0 a0 01                                      moveq sl, r8
0062ae98  1e 00 00 0a                                      beq #0x62af18
0062ae9c  00 80 a0 e3                                      mov r8, #0
0062aea0  01 50 a0 e1                                      mov r5, r1
0062aea4  00 70 a0 e3                                      mov r7, #0
0062aea8  08 90 a0 e1                                      mov sb, r8
0062aeac  08 a0 a0 e1                                      mov sl, r8
0062aeb0  07 60 9b e7                                      ldr r6, [fp, r7]
0062aeb4  00 10 95 e5                                      ldr r1, [r5]
0062aeb8  04 70 87 e2                                      add r7, r7, #4
0062aebc  06 00 a0 e1                                      mov r0, r6
0062aec0  a9 8f f3 eb                                      bl #0x30ed6c
0062aec4  00 10 a0 e1                                      mov r1, r0
0062aec8  08 00 a0 e1                                      mov r0, r8
0062aecc  34 8f f3 eb                                      bl #0x30eba4
0062aed0  04 10 95 e5                                      ldr r1, [r5, #4]
0062aed4  00 80 a0 e1                                      mov r8, r0
0062aed8  06 00 a0 e1                                      mov r0, r6
0062aedc  a2 8f f3 eb                                      bl #0x30ed6c
0062aee0  00 10 a0 e1                                      mov r1, r0
0062aee4  09 00 a0 e1                                      mov r0, sb
0062aee8  2d 8f f3 eb                                      bl #0x30eba4
0062aeec  08 10 95 e5                                      ldr r1, [r5, #8]
0062aef0  00 90 a0 e1                                      mov sb, r0
0062aef4  06 00 a0 e1                                      mov r0, r6
0062aef8  9b 8f f3 eb                                      bl #0x30ed6c
0062aefc  00 10 a0 e1                                      mov r1, r0
0062af00  0a 00 a0 e1                                      mov r0, sl
0062af04  26 8f f3 eb                                      bl #0x30eba4
0062af08  01 40 54 e2                                      subs r4, r4, #1
0062af0c  00 a0 a0 e1                                      mov sl, r0
0062af10  0c 50 85 e2                                      add r5, r5, #0xc
0062af14  e5 ff ff 1a                                      bne #0x62aeb0
0062af18  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062af1c  04 80 83 e4                                      str r8, [r3], #4
0062af20  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062af24  04 90 82 e5                                      str sb, [r2, #4]
0062af28  04 a0 83 e5                                      str sl, [r3, #4]
0062af2c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062af30  01 20 a0 e1                                      mov r2, r1
0062af34  04 00 92 e4                                      ldr r0, [r2], #4
0062af38  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062af3c  04 00 83 e4                                      str r0, [r3], #4
0062af40  04 10 91 e5                                      ldr r1, [r1, #4]
0062af44  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062af48  04 10 80 e5                                      str r1, [r0, #4]
0062af4c  04 20 92 e5                                      ldr r2, [r2, #4]
0062af50  04 20 83 e5                                      str r2, [r3, #4]
0062af54  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
