; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060ed60, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEED1Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060ed60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060ef54, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE12getValueSizeEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getValueSize() const
; decoder-mode: arm
0060ef54  0c 00 a0 e3                                      mov r0, #0xc
0060ef58  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060f688, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEED0Ev
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::~CVirtualEx()
; decoder-mode: arm
0060f688  10 40 2d e9                                      push {r4, lr}
0060f68c  00 40 a0 e1                                      mov r4, r0
0060f690  06 fb f3 eb                                      bl #0x30e2b0
0060f694  04 00 a0 e1                                      mov r0, r4
0060f698  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00610ab0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZN6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE11getInstanceEv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getInstance()
; decoder-mode: arm
00610ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
00610ab4  70 40 9f e5                                      ldr r4, [pc, #0x70]
00610ab8  70 30 9f e5                                      ldr r3, [pc, #0x70]
00610abc  04 40 8f e0                                      add r4, pc, r4
00610ac0  03 60 94 e7                                      ldr r6, [r4, r3]
00610ac4  00 30 96 e5                                      ldr r3, [r6]
00610ac8  01 00 13 e3                                      tst r3, #1
00610acc  02 00 00 0a                                      beq #0x610adc
00610ad0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
00610ad4  05 00 94 e7                                      ldr r0, [r4, r5]
00610ad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00610adc  06 00 a0 e1                                      mov r0, r6
00610ae0  21 f7 f3 eb                                      bl #0x30e76c
00610ae4  00 00 50 e3                                      cmp r0, #0
00610ae8  f8 ff ff 0a                                      beq #0x610ad0
00610aec  44 30 9f e5                                      ldr r3, [pc, #0x44]
00610af0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
00610af4  06 00 a0 e1                                      mov r0, r6
00610af8  03 30 94 e7                                      ldr r3, [r4, r3]
00610afc  05 60 94 e7                                      ldr r6, [r4, r5]
00610b00  08 30 83 e2                                      add r3, r3, #8
00610b04  00 30 86 e5                                      str r3, [r6]
00610b08  cb f7 f3 eb                                      bl #0x30ea3c
00610b0c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00610b10  06 00 a0 e1                                      mov r0, r6
00610b14  03 10 94 e7                                      ldr r1, [r4, r3]
00610b18  20 30 9f e5                                      ldr r3, [pc, #0x20]
00610b1c  03 20 94 e7                                      ldr r2, [r4, r3]
00610b20  f7 f5 f3 eb                                      bl #0x30e304
00610b24  05 00 94 e7                                      ldr r0, [r4, r5]
00610b28  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00610b2c  d4 3f 38 00 3c 2f 00 00 34 13 00 00 50 26 00 00  .byte 0xd4, 0x3f, 0x38, 0x00, 0x3c, 0x2f, 0x00, 0x00, 0x34, 0x13, 0x00, 0x00, 0x50, 0x26, 0x00, 0x00
00610b3c  48 3a 00 00 90 18 00 00                          .byte 0x48, 0x3a, 0x00, 0x00, 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0061481c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*) const
; decoder-mode: arm
0061481c  01 00 a0 e1                                      mov r0, r1
00614820  02 10 a0 e1                                      mov r1, r2
00614824  03 20 a0 e1                                      mov r2, r3
00614828  d7 ff ff ea                                      b #0x61478c

; FUNCTION 0x0061490c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, void*) const
; decoder-mode: arm
0061490c  01 00 a0 e1                                      mov r0, r1
00614910  02 10 a0 e1                                      mov r1, r2
00614914  03 20 a0 e1                                      mov r2, r3
00614918  00 30 9d e5                                      ldr r3, [sp]
0061491c  c2 ff ff ea                                      b #0x61482c

; FUNCTION 0x00614a6c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*) const
; decoder-mode: arm
00614a6c  04 c0 9d e5                                      ldr ip, [sp, #4]
00614a70  01 00 a0 e1                                      mov r0, r1
00614a74  02 10 a0 e1                                      mov r1, r2
00614a78  03 20 a0 e1                                      mov r2, r3
00614a7c  00 30 9d e5                                      ldr r3, [sp]
00614a80  00 c0 8d e5                                      str ip, [sp]
00614a84  08 c0 9d e5                                      ldr ip, [sp, #8]
00614a88  04 c0 8d e5                                      str ip, [sp, #4]
00614a8c  a3 ff ff ea                                      b #0x614920

; FUNCTION 0x00618b0c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE16getIdentityValueEPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getIdentityValue(void*) const
; decoder-mode: arm
00618b0c  00 20 a0 e3                                      mov r2, #0
00618b10  01 30 a0 e1                                      mov r3, r1
00618b14  01 20 c3 e4                                      strb r2, [r3], #1
00618b18  01 30 83 e2                                      add r3, r3, #1
00618b1c  01 20 c1 e5                                      strb r2, [r1, #1]
00618b20  01 20 c3 e4                                      strb r2, [r3], #1
00618b24  01 20 c3 e4                                      strb r2, [r3], #1
00618b28  01 20 c3 e4                                      strb r2, [r3], #1
00618b2c  01 20 c3 e4                                      strb r2, [r3], #1
00618b30  01 20 c3 e4                                      strb r2, [r3], #1
00618b34  01 20 c3 e4                                      strb r2, [r3], #1
00618b38  01 20 c3 e4                                      strb r2, [r3], #1
00618b3c  01 20 c3 e4                                      strb r2, [r3], #1
00618b40  01 20 c3 e4                                      strb r2, [r3], #1
00618b44  00 20 c3 e5                                      strb r2, [r3]
00618b48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062076c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE13retrieveValueEPvSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::retrieveValue(void*, void*) const
; decoder-mode: arm
0062076c  10 40 2d e9                                      push {r4, lr}
00620770  00 30 91 e5                                      ldr r3, [r1]
00620774  01 00 a0 e1                                      mov r0, r1
00620778  02 40 a0 e1                                      mov r4, r2
0062077c  0f e0 a0 e1                                      mov lr, pc
00620780  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00620784  00 30 90 e5                                      ldr r3, [r0]
00620788  00 30 84 e5                                      str r3, [r4]
0062078c  04 30 90 e5                                      ldr r3, [r0, #4]
00620790  04 30 84 e5                                      str r3, [r4, #4]
00620794  08 30 90 e5                                      ldr r3, [r0, #8]
00620798  08 30 84 e5                                      str r3, [r4, #8]
0062079c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006233a0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
006233a0  01 00 a0 e1                                      mov r0, r1
006233a4  02 10 a0 e1                                      mov r1, r2
006233a8  03 20 a0 e1                                      mov r2, r3
006233ac  00 30 9d e5                                      ldr r3, [sp]
006233b0  e9 ff ff ea                                      b #0x62335c

; FUNCTION 0x0062390c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE10applyValueEPvSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::applyValue(void*, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062390c  10 40 2d e9                                      push {r4, lr}
00623910  02 00 a0 e1                                      mov r0, r2
00623914  00 30 92 e5                                      ldr r3, [r2]
00623918  0f e0 a0 e1                                      mov lr, pc
0062391c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623920  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006277c4, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE15getBlendedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getBlendedValue(void*, float*, int, void*) const
; decoder-mode: arm
006277c4  01 00 53 e3                                      cmp r3, #1
006277c8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006277cc  03 40 a0 e1                                      mov r4, r3
006277d0  02 b0 a0 e1                                      mov fp, r2
006277d4  29 00 00 0a                                      beq #0x627880
006277d8  00 00 53 e3                                      cmp r3, #0
006277dc  00 80 a0 03                                      moveq r8, #0
006277e0  08 90 a0 01                                      moveq sb, r8
006277e4  08 a0 a0 01                                      moveq sl, r8
006277e8  1e 00 00 0a                                      beq #0x627868
006277ec  00 80 a0 e3                                      mov r8, #0
006277f0  01 50 a0 e1                                      mov r5, r1
006277f4  00 70 a0 e3                                      mov r7, #0
006277f8  08 90 a0 e1                                      mov sb, r8
006277fc  08 a0 a0 e1                                      mov sl, r8
00627800  07 60 9b e7                                      ldr r6, [fp, r7]
00627804  00 10 95 e5                                      ldr r1, [r5]
00627808  04 70 87 e2                                      add r7, r7, #4
0062780c  06 00 a0 e1                                      mov r0, r6
00627810  55 9d f3 eb                                      bl #0x30ed6c
00627814  00 10 a0 e1                                      mov r1, r0
00627818  08 00 a0 e1                                      mov r0, r8
0062781c  e0 9c f3 eb                                      bl #0x30eba4
00627820  04 10 95 e5                                      ldr r1, [r5, #4]
00627824  00 80 a0 e1                                      mov r8, r0
00627828  06 00 a0 e1                                      mov r0, r6
0062782c  4e 9d f3 eb                                      bl #0x30ed6c
00627830  00 10 a0 e1                                      mov r1, r0
00627834  09 00 a0 e1                                      mov r0, sb
00627838  d9 9c f3 eb                                      bl #0x30eba4
0062783c  08 10 95 e5                                      ldr r1, [r5, #8]
00627840  00 90 a0 e1                                      mov sb, r0
00627844  06 00 a0 e1                                      mov r0, r6
00627848  47 9d f3 eb                                      bl #0x30ed6c
0062784c  00 10 a0 e1                                      mov r1, r0
00627850  0a 00 a0 e1                                      mov r0, sl
00627854  d2 9c f3 eb                                      bl #0x30eba4
00627858  01 40 54 e2                                      subs r4, r4, #1
0062785c  00 a0 a0 e1                                      mov sl, r0
00627860  0c 50 85 e2                                      add r5, r5, #0xc
00627864  e5 ff ff 1a                                      bne #0x627800
00627868  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062786c  04 80 83 e4                                      str r8, [r3], #4
00627870  28 20 9d e5                                      ldr r2, [sp, #0x28]
00627874  04 90 82 e5                                      str sb, [r2, #4]
00627878  04 a0 83 e5                                      str sl, [r3, #4]
0062787c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00627880  01 20 a0 e1                                      mov r2, r1
00627884  04 00 92 e4                                      ldr r0, [r2], #4
00627888  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062788c  04 00 83 e4                                      str r0, [r3], #4
00627890  04 10 91 e5                                      ldr r1, [r1, #4]
00627894  28 00 9d e5                                      ldr r0, [sp, #0x28]
00627898  04 10 80 e5                                      str r1, [r0, #4]
0062789c  04 20 92 e5                                      ldr r2, [r2, #4]
006278a0  04 20 83 e5                                      str r2, [r3, #4]
006278a4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00628128, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE18applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::applyKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
00628128  04 c0 9d e5                                      ldr ip, [sp, #4]
0062812c  01 00 a0 e1                                      mov r0, r1
00628130  02 10 a0 e1                                      mov r1, r2
00628134  03 20 a0 e1                                      mov r2, r3
00628138  00 30 9d e5                                      ldr r3, [sp]
0062813c  00 c0 8d e5                                      str ip, [sp]
00628140  08 c0 9d e5                                      ldr ip, [sp, #8]
00628144  04 c0 8d e5                                      str ip, [sp, #4]
00628148  e5 ff ff ea                                      b #0x6280e4

; FUNCTION 0x0062814c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getKeyBasedValue(glitch::collada::SAnimationAccessor const&, int, int, float, void*) const
; decoder-mode: arm
0062814c  01 00 a0 e1                                      mov r0, r1
00628150  04 c0 9d e5                                      ldr ip, [sp, #4]
00628154  02 10 a0 e1                                      mov r1, r2
00628158  03 20 a0 e1                                      mov r2, r3
0062815c  00 30 9d e5                                      ldr r3, [sp]
00628160  00 c0 8d e5                                      str ip, [sp]
00628164  85 ff ff ea                                      b #0x627f80

; FUNCTION 0x0062b3cc, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE13getAddedValueEPvPfiSB_
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::getAddedValue(void*, float*, int, void*) const
; decoder-mode: arm
0062b3cc  01 00 53 e3                                      cmp r3, #1
0062b3d0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062b3d4  03 40 a0 e1                                      mov r4, r3
0062b3d8  02 b0 a0 e1                                      mov fp, r2
0062b3dc  29 00 00 0a                                      beq #0x62b488
0062b3e0  00 00 53 e3                                      cmp r3, #0
0062b3e4  00 80 a0 03                                      moveq r8, #0
0062b3e8  08 90 a0 01                                      moveq sb, r8
0062b3ec  08 a0 a0 01                                      moveq sl, r8
0062b3f0  1e 00 00 0a                                      beq #0x62b470
0062b3f4  00 80 a0 e3                                      mov r8, #0
0062b3f8  01 50 a0 e1                                      mov r5, r1
0062b3fc  00 70 a0 e3                                      mov r7, #0
0062b400  08 90 a0 e1                                      mov sb, r8
0062b404  08 a0 a0 e1                                      mov sl, r8
0062b408  07 60 9b e7                                      ldr r6, [fp, r7]
0062b40c  00 10 95 e5                                      ldr r1, [r5]
0062b410  04 70 87 e2                                      add r7, r7, #4
0062b414  06 00 a0 e1                                      mov r0, r6
0062b418  53 8e f3 eb                                      bl #0x30ed6c
0062b41c  00 10 a0 e1                                      mov r1, r0
0062b420  08 00 a0 e1                                      mov r0, r8
0062b424  de 8d f3 eb                                      bl #0x30eba4
0062b428  04 10 95 e5                                      ldr r1, [r5, #4]
0062b42c  00 80 a0 e1                                      mov r8, r0
0062b430  06 00 a0 e1                                      mov r0, r6
0062b434  4c 8e f3 eb                                      bl #0x30ed6c
0062b438  00 10 a0 e1                                      mov r1, r0
0062b43c  09 00 a0 e1                                      mov r0, sb
0062b440  d7 8d f3 eb                                      bl #0x30eba4
0062b444  08 10 95 e5                                      ldr r1, [r5, #8]
0062b448  00 90 a0 e1                                      mov sb, r0
0062b44c  06 00 a0 e1                                      mov r0, r6
0062b450  45 8e f3 eb                                      bl #0x30ed6c
0062b454  00 10 a0 e1                                      mov r1, r0
0062b458  0a 00 a0 e1                                      mov r0, sl
0062b45c  d0 8d f3 eb                                      bl #0x30eba4
0062b460  01 40 54 e2                                      subs r4, r4, #1
0062b464  00 a0 a0 e1                                      mov sl, r0
0062b468  0c 50 85 e2                                      add r5, r5, #0xc
0062b46c  e5 ff ff 1a                                      bne #0x62b408
0062b470  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b474  04 80 83 e4                                      str r8, [r3], #4
0062b478  28 20 9d e5                                      ldr r2, [sp, #0x28]
0062b47c  04 90 82 e5                                      str sb, [r2, #4]
0062b480  04 a0 83 e5                                      str sl, [r3, #4]
0062b484  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062b488  01 20 a0 e1                                      mov r2, r1
0062b48c  04 00 92 e4                                      ldr r0, [r2], #4
0062b490  28 30 9d e5                                      ldr r3, [sp, #0x28]
0062b494  04 00 83 e4                                      str r0, [r3], #4
0062b498  04 10 91 e5                                      ldr r1, [r1, #4]
0062b49c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0062b4a0  04 10 80 e5                                      str r1, [r0, #4]
0062b4a4  04 20 92 e5                                      ldr r2, [r2, #4]
0062b4a8  04 20 83 e5                                      str r2, [r3, #4]
0062b4ac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062d2dc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE17applyBlendedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::applyBlendedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d2dc  01 00 a0 e1                                      mov r0, r1
0062d2e0  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d2e4  02 10 a0 e1                                      mov r1, r2
0062d2e8  03 20 a0 e1                                      mov r2, r3
0062d2ec  00 30 9d e5                                      ldr r3, [sp]
0062d2f0  00 c0 8d e5                                      str ip, [sp]
0062d2f4  ba ff ff ea                                      b #0x62d1e4

; FUNCTION 0x0062d3f0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >
; alias: _ZNK6glitch7collada15animation_track10CVirtualExINS1_13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEEEE15applyAddedValueEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CVirtualEx<glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> > >::applyAddedValue(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*) const
; decoder-mode: arm
0062d3f0  01 00 a0 e1                                      mov r0, r1
0062d3f4  04 c0 9d e5                                      ldr ip, [sp, #4]
0062d3f8  02 10 a0 e1                                      mov r1, r2
0062d3fc  03 20 a0 e1                                      mov r2, r3
0062d400  00 30 9d e5                                      ldr r3, [sp]
0062d404  00 c0 8d e5                                      str ip, [sp]
0062d408  ba ff ff ea                                      b #0x62d2f8
