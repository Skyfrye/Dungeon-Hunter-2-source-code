; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006121c0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELin1EfEEfLi4ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006121c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006121c4  01 40 a0 e1                                      mov r4, r1
006121c8  00 10 a0 e3                                      mov r1, #0
006121cc  02 50 a0 e1                                      mov r5, r2
006121d0  03 70 a0 e1                                      mov r7, r3
006121d4  20 90 9d e5                                      ldr sb, [sp, #0x20]
006121d8  24 a0 9d e5                                      ldr sl, [sp, #0x24]
006121dc  10 5f 01 eb                                      bl #0x669e24
006121e0  04 80 90 e5                                      ldr r8, [r0, #4]
006121e4  00 60 a0 e3                                      mov r6, #0
006121e8  04 42 88 e0                                      add r4, r8, r4, lsl #4
006121ec  05 52 88 e0                                      add r5, r8, r5, lsl #4
006121f0  07 82 88 e0                                      add r8, r8, r7, lsl #4
006121f4  06 70 95 e7                                      ldr r7, [r5, r6]
006121f8  06 00 98 e7                                      ldr r0, [r8, r6]
006121fc  07 10 a0 e1                                      mov r1, r7
00612200  69 f0 f3 eb                                      bl #0x30e3ac
00612204  00 10 a0 e1                                      mov r1, r0
00612208  09 00 a0 e1                                      mov r0, sb
0061220c  d6 f2 f3 eb                                      bl #0x30ed6c
00612210  00 10 a0 e1                                      mov r1, r0
00612214  07 00 a0 e1                                      mov r0, r7
00612218  61 f2 f3 eb                                      bl #0x30eba4
0061221c  06 10 94 e7                                      ldr r1, [r4, r6]
00612220  61 f0 f3 eb                                      bl #0x30e3ac
00612224  06 00 8a e7                                      str r0, [sl, r6]
00612228  04 60 86 e2                                      add r6, r6, #4
0061222c  10 00 56 e3                                      cmp r6, #0x10
00612230  ef ff ff 1a                                      bne #0x6121f4
00612234  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00624e74, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_fS6_EEEELin1EfEEfLi4ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00624e74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00624e78  01 60 a0 e1                                      mov r6, r1
00624e7c  1c d0 4d e2                                      sub sp, sp, #0x1c
00624e80  00 10 a0 e3                                      mov r1, #0
00624e84  03 40 a0 e1                                      mov r4, r3
00624e88  40 b0 9d e5                                      ldr fp, [sp, #0x40]
00624e8c  e4 13 01 eb                                      bl #0x669e24
00624e90  04 10 a0 e1                                      mov r1, r4
00624e94  00 50 a0 e1                                      mov r5, r0
00624e98  fe 05 a0 e3                                      mov r0, #0x3f800000
00624e9c  42 a5 f3 eb                                      bl #0x30e3ac
00624ea0  14 40 8d e5                                      str r4, [sp, #0x14]
00624ea4  10 00 8d e5                                      str r0, [sp, #0x10]
00624ea8  04 70 95 e5                                      ldr r7, [r5, #4]
00624eac  00 50 a0 e3                                      mov r5, #0
00624eb0  00 a0 a0 e3                                      mov sl, #0
00624eb4  06 72 87 e0                                      add r7, r7, r6, lsl #4
00624eb8  00 50 8d e5                                      str r5, [sp]
00624ebc  04 50 8d e5                                      str r5, [sp, #4]
00624ec0  08 50 8d e5                                      str r5, [sp, #8]
00624ec4  0c 50 8d e5                                      str r5, [sp, #0xc]
00624ec8  0d 60 a0 e1                                      mov r6, sp
00624ecc  10 90 8d e2                                      add sb, sp, #0x10
00624ed0  0a 80 99 e7                                      ldr r8, [sb, sl]
00624ed4  00 40 a0 e3                                      mov r4, #0
00624ed8  04 10 97 e7                                      ldr r1, [r7, r4]
00624edc  08 00 a0 e1                                      mov r0, r8
00624ee0  a1 a7 f3 eb                                      bl #0x30ed6c
00624ee4  05 10 a0 e1                                      mov r1, r5
00624ee8  2d a7 f3 eb                                      bl #0x30eba4
00624eec  04 00 86 e7                                      str r0, [r6, r4]
00624ef0  04 40 84 e2                                      add r4, r4, #4
00624ef4  10 00 54 e3                                      cmp r4, #0x10
00624ef8  04 50 96 17                                      ldrne r5, [r6, r4]
00624efc  f5 ff ff 1a                                      bne #0x624ed8
00624f00  04 a0 8a e2                                      add sl, sl, #4
00624f04  08 00 5a e3                                      cmp sl, #8
00624f08  10 70 87 e2                                      add r7, r7, #0x10
00624f0c  00 50 9d 15                                      ldrne r5, [sp]
00624f10  ee ff ff 1a                                      bne #0x624ed0
00624f14  00 c0 9d e5                                      ldr ip, [sp]
00624f18  04 00 9d e5                                      ldr r0, [sp, #4]
00624f1c  08 20 9d e5                                      ldr r2, [sp, #8]
00624f20  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00624f24  0b 30 a0 e1                                      mov r3, fp
00624f28  04 c0 83 e4                                      str ip, [r3], #4
00624f2c  04 00 8b e5                                      str r0, [fp, #4]
00624f30  08 10 83 e5                                      str r1, [r3, #8]
00624f34  04 20 83 e5                                      str r2, [r3, #4]
00624f38  1c d0 8d e2                                      add sp, sp, #0x1c
00624f3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
