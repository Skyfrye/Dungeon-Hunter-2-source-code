; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed28, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060ed28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060eff8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getValueSize() const
; decoder-mode: arm
0060eff8  0c 00 a0 e3                                      mov r0, #0xc
0060effc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f000, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0060f000  10 40 2d e9                                      push {r4, lr}
0060f004  00 30 91 e5                                      ldr r3, [r1]
0060f008  01 00 a0 e1                                      mov r0, r1
0060f00c  02 40 a0 e1                                      mov r4, r2
0060f010  0f e0 a0 e1                                      mov lr, pc
0060f014  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0060f018  00 30 90 e5                                      ldr r3, [r0]
0060f01c  00 30 84 e5                                      str r3, [r4]
0060f020  04 30 90 e5                                      ldr r3, [r0, #4]
0060f024  04 30 84 e5                                      str r3, [r4, #4]
0060f028  08 30 90 e5                                      ldr r3, [r0, #8]
0060f02c  08 30 84 e5                                      str r3, [r4, #8]
0060f030  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060f570, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::~CVirtualEx()
; decoder-mode: arm
0060f570  10 40 2d e9                                      push {r4, lr}
0060f574  00 40 a0 e1                                      mov r4, r0
0060f578  4c fb f3 eb                                      bl #0x30e2b0
0060f57c  04 00 a0 e1                                      mov r0, r4
0060f580  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610298, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getInstance()
; decoder-mode: arm
00610298  70 40 2d e9                                      push {r4, r5, r6, lr}
0061029c  70 40 9f e5                                      ldr r4, [pc, #0x70]
006102a0  70 30 9f e5                                      ldr r3, [pc, #0x70]
006102a4  04 40 8f e0                                      add r4, pc, r4
006102a8  03 60 94 e7                                      ldr r6, [r4, r3]
006102ac  00 30 96 e5                                      ldr r3, [r6]
006102b0  01 00 13 e3                                      tst r3, #1
006102b4  02 00 00 0a                                      beq #0x6102c4
006102b8  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006102bc  05 00 94 e7                                      ldr r0, [r4, r5]
006102c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006102c4  06 00 a0 e1                                      mov r0, r6
006102c8  27 f9 f3 eb                                      bl #0x30e76c
006102cc  00 00 50 e3                                      cmp r0, #0
006102d0  f8 ff ff 0a                                      beq #0x6102b8
006102d4  44 30 9f e5                                      ldr r3, [pc, #0x44]
006102d8  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
006102dc  06 00 a0 e1                                      mov r0, r6
006102e0  03 30 94 e7                                      ldr r3, [r4, r3]
006102e4  05 60 94 e7                                      ldr r6, [r4, r5]
006102e8  08 30 83 e2                                      add r3, r3, #8
006102ec  00 30 86 e5                                      str r3, [r6]
006102f0  d1 f9 f3 eb                                      bl #0x30ea3c
006102f4  28 30 9f e5                                      ldr r3, [pc, #0x28]
006102f8  06 00 a0 e1                                      mov r0, r6
006102fc  03 10 94 e7                                      ldr r1, [r4, r3]
00610300  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610304  03 20 94 e7                                      ldr r2, [r4, r3]
00610308  fd f7 f3 eb                                      bl #0x30e304
0061030c  05 00 94 e7                                      ldr r0, [r4, r5]
00610310  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610314  ec 47 38 00 28 4a 00 00 90 39 00 00 64 43 00 00  .byte 0xec, 0x47, 0x38, 0x00, 0x28, 0x4a, 0x00, 0x00, 0x90, 0x39, 0x00, 0x00, 0x64, 0x43, 0x00, 0x00
00610324  c0 13 00 00 90 18 00 00                          .byte 0xc0, 0x13, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0061225c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061225c  70 40 2d e9                                      push {r4, r5, r6, lr}
00612260  01 00 a0 e1                                      mov r0, r1
00612264  00 10 a0 e3                                      mov r1, #0
00612268  03 40 a0 e1                                      mov r4, r3
0061226c  02 50 a0 e1                                      mov r5, r2
00612270  eb 5e 01 eb                                      bl #0x669e24
00612274  0c 30 a0 e3                                      mov r3, #0xc
00612278  04 20 90 e5                                      ldr r2, [r0, #4]
0061227c  93 05 05 e0                                      mul r5, r3, r5
00612280  04 30 a0 e1                                      mov r3, r4
00612284  05 10 92 e7                                      ldr r1, [r2, r5]
00612288  05 50 82 e0                                      add r5, r2, r5
0061228c  04 10 83 e4                                      str r1, [r3], #4
00612290  04 20 95 e5                                      ldr r2, [r5, #4]
00612294  04 20 84 e5                                      str r2, [r4, #4]
00612298  08 20 95 e5                                      ldr r2, [r5, #8]
0061229c  04 20 83 e5                                      str r2, [r3, #4]
006122a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006122a4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
006122a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006122a8  01 00 a0 e1                                      mov r0, r1
006122ac  00 10 a0 e3                                      mov r1, #0
006122b0  03 80 a0 e1                                      mov r8, r3
006122b4  02 40 a0 e1                                      mov r4, r2
006122b8  18 70 9d e5                                      ldr r7, [sp, #0x18]
006122bc  d8 5e 01 eb                                      bl #0x669e24
006122c0  04 30 90 e5                                      ldr r3, [r0, #4]
006122c4  0c 60 a0 e3                                      mov r6, #0xc
006122c8  00 50 a0 e3                                      mov r5, #0
006122cc  96 34 24 e0                                      mla r4, r6, r4, r3
006122d0  96 38 26 e0                                      mla r6, r6, r8, r3
006122d4  05 00 96 e7                                      ldr r0, [r6, r5]
006122d8  05 10 94 e7                                      ldr r1, [r4, r5]
006122dc  32 f0 f3 eb                                      bl #0x30e3ac
006122e0  05 00 87 e7                                      str r0, [r7, r5]
006122e4  04 50 85 e2                                      add r5, r5, #4
006122e8  0c 00 55 e3                                      cmp r5, #0xc
006122ec  f8 ff ff 1a                                      bne #0x6122d4
006122f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00612370, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00612370  04 c0 9d e5                                      ldr ip, [sp, #4]
00612374  01 00 a0 e1                                      mov r0, r1
00612378  02 10 a0 e1                                      mov r1, r2
0061237c  03 20 a0 e1                                      mov r2, r3
00612380  00 30 9d e5                                      ldr r3, [sp]
00612384  00 c0 8d e5                                      str ip, [sp]
00612388  08 c0 9d e5                                      ldr ip, [sp, #8]
0061238c  04 c0 8d e5                                      str ip, [sp, #4]
00612390  d7 ff ff ea                                      b #0x6122f4

; FUNCTION 0x0061878c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getIdentityValue(void*) const
; decoder-mode: arm
0061878c  00 20 a0 e3                                      mov r2, #0
00618790  01 30 a0 e1                                      mov r3, r1
00618794  01 20 c3 e4                                      strb r2, [r3], #1
00618798  01 30 83 e2                                      add r3, r3, #1
0061879c  01 20 c1 e5                                      strb r2, [r1, #1]
006187a0  01 20 c3 e4                                      strb r2, [r3], #1
006187a4  01 20 c3 e4                                      strb r2, [r3], #1
006187a8  01 20 c3 e4                                      strb r2, [r3], #1
006187ac  01 20 c3 e4                                      strb r2, [r3], #1
006187b0  01 20 c3 e4                                      strb r2, [r3], #1
006187b4  01 20 c3 e4                                      strb r2, [r3], #1
006187b8  01 20 c3 e4                                      strb r2, [r3], #1
006187bc  01 20 c3 e4                                      strb r2, [r3], #1
006187c0  01 20 c3 e4                                      strb r2, [r3], #1
006187c4  00 20 c3 e5                                      strb r2, [r3]
006187c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00622d58, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00622d58  01 00 a0 e1                                      mov r0, r1
00622d5c  02 10 a0 e1                                      mov r1, r2
00622d60  03 20 a0 e1                                      mov r2, r3
00622d64  00 30 9d e5                                      ldr r3, [sp]
00622d68  de ff ff ea                                      b #0x622ce8

; FUNCTION 0x00623dd8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00623dd8  10 40 2d e9                                      push {r4, lr}
00623ddc  02 00 a0 e1                                      mov r0, r2
00623de0  00 30 92 e5                                      ldr r3, [r2]
00623de4  0f e0 a0 e1                                      mov lr, pc
00623de8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623dec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00626b4c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
00626b4c  01 00 53 e3                                      cmp r3, #1
00626b50  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00626b54  03 40 a0 e1                                      mov r4, r3
00626b58  02 b0 a0 e1                                      mov fp, r2
00626b5c  29 00 00 0a                                      beq #0x626c08
00626b60  00 00 53 e3                                      cmp r3, #0
00626b64  00 80 a0 03                                      moveq r8, #0
00626b68  08 90 a0 01                                      moveq sb, r8
00626b6c  08 a0 a0 01                                      moveq sl, r8
00626b70  1e 00 00 0a                                      beq #0x626bf0
00626b74  00 80 a0 e3                                      mov r8, #0
00626b78  01 50 a0 e1                                      mov r5, r1
00626b7c  00 70 a0 e3                                      mov r7, #0
00626b80  08 90 a0 e1                                      mov sb, r8
00626b84  08 a0 a0 e1                                      mov sl, r8
00626b88  07 60 9b e7                                      ldr r6, [fp, r7]
00626b8c  00 10 95 e5                                      ldr r1, [r5]
00626b90  04 70 87 e2                                      add r7, r7, #4
00626b94  06 00 a0 e1                                      mov r0, r6
00626b98  73 a0 f3 eb                                      bl #0x30ed6c
00626b9c  00 10 a0 e1                                      mov r1, r0
00626ba0  08 00 a0 e1                                      mov r0, r8
00626ba4  fe 9f f3 eb                                      bl #0x30eba4
00626ba8  04 10 95 e5                                      ldr r1, [r5, #4]
00626bac  00 80 a0 e1                                      mov r8, r0
00626bb0  06 00 a0 e1                                      mov r0, r6
00626bb4  6c a0 f3 eb                                      bl #0x30ed6c
00626bb8  00 10 a0 e1                                      mov r1, r0
00626bbc  09 00 a0 e1                                      mov r0, sb
00626bc0  f7 9f f3 eb                                      bl #0x30eba4
00626bc4  08 10 95 e5                                      ldr r1, [r5, #8]
00626bc8  00 90 a0 e1                                      mov sb, r0
00626bcc  06 00 a0 e1                                      mov r0, r6
00626bd0  65 a0 f3 eb                                      bl #0x30ed6c
00626bd4  00 10 a0 e1                                      mov r1, r0
00626bd8  0a 00 a0 e1                                      mov r0, sl
00626bdc  f0 9f f3 eb                                      bl #0x30eba4
00626be0  01 40 54 e2                                      subs r4, r4, #1
00626be4  00 a0 a0 e1                                      mov sl, r0
00626be8  0c 50 85 e2                                      add r5, r5, #0xc
00626bec  e5 ff ff 1a                                      bne #0x626b88
00626bf0  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626bf4  04 80 83 e4                                      str r8, [r3], #4
00626bf8  28 20 9d e5                                      ldr r2, [sp, #0x28]
00626bfc  04 90 82 e5                                      str sb, [r2, #4]
00626c00  04 a0 83 e5                                      str sl, [r3, #4]
00626c04  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00626c08  01 20 a0 e1                                      mov r2, r1
00626c0c  04 00 92 e4                                      ldr r0, [r2], #4
00626c10  28 30 9d e5                                      ldr r3, [sp, #0x28]
00626c14  04 00 83 e4                                      str r0, [r3], #4
00626c18  04 10 91 e5                                      ldr r1, [r1, #4]
00626c1c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00626c20  04 10 80 e5                                      str r1, [r0, #4]
00626c24  04 20 92 e5                                      ldr r2, [r2, #4]
00626c28  04 20 83 e5                                      str r2, [r3, #4]
00626c2c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062859c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062859c  01 00 a0 e1                                      mov r0, r1
006285a0  04 c0 9d e5                                      ldr ip, [sp, #4]
006285a4  02 10 a0 e1                                      mov r1, r2
006285a8  03 20 a0 e1                                      mov r2, r3
006285ac  00 30 9d e5                                      ldr r3, [sp]
006285b0  00 c0 8d e5                                      str ip, [sp]
006285b4  ba ff ff ea                                      b #0x6284a4

; FUNCTION 0x006286b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006286b0  01 00 a0 e1                                      mov r0, r1
006286b4  04 c0 9d e5                                      ldr ip, [sp, #4]
006286b8  02 10 a0 e1                                      mov r1, r2
006286bc  03 20 a0 e1                                      mov r2, r3
006286c0  00 30 9d e5                                      ldr r3, [sp]
006286c4  00 c0 8d e5                                      str ip, [sp]
006286c8  ba ff ff ea                                      b #0x6285b8

; FUNCTION 0x00628810, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628810  04 c0 9d e5                                      ldr ip, [sp, #4]
00628814  01 00 a0 e1                                      mov r0, r1
00628818  02 10 a0 e1                                      mov r1, r2
0062881c  03 20 a0 e1                                      mov r2, r3
00628820  00 30 9d e5                                      ldr r3, [sp]
00628824  00 c0 8d e5                                      str ip, [sp]
00628828  08 c0 9d e5                                      ldr ip, [sp, #8]
0062882c  04 c0 8d e5                                      str ip, [sp, #4]
00628830  e5 ff ff ea                                      b #0x6287cc

; FUNCTION 0x00628834, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
00628834  01 00 a0 e1                                      mov r0, r1
00628838  04 c0 9d e5                                      ldr ip, [sp, #4]
0062883c  02 10 a0 e1                                      mov r1, r2
00628840  03 20 a0 e1                                      mov r2, r3
00628844  00 30 9d e5                                      ldr r3, [sp]
00628848  00 c0 8d e5                                      str ip, [sp]
0062884c  9e ff ff ea                                      b #0x6286cc

; FUNCTION 0x0062a754, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062a754  01 00 53 e3                                      cmp r3, #1
0062a758  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062a75c  03 40 a0 e1                                      mov r4, r3
0062a760  02 b0 a0 e1                                      mov fp, r2
0062a764  29 00 00 0a                                      beq #0x62a810
0062a768  00 00 53 e3                                      cmp r3, #0
0062a76c  00 80 a0 03                                      moveq r8, #0
0062a770  08 90 a0 01                                      moveq sb, r8
0062a774  08 a0 a0 01                                      moveq sl, r8
0062a778  1e 00 00 0a                                      beq #0x62a7f8
0062a77c  00 80 a0 e3                                      mov r8, #0
0062a780  01 50 a0 e1                                      mov r5, r1
0062a784  00 70 a0 e3                                      mov r7, #0
0062a788  08 90 a0 e1                                      mov sb, r8
0062a78c  08 a0 a0 e1                                      mov sl, r8
0062a790  07 60 9b e7                                      ldr r6, [fp, r7]
0062a794  00 10 95 e5                                      ldr r1, [r5]
0062a798  04 70 87 e2                                      add r7, r7, #4
0062a79c  06 00 a0 e1                                      mov r0, r6
0062a7a0  71 91 f3 eb                                      bl #0x30ed6c
0062a7a4  00 10 a0 e1                                      mov r1, r0
0062a7a8  08 00 a0 e1                                      mov r0, r8
0062a7ac  fc 90 f3 eb                                      bl #0x30eba4
0062a7b0  04 10 95 e5                                      ldr r1, [r5, #4]
0062a7b4  00 80 a0 e1                                      mov r8, r0
0062a7b8  06 00 a0 e1                                      mov r0, r6
0062a7bc  6a 91 f3 eb                                      bl #0x30ed6c
0062a7c0  00 10 a0 e1                                      mov r1, r0
0062a7c4  09 00 a0 e1                                      mov r0, sb
0062a7c8  f5 90 f3 eb                                      bl #0x30eba4
0062a7cc  08 10 95 e5                                      ldr r1, [r5, #8]
0062a7d0  00 90 a0 e1                                      mov sb, r0
0062a7d4  06 00 a0 e1                                      mov r0, r6
0062a7d8  63 91 f3 eb                                      bl #0x30ed6c
0062a7dc  00 10 a0 e1                                      mov r1, r0
0062a7e0  0a 00 a0 e1                                      mov r0, sl
0062a7e4  ee 90 f3 eb                                      bl #0x30eba4
0062a7e8  01 40 54 e2                                      subs r4, r4, #1
0062a7ec  00 a0 a0 e1                                      mov sl, r0
0062a7f0  0c 50 85 e2                                      add r5, r5, #0xc
0062a7f4  e5 ff ff 1a                                      bne #0x62a790
0062a7f8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a7fc  04 80 83 e4                                      str r8, [r3], #4
0062a800  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062a804  04 90 82 e5                                      str sb, [r2, #4]
0062a808  04 a0 83 e5                                      str sl, [r3, #4]
0062a80c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062a810  01 20 a0 e1                                      mov r2, r1
0062a814  04 00 92 e4                                      ldr r0, [r2], #4
0062a818  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062a81c  04 00 83 e4                                      str r0, [r3], #4
0062a820  04 10 91 e5                                      ldr r1, [r1, #4]
0062a824  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062a828  04 10 80 e5                                      str r1, [r0, #4]
0062a82c  04 20 92 e5                                      ldr r2, [r2, #4]
0062a830  04 20 83 e5                                      str r2, [r3, #4]
0062a834  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
