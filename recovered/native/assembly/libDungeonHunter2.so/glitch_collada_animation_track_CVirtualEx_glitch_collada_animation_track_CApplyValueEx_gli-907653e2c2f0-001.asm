; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed20, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060ed20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f058, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getValueSize() const
; decoder-mode: arm
0060f058  10 00 a0 e3                                      mov r0, #0x10
0060f05c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f060, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getIdentityValue(void*) const
; decoder-mode: arm
0060f060  00 30 a0 e3                                      mov r3, #0
0060f064  fe 25 a0 e3                                      mov r2, #0x3f800000
0060f068  08 30 81 e5                                      str r3, [r1, #8]
0060f06c  0c 20 81 e5                                      str r2, [r1, #0xc]
0060f070  00 30 81 e5                                      str r3, [r1]
0060f074  04 30 81 e5                                      str r3, [r1, #4]
0060f078  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f548, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::~CVirtualEx()
; decoder-mode: arm
0060f548  10 40 2d e9                                      push {r4, lr}
0060f54c  00 40 a0 e1                                      mov r4, r0
0060f550  56 fb f3 eb                                      bl #0x30e2b0
0060f554  04 00 a0 e1                                      mov r0, r4
0060f558  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610170, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getInstance()
; decoder-mode: arm
00610170  70 40 2d e9                                      push {r4, r5, r6, lr}
00610174  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610178  70 30 9f e5                                      ldr r3, [pc, #0x70]
0061017c  04 40 8f e0                                      add r4, pc, r4
00610180  03 60 94 e7                                      ldr r6, [r4, r3]
00610184  00 30 96 e5                                      ldr r3, [r6]
00610188  01 00 13 e3                                      tst r3, #1
0061018c  02 00 00 0a                                      beq #0x61019c
00610190  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610194  05 00 94 e7                                      ldr r0, [r4, r5]
00610198  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061019c  06 00 a0 e1                                      mov r0, r6
006101a0  71 f9 f3 eb                                      bl #0x30e76c
006101a4  00 00 50 e3                                      cmp r0, #0
006101a8  f8 ff ff 0a                                      beq #0x610190
006101ac  44 30 9f e5                                      ldr r3, [pc, #0x44]
006101b0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006101b4  06 00 a0 e1                                      mov r0, r6
006101b8  03 30 94 e7                                      ldr r3, [r4, r3]
006101bc  05 60 94 e7                                      ldr r6, [r4, r5]
006101c0  08 30 83 e2                                      add r3, r3, #8
006101c4  00 30 86 e5                                      str r3, [r6]
006101c8  1b fa f3 eb                                      bl #0x30ea3c
006101cc  28 30 9f e5                                      ldr r3, [pc, #0x28]
006101d0  06 00 a0 e1                                      mov r0, r6
006101d4  03 10 94 e7                                      ldr r1, [r4, r3]
006101d8  20 30 9f e5                                      ldr r3, [pc, #0x20]
006101dc  03 20 94 e7                                      ldr r2, [r4, r3]
006101e0  47 f8 f3 eb                                      bl #0x30e304
006101e4  05 00 94 e7                                      ldr r0, [r4, r5]
006101e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006101ec  14 49 38 00 f8 08 00 00 bc 3a 00 00 e8 14 00 00  .byte 0x14, 0x49, 0x38, 0x00, 0xf8, 0x08, 0x00, 0x00, 0xbc, 0x3a, 0x00, 0x00, 0xe8, 0x14, 0x00, 0x00
006101fc  74 15 00 00 90 18 00 00                          .byte 0x74, 0x15, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00613350, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE15getBlendedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00613350  01 00 a0 e1                                      mov r0, r1
00613354  02 10 a0 e1                                      mov r1, r2
00613358  03 20 a0 e1                                      mov r2, r3
0061335c  00 30 9d e5                                      ldr r3, [sp]
00613360  5b ff ff ea                                      b #0x6130d4

; FUNCTION 0x006135d8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE13getAddedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006135d8  01 00 a0 e1                                      mov r0, r1
006135dc  02 10 a0 e1                                      mov r1, r2
006135e0  03 20 a0 e1                                      mov r2, r3
006135e4  00 30 9d e5                                      ldr r3, [sp]
006135e8  62 ff ff ea                                      b #0x613378

; FUNCTION 0x006180a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006180a4  01 00 a0 e1                                      mov r0, r1
006180a8  02 10 a0 e1                                      mov r1, r2
006180ac  03 20 a0 e1                                      mov r2, r3
006180b0  eb ff ff ea                                      b #0x618064

; FUNCTION 0x006180f0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006180f0  01 00 a0 e1                                      mov r0, r1
006180f4  04 c0 9d e5                                      ldr ip, [sp, #4]
006180f8  02 10 a0 e1                                      mov r1, r2
006180fc  03 20 a0 e1                                      mov r2, r3
00618100  00 30 9d e5                                      ldr r3, [sp]
00618104  00 c0 8d e5                                      str ip, [sp]
00618108  e9 ff ff ea                                      b #0x6180b4

; FUNCTION 0x00618208, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00618208  01 00 a0 e1                                      mov r0, r1
0061820c  02 10 a0 e1                                      mov r1, r2
00618210  03 20 a0 e1                                      mov r2, r3
00618214  00 30 9d e5                                      ldr r3, [sp]
00618218  bb ff ff ea                                      b #0x61810c

; FUNCTION 0x0061839c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061839c  04 c0 9d e5                                      ldr ip, [sp, #4]
006183a0  01 00 a0 e1                                      mov r0, r1
006183a4  02 10 a0 e1                                      mov r1, r2
006183a8  03 20 a0 e1                                      mov r2, r3
006183ac  00 30 9d e5                                      ldr r3, [sp]
006183b0  00 c0 8d e5                                      str ip, [sp]
006183b4  08 c0 9d e5                                      ldr ip, [sp, #8]
006183b8  04 c0 8d e5                                      str ip, [sp, #4]
006183bc  96 ff ff ea                                      b #0x61821c

; FUNCTION 0x0061cbb8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE13retrieveValueEPvSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0061cbb8  10 40 2d e9                                      push {r4, lr}
0061cbbc  00 30 91 e5                                      ldr r3, [r1]
0061cbc0  01 00 a0 e1                                      mov r0, r1
0061cbc4  02 40 a0 e1                                      mov r4, r2
0061cbc8  0f e0 a0 e1                                      mov lr, pc
0061cbcc  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0061cbd0  00 30 90 e5                                      ldr r3, [r0]
0061cbd4  00 30 84 e5                                      str r3, [r4]
0061cbd8  04 30 90 e5                                      ldr r3, [r0, #4]
0061cbdc  04 30 84 e5                                      str r3, [r4, #4]
0061cbe0  08 30 90 e5                                      ldr r3, [r0, #8]
0061cbe4  08 30 84 e5                                      str r3, [r4, #8]
0061cbe8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061cbec  0c 30 84 e5                                      str r3, [r4, #0xc]
0061cbf0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006207ec, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE10applyValueEPvSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006207ec  10 40 2d e9                                      push {r4, lr}
006207f0  02 00 a0 e1                                      mov r0, r2
006207f4  00 30 92 e5                                      ldr r3, [r2]
006207f8  0f e0 a0 e1                                      mov lr, pc
006207fc  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620800  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00620b54, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620b54  01 00 a0 e1                                      mov r0, r1
00620b58  04 c0 9d e5                                      ldr ip, [sp, #4]
00620b5c  02 10 a0 e1                                      mov r1, r2
00620b60  03 20 a0 e1                                      mov r2, r3
00620b64  00 30 9d e5                                      ldr r3, [sp]
00620b68  00 c0 8d e5                                      str ip, [sp]
00620b6c  e5 ff ff ea                                      b #0x620b08

; FUNCTION 0x00620dc4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620dc4  01 00 a0 e1                                      mov r0, r1
00620dc8  04 c0 9d e5                                      ldr ip, [sp, #4]
00620dcc  02 10 a0 e1                                      mov r1, r2
00620dd0  03 20 a0 e1                                      mov r2, r3
00620dd4  00 30 9d e5                                      ldr r3, [sp]
00620dd8  00 c0 8d e5                                      str ip, [sp]
00620ddc  e5 ff ff ea                                      b #0x620d78

; FUNCTION 0x00621104, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621104  01 00 a0 e1                                      mov r0, r1
00621108  02 10 a0 e1                                      mov r1, r2
0062110c  03 20 a0 e1                                      mov r2, r3
00621110  00 30 9d e5                                      ldr r3, [sp]
00621114  e7 ff ff ea                                      b #0x6210b8

; FUNCTION 0x00621164, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621164  04 c0 9d e5                                      ldr ip, [sp, #4]
00621168  01 00 a0 e1                                      mov r0, r1
0062116c  02 10 a0 e1                                      mov r1, r2
00621170  03 20 a0 e1                                      mov r2, r3
00621174  00 30 9d e5                                      ldr r3, [sp]
00621178  00 c0 8d e5                                      str ip, [sp]
0062117c  08 c0 9d e5                                      ldr ip, [sp, #8]
00621180  04 c0 8d e5                                      str ip, [sp, #4]
00621184  e3 ff ff ea                                      b #0x621118
