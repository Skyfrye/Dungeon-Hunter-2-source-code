; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622f9c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622f9c  30 40 2d e9                                      push {r4, r5, lr}
00622fa0  14 d0 4d e2                                      sub sp, sp, #0x14
00622fa4  04 50 8d e2                                      add r5, sp, #4
00622fa8  00 30 a0 e3                                      mov r3, #0
00622fac  02 40 a0 e1                                      mov r4, r2
00622fb0  05 20 a0 e1                                      mov r2, r5
00622fb4  0c 30 8d e5                                      str r3, [sp, #0xc]
00622fb8  04 30 8d e5                                      str r3, [sp, #4]
00622fbc  08 30 8d e5                                      str r3, [sp, #8]
00622fc0  95 c8 ff eb                                      bl #0x61521c
00622fc4  04 00 a0 e1                                      mov r0, r4
00622fc8  05 10 a0 e1                                      mov r1, r5
00622fcc  00 30 94 e5                                      ldr r3, [r4]
00622fd0  0f e0 a0 e1                                      mov lr, pc
00622fd4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622fd8  14 d0 8d e2                                      add sp, sp, #0x14
00622fdc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00622ff4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622ff4  30 40 2d e9                                      push {r4, r5, lr}
00622ff8  1c d0 4d e2                                      sub sp, sp, #0x1c
00622ffc  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623000  00 c0 a0 e3                                      mov ip, #0
00623004  0c 50 8d e2                                      add r5, sp, #0xc
00623008  00 50 8d e5                                      str r5, [sp]
0062300c  14 c0 8d e5                                      str ip, [sp, #0x14]
00623010  0c c0 8d e5                                      str ip, [sp, #0xc]
00623014  10 c0 8d e5                                      str ip, [sp, #0x10]
00623018  aa c8 ff eb                                      bl #0x6152c8
0062301c  04 00 a0 e1                                      mov r0, r4
00623020  05 10 a0 e1                                      mov r1, r5
00623024  00 30 94 e5                                      ldr r3, [r4]
00623028  0f e0 a0 e1                                      mov lr, pc
0062302c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623030  1c d0 8d e2                                      add sp, sp, #0x1c
00623034  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006295cc, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006295cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006295d0  01 00 52 e3                                      cmp r2, #1
006295d4  1c d0 4d e2                                      sub sp, sp, #0x1c
006295d8  00 a0 a0 e3                                      mov sl, #0
006295dc  02 40 a0 e1                                      mov r4, r2
006295e0  01 50 a0 e1                                      mov r5, r1
006295e4  04 30 8d e5                                      str r3, [sp, #4]
006295e8  14 a0 8d e5                                      str sl, [sp, #0x14]
006295ec  2b 00 00 0a                                      beq #0x6296a0
006295f0  00 00 52 e3                                      cmp r2, #0
006295f4  0a b0 a0 01                                      moveq fp, sl
006295f8  0a 90 a0 01                                      moveq sb, sl
006295fc  1d 00 00 0a                                      beq #0x629678
00629600  00 60 a0 e1                                      mov r6, r0
00629604  00 80 a0 e3                                      mov r8, #0
00629608  0a b0 a0 e1                                      mov fp, sl
0062960c  0a 90 a0 e1                                      mov sb, sl
00629610  08 70 95 e7                                      ldr r7, [r5, r8]
00629614  00 10 96 e5                                      ldr r1, [r6]
00629618  04 80 88 e2                                      add r8, r8, #4
0062961c  07 00 a0 e1                                      mov r0, r7
00629620  d1 95 f3 eb                                      bl #0x30ed6c
00629624  00 10 a0 e1                                      mov r1, r0
00629628  0a 00 a0 e1                                      mov r0, sl
0062962c  5c 95 f3 eb                                      bl #0x30eba4
00629630  04 10 96 e5                                      ldr r1, [r6, #4]
00629634  00 a0 a0 e1                                      mov sl, r0
00629638  07 00 a0 e1                                      mov r0, r7
0062963c  ca 95 f3 eb                                      bl #0x30ed6c
00629640  00 10 a0 e1                                      mov r1, r0
00629644  0b 00 a0 e1                                      mov r0, fp
00629648  55 95 f3 eb                                      bl #0x30eba4
0062964c  08 10 96 e5                                      ldr r1, [r6, #8]
00629650  00 b0 a0 e1                                      mov fp, r0
00629654  07 00 a0 e1                                      mov r0, r7
00629658  c3 95 f3 eb                                      bl #0x30ed6c
0062965c  00 10 a0 e1                                      mov r1, r0
00629660  09 00 a0 e1                                      mov r0, sb
00629664  4e 95 f3 eb                                      bl #0x30eba4
00629668  01 40 54 e2                                      subs r4, r4, #1
0062966c  00 90 a0 e1                                      mov sb, r0
00629670  0c 60 86 e2                                      add r6, r6, #0xc
00629674  e5 ff ff 1a                                      bne #0x629610
00629678  18 10 8d e2                                      add r1, sp, #0x18
0062967c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629680  10 b0 8d e5                                      str fp, [sp, #0x10]
00629684  08 90 81 e5                                      str sb, [r1, #8]
00629688  04 00 9d e5                                      ldr r0, [sp, #4]
0062968c  00 30 90 e5                                      ldr r3, [r0]
00629690  0f e0 a0 e1                                      mov lr, pc
00629694  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629698  1c d0 8d e2                                      add sp, sp, #0x1c
0062969c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006296a0  00 30 a0 e1                                      mov r3, r0
006296a4  04 c0 93 e4                                      ldr ip, [r3], #4
006296a8  04 20 90 e5                                      ldr r2, [r0, #4]
006296ac  18 10 8d e2                                      add r1, sp, #0x18
006296b0  04 30 93 e5                                      ldr r3, [r3, #4]
006296b4  0c c0 21 e5                                      str ip, [r1, #-0xc]!
006296b8  10 20 8d e5                                      str r2, [sp, #0x10]
006296bc  08 30 81 e5                                      str r3, [r1, #8]
006296c0  f0 ff ff ea                                      b #0x629688

; FUNCTION 0x006296e0, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIcEELi0EcEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<char>, 0, char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006296e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006296e4  01 00 52 e3                                      cmp r2, #1
006296e8  1c d0 4d e2                                      sub sp, sp, #0x1c
006296ec  00 a0 a0 e3                                      mov sl, #0
006296f0  02 40 a0 e1                                      mov r4, r2
006296f4  01 50 a0 e1                                      mov r5, r1
006296f8  04 30 8d e5                                      str r3, [sp, #4]
006296fc  14 a0 8d e5                                      str sl, [sp, #0x14]
00629700  2b 00 00 0a                                      beq #0x6297b4
00629704  00 00 52 e3                                      cmp r2, #0
00629708  0a b0 a0 01                                      moveq fp, sl
0062970c  0a 90 a0 01                                      moveq sb, sl
00629710  1d 00 00 0a                                      beq #0x62978c
00629714  00 60 a0 e1                                      mov r6, r0
00629718  00 80 a0 e3                                      mov r8, #0
0062971c  0a b0 a0 e1                                      mov fp, sl
00629720  0a 90 a0 e1                                      mov sb, sl
00629724  08 70 95 e7                                      ldr r7, [r5, r8]
00629728  00 10 96 e5                                      ldr r1, [r6]
0062972c  04 80 88 e2                                      add r8, r8, #4
00629730  07 00 a0 e1                                      mov r0, r7
00629734  8c 95 f3 eb                                      bl #0x30ed6c
00629738  00 10 a0 e1                                      mov r1, r0
0062973c  0a 00 a0 e1                                      mov r0, sl
00629740  17 95 f3 eb                                      bl #0x30eba4
00629744  04 10 96 e5                                      ldr r1, [r6, #4]
00629748  00 a0 a0 e1                                      mov sl, r0
0062974c  07 00 a0 e1                                      mov r0, r7
00629750  85 95 f3 eb                                      bl #0x30ed6c
00629754  00 10 a0 e1                                      mov r1, r0
00629758  0b 00 a0 e1                                      mov r0, fp
0062975c  10 95 f3 eb                                      bl #0x30eba4
00629760  08 10 96 e5                                      ldr r1, [r6, #8]
00629764  00 b0 a0 e1                                      mov fp, r0
00629768  07 00 a0 e1                                      mov r0, r7
0062976c  7e 95 f3 eb                                      bl #0x30ed6c
00629770  00 10 a0 e1                                      mov r1, r0
00629774  09 00 a0 e1                                      mov r0, sb
00629778  09 95 f3 eb                                      bl #0x30eba4
0062977c  01 40 54 e2                                      subs r4, r4, #1
00629780  00 90 a0 e1                                      mov sb, r0
00629784  0c 60 86 e2                                      add r6, r6, #0xc
00629788  e5 ff ff 1a                                      bne #0x629724
0062978c  18 10 8d e2                                      add r1, sp, #0x18
00629790  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629794  10 b0 8d e5                                      str fp, [sp, #0x10]
00629798  08 90 81 e5                                      str sb, [r1, #8]
0062979c  04 00 9d e5                                      ldr r0, [sp, #4]
006297a0  00 30 90 e5                                      ldr r3, [r0]
006297a4  0f e0 a0 e1                                      mov lr, pc
006297a8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006297ac  1c d0 8d e2                                      add sp, sp, #0x1c
006297b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006297b4  00 30 a0 e1                                      mov r3, r0
006297b8  04 c0 93 e4                                      ldr ip, [r3], #4
006297bc  04 20 90 e5                                      ldr r2, [r0, #4]
006297c0  18 10 8d e2                                      add r1, sp, #0x18
006297c4  04 30 93 e5                                      ldr r3, [r3, #4]
006297c8  0c c0 21 e5                                      str ip, [r1, #-0xc]!
006297cc  10 20 8d e5                                      str r2, [sp, #0x10]
006297d0  08 30 81 e5                                      str r3, [r1, #8]
006297d4  f0 ff ff ea                                      b #0x62979c
