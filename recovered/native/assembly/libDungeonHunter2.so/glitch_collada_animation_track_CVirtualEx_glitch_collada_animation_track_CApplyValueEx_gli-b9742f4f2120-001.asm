; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed14, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed14  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f0c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getValueSize() const
; decoder-mode: arm
0060f0c4  10 00 a0 e3                                      mov r0, #0x10
0060f0c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f0cc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getIdentityValue(void*) const
; decoder-mode: arm
0060f0cc  00 30 a0 e3                                      mov r3, #0
0060f0d0  fe 25 a0 e3                                      mov r2, #0x3f800000
0060f0d4  08 30 81 e5                                      str r3, [r1, #8]
0060f0d8  0c 20 81 e5                                      str r2, [r1, #0xc]
0060f0dc  00 30 81 e5                                      str r3, [r1]
0060f0e0  04 30 81 e5                                      str r3, [r1, #4]
0060f0e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f50c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060f50c  10 40 2d e9                                      push {r4, lr}
0060f510  00 40 a0 e1                                      mov r4, r0
0060f514  65 fb f3 eb                                      bl #0x30e2b0
0060f518  04 00 a0 e1                                      mov r0, r4
0060f51c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060ffb4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getInstance()
; decoder-mode: arm
0060ffb4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060ffb8  70 40 9f e5                                      ldr r4, [pc, #0x70]
0060ffbc  70 30 9f e5                                      ldr r3, [pc, #0x70]
0060ffc0  04 40 8f e0                                      add r4, pc, r4
0060ffc4  03 60 94 e7                                      ldr r6, [r4, r3]
0060ffc8  00 30 96 e5                                      ldr r3, [r6]
0060ffcc  01 00 13 e3                                      tst r3, #1
0060ffd0  02 00 00 0a                                      beq #0x60ffe0
0060ffd4  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0060ffd8  05 00 94 e7                                      ldr r0, [r4, r5]
0060ffdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060ffe0  06 00 a0 e1                                      mov r0, r6
0060ffe4  e0 f9 f3 eb                                      bl #0x30e76c
0060ffe8  00 00 50 e3                                      cmp r0, #0
0060ffec  f8 ff ff 0a                                      beq #0x60ffd4
0060fff0  44 30 9f e5                                      ldr r3, [pc, #0x44]
0060fff4  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0060fff8  06 00 a0 e1                                      mov r0, r6
0060fffc  03 30 94 e7                                      ldr r3, [r4, r3]
00610000  05 60 94 e7                                      ldr r6, [r4, r5]
00610004  08 30 83 e2                                      add r3, r3, #8
00610008  00 30 86 e5                                      str r3, [r6]
0061000c  8a fa f3 eb                                      bl #0x30ea3c
00610010  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610014  06 00 a0 e1                                      mov r0, r6
00610018  03 10 94 e7                                      ldr r1, [r4, r3]
0061001c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610020  03 20 94 e7                                      ldr r2, [r4, r3]
00610024  b6 f8 f3 eb                                      bl #0x30e304
00610028  05 00 94 e7                                      ldr r0, [r4, r5]
0061002c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610030  d0 4a 38 00 70 28 00 00 cc 14 00 00 b0 2b 00 00  .byte 0xd0, 0x4a, 0x38, 0x00, 0x70, 0x28, 0x00, 0x00, 0xcc, 0x14, 0x00, 0x00, 0xb0, 0x2b, 0x00, 0x00
00610040  5c 31 00 00 90 18 00 00                          .byte 0x5c, 0x31, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00613314, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE15getBlendedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00613314  01 00 a0 e1                                      mov r0, r1
00613318  02 10 a0 e1                                      mov r1, r2
0061331c  03 20 a0 e1                                      mov r2, r3
00613320  00 30 9d e5                                      ldr r3, [sp]
00613324  6a ff ff ea                                      b #0x6130d4

; FUNCTION 0x0061359c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE13getAddedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0061359c  01 00 a0 e1                                      mov r0, r1
006135a0  02 10 a0 e1                                      mov r1, r2
006135a4  03 20 a0 e1                                      mov r2, r3
006135a8  00 30 9d e5                                      ldr r3, [sp]
006135ac  71 ff ff ea                                      b #0x613378

; FUNCTION 0x006136d0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006136d0  01 00 a0 e1                                      mov r0, r1
006136d4  02 10 a0 e1                                      mov r1, r2
006136d8  03 20 a0 e1                                      mov r2, r3
006136dc  d6 ff ff ea                                      b #0x61363c

; FUNCTION 0x0061379c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061379c  01 00 a0 e1                                      mov r0, r1
006137a0  02 10 a0 e1                                      mov r1, r2
006137a4  03 20 a0 e1                                      mov r2, r3
006137a8  00 30 9d e5                                      ldr r3, [sp]
006137ac  cb ff ff ea                                      b #0x6136e0

; FUNCTION 0x006138d0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
006138d0  04 c0 9d e5                                      ldr ip, [sp, #4]
006138d4  01 00 a0 e1                                      mov r0, r1
006138d8  02 10 a0 e1                                      mov r1, r2
006138dc  03 20 a0 e1                                      mov r2, r3
006138e0  00 30 9d e5                                      ldr r3, [sp]
006138e4  00 c0 8d e5                                      str ip, [sp]
006138e8  08 c0 9d e5                                      ldr ip, [sp, #8]
006138ec  04 c0 8d e5                                      str ip, [sp, #4]
006138f0  ae ff ff ea                                      b #0x6137b0

; FUNCTION 0x006139b8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006139b8  01 00 a0 e1                                      mov r0, r1
006139bc  04 c0 9d e5                                      ldr ip, [sp, #4]
006139c0  02 10 a0 e1                                      mov r1, r2
006139c4  03 20 a0 e1                                      mov r2, r3
006139c8  00 30 9d e5                                      ldr r3, [sp]
006139cc  00 c0 8d e5                                      str ip, [sp]
006139d0  c7 ff ff ea                                      b #0x6138f4

; FUNCTION 0x0061cc6c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE13retrieveValueEPvSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0061cc6c  10 40 2d e9                                      push {r4, lr}
0061cc70  00 30 91 e5                                      ldr r3, [r1]
0061cc74  01 00 a0 e1                                      mov r0, r1
0061cc78  02 40 a0 e1                                      mov r4, r2
0061cc7c  0f e0 a0 e1                                      mov lr, pc
0061cc80  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0061cc84  00 30 90 e5                                      ldr r3, [r0]
0061cc88  00 30 84 e5                                      str r3, [r4]
0061cc8c  04 30 90 e5                                      ldr r3, [r0, #4]
0061cc90  04 30 84 e5                                      str r3, [r4, #4]
0061cc94  08 30 90 e5                                      ldr r3, [r0, #8]
0061cc98  08 30 84 e5                                      str r3, [r4, #8]
0061cc9c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061cca0  0c 30 84 e5                                      str r3, [r4, #0xc]
0061cca4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00620834, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE10applyValueEPvSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620834  10 40 2d e9                                      push {r4, lr}
00620838  02 00 a0 e1                                      mov r0, r2
0062083c  00 30 92 e5                                      ldr r3, [r2]
00620840  0f e0 a0 e1                                      mov lr, pc
00620844  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620848  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00620a1c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620a1c  01 00 a0 e1                                      mov r0, r1
00620a20  04 c0 9d e5                                      ldr ip, [sp, #4]
00620a24  02 10 a0 e1                                      mov r1, r2
00620a28  03 20 a0 e1                                      mov r2, r3
00620a2c  00 30 9d e5                                      ldr r3, [sp]
00620a30  00 c0 8d e5                                      str ip, [sp]
00620a34  e5 ff ff ea                                      b #0x6209d0

; FUNCTION 0x00620c8c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620c8c  01 00 a0 e1                                      mov r0, r1
00620c90  04 c0 9d e5                                      ldr ip, [sp, #4]
00620c94  02 10 a0 e1                                      mov r1, r2
00620c98  03 20 a0 e1                                      mov r2, r3
00620c9c  00 30 9d e5                                      ldr r3, [sp]
00620ca0  00 c0 8d e5                                      str ip, [sp]
00620ca4  e5 ff ff ea                                      b #0x620c40

; FUNCTION 0x00620e94, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620e94  01 00 a0 e1                                      mov r0, r1
00620e98  02 10 a0 e1                                      mov r1, r2
00620e9c  03 20 a0 e1                                      mov r2, r3
00620ea0  00 30 9d e5                                      ldr r3, [sp]
00620ea4  e7 ff ff ea                                      b #0x620e48

; FUNCTION 0x00620ef4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620ef4  04 c0 9d e5                                      ldr ip, [sp, #4]
00620ef8  01 00 a0 e1                                      mov r0, r1
00620efc  02 10 a0 e1                                      mov r1, r2
00620f00  03 20 a0 e1                                      mov r2, r3
00620f04  00 30 9d e5                                      ldr r3, [sp]
00620f08  00 c0 8d e5                                      str ip, [sp]
00620f0c  08 c0 9d e5                                      ldr ip, [sp, #8]
00620f10  04 c0 8d e5                                      str ip, [sp, #4]
00620f14  e3 ff ff ea                                      b #0x620ea8
