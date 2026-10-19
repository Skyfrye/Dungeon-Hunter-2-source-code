; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed3c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060efd0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getValueSize() const
; decoder-mode: arm
0060efd0  0c 00 a0 e3                                      mov r0, #0xc
0060efd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f5d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::~CVirtualEx()
; decoder-mode: arm
0060f5d4  10 40 2d e9                                      push {r4, lr}
0060f5d8  00 40 a0 e1                                      mov r4, r0
0060f5dc  33 fb f3 eb                                      bl #0x30e2b0
0060f5e0  04 00 a0 e1                                      mov r0, r4
0060f5e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0061057c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getInstance()
; decoder-mode: arm
0061057c  70 40 2d e9                                      push {r4, r5, r6, lr}
00610580  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610584  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610588  04 40 8f e0                                      add r4, pc, r4
0061058c  03 60 94 e7                                      ldr r6, [r4, r3]
00610590  00 30 96 e5                                      ldr r3, [r6]
00610594  01 00 13 e3                                      tst r3, #1
00610598  02 00 00 0a                                      beq #0x6105a8
0061059c  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006105a0  05 00 94 e7                                      ldr r0, [r4, r5]
006105a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006105a8  06 00 a0 e1                                      mov r0, r6
006105ac  6e f8 f3 eb                                      bl #0x30e76c
006105b0  00 00 50 e3                                      cmp r0, #0
006105b4  f8 ff ff 0a                                      beq #0x61059c
006105b8  44 30 9f e5                                      ldr r3, [pc, #0x44]
006105bc  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006105c0  06 00 a0 e1                                      mov r0, r6
006105c4  03 30 94 e7                                      ldr r3, [r4, r3]
006105c8  05 60 94 e7                                      ldr r6, [r4, r5]
006105cc  08 30 83 e2                                      add r3, r3, #8
006105d0  00 30 86 e5                                      str r3, [r6]
006105d4  18 f9 f3 eb                                      bl #0x30ea3c
006105d8  28 30 9f e5                                      ldr r3, [pc, #0x28]
006105dc  06 00 a0 e1                                      mov r0, r6
006105e0  03 10 94 e7                                      ldr r1, [r4, r3]
006105e4  20 30 9f e5                                      ldr r3, [pc, #0x20]
006105e8  03 20 94 e7                                      ldr r2, [r4, r3]
006105ec  44 f7 f3 eb                                      bl #0x30e304
006105f0  05 00 94 e7                                      ldr r0, [r4, r5]
006105f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006105f8  08 45 38 00 58 37 00 00 5c 2a 00 00 94 05 00 00  .byte 0x08, 0x45, 0x38, 0x00, 0x58, 0x37, 0x00, 0x00, 0x5c, 0x2a, 0x00, 0x00, 0x94, 0x05, 0x00, 0x00
00610608  ac 18 00 00 90 18 00 00                          .byte 0xac, 0x18, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x006152b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
006152b8  01 00 a0 e1                                      mov r0, r1
006152bc  02 10 a0 e1                                      mov r1, r2
006152c0  03 20 a0 e1                                      mov r2, r3
006152c4  d4 ff ff ea                                      b #0x61521c

; FUNCTION 0x006153d0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
006153d0  01 00 a0 e1                                      mov r0, r1
006153d4  04 c0 9d e5                                      ldr ip, [sp, #4]
006153d8  02 10 a0 e1                                      mov r1, r2
006153dc  03 20 a0 e1                                      mov r2, r3
006153e0  00 30 9d e5                                      ldr r3, [sp]
006153e4  00 c0 8d e5                                      str ip, [sp]
006153e8  b6 ff ff ea                                      b #0x6152c8

; FUNCTION 0x006154b4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006154b4  01 00 a0 e1                                      mov r0, r1
006154b8  02 10 a0 e1                                      mov r1, r2
006154bc  03 20 a0 e1                                      mov r2, r3
006154c0  00 30 9d e5                                      ldr r3, [sp]
006154c4  c8 ff ff ea                                      b #0x6153ec

; FUNCTION 0x00615608, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00615608  04 c0 9d e5                                      ldr ip, [sp, #4]
0061560c  01 00 a0 e1                                      mov r0, r1
00615610  02 10 a0 e1                                      mov r1, r2
00615614  03 20 a0 e1                                      mov r2, r3
00615618  00 30 9d e5                                      ldr r3, [sp]
0061561c  00 c0 8d e5                                      str ip, [sp]
00615620  08 c0 9d e5                                      ldr ip, [sp, #8]
00615624  04 c0 8d e5                                      str ip, [sp, #4]
00615628  a6 ff ff ea                                      b #0x6154c8

; FUNCTION 0x006188cc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getIdentityValue(void*) const
; decoder-mode: arm
006188cc  00 20 a0 e3                                      mov r2, #0
006188d0  01 30 a0 e1                                      mov r3, r1
006188d4  01 20 c3 e4                                      strb r2, [r3], #1
006188d8  01 30 83 e2                                      add r3, r3, #1
006188dc  01 20 c1 e5                                      strb r2, [r1, #1]
006188e0  01 20 c3 e4                                      strb r2, [r3], #1
006188e4  01 20 c3 e4                                      strb r2, [r3], #1
006188e8  01 20 c3 e4                                      strb r2, [r3], #1
006188ec  01 20 c3 e4                                      strb r2, [r3], #1
006188f0  01 20 c3 e4                                      strb r2, [r3], #1
006188f4  01 20 c3 e4                                      strb r2, [r3], #1
006188f8  01 20 c3 e4                                      strb r2, [r3], #1
006188fc  01 20 c3 e4                                      strb r2, [r3], #1
00618900  01 20 c3 e4                                      strb r2, [r3], #1
00618904  00 20 c3 e5                                      strb r2, [r3]
00618908  1e ff 2f e1                                      bx lr

; FUNCTION 0x00620494, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620494  10 40 2d e9                                      push {r4, lr}
00620498  00 30 91 e5                                      ldr r3, [r1]
0062049c  01 00 a0 e1                                      mov r0, r1
006204a0  02 40 a0 e1                                      mov r4, r2
006204a4  0f e0 a0 e1                                      mov lr, pc
006204a8  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006204ac  00 30 90 e5                                      ldr r3, [r0]
006204b0  00 30 84 e5                                      str r3, [r4]
006204b4  04 30 90 e5                                      ldr r3, [r0, #4]
006204b8  04 30 84 e5                                      str r3, [r4, #4]
006204bc  08 30 90 e5                                      ldr r3, [r0, #8]
006204c0  08 30 84 e5                                      str r3, [r4, #8]
006204c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622fe0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622fe0  01 00 a0 e1                                      mov r0, r1
00622fe4  02 10 a0 e1                                      mov r1, r2
00622fe8  03 20 a0 e1                                      mov r2, r3
00622fec  00 30 9d e5                                      ldr r3, [sp]
00622ff0  e9 ff ff ea                                      b #0x622f9c

; FUNCTION 0x00623038, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623038  04 c0 9d e5                                      ldr ip, [sp, #4]
0062303c  01 00 a0 e1                                      mov r0, r1
00623040  02 10 a0 e1                                      mov r1, r2
00623044  03 20 a0 e1                                      mov r2, r3
00623048  00 30 9d e5                                      ldr r3, [sp]
0062304c  00 c0 8d e5                                      str ip, [sp]
00623050  08 c0 9d e5                                      ldr ip, [sp, #8]
00623054  04 c0 8d e5                                      str ip, [sp, #4]
00623058  e5 ff ff ea                                      b #0x622ff4

; FUNCTION 0x00623d60, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623d60  10 40 2d e9                                      push {r4, lr}
00623d64  02 00 a0 e1                                      mov r0, r2
00623d68  00 30 92 e5                                      ldr r3, [r2]
00623d6c  0f e0 a0 e1                                      mov lr, pc
00623d70  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623d74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00626fc0, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626fc0  01 00 53 e3                                      cmp r3, #1
00626fc4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626fc8  03 40 a0 e1                                      mov r4, r3
00626fcc  02 b0 a0 e1                                      mov fp, r2
00626fd0  29 00 00 0a                                      beq #0x62707c
00626fd4  00 00 53 e3                                      cmp r3, #0
00626fd8  00 80 a0 03                                      moveq r8, #0
00626fdc  08 90 a0 01                                      moveq sb, r8
00626fe0  08 a0 a0 01                                      moveq sl, r8
00626fe4  1e 00 00 0a                                      beq #0x627064
00626fe8  00 80 a0 e3                                      mov r8, #0
00626fec  01 50 a0 e1                                      mov r5, r1
00626ff0  00 70 a0 e3                                      mov r7, #0
00626ff4  08 90 a0 e1                                      mov sb, r8
00626ff8  08 a0 a0 e1                                      mov sl, r8
00626ffc  07 60 9b e7                                      ldr r6, [fp, r7]
00627000  00 10 95 e5                                      ldr r1, [r5]
00627004  04 70 87 e2                                      add r7, r7, #4
00627008  06 00 a0 e1                                      mov r0, r6
0062700c  56 9f f3 eb                                      bl #0x30ed6c
00627010  00 10 a0 e1                                      mov r1, r0
00627014  08 00 a0 e1                                      mov r0, r8
00627018  e1 9e f3 eb                                      bl #0x30eba4
0062701c  04 10 95 e5                                      ldr r1, [r5, #4]
00627020  00 80 a0 e1                                      mov r8, r0
00627024  06 00 a0 e1                                      mov r0, r6
00627028  4f 9f f3 eb                                      bl #0x30ed6c
0062702c  00 10 a0 e1                                      mov r1, r0
00627030  09 00 a0 e1                                      mov r0, sb
00627034  da 9e f3 eb                                      bl #0x30eba4
00627038  08 10 95 e5                                      ldr r1, [r5, #8]
0062703c  00 90 a0 e1                                      mov sb, r0
00627040  06 00 a0 e1                                      mov r0, r6
00627044  48 9f f3 eb                                      bl #0x30ed6c
00627048  00 10 a0 e1                                      mov r1, r0
0062704c  0a 00 a0 e1                                      mov r0, sl
00627050  d3 9e f3 eb                                      bl #0x30eba4
00627054  01 40 54 e2                                      subs r4, r4, #1
00627058  00 a0 a0 e1                                      mov sl, r0
0062705c  0c 50 85 e2                                      add r5, r5, #0xc
00627060  e5 ff ff 1a                                      bne #0x626ffc
00627064  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627068  04 80 83 e4                                      str r8, [r3], #4
0062706c  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627070  04 90 82 e5                                      str sb, [r2, #4]
00627074  04 a0 83 e5                                      str sl, [r3, #4]
00627078  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062707c  01 20 a0 e1                                      mov r2, r1
00627080  04 00 92 e4                                      ldr r0, [r2], #4
00627084  28 30 9d e5                                      ldr r3, [sp, #0x28]
00627088  04 00 83 e4                                      str r0, [r3], #4
0062708c  04 10 91 e5                                      ldr r1, [r1, #4]
00627090  28 00 9d e5                                      ldr r0, [sp, #0x28]
00627094  04 10 80 e5                                      str r1, [r0, #4]
00627098  04 20 92 e5                                      ldr r2, [r2, #4]
0062709c  04 20 83 e5                                      str r2, [r3, #4]
006270a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006296c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006296c4  01 00 a0 e1                                      mov r0, r1
006296c8  04 c0 9d e5                                      ldr ip, [sp, #4]
006296cc  02 10 a0 e1                                      mov r1, r2
006296d0  03 20 a0 e1                                      mov r2, r3
006296d4  00 30 9d e5                                      ldr r3, [sp]
006296d8  00 c0 8d e5                                      str ip, [sp]
006296dc  ba ff ff ea                                      b #0x6295cc

; FUNCTION 0x006297d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006297d8  01 00 a0 e1                                      mov r0, r1
006297dc  04 c0 9d e5                                      ldr ip, [sp, #4]
006297e0  02 10 a0 e1                                      mov r1, r2
006297e4  03 20 a0 e1                                      mov r2, r3
006297e8  00 30 9d e5                                      ldr r3, [sp]
006297ec  00 c0 8d e5                                      str ip, [sp]
006297f0  ba ff ff ea                                      b #0x6296e0

; FUNCTION 0x0062abc8, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062abc8  01 00 53 e3                                      cmp r3, #1
0062abcc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062abd0  03 40 a0 e1                                      mov r4, r3
0062abd4  02 b0 a0 e1                                      mov fp, r2
0062abd8  29 00 00 0a                                      beq #0x62ac84
0062abdc  00 00 53 e3                                      cmp r3, #0
0062abe0  00 80 a0 03                                      moveq r8, #0
0062abe4  08 90 a0 01                                      moveq sb, r8
0062abe8  08 a0 a0 01                                      moveq sl, r8
0062abec  1e 00 00 0a                                      beq #0x62ac6c
0062abf0  00 80 a0 e3                                      mov r8, #0
0062abf4  01 50 a0 e1                                      mov r5, r1
0062abf8  00 70 a0 e3                                      mov r7, #0
0062abfc  08 90 a0 e1                                      mov sb, r8
0062ac00  08 a0 a0 e1                                      mov sl, r8
0062ac04  07 60 9b e7                                      ldr r6, [fp, r7]
0062ac08  00 10 95 e5                                      ldr r1, [r5]
0062ac0c  04 70 87 e2                                      add r7, r7, #4
0062ac10  06 00 a0 e1                                      mov r0, r6
0062ac14  54 90 f3 eb                                      bl #0x30ed6c
0062ac18  00 10 a0 e1                                      mov r1, r0
0062ac1c  08 00 a0 e1                                      mov r0, r8
0062ac20  df 8f f3 eb                                      bl #0x30eba4
0062ac24  04 10 95 e5                                      ldr r1, [r5, #4]
0062ac28  00 80 a0 e1                                      mov r8, r0
0062ac2c  06 00 a0 e1                                      mov r0, r6
0062ac30  4d 90 f3 eb                                      bl #0x30ed6c
0062ac34  00 10 a0 e1                                      mov r1, r0
0062ac38  09 00 a0 e1                                      mov r0, sb
0062ac3c  d8 8f f3 eb                                      bl #0x30eba4
0062ac40  08 10 95 e5                                      ldr r1, [r5, #8]
0062ac44  00 90 a0 e1                                      mov sb, r0
0062ac48  06 00 a0 e1                                      mov r0, r6
0062ac4c  46 90 f3 eb                                      bl #0x30ed6c
0062ac50  00 10 a0 e1                                      mov r1, r0
0062ac54  0a 00 a0 e1                                      mov r0, sl
0062ac58  d1 8f f3 eb                                      bl #0x30eba4
0062ac5c  01 40 54 e2                                      subs r4, r4, #1
0062ac60  00 a0 a0 e1                                      mov sl, r0
0062ac64  0c 50 85 e2                                      add r5, r5, #0xc
0062ac68  e5 ff ff 1a                                      bne #0x62ac04
0062ac6c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ac70  04 80 83 e4                                      str r8, [r3], #4
0062ac74  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062ac78  04 90 82 e5                                      str sb, [r2, #4]
0062ac7c  04 a0 83 e5                                      str sl, [r3, #4]
0062ac80  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062ac84  01 20 a0 e1                                      mov r2, r1
0062ac88  04 00 92 e4                                      ldr r0, [r2], #4
0062ac8c  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062ac90  04 00 83 e4                                      str r0, [r3], #4
0062ac94  04 10 91 e5                                      ldr r1, [r1, #4]
0062ac98  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062ac9c  04 10 80 e5                                      str r1, [r0, #4]
0062aca0  04 20 92 e5                                      ldr r2, [r2, #4]
0062aca4  04 20 83 e5                                      str r2, [r3, #4]
0062aca8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
