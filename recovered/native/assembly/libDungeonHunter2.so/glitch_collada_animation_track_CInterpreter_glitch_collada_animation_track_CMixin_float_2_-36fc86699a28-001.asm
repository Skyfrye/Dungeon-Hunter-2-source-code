; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00612afc, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float>, float, 2, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELin1EfEEfLi2ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float>, float, 2, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00612afc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00612b00  01 40 a0 e1                                      mov r4, r1
00612b04  00 10 a0 e3                                      mov r1, #0
00612b08  02 50 a0 e1                                      mov r5, r2
00612b0c  03 a0 a0 e1                                      mov sl, r3
00612b10  20 80 9d e5                                      ldr r8, [sp, #0x20]
00612b14  24 70 9d e5                                      ldr r7, [sp, #0x24]
00612b18  c1 5c 01 eb                                      bl #0x669e24
00612b1c  04 60 90 e5                                      ldr r6, [r0, #4]
00612b20  85 91 96 e7                                      ldr sb, [r6, r5, lsl #3]
00612b24  8a 01 96 e7                                      ldr r0, [r6, sl, lsl #3]
00612b28  85 51 86 e0                                      add r5, r6, r5, lsl #3
00612b2c  09 10 a0 e1                                      mov r1, sb
00612b30  1d ee f3 eb                                      bl #0x30e3ac
00612b34  00 10 a0 e1                                      mov r1, r0
00612b38  08 00 a0 e1                                      mov r0, r8
00612b3c  8a f0 f3 eb                                      bl #0x30ed6c
00612b40  00 10 a0 e1                                      mov r1, r0
00612b44  09 00 a0 e1                                      mov r0, sb
00612b48  15 f0 f3 eb                                      bl #0x30eba4
00612b4c  84 11 96 e7                                      ldr r1, [r6, r4, lsl #3]
00612b50  15 ee f3 eb                                      bl #0x30e3ac
00612b54  00 00 87 e5                                      str r0, [r7]
00612b58  04 50 95 e5                                      ldr r5, [r5, #4]
00612b5c  8a a1 86 e0                                      add sl, r6, sl, lsl #3
00612b60  04 00 9a e5                                      ldr r0, [sl, #4]
00612b64  05 10 a0 e1                                      mov r1, r5
00612b68  0f ee f3 eb                                      bl #0x30e3ac
00612b6c  00 10 a0 e1                                      mov r1, r0
00612b70  08 00 a0 e1                                      mov r0, r8
00612b74  7c f0 f3 eb                                      bl #0x30ed6c
00612b78  84 41 86 e0                                      add r4, r6, r4, lsl #3
00612b7c  00 10 a0 e1                                      mov r1, r0
00612b80  05 00 a0 e1                                      mov r0, r5
00612b84  06 f0 f3 eb                                      bl #0x30eba4
00612b88  04 10 94 e5                                      ldr r1, [r4, #4]
00612b8c  06 ee f3 eb                                      bl #0x30e3ac
00612b90  04 00 87 e5                                      str r0, [r7, #4]
00612b94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00622254, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float>, float, 2, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELin1EfEEfLi2ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, -1, float>, float, 2, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00622254  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00622258  01 60 a0 e1                                      mov r6, r1
0062225c  08 d0 4d e2                                      sub sp, sp, #8
00622260  00 10 a0 e3                                      mov r1, #0
00622264  03 40 a0 e1                                      mov r4, r3
00622268  20 50 9d e5                                      ldr r5, [sp, #0x20]
0062226c  ec 1e 01 eb                                      bl #0x669e24
00622270  04 10 a0 e1                                      mov r1, r4
00622274  00 80 a0 e1                                      mov r8, r0
00622278  fe 05 a0 e3                                      mov r0, #0x3f800000
0062227c  4a b0 f3 eb                                      bl #0x30e3ac
00622280  04 40 8d e5                                      str r4, [sp, #4]
00622284  00 00 8d e5                                      str r0, [sp]
00622288  04 30 98 e5                                      ldr r3, [r8, #4]
0062228c  00 70 a0 e1                                      mov r7, r0
00622290  86 11 93 e7                                      ldr r1, [r3, r6, lsl #3]
00622294  86 61 83 e0                                      add r6, r3, r6, lsl #3
00622298  b3 b2 f3 eb                                      bl #0x30ed6c
0062229c  00 10 a0 e3                                      mov r1, #0
006222a0  3f b2 f3 eb                                      bl #0x30eba4
006222a4  04 10 96 e5                                      ldr r1, [r6, #4]
006222a8  00 80 a0 e1                                      mov r8, r0
006222ac  07 00 a0 e1                                      mov r0, r7
006222b0  ad b2 f3 eb                                      bl #0x30ed6c
006222b4  00 10 a0 e3                                      mov r1, #0
006222b8  39 b2 f3 eb                                      bl #0x30eba4
006222bc  04 60 86 e2                                      add r6, r6, #4
006222c0  08 10 96 e5                                      ldr r1, [r6, #8]
006222c4  00 70 a0 e1                                      mov r7, r0
006222c8  04 00 a0 e1                                      mov r0, r4
006222cc  a6 b2 f3 eb                                      bl #0x30ed6c
006222d0  00 10 a0 e1                                      mov r1, r0
006222d4  07 00 a0 e1                                      mov r0, r7
006222d8  31 b2 f3 eb                                      bl #0x30eba4
006222dc  04 10 96 e5                                      ldr r1, [r6, #4]
006222e0  00 70 a0 e1                                      mov r7, r0
006222e4  04 00 a0 e1                                      mov r0, r4
006222e8  9f b2 f3 eb                                      bl #0x30ed6c
006222ec  00 10 a0 e1                                      mov r1, r0
006222f0  08 00 a0 e1                                      mov r0, r8
006222f4  2a b2 f3 eb                                      bl #0x30eba4
006222f8  04 70 85 e5                                      str r7, [r5, #4]
006222fc  00 00 85 e5                                      str r0, [r5]
00622300  08 d0 8d e2                                      add sp, sp, #8
00622304  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
