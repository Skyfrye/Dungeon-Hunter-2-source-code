; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061dc4c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061dc4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061dc50  01 40 a0 e1                                      mov r4, r1
0061dc54  00 10 a0 e3                                      mov r1, #0
0061dc58  02 60 a0 e1                                      mov r6, r2
0061dc5c  00 50 a0 e1                                      mov r5, r0
0061dc60  6f 30 01 eb                                      bl #0x669e24
0061dc64  04 70 90 e5                                      ldr r7, [r0, #4]
0061dc68  05 00 a0 e1                                      mov r0, r5
0061dc6c  78 30 01 eb                                      bl #0x669e54
0061dc70  00 00 50 e3                                      cmp r0, #0
0061dc74  02 00 00 1a                                      bne #0x61dc84
0061dc78  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061dc7c  00 30 86 e5                                      str r3, [r6]
0061dc80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061dc84  05 00 a0 e1                                      mov r0, r5
0061dc88  76 30 01 eb                                      bl #0x669e68
0061dc8c  00 00 50 e3                                      cmp r0, #0
0061dc90  f8 ff ff 0a                                      beq #0x61dc78
0061dc94  05 00 a0 e1                                      mov r0, r5
0061dc98  72 30 01 eb                                      bl #0x669e68
0061dc9c  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061dca0  06 30 a0 e1                                      mov r3, r6
0061dca4  04 20 83 e4                                      str r2, [r3], #4
0061dca8  04 20 90 e5                                      ldr r2, [r0, #4]
0061dcac  04 20 86 e5                                      str r2, [r6, #4]
0061dcb0  08 20 90 e5                                      ldr r2, [r0, #8]
0061dcb4  04 20 83 e5                                      str r2, [r3, #4]
0061dcb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061dccc, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061dccc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061dcd0  01 40 a0 e1                                      mov r4, r1
0061dcd4  00 10 a0 e3                                      mov r1, #0
0061dcd8  02 50 a0 e1                                      mov r5, r2
0061dcdc  03 80 a0 e1                                      mov r8, r3
0061dce0  00 60 a0 e1                                      mov r6, r0
0061dce4  20 70 9d e5                                      ldr r7, [sp, #0x20]
0061dce8  4d 30 01 eb                                      bl #0x669e24
0061dcec  04 90 90 e5                                      ldr sb, [r0, #4]
0061dcf0  06 00 a0 e1                                      mov r0, r6
0061dcf4  56 30 01 eb                                      bl #0x669e54
0061dcf8  00 00 50 e3                                      cmp r0, #0
0061dcfc  14 00 00 0a                                      beq #0x61dd54
0061dd00  04 a1 99 e7                                      ldr sl, [sb, r4, lsl #2]
0061dd04  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061dd08  07 40 a0 e1                                      mov r4, r7
0061dd0c  0a 10 a0 e1                                      mov r1, sl
0061dd10  a5 c1 f3 eb                                      bl #0x30e3ac
0061dd14  00 10 a0 e1                                      mov r1, r0
0061dd18  08 00 a0 e1                                      mov r0, r8
0061dd1c  12 c4 f3 eb                                      bl #0x30ed6c
0061dd20  00 10 a0 e1                                      mov r1, r0
0061dd24  0a 00 a0 e1                                      mov r0, sl
0061dd28  9d c3 f3 eb                                      bl #0x30eba4
0061dd2c  04 00 84 e4                                      str r0, [r4], #4
0061dd30  06 00 a0 e1                                      mov r0, r6
0061dd34  4b 30 01 eb                                      bl #0x669e68
0061dd38  04 30 90 e5                                      ldr r3, [r0, #4]
0061dd3c  06 00 a0 e1                                      mov r0, r6
0061dd40  04 30 87 e5                                      str r3, [r7, #4]
0061dd44  47 30 01 eb                                      bl #0x669e68
0061dd48  08 30 90 e5                                      ldr r3, [r0, #8]
0061dd4c  04 30 84 e5                                      str r3, [r4, #4]
0061dd50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061dd54  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061dd58  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061dd5c  04 10 a0 e1                                      mov r1, r4
0061dd60  91 c1 f3 eb                                      bl #0x30e3ac
0061dd64  00 10 a0 e1                                      mov r1, r0
0061dd68  08 00 a0 e1                                      mov r0, r8
0061dd6c  fe c3 f3 eb                                      bl #0x30ed6c
0061dd70  00 10 a0 e1                                      mov r1, r0
0061dd74  04 00 a0 e1                                      mov r0, r4
0061dd78  89 c3 f3 eb                                      bl #0x30eba4
0061dd7c  00 00 87 e5                                      str r0, [r7]
0061dd80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061dda0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061dda0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061dda4  01 40 a0 e1                                      mov r4, r1
0061dda8  00 10 a0 e3                                      mov r1, #0
0061ddac  02 50 a0 e1                                      mov r5, r2
0061ddb0  03 60 a0 e1                                      mov r6, r3
0061ddb4  00 70 a0 e1                                      mov r7, r0
0061ddb8  19 30 01 eb                                      bl #0x669e24
0061ddbc  04 30 90 e5                                      ldr r3, [r0, #4]
0061ddc0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061ddc4  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061ddc8  77 c1 f3 eb                                      bl #0x30e3ac
0061ddcc  00 40 a0 e1                                      mov r4, r0
0061ddd0  07 00 a0 e1                                      mov r0, r7
0061ddd4  1e 30 01 eb                                      bl #0x669e54
0061ddd8  00 00 50 e3                                      cmp r0, #0
0061dddc  01 00 00 1a                                      bne #0x61dde8
0061dde0  00 40 86 e5                                      str r4, [r6]
0061dde4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061dde8  07 00 a0 e1                                      mov r0, r7
0061ddec  1d 30 01 eb                                      bl #0x669e68
0061ddf0  06 30 a0 e1                                      mov r3, r6
0061ddf4  04 40 83 e4                                      str r4, [r3], #4
0061ddf8  04 20 90 e5                                      ldr r2, [r0, #4]
0061ddfc  04 20 86 e5                                      str r2, [r6, #4]
0061de00  08 20 90 e5                                      ldr r2, [r0, #8]
0061de04  04 20 83 e5                                      str r2, [r3, #4]
0061de08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061de20, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061de20  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061de24  01 40 a0 e1                                      mov r4, r1
0061de28  00 10 a0 e3                                      mov r1, #0
0061de2c  02 50 a0 e1                                      mov r5, r2
0061de30  03 90 a0 e1                                      mov sb, r3
0061de34  00 80 a0 e1                                      mov r8, r0
0061de38  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061de3c  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061de40  f7 2f 01 eb                                      bl #0x669e24
0061de44  04 60 90 e5                                      ldr r6, [r0, #4]
0061de48  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061de4c  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061de50  0b 10 a0 e1                                      mov r1, fp
0061de54  54 c1 f3 eb                                      bl #0x30e3ac
0061de58  0b 10 a0 e1                                      mov r1, fp
0061de5c  00 40 a0 e1                                      mov r4, r0
0061de60  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061de64  50 c1 f3 eb                                      bl #0x30e3ac
0061de68  00 60 a0 e1                                      mov r6, r0
0061de6c  08 00 a0 e1                                      mov r0, r8
0061de70  f7 2f 01 eb                                      bl #0x669e54
0061de74  00 00 50 e3                                      cmp r0, #0
0061de78  0a 00 00 1a                                      bne #0x61dea8
0061de7c  04 10 a0 e1                                      mov r1, r4
0061de80  06 00 a0 e1                                      mov r0, r6
0061de84  48 c1 f3 eb                                      bl #0x30e3ac
0061de88  00 10 a0 e1                                      mov r1, r0
0061de8c  0a 00 a0 e1                                      mov r0, sl
0061de90  b5 c3 f3 eb                                      bl #0x30ed6c
0061de94  00 10 a0 e1                                      mov r1, r0
0061de98  04 00 a0 e1                                      mov r0, r4
0061de9c  40 c3 f3 eb                                      bl #0x30eba4
0061dea0  00 00 87 e5                                      str r0, [r7]
0061dea4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061dea8  08 00 a0 e1                                      mov r0, r8
0061deac  ed 2f 01 eb                                      bl #0x669e68
0061deb0  04 10 a0 e1                                      mov r1, r4
0061deb4  00 50 a0 e1                                      mov r5, r0
0061deb8  06 00 a0 e1                                      mov r0, r6
0061debc  3a c1 f3 eb                                      bl #0x30e3ac
0061dec0  00 10 a0 e1                                      mov r1, r0
0061dec4  0a 00 a0 e1                                      mov r0, sl
0061dec8  a7 c3 f3 eb                                      bl #0x30ed6c
0061decc  00 10 a0 e1                                      mov r1, r0
0061ded0  04 00 a0 e1                                      mov r0, r4
0061ded4  32 c3 f3 eb                                      bl #0x30eba4
0061ded8  07 30 a0 e1                                      mov r3, r7
0061dedc  04 00 83 e4                                      str r0, [r3], #4
0061dee0  04 20 95 e5                                      ldr r2, [r5, #4]
0061dee4  04 20 87 e5                                      str r2, [r7, #4]
0061dee8  08 20 95 e5                                      ldr r2, [r5, #8]
0061deec  04 20 83 e5                                      str r2, [r3, #4]
0061def0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
