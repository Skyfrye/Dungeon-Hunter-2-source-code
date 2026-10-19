; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061d528, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi2EfEEfLi4ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061d528  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061d52c  01 40 a0 e1                                      mov r4, r1
0061d530  00 10 a0 e3                                      mov r1, #0
0061d534  02 60 a0 e1                                      mov r6, r2
0061d538  00 50 a0 e1                                      mov r5, r0
0061d53c  38 32 01 eb                                      bl #0x669e24
0061d540  04 70 90 e5                                      ldr r7, [r0, #4]
0061d544  05 00 a0 e1                                      mov r0, r5
0061d548  41 32 01 eb                                      bl #0x669e54
0061d54c  00 00 50 e3                                      cmp r0, #0
0061d550  02 00 00 1a                                      bne #0x61d560
0061d554  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061d558  00 30 86 e5                                      str r3, [r6]
0061d55c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061d560  05 00 a0 e1                                      mov r0, r5
0061d564  3f 32 01 eb                                      bl #0x669e68
0061d568  00 00 50 e3                                      cmp r0, #0
0061d56c  f8 ff ff 0a                                      beq #0x61d554
0061d570  05 00 a0 e1                                      mov r0, r5
0061d574  3b 32 01 eb                                      bl #0x669e68
0061d578  00 20 90 e5                                      ldr r2, [r0]
0061d57c  06 30 a0 e1                                      mov r3, r6
0061d580  04 20 83 e4                                      str r2, [r3], #4
0061d584  04 20 90 e5                                      ldr r2, [r0, #4]
0061d588  04 20 86 e5                                      str r2, [r6, #4]
0061d58c  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061d590  04 20 83 e5                                      str r2, [r3, #4]
0061d594  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0061d598  08 20 83 e5                                      str r2, [r3, #8]
0061d59c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061d5f0, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi2EfEEfLi4ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061d5f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061d5f4  01 40 a0 e1                                      mov r4, r1
0061d5f8  00 10 a0 e3                                      mov r1, #0
0061d5fc  02 50 a0 e1                                      mov r5, r2
0061d600  03 80 a0 e1                                      mov r8, r3
0061d604  00 70 a0 e1                                      mov r7, r0
0061d608  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061d60c  04 32 01 eb                                      bl #0x669e24
0061d610  04 a0 90 e5                                      ldr sl, [r0, #4]
0061d614  07 00 a0 e1                                      mov r0, r7
0061d618  0d 32 01 eb                                      bl #0x669e54
0061d61c  00 00 50 e3                                      cmp r0, #0
0061d620  17 00 00 0a                                      beq #0x61d684
0061d624  07 00 a0 e1                                      mov r0, r7
0061d628  0e 32 01 eb                                      bl #0x669e68
0061d62c  00 30 90 e5                                      ldr r3, [r0]
0061d630  07 00 a0 e1                                      mov r0, r7
0061d634  00 30 86 e5                                      str r3, [r6]
0061d638  0a 32 01 eb                                      bl #0x669e68
0061d63c  04 30 90 e5                                      ldr r3, [r0, #4]
0061d640  04 30 86 e5                                      str r3, [r6, #4]
0061d644  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061d648  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061d64c  04 10 a0 e1                                      mov r1, r4
0061d650  55 c3 f3 eb                                      bl #0x30e3ac
0061d654  00 10 a0 e1                                      mov r1, r0
0061d658  08 00 a0 e1                                      mov r0, r8
0061d65c  c2 c5 f3 eb                                      bl #0x30ed6c
0061d660  00 10 a0 e1                                      mov r1, r0
0061d664  04 00 a0 e1                                      mov r0, r4
0061d668  4d c5 f3 eb                                      bl #0x30eba4
0061d66c  08 00 86 e5                                      str r0, [r6, #8]
0061d670  07 00 a0 e1                                      mov r0, r7
0061d674  fb 31 01 eb                                      bl #0x669e68
0061d678  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061d67c  0c 30 86 e5                                      str r3, [r6, #0xc]
0061d680  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061d684  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
0061d688  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
0061d68c  04 10 a0 e1                                      mov r1, r4
0061d690  45 c3 f3 eb                                      bl #0x30e3ac
0061d694  00 10 a0 e1                                      mov r1, r0
0061d698  08 00 a0 e1                                      mov r0, r8
0061d69c  b2 c5 f3 eb                                      bl #0x30ed6c
0061d6a0  00 10 a0 e1                                      mov r1, r0
0061d6a4  04 00 a0 e1                                      mov r0, r4
0061d6a8  3d c5 f3 eb                                      bl #0x30eba4
0061d6ac  00 00 86 e5                                      str r0, [r6]
0061d6b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061d728, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi2EfEEfLi4ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061d728  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061d72c  01 40 a0 e1                                      mov r4, r1
0061d730  00 10 a0 e3                                      mov r1, #0
0061d734  02 50 a0 e1                                      mov r5, r2
0061d738  03 60 a0 e1                                      mov r6, r3
0061d73c  00 70 a0 e1                                      mov r7, r0
0061d740  b7 31 01 eb                                      bl #0x669e24
0061d744  04 30 90 e5                                      ldr r3, [r0, #4]
0061d748  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061d74c  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061d750  15 c3 f3 eb                                      bl #0x30e3ac
0061d754  00 40 a0 e1                                      mov r4, r0
0061d758  07 00 a0 e1                                      mov r0, r7
0061d75c  bc 31 01 eb                                      bl #0x669e54
0061d760  00 00 50 e3                                      cmp r0, #0
0061d764  01 00 00 1a                                      bne #0x61d770
0061d768  00 40 86 e5                                      str r4, [r6]
0061d76c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061d770  07 00 a0 e1                                      mov r0, r7
0061d774  bb 31 01 eb                                      bl #0x669e68
0061d778  00 20 90 e5                                      ldr r2, [r0]
0061d77c  06 30 a0 e1                                      mov r3, r6
0061d780  04 20 83 e4                                      str r2, [r3], #4
0061d784  04 20 90 e5                                      ldr r2, [r0, #4]
0061d788  04 20 86 e5                                      str r2, [r6, #4]
0061d78c  04 40 83 e5                                      str r4, [r3, #4]
0061d790  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0061d794  08 20 83 e5                                      str r2, [r3, #8]
0061d798  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061d7b0, declared_size=224, range_size=224, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi2EfEEfLi4ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061d7b0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061d7b4  01 40 a0 e1                                      mov r4, r1
0061d7b8  00 10 a0 e3                                      mov r1, #0
0061d7bc  03 90 a0 e1                                      mov sb, r3
0061d7c0  02 50 a0 e1                                      mov r5, r2
0061d7c4  00 80 a0 e1                                      mov r8, r0
0061d7c8  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061d7cc  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061d7d0  93 31 01 eb                                      bl #0x669e24
0061d7d4  04 60 90 e5                                      ldr r6, [r0, #4]
0061d7d8  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061d7dc  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061d7e0  0b 10 a0 e1                                      mov r1, fp
0061d7e4  f0 c2 f3 eb                                      bl #0x30e3ac
0061d7e8  0b 10 a0 e1                                      mov r1, fp
0061d7ec  00 40 a0 e1                                      mov r4, r0
0061d7f0  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061d7f4  ec c2 f3 eb                                      bl #0x30e3ac
0061d7f8  00 90 a0 e1                                      mov sb, r0
0061d7fc  08 00 a0 e1                                      mov r0, r8
0061d800  93 31 01 eb                                      bl #0x669e54
0061d804  00 00 50 e3                                      cmp r0, #0
0061d808  0a 00 00 1a                                      bne #0x61d838
0061d80c  04 10 a0 e1                                      mov r1, r4
0061d810  09 00 a0 e1                                      mov r0, sb
0061d814  e4 c2 f3 eb                                      bl #0x30e3ac
0061d818  00 10 a0 e1                                      mov r1, r0
0061d81c  0a 00 a0 e1                                      mov r0, sl
0061d820  51 c5 f3 eb                                      bl #0x30ed6c
0061d824  00 10 a0 e1                                      mov r1, r0
0061d828  04 00 a0 e1                                      mov r0, r4
0061d82c  dc c4 f3 eb                                      bl #0x30eba4
0061d830  00 00 87 e5                                      str r0, [r7]
0061d834  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061d838  08 00 a0 e1                                      mov r0, r8
0061d83c  89 31 01 eb                                      bl #0x669e68
0061d840  00 30 90 e5                                      ldr r3, [r0]
0061d844  07 50 a0 e1                                      mov r5, r7
0061d848  00 60 a0 e1                                      mov r6, r0
0061d84c  04 30 85 e4                                      str r3, [r5], #4
0061d850  04 30 96 e5                                      ldr r3, [r6, #4]
0061d854  04 10 a0 e1                                      mov r1, r4
0061d858  09 00 a0 e1                                      mov r0, sb
0061d85c  04 30 87 e5                                      str r3, [r7, #4]
0061d860  d1 c2 f3 eb                                      bl #0x30e3ac
0061d864  00 10 a0 e1                                      mov r1, r0
0061d868  0a 00 a0 e1                                      mov r0, sl
0061d86c  3e c5 f3 eb                                      bl #0x30ed6c
0061d870  00 10 a0 e1                                      mov r1, r0
0061d874  04 00 a0 e1                                      mov r0, r4
0061d878  c9 c4 f3 eb                                      bl #0x30eba4
0061d87c  04 00 85 e5                                      str r0, [r5, #4]
0061d880  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061d884  04 80 85 e2                                      add r8, r5, #4
0061d888  04 30 88 e5                                      str r3, [r8, #4]
0061d88c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
