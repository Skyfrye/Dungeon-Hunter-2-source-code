; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f034, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getValueSize() const
; decoder-mode: arm
0060f034  10 00 a0 e3                                      mov r0, #0x10
0060f038  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f03c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getIdentityValue(void*) const
; decoder-mode: arm
0060f03c  00 30 a0 e3                                      mov r3, #0
0060f040  fe 25 a0 e3                                      mov r2, #0x3f800000
0060f044  08 30 81 e5                                      str r3, [r1, #8]
0060f048  0c 20 81 e5                                      str r2, [r1, #0xc]
0060f04c  00 30 81 e5                                      str r3, [r1]
0060f050  04 30 81 e5                                      str r3, [r1, #4]
0060f054  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f55c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060f55c  10 40 2d e9                                      push {r4, lr}
0060f560  00 40 a0 e1                                      mov r4, r0
0060f564  51 fb f3 eb                                      bl #0x30e2b0
0060f568  04 00 a0 e1                                      mov r0, r4
0060f56c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610204, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getInstance()
; decoder-mode: arm
00610204  70 40 2d e9                                      push {r4, r5, r6, lr}
00610208  70 40 9f e5                                      ldr r4, [pc, #0x70]
0061020c  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610210  04 40 8f e0                                      add r4, pc, r4
00610214  03 60 94 e7                                      ldr r6, [r4, r3]
00610218  00 30 96 e5                                      ldr r3, [r6]
0061021c  01 00 13 e3                                      tst r3, #1
00610220  02 00 00 0a                                      beq #0x610230
00610224  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610228  05 00 94 e7                                      ldr r0, [r4, r5]
0061022c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610230  06 00 a0 e1                                      mov r0, r6
00610234  4c f9 f3 eb                                      bl #0x30e76c
00610238  00 00 50 e3                                      cmp r0, #0
0061023c  f8 ff ff 0a                                      beq #0x610224
00610240  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610244  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610248  06 00 a0 e1                                      mov r0, r6
0061024c  03 30 94 e7                                      ldr r3, [r4, r3]
00610250  05 60 94 e7                                      ldr r6, [r4, r5]
00610254  08 30 83 e2                                      add r3, r3, #8
00610258  00 30 86 e5                                      str r3, [r6]
0061025c  f6 f9 f3 eb                                      bl #0x30ea3c
00610260  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610264  06 00 a0 e1                                      mov r0, r6
00610268  03 10 94 e7                                      ldr r1, [r4, r3]
0061026c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610270  03 20 94 e7                                      ldr r2, [r4, r3]
00610274  22 f8 f3 eb                                      bl #0x30e304
00610278  05 00 94 e7                                      ldr r0, [r4, r5]
0061027c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610280  80 48 38 00 64 17 00 00 b0 3a 00 00 54 11 00 00  .byte 0x80, 0x48, 0x38, 0x00, 0x64, 0x17, 0x00, 0x00, 0xb0, 0x3a, 0x00, 0x00, 0x54, 0x11, 0x00, 0x00
00610290  c0 09 00 00 90 18 00 00                          .byte 0xc0, 0x09, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00613364, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE15getBlendedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00613364  01 00 a0 e1                                      mov r0, r1
00613368  02 10 a0 e1                                      mov r1, r2
0061336c  03 20 a0 e1                                      mov r2, r3
00613370  00 30 9d e5                                      ldr r3, [sp]
00613374  56 ff ff ea                                      b #0x6130d4

; FUNCTION 0x006135ec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE13getAddedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006135ec  01 00 a0 e1                                      mov r0, r1
006135f0  02 10 a0 e1                                      mov r1, r2
006135f4  03 20 a0 e1                                      mov r2, r3
006135f8  00 30 9d e5                                      ldr r3, [sp]
006135fc  5d ff ff ea                                      b #0x613378

; FUNCTION 0x00618400, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
00618400  01 00 a0 e1                                      mov r0, r1
00618404  02 10 a0 e1                                      mov r1, r2
00618408  03 20 a0 e1                                      mov r2, r3
0061840c  eb ff ff ea                                      b #0x6183c0

; FUNCTION 0x00618498, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00618498  04 c0 9d e5                                      ldr ip, [sp, #4]
0061849c  01 00 a0 e1                                      mov r0, r1
006184a0  02 10 a0 e1                                      mov r1, r2
006184a4  03 20 a0 e1                                      mov r2, r3
006184a8  00 30 9d e5                                      ldr r3, [sp]
006184ac  00 c0 8d e5                                      str ip, [sp]
006184b0  08 c0 9d e5                                      ldr ip, [sp, #8]
006184b4  04 c0 8d e5                                      str ip, [sp, #4]
006184b8  e3 ff ff ea                                      b #0x61844c

; FUNCTION 0x006184bc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006184bc  01 00 a0 e1                                      mov r0, r1
006184c0  04 c0 9d e5                                      ldr ip, [sp, #4]
006184c4  02 10 a0 e1                                      mov r1, r2
006184c8  03 20 a0 e1                                      mov r2, r3
006184cc  00 30 9d e5                                      ldr r3, [sp]
006184d0  00 c0 8d e5                                      str ip, [sp]
006184d4  cd ff ff ea                                      b #0x618410

; FUNCTION 0x006185d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006185d4  01 00 a0 e1                                      mov r0, r1
006185d8  02 10 a0 e1                                      mov r1, r2
006185dc  03 20 a0 e1                                      mov r2, r3
006185e0  00 30 9d e5                                      ldr r3, [sp]
006185e4  bb ff ff ea                                      b #0x6184d8

; FUNCTION 0x00618768, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00618768  04 c0 9d e5                                      ldr ip, [sp, #4]
0061876c  01 00 a0 e1                                      mov r0, r1
00618770  02 10 a0 e1                                      mov r1, r2
00618774  03 20 a0 e1                                      mov r2, r3
00618778  00 30 9d e5                                      ldr r3, [sp]
0061877c  00 c0 8d e5                                      str ip, [sp]
00618780  08 c0 9d e5                                      ldr ip, [sp, #8]
00618784  04 c0 8d e5                                      str ip, [sp, #4]
00618788  96 ff ff ea                                      b #0x6185e8

; FUNCTION 0x0061cb7c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE13retrieveValueEPvSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0061cb7c  10 40 2d e9                                      push {r4, lr}
0061cb80  00 30 91 e5                                      ldr r3, [r1]
0061cb84  01 00 a0 e1                                      mov r0, r1
0061cb88  02 40 a0 e1                                      mov r4, r2
0061cb8c  0f e0 a0 e1                                      mov lr, pc
0061cb90  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0061cb94  00 30 90 e5                                      ldr r3, [r0]
0061cb98  00 30 84 e5                                      str r3, [r4]
0061cb9c  04 30 90 e5                                      ldr r3, [r0, #4]
0061cba0  04 30 84 e5                                      str r3, [r4, #4]
0061cba4  08 30 90 e5                                      ldr r3, [r0, #8]
0061cba8  08 30 84 e5                                      str r3, [r4, #8]
0061cbac  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061cbb0  0c 30 84 e5                                      str r3, [r4, #0xc]
0061cbb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006207d4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE10applyValueEPvSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006207d4  10 40 2d e9                                      push {r4, lr}
006207d8  02 00 a0 e1                                      mov r0, r2
006207dc  00 30 92 e5                                      ldr r3, [r2]
006207e0  0f e0 a0 e1                                      mov lr, pc
006207e4  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006207e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00620bbc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620bbc  01 00 a0 e1                                      mov r0, r1
00620bc0  04 c0 9d e5                                      ldr ip, [sp, #4]
00620bc4  02 10 a0 e1                                      mov r1, r2
00620bc8  03 20 a0 e1                                      mov r2, r3
00620bcc  00 30 9d e5                                      ldr r3, [sp]
00620bd0  00 c0 8d e5                                      str ip, [sp]
00620bd4  e5 ff ff ea                                      b #0x620b70

; FUNCTION 0x00620e2c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620e2c  01 00 a0 e1                                      mov r0, r1
00620e30  04 c0 9d e5                                      ldr ip, [sp, #4]
00620e34  02 10 a0 e1                                      mov r1, r2
00620e38  03 20 a0 e1                                      mov r2, r3
00620e3c  00 30 9d e5                                      ldr r3, [sp]
00620e40  00 c0 8d e5                                      str ip, [sp]
00620e44  e5 ff ff ea                                      b #0x620de0

; FUNCTION 0x006211d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006211d4  01 00 a0 e1                                      mov r0, r1
006211d8  02 10 a0 e1                                      mov r1, r2
006211dc  03 20 a0 e1                                      mov r2, r3
006211e0  00 30 9d e5                                      ldr r3, [sp]
006211e4  e7 ff ff ea                                      b #0x621188
