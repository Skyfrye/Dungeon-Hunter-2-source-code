; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00612564, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_fS6_EEEELin1EfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00612564  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00612568  01 40 a0 e1                                      mov r4, r1
0061256c  00 10 a0 e3                                      mov r1, #0
00612570  03 70 a0 e1                                      mov r7, r3
00612574  02 50 a0 e1                                      mov r5, r2
00612578  20 90 9d e5                                      ldr sb, [sp, #0x20]
0061257c  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00612580  27 5e 01 eb                                      bl #0x669e24
00612584  04 30 90 e5                                      ldr r3, [r0, #4]
00612588  0c 80 a0 e3                                      mov r8, #0xc
0061258c  00 60 a0 e3                                      mov r6, #0
00612590  98 34 24 e0                                      mla r4, r8, r4, r3
00612594  98 35 25 e0                                      mla r5, r8, r5, r3
00612598  98 37 28 e0                                      mla r8, r8, r7, r3
0061259c  06 70 95 e7                                      ldr r7, [r5, r6]
006125a0  06 00 98 e7                                      ldr r0, [r8, r6]
006125a4  07 10 a0 e1                                      mov r1, r7
006125a8  7f ef f3 eb                                      bl #0x30e3ac
006125ac  00 10 a0 e1                                      mov r1, r0
006125b0  09 00 a0 e1                                      mov r0, sb
006125b4  ec f1 f3 eb                                      bl #0x30ed6c
006125b8  00 10 a0 e1                                      mov r1, r0
006125bc  07 00 a0 e1                                      mov r0, r7
006125c0  77 f1 f3 eb                                      bl #0x30eba4
006125c4  06 10 94 e7                                      ldr r1, [r4, r6]
006125c8  77 ef f3 eb                                      bl #0x30e3ac
006125cc  06 00 8a e7                                      str r0, [sl, r6]
006125d0  04 60 86 e2                                      add r6, r6, #4
006125d4  0c 00 56 e3                                      cmp r6, #0xc
006125d8  ef ff ff 1a                                      bne #0x61259c
006125dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006289d4, declared_size=256, range_size=256, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_fS6_EEEELin1EfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006289d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006289d8  01 70 a0 e1                                      mov r7, r1
006289dc  08 d0 4d e2                                      sub sp, sp, #8
006289e0  00 10 a0 e3                                      mov r1, #0
006289e4  03 40 a0 e1                                      mov r4, r3
006289e8  28 60 9d e5                                      ldr r6, [sp, #0x28]
006289ec  0c 05 01 eb                                      bl #0x669e24
006289f0  04 10 a0 e1                                      mov r1, r4
006289f4  00 80 a0 e1                                      mov r8, r0
006289f8  fe 05 a0 e3                                      mov r0, #0x3f800000
006289fc  6a 96 f3 eb                                      bl #0x30e3ac
00628a00  04 40 8d e5                                      str r4, [sp, #4]
00628a04  00 00 8d e5                                      str r0, [sp]
00628a08  0c 30 a0 e3                                      mov r3, #0xc
00628a0c  93 07 07 e0                                      mul r7, r3, r7
00628a10  04 30 98 e5                                      ldr r3, [r8, #4]
00628a14  00 50 a0 e1                                      mov r5, r0
00628a18  07 10 93 e7                                      ldr r1, [r3, r7]
00628a1c  07 70 83 e0                                      add r7, r3, r7
00628a20  d1 98 f3 eb                                      bl #0x30ed6c
00628a24  00 10 a0 e3                                      mov r1, #0
00628a28  5d 98 f3 eb                                      bl #0x30eba4
00628a2c  04 10 97 e5                                      ldr r1, [r7, #4]
00628a30  00 80 a0 e1                                      mov r8, r0
00628a34  05 00 a0 e1                                      mov r0, r5
00628a38  cb 98 f3 eb                                      bl #0x30ed6c
00628a3c  00 10 a0 e3                                      mov r1, #0
00628a40  57 98 f3 eb                                      bl #0x30eba4
00628a44  04 70 87 e2                                      add r7, r7, #4
00628a48  04 10 97 e5                                      ldr r1, [r7, #4]
00628a4c  00 a0 a0 e1                                      mov sl, r0
00628a50  05 00 a0 e1                                      mov r0, r5
00628a54  c4 98 f3 eb                                      bl #0x30ed6c
00628a58  00 10 a0 e3                                      mov r1, #0
00628a5c  50 98 f3 eb                                      bl #0x30eba4
00628a60  04 50 87 e2                                      add r5, r7, #4
00628a64  04 90 85 e2                                      add sb, r5, #4
00628a68  04 10 99 e5                                      ldr r1, [sb, #4]
00628a6c  00 70 a0 e1                                      mov r7, r0
00628a70  04 00 a0 e1                                      mov r0, r4
00628a74  bc 98 f3 eb                                      bl #0x30ed6c
00628a78  00 10 a0 e1                                      mov r1, r0
00628a7c  0a 00 a0 e1                                      mov r0, sl
00628a80  47 98 f3 eb                                      bl #0x30eba4
00628a84  04 90 89 e2                                      add sb, sb, #4
00628a88  04 10 99 e5                                      ldr r1, [sb, #4]
00628a8c  00 a0 a0 e1                                      mov sl, r0
00628a90  04 00 a0 e1                                      mov r0, r4
00628a94  b4 98 f3 eb                                      bl #0x30ed6c
00628a98  07 10 a0 e1                                      mov r1, r7
00628a9c  40 98 f3 eb                                      bl #0x30eba4
00628aa0  04 10 95 e5                                      ldr r1, [r5, #4]
00628aa4  00 70 a0 e1                                      mov r7, r0
00628aa8  04 00 a0 e1                                      mov r0, r4
00628aac  ae 98 f3 eb                                      bl #0x30ed6c
00628ab0  00 10 a0 e1                                      mov r1, r0
00628ab4  08 00 a0 e1                                      mov r0, r8
00628ab8  39 98 f3 eb                                      bl #0x30eba4
00628abc  06 30 a0 e1                                      mov r3, r6
00628ac0  04 00 83 e4                                      str r0, [r3], #4
00628ac4  04 a0 86 e5                                      str sl, [r6, #4]
00628ac8  04 70 83 e5                                      str r7, [r3, #4]
00628acc  08 d0 8d e2                                      add sp, sp, #8
00628ad0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
