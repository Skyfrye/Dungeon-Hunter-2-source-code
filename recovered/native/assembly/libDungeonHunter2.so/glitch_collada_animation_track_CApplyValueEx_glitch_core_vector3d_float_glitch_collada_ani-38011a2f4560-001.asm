; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062311c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062311c  30 40 2d e9                                      push {r4, r5, lr}
00623120  14 d0 4d e2                                      sub sp, sp, #0x14
00623124  04 50 8d e2                                      add r5, sp, #4
00623128  00 30 a0 e3                                      mov r3, #0
0062312c  02 40 a0 e1                                      mov r4, r2
00623130  05 20 a0 e1                                      mov r2, r5
00623134  0c 30 8d e5                                      str r3, [sp, #0xc]
00623138  04 30 8d e5                                      str r3, [sp, #4]
0062313c  08 30 8d e5                                      str r3, [sp, #8]
00623140  39 c9 ff eb                                      bl #0x61562c
00623144  04 00 a0 e1                                      mov r0, r4
00623148  05 10 a0 e1                                      mov r1, r5
0062314c  00 30 94 e5                                      ldr r3, [r4]
00623150  0f e0 a0 e1                                      mov lr, pc
00623154  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00623158  14 d0 8d e2                                      add sp, sp, #0x14
0062315c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00623174, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00623174  30 40 2d e9                                      push {r4, r5, lr}
00623178  1c d0 4d e2                                      sub sp, sp, #0x1c
0062317c  28 40 9d e5                                      ldr r4, [sp, #0x28]
00623180  00 c0 a0 e3                                      mov ip, #0
00623184  0c 50 8d e2                                      add r5, sp, #0xc
00623188  00 50 8d e5                                      str r5, [sp]
0062318c  14 c0 8d e5                                      str ip, [sp, #0x14]
00623190  0c c0 8d e5                                      str ip, [sp, #0xc]
00623194  10 c0 8d e5                                      str ip, [sp, #0x10]
00623198  4f c9 ff eb                                      bl #0x6156dc
0062319c  04 00 a0 e1                                      mov r0, r4
006231a0  05 10 a0 e1                                      mov r1, r5
006231a4  00 30 94 e5                                      ldr r3, [r4]
006231a8  0f e0 a0 e1                                      mov lr, pc
006231ac  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006231b0  1c d0 8d e2                                      add sp, sp, #0x1c
006231b4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062917c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062917c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629180  01 00 52 e3                                      cmp r2, #1
00629184  1c d0 4d e2                                      sub sp, sp, #0x1c
00629188  00 a0 a0 e3                                      mov sl, #0
0062918c  02 40 a0 e1                                      mov r4, r2
00629190  01 50 a0 e1                                      mov r5, r1
00629194  04 30 8d e5                                      str r3, [sp, #4]
00629198  14 a0 8d e5                                      str sl, [sp, #0x14]
0062919c  2b 00 00 0a                                      beq #0x629250
006291a0  00 00 52 e3                                      cmp r2, #0
006291a4  0a b0 a0 01                                      moveq fp, sl
006291a8  0a 90 a0 01                                      moveq sb, sl
006291ac  1d 00 00 0a                                      beq #0x629228
006291b0  00 60 a0 e1                                      mov r6, r0
006291b4  00 80 a0 e3                                      mov r8, #0
006291b8  0a b0 a0 e1                                      mov fp, sl
006291bc  0a 90 a0 e1                                      mov sb, sl
006291c0  08 70 95 e7                                      ldr r7, [r5, r8]
006291c4  00 10 96 e5                                      ldr r1, [r6]
006291c8  04 80 88 e2                                      add r8, r8, #4
006291cc  07 00 a0 e1                                      mov r0, r7
006291d0  e5 96 f3 eb                                      bl #0x30ed6c
006291d4  00 10 a0 e1                                      mov r1, r0
006291d8  0a 00 a0 e1                                      mov r0, sl
006291dc  70 96 f3 eb                                      bl #0x30eba4
006291e0  04 10 96 e5                                      ldr r1, [r6, #4]
006291e4  00 a0 a0 e1                                      mov sl, r0
006291e8  07 00 a0 e1                                      mov r0, r7
006291ec  de 96 f3 eb                                      bl #0x30ed6c
006291f0  00 10 a0 e1                                      mov r1, r0
006291f4  0b 00 a0 e1                                      mov r0, fp
006291f8  69 96 f3 eb                                      bl #0x30eba4
006291fc  08 10 96 e5                                      ldr r1, [r6, #8]
00629200  00 b0 a0 e1                                      mov fp, r0
00629204  07 00 a0 e1                                      mov r0, r7
00629208  d7 96 f3 eb                                      bl #0x30ed6c
0062920c  00 10 a0 e1                                      mov r1, r0
00629210  09 00 a0 e1                                      mov r0, sb
00629214  62 96 f3 eb                                      bl #0x30eba4
00629218  01 40 54 e2                                      subs r4, r4, #1
0062921c  00 90 a0 e1                                      mov sb, r0
00629220  0c 60 86 e2                                      add r6, r6, #0xc
00629224  e5 ff ff 1a                                      bne #0x6291c0
00629228  18 10 8d e2                                      add r1, sp, #0x18
0062922c  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629230  10 b0 8d e5                                      str fp, [sp, #0x10]
00629234  08 90 81 e5                                      str sb, [r1, #8]
00629238  04 00 9d e5                                      ldr r0, [sp, #4]
0062923c  00 30 90 e5                                      ldr r3, [r0]
00629240  0f e0 a0 e1                                      mov lr, pc
00629244  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00629248  1c d0 8d e2                                      add sp, sp, #0x1c
0062924c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629250  00 30 a0 e1                                      mov r3, r0
00629254  04 c0 93 e4                                      ldr ip, [r3], #4
00629258  04 20 90 e5                                      ldr r2, [r0, #4]
0062925c  18 10 8d e2                                      add r1, sp, #0x18
00629260  04 30 93 e5                                      ldr r3, [r3, #4]
00629264  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00629268  10 20 8d e5                                      str r2, [sp, #0x10]
0062926c  08 30 81 e5                                      str r3, [r1, #8]
00629270  f0 ff ff ea                                      b #0x629238

; FUNCTION 0x00629290, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionYExIsEELi1EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionYEx<short>, 1, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629290  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00629294  01 00 52 e3                                      cmp r2, #1
00629298  1c d0 4d e2                                      sub sp, sp, #0x1c
0062929c  00 a0 a0 e3                                      mov sl, #0
006292a0  02 40 a0 e1                                      mov r4, r2
006292a4  01 50 a0 e1                                      mov r5, r1
006292a8  04 30 8d e5                                      str r3, [sp, #4]
006292ac  14 a0 8d e5                                      str sl, [sp, #0x14]
006292b0  2b 00 00 0a                                      beq #0x629364
006292b4  00 00 52 e3                                      cmp r2, #0
006292b8  0a b0 a0 01                                      moveq fp, sl
006292bc  0a 90 a0 01                                      moveq sb, sl
006292c0  1d 00 00 0a                                      beq #0x62933c
006292c4  00 60 a0 e1                                      mov r6, r0
006292c8  00 80 a0 e3                                      mov r8, #0
006292cc  0a b0 a0 e1                                      mov fp, sl
006292d0  0a 90 a0 e1                                      mov sb, sl
006292d4  08 70 95 e7                                      ldr r7, [r5, r8]
006292d8  00 10 96 e5                                      ldr r1, [r6]
006292dc  04 80 88 e2                                      add r8, r8, #4
006292e0  07 00 a0 e1                                      mov r0, r7
006292e4  a0 96 f3 eb                                      bl #0x30ed6c
006292e8  00 10 a0 e1                                      mov r1, r0
006292ec  0a 00 a0 e1                                      mov r0, sl
006292f0  2b 96 f3 eb                                      bl #0x30eba4
006292f4  04 10 96 e5                                      ldr r1, [r6, #4]
006292f8  00 a0 a0 e1                                      mov sl, r0
006292fc  07 00 a0 e1                                      mov r0, r7
00629300  99 96 f3 eb                                      bl #0x30ed6c
00629304  00 10 a0 e1                                      mov r1, r0
00629308  0b 00 a0 e1                                      mov r0, fp
0062930c  24 96 f3 eb                                      bl #0x30eba4
00629310  08 10 96 e5                                      ldr r1, [r6, #8]
00629314  00 b0 a0 e1                                      mov fp, r0
00629318  07 00 a0 e1                                      mov r0, r7
0062931c  92 96 f3 eb                                      bl #0x30ed6c
00629320  00 10 a0 e1                                      mov r1, r0
00629324  09 00 a0 e1                                      mov r0, sb
00629328  1d 96 f3 eb                                      bl #0x30eba4
0062932c  01 40 54 e2                                      subs r4, r4, #1
00629330  00 90 a0 e1                                      mov sb, r0
00629334  0c 60 86 e2                                      add r6, r6, #0xc
00629338  e5 ff ff 1a                                      bne #0x6292d4
0062933c  18 10 8d e2                                      add r1, sp, #0x18
00629340  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00629344  10 b0 8d e5                                      str fp, [sp, #0x10]
00629348  08 90 81 e5                                      str sb, [r1, #8]
0062934c  04 00 9d e5                                      ldr r0, [sp, #4]
00629350  00 30 90 e5                                      ldr r3, [r0]
00629354  0f e0 a0 e1                                      mov lr, pc
00629358  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0062935c  1c d0 8d e2                                      add sp, sp, #0x1c
00629360  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00629364  00 30 a0 e1                                      mov r3, r0
00629368  04 c0 93 e4                                      ldr ip, [r3], #4
0062936c  04 20 90 e5                                      ldr r2, [r0, #4]
00629370  18 10 8d e2                                      add r1, sp, #0x18
00629374  04 30 93 e5                                      ldr r3, [r3, #4]
00629378  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062937c  10 20 8d e5                                      str r2, [sp, #0x10]
00629380  08 30 81 e5                                      str r3, [r1, #8]
00629384  f0 ff ff ea                                      b #0x62934c
