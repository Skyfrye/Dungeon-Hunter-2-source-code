; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00612c54, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELin1EhEEhLi4ENS1_15SUseDefaultLerpIhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00612c54  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00612c58  01 40 a0 e1                                      mov r4, r1
00612c5c  00 10 a0 e3                                      mov r1, #0
00612c60  02 50 a0 e1                                      mov r5, r2
00612c64  03 70 a0 e1                                      mov r7, r3
00612c68  28 90 9d e5                                      ldr sb, [sp, #0x28]
00612c6c  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00612c70  6b 5c 01 eb                                      bl #0x669e24
00612c74  04 80 90 e5                                      ldr r8, [r0, #4]
00612c78  00 60 a0 e3                                      mov r6, #0
00612c7c  04 41 88 e0                                      add r4, r8, r4, lsl #2
00612c80  05 51 88 e0                                      add r5, r8, r5, lsl #2
00612c84  07 81 88 e0                                      add r8, r8, r7, lsl #2
00612c88  06 b0 d5 e7                                      ldrb fp, [r5, r6]
00612c8c  0b 00 a0 e1                                      mov r0, fp
00612c90  33 ef f3 eb                                      bl #0x30e964
00612c94  00 70 a0 e1                                      mov r7, r0
00612c98  06 00 d8 e7                                      ldrb r0, [r8, r6]
00612c9c  00 00 6b e0                                      rsb r0, fp, r0
00612ca0  2f ef f3 eb                                      bl #0x30e964
00612ca4  00 10 a0 e1                                      mov r1, r0
00612ca8  09 00 a0 e1                                      mov r0, sb
00612cac  2e f0 f3 eb                                      bl #0x30ed6c
00612cb0  00 10 a0 e1                                      mov r1, r0
00612cb4  07 00 a0 e1                                      mov r0, r7
00612cb8  b9 ef f3 eb                                      bl #0x30eba4
00612cbc  77 ad 0a eb                                      bl #0x8be2a0
00612cc0  06 30 d4 e7                                      ldrb r3, [r4, r6]
00612cc4  00 30 63 e0                                      rsb r3, r3, r0
00612cc8  06 30 ca e7                                      strb r3, [sl, r6]
00612ccc  01 60 86 e2                                      add r6, r6, #1
00612cd0  04 00 56 e3                                      cmp r6, #4
00612cd4  eb ff ff 1a                                      bne #0x612c88
00612cd8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006268b0, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELin1EhEEhLi4ENS1_15SUseDefaultLerpIhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006268b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006268b4  01 50 a0 e1                                      mov r5, r1
006268b8  24 d0 4d e2                                      sub sp, sp, #0x24
006268bc  00 10 a0 e3                                      mov r1, #0
006268c0  03 40 a0 e1                                      mov r4, r3
006268c4  56 0d 01 eb                                      bl #0x669e24
006268c8  04 10 a0 e1                                      mov r1, r4
006268cc  00 60 a0 e1                                      mov r6, r0
006268d0  fe 05 a0 e3                                      mov r0, #0x3f800000
006268d4  b4 9e f3 eb                                      bl #0x30e3ac
006268d8  1c 40 8d e5                                      str r4, [sp, #0x1c]
006268dc  18 00 8d e5                                      str r0, [sp, #0x18]
006268e0  04 b0 96 e5                                      ldr fp, [r6, #4]
006268e4  18 30 8d e2                                      add r3, sp, #0x18
006268e8  00 60 a0 e3                                      mov r6, #0
006268ec  00 80 a0 e3                                      mov r8, #0
006268f0  05 b1 8b e0                                      add fp, fp, r5, lsl #2
006268f4  08 60 8d e5                                      str r6, [sp, #8]
006268f8  0c 60 8d e5                                      str r6, [sp, #0xc]
006268fc  10 60 8d e5                                      str r6, [sp, #0x10]
00626900  14 60 8d e5                                      str r6, [sp, #0x14]
00626904  08 70 8d e2                                      add r7, sp, #8
00626908  04 30 8d e5                                      str r3, [sp, #4]
0062690c  04 30 9d e5                                      ldr r3, [sp, #4]
00626910  00 40 a0 e3                                      mov r4, #0
00626914  08 90 8b e0                                      add sb, fp, r8
00626918  08 a0 93 e7                                      ldr sl, [r3, r8]
0062691c  04 50 a0 e1                                      mov r5, r4
00626920  05 00 d9 e7                                      ldrb r0, [sb, r5]
00626924  0e a0 f3 eb                                      bl #0x30e964
00626928  0a 10 a0 e1                                      mov r1, sl
0062692c  0e a1 f3 eb                                      bl #0x30ed6c
00626930  06 10 a0 e1                                      mov r1, r6
00626934  9a a0 f3 eb                                      bl #0x30eba4
00626938  04 00 87 e7                                      str r0, [r7, r4]
0062693c  04 40 84 e2                                      add r4, r4, #4
00626940  10 00 54 e3                                      cmp r4, #0x10
00626944  01 50 85 e2                                      add r5, r5, #1
00626948  04 60 97 17                                      ldrne r6, [r7, r4]
0062694c  f3 ff ff 1a                                      bne #0x626920
00626950  04 80 88 e2                                      add r8, r8, #4
00626954  08 00 58 e3                                      cmp r8, #8
00626958  08 60 9d 15                                      ldrne r6, [sp, #8]
0062695c  ea ff ff 1a                                      bne #0x62690c
00626960  08 00 9d e5                                      ldr r0, [sp, #8]
00626964  4d 5e 0a eb                                      bl #0x8be2a0
00626968  48 40 9d e5                                      ldr r4, [sp, #0x48]
0062696c  01 00 c4 e4                                      strb r0, [r4], #1
00626970  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00626974  49 5e 0a eb                                      bl #0x8be2a0
00626978  48 30 9d e5                                      ldr r3, [sp, #0x48]
0062697c  01 00 c3 e5                                      strb r0, [r3, #1]
00626980  10 00 9d e5                                      ldr r0, [sp, #0x10]
00626984  45 5e 0a eb                                      bl #0x8be2a0
00626988  01 00 c4 e5                                      strb r0, [r4, #1]
0062698c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00626990  42 5e 0a eb                                      bl #0x8be2a0
00626994  01 40 84 e2                                      add r4, r4, #1
00626998  01 00 c4 e5                                      strb r0, [r4, #1]
0062699c  24 d0 8d e2                                      add sp, sp, #0x24
006269a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
