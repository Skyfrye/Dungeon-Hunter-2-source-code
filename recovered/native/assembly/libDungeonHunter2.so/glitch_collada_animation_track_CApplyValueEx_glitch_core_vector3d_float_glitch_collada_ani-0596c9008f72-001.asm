; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622d6c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622d6c  30 40 2d e9                                      push {r4, r5, lr}
00622d70  14 d0 4d e2                                      sub sp, sp, #0x14
00622d74  04 50 8d e2                                      add r5, sp, #4
00622d78  00 30 a0 e3                                      mov r3, #0
00622d7c  02 40 a0 e1                                      mov r4, r2
00622d80  05 20 a0 e1                                      mov r2, r5
00622d84  0c 30 8d e5                                      str r3, [sp, #0xc]
00622d88  04 30 8d e5                                      str r3, [sp, #4]
00622d8c  08 30 8d e5                                      str r3, [sp, #8]
00622d90  31 c4 ff eb                                      bl #0x613e5c
00622d94  04 00 a0 e1                                      mov r0, r4
00622d98  05 10 a0 e1                                      mov r1, r5
00622d9c  00 30 94 e5                                      ldr r3, [r4]
00622da0  0f e0 a0 e1                                      mov lr, pc
00622da4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622da8  14 d0 8d e2                                      add sp, sp, #0x14
00622dac  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062827c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062827c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00628280  01 00 52 e3                                      cmp r2, #1
00628284  1c d0 4d e2                                      sub sp, sp, #0x1c
00628288  00 a0 a0 e3                                      mov sl, #0
0062828c  02 40 a0 e1                                      mov r4, r2
00628290  01 50 a0 e1                                      mov r5, r1
00628294  04 30 8d e5                                      str r3, [sp, #4]
00628298  14 a0 8d e5                                      str sl, [sp, #0x14]
0062829c  2b 00 00 0a                                      beq #0x628350
006282a0  00 00 52 e3                                      cmp r2, #0
006282a4  0a b0 a0 01                                      moveq fp, sl
006282a8  0a 90 a0 01                                      moveq sb, sl
006282ac  1d 00 00 0a                                      beq #0x628328
006282b0  00 60 a0 e1                                      mov r6, r0
006282b4  00 80 a0 e3                                      mov r8, #0
006282b8  0a b0 a0 e1                                      mov fp, sl
006282bc  0a 90 a0 e1                                      mov sb, sl
006282c0  08 70 95 e7                                      ldr r7, [r5, r8]
006282c4  00 10 96 e5                                      ldr r1, [r6]
006282c8  04 80 88 e2                                      add r8, r8, #4
006282cc  07 00 a0 e1                                      mov r0, r7
006282d0  a5 9a f3 eb                                      bl #0x30ed6c
006282d4  00 10 a0 e1                                      mov r1, r0
006282d8  0a 00 a0 e1                                      mov r0, sl
006282dc  30 9a f3 eb                                      bl #0x30eba4
006282e0  04 10 96 e5                                      ldr r1, [r6, #4]
006282e4  00 a0 a0 e1                                      mov sl, r0
006282e8  07 00 a0 e1                                      mov r0, r7
006282ec  9e 9a f3 eb                                      bl #0x30ed6c
006282f0  00 10 a0 e1                                      mov r1, r0
006282f4  0b 00 a0 e1                                      mov r0, fp
006282f8  29 9a f3 eb                                      bl #0x30eba4
006282fc  08 10 96 e5                                      ldr r1, [r6, #8]
00628300  00 b0 a0 e1                                      mov fp, r0
00628304  07 00 a0 e1                                      mov r0, r7
00628308  97 9a f3 eb                                      bl #0x30ed6c
0062830c  00 10 a0 e1                                      mov r1, r0
00628310  09 00 a0 e1                                      mov r0, sb
00628314  22 9a f3 eb                                      bl #0x30eba4
00628318  01 40 54 e2                                      subs r4, r4, #1
0062831c  00 90 a0 e1                                      mov sb, r0
00628320  0c 60 86 e2                                      add r6, r6, #0xc
00628324  e5 ff ff 1a                                      bne #0x6282c0
00628328  18 10 8d e2                                      add r1, sp, #0x18
0062832c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00628330  10 b0 8d e5                                      str fp, [sp, #0x10]
00628334  08 90 81 e5                                      str sb, [r1, #8]
00628338  04 00 9d e5                                      ldr r0, [sp, #4]
0062833c  00 30 90 e5                                      ldr r3, [r0]
00628340  0f e0 a0 e1                                      mov lr, pc
00628344  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628348  1c d0 8d e2                                      add sp, sp, #0x1c
0062834c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00628350  00 30 a0 e1                                      mov r3, r0
00628354  04 c0 93 e4                                      ldr ip, [r3], #4
00628358  04 20 90 e5                                      ldr r2, [r0, #4]
0062835c  18 10 8d e2                                      add r1, sp, #0x18
00628360  04 30 93 e5                                      ldr r3, [r3, #4]
00628364  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00628368  10 20 8d e5                                      str r2, [sp, #0x10]
0062836c  08 30 81 e5                                      str r3, [r1, #8]
00628370  f0 ff ff ea                                      b #0x628338

; FUNCTION 0x00628390, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628390  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00628394  01 00 52 e3                                      cmp r2, #1
00628398  1c d0 4d e2                                      sub sp, sp, #0x1c
0062839c  00 a0 a0 e3                                      mov sl, #0
006283a0  02 40 a0 e1                                      mov r4, r2
006283a4  01 50 a0 e1                                      mov r5, r1
006283a8  04 30 8d e5                                      str r3, [sp, #4]
006283ac  14 a0 8d e5                                      str sl, [sp, #0x14]
006283b0  2b 00 00 0a                                      beq #0x628464
006283b4  00 00 52 e3                                      cmp r2, #0
006283b8  0a b0 a0 01                                      moveq fp, sl
006283bc  0a 90 a0 01                                      moveq sb, sl
006283c0  1d 00 00 0a                                      beq #0x62843c
006283c4  00 60 a0 e1                                      mov r6, r0
006283c8  00 80 a0 e3                                      mov r8, #0
006283cc  0a b0 a0 e1                                      mov fp, sl
006283d0  0a 90 a0 e1                                      mov sb, sl
006283d4  08 70 95 e7                                      ldr r7, [r5, r8]
006283d8  00 10 96 e5                                      ldr r1, [r6]
006283dc  04 80 88 e2                                      add r8, r8, #4
006283e0  07 00 a0 e1                                      mov r0, r7
006283e4  60 9a f3 eb                                      bl #0x30ed6c
006283e8  00 10 a0 e1                                      mov r1, r0
006283ec  0a 00 a0 e1                                      mov r0, sl
006283f0  eb 99 f3 eb                                      bl #0x30eba4
006283f4  04 10 96 e5                                      ldr r1, [r6, #4]
006283f8  00 a0 a0 e1                                      mov sl, r0
006283fc  07 00 a0 e1                                      mov r0, r7
00628400  59 9a f3 eb                                      bl #0x30ed6c
00628404  00 10 a0 e1                                      mov r1, r0
00628408  0b 00 a0 e1                                      mov r0, fp
0062840c  e4 99 f3 eb                                      bl #0x30eba4
00628410  08 10 96 e5                                      ldr r1, [r6, #8]
00628414  00 b0 a0 e1                                      mov fp, r0
00628418  07 00 a0 e1                                      mov r0, r7
0062841c  52 9a f3 eb                                      bl #0x30ed6c
00628420  00 10 a0 e1                                      mov r1, r0
00628424  09 00 a0 e1                                      mov r0, sb
00628428  dd 99 f3 eb                                      bl #0x30eba4
0062842c  01 40 54 e2                                      subs r4, r4, #1
00628430  00 90 a0 e1                                      mov sb, r0
00628434  0c 60 86 e2                                      add r6, r6, #0xc
00628438  e5 ff ff 1a                                      bne #0x6283d4
0062843c  18 10 8d e2                                      add r1, sp, #0x18
00628440  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00628444  10 b0 8d e5                                      str fp, [sp, #0x10]
00628448  08 90 81 e5                                      str sb, [r1, #8]
0062844c  04 00 9d e5                                      ldr r0, [sp, #4]
00628450  00 30 90 e5                                      ldr r3, [r0]
00628454  0f e0 a0 e1                                      mov lr, pc
00628458  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0062845c  1c d0 8d e2                                      add sp, sp, #0x1c
00628460  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00628464  00 30 a0 e1                                      mov r3, r0
00628468  04 c0 93 e4                                      ldr ip, [r3], #4
0062846c  04 20 90 e5                                      ldr r2, [r0, #4]
00628470  18 10 8d e2                                      add r1, sp, #0x18
00628474  04 30 93 e5                                      ldr r3, [r3, #4]
00628478  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062847c  10 20 8d e5                                      str r2, [sp, #0x10]
00628480  08 30 81 e5                                      str r3, [r1, #8]
00628484  f0 ff ff ea                                      b #0x62844c

; FUNCTION 0x00628ca8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00628ca8  30 40 2d e9                                      push {r4, r5, lr}
00628cac  1c d0 4d e2                                      sub sp, sp, #0x1c
00628cb0  28 40 9d e5                                      ldr r4, [sp, #0x28]
00628cb4  00 c0 a0 e3                                      mov ip, #0
00628cb8  0c 50 8d e2                                      add r5, sp, #0xc
00628cbc  00 50 8d e5                                      str r5, [sp]
00628cc0  14 c0 8d e5                                      str ip, [sp, #0x14]
00628cc4  0c c0 8d e5                                      str ip, [sp, #0xc]
00628cc8  10 c0 8d e5                                      str ip, [sp, #0x10]
00628ccc  9d ff ff eb                                      bl #0x628b48
00628cd0  04 00 a0 e1                                      mov r0, r4
00628cd4  05 10 a0 e1                                      mov r1, r5
00628cd8  00 30 94 e5                                      ldr r3, [r4]
00628cdc  0f e0 a0 e1                                      mov lr, pc
00628ce0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628ce4  1c d0 8d e2                                      add sp, sp, #0x1c
00628ce8  30 80 bd e8                                      pop {r4, r5, pc}
