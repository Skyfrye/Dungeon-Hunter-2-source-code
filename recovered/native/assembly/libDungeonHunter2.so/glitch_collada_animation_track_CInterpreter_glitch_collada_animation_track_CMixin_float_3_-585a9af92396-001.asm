; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061eb00, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_fS6_EEEELi0EfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061eb00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061eb04  01 40 a0 e1                                      mov r4, r1
0061eb08  00 10 a0 e3                                      mov r1, #0
0061eb0c  02 60 a0 e1                                      mov r6, r2
0061eb10  00 50 a0 e1                                      mov r5, r0
0061eb14  c2 2c 01 eb                                      bl #0x669e24
0061eb18  04 70 90 e5                                      ldr r7, [r0, #4]
0061eb1c  05 00 a0 e1                                      mov r0, r5
0061eb20  cb 2c 01 eb                                      bl #0x669e54
0061eb24  00 00 50 e3                                      cmp r0, #0
0061eb28  02 00 00 1a                                      bne #0x61eb38
0061eb2c  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061eb30  00 30 86 e5                                      str r3, [r6]
0061eb34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061eb38  05 00 a0 e1                                      mov r0, r5
0061eb3c  c9 2c 01 eb                                      bl #0x669e68
0061eb40  00 00 50 e3                                      cmp r0, #0
0061eb44  f8 ff ff 0a                                      beq #0x61eb2c
0061eb48  05 00 a0 e1                                      mov r0, r5
0061eb4c  c5 2c 01 eb                                      bl #0x669e68
0061eb50  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061eb54  06 30 a0 e1                                      mov r3, r6
0061eb58  04 20 83 e4                                      str r2, [r3], #4
0061eb5c  04 20 90 e5                                      ldr r2, [r0, #4]
0061eb60  04 20 86 e5                                      str r2, [r6, #4]
0061eb64  08 20 90 e5                                      ldr r2, [r0, #8]
0061eb68  04 20 83 e5                                      str r2, [r3, #4]
0061eb6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ebc0, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_fS6_EEEELi0EfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061ebc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061ebc4  01 40 a0 e1                                      mov r4, r1
0061ebc8  00 10 a0 e3                                      mov r1, #0
0061ebcc  02 50 a0 e1                                      mov r5, r2
0061ebd0  03 80 a0 e1                                      mov r8, r3
0061ebd4  00 60 a0 e1                                      mov r6, r0
0061ebd8  20 70 9d e5                                      ldr r7, [sp, #0x20]
0061ebdc  90 2c 01 eb                                      bl #0x669e24
0061ebe0  04 90 90 e5                                      ldr sb, [r0, #4]
0061ebe4  06 00 a0 e1                                      mov r0, r6
0061ebe8  99 2c 01 eb                                      bl #0x669e54
0061ebec  00 00 50 e3                                      cmp r0, #0
0061ebf0  14 00 00 0a                                      beq #0x61ec48
0061ebf4  04 a1 99 e7                                      ldr sl, [sb, r4, lsl #2]
0061ebf8  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061ebfc  07 40 a0 e1                                      mov r4, r7
0061ec00  0a 10 a0 e1                                      mov r1, sl
0061ec04  e8 bd f3 eb                                      bl #0x30e3ac
0061ec08  00 10 a0 e1                                      mov r1, r0
0061ec0c  08 00 a0 e1                                      mov r0, r8
0061ec10  55 c0 f3 eb                                      bl #0x30ed6c
0061ec14  00 10 a0 e1                                      mov r1, r0
0061ec18  0a 00 a0 e1                                      mov r0, sl
0061ec1c  e0 bf f3 eb                                      bl #0x30eba4
0061ec20  04 00 84 e4                                      str r0, [r4], #4
0061ec24  06 00 a0 e1                                      mov r0, r6
0061ec28  8e 2c 01 eb                                      bl #0x669e68
0061ec2c  04 30 90 e5                                      ldr r3, [r0, #4]
0061ec30  06 00 a0 e1                                      mov r0, r6
0061ec34  04 30 87 e5                                      str r3, [r7, #4]
0061ec38  8a 2c 01 eb                                      bl #0x669e68
0061ec3c  08 30 90 e5                                      ldr r3, [r0, #8]
0061ec40  04 30 84 e5                                      str r3, [r4, #4]
0061ec44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061ec48  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061ec4c  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061ec50  04 10 a0 e1                                      mov r1, r4
0061ec54  d4 bd f3 eb                                      bl #0x30e3ac
0061ec58  00 10 a0 e1                                      mov r1, r0
0061ec5c  08 00 a0 e1                                      mov r0, r8
0061ec60  41 c0 f3 eb                                      bl #0x30ed6c
0061ec64  00 10 a0 e1                                      mov r1, r0
0061ec68  04 00 a0 e1                                      mov r0, r4
0061ec6c  cc bf f3 eb                                      bl #0x30eba4
0061ec70  00 00 87 e5                                      str r0, [r7]
0061ec74  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061ecec, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_fS6_EEEELi0EfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061ecec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061ecf0  01 40 a0 e1                                      mov r4, r1
0061ecf4  00 10 a0 e3                                      mov r1, #0
0061ecf8  02 50 a0 e1                                      mov r5, r2
0061ecfc  03 60 a0 e1                                      mov r6, r3
0061ed00  00 70 a0 e1                                      mov r7, r0
0061ed04  46 2c 01 eb                                      bl #0x669e24
0061ed08  04 30 90 e5                                      ldr r3, [r0, #4]
0061ed0c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061ed10  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061ed14  a4 bd f3 eb                                      bl #0x30e3ac
0061ed18  00 40 a0 e1                                      mov r4, r0
0061ed1c  07 00 a0 e1                                      mov r0, r7
0061ed20  4b 2c 01 eb                                      bl #0x669e54
0061ed24  00 00 50 e3                                      cmp r0, #0
0061ed28  01 00 00 1a                                      bne #0x61ed34
0061ed2c  00 40 86 e5                                      str r4, [r6]
0061ed30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061ed34  07 00 a0 e1                                      mov r0, r7
0061ed38  4a 2c 01 eb                                      bl #0x669e68
0061ed3c  06 30 a0 e1                                      mov r3, r6
0061ed40  04 40 83 e4                                      str r4, [r3], #4
0061ed44  04 20 90 e5                                      ldr r2, [r0, #4]
0061ed48  04 20 86 e5                                      str r2, [r6, #4]
0061ed4c  08 20 90 e5                                      ldr r2, [r0, #8]
0061ed50  04 20 83 e5                                      str r2, [r3, #4]
0061ed54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ed6c, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA3_fS6_EEEELi0EfEEfLi3ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [3], float [3]> >, 0, float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061ed6c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061ed70  01 40 a0 e1                                      mov r4, r1
0061ed74  00 10 a0 e3                                      mov r1, #0
0061ed78  02 50 a0 e1                                      mov r5, r2
0061ed7c  03 90 a0 e1                                      mov sb, r3
0061ed80  00 80 a0 e1                                      mov r8, r0
0061ed84  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061ed88  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061ed8c  24 2c 01 eb                                      bl #0x669e24
0061ed90  04 60 90 e5                                      ldr r6, [r0, #4]
0061ed94  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061ed98  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061ed9c  0b 10 a0 e1                                      mov r1, fp
0061eda0  81 bd f3 eb                                      bl #0x30e3ac
0061eda4  0b 10 a0 e1                                      mov r1, fp
0061eda8  00 40 a0 e1                                      mov r4, r0
0061edac  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061edb0  7d bd f3 eb                                      bl #0x30e3ac
0061edb4  00 60 a0 e1                                      mov r6, r0
0061edb8  08 00 a0 e1                                      mov r0, r8
0061edbc  24 2c 01 eb                                      bl #0x669e54
0061edc0  00 00 50 e3                                      cmp r0, #0
0061edc4  0a 00 00 1a                                      bne #0x61edf4
0061edc8  04 10 a0 e1                                      mov r1, r4
0061edcc  06 00 a0 e1                                      mov r0, r6
0061edd0  75 bd f3 eb                                      bl #0x30e3ac
0061edd4  00 10 a0 e1                                      mov r1, r0
0061edd8  0a 00 a0 e1                                      mov r0, sl
0061eddc  e2 bf f3 eb                                      bl #0x30ed6c
0061ede0  00 10 a0 e1                                      mov r1, r0
0061ede4  04 00 a0 e1                                      mov r0, r4
0061ede8  6d bf f3 eb                                      bl #0x30eba4
0061edec  00 00 87 e5                                      str r0, [r7]
0061edf0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061edf4  08 00 a0 e1                                      mov r0, r8
0061edf8  1a 2c 01 eb                                      bl #0x669e68
0061edfc  04 10 a0 e1                                      mov r1, r4
0061ee00  00 50 a0 e1                                      mov r5, r0
0061ee04  06 00 a0 e1                                      mov r0, r6
0061ee08  67 bd f3 eb                                      bl #0x30e3ac
0061ee0c  00 10 a0 e1                                      mov r1, r0
0061ee10  0a 00 a0 e1                                      mov r0, sl
0061ee14  d4 bf f3 eb                                      bl #0x30ed6c
0061ee18  00 10 a0 e1                                      mov r1, r0
0061ee1c  04 00 a0 e1                                      mov r0, r4
0061ee20  5f bf f3 eb                                      bl #0x30eba4
0061ee24  07 30 a0 e1                                      mov r3, r7
0061ee28  04 00 83 e4                                      str r0, [r3], #4
0061ee2c  04 20 95 e5                                      ldr r2, [r5, #4]
0061ee30  04 20 87 e5                                      str r2, [r7, #4]
0061ee34  08 20 95 e5                                      ldr r2, [r5, #8]
0061ee38  04 20 83 e5                                      str r2, [r3, #4]
0061ee3c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
