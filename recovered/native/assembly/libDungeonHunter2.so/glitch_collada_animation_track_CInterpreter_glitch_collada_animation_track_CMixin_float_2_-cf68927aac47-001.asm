; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061e4ac, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi0EfEEfLi2ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061e4ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e4b0  01 40 a0 e1                                      mov r4, r1
0061e4b4  00 10 a0 e3                                      mov r1, #0
0061e4b8  02 60 a0 e1                                      mov r6, r2
0061e4bc  00 50 a0 e1                                      mov r5, r0
0061e4c0  57 2e 01 eb                                      bl #0x669e24
0061e4c4  04 70 90 e5                                      ldr r7, [r0, #4]
0061e4c8  05 00 a0 e1                                      mov r0, r5
0061e4cc  60 2e 01 eb                                      bl #0x669e54
0061e4d0  00 00 50 e3                                      cmp r0, #0
0061e4d4  02 00 00 1a                                      bne #0x61e4e4
0061e4d8  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061e4dc  00 30 86 e5                                      str r3, [r6]
0061e4e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e4e4  05 00 a0 e1                                      mov r0, r5
0061e4e8  5e 2e 01 eb                                      bl #0x669e68
0061e4ec  00 00 50 e3                                      cmp r0, #0
0061e4f0  f8 ff ff 0a                                      beq #0x61e4d8
0061e4f4  05 00 a0 e1                                      mov r0, r5
0061e4f8  5a 2e 01 eb                                      bl #0x669e68
0061e4fc  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061e500  00 30 86 e5                                      str r3, [r6]
0061e504  04 30 90 e5                                      ldr r3, [r0, #4]
0061e508  04 30 86 e5                                      str r3, [r6, #4]
0061e50c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061e560, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi0EfEEfLi2ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061e560  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061e564  01 40 a0 e1                                      mov r4, r1
0061e568  00 10 a0 e3                                      mov r1, #0
0061e56c  02 50 a0 e1                                      mov r5, r2
0061e570  03 80 a0 e1                                      mov r8, r3
0061e574  00 70 a0 e1                                      mov r7, r0
0061e578  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061e57c  28 2e 01 eb                                      bl #0x669e24
0061e580  04 a0 90 e5                                      ldr sl, [r0, #4]
0061e584  07 00 a0 e1                                      mov r0, r7
0061e588  31 2e 01 eb                                      bl #0x669e54
0061e58c  00 00 50 e3                                      cmp r0, #0
0061e590  0f 00 00 0a                                      beq #0x61e5d4
0061e594  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061e598  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061e59c  04 10 a0 e1                                      mov r1, r4
0061e5a0  81 bf f3 eb                                      bl #0x30e3ac
0061e5a4  00 10 a0 e1                                      mov r1, r0
0061e5a8  08 00 a0 e1                                      mov r0, r8
0061e5ac  ee c1 f3 eb                                      bl #0x30ed6c
0061e5b0  00 10 a0 e1                                      mov r1, r0
0061e5b4  04 00 a0 e1                                      mov r0, r4
0061e5b8  79 c1 f3 eb                                      bl #0x30eba4
0061e5bc  00 00 86 e5                                      str r0, [r6]
0061e5c0  07 00 a0 e1                                      mov r0, r7
0061e5c4  27 2e 01 eb                                      bl #0x669e68
0061e5c8  04 30 90 e5                                      ldr r3, [r0, #4]
0061e5cc  04 30 86 e5                                      str r3, [r6, #4]
0061e5d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061e5d4  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061e5d8  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061e5dc  04 10 a0 e1                                      mov r1, r4
0061e5e0  71 bf f3 eb                                      bl #0x30e3ac
0061e5e4  00 10 a0 e1                                      mov r1, r0
0061e5e8  08 00 a0 e1                                      mov r0, r8
0061e5ec  de c1 f3 eb                                      bl #0x30ed6c
0061e5f0  00 10 a0 e1                                      mov r1, r0
0061e5f4  04 00 a0 e1                                      mov r0, r4
0061e5f8  69 c1 f3 eb                                      bl #0x30eba4
0061e5fc  00 00 86 e5                                      str r0, [r6]
0061e600  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061e678, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi0EfEEfLi2ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061e678  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061e67c  01 40 a0 e1                                      mov r4, r1
0061e680  00 10 a0 e3                                      mov r1, #0
0061e684  02 50 a0 e1                                      mov r5, r2
0061e688  03 60 a0 e1                                      mov r6, r3
0061e68c  00 70 a0 e1                                      mov r7, r0
0061e690  e3 2d 01 eb                                      bl #0x669e24
0061e694  04 30 90 e5                                      ldr r3, [r0, #4]
0061e698  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061e69c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061e6a0  41 bf f3 eb                                      bl #0x30e3ac
0061e6a4  00 40 a0 e1                                      mov r4, r0
0061e6a8  07 00 a0 e1                                      mov r0, r7
0061e6ac  e8 2d 01 eb                                      bl #0x669e54
0061e6b0  00 00 50 e3                                      cmp r0, #0
0061e6b4  01 00 00 1a                                      bne #0x61e6c0
0061e6b8  00 40 86 e5                                      str r4, [r6]
0061e6bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061e6c0  07 00 a0 e1                                      mov r0, r7
0061e6c4  e7 2d 01 eb                                      bl #0x669e68
0061e6c8  00 40 86 e5                                      str r4, [r6]
0061e6cc  04 30 90 e5                                      ldr r3, [r0, #4]
0061e6d0  04 30 86 e5                                      str r3, [r6, #4]
0061e6d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061e6ec, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi2ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA2_fS6_EEEELi0EfEEfLi2ENS1_17SUseDefaultValuesILi0EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 2, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [2], float [2]> >, 0, float>, float, 2, glitch::collada::animation_track::SUseDefaultValues<0, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061e6ec  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061e6f0  01 40 a0 e1                                      mov r4, r1
0061e6f4  00 10 a0 e3                                      mov r1, #0
0061e6f8  02 50 a0 e1                                      mov r5, r2
0061e6fc  03 90 a0 e1                                      mov sb, r3
0061e700  00 80 a0 e1                                      mov r8, r0
0061e704  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061e708  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061e70c  c4 2d 01 eb                                      bl #0x669e24
0061e710  04 60 90 e5                                      ldr r6, [r0, #4]
0061e714  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061e718  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061e71c  0b 10 a0 e1                                      mov r1, fp
0061e720  21 bf f3 eb                                      bl #0x30e3ac
0061e724  0b 10 a0 e1                                      mov r1, fp
0061e728  00 40 a0 e1                                      mov r4, r0
0061e72c  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061e730  1d bf f3 eb                                      bl #0x30e3ac
0061e734  00 60 a0 e1                                      mov r6, r0
0061e738  08 00 a0 e1                                      mov r0, r8
0061e73c  c4 2d 01 eb                                      bl #0x669e54
0061e740  00 00 50 e3                                      cmp r0, #0
0061e744  0a 00 00 1a                                      bne #0x61e774
0061e748  04 10 a0 e1                                      mov r1, r4
0061e74c  06 00 a0 e1                                      mov r0, r6
0061e750  15 bf f3 eb                                      bl #0x30e3ac
0061e754  00 10 a0 e1                                      mov r1, r0
0061e758  0a 00 a0 e1                                      mov r0, sl
0061e75c  82 c1 f3 eb                                      bl #0x30ed6c
0061e760  00 10 a0 e1                                      mov r1, r0
0061e764  04 00 a0 e1                                      mov r0, r4
0061e768  0d c1 f3 eb                                      bl #0x30eba4
0061e76c  00 00 87 e5                                      str r0, [r7]
0061e770  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061e774  08 00 a0 e1                                      mov r0, r8
0061e778  ba 2d 01 eb                                      bl #0x669e68
0061e77c  04 10 a0 e1                                      mov r1, r4
0061e780  00 50 a0 e1                                      mov r5, r0
0061e784  06 00 a0 e1                                      mov r0, r6
0061e788  07 bf f3 eb                                      bl #0x30e3ac
0061e78c  00 10 a0 e1                                      mov r1, r0
0061e790  0a 00 a0 e1                                      mov r0, sl
0061e794  74 c1 f3 eb                                      bl #0x30ed6c
0061e798  00 10 a0 e1                                      mov r1, r0
0061e79c  04 00 a0 e1                                      mov r0, r4
0061e7a0  ff c0 f3 eb                                      bl #0x30eba4
0061e7a4  00 00 87 e5                                      str r0, [r7]
0061e7a8  04 30 95 e5                                      ldr r3, [r5, #4]
0061e7ac  04 30 87 e5                                      str r3, [r7, #4]
0061e7b0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
