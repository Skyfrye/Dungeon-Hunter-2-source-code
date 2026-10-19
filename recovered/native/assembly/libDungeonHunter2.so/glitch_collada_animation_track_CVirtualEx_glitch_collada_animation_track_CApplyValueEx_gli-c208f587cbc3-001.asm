; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed1c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f07c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getValueSize() const
; decoder-mode: arm
0060f07c  10 00 a0 e3                                      mov r0, #0x10
0060f080  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f084, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getIdentityValue(void*) const
; decoder-mode: arm
0060f084  00 30 a0 e3                                      mov r3, #0
0060f088  fe 25 a0 e3                                      mov r2, #0x3f800000
0060f08c  08 30 81 e5                                      str r3, [r1, #8]
0060f090  0c 20 81 e5                                      str r2, [r1, #0xc]
0060f094  00 30 81 e5                                      str r3, [r1]
0060f098  04 30 81 e5                                      str r3, [r1, #4]
0060f09c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f534, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060f534  10 40 2d e9                                      push {r4, lr}
0060f538  00 40 a0 e1                                      mov r4, r0
0060f53c  5b fb f3 eb                                      bl #0x30e2b0
0060f540  04 00 a0 e1                                      mov r0, r4
0060f544  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006100dc, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getInstance()
; decoder-mode: arm
006100dc  70 40 2d e9                                      push {r4, r5, r6, lr}
006100e0  70 40 9f e5                                      ldr r4, [pc, #0x70]
006100e4  70 30 9f e5                                      ldr r3, [pc, #0x70]
006100e8  04 40 8f e0                                      add r4, pc, r4
006100ec  03 60 94 e7                                      ldr r6, [r4, r3]
006100f0  00 30 96 e5                                      ldr r3, [r6]
006100f4  01 00 13 e3                                      tst r3, #1
006100f8  02 00 00 0a                                      beq #0x610108
006100fc  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610100  05 00 94 e7                                      ldr r0, [r4, r5]
00610104  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610108  06 00 a0 e1                                      mov r0, r6
0061010c  96 f9 f3 eb                                      bl #0x30e76c
00610110  00 00 50 e3                                      cmp r0, #0
00610114  f8 ff ff 0a                                      beq #0x6100fc
00610118  44 30 9f e5                                      ldr r3, [pc, #0x44]
0061011c  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610120  06 00 a0 e1                                      mov r0, r6
00610124  03 30 94 e7                                      ldr r3, [r4, r3]
00610128  05 60 94 e7                                      ldr r6, [r4, r5]
0061012c  08 30 83 e2                                      add r3, r3, #8
00610130  00 30 86 e5                                      str r3, [r6]
00610134  40 fa f3 eb                                      bl #0x30ea3c
00610138  28 30 9f e5                                      ldr r3, [pc, #0x28]
0061013c  06 00 a0 e1                                      mov r0, r6
00610140  03 10 94 e7                                      ldr r1, [r4, r3]
00610144  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610148  03 20 94 e7                                      ldr r2, [r4, r3]
0061014c  6c f8 f3 eb                                      bl #0x30e304
00610150  05 00 94 e7                                      ldr r0, [r4, r5]
00610154  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610158  a8 49 38 00 d8 10 00 00 a4 41 00 00 54 27 00 00  .byte 0xa8, 0x49, 0x38, 0x00, 0xd8, 0x10, 0x00, 0x00, 0xa4, 0x41, 0x00, 0x00, 0x54, 0x27, 0x00, 0x00
00610168  64 22 00 00 90 18 00 00                          .byte 0x64, 0x22, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0061333c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE15getBlendedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0061333c  01 00 a0 e1                                      mov r0, r1
00613340  02 10 a0 e1                                      mov r1, r2
00613344  03 20 a0 e1                                      mov r2, r3
00613348  00 30 9d e5                                      ldr r3, [sp]
0061334c  60 ff ff ea                                      b #0x6130d4

; FUNCTION 0x006135c4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE13getAddedValueEPvPfiSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
006135c4  01 00 a0 e1                                      mov r0, r1
006135c8  02 10 a0 e1                                      mov r1, r2
006135cc  03 20 a0 e1                                      mov r2, r3
006135d0  00 30 9d e5                                      ldr r3, [sp]
006135d4  67 ff ff ea                                      b #0x613378

; FUNCTION 0x0061cbf4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE13retrieveValueEPvSA_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0061cbf4  10 40 2d e9                                      push {r4, lr}
0061cbf8  00 30 91 e5                                      ldr r3, [r1]
0061cbfc  01 00 a0 e1                                      mov r0, r1
0061cc00  02 40 a0 e1                                      mov r4, r2
0061cc04  0f e0 a0 e1                                      mov lr, pc
0061cc08  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0061cc0c  00 30 90 e5                                      ldr r3, [r0]
0061cc10  00 30 84 e5                                      str r3, [r4]
0061cc14  04 30 90 e5                                      ldr r3, [r0, #4]
0061cc18  04 30 84 e5                                      str r3, [r4, #4]
0061cc1c  08 30 90 e5                                      ldr r3, [r0, #8]
0061cc20  08 30 84 e5                                      str r3, [r4, #8]
0061cc24  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061cc28  0c 30 84 e5                                      str r3, [r4, #0xc]
0061cc2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0061f5d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061f5d4  01 00 a0 e1                                      mov r0, r1
0061f5d8  02 10 a0 e1                                      mov r1, r2
0061f5dc  03 20 a0 e1                                      mov r2, r3
0061f5e0  eb ff ff ea                                      b #0x61f594

; FUNCTION 0x0061f6e0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061f6e0  01 00 a0 e1                                      mov r0, r1
0061f6e4  02 10 a0 e1                                      mov r1, r2
0061f6e8  03 20 a0 e1                                      mov r2, r3
0061f6ec  00 30 9d e5                                      ldr r3, [sp]
0061f6f0  bb ff ff ea                                      b #0x61f5e4

; FUNCTION 0x0061f874, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061f874  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f878  01 00 a0 e1                                      mov r0, r1
0061f87c  02 10 a0 e1                                      mov r1, r2
0061f880  03 20 a0 e1                                      mov r2, r3
0061f884  00 30 9d e5                                      ldr r3, [sp]
0061f888  00 c0 8d e5                                      str ip, [sp]
0061f88c  08 c0 9d e5                                      ldr ip, [sp, #8]
0061f890  04 c0 8d e5                                      str ip, [sp, #4]
0061f894  96 ff ff ea                                      b #0x61f6f4

; FUNCTION 0x0061f988, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061f988  01 00 a0 e1                                      mov r0, r1
0061f98c  04 c0 9d e5                                      ldr ip, [sp, #4]
0061f990  02 10 a0 e1                                      mov r1, r2
0061f994  03 20 a0 e1                                      mov r2, r3
0061f998  00 30 9d e5                                      ldr r3, [sp]
0061f99c  00 c0 8d e5                                      str ip, [sp]
0061f9a0  e9 ff ff ea                                      b #0x61f94c

; FUNCTION 0x00620804, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE10applyValueEPvSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620804  10 40 2d e9                                      push {r4, lr}
00620808  02 00 a0 e1                                      mov r0, r2
0062080c  00 30 92 e5                                      ldr r3, [r2]
00620810  0f e0 a0 e1                                      mov lr, pc
00620814  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620818  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00620aec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE17applyBlendedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620aec  01 00 a0 e1                                      mov r0, r1
00620af0  04 c0 9d e5                                      ldr ip, [sp, #4]
00620af4  02 10 a0 e1                                      mov r1, r2
00620af8  03 20 a0 e1                                      mov r2, r3
00620afc  00 30 9d e5                                      ldr r3, [sp]
00620b00  00 c0 8d e5                                      str ip, [sp]
00620b04  e5 ff ff ea                                      b #0x620aa0

; FUNCTION 0x00620d5c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE15applyAddedValueEPvPfiSA_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00620d5c  01 00 a0 e1                                      mov r0, r1
00620d60  04 c0 9d e5                                      ldr ip, [sp, #4]
00620d64  02 10 a0 e1                                      mov r1, r2
00620d68  03 20 a0 e1                                      mov r2, r3
00620d6c  00 30 9d e5                                      ldr r3, [sp]
00620d70  00 c0 8d e5                                      str ip, [sp]
00620d74  e5 ff ff ea                                      b #0x620d10

; FUNCTION 0x00621034, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621034  01 00 a0 e1                                      mov r0, r1
00621038  02 10 a0 e1                                      mov r1, r2
0062103c  03 20 a0 e1                                      mov r2, r3
00621040  00 30 9d e5                                      ldr r3, [sp]
00621044  e7 ff ff ea                                      b #0x620fe8

; FUNCTION 0x00621094, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00621094  04 c0 9d e5                                      ldr ip, [sp, #4]
00621098  01 00 a0 e1                                      mov r0, r1
0062109c  02 10 a0 e1                                      mov r1, r2
006210a0  03 20 a0 e1                                      mov r2, r3
006210a4  00 30 9d e5                                      ldr r3, [sp]
006210a8  00 c0 8d e5                                      str ip, [sp]
006210ac  08 c0 9d e5                                      ldr ip, [sp, #8]
006210b0  04 c0 8d e5                                      str ip, [sp, #4]
006210b4  e3 ff ff ea                                      b #0x621048
