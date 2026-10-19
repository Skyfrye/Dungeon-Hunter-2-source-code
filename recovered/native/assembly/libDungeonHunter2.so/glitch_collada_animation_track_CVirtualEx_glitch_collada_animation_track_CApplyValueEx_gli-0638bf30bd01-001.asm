; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed38, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efd8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getValueSize() const
; decoder-mode: arm
0060efd8  0c 00 a0 e3                                      mov r0, #0xc
0060efdc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f5c0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::~CVirtualEx()
; decoder-mode: arm
0060f5c0  10 40 2d e9                                      push {r4, lr}
0060f5c4  00 40 a0 e1                                      mov r4, r0
0060f5c8  38 fb f3 eb                                      bl #0x30e2b0
0060f5cc  04 00 a0 e1                                      mov r0, r4
0060f5d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006104e8, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getInstance()
; decoder-mode: arm
006104e8  70 40 2d e9                                      push {r4, r5, r6, lr}
006104ec  70 40 9f e5                                      ldr r4, [pc, #0x70]
006104f0  70 30 9f e5                                      ldr r3, [pc, #0x70]
006104f4  04 40 8f e0                                      add r4, pc, r4
006104f8  03 60 94 e7                                      ldr r6, [r4, r3]
006104fc  00 30 96 e5                                      ldr r3, [r6]
00610500  01 00 13 e3                                      tst r3, #1
00610504  02 00 00 0a                                      beq #0x610514
00610508  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0061050c  05 00 94 e7                                      ldr r0, [r4, r5]
00610510  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610514  06 00 a0 e1                                      mov r0, r6
00610518  93 f8 f3 eb                                      bl #0x30e76c
0061051c  00 00 50 e3                                      cmp r0, #0
00610520  f8 ff ff 0a                                      beq #0x610508
00610524  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610528  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0061052c  06 00 a0 e1                                      mov r0, r6
00610530  03 30 94 e7                                      ldr r3, [r4, r3]
00610534  05 60 94 e7                                      ldr r6, [r4, r5]
00610538  08 30 83 e2                                      add r3, r3, #8
0061053c  00 30 86 e5                                      str r3, [r6]
00610540  3d f9 f3 eb                                      bl #0x30ea3c
00610544  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610548  06 00 a0 e1                                      mov r0, r6
0061054c  03 10 94 e7                                      ldr r1, [r4, r3]
00610550  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610554  03 20 94 e7                                      ldr r2, [r4, r3]
00610558  69 f7 f3 eb                                      bl #0x30e304
0061055c  05 00 94 e7                                      ldr r0, [r4, r5]
00610560  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610564  9c 45 38 00 cc 16 00 00 7c 37 00 00 48 21 00 00  .byte 0x9c, 0x45, 0x38, 0x00, 0xcc, 0x16, 0x00, 0x00, 0x7c, 0x37, 0x00, 0x00, 0x48, 0x21, 0x00, 0x00
00610574  08 1a 00 00 90 18 00 00                          .byte 0x08, 0x1a, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00614e8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00614e8c  01 00 a0 e1                                      mov r0, r1
00614e90  02 10 a0 e1                                      mov r1, r2
00614e94  03 20 a0 e1                                      mov r2, r3
00614e98  d3 ff ff ea                                      b #0x614dec

; FUNCTION 0x00614fac, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00614fac  01 00 a0 e1                                      mov r0, r1
00614fb0  04 c0 9d e5                                      ldr ip, [sp, #4]
00614fb4  02 10 a0 e1                                      mov r1, r2
00614fb8  03 20 a0 e1                                      mov r2, r3
00614fbc  00 30 9d e5                                      ldr r3, [sp]
00614fc0  00 c0 8d e5                                      str ip, [sp]
00614fc4  b4 ff ff ea                                      b #0x614e9c

; FUNCTION 0x00615098, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00615098  01 00 a0 e1                                      mov r0, r1
0061509c  02 10 a0 e1                                      mov r1, r2
006150a0  03 20 a0 e1                                      mov r2, r3
006150a4  00 30 9d e5                                      ldr r3, [sp]
006150a8  c6 ff ff ea                                      b #0x614fc8

; FUNCTION 0x006151f8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006151f8  04 c0 9d e5                                      ldr ip, [sp, #4]
006151fc  01 00 a0 e1                                      mov r0, r1
00615200  02 10 a0 e1                                      mov r1, r2
00615204  03 20 a0 e1                                      mov r2, r3
00615208  00 30 9d e5                                      ldr r3, [sp]
0061520c  00 c0 8d e5                                      str ip, [sp]
00615210  08 c0 9d e5                                      ldr ip, [sp, #8]
00615214  04 c0 8d e5                                      str ip, [sp, #4]
00615218  a3 ff ff ea                                      b #0x6150ac

; FUNCTION 0x0061888c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061888c  00 20 a0 e3                                      mov r2, #0
00618890  01 30 a0 e1                                      mov r3, r1
00618894  01 20 c3 e4                                      strb r2, [r3], #1
00618898  01 30 83 e2                                      add r3, r3, #1
0061889c  01 20 c1 e5                                      strb r2, [r1, #1]
006188a0  01 20 c3 e4                                      strb r2, [r3], #1
006188a4  01 20 c3 e4                                      strb r2, [r3], #1
006188a8  01 20 c3 e4                                      strb r2, [r3], #1
006188ac  01 20 c3 e4                                      strb r2, [r3], #1
006188b0  01 20 c3 e4                                      strb r2, [r3], #1
006188b4  01 20 c3 e4                                      strb r2, [r3], #1
006188b8  01 20 c3 e4                                      strb r2, [r3], #1
006188bc  01 20 c3 e4                                      strb r2, [r3], #1
006188c0  01 20 c3 e4                                      strb r2, [r3], #1
006188c4  00 20 c3 e5                                      strb r2, [r3]
006188c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006204c8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006204c8  10 40 2d e9                                      push {r4, lr}
006204cc  00 30 91 e5                                      ldr r3, [r1]
006204d0  01 00 a0 e1                                      mov r0, r1
006204d4  02 40 a0 e1                                      mov r4, r2
006204d8  0f e0 a0 e1                                      mov lr, pc
006204dc  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006204e0  00 30 90 e5                                      ldr r3, [r0]
006204e4  00 30 84 e5                                      str r3, [r4]
006204e8  04 30 90 e5                                      ldr r3, [r0, #4]
006204ec  04 30 84 e5                                      str r3, [r4, #4]
006204f0  08 30 90 e5                                      ldr r3, [r0, #8]
006204f4  08 30 84 e5                                      str r3, [r4, #8]
006204f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622f20, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622f20  01 00 a0 e1                                      mov r0, r1
00622f24  02 10 a0 e1                                      mov r1, r2
00622f28  03 20 a0 e1                                      mov r2, r3
00622f2c  00 30 9d e5                                      ldr r3, [sp]
00622f30  e9 ff ff ea                                      b #0x622edc

; FUNCTION 0x00622f78, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622f78  04 c0 9d e5                                      ldr ip, [sp, #4]
00622f7c  01 00 a0 e1                                      mov r0, r1
00622f80  02 10 a0 e1                                      mov r1, r2
00622f84  03 20 a0 e1                                      mov r2, r3
00622f88  00 30 9d e5                                      ldr r3, [sp]
00622f8c  00 c0 8d e5                                      str ip, [sp]
00622f90  08 c0 9d e5                                      ldr ip, [sp, #8]
00622f94  04 c0 8d e5                                      str ip, [sp, #4]
00622f98  e5 ff ff ea                                      b #0x622f34

; FUNCTION 0x00623d78, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623d78  10 40 2d e9                                      push {r4, lr}
00623d7c  02 00 a0 e1                                      mov r0, r2
00623d80  00 30 92 e5                                      ldr r3, [r2]
00623d84  0f e0 a0 e1                                      mov lr, pc
00623d88  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623d8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00626edc, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626edc  01 00 53 e3                                      cmp r3, #1
00626ee0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626ee4  03 40 a0 e1                                      mov r4, r3
00626ee8  02 b0 a0 e1                                      mov fp, r2
00626eec  29 00 00 0a                                      beq #0x626f98
00626ef0  00 00 53 e3                                      cmp r3, #0
00626ef4  00 80 a0 03                                      moveq r8, #0
00626ef8  08 90 a0 01                                      moveq sb, r8
00626efc  08 a0 a0 01                                      moveq sl, r8
00626f00  1e 00 00 0a                                      beq #0x626f80
00626f04  00 80 a0 e3                                      mov r8, #0
00626f08  01 50 a0 e1                                      mov r5, r1
00626f0c  00 70 a0 e3                                      mov r7, #0
00626f10  08 90 a0 e1                                      mov sb, r8
00626f14  08 a0 a0 e1                                      mov sl, r8
00626f18  07 60 9b e7                                      ldr r6, [fp, r7]
00626f1c  00 10 95 e5                                      ldr r1, [r5]
00626f20  04 70 87 e2                                      add r7, r7, #4
00626f24  06 00 a0 e1                                      mov r0, r6
00626f28  8f 9f f3 eb                                      bl #0x30ed6c
00626f2c  00 10 a0 e1                                      mov r1, r0
00626f30  08 00 a0 e1                                      mov r0, r8
00626f34  1a 9f f3 eb                                      bl #0x30eba4
00626f38  04 10 95 e5                                      ldr r1, [r5, #4]
00626f3c  00 80 a0 e1                                      mov r8, r0
00626f40  06 00 a0 e1                                      mov r0, r6
00626f44  88 9f f3 eb                                      bl #0x30ed6c
00626f48  00 10 a0 e1                                      mov r1, r0
00626f4c  09 00 a0 e1                                      mov r0, sb
00626f50  13 9f f3 eb                                      bl #0x30eba4
00626f54  08 10 95 e5                                      ldr r1, [r5, #8]
00626f58  00 90 a0 e1                                      mov sb, r0
00626f5c  06 00 a0 e1                                      mov r0, r6
00626f60  81 9f f3 eb                                      bl #0x30ed6c
00626f64  00 10 a0 e1                                      mov r1, r0
00626f68  0a 00 a0 e1                                      mov r0, sl
00626f6c  0c 9f f3 eb                                      bl #0x30eba4
00626f70  01 40 54 e2                                      subs r4, r4, #1
00626f74  00 a0 a0 e1                                      mov sl, r0
00626f78  0c 50 85 e2                                      add r5, r5, #0xc
00626f7c  e5 ff ff 1a                                      bne #0x626f18
00626f80  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626f84  04 80 83 e4                                      str r8, [r3], #4
00626f88  28 20 9d e5                                      ldr r2, [sp, #0x28]
00626f8c  04 90 82 e5                                      str sb, [r2, #4]
00626f90  04 a0 83 e5                                      str sl, [r3, #4]
00626f94  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626f98  01 20 a0 e1                                      mov r2, r1
00626f9c  04 00 92 e4                                      ldr r0, [r2], #4
00626fa0  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626fa4  04 00 83 e4                                      str r0, [r3], #4
00626fa8  04 10 91 e5                                      ldr r1, [r1, #4]
00626fac  28 00 9d e5                                      ldr r0, [sp, #0x28]
00626fb0  04 10 80 e5                                      str r1, [r0, #4]
00626fb4  04 20 92 e5                                      ldr r2, [r2, #4]
00626fb8  04 20 83 e5                                      str r2, [r3, #4]
00626fbc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006298ec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006298ec  01 00 a0 e1                                      mov r0, r1
006298f0  04 c0 9d e5                                      ldr ip, [sp, #4]
006298f4  02 10 a0 e1                                      mov r1, r2
006298f8  03 20 a0 e1                                      mov r2, r3
006298fc  00 30 9d e5                                      ldr r3, [sp]
00629900  00 c0 8d e5                                      str ip, [sp]
00629904  ba ff ff ea                                      b #0x6297f4

; FUNCTION 0x00629a00, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629a00  01 00 a0 e1                                      mov r0, r1
00629a04  04 c0 9d e5                                      ldr ip, [sp, #4]
00629a08  02 10 a0 e1                                      mov r1, r2
00629a0c  03 20 a0 e1                                      mov r2, r3
00629a10  00 30 9d e5                                      ldr r3, [sp]
00629a14  00 c0 8d e5                                      str ip, [sp]
00629a18  ba ff ff ea                                      b #0x629908

; FUNCTION 0x0062aae4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062aae4  01 00 53 e3                                      cmp r3, #1
0062aae8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062aaec  03 40 a0 e1                                      mov r4, r3
0062aaf0  02 b0 a0 e1                                      mov fp, r2
0062aaf4  29 00 00 0a                                      beq #0x62aba0
0062aaf8  00 00 53 e3                                      cmp r3, #0
0062aafc  00 80 a0 03                                      moveq r8, #0
0062ab00  08 90 a0 01                                      moveq sb, r8
0062ab04  08 a0 a0 01                                      moveq sl, r8
0062ab08  1e 00 00 0a                                      beq #0x62ab88
0062ab0c  00 80 a0 e3                                      mov r8, #0
0062ab10  01 50 a0 e1                                      mov r5, r1
0062ab14  00 70 a0 e3                                      mov r7, #0
0062ab18  08 90 a0 e1                                      mov sb, r8
0062ab1c  08 a0 a0 e1                                      mov sl, r8
0062ab20  07 60 9b e7                                      ldr r6, [fp, r7]
0062ab24  00 10 95 e5                                      ldr r1, [r5]
0062ab28  04 70 87 e2                                      add r7, r7, #4
0062ab2c  06 00 a0 e1                                      mov r0, r6
0062ab30  8d 90 f3 eb                                      bl #0x30ed6c
0062ab34  00 10 a0 e1                                      mov r1, r0
0062ab38  08 00 a0 e1                                      mov r0, r8
0062ab3c  18 90 f3 eb                                      bl #0x30eba4
0062ab40  04 10 95 e5                                      ldr r1, [r5, #4]
0062ab44  00 80 a0 e1                                      mov r8, r0
0062ab48  06 00 a0 e1                                      mov r0, r6
0062ab4c  86 90 f3 eb                                      bl #0x30ed6c
0062ab50  00 10 a0 e1                                      mov r1, r0
0062ab54  09 00 a0 e1                                      mov r0, sb
0062ab58  11 90 f3 eb                                      bl #0x30eba4
0062ab5c  08 10 95 e5                                      ldr r1, [r5, #8]
0062ab60  00 90 a0 e1                                      mov sb, r0
0062ab64  06 00 a0 e1                                      mov r0, r6
0062ab68  7f 90 f3 eb                                      bl #0x30ed6c
0062ab6c  00 10 a0 e1                                      mov r1, r0
0062ab70  0a 00 a0 e1                                      mov r0, sl
0062ab74  0a 90 f3 eb                                      bl #0x30eba4
0062ab78  01 40 54 e2                                      subs r4, r4, #1
0062ab7c  00 a0 a0 e1                                      mov sl, r0
0062ab80  0c 50 85 e2                                      add r5, r5, #0xc
0062ab84  e5 ff ff 1a                                      bne #0x62ab20
0062ab88  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ab8c  04 80 83 e4                                      str r8, [r3], #4
0062ab90  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062ab94  04 90 82 e5                                      str sb, [r2, #4]
0062ab98  04 a0 83 e5                                      str sl, [r3, #4]
0062ab9c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062aba0  01 20 a0 e1                                      mov r2, r1
0062aba4  04 00 92 e4                                      ldr r0, [r2], #4
0062aba8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062abac  04 00 83 e4                                      str r0, [r3], #4
0062abb0  04 10 91 e5                                      ldr r1, [r1, #4]
0062abb4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062abb8  04 10 80 e5                                      str r1, [r0, #4]
0062abbc  04 20 92 e5                                      ldr r2, [r2, #4]
0062abc0  04 20 83 e5                                      str r2, [r3, #4]
0062abc4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
