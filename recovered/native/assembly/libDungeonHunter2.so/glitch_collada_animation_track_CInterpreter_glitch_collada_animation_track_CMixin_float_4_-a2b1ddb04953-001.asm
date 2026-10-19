; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061d428, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi1EfEEfLi4ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061d428  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061d42c  01 40 a0 e1                                      mov r4, r1
0061d430  00 10 a0 e3                                      mov r1, #0
0061d434  03 90 a0 e1                                      mov sb, r3
0061d438  02 50 a0 e1                                      mov r5, r2
0061d43c  00 80 a0 e1                                      mov r8, r0
0061d440  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061d444  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061d448  75 32 01 eb                                      bl #0x669e24
0061d44c  04 60 90 e5                                      ldr r6, [r0, #4]
0061d450  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061d454  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061d458  0b 10 a0 e1                                      mov r1, fp
0061d45c  d2 c3 f3 eb                                      bl #0x30e3ac
0061d460  0b 10 a0 e1                                      mov r1, fp
0061d464  00 40 a0 e1                                      mov r4, r0
0061d468  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061d46c  ce c3 f3 eb                                      bl #0x30e3ac
0061d470  00 90 a0 e1                                      mov sb, r0
0061d474  08 00 a0 e1                                      mov r0, r8
0061d478  75 32 01 eb                                      bl #0x669e54
0061d47c  00 00 50 e3                                      cmp r0, #0
0061d480  0a 00 00 1a                                      bne #0x61d4b0
0061d484  04 10 a0 e1                                      mov r1, r4
0061d488  09 00 a0 e1                                      mov r0, sb
0061d48c  c6 c3 f3 eb                                      bl #0x30e3ac
0061d490  00 10 a0 e1                                      mov r1, r0
0061d494  0a 00 a0 e1                                      mov r0, sl
0061d498  33 c6 f3 eb                                      bl #0x30ed6c
0061d49c  00 10 a0 e1                                      mov r1, r0
0061d4a0  04 00 a0 e1                                      mov r0, r4
0061d4a4  be c5 f3 eb                                      bl #0x30eba4
0061d4a8  00 00 87 e5                                      str r0, [r7]
0061d4ac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061d4b0  08 00 a0 e1                                      mov r0, r8
0061d4b4  6b 32 01 eb                                      bl #0x669e68
0061d4b8  00 30 90 e5                                      ldr r3, [r0]
0061d4bc  07 50 a0 e1                                      mov r5, r7
0061d4c0  00 60 a0 e1                                      mov r6, r0
0061d4c4  04 30 85 e4                                      str r3, [r5], #4
0061d4c8  04 10 a0 e1                                      mov r1, r4
0061d4cc  09 00 a0 e1                                      mov r0, sb
0061d4d0  b5 c3 f3 eb                                      bl #0x30e3ac
0061d4d4  00 10 a0 e1                                      mov r1, r0
0061d4d8  0a 00 a0 e1                                      mov r0, sl
0061d4dc  22 c6 f3 eb                                      bl #0x30ed6c
0061d4e0  00 10 a0 e1                                      mov r1, r0
0061d4e4  04 00 a0 e1                                      mov r0, r4
0061d4e8  ad c5 f3 eb                                      bl #0x30eba4
0061d4ec  04 00 87 e5                                      str r0, [r7, #4]
0061d4f0  08 30 96 e5                                      ldr r3, [r6, #8]
0061d4f4  04 30 85 e5                                      str r3, [r5, #4]
0061d4f8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061d4fc  08 30 85 e5                                      str r3, [r5, #8]
0061d500  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061f1dc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi1EfEEfLi4ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061f1dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f1e0  01 40 a0 e1                                      mov r4, r1
0061f1e4  00 10 a0 e3                                      mov r1, #0
0061f1e8  02 60 a0 e1                                      mov r6, r2
0061f1ec  00 50 a0 e1                                      mov r5, r0
0061f1f0  0b 2b 01 eb                                      bl #0x669e24
0061f1f4  04 70 90 e5                                      ldr r7, [r0, #4]
0061f1f8  05 00 a0 e1                                      mov r0, r5
0061f1fc  14 2b 01 eb                                      bl #0x669e54
0061f200  00 00 50 e3                                      cmp r0, #0
0061f204  02 00 00 1a                                      bne #0x61f214
0061f208  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061f20c  00 30 86 e5                                      str r3, [r6]
0061f210  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061f214  05 00 a0 e1                                      mov r0, r5
0061f218  12 2b 01 eb                                      bl #0x669e68
0061f21c  00 00 50 e3                                      cmp r0, #0
0061f220  f8 ff ff 0a                                      beq #0x61f208
0061f224  05 00 a0 e1                                      mov r0, r5
0061f228  0e 2b 01 eb                                      bl #0x669e68
0061f22c  00 20 90 e5                                      ldr r2, [r0]
0061f230  06 30 a0 e1                                      mov r3, r6
0061f234  04 20 83 e4                                      str r2, [r3], #4
0061f238  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061f23c  04 20 86 e5                                      str r2, [r6, #4]
0061f240  08 20 90 e5                                      ldr r2, [r0, #8]
0061f244  04 20 83 e5                                      str r2, [r3, #4]
0061f248  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0061f24c  08 20 83 e5                                      str r2, [r3, #8]
0061f250  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061f2a4, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi1EfEEfLi4ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061f2a4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061f2a8  01 40 a0 e1                                      mov r4, r1
0061f2ac  00 10 a0 e3                                      mov r1, #0
0061f2b0  02 50 a0 e1                                      mov r5, r2
0061f2b4  03 a0 a0 e1                                      mov sl, r3
0061f2b8  00 60 a0 e1                                      mov r6, r0
0061f2bc  20 70 9d e5                                      ldr r7, [sp, #0x20]
0061f2c0  d7 2a 01 eb                                      bl #0x669e24
0061f2c4  04 90 90 e5                                      ldr sb, [r0, #4]
0061f2c8  06 00 a0 e1                                      mov r0, r6
0061f2cc  e0 2a 01 eb                                      bl #0x669e54
0061f2d0  00 00 50 e3                                      cmp r0, #0
0061f2d4  19 00 00 0a                                      beq #0x61f340
0061f2d8  06 00 a0 e1                                      mov r0, r6
0061f2dc  e1 2a 01 eb                                      bl #0x669e68
0061f2e0  00 30 90 e5                                      ldr r3, [r0]
0061f2e4  07 80 a0 e1                                      mov r8, r7
0061f2e8  04 30 88 e4                                      str r3, [r8], #4
0061f2ec  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061f2f0  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061f2f4  04 50 88 e2                                      add r5, r8, #4
0061f2f8  04 10 a0 e1                                      mov r1, r4
0061f2fc  2a bc f3 eb                                      bl #0x30e3ac
0061f300  00 10 a0 e1                                      mov r1, r0
0061f304  0a 00 a0 e1                                      mov r0, sl
0061f308  97 be f3 eb                                      bl #0x30ed6c
0061f30c  00 10 a0 e1                                      mov r1, r0
0061f310  04 00 a0 e1                                      mov r0, r4
0061f314  22 be f3 eb                                      bl #0x30eba4
0061f318  04 00 87 e5                                      str r0, [r7, #4]
0061f31c  06 00 a0 e1                                      mov r0, r6
0061f320  d0 2a 01 eb                                      bl #0x669e68
0061f324  08 30 90 e5                                      ldr r3, [r0, #8]
0061f328  06 00 a0 e1                                      mov r0, r6
0061f32c  04 30 88 e5                                      str r3, [r8, #4]
0061f330  cc 2a 01 eb                                      bl #0x669e68
0061f334  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0061f338  04 30 85 e5                                      str r3, [r5, #4]
0061f33c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061f340  04 41 99 e7                                      ldr r4, [sb, r4, lsl #2]
0061f344  05 01 99 e7                                      ldr r0, [sb, r5, lsl #2]
0061f348  04 10 a0 e1                                      mov r1, r4
0061f34c  16 bc f3 eb                                      bl #0x30e3ac
0061f350  00 10 a0 e1                                      mov r1, r0
0061f354  0a 00 a0 e1                                      mov r0, sl
0061f358  83 be f3 eb                                      bl #0x30ed6c
0061f35c  00 10 a0 e1                                      mov r1, r0
0061f360  04 00 a0 e1                                      mov r0, r4
0061f364  0e be f3 eb                                      bl #0x30eba4
0061f368  00 00 87 e5                                      str r0, [r7]
0061f36c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061f3e4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELi1EfEEfLi4ENS1_17SUseDefaultValuesILi1EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 1, float>, float, 4, glitch::collada::animation_track::SUseDefaultValues<1, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061f3e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061f3e8  01 40 a0 e1                                      mov r4, r1
0061f3ec  00 10 a0 e3                                      mov r1, #0
0061f3f0  02 50 a0 e1                                      mov r5, r2
0061f3f4  03 60 a0 e1                                      mov r6, r3
0061f3f8  00 70 a0 e1                                      mov r7, r0
0061f3fc  88 2a 01 eb                                      bl #0x669e24
0061f400  04 30 90 e5                                      ldr r3, [r0, #4]
0061f404  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0061f408  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
0061f40c  e6 bb f3 eb                                      bl #0x30e3ac
0061f410  00 40 a0 e1                                      mov r4, r0
0061f414  07 00 a0 e1                                      mov r0, r7
0061f418  8d 2a 01 eb                                      bl #0x669e54
0061f41c  00 00 50 e3                                      cmp r0, #0
0061f420  01 00 00 1a                                      bne #0x61f42c
0061f424  00 40 86 e5                                      str r4, [r6]
0061f428  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061f42c  07 00 a0 e1                                      mov r0, r7
0061f430  8c 2a 01 eb                                      bl #0x669e68
0061f434  00 20 90 e5                                      ldr r2, [r0]
0061f438  06 30 a0 e1                                      mov r3, r6
0061f43c  04 20 83 e4                                      str r2, [r3], #4
0061f440  04 40 86 e5                                      str r4, [r6, #4]
0061f444  08 20 90 e5                                      ldr r2, [r0, #8]
0061f448  04 20 83 e5                                      str r2, [r3, #4]
0061f44c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0061f450  08 20 83 e5                                      str r2, [r3, #8]
0061f454  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
