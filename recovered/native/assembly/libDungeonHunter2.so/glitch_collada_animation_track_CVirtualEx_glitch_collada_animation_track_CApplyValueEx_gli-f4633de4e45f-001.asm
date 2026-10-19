; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed34, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efe0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getValueSize() const
; decoder-mode: arm
0060efe0  0c 00 a0 e3                                      mov r0, #0xc
0060efe4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f5ac, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f5ac  10 40 2d e9                                      push {r4, lr}
0060f5b0  00 40 a0 e1                                      mov r4, r0
0060f5b4  3d fb f3 eb                                      bl #0x30e2b0
0060f5b8  04 00 a0 e1                                      mov r0, r4
0060f5bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610454, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getInstance()
; decoder-mode: arm
00610454  70 40 2d e9                                      push {r4, r5, r6, lr}
00610458  70 40 9f e5                                      ldr r4, [pc, #0x70]
0061045c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610460  04 40 8f e0                                      add r4, pc, r4
00610464  03 60 94 e7                                      ldr r6, [r4, r3]
00610468  00 30 96 e5                                      ldr r3, [r6]
0061046c  01 00 13 e3                                      tst r3, #1
00610470  02 00 00 0a                                      beq #0x610480
00610474  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610478  05 00 94 e7                                      ldr r0, [r4, r5]
0061047c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610480  06 00 a0 e1                                      mov r0, r6
00610484  b8 f8 f3 eb                                      bl #0x30e76c
00610488  00 00 50 e3                                      cmp r0, #0
0061048c  f8 ff ff 0a                                      beq #0x610474
00610490  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610494  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610498  06 00 a0 e1                                      mov r0, r6
0061049c  03 30 94 e7                                      ldr r3, [r4, r3]
006104a0  05 60 94 e7                                      ldr r6, [r4, r5]
006104a4  08 30 83 e2                                      add r3, r3, #8
006104a8  00 30 86 e5                                      str r3, [r6]
006104ac  62 f9 f3 eb                                      bl #0x30ea3c
006104b0  28 30 9f e5                                      ldr r3, [pc, #0x28]
006104b4  06 00 a0 e1                                      mov r0, r6
006104b8  03 10 94 e7                                      ldr r1, [r4, r3]
006104bc  20 30 9f e5                                      ldr r3, [pc, #0x20]
006104c0  03 20 94 e7                                      ldr r2, [r4, r3]
006104c4  8e f7 f3 eb                                      bl #0x30e304
006104c8  05 00 94 e7                                      ldr r0, [r4, r5]
006104cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006104d0  30 46 38 00 4c 1d 00 00 1c 49 00 00 cc 1f 00 00  .byte 0x30, 0x46, 0x38, 0x00, 0x4c, 0x1d, 0x00, 0x00, 0x1c, 0x49, 0x00, 0x00, 0xcc, 0x1f, 0x00, 0x00
006104e0  e4 4b 00 00 90 18 00 00                          .byte 0xe4, 0x4b, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0061884c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061884c  00 20 a0 e3                                      mov r2, #0
00618850  01 30 a0 e1                                      mov r3, r1
00618854  01 20 c3 e4                                      strb r2, [r3], #1
00618858  01 30 83 e2                                      add r3, r3, #1
0061885c  01 20 c1 e5                                      strb r2, [r1, #1]
00618860  01 20 c3 e4                                      strb r2, [r3], #1
00618864  01 20 c3 e4                                      strb r2, [r3], #1
00618868  01 20 c3 e4                                      strb r2, [r3], #1
0061886c  01 20 c3 e4                                      strb r2, [r3], #1
00618870  01 20 c3 e4                                      strb r2, [r3], #1
00618874  01 20 c3 e4                                      strb r2, [r3], #1
00618878  01 20 c3 e4                                      strb r2, [r3], #1
0061887c  01 20 c3 e4                                      strb r2, [r3], #1
00618880  01 20 c3 e4                                      strb r2, [r3], #1
00618884  00 20 c3 e5                                      strb r2, [r3]
00618888  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061fa14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061fa14  01 00 a0 e1                                      mov r0, r1
0061fa18  02 10 a0 e1                                      mov r1, r2
0061fa1c  03 20 a0 e1                                      mov r2, r3
0061fa20  df ff ff ea                                      b #0x61f9a4

; FUNCTION 0x0061fadc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061fadc  01 00 a0 e1                                      mov r0, r1
0061fae0  04 c0 9d e5                                      ldr ip, [sp, #4]
0061fae4  02 10 a0 e1                                      mov r1, r2
0061fae8  03 20 a0 e1                                      mov r2, r3
0061faec  00 30 9d e5                                      ldr r3, [sp]
0061faf0  00 c0 8d e5                                      str ip, [sp]
0061faf4  ca ff ff ea                                      b #0x61fa24

; FUNCTION 0x0061fb64, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061fb64  01 00 a0 e1                                      mov r0, r1
0061fb68  02 10 a0 e1                                      mov r1, r2
0061fb6c  03 20 a0 e1                                      mov r2, r3
0061fb70  00 30 9d e5                                      ldr r3, [sp]
0061fb74  df ff ff ea                                      b #0x61faf8

; FUNCTION 0x0061fc4c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061fc4c  04 c0 9d e5                                      ldr ip, [sp, #4]
0061fc50  01 00 a0 e1                                      mov r0, r1
0061fc54  02 10 a0 e1                                      mov r1, r2
0061fc58  03 20 a0 e1                                      mov r2, r3
0061fc5c  00 30 9d e5                                      ldr r3, [sp]
0061fc60  00 c0 8d e5                                      str ip, [sp]
0061fc64  08 c0 9d e5                                      ldr ip, [sp, #8]
0061fc68  04 c0 8d e5                                      str ip, [sp, #4]
0061fc6c  c1 ff ff ea                                      b #0x61fb78

; FUNCTION 0x006204fc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006204fc  10 40 2d e9                                      push {r4, lr}
00620500  00 30 91 e5                                      ldr r3, [r1]
00620504  01 00 a0 e1                                      mov r0, r1
00620508  02 40 a0 e1                                      mov r4, r2
0062050c  0f e0 a0 e1                                      mov lr, pc
00620510  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00620514  00 30 90 e5                                      ldr r3, [r0]
00620518  00 30 84 e5                                      str r3, [r4]
0062051c  04 30 90 e5                                      ldr r3, [r0, #4]
00620520  04 30 84 e5                                      str r3, [r4, #4]
00620524  08 30 90 e5                                      ldr r3, [r0, #8]
00620528  08 30 84 e5                                      str r3, [r4, #8]
0062052c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622e60, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622e60  01 00 a0 e1                                      mov r0, r1
00622e64  02 10 a0 e1                                      mov r1, r2
00622e68  03 20 a0 e1                                      mov r2, r3
00622e6c  00 30 9d e5                                      ldr r3, [sp]
00622e70  e9 ff ff ea                                      b #0x622e1c

; FUNCTION 0x00622eb8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622eb8  04 c0 9d e5                                      ldr ip, [sp, #4]
00622ebc  01 00 a0 e1                                      mov r0, r1
00622ec0  02 10 a0 e1                                      mov r1, r2
00622ec4  03 20 a0 e1                                      mov r2, r3
00622ec8  00 30 9d e5                                      ldr r3, [sp]
00622ecc  00 c0 8d e5                                      str ip, [sp]
00622ed0  08 c0 9d e5                                      ldr ip, [sp, #8]
00622ed4  04 c0 8d e5                                      str ip, [sp, #4]
00622ed8  e5 ff ff ea                                      b #0x622e74

; FUNCTION 0x00623d90, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623d90  10 40 2d e9                                      push {r4, lr}
00623d94  02 00 a0 e1                                      mov r0, r2
00623d98  00 30 92 e5                                      ldr r3, [r2]
00623d9c  0f e0 a0 e1                                      mov lr, pc
00623da0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623da4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00626df8, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626df8  01 00 53 e3                                      cmp r3, #1
00626dfc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626e00  03 40 a0 e1                                      mov r4, r3
00626e04  02 b0 a0 e1                                      mov fp, r2
00626e08  29 00 00 0a                                      beq #0x626eb4
00626e0c  00 00 53 e3                                      cmp r3, #0
00626e10  00 80 a0 03                                      moveq r8, #0
00626e14  08 90 a0 01                                      moveq sb, r8
00626e18  08 a0 a0 01                                      moveq sl, r8
00626e1c  1e 00 00 0a                                      beq #0x626e9c
00626e20  00 80 a0 e3                                      mov r8, #0
00626e24  01 50 a0 e1                                      mov r5, r1
00626e28  00 70 a0 e3                                      mov r7, #0
00626e2c  08 90 a0 e1                                      mov sb, r8
00626e30  08 a0 a0 e1                                      mov sl, r8
00626e34  07 60 9b e7                                      ldr r6, [fp, r7]
00626e38  00 10 95 e5                                      ldr r1, [r5]
00626e3c  04 70 87 e2                                      add r7, r7, #4
00626e40  06 00 a0 e1                                      mov r0, r6
00626e44  c8 9f f3 eb                                      bl #0x30ed6c
00626e48  00 10 a0 e1                                      mov r1, r0
00626e4c  08 00 a0 e1                                      mov r0, r8
00626e50  53 9f f3 eb                                      bl #0x30eba4
00626e54  04 10 95 e5                                      ldr r1, [r5, #4]
00626e58  00 80 a0 e1                                      mov r8, r0
00626e5c  06 00 a0 e1                                      mov r0, r6
00626e60  c1 9f f3 eb                                      bl #0x30ed6c
00626e64  00 10 a0 e1                                      mov r1, r0
00626e68  09 00 a0 e1                                      mov r0, sb
00626e6c  4c 9f f3 eb                                      bl #0x30eba4
00626e70  08 10 95 e5                                      ldr r1, [r5, #8]
00626e74  00 90 a0 e1                                      mov sb, r0
00626e78  06 00 a0 e1                                      mov r0, r6
00626e7c  ba 9f f3 eb                                      bl #0x30ed6c
00626e80  00 10 a0 e1                                      mov r1, r0
00626e84  0a 00 a0 e1                                      mov r0, sl
00626e88  45 9f f3 eb                                      bl #0x30eba4
00626e8c  01 40 54 e2                                      subs r4, r4, #1
00626e90  00 a0 a0 e1                                      mov sl, r0
00626e94  0c 50 85 e2                                      add r5, r5, #0xc
00626e98  e5 ff ff 1a                                      bne #0x626e34
00626e9c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626ea0  04 80 83 e4                                      str r8, [r3], #4
00626ea4  28 20 9d e5                                      ldr r2, [sp, #0x28]
00626ea8  04 90 82 e5                                      str sb, [r2, #4]
00626eac  04 a0 83 e5                                      str sl, [r3, #4]
00626eb0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626eb4  01 20 a0 e1                                      mov r2, r1
00626eb8  04 00 92 e4                                      ldr r0, [r2], #4
00626ebc  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626ec0  04 00 83 e4                                      str r0, [r3], #4
00626ec4  04 10 91 e5                                      ldr r1, [r1, #4]
00626ec8  28 00 9d e5                                      ldr r0, [sp, #0x28]
00626ecc  04 10 80 e5                                      str r1, [r0, #4]
00626ed0  04 20 92 e5                                      ldr r2, [r2, #4]
00626ed4  04 20 83 e5                                      str r2, [r3, #4]
00626ed8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00629b14, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629b14  01 00 a0 e1                                      mov r0, r1
00629b18  04 c0 9d e5                                      ldr ip, [sp, #4]
00629b1c  02 10 a0 e1                                      mov r1, r2
00629b20  03 20 a0 e1                                      mov r2, r3
00629b24  00 30 9d e5                                      ldr r3, [sp]
00629b28  00 c0 8d e5                                      str ip, [sp]
00629b2c  ba ff ff ea                                      b #0x629a1c

; FUNCTION 0x00629c28, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629c28  01 00 a0 e1                                      mov r0, r1
00629c2c  04 c0 9d e5                                      ldr ip, [sp, #4]
00629c30  02 10 a0 e1                                      mov r1, r2
00629c34  03 20 a0 e1                                      mov r2, r3
00629c38  00 30 9d e5                                      ldr r3, [sp]
00629c3c  00 c0 8d e5                                      str ip, [sp]
00629c40  ba ff ff ea                                      b #0x629b30

; FUNCTION 0x0062aa00, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIfEELi0EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<float>, 0, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062aa00  01 00 53 e3                                      cmp r3, #1
0062aa04  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062aa08  03 40 a0 e1                                      mov r4, r3
0062aa0c  02 b0 a0 e1                                      mov fp, r2
0062aa10  29 00 00 0a                                      beq #0x62aabc
0062aa14  00 00 53 e3                                      cmp r3, #0
0062aa18  00 80 a0 03                                      moveq r8, #0
0062aa1c  08 90 a0 01                                      moveq sb, r8
0062aa20  08 a0 a0 01                                      moveq sl, r8
0062aa24  1e 00 00 0a                                      beq #0x62aaa4
0062aa28  00 80 a0 e3                                      mov r8, #0
0062aa2c  01 50 a0 e1                                      mov r5, r1
0062aa30  00 70 a0 e3                                      mov r7, #0
0062aa34  08 90 a0 e1                                      mov sb, r8
0062aa38  08 a0 a0 e1                                      mov sl, r8
0062aa3c  07 60 9b e7                                      ldr r6, [fp, r7]
0062aa40  00 10 95 e5                                      ldr r1, [r5]
0062aa44  04 70 87 e2                                      add r7, r7, #4
0062aa48  06 00 a0 e1                                      mov r0, r6
0062aa4c  c6 90 f3 eb                                      bl #0x30ed6c
0062aa50  00 10 a0 e1                                      mov r1, r0
0062aa54  08 00 a0 e1                                      mov r0, r8
0062aa58  51 90 f3 eb                                      bl #0x30eba4
0062aa5c  04 10 95 e5                                      ldr r1, [r5, #4]
0062aa60  00 80 a0 e1                                      mov r8, r0
0062aa64  06 00 a0 e1                                      mov r0, r6
0062aa68  bf 90 f3 eb                                      bl #0x30ed6c
0062aa6c  00 10 a0 e1                                      mov r1, r0
0062aa70  09 00 a0 e1                                      mov r0, sb
0062aa74  4a 90 f3 eb                                      bl #0x30eba4
0062aa78  08 10 95 e5                                      ldr r1, [r5, #8]
0062aa7c  00 90 a0 e1                                      mov sb, r0
0062aa80  06 00 a0 e1                                      mov r0, r6
0062aa84  b8 90 f3 eb                                      bl #0x30ed6c
0062aa88  00 10 a0 e1                                      mov r1, r0
0062aa8c  0a 00 a0 e1                                      mov r0, sl
0062aa90  43 90 f3 eb                                      bl #0x30eba4
0062aa94  01 40 54 e2                                      subs r4, r4, #1
0062aa98  00 a0 a0 e1                                      mov sl, r0
0062aa9c  0c 50 85 e2                                      add r5, r5, #0xc
0062aaa0  e5 ff ff 1a                                      bne #0x62aa3c
0062aaa4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062aaa8  04 80 83 e4                                      str r8, [r3], #4
0062aaac  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062aab0  04 90 82 e5                                      str sb, [r2, #4]
0062aab4  04 a0 83 e5                                      str sl, [r3, #4]
0062aab8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062aabc  01 20 a0 e1                                      mov r2, r1
0062aac0  04 00 92 e4                                      ldr r0, [r2], #4
0062aac4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062aac8  04 00 83 e4                                      str r0, [r3], #4
0062aacc  04 10 91 e5                                      ldr r1, [r1, #4]
0062aad0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062aad4  04 10 80 e5                                      str r1, [r0, #4]
0062aad8  04 20 92 e5                                      ldr r2, [r2, #4]
0062aadc  04 20 83 e5                                      str r2, [r3, #4]
0062aae0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
