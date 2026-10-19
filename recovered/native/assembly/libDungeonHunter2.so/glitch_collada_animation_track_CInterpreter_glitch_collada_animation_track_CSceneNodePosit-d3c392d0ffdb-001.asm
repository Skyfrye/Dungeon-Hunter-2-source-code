; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061fc70, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061fc70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061fc74  01 40 a0 e1                                      mov r4, r1
0061fc78  00 10 a0 e3                                      mov r1, #0
0061fc7c  02 60 a0 e1                                      mov r6, r2
0061fc80  00 50 a0 e1                                      mov r5, r0
0061fc84  66 28 01 eb                                      bl #0x669e24
0061fc88  04 70 90 e5                                      ldr r7, [r0, #4]
0061fc8c  05 00 a0 e1                                      mov r0, r5
0061fc90  6f 28 01 eb                                      bl #0x669e54
0061fc94  00 00 50 e3                                      cmp r0, #0
0061fc98  02 00 00 1a                                      bne #0x61fca8
0061fc9c  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061fca0  00 30 86 e5                                      str r3, [r6]
0061fca4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061fca8  05 00 a0 e1                                      mov r0, r5
0061fcac  6d 28 01 eb                                      bl #0x669e68
0061fcb0  00 00 50 e3                                      cmp r0, #0
0061fcb4  f8 ff ff 0a                                      beq #0x61fc9c
0061fcb8  05 00 a0 e1                                      mov r0, r5
0061fcbc  69 28 01 eb                                      bl #0x669e68
0061fcc0  00 20 90 e5                                      ldr r2, [r0]
0061fcc4  06 30 a0 e1                                      mov r3, r6
0061fcc8  04 20 83 e4                                      str r2, [r3], #4
0061fccc  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061fcd0  04 20 86 e5                                      str r2, [r6, #4]
0061fcd4  08 20 90 e5                                      ldr r2, [r0, #8]
0061fcd8  04 20 83 e5                                      str r2, [r3, #4]
0061fcdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061fcf0, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061fcf0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061fcf4  01 40 a0 e1                                      mov r4, r1
0061fcf8  00 10 a0 e3                                      mov r1, #0
0061fcfc  02 50 a0 e1                                      mov r5, r2
0061fd00  03 80 a0 e1                                      mov r8, r3
0061fd04  00 60 a0 e1                                      mov r6, r0
0061fd08  20 70 9d e5                                      ldr r7, [sp, #0x20]
0061fd0c  44 28 01 eb                                      bl #0x669e24
0061fd10  04 90 90 e5                                      ldr sb, [r0, #4]
0061fd14  06 00 a0 e1                                      mov r0, r6
0061fd18  4d 28 01 eb                                      bl #0x669e54
0061fd1c  00 00 50 e3                                      cmp r0, #0
0061fd20  14 00 00 0a                                      beq #0x61fd78
0061fd24  06 00 a0 e1                                      mov r0, r6
0061fd28  4e 28 01 eb                                      bl #0x669e68
0061fd2c  00 30 90 e5                                      ldr r3, [r0]
0061fd30  07 a0 a0 e1                                      mov sl, r7
0061fd34  04 30 8a e4                                      str r3, [sl], #4
0061fd38  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061fd3c  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061fd40  04 10 a0 e1                                      mov r1, r4
0061fd44  98 b9 f3 eb                                      bl #0x30e3ac
0061fd48  00 10 a0 e1                                      mov r1, r0
0061fd4c  08 00 a0 e1                                      mov r0, r8
0061fd50  05 bc f3 eb                                      bl #0x30ed6c
0061fd54  00 10 a0 e1                                      mov r1, r0
0061fd58  04 00 a0 e1                                      mov r0, r4
0061fd5c  90 bb f3 eb                                      bl #0x30eba4
0061fd60  04 00 87 e5                                      str r0, [r7, #4]
0061fd64  06 00 a0 e1                                      mov r0, r6
0061fd68  3e 28 01 eb                                      bl #0x669e68
0061fd6c  08 30 90 e5                                      ldr r3, [r0, #8]
0061fd70  04 30 8a e5                                      str r3, [sl, #4]
0061fd74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061fd78  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061fd7c  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061fd80  04 10 a0 e1                                      mov r1, r4
0061fd84  88 b9 f3 eb                                      bl #0x30e3ac
0061fd88  00 10 a0 e1                                      mov r1, r0
0061fd8c  08 00 a0 e1                                      mov r0, r8
0061fd90  f5 bb f3 eb                                      bl #0x30ed6c
0061fd94  00 10 a0 e1                                      mov r1, r0
0061fd98  04 00 a0 e1                                      mov r0, r4
0061fd9c  80 bb f3 eb                                      bl #0x30eba4
0061fda0  00 00 87 e5                                      str r0, [r7]
0061fda4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061fdc4, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061fdc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061fdc8  01 40 a0 e1                                      mov r4, r1
0061fdcc  00 10 a0 e3                                      mov r1, #0
0061fdd0  02 50 a0 e1                                      mov r5, r2
0061fdd4  03 60 a0 e1                                      mov r6, r3
0061fdd8  00 70 a0 e1                                      mov r7, r0
0061fddc  10 28 01 eb                                      bl #0x669e24
0061fde0  04 30 90 e5                                      ldr r3, [r0, #4]
0061fde4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061fde8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061fdec  6e b9 f3 eb                                      bl #0x30e3ac
0061fdf0  00 40 a0 e1                                      mov r4, r0
0061fdf4  07 00 a0 e1                                      mov r0, r7
0061fdf8  15 28 01 eb                                      bl #0x669e54
0061fdfc  00 00 50 e3                                      cmp r0, #0
0061fe00  01 00 00 1a                                      bne #0x61fe0c
0061fe04  00 40 86 e5                                      str r4, [r6]
0061fe08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061fe0c  07 00 a0 e1                                      mov r0, r7
0061fe10  14 28 01 eb                                      bl #0x669e68
0061fe14  00 20 90 e5                                      ldr r2, [r0]
0061fe18  06 30 a0 e1                                      mov r3, r6
0061fe1c  04 20 83 e4                                      str r2, [r3], #4
0061fe20  04 40 86 e5                                      str r4, [r6, #4]
0061fe24  08 20 90 e5                                      ldr r2, [r0, #8]
0061fe28  04 20 83 e5                                      str r2, [r3, #4]
0061fe2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061fe44, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIfEEfLi3ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061fe44  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061fe48  01 40 a0 e1                                      mov r4, r1
0061fe4c  00 10 a0 e3                                      mov r1, #0
0061fe50  03 90 a0 e1                                      mov sb, r3
0061fe54  02 50 a0 e1                                      mov r5, r2
0061fe58  00 80 a0 e1                                      mov r8, r0
0061fe5c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061fe60  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061fe64  ee 27 01 eb                                      bl #0x669e24
0061fe68  04 60 90 e5                                      ldr r6, [r0, #4]
0061fe6c  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061fe70  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061fe74  0b 10 a0 e1                                      mov r1, fp
0061fe78  4b b9 f3 eb                                      bl #0x30e3ac
0061fe7c  0b 10 a0 e1                                      mov r1, fp
0061fe80  00 40 a0 e1                                      mov r4, r0
0061fe84  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061fe88  47 b9 f3 eb                                      bl #0x30e3ac
0061fe8c  00 90 a0 e1                                      mov sb, r0
0061fe90  08 00 a0 e1                                      mov r0, r8
0061fe94  ee 27 01 eb                                      bl #0x669e54
0061fe98  00 00 50 e3                                      cmp r0, #0
0061fe9c  0a 00 00 1a                                      bne #0x61fecc
0061fea0  04 10 a0 e1                                      mov r1, r4
0061fea4  09 00 a0 e1                                      mov r0, sb
0061fea8  3f b9 f3 eb                                      bl #0x30e3ac
0061feac  00 10 a0 e1                                      mov r1, r0
0061feb0  0a 00 a0 e1                                      mov r0, sl
0061feb4  ac bb f3 eb                                      bl #0x30ed6c
0061feb8  00 10 a0 e1                                      mov r1, r0
0061febc  04 00 a0 e1                                      mov r0, r4
0061fec0  37 bb f3 eb                                      bl #0x30eba4
0061fec4  00 00 87 e5                                      str r0, [r7]
0061fec8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061fecc  08 00 a0 e1                                      mov r0, r8
0061fed0  e4 27 01 eb                                      bl #0x669e68
0061fed4  00 30 90 e5                                      ldr r3, [r0]
0061fed8  07 50 a0 e1                                      mov r5, r7
0061fedc  00 60 a0 e1                                      mov r6, r0
0061fee0  04 30 85 e4                                      str r3, [r5], #4
0061fee4  04 10 a0 e1                                      mov r1, r4
0061fee8  09 00 a0 e1                                      mov r0, sb
0061feec  2e b9 f3 eb                                      bl #0x30e3ac
0061fef0  00 10 a0 e1                                      mov r1, r0
0061fef4  0a 00 a0 e1                                      mov r0, sl
0061fef8  9b bb f3 eb                                      bl #0x30ed6c
0061fefc  00 10 a0 e1                                      mov r1, r0
0061ff00  04 00 a0 e1                                      mov r0, r4
0061ff04  26 bb f3 eb                                      bl #0x30eba4
0061ff08  04 00 87 e5                                      str r0, [r7, #4]
0061ff0c  08 30 96 e5                                      ldr r3, [r6, #8]
0061ff10  04 30 85 e5                                      str r3, [r5, #4]
0061ff14  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
