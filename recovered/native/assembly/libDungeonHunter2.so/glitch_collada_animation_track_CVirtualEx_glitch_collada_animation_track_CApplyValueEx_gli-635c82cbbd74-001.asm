; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed58, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed58  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getValueSize() const
; decoder-mode: arm
0060ef64  0c 00 a0 e3                                      mov r0, #0xc
0060ef68  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef6c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060ef6c  10 40 2d e9                                      push {r4, lr}
0060ef70  00 30 91 e5                                      ldr r3, [r1]
0060ef74  01 00 a0 e1                                      mov r0, r1
0060ef78  02 40 a0 e1                                      mov r4, r2
0060ef7c  0f e0 a0 e1                                      mov lr, pc
0060ef80  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0060ef84  00 30 90 e5                                      ldr r3, [r0]
0060ef88  00 30 84 e5                                      str r3, [r4]
0060ef8c  04 30 90 e5                                      ldr r3, [r0, #4]
0060ef90  04 30 84 e5                                      str r3, [r4, #4]
0060ef94  08 30 90 e5                                      ldr r3, [r0, #8]
0060ef98  08 30 84 e5                                      str r3, [r4, #8]
0060ef9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060f660, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060f660  10 40 2d e9                                      push {r4, lr}
0060f664  00 40 a0 e1                                      mov r4, r0
0060f668  10 fb f3 eb                                      bl #0x30e2b0
0060f66c  04 00 a0 e1                                      mov r0, r4
0060f670  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610988, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getInstance()
; decoder-mode: arm
00610988  70 40 2d e9                                      push {r4, r5, r6, lr}
0061098c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610990  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610994  04 40 8f e0                                      add r4, pc, r4
00610998  03 60 94 e7                                      ldr r6, [r4, r3]
0061099c  00 30 96 e5                                      ldr r3, [r6]
006109a0  01 00 13 e3                                      tst r3, #1
006109a4  02 00 00 0a                                      beq #0x6109b4
006109a8  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006109ac  05 00 94 e7                                      ldr r0, [r4, r5]
006109b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006109b4  06 00 a0 e1                                      mov r0, r6
006109b8  6b f7 f3 eb                                      bl #0x30e76c
006109bc  00 00 50 e3                                      cmp r0, #0
006109c0  f8 ff ff 0a                                      beq #0x6109a8
006109c4  44 30 9f e5                                      ldr r3, [pc, #0x44]
006109c8  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006109cc  06 00 a0 e1                                      mov r0, r6
006109d0  03 30 94 e7                                      ldr r3, [r4, r3]
006109d4  05 60 94 e7                                      ldr r6, [r4, r5]
006109d8  08 30 83 e2                                      add r3, r3, #8
006109dc  00 30 86 e5                                      str r3, [r6]
006109e0  15 f8 f3 eb                                      bl #0x30ea3c
006109e4  28 30 9f e5                                      ldr r3, [pc, #0x28]
006109e8  06 00 a0 e1                                      mov r0, r6
006109ec  03 10 94 e7                                      ldr r1, [r4, r3]
006109f0  20 30 9f e5                                      ldr r3, [pc, #0x20]
006109f4  03 20 94 e7                                      ldr r2, [r4, r3]
006109f8  41 f6 f3 eb                                      bl #0x30e304
006109fc  05 00 94 e7                                      ldr r0, [r4, r5]
00610a00  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610a04  fc 40 38 00 50 3b 00 00 68 1e 00 00 cc 3b 00 00  .byte 0xfc, 0x40, 0x38, 0x00, 0x50, 0x3b, 0x00, 0x00, 0x68, 0x1e, 0x00, 0x00, 0xcc, 0x3b, 0x00, 0x00
00610a14  d0 2c 00 00 90 18 00 00                          .byte 0xd0, 0x2c, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00612394, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00612394  70 40 2d e9                                      push {r4, r5, r6, lr}
00612398  01 00 a0 e1                                      mov r0, r1
0061239c  00 10 a0 e3                                      mov r1, #0
006123a0  03 40 a0 e1                                      mov r4, r3
006123a4  02 50 a0 e1                                      mov r5, r2
006123a8  9d 5e 01 eb                                      bl #0x669e24
006123ac  0c 30 a0 e3                                      mov r3, #0xc
006123b0  04 20 90 e5                                      ldr r2, [r0, #4]
006123b4  93 05 05 e0                                      mul r5, r3, r5
006123b8  04 30 a0 e1                                      mov r3, r4
006123bc  05 10 92 e7                                      ldr r1, [r2, r5]
006123c0  05 50 82 e0                                      add r5, r2, r5
006123c4  04 10 83 e4                                      str r1, [r3], #4
006123c8  04 20 95 e5                                      ldr r2, [r5, #4]
006123cc  04 20 84 e5                                      str r2, [r4, #4]
006123d0  08 20 95 e5                                      ldr r2, [r5, #8]
006123d4  04 20 83 e5                                      str r2, [r3, #4]
006123d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006123dc, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006123dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006123e0  01 00 a0 e1                                      mov r0, r1
006123e4  00 10 a0 e3                                      mov r1, #0
006123e8  03 80 a0 e1                                      mov r8, r3
006123ec  02 40 a0 e1                                      mov r4, r2
006123f0  18 70 9d e5                                      ldr r7, [sp, #0x18]
006123f4  8a 5e 01 eb                                      bl #0x669e24
006123f8  04 30 90 e5                                      ldr r3, [r0, #4]
006123fc  0c 60 a0 e3                                      mov r6, #0xc
00612400  00 50 a0 e3                                      mov r5, #0
00612404  96 34 24 e0                                      mla r4, r6, r4, r3
00612408  96 38 26 e0                                      mla r6, r6, r8, r3
0061240c  05 00 96 e7                                      ldr r0, [r6, r5]
00612410  05 10 94 e7                                      ldr r1, [r4, r5]
00612414  e4 ef f3 eb                                      bl #0x30e3ac
00612418  05 00 87 e7                                      str r0, [r7, r5]
0061241c  04 50 85 e2                                      add r5, r5, #4
00612420  0c 00 55 e3                                      cmp r5, #0xc
00612424  f8 ff ff 1a                                      bne #0x61240c
00612428  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006124a8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006124a8  04 c0 9d e5                                      ldr ip, [sp, #4]
006124ac  01 00 a0 e1                                      mov r0, r1
006124b0  02 10 a0 e1                                      mov r1, r2
006124b4  03 20 a0 e1                                      mov r2, r3
006124b8  00 30 9d e5                                      ldr r3, [sp]
006124bc  00 c0 8d e5                                      str ip, [sp]
006124c0  08 c0 9d e5                                      ldr ip, [sp, #8]
006124c4  04 c0 8d e5                                      str ip, [sp, #4]
006124c8  d7 ff ff ea                                      b #0x61242c

; FUNCTION 0x00618a8c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618a8c  00 20 a0 e3                                      mov r2, #0
00618a90  01 30 a0 e1                                      mov r3, r1
00618a94  01 20 c3 e4                                      strb r2, [r3], #1
00618a98  01 30 83 e2                                      add r3, r3, #1
00618a9c  01 20 c1 e5                                      strb r2, [r1, #1]
00618aa0  01 20 c3 e4                                      strb r2, [r3], #1
00618aa4  01 20 c3 e4                                      strb r2, [r3], #1
00618aa8  01 20 c3 e4                                      strb r2, [r3], #1
00618aac  01 20 c3 e4                                      strb r2, [r3], #1
00618ab0  01 20 c3 e4                                      strb r2, [r3], #1
00618ab4  01 20 c3 e4                                      strb r2, [r3], #1
00618ab8  01 20 c3 e4                                      strb r2, [r3], #1
00618abc  01 20 c3 e4                                      strb r2, [r3], #1
00618ac0  01 20 c3 e4                                      strb r2, [r3], #1
00618ac4  00 20 c3 e5                                      strb r2, [r3]
00618ac8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062393c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062393c  10 40 2d e9                                      push {r4, lr}
00623940  02 00 a0 e1                                      mov r0, r2
00623944  00 30 92 e5                                      ldr r3, [r2]
00623948  0f e0 a0 e1                                      mov lr, pc
0062394c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623950  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006239c4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006239c4  01 00 a0 e1                                      mov r0, r1
006239c8  02 10 a0 e1                                      mov r1, r2
006239cc  03 20 a0 e1                                      mov r2, r3
006239d0  00 30 9d e5                                      ldr r3, [sp]
006239d4  de ff ff ea                                      b #0x623954

; FUNCTION 0x006275fc, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006275fc  01 00 53 e3                                      cmp r3, #1
00627600  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627604  03 40 a0 e1                                      mov r4, r3
00627608  02 b0 a0 e1                                      mov fp, r2
0062760c  29 00 00 0a                                      beq #0x6276b8
00627610  00 00 53 e3                                      cmp r3, #0
00627614  00 80 a0 03                                      moveq r8, #0
00627618  08 90 a0 01                                      moveq sb, r8
0062761c  08 a0 a0 01                                      moveq sl, r8
00627620  1e 00 00 0a                                      beq #0x6276a0
00627624  00 80 a0 e3                                      mov r8, #0
00627628  01 50 a0 e1                                      mov r5, r1
0062762c  00 70 a0 e3                                      mov r7, #0
00627630  08 90 a0 e1                                      mov sb, r8
00627634  08 a0 a0 e1                                      mov sl, r8
00627638  07 60 9b e7                                      ldr r6, [fp, r7]
0062763c  00 10 95 e5                                      ldr r1, [r5]
00627640  04 70 87 e2                                      add r7, r7, #4
00627644  06 00 a0 e1                                      mov r0, r6
00627648  c7 9d f3 eb                                      bl #0x30ed6c
0062764c  00 10 a0 e1                                      mov r1, r0
00627650  08 00 a0 e1                                      mov r0, r8
00627654  52 9d f3 eb                                      bl #0x30eba4
00627658  04 10 95 e5                                      ldr r1, [r5, #4]
0062765c  00 80 a0 e1                                      mov r8, r0
00627660  06 00 a0 e1                                      mov r0, r6
00627664  c0 9d f3 eb                                      bl #0x30ed6c
00627668  00 10 a0 e1                                      mov r1, r0
0062766c  09 00 a0 e1                                      mov r0, sb
00627670  4b 9d f3 eb                                      bl #0x30eba4
00627674  08 10 95 e5                                      ldr r1, [r5, #8]
00627678  00 90 a0 e1                                      mov sb, r0
0062767c  06 00 a0 e1                                      mov r0, r6
00627680  b9 9d f3 eb                                      bl #0x30ed6c
00627684  00 10 a0 e1                                      mov r1, r0
00627688  0a 00 a0 e1                                      mov r0, sl
0062768c  44 9d f3 eb                                      bl #0x30eba4
00627690  01 40 54 e2                                      subs r4, r4, #1
00627694  00 a0 a0 e1                                      mov sl, r0
00627698  0c 50 85 e2                                      add r5, r5, #0xc
0062769c  e5 ff ff 1a                                      bne #0x627638
006276a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
006276a4  04 80 83 e4                                      str r8, [r3], #4
006276a8  28 20 9d e5                                      ldr r2, [sp, #0x28]
006276ac  04 90 82 e5                                      str sb, [r2, #4]
006276b0  04 a0 83 e5                                      str sl, [r3, #4]
006276b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006276b8  01 20 a0 e1                                      mov r2, r1
006276bc  04 00 92 e4                                      ldr r0, [r2], #4
006276c0  28 30 9d e5                                      ldr r3, [sp, #0x28]
006276c4  04 00 83 e4                                      str r0, [r3], #4
006276c8  04 10 91 e5                                      ldr r1, [r1, #4]
006276cc  28 00 9d e5                                      ldr r0, [sp, #0x28]
006276d0  04 10 80 e5                                      str r1, [r0, #4]
006276d4  04 20 92 e5                                      ldr r2, [r2, #4]
006276d8  04 20 83 e5                                      str r2, [r3, #4]
006276dc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00628994, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628994  04 c0 9d e5                                      ldr ip, [sp, #4]
00628998  01 00 a0 e1                                      mov r0, r1
0062899c  02 10 a0 e1                                      mov r1, r2
006289a0  03 20 a0 e1                                      mov r2, r3
006289a4  00 30 9d e5                                      ldr r3, [sp]
006289a8  00 c0 8d e5                                      str ip, [sp]
006289ac  08 c0 9d e5                                      ldr ip, [sp, #8]
006289b0  04 c0 8d e5                                      str ip, [sp, #4]
006289b4  e5 ff ff ea                                      b #0x628950

; FUNCTION 0x006289b8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006289b8  01 00 a0 e1                                      mov r0, r1
006289bc  04 c0 9d e5                                      ldr ip, [sp, #4]
006289c0  02 10 a0 e1                                      mov r1, r2
006289c4  03 20 a0 e1                                      mov r2, r3
006289c8  00 30 9d e5                                      ldr r3, [sp]
006289cc  00 c0 8d e5                                      str ip, [sp]
006289d0  9e ff ff ea                                      b #0x628850

; FUNCTION 0x0062b204, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b204  01 00 53 e3                                      cmp r3, #1
0062b208  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b20c  03 40 a0 e1                                      mov r4, r3
0062b210  02 b0 a0 e1                                      mov fp, r2
0062b214  29 00 00 0a                                      beq #0x62b2c0
0062b218  00 00 53 e3                                      cmp r3, #0
0062b21c  00 80 a0 03                                      moveq r8, #0
0062b220  08 90 a0 01                                      moveq sb, r8
0062b224  08 a0 a0 01                                      moveq sl, r8
0062b228  1e 00 00 0a                                      beq #0x62b2a8
0062b22c  00 80 a0 e3                                      mov r8, #0
0062b230  01 50 a0 e1                                      mov r5, r1
0062b234  00 70 a0 e3                                      mov r7, #0
0062b238  08 90 a0 e1                                      mov sb, r8
0062b23c  08 a0 a0 e1                                      mov sl, r8
0062b240  07 60 9b e7                                      ldr r6, [fp, r7]
0062b244  00 10 95 e5                                      ldr r1, [r5]
0062b248  04 70 87 e2                                      add r7, r7, #4
0062b24c  06 00 a0 e1                                      mov r0, r6
0062b250  c5 8e f3 eb                                      bl #0x30ed6c
0062b254  00 10 a0 e1                                      mov r1, r0
0062b258  08 00 a0 e1                                      mov r0, r8
0062b25c  50 8e f3 eb                                      bl #0x30eba4
0062b260  04 10 95 e5                                      ldr r1, [r5, #4]
0062b264  00 80 a0 e1                                      mov r8, r0
0062b268  06 00 a0 e1                                      mov r0, r6
0062b26c  be 8e f3 eb                                      bl #0x30ed6c
0062b270  00 10 a0 e1                                      mov r1, r0
0062b274  09 00 a0 e1                                      mov r0, sb
0062b278  49 8e f3 eb                                      bl #0x30eba4
0062b27c  08 10 95 e5                                      ldr r1, [r5, #8]
0062b280  00 90 a0 e1                                      mov sb, r0
0062b284  06 00 a0 e1                                      mov r0, r6
0062b288  b7 8e f3 eb                                      bl #0x30ed6c
0062b28c  00 10 a0 e1                                      mov r1, r0
0062b290  0a 00 a0 e1                                      mov r0, sl
0062b294  42 8e f3 eb                                      bl #0x30eba4
0062b298  01 40 54 e2                                      subs r4, r4, #1
0062b29c  00 a0 a0 e1                                      mov sl, r0
0062b2a0  0c 50 85 e2                                      add r5, r5, #0xc
0062b2a4  e5 ff ff 1a                                      bne #0x62b240
0062b2a8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b2ac  04 80 83 e4                                      str r8, [r3], #4
0062b2b0  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b2b4  04 90 82 e5                                      str sb, [r2, #4]
0062b2b8  04 a0 83 e5                                      str sl, [r3, #4]
0062b2bc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b2c0  01 20 a0 e1                                      mov r2, r1
0062b2c4  04 00 92 e4                                      ldr r0, [r2], #4
0062b2c8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b2cc  04 00 83 e4                                      str r0, [r3], #4
0062b2d0  04 10 91 e5                                      ldr r1, [r1, #4]
0062b2d4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b2d8  04 10 80 e5                                      str r1, [r0, #4]
0062b2dc  04 20 92 e5                                      ldr r2, [r2, #4]
0062b2e0  04 20 83 e5                                      str r2, [r3, #4]
0062b2e4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062d72c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d72c  01 00 a0 e1                                      mov r0, r1
0062d730  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d734  02 10 a0 e1                                      mov r1, r2
0062d738  03 20 a0 e1                                      mov r2, r3
0062d73c  00 30 9d e5                                      ldr r3, [sp]
0062d740  00 c0 8d e5                                      str ip, [sp]
0062d744  ba ff ff ea                                      b #0x62d634

; FUNCTION 0x0062d840, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIfEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d840  01 00 a0 e1                                      mov r0, r1
0062d844  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d848  02 10 a0 e1                                      mov r1, r2
0062d84c  03 20 a0 e1                                      mov r2, r3
0062d850  00 30 9d e5                                      ldr r3, [sp]
0062d854  00 c0 8d e5                                      str ip, [sp]
0062d858  ba ff ff ea                                      b #0x62d748
