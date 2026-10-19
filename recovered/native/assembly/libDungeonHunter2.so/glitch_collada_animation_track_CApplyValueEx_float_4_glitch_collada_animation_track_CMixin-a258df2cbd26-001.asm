; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061d6d0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi2EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 2, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061d6d0  10 40 2d e9                                      push {r4, lr}
0061d6d4  18 d0 4d e2                                      sub sp, sp, #0x18
0061d6d8  08 40 8d e2                                      add r4, sp, #8
0061d6dc  00 40 8d e5                                      str r4, [sp]
0061d6e0  c2 ff ff eb                                      bl #0x61d5f0
0061d6e4  24 30 9d e5                                      ldr r3, [sp, #0x24]
0061d6e8  20 00 9d e5                                      ldr r0, [sp, #0x20]
0061d6ec  00 20 a0 e3                                      mov r2, #0
0061d6f0  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061d6f4  04 30 a0 e1                                      mov r3, r4
0061d6f8  1a c4 fe eb                                      bl #0x5ce768
0061d6fc  18 d0 8d e2                                      add sp, sp, #0x18
0061d700  10 80 bd e8                                      pop {r4, pc}
