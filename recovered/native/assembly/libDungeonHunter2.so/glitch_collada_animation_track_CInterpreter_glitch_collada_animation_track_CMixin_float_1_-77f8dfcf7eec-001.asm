; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061f4a0, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float>, float, 1, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEfLi1ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float>, float, 1, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061f4a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f4a4  01 40 a0 e1                                      mov r4, r1
0061f4a8  00 10 a0 e3                                      mov r1, #0
0061f4ac  03 70 a0 e1                                      mov r7, r3
0061f4b0  02 50 a0 e1                                      mov r5, r2
0061f4b4  5a 2a 01 eb                                      bl #0x669e24
0061f4b8  04 60 90 e5                                      ldr r6, [r0, #4]
0061f4bc  05 51 96 e7                                      ldr r5, [r6, r5, lsl #2]
0061f4c0  07 01 96 e7                                      ldr r0, [r6, r7, lsl #2]
0061f4c4  05 10 a0 e1                                      mov r1, r5
0061f4c8  b7 bb f3 eb                                      bl #0x30e3ac
0061f4cc  00 10 a0 e1                                      mov r1, r0
0061f4d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061f4d4  24 be f3 eb                                      bl #0x30ed6c
0061f4d8  00 10 a0 e1                                      mov r1, r0
0061f4dc  05 00 a0 e1                                      mov r0, r5
0061f4e0  af bd f3 eb                                      bl #0x30eba4
0061f4e4  04 11 96 e7                                      ldr r1, [r6, r4, lsl #2]
0061f4e8  af bb f3 eb                                      bl #0x30e3ac
0061f4ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0061f4f0  00 00 83 e5                                      str r0, [r3]
0061f4f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0062020c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float>, float, 1, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi1ENS1_17SMaterialSetParamINS1_15SAnimationTypesIffEEEELin1EfEEfLi1ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 1, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float, float> >, -1, float>, float, 1, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0062020c  70 40 2d e9                                      push {r4, r5, r6, lr}
00620210  01 50 a0 e1                                      mov r5, r1
00620214  08 d0 4d e2                                      sub sp, sp, #8
00620218  00 10 a0 e3                                      mov r1, #0
0062021c  03 40 a0 e1                                      mov r4, r3
00620220  ff 26 01 eb                                      bl #0x669e24
00620224  04 10 a0 e1                                      mov r1, r4
00620228  00 60 a0 e1                                      mov r6, r0
0062022c  fe 05 a0 e3                                      mov r0, #0x3f800000
00620230  5d b8 f3 eb                                      bl #0x30e3ac
00620234  04 40 8d e5                                      str r4, [sp, #4]
00620238  00 00 8d e5                                      str r0, [sp]
0062023c  04 30 96 e5                                      ldr r3, [r6, #4]
00620240  00 10 a0 e1                                      mov r1, r0
00620244  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00620248  05 51 83 e0                                      add r5, r3, r5, lsl #2
0062024c  c6 ba f3 eb                                      bl #0x30ed6c
00620250  00 10 a0 e3                                      mov r1, #0
00620254  52 ba f3 eb                                      bl #0x30eba4
00620258  04 10 95 e5                                      ldr r1, [r5, #4]
0062025c  00 60 a0 e1                                      mov r6, r0
00620260  04 00 a0 e1                                      mov r0, r4
00620264  c0 ba f3 eb                                      bl #0x30ed6c
00620268  00 10 a0 e1                                      mov r1, r0
0062026c  06 00 a0 e1                                      mov r0, r6
00620270  4b ba f3 eb                                      bl #0x30eba4
00620274  18 30 9d e5                                      ldr r3, [sp, #0x18]
00620278  00 00 83 e5                                      str r0, [r3]
0062027c  08 d0 8d e2                                      add sp, sp, #8
00620280  70 80 bd e8                                      pop {r4, r5, r6, pc}
