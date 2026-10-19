; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622b34, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_NS_5video6SColorEEEEELin1EhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622b34  70 40 2d e9                                      push {r4, r5, r6, lr}
00622b38  01 40 a0 e1                                      mov r4, r1
00622b3c  08 d0 4d e2                                      sub sp, sp, #8
00622b40  00 10 a0 e3                                      mov r1, #0
00622b44  02 50 a0 e1                                      mov r5, r2
00622b48  03 60 a0 e1                                      mov r6, r3
00622b4c  b4 1c 01 eb                                      bl #0x669e24
00622b50  04 30 90 e5                                      ldr r3, [r0, #4]
00622b54  b8 10 d6 e1                                      ldrh r1, [r6, #8]
00622b58  05 00 a0 e1                                      mov r0, r5
00622b5c  04 21 d3 e7                                      ldrb r2, [r3, r4, lsl #2]
00622b60  04 41 83 e0                                      add r4, r3, r4, lsl #2
00622b64  01 c0 84 e2                                      add ip, r4, #1
00622b68  04 20 cd e5                                      strb r2, [sp, #4]
00622b6c  01 30 d4 e5                                      ldrb r3, [r4, #1]
00622b70  72 50 ef e6                                      uxtb r5, r2
00622b74  00 20 a0 e3                                      mov r2, #0
00622b78  05 30 cd e5                                      strb r3, [sp, #5]
00622b7c  01 e0 dc e5                                      ldrb lr, [ip, #1]
00622b80  73 40 ef e6                                      uxtb r4, r3
00622b84  0d 30 a0 e1                                      mov r3, sp
00622b88  06 e0 cd e5                                      strb lr, [sp, #6]
00622b8c  02 c0 dc e5                                      ldrb ip, [ip, #2]
00622b90  7e e0 ef e6                                      uxtb lr, lr
00622b94  00 50 cd e5                                      strb r5, [sp]
00622b98  03 c0 cd e5                                      strb ip, [sp, #3]
00622b9c  01 40 cd e5                                      strb r4, [sp, #1]
00622ba0  02 e0 cd e5                                      strb lr, [sp, #2]
00622ba4  07 c0 cd e5                                      strb ip, [sp, #7]
00622ba8  62 a0 fe eb                                      bl #0x5cad38
00622bac  08 d0 8d e2                                      add sp, sp, #8
00622bb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006269c0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExIA4_hNS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIS3_NS_5video6SColorEEEEELin1EhEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<unsigned char [4], glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, -1, unsigned char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006269c0  30 40 2d e9                                      push {r4, r5, lr}
006269c4  14 d0 4d e2                                      sub sp, sp, #0x14
006269c8  0c c0 8d e2                                      add ip, sp, #0xc
006269cc  00 c0 8d e5                                      str ip, [sp]
006269d0  b6 ff ff eb                                      bl #0x6268b0
006269d4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006269d8  0f 50 dd e5                                      ldrb r5, [sp, #0xf]
006269dc  0c 40 dd e5                                      ldrb r4, [sp, #0xc]
006269e0  0d e0 dd e5                                      ldrb lr, [sp, #0xd]
006269e4  0e c0 dd e5                                      ldrb ip, [sp, #0xe]
006269e8  b8 10 d3 e1                                      ldrh r1, [r3, #8]
006269ec  20 00 9d e5                                      ldr r0, [sp, #0x20]
006269f0  00 20 a0 e3                                      mov r2, #0
006269f4  08 30 8d e2                                      add r3, sp, #8
006269f8  0b 50 cd e5                                      strb r5, [sp, #0xb]
006269fc  08 40 cd e5                                      strb r4, [sp, #8]
00626a00  09 e0 cd e5                                      strb lr, [sp, #9]
00626a04  0a c0 cd e5                                      strb ip, [sp, #0xa]
00626a08  ca 90 fe eb                                      bl #0x5cad38
00626a0c  14 d0 8d e2                                      add sp, sp, #0x14
00626a10  30 80 bd e8                                      pop {r4, r5, pc}
