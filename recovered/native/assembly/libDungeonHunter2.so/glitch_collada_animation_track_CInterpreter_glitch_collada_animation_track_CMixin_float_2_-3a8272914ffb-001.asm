; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061e7d8, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi1EfEEfLi2ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061e7d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e7dc  01 40 a0 e1                                      mov r4, r1
0061e7e0  00 10 a0 e3                                      mov r1, #0
0061e7e4  02 60 a0 e1                                      mov r6, r2
0061e7e8  00 50 a0 e1                                      mov r5, r0
0061e7ec  8c 2d 01 eb                                      bl #0x669e24
0061e7f0  04 70 90 e5                                      ldr r7, [r0, #4]
0061e7f4  05 00 a0 e1                                      mov r0, r5
0061e7f8  95 2d 01 eb                                      bl #0x669e54
0061e7fc  00 00 50 e3                                      cmp r0, #0
0061e800  02 00 00 1a                                      bne #0x61e810
0061e804  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061e808  00 30 86 e5                                      str r3, [r6]
0061e80c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e810  05 00 a0 e1                                      mov r0, r5
0061e814  93 2d 01 eb                                      bl #0x669e68
0061e818  00 00 50 e3                                      cmp r0, #0
0061e81c  f8 ff ff 0a                                      beq #0x61e804
0061e820  05 00 a0 e1                                      mov r0, r5
0061e824  8f 2d 01 eb                                      bl #0x669e68
0061e828  00 30 90 e5                                      ldr r3, [r0]
0061e82c  00 30 86 e5                                      str r3, [r6]
0061e830  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061e834  04 30 86 e5                                      str r3, [r6, #4]
0061e838  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061e88c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi1EfEEfLi2ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061e88c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061e890  01 40 a0 e1                                      mov r4, r1
0061e894  00 10 a0 e3                                      mov r1, #0
0061e898  02 50 a0 e1                                      mov r5, r2
0061e89c  03 80 a0 e1                                      mov r8, r3
0061e8a0  00 70 a0 e1                                      mov r7, r0
0061e8a4  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061e8a8  5d 2d 01 eb                                      bl #0x669e24
0061e8ac  04 a0 90 e5                                      ldr sl, [r0, #4]
0061e8b0  07 00 a0 e1                                      mov r0, r7
0061e8b4  66 2d 01 eb                                      bl #0x669e54
0061e8b8  00 00 50 e3                                      cmp r0, #0
0061e8bc  0f 00 00 0a                                      beq #0x61e900
0061e8c0  07 00 a0 e1                                      mov r0, r7
0061e8c4  67 2d 01 eb                                      bl #0x669e68
0061e8c8  00 30 90 e5                                      ldr r3, [r0]
0061e8cc  00 30 86 e5                                      str r3, [r6]
0061e8d0  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061e8d4  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061e8d8  04 10 a0 e1                                      mov r1, r4
0061e8dc  b2 be f3 eb                                      bl #0x30e3ac
0061e8e0  00 10 a0 e1                                      mov r1, r0
0061e8e4  08 00 a0 e1                                      mov r0, r8
0061e8e8  1f c1 f3 eb                                      bl #0x30ed6c
0061e8ec  00 10 a0 e1                                      mov r1, r0
0061e8f0  04 00 a0 e1                                      mov r0, r4
0061e8f4  aa c0 f3 eb                                      bl #0x30eba4
0061e8f8  04 00 86 e5                                      str r0, [r6, #4]
0061e8fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061e900  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061e904  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061e908  04 10 a0 e1                                      mov r1, r4
0061e90c  a6 be f3 eb                                      bl #0x30e3ac
0061e910  00 10 a0 e1                                      mov r1, r0
0061e914  08 00 a0 e1                                      mov r0, r8
0061e918  13 c1 f3 eb                                      bl #0x30ed6c
0061e91c  00 10 a0 e1                                      mov r1, r0
0061e920  04 00 a0 e1                                      mov r0, r4
0061e924  9e c0 f3 eb                                      bl #0x30eba4
0061e928  00 00 86 e5                                      str r0, [r6]
0061e92c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061e9a4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi1EfEEfLi2ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061e9a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e9a8  01 40 a0 e1                                      mov r4, r1
0061e9ac  00 10 a0 e3                                      mov r1, #0
0061e9b0  02 50 a0 e1                                      mov r5, r2
0061e9b4  03 60 a0 e1                                      mov r6, r3
0061e9b8  00 70 a0 e1                                      mov r7, r0
0061e9bc  18 2d 01 eb                                      bl #0x669e24
0061e9c0  04 30 90 e5                                      ldr r3, [r0, #4]
0061e9c4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061e9c8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061e9cc  76 be f3 eb                                      bl #0x30e3ac
0061e9d0  00 40 a0 e1                                      mov r4, r0
0061e9d4  07 00 a0 e1                                      mov r0, r7
0061e9d8  1d 2d 01 eb                                      bl #0x669e54
0061e9dc  00 00 50 e3                                      cmp r0, #0
0061e9e0  01 00 00 1a                                      bne #0x61e9ec
0061e9e4  00 40 86 e5                                      str r4, [r6]
0061e9e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e9ec  07 00 a0 e1                                      mov r0, r7
0061e9f0  1c 2d 01 eb                                      bl #0x669e68
0061e9f4  00 30 90 e5                                      ldr r3, [r0]
0061e9f8  04 40 86 e5                                      str r4, [r6, #4]
0061e9fc  00 30 86 e5                                      str r3, [r6]
0061ea00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ea18, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi1EfEEfLi2ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 1, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061ea18  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061ea1c  01 40 a0 e1                                      mov r4, r1
0061ea20  00 10 a0 e3                                      mov r1, #0
0061ea24  02 50 a0 e1                                      mov r5, r2
0061ea28  03 90 a0 e1                                      mov sb, r3
0061ea2c  00 80 a0 e1                                      mov r8, r0
0061ea30  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061ea34  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061ea38  f9 2c 01 eb                                      bl #0x669e24
0061ea3c  04 60 90 e5                                      ldr r6, [r0, #4]
0061ea40  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061ea44  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061ea48  0b 10 a0 e1                                      mov r1, fp
0061ea4c  56 be f3 eb                                      bl #0x30e3ac
0061ea50  0b 10 a0 e1                                      mov r1, fp
0061ea54  00 40 a0 e1                                      mov r4, r0
0061ea58  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061ea5c  52 be f3 eb                                      bl #0x30e3ac
0061ea60  00 50 a0 e1                                      mov r5, r0
0061ea64  08 00 a0 e1                                      mov r0, r8
0061ea68  f9 2c 01 eb                                      bl #0x669e54
0061ea6c  00 00 50 e3                                      cmp r0, #0
0061ea70  0a 00 00 1a                                      bne #0x61eaa0
0061ea74  04 10 a0 e1                                      mov r1, r4
0061ea78  05 00 a0 e1                                      mov r0, r5
0061ea7c  4a be f3 eb                                      bl #0x30e3ac
0061ea80  00 10 a0 e1                                      mov r1, r0
0061ea84  0a 00 a0 e1                                      mov r0, sl
0061ea88  b7 c0 f3 eb                                      bl #0x30ed6c
0061ea8c  00 10 a0 e1                                      mov r1, r0
0061ea90  04 00 a0 e1                                      mov r0, r4
0061ea94  42 c0 f3 eb                                      bl #0x30eba4
0061ea98  00 00 87 e5                                      str r0, [r7]
0061ea9c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061eaa0  08 00 a0 e1                                      mov r0, r8
0061eaa4  ef 2c 01 eb                                      bl #0x669e68
0061eaa8  00 30 90 e5                                      ldr r3, [r0]
0061eaac  04 10 a0 e1                                      mov r1, r4
0061eab0  05 00 a0 e1                                      mov r0, r5
0061eab4  00 30 87 e5                                      str r3, [r7]
0061eab8  3b be f3 eb                                      bl #0x30e3ac
0061eabc  00 10 a0 e1                                      mov r1, r0
0061eac0  0a 00 a0 e1                                      mov r0, sl
0061eac4  a8 c0 f3 eb                                      bl #0x30ed6c
0061eac8  00 10 a0 e1                                      mov r1, r0
0061eacc  04 00 a0 e1                                      mov r0, r4
0061ead0  33 c0 f3 eb                                      bl #0x30eba4
0061ead4  04 00 87 e5                                      str r0, [r7, #4]
0061ead8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
