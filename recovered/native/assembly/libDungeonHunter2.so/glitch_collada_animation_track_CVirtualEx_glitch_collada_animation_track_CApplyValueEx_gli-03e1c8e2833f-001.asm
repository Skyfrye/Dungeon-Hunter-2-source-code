; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed30, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efe8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getValueSize() const
; decoder-mode: arm
0060efe8  0c 00 a0 e3                                      mov r0, #0xc
0060efec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f598, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060f598  10 40 2d e9                                      push {r4, lr}
0060f59c  00 40 a0 e1                                      mov r4, r0
0060f5a0  42 fb f3 eb                                      bl #0x30e2b0
0060f5a4  04 00 a0 e1                                      mov r0, r4
0060f5a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006103c0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getInstance()
; decoder-mode: arm
006103c0  70 40 2d e9                                      push {r4, r5, r6, lr}
006103c4  70 40 9f e5                                      ldr r4, [pc, #0x70]
006103c8  70 30 9f e5                                      ldr r3, [pc, #0x70]
006103cc  04 40 8f e0                                      add r4, pc, r4
006103d0  03 60 94 e7                                      ldr r6, [r4, r3]
006103d4  00 30 96 e5                                      ldr r3, [r6]
006103d8  01 00 13 e3                                      tst r3, #1
006103dc  02 00 00 0a                                      beq #0x6103ec
006103e0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006103e4  05 00 94 e7                                      ldr r0, [r4, r5]
006103e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006103ec  06 00 a0 e1                                      mov r0, r6
006103f0  dd f8 f3 eb                                      bl #0x30e76c
006103f4  00 00 50 e3                                      cmp r0, #0
006103f8  f8 ff ff 0a                                      beq #0x6103e0
006103fc  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610400  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610404  06 00 a0 e1                                      mov r0, r6
00610408  03 30 94 e7                                      ldr r3, [r4, r3]
0061040c  05 60 94 e7                                      ldr r6, [r4, r5]
00610410  08 30 83 e2                                      add r3, r3, #8
00610414  00 30 86 e5                                      str r3, [r6]
00610418  87 f9 f3 eb                                      bl #0x30ea3c
0061041c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610420  06 00 a0 e1                                      mov r0, r6
00610424  03 10 94 e7                                      ldr r1, [r4, r3]
00610428  20 30 9f e5                                      ldr r3, [pc, #0x20]
0061042c  03 20 94 e7                                      ldr r2, [r4, r3]
00610430  b3 f7 f3 eb                                      bl #0x30e304
00610434  05 00 94 e7                                      ldr r0, [r4, r5]
00610438  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0061043c  c4 46 38 00 c4 1e 00 00 4c 0f 00 00 88 33 00 00  .byte 0xc4, 0x46, 0x38, 0x00, 0xc4, 0x1e, 0x00, 0x00, 0x4c, 0x0f, 0x00, 0x00, 0x88, 0x33, 0x00, 0x00
0061044c  5c 2f 00 00 90 18 00 00                          .byte 0x5c, 0x2f, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00614518, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00614518  01 00 a0 e1                                      mov r0, r1
0061451c  02 10 a0 e1                                      mov r1, r2
00614520  03 20 a0 e1                                      mov r2, r3
00614524  d7 ff ff ea                                      b #0x614488

; FUNCTION 0x00614608, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00614608  01 00 a0 e1                                      mov r0, r1
0061460c  02 10 a0 e1                                      mov r1, r2
00614610  03 20 a0 e1                                      mov r2, r3
00614614  00 30 9d e5                                      ldr r3, [sp]
00614618  c2 ff ff ea                                      b #0x614528

; FUNCTION 0x00614768, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00614768  04 c0 9d e5                                      ldr ip, [sp, #4]
0061476c  01 00 a0 e1                                      mov r0, r1
00614770  02 10 a0 e1                                      mov r1, r2
00614774  03 20 a0 e1                                      mov r2, r3
00614778  00 30 9d e5                                      ldr r3, [sp]
0061477c  00 c0 8d e5                                      str ip, [sp]
00614780  08 c0 9d e5                                      ldr ip, [sp, #8]
00614784  04 c0 8d e5                                      str ip, [sp, #4]
00614788  a3 ff ff ea                                      b #0x61461c

; FUNCTION 0x0061880c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061880c  00 20 a0 e3                                      mov r2, #0
00618810  01 30 a0 e1                                      mov r3, r1
00618814  01 20 c3 e4                                      strb r2, [r3], #1
00618818  01 30 83 e2                                      add r3, r3, #1
0061881c  01 20 c1 e5                                      strb r2, [r1, #1]
00618820  01 20 c3 e4                                      strb r2, [r3], #1
00618824  01 20 c3 e4                                      strb r2, [r3], #1
00618828  01 20 c3 e4                                      strb r2, [r3], #1
0061882c  01 20 c3 e4                                      strb r2, [r3], #1
00618830  01 20 c3 e4                                      strb r2, [r3], #1
00618834  01 20 c3 e4                                      strb r2, [r3], #1
00618838  01 20 c3 e4                                      strb r2, [r3], #1
0061883c  01 20 c3 e4                                      strb r2, [r3], #1
00618840  01 20 c3 e4                                      strb r2, [r3], #1
00618844  00 20 c3 e5                                      strb r2, [r3]
00618848  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620530, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620530  10 40 2d e9                                      push {r4, lr}
00620534  00 30 91 e5                                      ldr r3, [r1]
00620538  01 00 a0 e1                                      mov r0, r1
0062053c  02 40 a0 e1                                      mov r4, r2
00620540  0f e0 a0 e1                                      mov lr, pc
00620544  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00620548  00 30 90 e5                                      ldr r3, [r0]
0062054c  00 30 84 e5                                      str r3, [r4]
00620550  04 30 90 e5                                      ldr r3, [r0, #4]
00620554  04 30 84 e5                                      str r3, [r4, #4]
00620558  08 30 90 e5                                      ldr r3, [r0, #8]
0062055c  08 30 84 e5                                      str r3, [r4, #8]
00620560  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622e08, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622e08  01 00 a0 e1                                      mov r0, r1
00622e0c  02 10 a0 e1                                      mov r1, r2
00622e10  03 20 a0 e1                                      mov r2, r3
00622e14  00 30 9d e5                                      ldr r3, [sp]
00622e18  e9 ff ff ea                                      b #0x622dc4

; FUNCTION 0x00623da8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623da8  10 40 2d e9                                      push {r4, lr}
00623dac  02 00 a0 e1                                      mov r0, r2
00623db0  00 30 92 e5                                      ldr r3, [r2]
00623db4  0f e0 a0 e1                                      mov lr, pc
00623db8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623dbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00626d14, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626d14  01 00 53 e3                                      cmp r3, #1
00626d18  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626d1c  03 40 a0 e1                                      mov r4, r3
00626d20  02 b0 a0 e1                                      mov fp, r2
00626d24  29 00 00 0a                                      beq #0x626dd0
00626d28  00 00 53 e3                                      cmp r3, #0
00626d2c  00 80 a0 03                                      moveq r8, #0
00626d30  08 90 a0 01                                      moveq sb, r8
00626d34  08 a0 a0 01                                      moveq sl, r8
00626d38  1e 00 00 0a                                      beq #0x626db8
00626d3c  00 80 a0 e3                                      mov r8, #0
00626d40  01 50 a0 e1                                      mov r5, r1
00626d44  00 70 a0 e3                                      mov r7, #0
00626d48  08 90 a0 e1                                      mov sb, r8
00626d4c  08 a0 a0 e1                                      mov sl, r8
00626d50  07 60 9b e7                                      ldr r6, [fp, r7]
00626d54  00 10 95 e5                                      ldr r1, [r5]
00626d58  04 70 87 e2                                      add r7, r7, #4
00626d5c  06 00 a0 e1                                      mov r0, r6
00626d60  01 a0 f3 eb                                      bl #0x30ed6c
00626d64  00 10 a0 e1                                      mov r1, r0
00626d68  08 00 a0 e1                                      mov r0, r8
00626d6c  8c 9f f3 eb                                      bl #0x30eba4
00626d70  04 10 95 e5                                      ldr r1, [r5, #4]
00626d74  00 80 a0 e1                                      mov r8, r0
00626d78  06 00 a0 e1                                      mov r0, r6
00626d7c  fa 9f f3 eb                                      bl #0x30ed6c
00626d80  00 10 a0 e1                                      mov r1, r0
00626d84  09 00 a0 e1                                      mov r0, sb
00626d88  85 9f f3 eb                                      bl #0x30eba4
00626d8c  08 10 95 e5                                      ldr r1, [r5, #8]
00626d90  00 90 a0 e1                                      mov sb, r0
00626d94  06 00 a0 e1                                      mov r0, r6
00626d98  f3 9f f3 eb                                      bl #0x30ed6c
00626d9c  00 10 a0 e1                                      mov r1, r0
00626da0  0a 00 a0 e1                                      mov r0, sl
00626da4  7e 9f f3 eb                                      bl #0x30eba4
00626da8  01 40 54 e2                                      subs r4, r4, #1
00626dac  00 a0 a0 e1                                      mov sl, r0
00626db0  0c 50 85 e2                                      add r5, r5, #0xc
00626db4  e5 ff ff 1a                                      bne #0x626d50
00626db8  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626dbc  04 80 83 e4                                      str r8, [r3], #4
00626dc0  28 20 9d e5                                      ldr r2, [sp, #0x28]
00626dc4  04 90 82 e5                                      str sb, [r2, #4]
00626dc8  04 a0 83 e5                                      str sl, [r3, #4]
00626dcc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626dd0  01 20 a0 e1                                      mov r2, r1
00626dd4  04 00 92 e4                                      ldr r0, [r2], #4
00626dd8  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626ddc  04 00 83 e4                                      str r0, [r3], #4
00626de0  04 10 91 e5                                      ldr r1, [r1, #4]
00626de4  28 00 9d e5                                      ldr r0, [sp, #0x28]
00626de8  04 10 80 e5                                      str r1, [r0, #4]
00626dec  04 20 92 e5                                      ldr r2, [r2, #4]
00626df0  04 20 83 e5                                      str r2, [r3, #4]
00626df4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00627f40, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00627f40  04 c0 9d e5                                      ldr ip, [sp, #4]
00627f44  01 00 a0 e1                                      mov r0, r1
00627f48  02 10 a0 e1                                      mov r1, r2
00627f4c  03 20 a0 e1                                      mov r2, r3
00627f50  00 30 9d e5                                      ldr r3, [sp]
00627f54  00 c0 8d e5                                      str ip, [sp]
00627f58  08 c0 9d e5                                      ldr ip, [sp, #8]
00627f5c  04 c0 8d e5                                      str ip, [sp, #4]
00627f60  e5 ff ff ea                                      b #0x627efc

; FUNCTION 0x00627f64, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00627f64  01 00 a0 e1                                      mov r0, r1
00627f68  04 c0 9d e5                                      ldr ip, [sp, #4]
00627f6c  02 10 a0 e1                                      mov r1, r2
00627f70  03 20 a0 e1                                      mov r2, r3
00627f74  00 30 9d e5                                      ldr r3, [sp]
00627f78  00 c0 8d e5                                      str ip, [sp]
00627f7c  85 ff ff ea                                      b #0x627d98

; FUNCTION 0x00629d3c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629d3c  01 00 a0 e1                                      mov r0, r1
00629d40  04 c0 9d e5                                      ldr ip, [sp, #4]
00629d44  02 10 a0 e1                                      mov r1, r2
00629d48  03 20 a0 e1                                      mov r2, r3
00629d4c  00 30 9d e5                                      ldr r3, [sp]
00629d50  00 c0 8d e5                                      str ip, [sp]
00629d54  ba ff ff ea                                      b #0x629c44

; FUNCTION 0x00629e50, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00629e50  01 00 a0 e1                                      mov r0, r1
00629e54  04 c0 9d e5                                      ldr ip, [sp, #4]
00629e58  02 10 a0 e1                                      mov r1, r2
00629e5c  03 20 a0 e1                                      mov r2, r3
00629e60  00 30 9d e5                                      ldr r3, [sp]
00629e64  00 c0 8d e5                                      str ip, [sp]
00629e68  ba ff ff ea                                      b #0x629d58

; FUNCTION 0x0062a91c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIcEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a91c  01 00 53 e3                                      cmp r3, #1
0062a920  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a924  03 40 a0 e1                                      mov r4, r3
0062a928  02 b0 a0 e1                                      mov fp, r2
0062a92c  29 00 00 0a                                      beq #0x62a9d8
0062a930  00 00 53 e3                                      cmp r3, #0
0062a934  00 80 a0 03                                      moveq r8, #0
0062a938  08 90 a0 01                                      moveq sb, r8
0062a93c  08 a0 a0 01                                      moveq sl, r8
0062a940  1e 00 00 0a                                      beq #0x62a9c0
0062a944  00 80 a0 e3                                      mov r8, #0
0062a948  01 50 a0 e1                                      mov r5, r1
0062a94c  00 70 a0 e3                                      mov r7, #0
0062a950  08 90 a0 e1                                      mov sb, r8
0062a954  08 a0 a0 e1                                      mov sl, r8
0062a958  07 60 9b e7                                      ldr r6, [fp, r7]
0062a95c  00 10 95 e5                                      ldr r1, [r5]
0062a960  04 70 87 e2                                      add r7, r7, #4
0062a964  06 00 a0 e1                                      mov r0, r6
0062a968  ff 90 f3 eb                                      bl #0x30ed6c
0062a96c  00 10 a0 e1                                      mov r1, r0
0062a970  08 00 a0 e1                                      mov r0, r8
0062a974  8a 90 f3 eb                                      bl #0x30eba4
0062a978  04 10 95 e5                                      ldr r1, [r5, #4]
0062a97c  00 80 a0 e1                                      mov r8, r0
0062a980  06 00 a0 e1                                      mov r0, r6
0062a984  f8 90 f3 eb                                      bl #0x30ed6c
0062a988  00 10 a0 e1                                      mov r1, r0
0062a98c  09 00 a0 e1                                      mov r0, sb
0062a990  83 90 f3 eb                                      bl #0x30eba4
0062a994  08 10 95 e5                                      ldr r1, [r5, #8]
0062a998  00 90 a0 e1                                      mov sb, r0
0062a99c  06 00 a0 e1                                      mov r0, r6
0062a9a0  f1 90 f3 eb                                      bl #0x30ed6c
0062a9a4  00 10 a0 e1                                      mov r1, r0
0062a9a8  0a 00 a0 e1                                      mov r0, sl
0062a9ac  7c 90 f3 eb                                      bl #0x30eba4
0062a9b0  01 40 54 e2                                      subs r4, r4, #1
0062a9b4  00 a0 a0 e1                                      mov sl, r0
0062a9b8  0c 50 85 e2                                      add r5, r5, #0xc
0062a9bc  e5 ff ff 1a                                      bne #0x62a958
0062a9c0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a9c4  04 80 83 e4                                      str r8, [r3], #4
0062a9c8  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a9cc  04 90 82 e5                                      str sb, [r2, #4]
0062a9d0  04 a0 83 e5                                      str sl, [r3, #4]
0062a9d4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a9d8  01 20 a0 e1                                      mov r2, r1
0062a9dc  04 00 92 e4                                      ldr r0, [r2], #4
0062a9e0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a9e4  04 00 83 e4                                      str r0, [r3], #4
0062a9e8  04 10 91 e5                                      ldr r1, [r1, #4]
0062a9ec  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a9f0  04 10 80 e5                                      str r1, [r0, #4]
0062a9f4  04 20 92 e5                                      ldr r2, [r2, #4]
0062a9f8  04 20 83 e5                                      str r2, [r3, #4]
0062a9fc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
