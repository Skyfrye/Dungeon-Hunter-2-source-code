; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006129c4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_hNS_5video6SColorEEEEELin1EhEEhLi3ENS1_15SUseDefaultLerpIhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006129c4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006129c8  01 40 a0 e1                                      mov r4, r1
006129cc  00 10 a0 e3                                      mov r1, #0
006129d0  03 60 a0 e1                                      mov r6, r3
006129d4  02 50 a0 e1                                      mov r5, r2
006129d8  28 90 9d e5                                      ldr sb, [sp, #0x28]
006129dc  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
006129e0  0f 5d 01 eb                                      bl #0x669e24
006129e4  04 30 90 e5                                      ldr r3, [r0, #4]
006129e8  86 60 86 e0                                      add r6, r6, r6, lsl #1
006129ec  85 50 85 e0                                      add r5, r5, r5, lsl #1
006129f0  84 40 84 e0                                      add r4, r4, r4, lsl #1
006129f4  06 80 83 e0                                      add r8, r3, r6
006129f8  04 40 83 e0                                      add r4, r3, r4
006129fc  05 50 83 e0                                      add r5, r3, r5
00612a00  00 60 a0 e3                                      mov r6, #0
00612a04  06 b0 d5 e7                                      ldrb fp, [r5, r6]
00612a08  0b 00 a0 e1                                      mov r0, fp
00612a0c  d4 ef f3 eb                                      bl #0x30e964
00612a10  00 70 a0 e1                                      mov r7, r0
00612a14  06 00 d8 e7                                      ldrb r0, [r8, r6]
00612a18  00 00 6b e0                                      rsb r0, fp, r0
00612a1c  d0 ef f3 eb                                      bl #0x30e964
00612a20  00 10 a0 e1                                      mov r1, r0
00612a24  09 00 a0 e1                                      mov r0, sb
00612a28  cf f0 f3 eb                                      bl #0x30ed6c
00612a2c  00 10 a0 e1                                      mov r1, r0
00612a30  07 00 a0 e1                                      mov r0, r7
00612a34  5a f0 f3 eb                                      bl #0x30eba4
00612a38  18 ae 0a eb                                      bl #0x8be2a0
00612a3c  06 30 d4 e7                                      ldrb r3, [r4, r6]
00612a40  00 30 63 e0                                      rsb r3, r3, r0
00612a44  06 30 ca e7                                      strb r3, [sl, r6]
00612a48  01 60 86 e2                                      add r6, r6, #1
00612a4c  03 00 56 e3                                      cmp r6, #3
00612a50  eb ff ff 1a                                      bne #0x612a04
00612a54  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006215d8, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_hNS_5video6SColorEEEEELin1EhEEhLi3ENS1_15SUseDefaultLerpIhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006215d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006215dc  01 40 a0 e1                                      mov r4, r1
006215e0  1c d0 4d e2                                      sub sp, sp, #0x1c
006215e4  00 10 a0 e3                                      mov r1, #0
006215e8  03 50 a0 e1                                      mov r5, r3
006215ec  0c 22 01 eb                                      bl #0x669e24
006215f0  05 10 a0 e1                                      mov r1, r5
006215f4  00 60 a0 e1                                      mov r6, r0
006215f8  fe 05 a0 e3                                      mov r0, #0x3f800000
006215fc  6a b3 f3 eb                                      bl #0x30e3ac
00621600  14 50 8d e5                                      str r5, [sp, #0x14]
00621604  10 00 8d e5                                      str r0, [sp, #0x10]
00621608  04 80 96 e5                                      ldr r8, [r6, #4]
0062160c  84 40 84 e0                                      add r4, r4, r4, lsl #1
00621610  00 60 a0 e3                                      mov r6, #0
00621614  04 80 88 e0                                      add r8, r8, r4
00621618  04 60 8d e5                                      str r6, [sp, #4]
0062161c  08 60 8d e5                                      str r6, [sp, #8]
00621620  0c 60 8d e5                                      str r6, [sp, #0xc]
00621624  00 a0 a0 e3                                      mov sl, #0
00621628  04 70 8d e2                                      add r7, sp, #4
0062162c  10 b0 8d e2                                      add fp, sp, #0x10
00621630  0a 90 9b e7                                      ldr sb, [fp, sl]
00621634  00 40 a0 e3                                      mov r4, #0
00621638  04 50 a0 e1                                      mov r5, r4
0062163c  05 00 d8 e7                                      ldrb r0, [r8, r5]
00621640  c7 b4 f3 eb                                      bl #0x30e964
00621644  09 10 a0 e1                                      mov r1, sb
00621648  c7 b5 f3 eb                                      bl #0x30ed6c
0062164c  06 10 a0 e1                                      mov r1, r6
00621650  53 b5 f3 eb                                      bl #0x30eba4
00621654  04 00 87 e7                                      str r0, [r7, r4]
00621658  04 40 84 e2                                      add r4, r4, #4
0062165c  0c 00 54 e3                                      cmp r4, #0xc
00621660  01 50 85 e2                                      add r5, r5, #1
00621664  04 60 97 17                                      ldrne r6, [r7, r4]
00621668  f3 ff ff 1a                                      bne #0x62163c
0062166c  04 a0 8a e2                                      add sl, sl, #4
00621670  08 00 5a e3                                      cmp sl, #8
00621674  03 80 88 e2                                      add r8, r8, #3
00621678  04 60 9d 15                                      ldrne r6, [sp, #4]
0062167c  eb ff ff 1a                                      bne #0x621630
00621680  04 00 9d e5                                      ldr r0, [sp, #4]
00621684  05 73 0a eb                                      bl #0x8be2a0
00621688  40 40 9d e5                                      ldr r4, [sp, #0x40]
0062168c  01 00 c4 e4                                      strb r0, [r4], #1
00621690  08 00 9d e5                                      ldr r0, [sp, #8]
00621694  01 73 0a eb                                      bl #0x8be2a0
00621698  40 30 9d e5                                      ldr r3, [sp, #0x40]
0062169c  01 00 c3 e5                                      strb r0, [r3, #1]
006216a0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006216a4  fd 72 0a eb                                      bl #0x8be2a0
006216a8  01 00 c4 e5                                      strb r0, [r4, #1]
006216ac  1c d0 8d e2                                      add sp, sp, #0x1c
006216b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
