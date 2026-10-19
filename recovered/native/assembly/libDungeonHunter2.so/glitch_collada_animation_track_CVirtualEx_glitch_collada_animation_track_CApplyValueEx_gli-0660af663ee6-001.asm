; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed18, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f0a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getValueSize() const
; decoder-mode: arm
0060f0a0  10 00 a0 e3                                      mov r0, #0x10
0060f0a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f0a8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getIdentityValue(void*) const
; decoder-mode: arm
0060f0a8  00 30 a0 e3                                      mov r3, #0
0060f0ac  fe 25 a0 e3                                      mov r2, #0x3f800000
0060f0b0  08 30 81 e5                                      str r3, [r1, #8]
0060f0b4  0c 20 81 e5                                      str r2, [r1, #0xc]
0060f0b8  00 30 81 e5                                      str r3, [r1]
0060f0bc  04 30 81 e5                                      str r3, [r1, #4]
0060f0c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f520, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060f520  10 40 2d e9                                      push {r4, lr}
0060f524  00 40 a0 e1                                      mov r4, r0
0060f528  60 fb f3 eb                                      bl #0x30e2b0
0060f52c  04 00 a0 e1                                      mov r0, r4
0060f530  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610048, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getInstance()
; decoder-mode: arm
00610048  70 40 2d e9                                      push {r4, r5, r6, lr}
0061004c  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610050  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610054  04 40 8f e0                                      add r4, pc, r4
00610058  03 60 94 e7                                      ldr r6, [r4, r3]
0061005c  00 30 96 e5                                      ldr r3, [r6]
00610060  01 00 13 e3                                      tst r3, #1
00610064  02 00 00 0a                                      beq #0x610074
00610068  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0061006c  05 00 94 e7                                      ldr r0, [r4, r5]
00610070  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610074  06 00 a0 e1                                      mov r0, r6
00610078  bb f9 f3 eb                                      bl #0x30e76c
0061007c  00 00 50 e3                                      cmp r0, #0
00610080  f8 ff ff 0a                                      beq #0x610068
00610084  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610088  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0061008c  06 00 a0 e1                                      mov r0, r6
00610090  03 30 94 e7                                      ldr r3, [r4, r3]
00610094  05 60 94 e7                                      ldr r6, [r4, r5]
00610098  08 30 83 e2                                      add r3, r3, #8
0061009c  00 30 86 e5                                      str r3, [r6]
006100a0  65 fa f3 eb                                      bl #0x30ea3c
006100a4  28 30 9f e5                                      ldr r3, [pc, #0x28]
006100a8  06 00 a0 e1                                      mov r0, r6
006100ac  03 10 94 e7                                      ldr r1, [r4, r3]
006100b0  20 30 9f e5                                      ldr r3, [pc, #0x20]
006100b4  03 20 94 e7                                      ldr r2, [r4, r3]
006100b8  91 f8 f3 eb                                      bl #0x30e304
006100bc  05 00 94 e7                                      ldr r0, [r4, r5]
006100c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006100c4  3c 4a 38 00 4c 29 00 00 48 29 00 00 14 41 00 00  .byte 0x3c, 0x4a, 0x38, 0x00, 0x4c, 0x29, 0x00, 0x00, 0x48, 0x29, 0x00, 0x00, 0x14, 0x41, 0x00, 0x00
006100d4  9c 22 00 00 90 18 00 00                          .byte 0x9c, 0x22, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00613328, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE15getBlendedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00613328  01 00 a0 e1                                      mov r0, r1
0061332c  02 10 a0 e1                                      mov r1, r2
00613330  03 20 a0 e1                                      mov r2, r3
00613334  00 30 9d e5                                      ldr r3, [sp]
00613338  65 ff ff ea                                      b #0x6130d4

; FUNCTION 0x006135b0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE13getAddedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006135b0  01 00 a0 e1                                      mov r0, r1
006135b4  02 10 a0 e1                                      mov r1, r2
006135b8  03 20 a0 e1                                      mov r2, r3
006135bc  00 30 9d e5                                      ldr r3, [sp]
006135c0  6c ff ff ea                                      b #0x613378

; FUNCTION 0x00613aa4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00613aa4  01 00 a0 e1                                      mov r0, r1
00613aa8  02 10 a0 e1                                      mov r1, r2
00613aac  03 20 a0 e1                                      mov r2, r3
00613ab0  d6 ff ff ea                                      b #0x613a10

; FUNCTION 0x00613b70, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
00613b70  01 00 a0 e1                                      mov r0, r1
00613b74  02 10 a0 e1                                      mov r1, r2
00613b78  03 20 a0 e1                                      mov r2, r3
00613b7c  00 30 9d e5                                      ldr r3, [sp]
00613b80  cb ff ff ea                                      b #0x613ab4

; FUNCTION 0x00613ca4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00613ca4  04 c0 9d e5                                      ldr ip, [sp, #4]
00613ca8  01 00 a0 e1                                      mov r0, r1
00613cac  02 10 a0 e1                                      mov r1, r2
00613cb0  03 20 a0 e1                                      mov r2, r3
00613cb4  00 30 9d e5                                      ldr r3, [sp]
00613cb8  00 c0 8d e5                                      str ip, [sp]
00613cbc  08 c0 9d e5                                      ldr ip, [sp, #8]
00613cc0  04 c0 8d e5                                      str ip, [sp, #4]
00613cc4  ae ff ff ea                                      b #0x613b84

; FUNCTION 0x00613d8c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00613d8c  01 00 a0 e1                                      mov r0, r1
00613d90  04 c0 9d e5                                      ldr ip, [sp, #4]
00613d94  02 10 a0 e1                                      mov r1, r2
00613d98  03 20 a0 e1                                      mov r2, r3
00613d9c  00 30 9d e5                                      ldr r3, [sp]
00613da0  00 c0 8d e5                                      str ip, [sp]
00613da4  c7 ff ff ea                                      b #0x613cc8

; FUNCTION 0x0061cc30, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE13retrieveValueEPvSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0061cc30  10 40 2d e9                                      push {r4, lr}
0061cc34  00 30 91 e5                                      ldr r3, [r1]
0061cc38  01 00 a0 e1                                      mov r0, r1
0061cc3c  02 40 a0 e1                                      mov r4, r2
0061cc40  0f e0 a0 e1                                      mov lr, pc
0061cc44  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0061cc48  00 30 90 e5                                      ldr r3, [r0]
0061cc4c  00 30 84 e5                                      str r3, [r4]
0061cc50  04 30 90 e5                                      ldr r3, [r0, #4]
0061cc54  04 30 84 e5                                      str r3, [r4, #4]
0061cc58  08 30 90 e5                                      ldr r3, [r0, #8]
0061cc5c  08 30 84 e5                                      str r3, [r4, #8]
0061cc60  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061cc64  0c 30 84 e5                                      str r3, [r4, #0xc]
0061cc68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062081c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE10applyValueEPvSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062081c  10 40 2d e9                                      push {r4, lr}
00620820  02 00 a0 e1                                      mov r0, r2
00620824  00 30 92 e5                                      ldr r3, [r2]
00620828  0f e0 a0 e1                                      mov lr, pc
0062082c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620830  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00620a84, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620a84  01 00 a0 e1                                      mov r0, r1
00620a88  04 c0 9d e5                                      ldr ip, [sp, #4]
00620a8c  02 10 a0 e1                                      mov r1, r2
00620a90  03 20 a0 e1                                      mov r2, r3
00620a94  00 30 9d e5                                      ldr r3, [sp]
00620a98  00 c0 8d e5                                      str ip, [sp]
00620a9c  e5 ff ff ea                                      b #0x620a38

; FUNCTION 0x00620cf4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620cf4  01 00 a0 e1                                      mov r0, r1
00620cf8  04 c0 9d e5                                      ldr ip, [sp, #4]
00620cfc  02 10 a0 e1                                      mov r1, r2
00620d00  03 20 a0 e1                                      mov r2, r3
00620d04  00 30 9d e5                                      ldr r3, [sp]
00620d08  00 c0 8d e5                                      str ip, [sp]
00620d0c  e5 ff ff ea                                      b #0x620ca8

; FUNCTION 0x00620f64, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620f64  01 00 a0 e1                                      mov r0, r1
00620f68  02 10 a0 e1                                      mov r1, r2
00620f6c  03 20 a0 e1                                      mov r2, r3
00620f70  00 30 9d e5                                      ldr r3, [sp]
00620f74  e7 ff ff ea                                      b #0x620f18

; FUNCTION 0x00620fc4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620fc4  04 c0 9d e5                                      ldr ip, [sp, #4]
00620fc8  01 00 a0 e1                                      mov r0, r1
00620fcc  02 10 a0 e1                                      mov r1, r2
00620fd0  03 20 a0 e1                                      mov r2, r3
00620fd4  00 30 9d e5                                      ldr r3, [sp]
00620fd8  00 c0 8d e5                                      str ip, [sp]
00620fdc  08 c0 9d e5                                      ldr ip, [sp, #8]
00620fe0  04 c0 8d e5                                      str ip, [sp, #4]
00620fe4  e3 ff ff ea                                      b #0x620f78
