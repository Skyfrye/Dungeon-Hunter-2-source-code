; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed5c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef5c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getValueSize() const
; decoder-mode: arm
0060ef5c  0c 00 a0 e3                                      mov r0, #0xc
0060ef60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f674, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060f674  10 40 2d e9                                      push {r4, lr}
0060f678  00 40 a0 e1                                      mov r4, r0
0060f67c  0b fb f3 eb                                      bl #0x30e2b0
0060f680  04 00 a0 e1                                      mov r0, r4
0060f684  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610a1c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getInstance()
; decoder-mode: arm
00610a1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00610a20  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610a24  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610a28  04 40 8f e0                                      add r4, pc, r4
00610a2c  03 60 94 e7                                      ldr r6, [r4, r3]
00610a30  00 30 96 e5                                      ldr r3, [r6]
00610a34  01 00 13 e3                                      tst r3, #1
00610a38  02 00 00 0a                                      beq #0x610a48
00610a3c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610a40  05 00 94 e7                                      ldr r0, [r4, r5]
00610a44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610a48  06 00 a0 e1                                      mov r0, r6
00610a4c  46 f7 f3 eb                                      bl #0x30e76c
00610a50  00 00 50 e3                                      cmp r0, #0
00610a54  f8 ff ff 0a                                      beq #0x610a3c
00610a58  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610a5c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610a60  06 00 a0 e1                                      mov r0, r6
00610a64  03 30 94 e7                                      ldr r3, [r4, r3]
00610a68  05 60 94 e7                                      ldr r6, [r4, r5]
00610a6c  08 30 83 e2                                      add r3, r3, #8
00610a70  00 30 86 e5                                      str r3, [r6]
00610a74  f0 f7 f3 eb                                      bl #0x30ea3c
00610a78  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610a7c  06 00 a0 e1                                      mov r0, r6
00610a80  03 10 94 e7                                      ldr r1, [r4, r3]
00610a84  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610a88  03 20 94 e7                                      ldr r2, [r4, r3]
00610a8c  1c f6 f3 eb                                      bl #0x30e304
00610a90  05 00 94 e7                                      ldr r0, [r4, r5]
00610a94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610a98  68 40 38 00 18 3e 00 00 fc 1d 00 00 40 2d 00 00  .byte 0x68, 0x40, 0x38, 0x00, 0x18, 0x3e, 0x00, 0x00, 0xfc, 0x1d, 0x00, 0x00, 0x40, 0x2d, 0x00, 0x00
00610aa8  f4 30 00 00 90 18 00 00                          .byte 0xf4, 0x30, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006141e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006141e4  01 00 a0 e1                                      mov r0, r1
006141e8  02 10 a0 e1                                      mov r1, r2
006141ec  03 20 a0 e1                                      mov r2, r3
006141f0  d7 ff ff ea                                      b #0x614154

; FUNCTION 0x006142d0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006142d0  01 00 a0 e1                                      mov r0, r1
006142d4  02 10 a0 e1                                      mov r1, r2
006142d8  03 20 a0 e1                                      mov r2, r3
006142dc  00 30 9d e5                                      ldr r3, [sp]
006142e0  c3 ff ff ea                                      b #0x6141f4

; FUNCTION 0x00614428, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00614428  04 c0 9d e5                                      ldr ip, [sp, #4]
0061442c  01 00 a0 e1                                      mov r0, r1
00614430  02 10 a0 e1                                      mov r1, r2
00614434  03 20 a0 e1                                      mov r2, r3
00614438  00 30 9d e5                                      ldr r3, [sp]
0061443c  00 c0 8d e5                                      str ip, [sp]
00614440  08 c0 9d e5                                      ldr ip, [sp, #8]
00614444  04 c0 8d e5                                      str ip, [sp, #4]
00614448  a5 ff ff ea                                      b #0x6142e4

; FUNCTION 0x00618acc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618acc  00 20 a0 e3                                      mov r2, #0
00618ad0  01 30 a0 e1                                      mov r3, r1
00618ad4  01 20 c3 e4                                      strb r2, [r3], #1
00618ad8  01 30 83 e2                                      add r3, r3, #1
00618adc  01 20 c1 e5                                      strb r2, [r1, #1]
00618ae0  01 20 c3 e4                                      strb r2, [r3], #1
00618ae4  01 20 c3 e4                                      strb r2, [r3], #1
00618ae8  01 20 c3 e4                                      strb r2, [r3], #1
00618aec  01 20 c3 e4                                      strb r2, [r3], #1
00618af0  01 20 c3 e4                                      strb r2, [r3], #1
00618af4  01 20 c3 e4                                      strb r2, [r3], #1
00618af8  01 20 c3 e4                                      strb r2, [r3], #1
00618afc  01 20 c3 e4                                      strb r2, [r3], #1
00618b00  01 20 c3 e4                                      strb r2, [r3], #1
00618b04  00 20 c3 e5                                      strb r2, [r3]
00618b08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006207a0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006207a0  10 40 2d e9                                      push {r4, lr}
006207a4  00 30 91 e5                                      ldr r3, [r1]
006207a8  01 00 a0 e1                                      mov r0, r1
006207ac  02 40 a0 e1                                      mov r4, r2
006207b0  0f e0 a0 e1                                      mov lr, pc
006207b4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006207b8  00 30 90 e5                                      ldr r3, [r0]
006207bc  00 30 84 e5                                      str r3, [r4]
006207c0  04 30 90 e5                                      ldr r3, [r0, #4]
006207c4  04 30 84 e5                                      str r3, [r4, #4]
006207c8  08 30 90 e5                                      ldr r3, [r0, #8]
006207cc  08 30 84 e5                                      str r3, [r4, #8]
006207d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623924, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623924  10 40 2d e9                                      push {r4, lr}
00623928  02 00 a0 e1                                      mov r0, r2
0062392c  00 30 92 e5                                      ldr r3, [r2]
00623930  0f e0 a0 e1                                      mov lr, pc
00623934  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623938  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623a1c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623a1c  01 00 a0 e1                                      mov r0, r1
00623a20  02 10 a0 e1                                      mov r1, r2
00623a24  03 20 a0 e1                                      mov r2, r3
00623a28  00 30 9d e5                                      ldr r3, [sp]
00623a2c  e9 ff ff ea                                      b #0x6239d8

; FUNCTION 0x006276e0, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006276e0  01 00 53 e3                                      cmp r3, #1
006276e4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006276e8  03 40 a0 e1                                      mov r4, r3
006276ec  02 b0 a0 e1                                      mov fp, r2
006276f0  29 00 00 0a                                      beq #0x62779c
006276f4  00 00 53 e3                                      cmp r3, #0
006276f8  00 80 a0 03                                      moveq r8, #0
006276fc  08 90 a0 01                                      moveq sb, r8
00627700  08 a0 a0 01                                      moveq sl, r8
00627704  1e 00 00 0a                                      beq #0x627784
00627708  00 80 a0 e3                                      mov r8, #0
0062770c  01 50 a0 e1                                      mov r5, r1
00627710  00 70 a0 e3                                      mov r7, #0
00627714  08 90 a0 e1                                      mov sb, r8
00627718  08 a0 a0 e1                                      mov sl, r8
0062771c  07 60 9b e7                                      ldr r6, [fp, r7]
00627720  00 10 95 e5                                      ldr r1, [r5]
00627724  04 70 87 e2                                      add r7, r7, #4
00627728  06 00 a0 e1                                      mov r0, r6
0062772c  8e 9d f3 eb                                      bl #0x30ed6c
00627730  00 10 a0 e1                                      mov r1, r0
00627734  08 00 a0 e1                                      mov r0, r8
00627738  19 9d f3 eb                                      bl #0x30eba4
0062773c  04 10 95 e5                                      ldr r1, [r5, #4]
00627740  00 80 a0 e1                                      mov r8, r0
00627744  06 00 a0 e1                                      mov r0, r6
00627748  87 9d f3 eb                                      bl #0x30ed6c
0062774c  00 10 a0 e1                                      mov r1, r0
00627750  09 00 a0 e1                                      mov r0, sb
00627754  12 9d f3 eb                                      bl #0x30eba4
00627758  08 10 95 e5                                      ldr r1, [r5, #8]
0062775c  00 90 a0 e1                                      mov sb, r0
00627760  06 00 a0 e1                                      mov r0, r6
00627764  80 9d f3 eb                                      bl #0x30ed6c
00627768  00 10 a0 e1                                      mov r1, r0
0062776c  0a 00 a0 e1                                      mov r0, sl
00627770  0b 9d f3 eb                                      bl #0x30eba4
00627774  01 40 54 e2                                      subs r4, r4, #1
00627778  00 a0 a0 e1                                      mov sl, r0
0062777c  0c 50 85 e2                                      add r5, r5, #0xc
00627780  e5 ff ff 1a                                      bne #0x62771c
00627784  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627788  04 80 83 e4                                      str r8, [r3], #4
0062778c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627790  04 90 82 e5                                      str sb, [r2, #4]
00627794  04 a0 83 e5                                      str sl, [r3, #4]
00627798  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062779c  01 20 a0 e1                                      mov r2, r1
006277a0  04 00 92 e4                                      ldr r0, [r2], #4
006277a4  28 30 9d e5                                      ldr r3, [sp, #0x28]
006277a8  04 00 83 e4                                      str r0, [r3], #4
006277ac  04 10 91 e5                                      ldr r1, [r1, #4]
006277b0  28 00 9d e5                                      ldr r0, [sp, #0x28]
006277b4  04 10 80 e5                                      str r1, [r0, #4]
006277b8  04 20 92 e5                                      ldr r2, [r2, #4]
006277bc  04 20 83 e5                                      str r2, [r3, #4]
006277c0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00627d58, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00627d58  04 c0 9d e5                                      ldr ip, [sp, #4]
00627d5c  01 00 a0 e1                                      mov r0, r1
00627d60  02 10 a0 e1                                      mov r1, r2
00627d64  03 20 a0 e1                                      mov r2, r3
00627d68  00 30 9d e5                                      ldr r3, [sp]
00627d6c  00 c0 8d e5                                      str ip, [sp]
00627d70  08 c0 9d e5                                      ldr ip, [sp, #8]
00627d74  04 c0 8d e5                                      str ip, [sp, #4]
00627d78  e5 ff ff ea                                      b #0x627d14

; FUNCTION 0x00627d7c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00627d7c  01 00 a0 e1                                      mov r0, r1
00627d80  04 c0 9d e5                                      ldr ip, [sp, #4]
00627d84  02 10 a0 e1                                      mov r1, r2
00627d88  03 20 a0 e1                                      mov r2, r3
00627d8c  00 30 9d e5                                      ldr r3, [sp]
00627d90  00 c0 8d e5                                      str ip, [sp]
00627d94  86 ff ff ea                                      b #0x627bb4

; FUNCTION 0x0062b2e8, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b2e8  01 00 53 e3                                      cmp r3, #1
0062b2ec  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b2f0  03 40 a0 e1                                      mov r4, r3
0062b2f4  02 b0 a0 e1                                      mov fp, r2
0062b2f8  29 00 00 0a                                      beq #0x62b3a4
0062b2fc  00 00 53 e3                                      cmp r3, #0
0062b300  00 80 a0 03                                      moveq r8, #0
0062b304  08 90 a0 01                                      moveq sb, r8
0062b308  08 a0 a0 01                                      moveq sl, r8
0062b30c  1e 00 00 0a                                      beq #0x62b38c
0062b310  00 80 a0 e3                                      mov r8, #0
0062b314  01 50 a0 e1                                      mov r5, r1
0062b318  00 70 a0 e3                                      mov r7, #0
0062b31c  08 90 a0 e1                                      mov sb, r8
0062b320  08 a0 a0 e1                                      mov sl, r8
0062b324  07 60 9b e7                                      ldr r6, [fp, r7]
0062b328  00 10 95 e5                                      ldr r1, [r5]
0062b32c  04 70 87 e2                                      add r7, r7, #4
0062b330  06 00 a0 e1                                      mov r0, r6
0062b334  8c 8e f3 eb                                      bl #0x30ed6c
0062b338  00 10 a0 e1                                      mov r1, r0
0062b33c  08 00 a0 e1                                      mov r0, r8
0062b340  17 8e f3 eb                                      bl #0x30eba4
0062b344  04 10 95 e5                                      ldr r1, [r5, #4]
0062b348  00 80 a0 e1                                      mov r8, r0
0062b34c  06 00 a0 e1                                      mov r0, r6
0062b350  85 8e f3 eb                                      bl #0x30ed6c
0062b354  00 10 a0 e1                                      mov r1, r0
0062b358  09 00 a0 e1                                      mov r0, sb
0062b35c  10 8e f3 eb                                      bl #0x30eba4
0062b360  08 10 95 e5                                      ldr r1, [r5, #8]
0062b364  00 90 a0 e1                                      mov sb, r0
0062b368  06 00 a0 e1                                      mov r0, r6
0062b36c  7e 8e f3 eb                                      bl #0x30ed6c
0062b370  00 10 a0 e1                                      mov r1, r0
0062b374  0a 00 a0 e1                                      mov r0, sl
0062b378  09 8e f3 eb                                      bl #0x30eba4
0062b37c  01 40 54 e2                                      subs r4, r4, #1
0062b380  00 a0 a0 e1                                      mov sl, r0
0062b384  0c 50 85 e2                                      add r5, r5, #0xc
0062b388  e5 ff ff 1a                                      bne #0x62b324
0062b38c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b390  04 80 83 e4                                      str r8, [r3], #4
0062b394  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b398  04 90 82 e5                                      str sb, [r2, #4]
0062b39c  04 a0 83 e5                                      str sl, [r3, #4]
0062b3a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b3a4  01 20 a0 e1                                      mov r2, r1
0062b3a8  04 00 92 e4                                      ldr r0, [r2], #4
0062b3ac  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b3b0  04 00 83 e4                                      str r0, [r3], #4
0062b3b4  04 10 91 e5                                      ldr r1, [r1, #4]
0062b3b8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b3bc  04 10 80 e5                                      str r1, [r0, #4]
0062b3c0  04 20 92 e5                                      ldr r2, [r2, #4]
0062b3c4  04 20 83 e5                                      str r2, [r3, #4]
0062b3c8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062d504, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d504  01 00 a0 e1                                      mov r0, r1
0062d508  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d50c  02 10 a0 e1                                      mov r1, r2
0062d510  03 20 a0 e1                                      mov r2, r3
0062d514  00 30 9d e5                                      ldr r3, [sp]
0062d518  00 c0 8d e5                                      str ip, [sp]
0062d51c  ba ff ff ea                                      b #0x62d40c

; FUNCTION 0x0062d618, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIsEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d618  01 00 a0 e1                                      mov r0, r1
0062d61c  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d620  02 10 a0 e1                                      mov r1, r2
0062d624  03 20 a0 e1                                      mov r2, r3
0062d628  00 30 9d e5                                      ldr r3, [sp]
0062d62c  00 c0 8d e5                                      str ip, [sp]
0062d630  ba ff ff ea                                      b #0x62d520
