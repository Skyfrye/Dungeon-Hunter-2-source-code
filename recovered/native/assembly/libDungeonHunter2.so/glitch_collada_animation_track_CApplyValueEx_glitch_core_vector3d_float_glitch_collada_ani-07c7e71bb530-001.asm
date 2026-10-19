; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062305c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062305c  30 40 2d e9                                      push {r4, r5, lr}
00623060  14 d0 4d e2                                      sub sp, sp, #0x14
00623064  04 50 8d e2                                      add r5, sp, #4
00623068  00 30 a0 e3                                      mov r3, #0
0062306c  02 40 a0 e1                                      mov r4, r2
00623070  05 20 a0 e1                                      mov r2, r5
00623074  0c 30 8d e5                                      str r3, [sp, #0xc]
00623078  04 30 8d e5                                      str r3, [sp, #4]
0062307c  08 30 8d e5                                      str r3, [sp, #8]
00623080  fa f2 ff eb                                      bl #0x61fc70
00623084  04 00 a0 e1                                      mov r0, r4
00623088  05 10 a0 e1                                      mov r1, r5
0062308c  00 30 94 e5                                      ldr r3, [r4]
00623090  0f e0 a0 e1                                      mov lr, pc
00623094  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623098  14 d0 8d e2                                      add sp, sp, #0x14
0062309c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006230b4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006230b4  30 40 2d e9                                      push {r4, r5, lr}
006230b8  1c d0 4d e2                                      sub sp, sp, #0x1c
006230bc  28 40 9d e5                                      ldr r4, [sp, #0x28]
006230c0  00 c0 a0 e3                                      mov ip, #0
006230c4  0c 50 8d e2                                      add r5, sp, #0xc
006230c8  00 50 8d e5                                      str r5, [sp]
006230cc  14 c0 8d e5                                      str ip, [sp, #0x14]
006230d0  0c c0 8d e5                                      str ip, [sp, #0xc]
006230d4  10 c0 8d e5                                      str ip, [sp, #0x10]
006230d8  04 f3 ff eb                                      bl #0x61fcf0
006230dc  04 00 a0 e1                                      mov r0, r4
006230e0  05 10 a0 e1                                      mov r1, r5
006230e4  00 30 94 e5                                      ldr r3, [r4]
006230e8  0f e0 a0 e1                                      mov lr, pc
006230ec  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006230f0  1c d0 8d e2                                      add sp, sp, #0x1c
006230f4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006293a4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006293a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006293a8  01 00 52 e3                                      cmp r2, #1
006293ac  1c d0 4d e2                                      sub sp, sp, #0x1c
006293b0  00 a0 a0 e3                                      mov sl, #0
006293b4  02 40 a0 e1                                      mov r4, r2
006293b8  01 50 a0 e1                                      mov r5, r1
006293bc  04 30 8d e5                                      str r3, [sp, #4]
006293c0  14 a0 8d e5                                      str sl, [sp, #0x14]
006293c4  2b 00 00 0a                                      beq #0x629478
006293c8  00 00 52 e3                                      cmp r2, #0
006293cc  0a b0 a0 01                                      moveq fp, sl
006293d0  0a 90 a0 01                                      moveq sb, sl
006293d4  1d 00 00 0a                                      beq #0x629450
006293d8  00 60 a0 e1                                      mov r6, r0
006293dc  00 80 a0 e3                                      mov r8, #0
006293e0  0a b0 a0 e1                                      mov fp, sl
006293e4  0a 90 a0 e1                                      mov sb, sl
006293e8  08 70 95 e7                                      ldr r7, [r5, r8]
006293ec  00 10 96 e5                                      ldr r1, [r6]
006293f0  04 80 88 e2                                      add r8, r8, #4
006293f4  07 00 a0 e1                                      mov r0, r7
006293f8  5b 96 f3 eb                                      bl #0x30ed6c
006293fc  00 10 a0 e1                                      mov r1, r0
00629400  0a 00 a0 e1                                      mov r0, sl
00629404  e6 95 f3 eb                                      bl #0x30eba4
00629408  04 10 96 e5                                      ldr r1, [r6, #4]
0062940c  00 a0 a0 e1                                      mov sl, r0
00629410  07 00 a0 e1                                      mov r0, r7
00629414  54 96 f3 eb                                      bl #0x30ed6c
00629418  00 10 a0 e1                                      mov r1, r0
0062941c  0b 00 a0 e1                                      mov r0, fp
00629420  df 95 f3 eb                                      bl #0x30eba4
00629424  08 10 96 e5                                      ldr r1, [r6, #8]
00629428  00 b0 a0 e1                                      mov fp, r0
0062942c  07 00 a0 e1                                      mov r0, r7
00629430  4d 96 f3 eb                                      bl #0x30ed6c
00629434  00 10 a0 e1                                      mov r1, r0
00629438  09 00 a0 e1                                      mov r0, sb
0062943c  d8 95 f3 eb                                      bl #0x30eba4
00629440  01 40 54 e2                                      subs r4, r4, #1
00629444  00 90 a0 e1                                      mov sb, r0
00629448  0c 60 86 e2                                      add r6, r6, #0xc
0062944c  e5 ff ff 1a                                      bne #0x6293e8
00629450  18 10 8d e2                                      add r1, sp, #0x18
00629454  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629458  10 b0 8d e5                                      str fp, [sp, #0x10]
0062945c  08 90 81 e5                                      str sb, [r1, #8]
00629460  04 00 9d e5                                      ldr r0, [sp, #4]
00629464  00 30 90 e5                                      ldr r3, [r0]
00629468  0f e0 a0 e1                                      mov lr, pc
0062946c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629470  1c d0 8d e2                                      add sp, sp, #0x1c
00629474  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629478  00 30 a0 e1                                      mov r3, r0
0062947c  04 c0 93 e4                                      ldr ip, [r3], #4
00629480  04 20 90 e5                                      ldr r2, [r0, #4]
00629484  18 10 8d e2                                      add r1, sp, #0x18
00629488  04 30 93 e5                                      ldr r3, [r3, #4]
0062948c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629490  10 20 8d e5                                      str r2, [sp, #0x10]
00629494  08 30 81 e5                                      str r3, [r1, #8]
00629498  f0 ff ff ea                                      b #0x629460

; FUNCTION 0x006294b8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIfEELi1EfEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<float>, 1, float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006294b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006294bc  01 00 52 e3                                      cmp r2, #1
006294c0  1c d0 4d e2                                      sub sp, sp, #0x1c
006294c4  00 a0 a0 e3                                      mov sl, #0
006294c8  02 40 a0 e1                                      mov r4, r2
006294cc  01 50 a0 e1                                      mov r5, r1
006294d0  04 30 8d e5                                      str r3, [sp, #4]
006294d4  14 a0 8d e5                                      str sl, [sp, #0x14]
006294d8  2b 00 00 0a                                      beq #0x62958c
006294dc  00 00 52 e3                                      cmp r2, #0
006294e0  0a b0 a0 01                                      moveq fp, sl
006294e4  0a 90 a0 01                                      moveq sb, sl
006294e8  1d 00 00 0a                                      beq #0x629564
006294ec  00 60 a0 e1                                      mov r6, r0
006294f0  00 80 a0 e3                                      mov r8, #0
006294f4  0a b0 a0 e1                                      mov fp, sl
006294f8  0a 90 a0 e1                                      mov sb, sl
006294fc  08 70 95 e7                                      ldr r7, [r5, r8]
00629500  00 10 96 e5                                      ldr r1, [r6]
00629504  04 80 88 e2                                      add r8, r8, #4
00629508  07 00 a0 e1                                      mov r0, r7
0062950c  16 96 f3 eb                                      bl #0x30ed6c
00629510  00 10 a0 e1                                      mov r1, r0
00629514  0a 00 a0 e1                                      mov r0, sl
00629518  a1 95 f3 eb                                      bl #0x30eba4
0062951c  04 10 96 e5                                      ldr r1, [r6, #4]
00629520  00 a0 a0 e1                                      mov sl, r0
00629524  07 00 a0 e1                                      mov r0, r7
00629528  0f 96 f3 eb                                      bl #0x30ed6c
0062952c  00 10 a0 e1                                      mov r1, r0
00629530  0b 00 a0 e1                                      mov r0, fp
00629534  9a 95 f3 eb                                      bl #0x30eba4
00629538  08 10 96 e5                                      ldr r1, [r6, #8]
0062953c  00 b0 a0 e1                                      mov fp, r0
00629540  07 00 a0 e1                                      mov r0, r7
00629544  08 96 f3 eb                                      bl #0x30ed6c
00629548  00 10 a0 e1                                      mov r1, r0
0062954c  09 00 a0 e1                                      mov r0, sb
00629550  93 95 f3 eb                                      bl #0x30eba4
00629554  01 40 54 e2                                      subs r4, r4, #1
00629558  00 90 a0 e1                                      mov sb, r0
0062955c  0c 60 86 e2                                      add r6, r6, #0xc
00629560  e5 ff ff 1a                                      bne #0x6294fc
00629564  18 10 8d e2                                      add r1, sp, #0x18
00629568  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062956c  10 b0 8d e5                                      str fp, [sp, #0x10]
00629570  08 90 81 e5                                      str sb, [r1, #8]
00629574  04 00 9d e5                                      ldr r0, [sp, #4]
00629578  00 30 90 e5                                      ldr r3, [r0]
0062957c  0f e0 a0 e1                                      mov lr, pc
00629580  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629584  1c d0 8d e2                                      add sp, sp, #0x1c
00629588  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062958c  00 30 a0 e1                                      mov r3, r0
00629590  04 c0 93 e4                                      ldr ip, [r3], #4
00629594  04 20 90 e5                                      ldr r2, [r0, #4]
00629598  18 10 8d e2                                      add r1, sp, #0x18
0062959c  04 30 93 e5                                      ldr r3, [r3, #4]
006295a0  0c c0 21 e5                                      str ip, [r1, #-0xc]!
006295a4  10 20 8d e5                                      str r2, [sp, #0x10]
006295a8  08 30 81 e5                                      str r3, [r1, #8]
006295ac  f0 ff ff ea                                      b #0x629574
