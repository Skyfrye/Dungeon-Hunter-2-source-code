; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed10, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed10  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f0e8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getValueSize() const
; decoder-mode: arm
0060f0e8  10 00 a0 e3                                      mov r0, #0x10
0060f0ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f0f0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getIdentityValue(void*) const
; decoder-mode: arm
0060f0f0  00 30 a0 e3                                      mov r3, #0
0060f0f4  fe 25 a0 e3                                      mov r2, #0x3f800000
0060f0f8  08 30 81 e5                                      str r3, [r1, #8]
0060f0fc  0c 20 81 e5                                      str r2, [r1, #0xc]
0060f100  00 30 81 e5                                      str r3, [r1]
0060f104  04 30 81 e5                                      str r3, [r1, #4]
0060f108  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f10c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE13retrieveValueEPvSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060f10c  10 40 2d e9                                      push {r4, lr}
0060f110  00 30 91 e5                                      ldr r3, [r1]
0060f114  01 00 a0 e1                                      mov r0, r1
0060f118  02 40 a0 e1                                      mov r4, r2
0060f11c  0f e0 a0 e1                                      mov lr, pc
0060f120  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0060f124  00 30 90 e5                                      ldr r3, [r0]
0060f128  00 30 84 e5                                      str r3, [r4]
0060f12c  04 30 90 e5                                      ldr r3, [r0, #4]
0060f130  04 30 84 e5                                      str r3, [r4, #4]
0060f134  08 30 90 e5                                      ldr r3, [r0, #8]
0060f138  08 30 84 e5                                      str r3, [r4, #8]
0060f13c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0060f140  0c 30 84 e5                                      str r3, [r4, #0xc]
0060f144  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060f4f8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060f4f8  10 40 2d e9                                      push {r4, lr}
0060f4fc  00 40 a0 e1                                      mov r4, r0
0060f500  6a fb f3 eb                                      bl #0x30e2b0
0060f504  04 00 a0 e1                                      mov r0, r4
0060f508  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060ff20, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getInstance()
; decoder-mode: arm
0060ff20  70 40 2d e9                                      push {r4, r5, r6, lr}
0060ff24  70 40 9f e5                                      ldr r4, [pc, #0x70]
0060ff28  70 30 9f e5                                      ldr r3, [pc, #0x70]
0060ff2c  04 40 8f e0                                      add r4, pc, r4
0060ff30  03 60 94 e7                                      ldr r6, [r4, r3]
0060ff34  00 30 96 e5                                      ldr r3, [r6]
0060ff38  01 00 13 e3                                      tst r3, #1
0060ff3c  02 00 00 0a                                      beq #0x60ff4c
0060ff40  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
0060ff44  05 00 94 e7                                      ldr r0, [r4, r5]
0060ff48  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060ff4c  06 00 a0 e1                                      mov r0, r6
0060ff50  05 fa f3 eb                                      bl #0x30e76c
0060ff54  00 00 50 e3                                      cmp r0, #0
0060ff58  f8 ff ff 0a                                      beq #0x60ff40
0060ff5c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0060ff60  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0060ff64  06 00 a0 e1                                      mov r0, r6
0060ff68  03 30 94 e7                                      ldr r3, [r4, r3]
0060ff6c  05 60 94 e7                                      ldr r6, [r4, r5]
0060ff70  08 30 83 e2                                      add r3, r3, #8
0060ff74  00 30 86 e5                                      str r3, [r6]
0060ff78  af fa f3 eb                                      bl #0x30ea3c
0060ff7c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0060ff80  06 00 a0 e1                                      mov r0, r6
0060ff84  03 10 94 e7                                      ldr r1, [r4, r3]
0060ff88  20 30 9f e5                                      ldr r3, [pc, #0x20]
0060ff8c  03 20 94 e7                                      ldr r2, [r4, r3]
0060ff90  db f8 f3 eb                                      bl #0x30e304
0060ff94  05 00 94 e7                                      ldr r0, [r4, r5]
0060ff98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060ff9c  64 4b 38 00 8c 45 00 00 18 32 00 00 48 12 00 00  .byte 0x64, 0x4b, 0x38, 0x00, 0x8c, 0x45, 0x00, 0x00, 0x18, 0x32, 0x00, 0x00, 0x48, 0x12, 0x00, 0x00
0060ffac  30 46 00 00 90 18 00 00                          .byte 0x30, 0x46, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006132e4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006132e4  01 00 a0 e1                                      mov r0, r1
006132e8  04 c0 9d e5                                      ldr ip, [sp, #4]
006132ec  02 10 a0 e1                                      mov r1, r2
006132f0  03 20 a0 e1                                      mov r2, r3
006132f4  00 30 9d e5                                      ldr r3, [sp]
006132f8  00 c0 8d e5                                      str ip, [sp]
006132fc  e4 ff ff ea                                      b #0x613294

; FUNCTION 0x00613300, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE15getBlendedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00613300  01 00 a0 e1                                      mov r0, r1
00613304  02 10 a0 e1                                      mov r1, r2
00613308  03 20 a0 e1                                      mov r2, r3
0061330c  00 30 9d e5                                      ldr r3, [sp]
00613310  6f ff ff ea                                      b #0x6130d4

; FUNCTION 0x00613588, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE13getAddedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
00613588  01 00 a0 e1                                      mov r0, r1
0061358c  02 10 a0 e1                                      mov r1, r2
00613590  03 20 a0 e1                                      mov r2, r3
00613594  00 30 9d e5                                      ldr r3, [sp]
00613598  76 ff ff ea                                      b #0x613378

; FUNCTION 0x0061cf8c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061cf8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061cf90  01 00 a0 e1                                      mov r0, r1
0061cf94  00 10 a0 e3                                      mov r1, #0
0061cf98  02 40 a0 e1                                      mov r4, r2
0061cf9c  03 50 a0 e1                                      mov r5, r3
0061cfa0  9f 33 01 eb                                      bl #0x669e24
0061cfa4  04 20 90 e5                                      ldr r2, [r0, #4]
0061cfa8  05 30 a0 e1                                      mov r3, r5
0061cfac  04 12 92 e7                                      ldr r1, [r2, r4, lsl #4]
0061cfb0  04 42 82 e0                                      add r4, r2, r4, lsl #4
0061cfb4  04 20 84 e2                                      add r2, r4, #4
0061cfb8  04 10 83 e4                                      str r1, [r3], #4
0061cfbc  04 10 94 e5                                      ldr r1, [r4, #4]
0061cfc0  04 10 85 e5                                      str r1, [r5, #4]
0061cfc4  04 10 92 e5                                      ldr r1, [r2, #4]
0061cfc8  04 10 83 e5                                      str r1, [r3, #4]
0061cfcc  08 20 92 e5                                      ldr r2, [r2, #8]
0061cfd0  08 20 83 e5                                      str r2, [r3, #8]
0061cfd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061d0ec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061d0ec  01 00 a0 e1                                      mov r0, r1
0061d0f0  02 10 a0 e1                                      mov r1, r2
0061d0f4  03 20 a0 e1                                      mov r2, r3
0061d0f8  00 30 9d e5                                      ldr r3, [sp]
0061d0fc  b5 ff ff ea                                      b #0x61cfd8

; FUNCTION 0x0061d2a8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061d2a8  04 c0 9d e5                                      ldr ip, [sp, #4]
0061d2ac  01 00 a0 e1                                      mov r0, r1
0061d2b0  02 10 a0 e1                                      mov r1, r2
0061d2b4  03 20 a0 e1                                      mov r2, r3
0061d2b8  00 30 9d e5                                      ldr r3, [sp]
0061d2bc  00 c0 8d e5                                      str ip, [sp]
0061d2c0  08 c0 9d e5                                      ldr ip, [sp, #8]
0061d2c4  04 c0 8d e5                                      str ip, [sp, #4]
0061d2c8  8c ff ff ea                                      b #0x61d100

; FUNCTION 0x0062084c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE10applyValueEPvSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062084c  10 40 2d e9                                      push {r4, lr}
00620850  02 00 a0 e1                                      mov r0, r2
00620854  00 30 92 e5                                      ldr r3, [r2]
00620858  0f e0 a0 e1                                      mov lr, pc
0062085c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620860  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006208e4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006208e4  01 00 a0 e1                                      mov r0, r1
006208e8  02 10 a0 e1                                      mov r1, r2
006208ec  03 20 a0 e1                                      mov r2, r3
006208f0  00 30 9d e5                                      ldr r3, [sp]
006208f4  da ff ff ea                                      b #0x620864

; FUNCTION 0x00620944, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620944  04 c0 9d e5                                      ldr ip, [sp, #4]
00620948  01 00 a0 e1                                      mov r0, r1
0062094c  02 10 a0 e1                                      mov r1, r2
00620950  03 20 a0 e1                                      mov r2, r3
00620954  00 30 9d e5                                      ldr r3, [sp]
00620958  00 c0 8d e5                                      str ip, [sp]
0062095c  08 c0 9d e5                                      ldr ip, [sp, #8]
00620960  04 c0 8d e5                                      str ip, [sp, #4]
00620964  e3 ff ff ea                                      b #0x6208f8

; FUNCTION 0x006209b4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006209b4  01 00 a0 e1                                      mov r0, r1
006209b8  04 c0 9d e5                                      ldr ip, [sp, #4]
006209bc  02 10 a0 e1                                      mov r1, r2
006209c0  03 20 a0 e1                                      mov r2, r3
006209c4  00 30 9d e5                                      ldr r3, [sp]
006209c8  00 c0 8d e5                                      str ip, [sp]
006209cc  e5 ff ff ea                                      b #0x620968

; FUNCTION 0x00620c24, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620c24  01 00 a0 e1                                      mov r0, r1
00620c28  04 c0 9d e5                                      ldr ip, [sp, #4]
00620c2c  02 10 a0 e1                                      mov r1, r2
00620c30  03 20 a0 e1                                      mov r2, r3
00620c34  00 30 9d e5                                      ldr r3, [sp]
00620c38  00 c0 8d e5                                      str ip, [sp]
00620c3c  e5 ff ff ea                                      b #0x620bd8
