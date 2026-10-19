; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed84, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed84  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getValueSize() const
; decoder-mode: arm
0060ef0c  0c 00 a0 e3                                      mov r0, #0xc
0060ef10  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f73c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::~CVirtualEx()
; decoder-mode: arm
0060f73c  10 40 2d e9                                      push {r4, lr}
0060f740  00 40 a0 e1                                      mov r4, r0
0060f744  d9 fa f3 eb                                      bl #0x30e2b0
0060f748  04 00 a0 e1                                      mov r0, r4
0060f74c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610fe4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getInstance()
; decoder-mode: arm
00610fe4  70 40 2d e9                                      push {r4, r5, r6, lr}
00610fe8  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610fec  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610ff0  04 40 8f e0                                      add r4, pc, r4
00610ff4  03 60 94 e7                                      ldr r6, [r4, r3]
00610ff8  00 30 96 e5                                      ldr r3, [r6]
00610ffc  01 00 13 e3                                      tst r3, #1
00611000  02 00 00 0a                                      beq #0x611010
00611004  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00611008  05 00 94 e7                                      ldr r0, [r4, r5]
0061100c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611010  06 00 a0 e1                                      mov r0, r6
00611014  d4 f5 f3 eb                                      bl #0x30e76c
00611018  00 00 50 e3                                      cmp r0, #0
0061101c  f8 ff ff 0a                                      beq #0x611004
00611020  44 30 9f e5                                      ldr r3, [pc, #0x44]
00611024  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00611028  06 00 a0 e1                                      mov r0, r6
0061102c  03 30 94 e7                                      ldr r3, [r4, r3]
00611030  05 60 94 e7                                      ldr r6, [r4, r5]
00611034  08 30 83 e2                                      add r3, r3, #8
00611038  00 30 86 e5                                      str r3, [r6]
0061103c  7e f6 f3 eb                                      bl #0x30ea3c
00611040  28 30 9f e5                                      ldr r3, [pc, #0x28]
00611044  06 00 a0 e1                                      mov r0, r6
00611048  03 10 94 e7                                      ldr r1, [r4, r3]
0061104c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00611050  03 20 94 e7                                      ldr r2, [r4, r3]
00611054  aa f4 f3 eb                                      bl #0x30e304
00611058  05 00 94 e7                                      ldr r0, [r4, r5]
0061105c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00611060  a0 3a 38 00 ac 47 00 00 88 0c 00 00 14 08 00 00  .byte 0xa0, 0x3a, 0x38, 0x00, 0xac, 0x47, 0x00, 0x00, 0x88, 0x0c, 0x00, 0x00, 0x14, 0x08, 0x00, 0x00
00611070  a0 26 00 00 90 18 00 00                          .byte 0xa0, 0x26, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00617c6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00617c6c  01 00 a0 e1                                      mov r0, r1
00617c70  02 10 a0 e1                                      mov r1, r2
00617c74  03 20 a0 e1                                      mov r2, r3
00617c78  d4 ff ff ea                                      b #0x617bd0

; FUNCTION 0x00617d80, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00617d80  01 00 a0 e1                                      mov r0, r1
00617d84  04 c0 9d e5                                      ldr ip, [sp, #4]
00617d88  02 10 a0 e1                                      mov r1, r2
00617d8c  03 20 a0 e1                                      mov r2, r3
00617d90  00 30 9d e5                                      ldr r3, [sp]
00617d94  00 c0 8d e5                                      str ip, [sp]
00617d98  b7 ff ff ea                                      b #0x617c7c

; FUNCTION 0x00617e64, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00617e64  01 00 a0 e1                                      mov r0, r1
00617e68  02 10 a0 e1                                      mov r1, r2
00617e6c  03 20 a0 e1                                      mov r2, r3
00617e70  00 30 9d e5                                      ldr r3, [sp]
00617e74  c8 ff ff ea                                      b #0x617d9c

; FUNCTION 0x00617fb8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00617fb8  04 c0 9d e5                                      ldr ip, [sp, #4]
00617fbc  01 00 a0 e1                                      mov r0, r1
00617fc0  02 10 a0 e1                                      mov r1, r2
00617fc4  03 20 a0 e1                                      mov r2, r3
00617fc8  00 30 9d e5                                      ldr r3, [sp]
00617fcc  00 c0 8d e5                                      str ip, [sp]
00617fd0  08 c0 9d e5                                      ldr ip, [sp, #8]
00617fd4  04 c0 8d e5                                      str ip, [sp, #4]
00617fd8  a6 ff ff ea                                      b #0x617e78

; FUNCTION 0x00618d4c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618d4c  00 20 a0 e3                                      mov r2, #0
00618d50  01 30 a0 e1                                      mov r3, r1
00618d54  01 20 c3 e4                                      strb r2, [r3], #1
00618d58  01 30 83 e2                                      add r3, r3, #1
00618d5c  01 20 c1 e5                                      strb r2, [r1, #1]
00618d60  01 20 c3 e4                                      strb r2, [r3], #1
00618d64  01 20 c3 e4                                      strb r2, [r3], #1
00618d68  01 20 c3 e4                                      strb r2, [r3], #1
00618d6c  01 20 c3 e4                                      strb r2, [r3], #1
00618d70  01 20 c3 e4                                      strb r2, [r3], #1
00618d74  01 20 c3 e4                                      strb r2, [r3], #1
00618d78  01 20 c3 e4                                      strb r2, [r3], #1
00618d7c  01 20 c3 e4                                      strb r2, [r3], #1
00618d80  01 20 c3 e4                                      strb r2, [r3], #1
00618d84  00 20 c3 e5                                      strb r2, [r3]
00618d88  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620598, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620598  10 40 2d e9                                      push {r4, lr}
0062059c  00 30 91 e5                                      ldr r3, [r1]
006205a0  01 00 a0 e1                                      mov r0, r1
006205a4  02 40 a0 e1                                      mov r4, r2
006205a8  0f e0 a0 e1                                      mov lr, pc
006205ac  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006205b0  00 30 90 e5                                      ldr r3, [r0]
006205b4  00 30 84 e5                                      str r3, [r4]
006205b8  04 30 90 e5                                      ldr r3, [r0, #4]
006205bc  04 30 84 e5                                      str r3, [r4, #4]
006205c0  08 30 90 e5                                      ldr r3, [r0, #8]
006205c4  08 30 84 e5                                      str r3, [r4, #8]
006205c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622bc8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622bc8  10 40 2d e9                                      push {r4, lr}
00622bcc  02 00 a0 e1                                      mov r0, r2
00622bd0  00 30 92 e5                                      ldr r3, [r2]
00622bd4  0f e0 a0 e1                                      mov lr, pc
00622bd8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622bdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006232e0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006232e0  01 00 a0 e1                                      mov r0, r1
006232e4  02 10 a0 e1                                      mov r1, r2
006232e8  03 20 a0 e1                                      mov r2, r3
006232ec  00 30 9d e5                                      ldr r3, [sp]
006232f0  e9 ff ff ea                                      b #0x62329c

; FUNCTION 0x00623338, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623338  04 c0 9d e5                                      ldr ip, [sp, #4]
0062333c  01 00 a0 e1                                      mov r0, r1
00623340  02 10 a0 e1                                      mov r1, r2
00623344  03 20 a0 e1                                      mov r2, r3
00623348  00 30 9d e5                                      ldr r3, [sp]
0062334c  00 c0 8d e5                                      str ip, [sp]
00623350  08 c0 9d e5                                      ldr ip, [sp, #8]
00623354  04 c0 8d e5                                      str ip, [sp, #4]
00623358  e5 ff ff ea                                      b #0x6232f4

; FUNCTION 0x0062a4a8, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a4a8  01 00 53 e3                                      cmp r3, #1
0062a4ac  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a4b0  03 40 a0 e1                                      mov r4, r3
0062a4b4  02 b0 a0 e1                                      mov fp, r2
0062a4b8  29 00 00 0a                                      beq #0x62a564
0062a4bc  00 00 53 e3                                      cmp r3, #0
0062a4c0  00 80 a0 03                                      moveq r8, #0
0062a4c4  08 90 a0 01                                      moveq sb, r8
0062a4c8  08 a0 a0 01                                      moveq sl, r8
0062a4cc  1e 00 00 0a                                      beq #0x62a54c
0062a4d0  00 80 a0 e3                                      mov r8, #0
0062a4d4  01 50 a0 e1                                      mov r5, r1
0062a4d8  00 70 a0 e3                                      mov r7, #0
0062a4dc  08 90 a0 e1                                      mov sb, r8
0062a4e0  08 a0 a0 e1                                      mov sl, r8
0062a4e4  07 60 9b e7                                      ldr r6, [fp, r7]
0062a4e8  00 10 95 e5                                      ldr r1, [r5]
0062a4ec  04 70 87 e2                                      add r7, r7, #4
0062a4f0  06 00 a0 e1                                      mov r0, r6
0062a4f4  1c 92 f3 eb                                      bl #0x30ed6c
0062a4f8  00 10 a0 e1                                      mov r1, r0
0062a4fc  08 00 a0 e1                                      mov r0, r8
0062a500  a7 91 f3 eb                                      bl #0x30eba4
0062a504  04 10 95 e5                                      ldr r1, [r5, #4]
0062a508  00 80 a0 e1                                      mov r8, r0
0062a50c  06 00 a0 e1                                      mov r0, r6
0062a510  15 92 f3 eb                                      bl #0x30ed6c
0062a514  00 10 a0 e1                                      mov r1, r0
0062a518  09 00 a0 e1                                      mov r0, sb
0062a51c  a0 91 f3 eb                                      bl #0x30eba4
0062a520  08 10 95 e5                                      ldr r1, [r5, #8]
0062a524  00 90 a0 e1                                      mov sb, r0
0062a528  06 00 a0 e1                                      mov r0, r6
0062a52c  0e 92 f3 eb                                      bl #0x30ed6c
0062a530  00 10 a0 e1                                      mov r1, r0
0062a534  0a 00 a0 e1                                      mov r0, sl
0062a538  99 91 f3 eb                                      bl #0x30eba4
0062a53c  01 40 54 e2                                      subs r4, r4, #1
0062a540  00 a0 a0 e1                                      mov sl, r0
0062a544  0c 50 85 e2                                      add r5, r5, #0xc
0062a548  e5 ff ff 1a                                      bne #0x62a4e4
0062a54c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a550  04 80 83 e4                                      str r8, [r3], #4
0062a554  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a558  04 90 82 e5                                      str sb, [r2, #4]
0062a55c  04 a0 83 e5                                      str sl, [r3, #4]
0062a560  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a564  01 20 a0 e1                                      mov r2, r1
0062a568  04 00 92 e4                                      ldr r0, [r2], #4
0062a56c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a570  04 00 83 e4                                      str r0, [r3], #4
0062a574  04 10 91 e5                                      ldr r1, [r1, #4]
0062a578  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a57c  04 10 80 e5                                      str r1, [r0, #4]
0062a580  04 20 92 e5                                      ldr r2, [r2, #4]
0062a584  04 20 83 e5                                      str r2, [r3, #4]
0062a588  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062bbd0, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062bbd0  01 00 53 e3                                      cmp r3, #1
0062bbd4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062bbd8  03 40 a0 e1                                      mov r4, r3
0062bbdc  02 b0 a0 e1                                      mov fp, r2
0062bbe0  29 00 00 0a                                      beq #0x62bc8c
0062bbe4  00 00 53 e3                                      cmp r3, #0
0062bbe8  00 80 a0 03                                      moveq r8, #0
0062bbec  08 90 a0 01                                      moveq sb, r8
0062bbf0  08 a0 a0 01                                      moveq sl, r8
0062bbf4  1e 00 00 0a                                      beq #0x62bc74
0062bbf8  00 80 a0 e3                                      mov r8, #0
0062bbfc  01 50 a0 e1                                      mov r5, r1
0062bc00  00 70 a0 e3                                      mov r7, #0
0062bc04  08 90 a0 e1                                      mov sb, r8
0062bc08  08 a0 a0 e1                                      mov sl, r8
0062bc0c  07 60 9b e7                                      ldr r6, [fp, r7]
0062bc10  00 10 95 e5                                      ldr r1, [r5]
0062bc14  04 70 87 e2                                      add r7, r7, #4
0062bc18  06 00 a0 e1                                      mov r0, r6
0062bc1c  52 8c f3 eb                                      bl #0x30ed6c
0062bc20  00 10 a0 e1                                      mov r1, r0
0062bc24  08 00 a0 e1                                      mov r0, r8
0062bc28  dd 8b f3 eb                                      bl #0x30eba4
0062bc2c  04 10 95 e5                                      ldr r1, [r5, #4]
0062bc30  00 80 a0 e1                                      mov r8, r0
0062bc34  06 00 a0 e1                                      mov r0, r6
0062bc38  4b 8c f3 eb                                      bl #0x30ed6c
0062bc3c  00 10 a0 e1                                      mov r1, r0
0062bc40  09 00 a0 e1                                      mov r0, sb
0062bc44  d6 8b f3 eb                                      bl #0x30eba4
0062bc48  08 10 95 e5                                      ldr r1, [r5, #8]
0062bc4c  00 90 a0 e1                                      mov sb, r0
0062bc50  06 00 a0 e1                                      mov r0, r6
0062bc54  44 8c f3 eb                                      bl #0x30ed6c
0062bc58  00 10 a0 e1                                      mov r1, r0
0062bc5c  0a 00 a0 e1                                      mov r0, sl
0062bc60  cf 8b f3 eb                                      bl #0x30eba4
0062bc64  01 40 54 e2                                      subs r4, r4, #1
0062bc68  00 a0 a0 e1                                      mov sl, r0
0062bc6c  0c 50 85 e2                                      add r5, r5, #0xc
0062bc70  e5 ff ff 1a                                      bne #0x62bc0c
0062bc74  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bc78  04 80 83 e4                                      str r8, [r3], #4
0062bc7c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062bc80  04 90 82 e5                                      str sb, [r2, #4]
0062bc84  04 a0 83 e5                                      str sl, [r3, #4]
0062bc88  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062bc8c  01 20 a0 e1                                      mov r2, r1
0062bc90  04 00 92 e4                                      ldr r0, [r2], #4
0062bc94  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bc98  04 00 83 e4                                      str r0, [r3], #4
0062bc9c  04 10 91 e5                                      ldr r1, [r1, #4]
0062bca0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062bca4  04 10 80 e5                                      str r1, [r0, #4]
0062bca8  04 20 92 e5                                      ldr r2, [r2, #4]
0062bcac  04 20 83 e5                                      str r2, [r3, #4]
0062bcb0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062bf74, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062bf74  01 00 a0 e1                                      mov r0, r1
0062bf78  04 c0 9d e5                                      ldr ip, [sp, #4]
0062bf7c  02 10 a0 e1                                      mov r1, r2
0062bf80  03 20 a0 e1                                      mov r2, r3
0062bf84  00 30 9d e5                                      ldr r3, [sp]
0062bf88  00 c0 8d e5                                      str ip, [sp]
0062bf8c  ba ff ff ea                                      b #0x62be7c

; FUNCTION 0x0062c088, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIcEELi2EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, 2, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c088  01 00 a0 e1                                      mov r0, r1
0062c08c  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c090  02 10 a0 e1                                      mov r1, r2
0062c094  03 20 a0 e1                                      mov r2, r3
0062c098  00 30 9d e5                                      ldr r3, [sp]
0062c09c  00 c0 8d e5                                      str ip, [sp]
0062c0a0  ba ff ff ea                                      b #0x62bf90
