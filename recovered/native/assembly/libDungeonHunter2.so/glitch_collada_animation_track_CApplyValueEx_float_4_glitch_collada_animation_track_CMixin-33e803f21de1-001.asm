; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061effc, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_fNS1_6CMixinIfLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_S3_EEEELi0EfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<float [4], glitch::collada::animation_track::CMixin<float, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<float [4], float [4]> >, 0, float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061effc  10 40 2d e9                                      push {r4, lr}
0061f000  18 d0 4d e2                                      sub sp, sp, #0x18
0061f004  08 40 8d e2                                      add r4, sp, #8
0061f008  00 40 8d e5                                      str r4, [sp]
0061f00c  c6 ff ff eb                                      bl #0x61ef2c
0061f010  24 30 9d e5                                      ldr r3, [sp, #0x24]
0061f014  20 00 9d e5                                      ldr r0, [sp, #0x20]
0061f018  00 20 a0 e3                                      mov r2, #0
0061f01c  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0061f020  04 30 a0 e1                                      mov r3, r4
0061f024  cf bd fe eb                                      bl #0x5ce768
0061f028  18 d0 8d e2                                      add sp, sp, #0x18
0061f02c  10 80 bd e8                                      pop {r4, pc}
