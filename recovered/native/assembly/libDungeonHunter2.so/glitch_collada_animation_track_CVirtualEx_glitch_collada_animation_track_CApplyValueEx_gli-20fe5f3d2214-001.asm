; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed2c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060eff0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getValueSize() const
; decoder-mode: arm
0060eff0  0c 00 a0 e3                                      mov r0, #0xc
0060eff4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f584, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060f584  10 40 2d e9                                      push {r4, lr}
0060f588  00 40 a0 e1                                      mov r4, r0
0060f58c  47 fb f3 eb                                      bl #0x30e2b0
0060f590  04 00 a0 e1                                      mov r0, r4
0060f594  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0061032c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getInstance()
; decoder-mode: arm
0061032c  70 40 2d e9                                      push {r4, r5, r6, lr}
00610330  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610334  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610338  04 40 8f e0                                      add r4, pc, r4
0061033c  03 60 94 e7                                      ldr r6, [r4, r3]
00610340  00 30 96 e5                                      ldr r3, [r6]
00610344  01 00 13 e3                                      tst r3, #1
00610348  02 00 00 0a                                      beq #0x610358
0061034c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610350  05 00 94 e7                                      ldr r0, [r4, r5]
00610354  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610358  06 00 a0 e1                                      mov r0, r6
0061035c  02 f9 f3 eb                                      bl #0x30e76c
00610360  00 00 50 e3                                      cmp r0, #0
00610364  f8 ff ff 0a                                      beq #0x61034c
00610368  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061036c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610370  06 00 a0 e1                                      mov r0, r6
00610374  03 30 94 e7                                      ldr r3, [r4, r3]
00610378  05 60 94 e7                                      ldr r6, [r4, r5]
0061037c  08 30 83 e2                                      add r3, r3, #8
00610380  00 30 86 e5                                      str r3, [r6]
00610384  ac f9 f3 eb                                      bl #0x30ea3c
00610388  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061038c  06 00 a0 e1                                      mov r0, r6
00610390  03 10 94 e7                                      ldr r1, [r4, r3]
00610394  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610398  03 20 94 e7                                      ldr r2, [r4, r3]
0061039c  d8 f7 f3 eb                                      bl #0x30e304
006103a0  05 00 94 e7                                      ldr r0, [r4, r5]
006103a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006103a8  58 47 38 00 98 44 00 00 30 18 00 00 a0 44 00 00  .byte 0x58, 0x47, 0x38, 0x00, 0x98, 0x44, 0x00, 0x00, 0x30, 0x18, 0x00, 0x00, 0xa0, 0x44, 0x00, 0x00
006103b8  a8 1d 00 00 90 18 00 00                          .byte 0xa8, 0x1d, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00613eec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00613eec  01 00 a0 e1                                      mov r0, r1
00613ef0  02 10 a0 e1                                      mov r1, r2
00613ef4  03 20 a0 e1                                      mov r2, r3
00613ef8  d7 ff ff ea                                      b #0x613e5c

; FUNCTION 0x00613fd8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00613fd8  01 00 a0 e1                                      mov r0, r1
00613fdc  02 10 a0 e1                                      mov r1, r2
00613fe0  03 20 a0 e1                                      mov r2, r3
00613fe4  00 30 9d e5                                      ldr r3, [sp]
00613fe8  c3 ff ff ea                                      b #0x613efc

; FUNCTION 0x00614130, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00614130  04 c0 9d e5                                      ldr ip, [sp, #4]
00614134  01 00 a0 e1                                      mov r0, r1
00614138  02 10 a0 e1                                      mov r1, r2
0061413c  03 20 a0 e1                                      mov r2, r3
00614140  00 30 9d e5                                      ldr r3, [sp]
00614144  00 c0 8d e5                                      str ip, [sp]
00614148  08 c0 9d e5                                      ldr ip, [sp, #8]
0061414c  04 c0 8d e5                                      str ip, [sp, #4]
00614150  a5 ff ff ea                                      b #0x613fec

; FUNCTION 0x006187cc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getIdentityValue(void*) const
; decoder-mode: arm
006187cc  00 20 a0 e3                                      mov r2, #0
006187d0  01 30 a0 e1                                      mov r3, r1
006187d4  01 20 c3 e4                                      strb r2, [r3], #1
006187d8  01 30 83 e2                                      add r3, r3, #1
006187dc  01 20 c1 e5                                      strb r2, [r1, #1]
006187e0  01 20 c3 e4                                      strb r2, [r3], #1
006187e4  01 20 c3 e4                                      strb r2, [r3], #1
006187e8  01 20 c3 e4                                      strb r2, [r3], #1
006187ec  01 20 c3 e4                                      strb r2, [r3], #1
006187f0  01 20 c3 e4                                      strb r2, [r3], #1
006187f4  01 20 c3 e4                                      strb r2, [r3], #1
006187f8  01 20 c3 e4                                      strb r2, [r3], #1
006187fc  01 20 c3 e4                                      strb r2, [r3], #1
00618800  01 20 c3 e4                                      strb r2, [r3], #1
00618804  00 20 c3 e5                                      strb r2, [r3]
00618808  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620564, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620564  10 40 2d e9                                      push {r4, lr}
00620568  00 30 91 e5                                      ldr r3, [r1]
0062056c  01 00 a0 e1                                      mov r0, r1
00620570  02 40 a0 e1                                      mov r4, r2
00620574  0f e0 a0 e1                                      mov lr, pc
00620578  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0062057c  00 30 90 e5                                      ldr r3, [r0]
00620580  00 30 84 e5                                      str r3, [r4]
00620584  04 30 90 e5                                      ldr r3, [r0, #4]
00620588  04 30 84 e5                                      str r3, [r4, #4]
0062058c  08 30 90 e5                                      ldr r3, [r0, #8]
00620590  08 30 84 e5                                      str r3, [r4, #8]
00620594  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622db0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622db0  01 00 a0 e1                                      mov r0, r1
00622db4  02 10 a0 e1                                      mov r1, r2
00622db8  03 20 a0 e1                                      mov r2, r3
00622dbc  00 30 9d e5                                      ldr r3, [sp]
00622dc0  e9 ff ff ea                                      b #0x622d6c

; FUNCTION 0x00623dc0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623dc0  10 40 2d e9                                      push {r4, lr}
00623dc4  02 00 a0 e1                                      mov r0, r2
00623dc8  00 30 92 e5                                      ldr r3, [r2]
00623dcc  0f e0 a0 e1                                      mov lr, pc
00623dd0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623dd4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00626c30, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626c30  01 00 53 e3                                      cmp r3, #1
00626c34  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626c38  03 40 a0 e1                                      mov r4, r3
00626c3c  02 b0 a0 e1                                      mov fp, r2
00626c40  29 00 00 0a                                      beq #0x626cec
00626c44  00 00 53 e3                                      cmp r3, #0
00626c48  00 80 a0 03                                      moveq r8, #0
00626c4c  08 90 a0 01                                      moveq sb, r8
00626c50  08 a0 a0 01                                      moveq sl, r8
00626c54  1e 00 00 0a                                      beq #0x626cd4
00626c58  00 80 a0 e3                                      mov r8, #0
00626c5c  01 50 a0 e1                                      mov r5, r1
00626c60  00 70 a0 e3                                      mov r7, #0
00626c64  08 90 a0 e1                                      mov sb, r8
00626c68  08 a0 a0 e1                                      mov sl, r8
00626c6c  07 60 9b e7                                      ldr r6, [fp, r7]
00626c70  00 10 95 e5                                      ldr r1, [r5]
00626c74  04 70 87 e2                                      add r7, r7, #4
00626c78  06 00 a0 e1                                      mov r0, r6
00626c7c  3a a0 f3 eb                                      bl #0x30ed6c
00626c80  00 10 a0 e1                                      mov r1, r0
00626c84  08 00 a0 e1                                      mov r0, r8
00626c88  c5 9f f3 eb                                      bl #0x30eba4
00626c8c  04 10 95 e5                                      ldr r1, [r5, #4]
00626c90  00 80 a0 e1                                      mov r8, r0
00626c94  06 00 a0 e1                                      mov r0, r6
00626c98  33 a0 f3 eb                                      bl #0x30ed6c
00626c9c  00 10 a0 e1                                      mov r1, r0
00626ca0  09 00 a0 e1                                      mov r0, sb
00626ca4  be 9f f3 eb                                      bl #0x30eba4
00626ca8  08 10 95 e5                                      ldr r1, [r5, #8]
00626cac  00 90 a0 e1                                      mov sb, r0
00626cb0  06 00 a0 e1                                      mov r0, r6
00626cb4  2c a0 f3 eb                                      bl #0x30ed6c
00626cb8  00 10 a0 e1                                      mov r1, r0
00626cbc  0a 00 a0 e1                                      mov r0, sl
00626cc0  b7 9f f3 eb                                      bl #0x30eba4
00626cc4  01 40 54 e2                                      subs r4, r4, #1
00626cc8  00 a0 a0 e1                                      mov sl, r0
00626ccc  0c 50 85 e2                                      add r5, r5, #0xc
00626cd0  e5 ff ff 1a                                      bne #0x626c6c
00626cd4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626cd8  04 80 83 e4                                      str r8, [r3], #4
00626cdc  28 20 9d e5                                      ldr r2, [sp, #0x28]
00626ce0  04 90 82 e5                                      str sb, [r2, #4]
00626ce4  04 a0 83 e5                                      str sl, [r3, #4]
00626ce8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626cec  01 20 a0 e1                                      mov r2, r1
00626cf0  04 00 92 e4                                      ldr r0, [r2], #4
00626cf4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626cf8  04 00 83 e4                                      str r0, [r3], #4
00626cfc  04 10 91 e5                                      ldr r1, [r1, #4]
00626d00  28 00 9d e5                                      ldr r0, [sp, #0x28]
00626d04  04 10 80 e5                                      str r1, [r0, #4]
00626d08  04 20 92 e5                                      ldr r2, [r2, #4]
00626d0c  04 20 83 e5                                      str r2, [r3, #4]
00626d10  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00628374, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628374  01 00 a0 e1                                      mov r0, r1
00628378  04 c0 9d e5                                      ldr ip, [sp, #4]
0062837c  02 10 a0 e1                                      mov r1, r2
00628380  03 20 a0 e1                                      mov r2, r3
00628384  00 30 9d e5                                      ldr r3, [sp]
00628388  00 c0 8d e5                                      str ip, [sp]
0062838c  ba ff ff ea                                      b #0x62827c

; FUNCTION 0x00628488, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628488  01 00 a0 e1                                      mov r0, r1
0062848c  04 c0 9d e5                                      ldr ip, [sp, #4]
00628490  02 10 a0 e1                                      mov r1, r2
00628494  03 20 a0 e1                                      mov r2, r3
00628498  00 30 9d e5                                      ldr r3, [sp]
0062849c  00 c0 8d e5                                      str ip, [sp]
006284a0  ba ff ff ea                                      b #0x628390

; FUNCTION 0x00628cec, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628cec  04 c0 9d e5                                      ldr ip, [sp, #4]
00628cf0  01 00 a0 e1                                      mov r0, r1
00628cf4  02 10 a0 e1                                      mov r1, r2
00628cf8  03 20 a0 e1                                      mov r2, r3
00628cfc  00 30 9d e5                                      ldr r3, [sp]
00628d00  00 c0 8d e5                                      str ip, [sp]
00628d04  08 c0 9d e5                                      ldr ip, [sp, #8]
00628d08  04 c0 8d e5                                      str ip, [sp, #4]
00628d0c  e5 ff ff ea                                      b #0x628ca8

; FUNCTION 0x00628d10, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00628d10  01 00 a0 e1                                      mov r0, r1
00628d14  04 c0 9d e5                                      ldr ip, [sp, #4]
00628d18  02 10 a0 e1                                      mov r1, r2
00628d1c  03 20 a0 e1                                      mov r2, r3
00628d20  00 30 9d e5                                      ldr r3, [sp]
00628d24  00 c0 8d e5                                      str ip, [sp]
00628d28  86 ff ff ea                                      b #0x628b48

; FUNCTION 0x0062a838, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a838  01 00 53 e3                                      cmp r3, #1
0062a83c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a840  03 40 a0 e1                                      mov r4, r3
0062a844  02 b0 a0 e1                                      mov fp, r2
0062a848  29 00 00 0a                                      beq #0x62a8f4
0062a84c  00 00 53 e3                                      cmp r3, #0
0062a850  00 80 a0 03                                      moveq r8, #0
0062a854  08 90 a0 01                                      moveq sb, r8
0062a858  08 a0 a0 01                                      moveq sl, r8
0062a85c  1e 00 00 0a                                      beq #0x62a8dc
0062a860  00 80 a0 e3                                      mov r8, #0
0062a864  01 50 a0 e1                                      mov r5, r1
0062a868  00 70 a0 e3                                      mov r7, #0
0062a86c  08 90 a0 e1                                      mov sb, r8
0062a870  08 a0 a0 e1                                      mov sl, r8
0062a874  07 60 9b e7                                      ldr r6, [fp, r7]
0062a878  00 10 95 e5                                      ldr r1, [r5]
0062a87c  04 70 87 e2                                      add r7, r7, #4
0062a880  06 00 a0 e1                                      mov r0, r6
0062a884  38 91 f3 eb                                      bl #0x30ed6c
0062a888  00 10 a0 e1                                      mov r1, r0
0062a88c  08 00 a0 e1                                      mov r0, r8
0062a890  c3 90 f3 eb                                      bl #0x30eba4
0062a894  04 10 95 e5                                      ldr r1, [r5, #4]
0062a898  00 80 a0 e1                                      mov r8, r0
0062a89c  06 00 a0 e1                                      mov r0, r6
0062a8a0  31 91 f3 eb                                      bl #0x30ed6c
0062a8a4  00 10 a0 e1                                      mov r1, r0
0062a8a8  09 00 a0 e1                                      mov r0, sb
0062a8ac  bc 90 f3 eb                                      bl #0x30eba4
0062a8b0  08 10 95 e5                                      ldr r1, [r5, #8]
0062a8b4  00 90 a0 e1                                      mov sb, r0
0062a8b8  06 00 a0 e1                                      mov r0, r6
0062a8bc  2a 91 f3 eb                                      bl #0x30ed6c
0062a8c0  00 10 a0 e1                                      mov r1, r0
0062a8c4  0a 00 a0 e1                                      mov r0, sl
0062a8c8  b5 90 f3 eb                                      bl #0x30eba4
0062a8cc  01 40 54 e2                                      subs r4, r4, #1
0062a8d0  00 a0 a0 e1                                      mov sl, r0
0062a8d4  0c 50 85 e2                                      add r5, r5, #0xc
0062a8d8  e5 ff ff 1a                                      bne #0x62a874
0062a8dc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a8e0  04 80 83 e4                                      str r8, [r3], #4
0062a8e4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a8e8  04 90 82 e5                                      str sb, [r2, #4]
0062a8ec  04 a0 83 e5                                      str sl, [r3, #4]
0062a8f0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a8f4  01 20 a0 e1                                      mov r2, r1
0062a8f8  04 00 92 e4                                      ldr r0, [r2], #4
0062a8fc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a900  04 00 83 e4                                      str r0, [r3], #4
0062a904  04 10 91 e5                                      ldr r1, [r1, #4]
0062a908  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a90c  04 10 80 e5                                      str r1, [r0, #4]
0062a910  04 20 92 e5                                      ldr r2, [r2, #4]
0062a914  04 20 83 e5                                      str r2, [r3, #4]
0062a918  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
