; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061d2cc, declared_size=224, range_size=224, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi3EfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061d2cc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061d2d0  01 40 a0 e1                                      mov r4, r1
0061d2d4  00 10 a0 e3                                      mov r1, #0
0061d2d8  02 50 a0 e1                                      mov r5, r2
0061d2dc  03 90 a0 e1                                      mov sb, r3
0061d2e0  00 80 a0 e1                                      mov r8, r0
0061d2e4  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061d2e8  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061d2ec  cc 32 01 eb                                      bl #0x669e24
0061d2f0  04 60 90 e5                                      ldr r6, [r0, #4]
0061d2f4  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061d2f8  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061d2fc  0b 10 a0 e1                                      mov r1, fp
0061d300  29 c4 f3 eb                                      bl #0x30e3ac
0061d304  0b 10 a0 e1                                      mov r1, fp
0061d308  00 40 a0 e1                                      mov r4, r0
0061d30c  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061d310  25 c4 f3 eb                                      bl #0x30e3ac
0061d314  00 50 a0 e1                                      mov r5, r0
0061d318  08 00 a0 e1                                      mov r0, r8
0061d31c  cc 32 01 eb                                      bl #0x669e54
0061d320  00 00 50 e3                                      cmp r0, #0
0061d324  0a 00 00 1a                                      bne #0x61d354
0061d328  04 10 a0 e1                                      mov r1, r4
0061d32c  05 00 a0 e1                                      mov r0, r5
0061d330  1d c4 f3 eb                                      bl #0x30e3ac
0061d334  00 10 a0 e1                                      mov r1, r0
0061d338  0a 00 a0 e1                                      mov r0, sl
0061d33c  8a c6 f3 eb                                      bl #0x30ed6c
0061d340  00 10 a0 e1                                      mov r1, r0
0061d344  04 00 a0 e1                                      mov r0, r4
0061d348  15 c6 f3 eb                                      bl #0x30eba4
0061d34c  00 00 87 e5                                      str r0, [r7]
0061d350  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061d354  08 00 a0 e1                                      mov r0, r8
0061d358  c2 32 01 eb                                      bl #0x669e68
0061d35c  00 10 90 e5                                      ldr r1, [r0]
0061d360  07 30 a0 e1                                      mov r3, r7
0061d364  00 20 a0 e1                                      mov r2, r0
0061d368  04 10 83 e4                                      str r1, [r3], #4
0061d36c  04 c0 92 e5                                      ldr ip, [r2, #4]
0061d370  05 00 a0 e1                                      mov r0, r5
0061d374  04 10 a0 e1                                      mov r1, r4
0061d378  04 c0 87 e5                                      str ip, [r7, #4]
0061d37c  08 20 92 e5                                      ldr r2, [r2, #8]
0061d380  04 50 83 e2                                      add r5, r3, #4
0061d384  04 20 83 e5                                      str r2, [r3, #4]
0061d388  07 c4 f3 eb                                      bl #0x30e3ac
0061d38c  00 10 a0 e1                                      mov r1, r0
0061d390  0a 00 a0 e1                                      mov r0, sl
0061d394  74 c6 f3 eb                                      bl #0x30ed6c
0061d398  00 10 a0 e1                                      mov r1, r0
0061d39c  04 00 a0 e1                                      mov r0, r4
0061d3a0  ff c5 f3 eb                                      bl #0x30eba4
0061d3a4  04 00 85 e5                                      str r0, [r5, #4]
0061d3a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061d8b4, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi3EfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061d8b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061d8b8  01 40 a0 e1                                      mov r4, r1
0061d8bc  00 10 a0 e3                                      mov r1, #0
0061d8c0  02 60 a0 e1                                      mov r6, r2
0061d8c4  00 50 a0 e1                                      mov r5, r0
0061d8c8  55 31 01 eb                                      bl #0x669e24
0061d8cc  04 70 90 e5                                      ldr r7, [r0, #4]
0061d8d0  05 00 a0 e1                                      mov r0, r5
0061d8d4  5e 31 01 eb                                      bl #0x669e54
0061d8d8  00 00 50 e3                                      cmp r0, #0
0061d8dc  02 00 00 1a                                      bne #0x61d8ec
0061d8e0  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061d8e4  00 30 86 e5                                      str r3, [r6]
0061d8e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061d8ec  05 00 a0 e1                                      mov r0, r5
0061d8f0  5c 31 01 eb                                      bl #0x669e68
0061d8f4  00 00 50 e3                                      cmp r0, #0
0061d8f8  f8 ff ff 0a                                      beq #0x61d8e0
0061d8fc  05 00 a0 e1                                      mov r0, r5
0061d900  58 31 01 eb                                      bl #0x669e68
0061d904  00 20 90 e5                                      ldr r2, [r0]
0061d908  06 30 a0 e1                                      mov r3, r6
0061d90c  04 20 83 e4                                      str r2, [r3], #4
0061d910  04 20 90 e5                                      ldr r2, [r0, #4]
0061d914  04 20 86 e5                                      str r2, [r6, #4]
0061d918  08 20 90 e5                                      ldr r2, [r0, #8]
0061d91c  04 20 83 e5                                      str r2, [r3, #4]
0061d920  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061d924  08 20 83 e5                                      str r2, [r3, #8]
0061d928  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061d97c, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi3EfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061d97c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061d980  01 40 a0 e1                                      mov r4, r1
0061d984  00 10 a0 e3                                      mov r1, #0
0061d988  02 50 a0 e1                                      mov r5, r2
0061d98c  03 80 a0 e1                                      mov r8, r3
0061d990  00 70 a0 e1                                      mov r7, r0
0061d994  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061d998  21 31 01 eb                                      bl #0x669e24
0061d99c  04 90 90 e5                                      ldr sb, [r0, #4]
0061d9a0  07 00 a0 e1                                      mov r0, r7
0061d9a4  2a 31 01 eb                                      bl #0x669e54
0061d9a8  00 00 50 e3                                      cmp r0, #0
0061d9ac  13 00 00 0a                                      beq #0x61da00
0061d9b0  00 a0 a0 e3                                      mov sl, #0
0061d9b4  07 00 a0 e1                                      mov r0, r7
0061d9b8  2a 31 01 eb                                      bl #0x669e68
0061d9bc  0a 30 90 e7                                      ldr r3, [r0, sl]
0061d9c0  0a 30 86 e7                                      str r3, [r6, sl]
0061d9c4  04 a0 8a e2                                      add sl, sl, #4
0061d9c8  0c 00 5a e3                                      cmp sl, #0xc
0061d9cc  f8 ff ff 1a                                      bne #0x61d9b4
0061d9d0  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061d9d4  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061d9d8  04 10 a0 e1                                      mov r1, r4
0061d9dc  72 c2 f3 eb                                      bl #0x30e3ac
0061d9e0  00 10 a0 e1                                      mov r1, r0
0061d9e4  08 00 a0 e1                                      mov r0, r8
0061d9e8  df c4 f3 eb                                      bl #0x30ed6c
0061d9ec  00 10 a0 e1                                      mov r1, r0
0061d9f0  04 00 a0 e1                                      mov r0, r4
0061d9f4  6a c4 f3 eb                                      bl #0x30eba4
0061d9f8  0c 00 86 e5                                      str r0, [r6, #0xc]
0061d9fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061da00  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061da04  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061da08  04 10 a0 e1                                      mov r1, r4
0061da0c  66 c2 f3 eb                                      bl #0x30e3ac
0061da10  00 10 a0 e1                                      mov r1, r0
0061da14  08 00 a0 e1                                      mov r0, r8
0061da18  d3 c4 f3 eb                                      bl #0x30ed6c
0061da1c  00 10 a0 e1                                      mov r1, r0
0061da20  04 00 a0 e1                                      mov r0, r4
0061da24  5e c4 f3 eb                                      bl #0x30eba4
0061da28  00 00 86 e5                                      str r0, [r6]
0061da2c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061daa4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi3EfEEfLi4ENS1_17SUseDefaultValuesILi3EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 3, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061daa4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061daa8  01 40 a0 e1                                      mov r4, r1
0061daac  00 10 a0 e3                                      mov r1, #0
0061dab0  02 50 a0 e1                                      mov r5, r2
0061dab4  03 60 a0 e1                                      mov r6, r3
0061dab8  00 70 a0 e1                                      mov r7, r0
0061dabc  d8 30 01 eb                                      bl #0x669e24
0061dac0  04 30 90 e5                                      ldr r3, [r0, #4]
0061dac4  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061dac8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061dacc  36 c2 f3 eb                                      bl #0x30e3ac
0061dad0  00 40 a0 e1                                      mov r4, r0
0061dad4  07 00 a0 e1                                      mov r0, r7
0061dad8  dd 30 01 eb                                      bl #0x669e54
0061dadc  00 00 50 e3                                      cmp r0, #0
0061dae0  01 00 00 1a                                      bne #0x61daec
0061dae4  00 40 86 e5                                      str r4, [r6]
0061dae8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061daec  07 00 a0 e1                                      mov r0, r7
0061daf0  dc 30 01 eb                                      bl #0x669e68
0061daf4  00 20 90 e5                                      ldr r2, [r0]
0061daf8  06 30 a0 e1                                      mov r3, r6
0061dafc  04 20 83 e4                                      str r2, [r3], #4
0061db00  04 20 90 e5                                      ldr r2, [r0, #4]
0061db04  04 20 86 e5                                      str r2, [r6, #4]
0061db08  08 20 90 e5                                      ldr r2, [r0, #8]
0061db0c  08 40 83 e5                                      str r4, [r3, #8]
0061db10  04 20 83 e5                                      str r2, [r3, #4]
0061db14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
