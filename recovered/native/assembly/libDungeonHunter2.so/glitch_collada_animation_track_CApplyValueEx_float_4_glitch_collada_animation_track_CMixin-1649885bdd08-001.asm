; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061ca30, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061ca30  70 40 2d e9                                      push {r4, r5, r6, lr}
0061ca34  01 40 a0 e1                                      mov r4, r1
0061ca38  10 d0 4d e2                                      sub sp, sp, #0x10
0061ca3c  00 10 a0 e3                                      mov r1, #0
0061ca40  02 50 a0 e1                                      mov r5, r2
0061ca44  03 60 a0 e1                                      mov r6, r3
0061ca48  f5 34 01 eb                                      bl #0x669e24
0061ca4c  04 30 90 e5                                      ldr r3, [r0, #4]
0061ca50  b8 10 d6 e1                                      ldrh r1, [r6, #8]
0061ca54  05 00 a0 e1                                      mov r0, r5
0061ca58  04 22 93 e7                                      ldr r2, [r3, r4, lsl #4]
0061ca5c  04 42 83 e0                                      add r4, r3, r4, lsl #4
0061ca60  04 c0 84 e2                                      add ip, r4, #4
0061ca64  00 20 8d e5                                      str r2, [sp]
0061ca68  04 e0 94 e5                                      ldr lr, [r4, #4]
0061ca6c  00 20 a0 e3                                      mov r2, #0
0061ca70  0d 30 a0 e1                                      mov r3, sp
0061ca74  04 e0 8d e5                                      str lr, [sp, #4]
0061ca78  04 e0 9c e5                                      ldr lr, [ip, #4]
0061ca7c  08 e0 8d e5                                      str lr, [sp, #8]
0061ca80  08 c0 9c e5                                      ldr ip, [ip, #8]
0061ca84  0c c0 8d e5                                      str ip, [sp, #0xc]
0061ca88  36 c7 fe eb                                      bl #0x5ce768
0061ca8c  10 d0 8d e2                                      add sp, sp, #0x10
0061ca90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00624f5c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELin1EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, -1, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00624f5c  10 40 2d e9                                      push {r4, lr}
00624f60  18 d0 4d e2                                      sub sp, sp, #0x18
00624f64  08 40 8d e2                                      add r4, sp, #8
00624f68  00 40 8d e5                                      str r4, [sp]
00624f6c  c0 ff ff eb                                      bl #0x624e74
00624f70  24 30 9d e5                                      ldr r3, [sp, #0x24]
00624f74  20 00 9d e5                                      ldr r0, [sp, #0x20]
00624f78  00 20 a0 e3                                      mov r2, #0
00624f7c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
00624f80  04 30 a0 e1                                      mov r3, r4
00624f84  f7 a5 fe eb                                      bl #0x5ce768
00624f88  18 d0 8d e2                                      add sp, sp, #0x18
00624f8c  10 80 bd e8                                      pop {r4, pc}
