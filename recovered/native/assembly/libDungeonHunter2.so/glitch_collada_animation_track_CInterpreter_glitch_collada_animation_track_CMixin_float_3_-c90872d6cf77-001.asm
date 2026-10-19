; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006122f4, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006122f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006122f8  01 40 a0 e1                                      mov r4, r1
006122fc  00 10 a0 e3                                      mov r1, #0
00612300  03 70 a0 e1                                      mov r7, r3
00612304  02 50 a0 e1                                      mov r5, r2
00612308  20 90 9d e5                                      ldr sb, [sp, #0x20]
0061230c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00612310  c3 5e 01 eb                                      bl #0x669e24
00612314  04 30 90 e5                                      ldr r3, [r0, #4]
00612318  0c 80 a0 e3                                      mov r8, #0xc
0061231c  00 60 a0 e3                                      mov r6, #0
00612320  98 34 24 e0                                      mla r4, r8, r4, r3
00612324  98 35 25 e0                                      mla r5, r8, r5, r3
00612328  98 37 28 e0                                      mla r8, r8, r7, r3
0061232c  06 70 95 e7                                      ldr r7, [r5, r6]
00612330  06 00 98 e7                                      ldr r0, [r8, r6]
00612334  07 10 a0 e1                                      mov r1, r7
00612338  1b f0 f3 eb                                      bl #0x30e3ac
0061233c  00 10 a0 e1                                      mov r1, r0
00612340  09 00 a0 e1                                      mov r0, sb
00612344  88 f2 f3 eb                                      bl #0x30ed6c
00612348  00 10 a0 e1                                      mov r1, r0
0061234c  07 00 a0 e1                                      mov r0, r7
00612350  13 f2 f3 eb                                      bl #0x30eba4
00612354  06 10 94 e7                                      ldr r1, [r4, r6]
00612358  13 f0 f3 eb                                      bl #0x30e3ac
0061235c  06 00 8a e7                                      str r0, [sl, r6]
00612360  04 60 86 e2                                      add r6, r6, #4
00612364  0c 00 56 e3                                      cmp r6, #0xc
00612368  ef ff ff 1a                                      bne #0x61232c
0061236c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006286cc, declared_size=256, range_size=256, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006286cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006286d0  01 70 a0 e1                                      mov r7, r1
006286d4  08 d0 4d e2                                      sub sp, sp, #8
006286d8  00 10 a0 e3                                      mov r1, #0
006286dc  03 40 a0 e1                                      mov r4, r3
006286e0  28 60 9d e5                                      ldr r6, [sp, #0x28]
006286e4  ce 05 01 eb                                      bl #0x669e24
006286e8  04 10 a0 e1                                      mov r1, r4
006286ec  00 80 a0 e1                                      mov r8, r0
006286f0  fe 05 a0 e3                                      mov r0, #0x3f800000
006286f4  2c 97 f3 eb                                      bl #0x30e3ac
006286f8  04 40 8d e5                                      str r4, [sp, #4]
006286fc  00 00 8d e5                                      str r0, [sp]
00628700  0c 30 a0 e3                                      mov r3, #0xc
00628704  93 07 07 e0                                      mul r7, r3, r7
00628708  04 30 98 e5                                      ldr r3, [r8, #4]
0062870c  00 50 a0 e1                                      mov r5, r0
00628710  07 10 93 e7                                      ldr r1, [r3, r7]
00628714  07 70 83 e0                                      add r7, r3, r7
00628718  93 99 f3 eb                                      bl #0x30ed6c
0062871c  00 10 a0 e3                                      mov r1, #0
00628720  1f 99 f3 eb                                      bl #0x30eba4
00628724  04 10 97 e5                                      ldr r1, [r7, #4]
00628728  00 80 a0 e1                                      mov r8, r0
0062872c  05 00 a0 e1                                      mov r0, r5
00628730  8d 99 f3 eb                                      bl #0x30ed6c
00628734  00 10 a0 e3                                      mov r1, #0
00628738  19 99 f3 eb                                      bl #0x30eba4
0062873c  04 70 87 e2                                      add r7, r7, #4
00628740  04 10 97 e5                                      ldr r1, [r7, #4]
00628744  00 a0 a0 e1                                      mov sl, r0
00628748  05 00 a0 e1                                      mov r0, r5
0062874c  86 99 f3 eb                                      bl #0x30ed6c
00628750  00 10 a0 e3                                      mov r1, #0
00628754  12 99 f3 eb                                      bl #0x30eba4
00628758  04 50 87 e2                                      add r5, r7, #4
0062875c  04 90 85 e2                                      add sb, r5, #4
00628760  04 10 99 e5                                      ldr r1, [sb, #4]
00628764  00 70 a0 e1                                      mov r7, r0
00628768  04 00 a0 e1                                      mov r0, r4
0062876c  7e 99 f3 eb                                      bl #0x30ed6c
00628770  00 10 a0 e1                                      mov r1, r0
00628774  0a 00 a0 e1                                      mov r0, sl
00628778  09 99 f3 eb                                      bl #0x30eba4
0062877c  04 90 89 e2                                      add sb, sb, #4
00628780  04 10 99 e5                                      ldr r1, [sb, #4]
00628784  00 a0 a0 e1                                      mov sl, r0
00628788  04 00 a0 e1                                      mov r0, r4
0062878c  76 99 f3 eb                                      bl #0x30ed6c
00628790  07 10 a0 e1                                      mov r1, r7
00628794  02 99 f3 eb                                      bl #0x30eba4
00628798  04 10 95 e5                                      ldr r1, [r5, #4]
0062879c  00 70 a0 e1                                      mov r7, r0
006287a0  04 00 a0 e1                                      mov r0, r4
006287a4  70 99 f3 eb                                      bl #0x30ed6c
006287a8  00 10 a0 e1                                      mov r1, r0
006287ac  08 00 a0 e1                                      mov r0, r8
006287b0  fb 98 f3 eb                                      bl #0x30eba4
006287b4  06 30 a0 e1                                      mov r3, r6
006287b8  04 00 83 e4                                      str r0, [r3], #4
006287bc  04 a0 86 e5                                      str sl, [r6, #4]
006287c0  04 70 83 e5                                      str r7, [r3, #4]
006287c4  08 d0 8d e2                                      add sp, sp, #8
006287c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
