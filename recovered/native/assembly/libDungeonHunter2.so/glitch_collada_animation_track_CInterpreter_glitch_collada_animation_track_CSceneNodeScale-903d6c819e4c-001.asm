; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061e1e4, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061e1e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e1e8  01 40 a0 e1                                      mov r4, r1
0061e1ec  00 10 a0 e3                                      mov r1, #0
0061e1f0  02 60 a0 e1                                      mov r6, r2
0061e1f4  00 50 a0 e1                                      mov r5, r0
0061e1f8  09 2f 01 eb                                      bl #0x669e24
0061e1fc  04 70 90 e5                                      ldr r7, [r0, #4]
0061e200  05 00 a0 e1                                      mov r0, r5
0061e204  12 2f 01 eb                                      bl #0x669e54
0061e208  00 00 50 e3                                      cmp r0, #0
0061e20c  02 00 00 1a                                      bne #0x61e21c
0061e210  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061e214  00 30 86 e5                                      str r3, [r6]
0061e218  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e21c  05 00 a0 e1                                      mov r0, r5
0061e220  10 2f 01 eb                                      bl #0x669e68
0061e224  00 00 50 e3                                      cmp r0, #0
0061e228  f8 ff ff 0a                                      beq #0x61e210
0061e22c  05 00 a0 e1                                      mov r0, r5
0061e230  0c 2f 01 eb                                      bl #0x669e68
0061e234  00 20 90 e5                                      ldr r2, [r0]
0061e238  06 30 a0 e1                                      mov r3, r6
0061e23c  04 20 83 e4                                      str r2, [r3], #4
0061e240  04 20 90 e5                                      ldr r2, [r0, #4]
0061e244  04 20 86 e5                                      str r2, [r6, #4]
0061e248  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061e24c  04 20 83 e5                                      str r2, [r3, #4]
0061e250  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061e264, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061e264  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061e268  01 40 a0 e1                                      mov r4, r1
0061e26c  00 10 a0 e3                                      mov r1, #0
0061e270  02 50 a0 e1                                      mov r5, r2
0061e274  03 80 a0 e1                                      mov r8, r3
0061e278  00 70 a0 e1                                      mov r7, r0
0061e27c  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061e280  e7 2e 01 eb                                      bl #0x669e24
0061e284  04 a0 90 e5                                      ldr sl, [r0, #4]
0061e288  07 00 a0 e1                                      mov r0, r7
0061e28c  f0 2e 01 eb                                      bl #0x669e54
0061e290  00 00 50 e3                                      cmp r0, #0
0061e294  13 00 00 0a                                      beq #0x61e2e8
0061e298  07 00 a0 e1                                      mov r0, r7
0061e29c  f1 2e 01 eb                                      bl #0x669e68
0061e2a0  00 30 90 e5                                      ldr r3, [r0]
0061e2a4  07 00 a0 e1                                      mov r0, r7
0061e2a8  00 30 86 e5                                      str r3, [r6]
0061e2ac  ed 2e 01 eb                                      bl #0x669e68
0061e2b0  04 30 90 e5                                      ldr r3, [r0, #4]
0061e2b4  04 30 86 e5                                      str r3, [r6, #4]
0061e2b8  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061e2bc  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061e2c0  04 10 a0 e1                                      mov r1, r4
0061e2c4  38 c0 f3 eb                                      bl #0x30e3ac
0061e2c8  00 10 a0 e1                                      mov r1, r0
0061e2cc  08 00 a0 e1                                      mov r0, r8
0061e2d0  a5 c2 f3 eb                                      bl #0x30ed6c
0061e2d4  00 10 a0 e1                                      mov r1, r0
0061e2d8  04 00 a0 e1                                      mov r0, r4
0061e2dc  30 c2 f3 eb                                      bl #0x30eba4
0061e2e0  08 00 86 e5                                      str r0, [r6, #8]
0061e2e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061e2e8  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061e2ec  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061e2f0  04 10 a0 e1                                      mov r1, r4
0061e2f4  2c c0 f3 eb                                      bl #0x30e3ac
0061e2f8  00 10 a0 e1                                      mov r1, r0
0061e2fc  08 00 a0 e1                                      mov r0, r8
0061e300  99 c2 f3 eb                                      bl #0x30ed6c
0061e304  00 10 a0 e1                                      mov r1, r0
0061e308  04 00 a0 e1                                      mov r0, r4
0061e30c  24 c2 f3 eb                                      bl #0x30eba4
0061e310  00 00 86 e5                                      str r0, [r6]
0061e314  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061e334, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061e334  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e338  01 40 a0 e1                                      mov r4, r1
0061e33c  00 10 a0 e3                                      mov r1, #0
0061e340  02 50 a0 e1                                      mov r5, r2
0061e344  03 60 a0 e1                                      mov r6, r3
0061e348  00 70 a0 e1                                      mov r7, r0
0061e34c  b4 2e 01 eb                                      bl #0x669e24
0061e350  04 30 90 e5                                      ldr r3, [r0, #4]
0061e354  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061e358  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061e35c  12 c0 f3 eb                                      bl #0x30e3ac
0061e360  00 40 a0 e1                                      mov r4, r0
0061e364  07 00 a0 e1                                      mov r0, r7
0061e368  b9 2e 01 eb                                      bl #0x669e54
0061e36c  00 00 50 e3                                      cmp r0, #0
0061e370  01 00 00 1a                                      bne #0x61e37c
0061e374  00 40 86 e5                                      str r4, [r6]
0061e378  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e37c  07 00 a0 e1                                      mov r0, r7
0061e380  b8 2e 01 eb                                      bl #0x669e68
0061e384  00 20 90 e5                                      ldr r2, [r0]
0061e388  06 30 a0 e1                                      mov r3, r6
0061e38c  04 20 83 e4                                      str r2, [r3], #4
0061e390  04 20 90 e5                                      ldr r2, [r0, #4]
0061e394  04 20 86 e5                                      str r2, [r6, #4]
0061e398  04 40 83 e5                                      str r4, [r3, #4]
0061e39c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061e3b4, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061e3b4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061e3b8  01 40 a0 e1                                      mov r4, r1
0061e3bc  00 10 a0 e3                                      mov r1, #0
0061e3c0  02 50 a0 e1                                      mov r5, r2
0061e3c4  03 90 a0 e1                                      mov sb, r3
0061e3c8  00 80 a0 e1                                      mov r8, r0
0061e3cc  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061e3d0  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061e3d4  92 2e 01 eb                                      bl #0x669e24
0061e3d8  04 60 90 e5                                      ldr r6, [r0, #4]
0061e3dc  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061e3e0  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061e3e4  0b 10 a0 e1                                      mov r1, fp
0061e3e8  ef bf f3 eb                                      bl #0x30e3ac
0061e3ec  0b 10 a0 e1                                      mov r1, fp
0061e3f0  00 40 a0 e1                                      mov r4, r0
0061e3f4  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061e3f8  eb bf f3 eb                                      bl #0x30e3ac
0061e3fc  00 60 a0 e1                                      mov r6, r0
0061e400  08 00 a0 e1                                      mov r0, r8
0061e404  92 2e 01 eb                                      bl #0x669e54
0061e408  00 00 50 e3                                      cmp r0, #0
0061e40c  0a 00 00 1a                                      bne #0x61e43c
0061e410  04 10 a0 e1                                      mov r1, r4
0061e414  06 00 a0 e1                                      mov r0, r6
0061e418  e3 bf f3 eb                                      bl #0x30e3ac
0061e41c  00 10 a0 e1                                      mov r1, r0
0061e420  0a 00 a0 e1                                      mov r0, sl
0061e424  50 c2 f3 eb                                      bl #0x30ed6c
0061e428  00 10 a0 e1                                      mov r1, r0
0061e42c  04 00 a0 e1                                      mov r0, r4
0061e430  db c1 f3 eb                                      bl #0x30eba4
0061e434  00 00 87 e5                                      str r0, [r7]
0061e438  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061e43c  08 00 a0 e1                                      mov r0, r8
0061e440  88 2e 01 eb                                      bl #0x669e68
0061e444  00 20 90 e5                                      ldr r2, [r0]
0061e448  07 50 a0 e1                                      mov r5, r7
0061e44c  00 30 a0 e1                                      mov r3, r0
0061e450  04 20 85 e4                                      str r2, [r5], #4
0061e454  04 30 93 e5                                      ldr r3, [r3, #4]
0061e458  04 10 a0 e1                                      mov r1, r4
0061e45c  06 00 a0 e1                                      mov r0, r6
0061e460  04 30 87 e5                                      str r3, [r7, #4]
0061e464  d0 bf f3 eb                                      bl #0x30e3ac
0061e468  00 10 a0 e1                                      mov r1, r0
0061e46c  0a 00 a0 e1                                      mov r0, sl
0061e470  3d c2 f3 eb                                      bl #0x30ed6c
0061e474  00 10 a0 e1                                      mov r1, r0
0061e478  04 00 a0 e1                                      mov r0, r4
0061e47c  c8 c1 f3 eb                                      bl #0x30eba4
0061e480  04 00 85 e5                                      str r0, [r5, #4]
0061e484  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
