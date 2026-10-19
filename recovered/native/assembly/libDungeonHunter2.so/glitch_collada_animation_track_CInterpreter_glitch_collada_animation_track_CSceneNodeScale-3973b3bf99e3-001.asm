; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00616f64, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00616f64  70 40 2d e9                                      push {r4, r5, r6, lr}
00616f68  00 40 a0 e1                                      mov r4, r0
00616f6c  10 d0 4d e2                                      sub sp, sp, #0x10
00616f70  01 50 a0 e1                                      mov r5, r1
00616f74  04 00 8d e2                                      add r0, sp, #4
00616f78  04 10 a0 e1                                      mov r1, r4
00616f7c  02 60 a0 e1                                      mov r6, r2
00616f80  88 f3 ff eb                                      bl #0x613da8
00616f84  04 30 9d e5                                      ldr r3, [sp, #4]
00616f88  85 50 a0 e1                                      lsl r5, r5, #1
00616f8c  04 30 93 e5                                      ldr r3, [r3, #4]
00616f90  f5 00 93 e1                                      ldrsh r0, [r3, r5]
00616f94  72 de f3 eb                                      bl #0x30e964
00616f98  08 30 9d e5                                      ldr r3, [sp, #8]
00616f9c  00 10 93 e5                                      ldr r1, [r3]
00616fa0  71 df f3 eb                                      bl #0x30ed6c
00616fa4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616fa8  00 10 93 e5                                      ldr r1, [r3]
00616fac  fc de f3 eb                                      bl #0x30eba4
00616fb0  00 50 a0 e1                                      mov r5, r0
00616fb4  04 00 a0 e1                                      mov r0, r4
00616fb8  a5 4b 01 eb                                      bl #0x669e54
00616fbc  00 00 50 e3                                      cmp r0, #0
00616fc0  02 00 00 1a                                      bne #0x616fd0
00616fc4  00 50 86 e5                                      str r5, [r6]
00616fc8  10 d0 8d e2                                      add sp, sp, #0x10
00616fcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00616fd0  04 00 a0 e1                                      mov r0, r4
00616fd4  a3 4b 01 eb                                      bl #0x669e68
00616fd8  00 00 50 e3                                      cmp r0, #0
00616fdc  f8 ff ff 0a                                      beq #0x616fc4
00616fe0  04 00 a0 e1                                      mov r0, r4
00616fe4  9f 4b 01 eb                                      bl #0x669e68
00616fe8  00 20 90 e5                                      ldr r2, [r0]
00616fec  06 30 a0 e1                                      mov r3, r6
00616ff0  04 20 83 e4                                      str r2, [r3], #4
00616ff4  04 50 86 e5                                      str r5, [r6, #4]
00616ff8  08 20 90 e5                                      ldr r2, [r0, #8]
00616ffc  04 20 83 e5                                      str r2, [r3, #4]
00617000  f0 ff ff ea                                      b #0x616fc8

; FUNCTION 0x00617014, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00617014  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617018  00 40 a0 e1                                      mov r4, r0
0061701c  14 d0 4d e2                                      sub sp, sp, #0x14
00617020  01 50 a0 e1                                      mov r5, r1
00617024  04 00 8d e2                                      add r0, sp, #4
00617028  04 10 a0 e1                                      mov r1, r4
0061702c  02 60 a0 e1                                      mov r6, r2
00617030  03 90 a0 e1                                      mov sb, r3
00617034  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00617038  5a f3 ff eb                                      bl #0x613da8
0061703c  04 30 9d e5                                      ldr r3, [sp, #4]
00617040  85 50 a0 e1                                      lsl r5, r5, #1
00617044  86 60 a0 e1                                      lsl r6, r6, #1
00617048  04 80 93 e5                                      ldr r8, [r3, #4]
0061704c  08 30 9d e5                                      ldr r3, [sp, #8]
00617050  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00617054  00 b0 93 e5                                      ldr fp, [r3]
00617058  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061705c  00 70 93 e5                                      ldr r7, [r3]
00617060  3f de f3 eb                                      bl #0x30e964
00617064  0b 10 a0 e1                                      mov r1, fp
00617068  3f df f3 eb                                      bl #0x30ed6c
0061706c  07 10 a0 e1                                      mov r1, r7
00617070  cb de f3 eb                                      bl #0x30eba4
00617074  00 50 a0 e1                                      mov r5, r0
00617078  f6 00 98 e1                                      ldrsh r0, [r8, r6]
0061707c  38 de f3 eb                                      bl #0x30e964
00617080  00 10 a0 e1                                      mov r1, r0
00617084  0b 00 a0 e1                                      mov r0, fp
00617088  37 df f3 eb                                      bl #0x30ed6c
0061708c  00 10 a0 e1                                      mov r1, r0
00617090  07 00 a0 e1                                      mov r0, r7
00617094  c2 de f3 eb                                      bl #0x30eba4
00617098  00 70 a0 e1                                      mov r7, r0
0061709c  04 00 a0 e1                                      mov r0, r4
006170a0  6b 4b 01 eb                                      bl #0x669e54
006170a4  00 00 50 e3                                      cmp r0, #0
006170a8  13 00 00 0a                                      beq #0x6170fc
006170ac  04 00 a0 e1                                      mov r0, r4
006170b0  6c 4b 01 eb                                      bl #0x669e68
006170b4  00 30 90 e5                                      ldr r3, [r0]
006170b8  0a 60 a0 e1                                      mov r6, sl
006170bc  05 10 a0 e1                                      mov r1, r5
006170c0  04 30 86 e4                                      str r3, [r6], #4
006170c4  07 00 a0 e1                                      mov r0, r7
006170c8  b7 dc f3 eb                                      bl #0x30e3ac
006170cc  00 10 a0 e1                                      mov r1, r0
006170d0  09 00 a0 e1                                      mov r0, sb
006170d4  24 df f3 eb                                      bl #0x30ed6c
006170d8  05 10 a0 e1                                      mov r1, r5
006170dc  b0 de f3 eb                                      bl #0x30eba4
006170e0  04 00 8a e5                                      str r0, [sl, #4]
006170e4  04 00 a0 e1                                      mov r0, r4
006170e8  5e 4b 01 eb                                      bl #0x669e68
006170ec  08 30 90 e5                                      ldr r3, [r0, #8]
006170f0  04 30 86 e5                                      str r3, [r6, #4]
006170f4  14 d0 8d e2                                      add sp, sp, #0x14
006170f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006170fc  05 10 a0 e1                                      mov r1, r5
00617100  07 00 a0 e1                                      mov r0, r7
00617104  a8 dc f3 eb                                      bl #0x30e3ac
00617108  00 10 a0 e1                                      mov r1, r0
0061710c  09 00 a0 e1                                      mov r0, sb
00617110  15 df f3 eb                                      bl #0x30ed6c
00617114  05 10 a0 e1                                      mov r1, r5
00617118  a1 de f3 eb                                      bl #0x30eba4
0061711c  00 00 8a e5                                      str r0, [sl]
00617120  f3 ff ff ea                                      b #0x6170f4

; FUNCTION 0x00617140, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00617140  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00617144  00 40 a0 e1                                      mov r4, r0
00617148  10 d0 4d e2                                      sub sp, sp, #0x10
0061714c  01 50 a0 e1                                      mov r5, r1
00617150  04 00 8d e2                                      add r0, sp, #4
00617154  04 10 a0 e1                                      mov r1, r4
00617158  02 60 a0 e1                                      mov r6, r2
0061715c  03 a0 a0 e1                                      mov sl, r3
00617160  10 f3 ff eb                                      bl #0x613da8
00617164  04 30 9d e5                                      ldr r3, [sp, #4]
00617168  86 60 a0 e1                                      lsl r6, r6, #1
0061716c  85 50 a0 e1                                      lsl r5, r5, #1
00617170  04 80 93 e5                                      ldr r8, [r3, #4]
00617174  08 30 9d e5                                      ldr r3, [sp, #8]
00617178  f6 00 98 e1                                      ldrsh r0, [r8, r6]
0061717c  00 70 93 e5                                      ldr r7, [r3]
00617180  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617184  00 60 93 e5                                      ldr r6, [r3]
00617188  f5 dd f3 eb                                      bl #0x30e964
0061718c  00 10 a0 e1                                      mov r1, r0
00617190  07 00 a0 e1                                      mov r0, r7
00617194  f4 de f3 eb                                      bl #0x30ed6c
00617198  00 10 a0 e1                                      mov r1, r0
0061719c  06 00 a0 e1                                      mov r0, r6
006171a0  7f de f3 eb                                      bl #0x30eba4
006171a4  00 90 a0 e1                                      mov sb, r0
006171a8  f5 00 98 e1                                      ldrsh r0, [r8, r5]
006171ac  ec dd f3 eb                                      bl #0x30e964
006171b0  07 10 a0 e1                                      mov r1, r7
006171b4  ec de f3 eb                                      bl #0x30ed6c
006171b8  06 10 a0 e1                                      mov r1, r6
006171bc  78 de f3 eb                                      bl #0x30eba4
006171c0  00 10 a0 e1                                      mov r1, r0
006171c4  09 00 a0 e1                                      mov r0, sb
006171c8  77 dc f3 eb                                      bl #0x30e3ac
006171cc  00 50 a0 e1                                      mov r5, r0
006171d0  04 00 a0 e1                                      mov r0, r4
006171d4  1e 4b 01 eb                                      bl #0x669e54
006171d8  00 00 50 e3                                      cmp r0, #0
006171dc  00 50 8a 05                                      streq r5, [sl]
006171e0  01 00 00 1a                                      bne #0x6171ec
006171e4  10 d0 8d e2                                      add sp, sp, #0x10
006171e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006171ec  04 00 a0 e1                                      mov r0, r4
006171f0  1c 4b 01 eb                                      bl #0x669e68
006171f4  00 20 90 e5                                      ldr r2, [r0]
006171f8  0a 30 a0 e1                                      mov r3, sl
006171fc  04 20 83 e4                                      str r2, [r3], #4
00617200  04 50 8a e5                                      str r5, [sl, #4]
00617204  08 20 90 e5                                      ldr r2, [r0, #8]
00617208  04 20 83 e5                                      str r2, [r3, #4]
0061720c  f4 ff ff ea                                      b #0x6171e4

; FUNCTION 0x00617224, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00617224  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617228  00 40 a0 e1                                      mov r4, r0
0061722c  14 d0 4d e2                                      sub sp, sp, #0x14
00617230  01 50 a0 e1                                      mov r5, r1
00617234  04 00 8d e2                                      add r0, sp, #4
00617238  04 10 a0 e1                                      mov r1, r4
0061723c  02 60 a0 e1                                      mov r6, r2
00617240  03 90 a0 e1                                      mov sb, r3
00617244  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
00617248  d6 f2 ff eb                                      bl #0x613da8
0061724c  04 30 9d e5                                      ldr r3, [sp, #4]
00617250  85 50 a0 e1                                      lsl r5, r5, #1
00617254  86 60 a0 e1                                      lsl r6, r6, #1
00617258  04 80 93 e5                                      ldr r8, [r3, #4]
0061725c  08 30 9d e5                                      ldr r3, [sp, #8]
00617260  89 90 a0 e1                                      lsl sb, sb, #1
00617264  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00617268  00 70 93 e5                                      ldr r7, [r3]
0061726c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617270  00 50 93 e5                                      ldr r5, [r3]
00617274  ba dd f3 eb                                      bl #0x30e964
00617278  07 10 a0 e1                                      mov r1, r7
0061727c  ba de f3 eb                                      bl #0x30ed6c
00617280  05 10 a0 e1                                      mov r1, r5
00617284  46 de f3 eb                                      bl #0x30eba4
00617288  00 b0 a0 e1                                      mov fp, r0
0061728c  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00617290  b3 dd f3 eb                                      bl #0x30e964
00617294  00 10 a0 e1                                      mov r1, r0
00617298  07 00 a0 e1                                      mov r0, r7
0061729c  b2 de f3 eb                                      bl #0x30ed6c
006172a0  00 10 a0 e1                                      mov r1, r0
006172a4  05 00 a0 e1                                      mov r0, r5
006172a8  3d de f3 eb                                      bl #0x30eba4
006172ac  0b 10 a0 e1                                      mov r1, fp
006172b0  3d dc f3 eb                                      bl #0x30e3ac
006172b4  00 60 a0 e1                                      mov r6, r0
006172b8  f9 00 98 e1                                      ldrsh r0, [r8, sb]
006172bc  a8 dd f3 eb                                      bl #0x30e964
006172c0  00 10 a0 e1                                      mov r1, r0
006172c4  07 00 a0 e1                                      mov r0, r7
006172c8  a7 de f3 eb                                      bl #0x30ed6c
006172cc  00 10 a0 e1                                      mov r1, r0
006172d0  05 00 a0 e1                                      mov r0, r5
006172d4  32 de f3 eb                                      bl #0x30eba4
006172d8  0b 10 a0 e1                                      mov r1, fp
006172dc  32 dc f3 eb                                      bl #0x30e3ac
006172e0  00 70 a0 e1                                      mov r7, r0
006172e4  04 00 a0 e1                                      mov r0, r4
006172e8  d9 4a 01 eb                                      bl #0x669e54
006172ec  00 00 50 e3                                      cmp r0, #0
006172f0  0b 00 00 1a                                      bne #0x617324
006172f4  06 10 a0 e1                                      mov r1, r6
006172f8  07 00 a0 e1                                      mov r0, r7
006172fc  2a dc f3 eb                                      bl #0x30e3ac
00617300  00 10 a0 e1                                      mov r1, r0
00617304  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617308  97 de f3 eb                                      bl #0x30ed6c
0061730c  00 10 a0 e1                                      mov r1, r0
00617310  06 00 a0 e1                                      mov r0, r6
00617314  22 de f3 eb                                      bl #0x30eba4
00617318  00 00 8a e5                                      str r0, [sl]
0061731c  14 d0 8d e2                                      add sp, sp, #0x14
00617320  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617324  04 00 a0 e1                                      mov r0, r4
00617328  ce 4a 01 eb                                      bl #0x669e68
0061732c  00 30 90 e5                                      ldr r3, [r0]
00617330  0a 40 a0 e1                                      mov r4, sl
00617334  00 50 a0 e1                                      mov r5, r0
00617338  04 30 84 e4                                      str r3, [r4], #4
0061733c  06 10 a0 e1                                      mov r1, r6
00617340  07 00 a0 e1                                      mov r0, r7
00617344  18 dc f3 eb                                      bl #0x30e3ac
00617348  00 10 a0 e1                                      mov r1, r0
0061734c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617350  85 de f3 eb                                      bl #0x30ed6c
00617354  00 10 a0 e1                                      mov r1, r0
00617358  06 00 a0 e1                                      mov r0, r6
0061735c  10 de f3 eb                                      bl #0x30eba4
00617360  04 00 8a e5                                      str r0, [sl, #4]
00617364  08 30 95 e5                                      ldr r3, [r5, #8]
00617368  04 30 84 e5                                      str r3, [r4, #4]
0061736c  ea ff ff ea                                      b #0x61731c
