; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006225e0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_NS_5video6SColorEEEEELi0EhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006225e0  30 40 2d e9                                      push {r4, r5, lr}
006225e4  14 d0 4d e2                                      sub sp, sp, #0x14
006225e8  0c c0 8d e2                                      add ip, sp, #0xc
006225ec  00 c0 8d e5                                      str ip, [sp]
006225f0  46 dd ff eb                                      bl #0x619b10
006225f4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006225f8  0f 50 dd e5                                      ldrb r5, [sp, #0xf]
006225fc  0c 40 dd e5                                      ldrb r4, [sp, #0xc]
00622600  0d e0 dd e5                                      ldrb lr, [sp, #0xd]
00622604  0e c0 dd e5                                      ldrb ip, [sp, #0xe]
00622608  b8 10 d3 e1                                      ldrh r1, [r3, #8]
0062260c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00622610  00 20 a0 e3                                      mov r2, #0
00622614  08 30 8d e2                                      add r3, sp, #8
00622618  0b 50 cd e5                                      strb r5, [sp, #0xb]
0062261c  08 40 cd e5                                      strb r4, [sp, #8]
00622620  09 e0 cd e5                                      strb lr, [sp, #9]
00622624  0a c0 cd e5                                      strb ip, [sp, #0xa]
00622628  c2 a1 fe eb                                      bl #0x5cad38
0062262c  14 d0 8d e2                                      add sp, sp, #0x14
00622630  30 80 bd e8                                      pop {r4, r5, pc}
