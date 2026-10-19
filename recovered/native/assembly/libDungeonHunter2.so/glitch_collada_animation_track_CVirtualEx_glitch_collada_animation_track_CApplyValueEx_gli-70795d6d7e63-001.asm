; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed6c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getValueSize() const
; decoder-mode: arm
0060ef3c  0c 00 a0 e3                                      mov r0, #0xc
0060ef40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f6c4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::~CVirtualEx()
; decoder-mode: arm
0060f6c4  10 40 2d e9                                      push {r4, lr}
0060f6c8  00 40 a0 e1                                      mov r4, r0
0060f6cc  f7 fa f3 eb                                      bl #0x30e2b0
0060f6d0  04 00 a0 e1                                      mov r0, r4
0060f6d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610c6c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getInstance()
; decoder-mode: arm
00610c6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00610c70  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610c74  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610c78  04 40 8f e0                                      add r4, pc, r4
00610c7c  03 60 94 e7                                      ldr r6, [r4, r3]
00610c80  00 30 96 e5                                      ldr r3, [r6]
00610c84  01 00 13 e3                                      tst r3, #1
00610c88  02 00 00 0a                                      beq #0x610c98
00610c8c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610c90  05 00 94 e7                                      ldr r0, [r4, r5]
00610c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610c98  06 00 a0 e1                                      mov r0, r6
00610c9c  b2 f6 f3 eb                                      bl #0x30e76c
00610ca0  00 00 50 e3                                      cmp r0, #0
00610ca4  f8 ff ff 0a                                      beq #0x610c8c
00610ca8  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610cac  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610cb0  06 00 a0 e1                                      mov r0, r6
00610cb4  03 30 94 e7                                      ldr r3, [r4, r3]
00610cb8  05 60 94 e7                                      ldr r6, [r4, r5]
00610cbc  08 30 83 e2                                      add r3, r3, #8
00610cc0  00 30 86 e5                                      str r3, [r6]
00610cc4  5c f7 f3 eb                                      bl #0x30ea3c
00610cc8  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610ccc  06 00 a0 e1                                      mov r0, r6
00610cd0  03 10 94 e7                                      ldr r1, [r4, r3]
00610cd4  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610cd8  03 20 94 e7                                      ldr r2, [r4, r3]
00610cdc  88 f5 f3 eb                                      bl #0x30e304
00610ce0  05 00 94 e7                                      ldr r0, [r4, r5]
00610ce4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610ce8  18 3e 38 00 b8 07 00 00 04 14 00 00 ec 46 00 00  .byte 0x18, 0x3e, 0x38, 0x00, 0xb8, 0x07, 0x00, 0x00, 0x04, 0x14, 0x00, 0x00, 0xec, 0x46, 0x00, 0x00
00610cf8  fc 45 00 00 90 18 00 00                          .byte 0xfc, 0x45, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00616bf0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00616bf0  01 00 a0 e1                                      mov r0, r1
00616bf4  02 10 a0 e1                                      mov r1, r2
00616bf8  03 20 a0 e1                                      mov r2, r3
00616bfc  d4 ff ff ea                                      b #0x616b54

; FUNCTION 0x00616d08, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00616d08  01 00 a0 e1                                      mov r0, r1
00616d0c  04 c0 9d e5                                      ldr ip, [sp, #4]
00616d10  02 10 a0 e1                                      mov r1, r2
00616d14  03 20 a0 e1                                      mov r2, r3
00616d18  00 30 9d e5                                      ldr r3, [sp]
00616d1c  00 c0 8d e5                                      str ip, [sp]
00616d20  b6 ff ff ea                                      b #0x616c00

; FUNCTION 0x00616dec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00616dec  01 00 a0 e1                                      mov r0, r1
00616df0  02 10 a0 e1                                      mov r1, r2
00616df4  03 20 a0 e1                                      mov r2, r3
00616df8  00 30 9d e5                                      ldr r3, [sp]
00616dfc  c8 ff ff ea                                      b #0x616d24

; FUNCTION 0x00616f40, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00616f40  04 c0 9d e5                                      ldr ip, [sp, #4]
00616f44  01 00 a0 e1                                      mov r0, r1
00616f48  02 10 a0 e1                                      mov r1, r2
00616f4c  03 20 a0 e1                                      mov r2, r3
00616f50  00 30 9d e5                                      ldr r3, [sp]
00616f54  00 c0 8d e5                                      str ip, [sp]
00616f58  08 c0 9d e5                                      ldr ip, [sp, #8]
00616f5c  04 c0 8d e5                                      str ip, [sp, #4]
00616f60  a6 ff ff ea                                      b #0x616e00

; FUNCTION 0x00618bcc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618bcc  00 20 a0 e3                                      mov r2, #0
00618bd0  01 30 a0 e1                                      mov r3, r1
00618bd4  01 20 c3 e4                                      strb r2, [r3], #1
00618bd8  01 30 83 e2                                      add r3, r3, #1
00618bdc  01 20 c1 e5                                      strb r2, [r1, #1]
00618be0  01 20 c3 e4                                      strb r2, [r3], #1
00618be4  01 20 c3 e4                                      strb r2, [r3], #1
00618be8  01 20 c3 e4                                      strb r2, [r3], #1
00618bec  01 20 c3 e4                                      strb r2, [r3], #1
00618bf0  01 20 c3 e4                                      strb r2, [r3], #1
00618bf4  01 20 c3 e4                                      strb r2, [r3], #1
00618bf8  01 20 c3 e4                                      strb r2, [r3], #1
00618bfc  01 20 c3 e4                                      strb r2, [r3], #1
00618c00  01 20 c3 e4                                      strb r2, [r3], #1
00618c04  00 20 c3 e5                                      strb r2, [r3]
00618c08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006206d0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
006206d0  10 40 2d e9                                      push {r4, lr}
006206d4  00 30 91 e5                                      ldr r3, [r1]
006206d8  01 00 a0 e1                                      mov r0, r1
006206dc  02 40 a0 e1                                      mov r4, r2
006206e0  0f e0 a0 e1                                      mov lr, pc
006206e4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006206e8  00 30 90 e5                                      ldr r3, [r0]
006206ec  00 30 84 e5                                      str r3, [r4]
006206f0  04 30 90 e5                                      ldr r3, [r0, #4]
006206f4  04 30 84 e5                                      str r3, [r4, #4]
006206f8  08 30 90 e5                                      ldr r3, [r0, #8]
006206fc  08 30 84 e5                                      str r3, [r4, #8]
00620700  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622c58, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622c58  10 40 2d e9                                      push {r4, lr}
00622c5c  02 00 a0 e1                                      mov r0, r2
00622c60  00 30 92 e5                                      ldr r3, [r2]
00622c64  0f e0 a0 e1                                      mov lr, pc
00622c68  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622c6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623578, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623578  01 00 a0 e1                                      mov r0, r1
0062357c  02 10 a0 e1                                      mov r1, r2
00623580  03 20 a0 e1                                      mov r2, r3
00623584  00 30 9d e5                                      ldr r3, [sp]
00623588  e9 ff ff ea                                      b #0x623534

; FUNCTION 0x006235d0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006235d0  04 c0 9d e5                                      ldr ip, [sp, #4]
006235d4  01 00 a0 e1                                      mov r0, r1
006235d8  02 10 a0 e1                                      mov r1, r2
006235dc  03 20 a0 e1                                      mov r2, r3
006235e0  00 30 9d e5                                      ldr r3, [sp]
006235e4  00 c0 8d e5                                      str ip, [sp]
006235e8  08 c0 9d e5                                      ldr ip, [sp, #8]
006235ec  04 c0 8d e5                                      str ip, [sp, #4]
006235f0  e5 ff ff ea                                      b #0x62358c

; FUNCTION 0x00629f50, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00629f50  01 00 53 e3                                      cmp r3, #1
00629f54  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629f58  03 40 a0 e1                                      mov r4, r3
00629f5c  02 b0 a0 e1                                      mov fp, r2
00629f60  29 00 00 0a                                      beq #0x62a00c
00629f64  00 00 53 e3                                      cmp r3, #0
00629f68  00 80 a0 03                                      moveq r8, #0
00629f6c  08 90 a0 01                                      moveq sb, r8
00629f70  08 a0 a0 01                                      moveq sl, r8
00629f74  1e 00 00 0a                                      beq #0x629ff4
00629f78  00 80 a0 e3                                      mov r8, #0
00629f7c  01 50 a0 e1                                      mov r5, r1
00629f80  00 70 a0 e3                                      mov r7, #0
00629f84  08 90 a0 e1                                      mov sb, r8
00629f88  08 a0 a0 e1                                      mov sl, r8
00629f8c  07 60 9b e7                                      ldr r6, [fp, r7]
00629f90  00 10 95 e5                                      ldr r1, [r5]
00629f94  04 70 87 e2                                      add r7, r7, #4
00629f98  06 00 a0 e1                                      mov r0, r6
00629f9c  72 93 f3 eb                                      bl #0x30ed6c
00629fa0  00 10 a0 e1                                      mov r1, r0
00629fa4  08 00 a0 e1                                      mov r0, r8
00629fa8  fd 92 f3 eb                                      bl #0x30eba4
00629fac  04 10 95 e5                                      ldr r1, [r5, #4]
00629fb0  00 80 a0 e1                                      mov r8, r0
00629fb4  06 00 a0 e1                                      mov r0, r6
00629fb8  6b 93 f3 eb                                      bl #0x30ed6c
00629fbc  00 10 a0 e1                                      mov r1, r0
00629fc0  09 00 a0 e1                                      mov r0, sb
00629fc4  f6 92 f3 eb                                      bl #0x30eba4
00629fc8  08 10 95 e5                                      ldr r1, [r5, #8]
00629fcc  00 90 a0 e1                                      mov sb, r0
00629fd0  06 00 a0 e1                                      mov r0, r6
00629fd4  64 93 f3 eb                                      bl #0x30ed6c
00629fd8  00 10 a0 e1                                      mov r1, r0
00629fdc  0a 00 a0 e1                                      mov r0, sl
00629fe0  ef 92 f3 eb                                      bl #0x30eba4
00629fe4  01 40 54 e2                                      subs r4, r4, #1
00629fe8  00 a0 a0 e1                                      mov sl, r0
00629fec  0c 50 85 e2                                      add r5, r5, #0xc
00629ff0  e5 ff ff 1a                                      bne #0x629f8c
00629ff4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00629ff8  04 80 83 e4                                      str r8, [r3], #4
00629ffc  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a000  04 90 82 e5                                      str sb, [r2, #4]
0062a004  04 a0 83 e5                                      str sl, [r3, #4]
0062a008  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a00c  01 20 a0 e1                                      mov r2, r1
0062a010  04 00 92 e4                                      ldr r0, [r2], #4
0062a014  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a018  04 00 83 e4                                      str r0, [r3], #4
0062a01c  04 10 91 e5                                      ldr r1, [r1, #4]
0062a020  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a024  04 10 80 e5                                      str r1, [r0, #4]
0062a028  04 20 92 e5                                      ldr r2, [r2, #4]
0062a02c  04 20 83 e5                                      str r2, [r3, #4]
0062a030  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062b678, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b678  01 00 53 e3                                      cmp r3, #1
0062b67c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b680  03 40 a0 e1                                      mov r4, r3
0062b684  02 b0 a0 e1                                      mov fp, r2
0062b688  29 00 00 0a                                      beq #0x62b734
0062b68c  00 00 53 e3                                      cmp r3, #0
0062b690  00 80 a0 03                                      moveq r8, #0
0062b694  08 90 a0 01                                      moveq sb, r8
0062b698  08 a0 a0 01                                      moveq sl, r8
0062b69c  1e 00 00 0a                                      beq #0x62b71c
0062b6a0  00 80 a0 e3                                      mov r8, #0
0062b6a4  01 50 a0 e1                                      mov r5, r1
0062b6a8  00 70 a0 e3                                      mov r7, #0
0062b6ac  08 90 a0 e1                                      mov sb, r8
0062b6b0  08 a0 a0 e1                                      mov sl, r8
0062b6b4  07 60 9b e7                                      ldr r6, [fp, r7]
0062b6b8  00 10 95 e5                                      ldr r1, [r5]
0062b6bc  04 70 87 e2                                      add r7, r7, #4
0062b6c0  06 00 a0 e1                                      mov r0, r6
0062b6c4  a8 8d f3 eb                                      bl #0x30ed6c
0062b6c8  00 10 a0 e1                                      mov r1, r0
0062b6cc  08 00 a0 e1                                      mov r0, r8
0062b6d0  33 8d f3 eb                                      bl #0x30eba4
0062b6d4  04 10 95 e5                                      ldr r1, [r5, #4]
0062b6d8  00 80 a0 e1                                      mov r8, r0
0062b6dc  06 00 a0 e1                                      mov r0, r6
0062b6e0  a1 8d f3 eb                                      bl #0x30ed6c
0062b6e4  00 10 a0 e1                                      mov r1, r0
0062b6e8  09 00 a0 e1                                      mov r0, sb
0062b6ec  2c 8d f3 eb                                      bl #0x30eba4
0062b6f0  08 10 95 e5                                      ldr r1, [r5, #8]
0062b6f4  00 90 a0 e1                                      mov sb, r0
0062b6f8  06 00 a0 e1                                      mov r0, r6
0062b6fc  9a 8d f3 eb                                      bl #0x30ed6c
0062b700  00 10 a0 e1                                      mov r1, r0
0062b704  0a 00 a0 e1                                      mov r0, sl
0062b708  25 8d f3 eb                                      bl #0x30eba4
0062b70c  01 40 54 e2                                      subs r4, r4, #1
0062b710  00 a0 a0 e1                                      mov sl, r0
0062b714  0c 50 85 e2                                      add r5, r5, #0xc
0062b718  e5 ff ff 1a                                      bne #0x62b6b4
0062b71c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b720  04 80 83 e4                                      str r8, [r3], #4
0062b724  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b728  04 90 82 e5                                      str sb, [r2, #4]
0062b72c  04 a0 83 e5                                      str sl, [r3, #4]
0062b730  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b734  01 20 a0 e1                                      mov r2, r1
0062b738  04 00 92 e4                                      ldr r0, [r2], #4
0062b73c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b740  04 00 83 e4                                      str r0, [r3], #4
0062b744  04 10 91 e5                                      ldr r1, [r1, #4]
0062b748  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b74c  04 10 80 e5                                      str r1, [r0, #4]
0062b750  04 20 92 e5                                      ldr r2, [r2, #4]
0062b754  04 20 83 e5                                      str r2, [r3, #4]
0062b758  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062cc64, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062cc64  01 00 a0 e1                                      mov r0, r1
0062cc68  04 c0 9d e5                                      ldr ip, [sp, #4]
0062cc6c  02 10 a0 e1                                      mov r1, r2
0062cc70  03 20 a0 e1                                      mov r2, r3
0062cc74  00 30 9d e5                                      ldr r3, [sp]
0062cc78  00 c0 8d e5                                      str ip, [sp]
0062cc7c  ba ff ff ea                                      b #0x62cb6c

; FUNCTION 0x0062cd78, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleXExIcEELi0EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, 0, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062cd78  01 00 a0 e1                                      mov r0, r1
0062cd7c  04 c0 9d e5                                      ldr ip, [sp, #4]
0062cd80  02 10 a0 e1                                      mov r1, r2
0062cd84  03 20 a0 e1                                      mov r2, r3
0062cd88  00 30 9d e5                                      ldr r3, [sp]
0062cd8c  00 c0 8d e5                                      str ip, [sp]
0062cd90  ba ff ff ea                                      b #0x62cc80
