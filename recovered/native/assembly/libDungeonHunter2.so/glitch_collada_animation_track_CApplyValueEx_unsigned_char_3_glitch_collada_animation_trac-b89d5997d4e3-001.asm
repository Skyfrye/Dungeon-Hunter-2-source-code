; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061caf0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_NS_5video6SColorEEEEELin1EhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061caf0  70 40 2d e9                                      push {r4, r5, r6, lr}
0061caf4  01 40 a0 e1                                      mov r4, r1
0061caf8  08 d0 4d e2                                      sub sp, sp, #8
0061cafc  00 10 a0 e3                                      mov r1, #0
0061cb00  02 50 a0 e1                                      mov r5, r2
0061cb04  03 60 a0 e1                                      mov r6, r3
0061cb08  c5 34 01 eb                                      bl #0x669e24
0061cb0c  04 20 90 e5                                      ldr r2, [r0, #4]
0061cb10  84 40 84 e0                                      add r4, r4, r4, lsl #1
0061cb14  b8 10 d6 e1                                      ldrh r1, [r6, #8]
0061cb18  04 30 d2 e7                                      ldrb r3, [r2, r4]
0061cb1c  04 40 82 e0                                      add r4, r2, r4
0061cb20  05 00 a0 e1                                      mov r0, r5
0061cb24  04 30 cd e5                                      strb r3, [sp, #4]
0061cb28  01 30 d4 e5                                      ldrb r3, [r4, #1]
0061cb2c  04 50 dd e5                                      ldrb r5, [sp, #4]
0061cb30  00 20 a0 e3                                      mov r2, #0
0061cb34  05 30 cd e5                                      strb r3, [sp, #5]
0061cb38  02 c0 d4 e5                                      ldrb ip, [r4, #2]
0061cb3c  73 e0 ef e6                                      uxtb lr, r3
0061cb40  00 40 e0 e3                                      mvn r4, #0
0061cb44  0d 30 a0 e1                                      mov r3, sp
0061cb48  03 40 cd e5                                      strb r4, [sp, #3]
0061cb4c  00 50 cd e5                                      strb r5, [sp]
0061cb50  01 e0 cd e5                                      strb lr, [sp, #1]
0061cb54  02 c0 cd e5                                      strb ip, [sp, #2]
0061cb58  06 c0 cd e5                                      strb ip, [sp, #6]
0061cb5c  75 b8 fe eb                                      bl #0x5cad38
0061cb60  08 d0 8d e2                                      add sp, sp, #8
0061cb64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006216d0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA3_hNS1_6CMixinIhLi3ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_NS_5video6SColorEEEEELin1EhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<unsigned char [3], glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [3], glitch::video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006216d0  30 40 2d e9                                      push {r4, r5, lr}
006216d4  14 d0 4d e2                                      sub sp, sp, #0x14
006216d8  0c c0 8d e2                                      add ip, sp, #0xc
006216dc  00 c0 8d e5                                      str ip, [sp]
006216e0  bc ff ff eb                                      bl #0x6215d8
006216e4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006216e8  0c 40 dd e5                                      ldrb r4, [sp, #0xc]
006216ec  0d e0 dd e5                                      ldrb lr, [sp, #0xd]
006216f0  0e c0 dd e5                                      ldrb ip, [sp, #0xe]
006216f4  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006216f8  00 50 e0 e3                                      mvn r5, #0
006216fc  20 00 9d e5                                      ldr r0, [sp, #0x20]
00621700  00 20 a0 e3                                      mov r2, #0
00621704  08 30 8d e2                                      add r3, sp, #8
00621708  0b 50 cd e5                                      strb r5, [sp, #0xb]
0062170c  08 40 cd e5                                      strb r4, [sp, #8]
00621710  09 e0 cd e5                                      strb lr, [sp, #9]
00621714  0a c0 cd e5                                      strb ip, [sp, #0xa]
00621718  86 a5 fe eb                                      bl #0x5cad38
0062171c  14 d0 8d e2                                      add sp, sp, #0x14
00621720  30 80 bd e8                                      pop {r4, r5, pc}
