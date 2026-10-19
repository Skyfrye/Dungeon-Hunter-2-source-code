; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed40, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efc8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getValueSize() const
; decoder-mode: arm
0060efc8  0c 00 a0 e3                                      mov r0, #0xc
0060efcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f5e8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f5e8  10 40 2d e9                                      push {r4, lr}
0060f5ec  00 40 a0 e1                                      mov r4, r0
0060f5f0  2e fb f3 eb                                      bl #0x30e2b0
0060f5f4  04 00 a0 e1                                      mov r0, r4
0060f5f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610610, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getInstance()
; decoder-mode: arm
00610610  70 40 2d e9                                      push {r4, r5, r6, lr}
00610614  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610618  70 30 9f e5                                      ldr r3, [pc, #0x70]
0061061c  04 40 8f e0                                      add r4, pc, r4
00610620  03 60 94 e7                                      ldr r6, [r4, r3]
00610624  00 30 96 e5                                      ldr r3, [r6]
00610628  01 00 13 e3                                      tst r3, #1
0061062c  02 00 00 0a                                      beq #0x61063c
00610630  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610634  05 00 94 e7                                      ldr r0, [r4, r5]
00610638  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061063c  06 00 a0 e1                                      mov r0, r6
00610640  49 f8 f3 eb                                      bl #0x30e76c
00610644  00 00 50 e3                                      cmp r0, #0
00610648  f8 ff ff 0a                                      beq #0x610630
0061064c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610650  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610654  06 00 a0 e1                                      mov r0, r6
00610658  03 30 94 e7                                      ldr r3, [r4, r3]
0061065c  05 60 94 e7                                      ldr r6, [r4, r5]
00610660  08 30 83 e2                                      add r3, r3, #8
00610664  00 30 86 e5                                      str r3, [r6]
00610668  f3 f8 f3 eb                                      bl #0x30ea3c
0061066c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610670  06 00 a0 e1                                      mov r0, r6
00610674  03 10 94 e7                                      ldr r1, [r4, r3]
00610678  20 30 9f e5                                      ldr r3, [pc, #0x20]
0061067c  03 20 94 e7                                      ldr r2, [r4, r3]
00610680  1f f7 f3 eb                                      bl #0x30e304
00610684  05 00 94 e7                                      ldr r0, [r4, r5]
00610688  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0061068c  74 44 38 00 9c 3e 00 00 40 32 00 00 28 48 00 00  .byte 0x74, 0x44, 0x38, 0x00, 0x9c, 0x3e, 0x00, 0x00, 0x40, 0x32, 0x00, 0x00, 0x28, 0x48, 0x00, 0x00
0061069c  7c 10 00 00 90 18 00 00                          .byte 0x7c, 0x10, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0061890c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061890c  00 20 a0 e3                                      mov r2, #0
00618910  01 30 a0 e1                                      mov r3, r1
00618914  01 20 c3 e4                                      strb r2, [r3], #1
00618918  01 30 83 e2                                      add r3, r3, #1
0061891c  01 20 c1 e5                                      strb r2, [r1, #1]
00618920  01 20 c3 e4                                      strb r2, [r3], #1
00618924  01 20 c3 e4                                      strb r2, [r3], #1
00618928  01 20 c3 e4                                      strb r2, [r3], #1
0061892c  01 20 c3 e4                                      strb r2, [r3], #1
00618930  01 20 c3 e4                                      strb r2, [r3], #1
00618934  01 20 c3 e4                                      strb r2, [r3], #1
00618938  01 20 c3 e4                                      strb r2, [r3], #1
0061893c  01 20 c3 e4                                      strb r2, [r3], #1
00618940  01 20 c3 e4                                      strb r2, [r3], #1
00618944  00 20 c3 e5                                      strb r2, [r3]
00618948  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061fce0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061fce0  01 00 a0 e1                                      mov r0, r1
0061fce4  02 10 a0 e1                                      mov r1, r2
0061fce8  03 20 a0 e1                                      mov r2, r3
0061fcec  df ff ff ea                                      b #0x61fc70

; FUNCTION 0x0061fda8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061fda8  01 00 a0 e1                                      mov r0, r1
0061fdac  04 c0 9d e5                                      ldr ip, [sp, #4]
0061fdb0  02 10 a0 e1                                      mov r1, r2
0061fdb4  03 20 a0 e1                                      mov r2, r3
0061fdb8  00 30 9d e5                                      ldr r3, [sp]
0061fdbc  00 c0 8d e5                                      str ip, [sp]
0061fdc0  ca ff ff ea                                      b #0x61fcf0

; FUNCTION 0x0061fe30, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061fe30  01 00 a0 e1                                      mov r0, r1
0061fe34  02 10 a0 e1                                      mov r1, r2
0061fe38  03 20 a0 e1                                      mov r2, r3
0061fe3c  00 30 9d e5                                      ldr r3, [sp]
0061fe40  df ff ff ea                                      b #0x61fdc4

; FUNCTION 0x0061ff18, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061ff18  04 c0 9d e5                                      ldr ip, [sp, #4]
0061ff1c  01 00 a0 e1                                      mov r0, r1
0061ff20  02 10 a0 e1                                      mov r1, r2
0061ff24  03 20 a0 e1                                      mov r2, r3
0061ff28  00 30 9d e5                                      ldr r3, [sp]
0061ff2c  00 c0 8d e5                                      str ip, [sp]
0061ff30  08 c0 9d e5                                      ldr ip, [sp, #8]
0061ff34  04 c0 8d e5                                      str ip, [sp, #4]
0061ff38  c1 ff ff ea                                      b #0x61fe44

; FUNCTION 0x00620460, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620460  10 40 2d e9                                      push {r4, lr}
00620464  00 30 91 e5                                      ldr r3, [r1]
00620468  01 00 a0 e1                                      mov r0, r1
0062046c  02 40 a0 e1                                      mov r4, r2
00620470  0f e0 a0 e1                                      mov lr, pc
00620474  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00620478  00 30 90 e5                                      ldr r3, [r0]
0062047c  00 30 84 e5                                      str r3, [r4]
00620480  04 30 90 e5                                      ldr r3, [r0, #4]
00620484  04 30 84 e5                                      str r3, [r4, #4]
00620488  08 30 90 e5                                      ldr r3, [r0, #8]
0062048c  08 30 84 e5                                      str r3, [r4, #8]
00620490  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006230a0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006230a0  01 00 a0 e1                                      mov r0, r1
006230a4  02 10 a0 e1                                      mov r1, r2
006230a8  03 20 a0 e1                                      mov r2, r3
006230ac  00 30 9d e5                                      ldr r3, [sp]
006230b0  e9 ff ff ea                                      b #0x62305c

; FUNCTION 0x006230f8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006230f8  04 c0 9d e5                                      ldr ip, [sp, #4]
006230fc  01 00 a0 e1                                      mov r0, r1
00623100  02 10 a0 e1                                      mov r1, r2
00623104  03 20 a0 e1                                      mov r2, r3
00623108  00 30 9d e5                                      ldr r3, [sp]
0062310c  00 c0 8d e5                                      str ip, [sp]
00623110  08 c0 9d e5                                      ldr ip, [sp, #8]
00623114  04 c0 8d e5                                      str ip, [sp, #4]
00623118  e5 ff ff ea                                      b #0x6230b4

; FUNCTION 0x00623d48, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623d48  10 40 2d e9                                      push {r4, lr}
00623d4c  02 00 a0 e1                                      mov r0, r2
00623d50  00 30 92 e5                                      ldr r3, [r2]
00623d54  0f e0 a0 e1                                      mov lr, pc
00623d58  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623d5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006270a4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006270a4  01 00 53 e3                                      cmp r3, #1
006270a8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006270ac  03 40 a0 e1                                      mov r4, r3
006270b0  02 b0 a0 e1                                      mov fp, r2
006270b4  29 00 00 0a                                      beq #0x627160
006270b8  00 00 53 e3                                      cmp r3, #0
006270bc  00 80 a0 03                                      moveq r8, #0
006270c0  08 90 a0 01                                      moveq sb, r8
006270c4  08 a0 a0 01                                      moveq sl, r8
006270c8  1e 00 00 0a                                      beq #0x627148
006270cc  00 80 a0 e3                                      mov r8, #0
006270d0  01 50 a0 e1                                      mov r5, r1
006270d4  00 70 a0 e3                                      mov r7, #0
006270d8  08 90 a0 e1                                      mov sb, r8
006270dc  08 a0 a0 e1                                      mov sl, r8
006270e0  07 60 9b e7                                      ldr r6, [fp, r7]
006270e4  00 10 95 e5                                      ldr r1, [r5]
006270e8  04 70 87 e2                                      add r7, r7, #4
006270ec  06 00 a0 e1                                      mov r0, r6
006270f0  1d 9f f3 eb                                      bl #0x30ed6c
006270f4  00 10 a0 e1                                      mov r1, r0
006270f8  08 00 a0 e1                                      mov r0, r8
006270fc  a8 9e f3 eb                                      bl #0x30eba4
00627100  04 10 95 e5                                      ldr r1, [r5, #4]
00627104  00 80 a0 e1                                      mov r8, r0
00627108  06 00 a0 e1                                      mov r0, r6
0062710c  16 9f f3 eb                                      bl #0x30ed6c
00627110  00 10 a0 e1                                      mov r1, r0
00627114  09 00 a0 e1                                      mov r0, sb
00627118  a1 9e f3 eb                                      bl #0x30eba4
0062711c  08 10 95 e5                                      ldr r1, [r5, #8]
00627120  00 90 a0 e1                                      mov sb, r0
00627124  06 00 a0 e1                                      mov r0, r6
00627128  0f 9f f3 eb                                      bl #0x30ed6c
0062712c  00 10 a0 e1                                      mov r1, r0
00627130  0a 00 a0 e1                                      mov r0, sl
00627134  9a 9e f3 eb                                      bl #0x30eba4
00627138  01 40 54 e2                                      subs r4, r4, #1
0062713c  00 a0 a0 e1                                      mov sl, r0
00627140  0c 50 85 e2                                      add r5, r5, #0xc
00627144  e5 ff ff 1a                                      bne #0x6270e0
00627148  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062714c  04 80 83 e4                                      str r8, [r3], #4
00627150  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627154  04 90 82 e5                                      str sb, [r2, #4]
00627158  04 a0 83 e5                                      str sl, [r3, #4]
0062715c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627160  01 20 a0 e1                                      mov r2, r1
00627164  04 00 92 e4                                      ldr r0, [r2], #4
00627168  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062716c  04 00 83 e4                                      str r0, [r3], #4
00627170  04 10 91 e5                                      ldr r1, [r1, #4]
00627174  28 00 9d e5                                      ldr r0, [sp, #0x28]
00627178  04 10 80 e5                                      str r1, [r0, #4]
0062717c  04 20 92 e5                                      ldr r2, [r2, #4]
00627180  04 20 83 e5                                      str r2, [r3, #4]
00627184  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062949c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062949c  01 00 a0 e1                                      mov r0, r1
006294a0  04 c0 9d e5                                      ldr ip, [sp, #4]
006294a4  02 10 a0 e1                                      mov r1, r2
006294a8  03 20 a0 e1                                      mov r2, r3
006294ac  00 30 9d e5                                      ldr r3, [sp]
006294b0  00 c0 8d e5                                      str ip, [sp]
006294b4  ba ff ff ea                                      b #0x6293a4

; FUNCTION 0x006295b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006295b0  01 00 a0 e1                                      mov r0, r1
006295b4  04 c0 9d e5                                      ldr ip, [sp, #4]
006295b8  02 10 a0 e1                                      mov r1, r2
006295bc  03 20 a0 e1                                      mov r2, r3
006295c0  00 30 9d e5                                      ldr r3, [sp]
006295c4  00 c0 8d e5                                      str ip, [sp]
006295c8  ba ff ff ea                                      b #0x6294b8

; FUNCTION 0x0062acac, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062acac  01 00 53 e3                                      cmp r3, #1
0062acb0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062acb4  03 40 a0 e1                                      mov r4, r3
0062acb8  02 b0 a0 e1                                      mov fp, r2
0062acbc  29 00 00 0a                                      beq #0x62ad68
0062acc0  00 00 53 e3                                      cmp r3, #0
0062acc4  00 80 a0 03                                      moveq r8, #0
0062acc8  08 90 a0 01                                      moveq sb, r8
0062accc  08 a0 a0 01                                      moveq sl, r8
0062acd0  1e 00 00 0a                                      beq #0x62ad50
0062acd4  00 80 a0 e3                                      mov r8, #0
0062acd8  01 50 a0 e1                                      mov r5, r1
0062acdc  00 70 a0 e3                                      mov r7, #0
0062ace0  08 90 a0 e1                                      mov sb, r8
0062ace4  08 a0 a0 e1                                      mov sl, r8
0062ace8  07 60 9b e7                                      ldr r6, [fp, r7]
0062acec  00 10 95 e5                                      ldr r1, [r5]
0062acf0  04 70 87 e2                                      add r7, r7, #4
0062acf4  06 00 a0 e1                                      mov r0, r6
0062acf8  1b 90 f3 eb                                      bl #0x30ed6c
0062acfc  00 10 a0 e1                                      mov r1, r0
0062ad00  08 00 a0 e1                                      mov r0, r8
0062ad04  a6 8f f3 eb                                      bl #0x30eba4
0062ad08  04 10 95 e5                                      ldr r1, [r5, #4]
0062ad0c  00 80 a0 e1                                      mov r8, r0
0062ad10  06 00 a0 e1                                      mov r0, r6
0062ad14  14 90 f3 eb                                      bl #0x30ed6c
0062ad18  00 10 a0 e1                                      mov r1, r0
0062ad1c  09 00 a0 e1                                      mov r0, sb
0062ad20  9f 8f f3 eb                                      bl #0x30eba4
0062ad24  08 10 95 e5                                      ldr r1, [r5, #8]
0062ad28  00 90 a0 e1                                      mov sb, r0
0062ad2c  06 00 a0 e1                                      mov r0, r6
0062ad30  0d 90 f3 eb                                      bl #0x30ed6c
0062ad34  00 10 a0 e1                                      mov r1, r0
0062ad38  0a 00 a0 e1                                      mov r0, sl
0062ad3c  98 8f f3 eb                                      bl #0x30eba4
0062ad40  01 40 54 e2                                      subs r4, r4, #1
0062ad44  00 a0 a0 e1                                      mov sl, r0
0062ad48  0c 50 85 e2                                      add r5, r5, #0xc
0062ad4c  e5 ff ff 1a                                      bne #0x62ace8
0062ad50  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ad54  04 80 83 e4                                      str r8, [r3], #4
0062ad58  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062ad5c  04 90 82 e5                                      str sb, [r2, #4]
0062ad60  04 a0 83 e5                                      str sl, [r3, #4]
0062ad64  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062ad68  01 20 a0 e1                                      mov r2, r1
0062ad6c  04 00 92 e4                                      ldr r0, [r2], #4
0062ad70  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ad74  04 00 83 e4                                      str r0, [r3], #4
0062ad78  04 10 91 e5                                      ldr r1, [r1, #4]
0062ad7c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062ad80  04 10 80 e5                                      str r1, [r0, #4]
0062ad84  04 20 92 e5                                      ldr r2, [r2, #4]
0062ad88  04 20 83 e5                                      str r2, [r3, #4]
0062ad8c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
