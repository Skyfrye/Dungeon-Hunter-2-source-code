; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061df18, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061df18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061df1c  01 40 a0 e1                                      mov r4, r1
0061df20  00 10 a0 e3                                      mov r1, #0
0061df24  02 60 a0 e1                                      mov r6, r2
0061df28  00 50 a0 e1                                      mov r5, r0
0061df2c  bc 2f 01 eb                                      bl #0x669e24
0061df30  04 70 90 e5                                      ldr r7, [r0, #4]
0061df34  05 00 a0 e1                                      mov r0, r5
0061df38  c5 2f 01 eb                                      bl #0x669e54
0061df3c  00 00 50 e3                                      cmp r0, #0
0061df40  02 00 00 1a                                      bne #0x61df50
0061df44  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061df48  00 30 86 e5                                      str r3, [r6]
0061df4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061df50  05 00 a0 e1                                      mov r0, r5
0061df54  c3 2f 01 eb                                      bl #0x669e68
0061df58  00 00 50 e3                                      cmp r0, #0
0061df5c  f8 ff ff 0a                                      beq #0x61df44
0061df60  05 00 a0 e1                                      mov r0, r5
0061df64  bf 2f 01 eb                                      bl #0x669e68
0061df68  00 20 90 e5                                      ldr r2, [r0]
0061df6c  06 30 a0 e1                                      mov r3, r6
0061df70  04 20 83 e4                                      str r2, [r3], #4
0061df74  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061df78  04 20 86 e5                                      str r2, [r6, #4]
0061df7c  08 20 90 e5                                      ldr r2, [r0, #8]
0061df80  04 20 83 e5                                      str r2, [r3, #4]
0061df84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061df98, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061df98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061df9c  01 40 a0 e1                                      mov r4, r1
0061dfa0  00 10 a0 e3                                      mov r1, #0
0061dfa4  02 50 a0 e1                                      mov r5, r2
0061dfa8  03 80 a0 e1                                      mov r8, r3
0061dfac  00 60 a0 e1                                      mov r6, r0
0061dfb0  20 70 9d e5                                      ldr r7, [sp, #0x20]
0061dfb4  9a 2f 01 eb                                      bl #0x669e24
0061dfb8  04 90 90 e5                                      ldr sb, [r0, #4]
0061dfbc  06 00 a0 e1                                      mov r0, r6
0061dfc0  a3 2f 01 eb                                      bl #0x669e54
0061dfc4  00 00 50 e3                                      cmp r0, #0
0061dfc8  14 00 00 0a                                      beq #0x61e020
0061dfcc  06 00 a0 e1                                      mov r0, r6
0061dfd0  a4 2f 01 eb                                      bl #0x669e68
0061dfd4  00 30 90 e5                                      ldr r3, [r0]
0061dfd8  07 a0 a0 e1                                      mov sl, r7
0061dfdc  04 30 8a e4                                      str r3, [sl], #4
0061dfe0  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061dfe4  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061dfe8  04 10 a0 e1                                      mov r1, r4
0061dfec  ee c0 f3 eb                                      bl #0x30e3ac
0061dff0  00 10 a0 e1                                      mov r1, r0
0061dff4  08 00 a0 e1                                      mov r0, r8
0061dff8  5b c3 f3 eb                                      bl #0x30ed6c
0061dffc  00 10 a0 e1                                      mov r1, r0
0061e000  04 00 a0 e1                                      mov r0, r4
0061e004  e6 c2 f3 eb                                      bl #0x30eba4
0061e008  04 00 87 e5                                      str r0, [r7, #4]
0061e00c  06 00 a0 e1                                      mov r0, r6
0061e010  94 2f 01 eb                                      bl #0x669e68
0061e014  08 30 90 e5                                      ldr r3, [r0, #8]
0061e018  04 30 8a e5                                      str r3, [sl, #4]
0061e01c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061e020  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061e024  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061e028  04 10 a0 e1                                      mov r1, r4
0061e02c  de c0 f3 eb                                      bl #0x30e3ac
0061e030  00 10 a0 e1                                      mov r1, r0
0061e034  08 00 a0 e1                                      mov r0, r8
0061e038  4b c3 f3 eb                                      bl #0x30ed6c
0061e03c  00 10 a0 e1                                      mov r1, r0
0061e040  04 00 a0 e1                                      mov r0, r4
0061e044  d6 c2 f3 eb                                      bl #0x30eba4
0061e048  00 00 87 e5                                      str r0, [r7]
0061e04c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061e06c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061e06c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e070  01 40 a0 e1                                      mov r4, r1
0061e074  00 10 a0 e3                                      mov r1, #0
0061e078  02 50 a0 e1                                      mov r5, r2
0061e07c  03 60 a0 e1                                      mov r6, r3
0061e080  00 70 a0 e1                                      mov r7, r0
0061e084  66 2f 01 eb                                      bl #0x669e24
0061e088  04 30 90 e5                                      ldr r3, [r0, #4]
0061e08c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061e090  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061e094  c4 c0 f3 eb                                      bl #0x30e3ac
0061e098  00 40 a0 e1                                      mov r4, r0
0061e09c  07 00 a0 e1                                      mov r0, r7
0061e0a0  6b 2f 01 eb                                      bl #0x669e54
0061e0a4  00 00 50 e3                                      cmp r0, #0
0061e0a8  01 00 00 1a                                      bne #0x61e0b4
0061e0ac  00 40 86 e5                                      str r4, [r6]
0061e0b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e0b4  07 00 a0 e1                                      mov r0, r7
0061e0b8  6a 2f 01 eb                                      bl #0x669e68
0061e0bc  00 20 90 e5                                      ldr r2, [r0]
0061e0c0  06 30 a0 e1                                      mov r3, r6
0061e0c4  04 20 83 e4                                      str r2, [r3], #4
0061e0c8  04 40 86 e5                                      str r4, [r6, #4]
0061e0cc  08 20 90 e5                                      ldr r2, [r0, #8]
0061e0d0  04 20 83 e5                                      str r2, [r3, #4]
0061e0d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061e0ec, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061e0ec  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061e0f0  01 40 a0 e1                                      mov r4, r1
0061e0f4  00 10 a0 e3                                      mov r1, #0
0061e0f8  03 90 a0 e1                                      mov sb, r3
0061e0fc  02 50 a0 e1                                      mov r5, r2
0061e100  00 80 a0 e1                                      mov r8, r0
0061e104  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061e108  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061e10c  44 2f 01 eb                                      bl #0x669e24
0061e110  04 60 90 e5                                      ldr r6, [r0, #4]
0061e114  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061e118  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061e11c  0b 10 a0 e1                                      mov r1, fp
0061e120  a1 c0 f3 eb                                      bl #0x30e3ac
0061e124  0b 10 a0 e1                                      mov r1, fp
0061e128  00 40 a0 e1                                      mov r4, r0
0061e12c  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061e130  9d c0 f3 eb                                      bl #0x30e3ac
0061e134  00 90 a0 e1                                      mov sb, r0
0061e138  08 00 a0 e1                                      mov r0, r8
0061e13c  44 2f 01 eb                                      bl #0x669e54
0061e140  00 00 50 e3                                      cmp r0, #0
0061e144  0a 00 00 1a                                      bne #0x61e174
0061e148  04 10 a0 e1                                      mov r1, r4
0061e14c  09 00 a0 e1                                      mov r0, sb
0061e150  95 c0 f3 eb                                      bl #0x30e3ac
0061e154  00 10 a0 e1                                      mov r1, r0
0061e158  0a 00 a0 e1                                      mov r0, sl
0061e15c  02 c3 f3 eb                                      bl #0x30ed6c
0061e160  00 10 a0 e1                                      mov r1, r0
0061e164  04 00 a0 e1                                      mov r0, r4
0061e168  8d c2 f3 eb                                      bl #0x30eba4
0061e16c  00 00 87 e5                                      str r0, [r7]
0061e170  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061e174  08 00 a0 e1                                      mov r0, r8
0061e178  3a 2f 01 eb                                      bl #0x669e68
0061e17c  00 30 90 e5                                      ldr r3, [r0]
0061e180  07 50 a0 e1                                      mov r5, r7
0061e184  00 60 a0 e1                                      mov r6, r0
0061e188  04 30 85 e4                                      str r3, [r5], #4
0061e18c  04 10 a0 e1                                      mov r1, r4
0061e190  09 00 a0 e1                                      mov r0, sb
0061e194  84 c0 f3 eb                                      bl #0x30e3ac
0061e198  00 10 a0 e1                                      mov r1, r0
0061e19c  0a 00 a0 e1                                      mov r0, sl
0061e1a0  f1 c2 f3 eb                                      bl #0x30ed6c
0061e1a4  00 10 a0 e1                                      mov r1, r0
0061e1a8  04 00 a0 e1                                      mov r0, r4
0061e1ac  7c c2 f3 eb                                      bl #0x30eba4
0061e1b0  04 00 87 e5                                      str r0, [r7, #4]
0061e1b4  08 30 96 e5                                      ldr r3, [r6, #8]
0061e1b8  04 30 85 e5                                      str r3, [r5, #4]
0061e1bc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
