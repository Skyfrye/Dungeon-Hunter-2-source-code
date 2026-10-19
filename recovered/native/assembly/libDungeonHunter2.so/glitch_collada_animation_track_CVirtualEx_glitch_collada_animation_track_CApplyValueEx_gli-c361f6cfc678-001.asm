; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed7c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef1c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getValueSize() const
; decoder-mode: arm
0060ef1c  0c 00 a0 e3                                      mov r0, #0xc
0060ef20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f714, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::~CVirtualEx()
; decoder-mode: arm
0060f714  10 40 2d e9                                      push {r4, lr}
0060f718  00 40 a0 e1                                      mov r4, r0
0060f71c  e3 fa f3 eb                                      bl #0x30e2b0
0060f720  04 00 a0 e1                                      mov r0, r4
0060f724  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610ebc, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getInstance()
; decoder-mode: arm
00610ebc  70 40 2d e9                                      push {r4, r5, r6, lr}
00610ec0  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610ec4  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610ec8  04 40 8f e0                                      add r4, pc, r4
00610ecc  03 60 94 e7                                      ldr r6, [r4, r3]
00610ed0  00 30 96 e5                                      ldr r3, [r6]
00610ed4  01 00 13 e3                                      tst r3, #1
00610ed8  02 00 00 0a                                      beq #0x610ee8
00610edc  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610ee0  05 00 94 e7                                      ldr r0, [r4, r5]
00610ee4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610ee8  06 00 a0 e1                                      mov r0, r6
00610eec  1e f6 f3 eb                                      bl #0x30e76c
00610ef0  00 00 50 e3                                      cmp r0, #0
00610ef4  f8 ff ff 0a                                      beq #0x610edc
00610ef8  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610efc  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610f00  06 00 a0 e1                                      mov r0, r6
00610f04  03 30 94 e7                                      ldr r3, [r4, r3]
00610f08  05 60 94 e7                                      ldr r6, [r4, r5]
00610f0c  08 30 83 e2                                      add r3, r3, #8
00610f10  00 30 86 e5                                      str r3, [r6]
00610f14  c8 f6 f3 eb                                      bl #0x30ea3c
00610f18  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610f1c  06 00 a0 e1                                      mov r0, r6
00610f20  03 10 94 e7                                      ldr r1, [r4, r3]
00610f24  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610f28  03 20 94 e7                                      ldr r2, [r4, r3]
00610f2c  f4 f4 f3 eb                                      bl #0x30e304
00610f30  05 00 94 e7                                      ldr r0, [r4, r5]
00610f34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610f38  c8 3b 38 00 ec 24 00 00 b8 45 00 00 a8 1e 00 00  .byte 0xc8, 0x3b, 0x38, 0x00, 0xec, 0x24, 0x00, 0x00, 0xb8, 0x45, 0x00, 0x00, 0xa8, 0x1e, 0x00, 0x00
00610f48  f8 1b 00 00 90 18 00 00                          .byte 0xf8, 0x1b, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x00618ccc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618ccc  00 20 a0 e3                                      mov r2, #0
00618cd0  01 30 a0 e1                                      mov r3, r1
00618cd4  01 20 c3 e4                                      strb r2, [r3], #1
00618cd8  01 30 83 e2                                      add r3, r3, #1
00618cdc  01 20 c1 e5                                      strb r2, [r1, #1]
00618ce0  01 20 c3 e4                                      strb r2, [r3], #1
00618ce4  01 20 c3 e4                                      strb r2, [r3], #1
00618ce8  01 20 c3 e4                                      strb r2, [r3], #1
00618cec  01 20 c3 e4                                      strb r2, [r3], #1
00618cf0  01 20 c3 e4                                      strb r2, [r3], #1
00618cf4  01 20 c3 e4                                      strb r2, [r3], #1
00618cf8  01 20 c3 e4                                      strb r2, [r3], #1
00618cfc  01 20 c3 e4                                      strb r2, [r3], #1
00618d00  01 20 c3 e4                                      strb r2, [r3], #1
00618d04  00 20 c3 e5                                      strb r2, [r3]
00618d08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061e254, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061e254  01 00 a0 e1                                      mov r0, r1
0061e258  02 10 a0 e1                                      mov r1, r2
0061e25c  03 20 a0 e1                                      mov r2, r3
0061e260  df ff ff ea                                      b #0x61e1e4

; FUNCTION 0x0061e318, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0061e318  01 00 a0 e1                                      mov r0, r1
0061e31c  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e320  02 10 a0 e1                                      mov r1, r2
0061e324  03 20 a0 e1                                      mov r2, r3
0061e328  00 30 9d e5                                      ldr r3, [sp]
0061e32c  00 c0 8d e5                                      str ip, [sp]
0061e330  cb ff ff ea                                      b #0x61e264

; FUNCTION 0x0061e3a0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061e3a0  01 00 a0 e1                                      mov r0, r1
0061e3a4  02 10 a0 e1                                      mov r1, r2
0061e3a8  03 20 a0 e1                                      mov r2, r3
0061e3ac  00 30 9d e5                                      ldr r3, [sp]
0061e3b0  df ff ff ea                                      b #0x61e334

; FUNCTION 0x0061e488, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
0061e488  04 c0 9d e5                                      ldr ip, [sp, #4]
0061e48c  01 00 a0 e1                                      mov r0, r1
0061e490  02 10 a0 e1                                      mov r1, r2
0061e494  03 20 a0 e1                                      mov r2, r3
0061e498  00 30 9d e5                                      ldr r3, [sp]
0061e49c  00 c0 8d e5                                      str ip, [sp]
0061e4a0  08 c0 9d e5                                      ldr ip, [sp, #8]
0061e4a4  04 c0 8d e5                                      str ip, [sp, #4]
0061e4a8  c1 ff ff ea                                      b #0x61e3b4

; FUNCTION 0x00620600, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE13retrieveValueEPvSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
00620600  10 40 2d e9                                      push {r4, lr}
00620604  00 30 91 e5                                      ldr r3, [r1]
00620608  01 00 a0 e1                                      mov r0, r1
0062060c  02 40 a0 e1                                      mov r4, r2
00620610  0f e0 a0 e1                                      mov lr, pc
00620614  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00620618  00 30 90 e5                                      ldr r3, [r0]
0062061c  00 30 84 e5                                      str r3, [r4]
00620620  04 30 90 e5                                      ldr r3, [r0, #4]
00620624  04 30 84 e5                                      str r3, [r4, #4]
00620628  08 30 90 e5                                      ldr r3, [r0, #8]
0062062c  08 30 84 e5                                      str r3, [r4, #8]
00620630  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00622bf8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE10applyValueEPvSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622bf8  10 40 2d e9                                      push {r4, lr}
00622bfc  02 00 a0 e1                                      mov r0, r2
00622c00  00 30 92 e5                                      ldr r3, [r2]
00622c04  0f e0 a0 e1                                      mov lr, pc
00622c08  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00622c0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00623878, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623878  01 00 a0 e1                                      mov r0, r1
0062387c  02 10 a0 e1                                      mov r1, r2
00623880  03 20 a0 e1                                      mov r2, r3
00623884  00 30 9d e5                                      ldr r3, [sp]
00623888  e9 ff ff ea                                      b #0x623834

; FUNCTION 0x006238d0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006238d0  04 c0 9d e5                                      ldr ip, [sp, #4]
006238d4  01 00 a0 e1                                      mov r0, r1
006238d8  02 10 a0 e1                                      mov r1, r2
006238dc  03 20 a0 e1                                      mov r2, r3
006238e0  00 30 9d e5                                      ldr r3, [sp]
006238e4  00 c0 8d e5                                      str ip, [sp]
006238e8  08 c0 9d e5                                      ldr ip, [sp, #8]
006238ec  04 c0 8d e5                                      str ip, [sp, #4]
006238f0  e5 ff ff ea                                      b #0x62388c

; FUNCTION 0x0062a2e0, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15getBlendedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a2e0  01 00 53 e3                                      cmp r3, #1
0062a2e4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a2e8  03 40 a0 e1                                      mov r4, r3
0062a2ec  02 b0 a0 e1                                      mov fp, r2
0062a2f0  29 00 00 0a                                      beq #0x62a39c
0062a2f4  00 00 53 e3                                      cmp r3, #0
0062a2f8  00 80 a0 03                                      moveq r8, #0
0062a2fc  08 90 a0 01                                      moveq sb, r8
0062a300  08 a0 a0 01                                      moveq sl, r8
0062a304  1e 00 00 0a                                      beq #0x62a384
0062a308  00 80 a0 e3                                      mov r8, #0
0062a30c  01 50 a0 e1                                      mov r5, r1
0062a310  00 70 a0 e3                                      mov r7, #0
0062a314  08 90 a0 e1                                      mov sb, r8
0062a318  08 a0 a0 e1                                      mov sl, r8
0062a31c  07 60 9b e7                                      ldr r6, [fp, r7]
0062a320  00 10 95 e5                                      ldr r1, [r5]
0062a324  04 70 87 e2                                      add r7, r7, #4
0062a328  06 00 a0 e1                                      mov r0, r6
0062a32c  8e 92 f3 eb                                      bl #0x30ed6c
0062a330  00 10 a0 e1                                      mov r1, r0
0062a334  08 00 a0 e1                                      mov r0, r8
0062a338  19 92 f3 eb                                      bl #0x30eba4
0062a33c  04 10 95 e5                                      ldr r1, [r5, #4]
0062a340  00 80 a0 e1                                      mov r8, r0
0062a344  06 00 a0 e1                                      mov r0, r6
0062a348  87 92 f3 eb                                      bl #0x30ed6c
0062a34c  00 10 a0 e1                                      mov r1, r0
0062a350  09 00 a0 e1                                      mov r0, sb
0062a354  12 92 f3 eb                                      bl #0x30eba4
0062a358  08 10 95 e5                                      ldr r1, [r5, #8]
0062a35c  00 90 a0 e1                                      mov sb, r0
0062a360  06 00 a0 e1                                      mov r0, r6
0062a364  80 92 f3 eb                                      bl #0x30ed6c
0062a368  00 10 a0 e1                                      mov r1, r0
0062a36c  0a 00 a0 e1                                      mov r0, sl
0062a370  0b 92 f3 eb                                      bl #0x30eba4
0062a374  01 40 54 e2                                      subs r4, r4, #1
0062a378  00 a0 a0 e1                                      mov sl, r0
0062a37c  0c 50 85 e2                                      add r5, r5, #0xc
0062a380  e5 ff ff 1a                                      bne #0x62a31c
0062a384  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a388  04 80 83 e4                                      str r8, [r3], #4
0062a38c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a390  04 90 82 e5                                      str sb, [r2, #4]
0062a394  04 a0 83 e5                                      str sl, [r3, #4]
0062a398  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a39c  01 20 a0 e1                                      mov r2, r1
0062a3a0  04 00 92 e4                                      ldr r0, [r2], #4
0062a3a4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a3a8  04 00 83 e4                                      str r0, [r3], #4
0062a3ac  04 10 91 e5                                      ldr r1, [r1, #4]
0062a3b0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a3b4  04 10 80 e5                                      str r1, [r0, #4]
0062a3b8  04 20 92 e5                                      ldr r2, [r2, #4]
0062a3bc  04 20 83 e5                                      str r2, [r3, #4]
0062a3c0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062ba08, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE13getAddedValueEPvPfiSD_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062ba08  01 00 53 e3                                      cmp r3, #1
0062ba0c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062ba10  03 40 a0 e1                                      mov r4, r3
0062ba14  02 b0 a0 e1                                      mov fp, r2
0062ba18  29 00 00 0a                                      beq #0x62bac4
0062ba1c  00 00 53 e3                                      cmp r3, #0
0062ba20  00 80 a0 03                                      moveq r8, #0
0062ba24  08 90 a0 01                                      moveq sb, r8
0062ba28  08 a0 a0 01                                      moveq sl, r8
0062ba2c  1e 00 00 0a                                      beq #0x62baac
0062ba30  00 80 a0 e3                                      mov r8, #0
0062ba34  01 50 a0 e1                                      mov r5, r1
0062ba38  00 70 a0 e3                                      mov r7, #0
0062ba3c  08 90 a0 e1                                      mov sb, r8
0062ba40  08 a0 a0 e1                                      mov sl, r8
0062ba44  07 60 9b e7                                      ldr r6, [fp, r7]
0062ba48  00 10 95 e5                                      ldr r1, [r5]
0062ba4c  04 70 87 e2                                      add r7, r7, #4
0062ba50  06 00 a0 e1                                      mov r0, r6
0062ba54  c4 8c f3 eb                                      bl #0x30ed6c
0062ba58  00 10 a0 e1                                      mov r1, r0
0062ba5c  08 00 a0 e1                                      mov r0, r8
0062ba60  4f 8c f3 eb                                      bl #0x30eba4
0062ba64  04 10 95 e5                                      ldr r1, [r5, #4]
0062ba68  00 80 a0 e1                                      mov r8, r0
0062ba6c  06 00 a0 e1                                      mov r0, r6
0062ba70  bd 8c f3 eb                                      bl #0x30ed6c
0062ba74  00 10 a0 e1                                      mov r1, r0
0062ba78  09 00 a0 e1                                      mov r0, sb
0062ba7c  48 8c f3 eb                                      bl #0x30eba4
0062ba80  08 10 95 e5                                      ldr r1, [r5, #8]
0062ba84  00 90 a0 e1                                      mov sb, r0
0062ba88  06 00 a0 e1                                      mov r0, r6
0062ba8c  b6 8c f3 eb                                      bl #0x30ed6c
0062ba90  00 10 a0 e1                                      mov r1, r0
0062ba94  0a 00 a0 e1                                      mov r0, sl
0062ba98  41 8c f3 eb                                      bl #0x30eba4
0062ba9c  01 40 54 e2                                      subs r4, r4, #1
0062baa0  00 a0 a0 e1                                      mov sl, r0
0062baa4  0c 50 85 e2                                      add r5, r5, #0xc
0062baa8  e5 ff ff 1a                                      bne #0x62ba44
0062baac  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bab0  04 80 83 e4                                      str r8, [r3], #4
0062bab4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062bab8  04 90 82 e5                                      str sb, [r2, #4]
0062babc  04 a0 83 e5                                      str sl, [r3, #4]
0062bac0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062bac4  01 20 a0 e1                                      mov r2, r1
0062bac8  04 00 92 e4                                      ldr r0, [r2], #4
0062bacc  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062bad0  04 00 83 e4                                      str r0, [r3], #4
0062bad4  04 10 91 e5                                      ldr r1, [r1, #4]
0062bad8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062badc  04 10 80 e5                                      str r1, [r0, #4]
0062bae0  04 20 92 e5                                      ldr r2, [r2, #4]
0062bae4  04 20 83 e5                                      str r2, [r3, #4]
0062bae8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062c3c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE17applyBlendedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c3c4  01 00 a0 e1                                      mov r0, r1
0062c3c8  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c3cc  02 10 a0 e1                                      mov r1, r2
0062c3d0  03 20 a0 e1                                      mov r2, r3
0062c3d4  00 30 9d e5                                      ldr r3, [sp]
0062c3d8  00 c0 8d e5                                      str ip, [sp]
0062c3dc  ba ff ff ea                                      b #0x62c2cc

; FUNCTION 0x0062c4d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_29CSceneNodeScaleComponentMixinINS1_18CSceneNodeScaleZExIfEELi2EfEEEEE15applyAddedValueEPvPfiSD_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleComponentMixin<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, 2, float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062c4d8  01 00 a0 e1                                      mov r0, r1
0062c4dc  04 c0 9d e5                                      ldr ip, [sp, #4]
0062c4e0  02 10 a0 e1                                      mov r1, r2
0062c4e4  03 20 a0 e1                                      mov r2, r3
0062c4e8  00 30 9d e5                                      ldr r3, [sp]
0062c4ec  00 c0 8d e5                                      str ip, [sp]
0062c4f0  ba ff ff ea                                      b #0x62c3e0
