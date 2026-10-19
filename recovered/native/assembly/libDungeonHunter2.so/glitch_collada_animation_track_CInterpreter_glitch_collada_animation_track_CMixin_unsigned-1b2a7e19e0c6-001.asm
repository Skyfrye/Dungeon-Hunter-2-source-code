; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00619d98, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi1EhEEhLi4ENS1_17SUseDefaultValuesILi1EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00619d98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00619d9c  01 40 a0 e1                                      mov r4, r1
00619da0  00 10 a0 e3                                      mov r1, #0
00619da4  02 60 a0 e1                                      mov r6, r2
00619da8  00 50 a0 e1                                      mov r5, r0
00619dac  1c 40 01 eb                                      bl #0x669e24
00619db0  04 70 90 e5                                      ldr r7, [r0, #4]
00619db4  05 00 a0 e1                                      mov r0, r5
00619db8  25 40 01 eb                                      bl #0x669e54
00619dbc  00 00 50 e3                                      cmp r0, #0
00619dc0  02 00 00 1a                                      bne #0x619dd0
00619dc4  04 30 d7 e7                                      ldrb r3, [r7, r4]
00619dc8  00 30 c6 e5                                      strb r3, [r6]
00619dcc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00619dd0  05 00 a0 e1                                      mov r0, r5
00619dd4  23 40 01 eb                                      bl #0x669e68
00619dd8  00 00 50 e3                                      cmp r0, #0
00619ddc  f8 ff ff 0a                                      beq #0x619dc4
00619de0  05 00 a0 e1                                      mov r0, r5
00619de4  1f 40 01 eb                                      bl #0x669e68
00619de8  00 20 d0 e5                                      ldrb r2, [r0]
00619dec  06 30 a0 e1                                      mov r3, r6
00619df0  01 20 c3 e4                                      strb r2, [r3], #1
00619df4  04 20 d7 e7                                      ldrb r2, [r7, r4]
00619df8  01 20 c6 e5                                      strb r2, [r6, #1]
00619dfc  02 20 d0 e5                                      ldrb r2, [r0, #2]
00619e00  01 20 c3 e5                                      strb r2, [r3, #1]
00619e04  03 20 d0 e5                                      ldrb r2, [r0, #3]
00619e08  02 20 c3 e5                                      strb r2, [r3, #2]
00619e0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00619e20, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi1EhEEhLi4ENS1_17SUseDefaultValuesILi1EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00619e20  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00619e24  01 40 a0 e1                                      mov r4, r1
00619e28  0c d0 4d e2                                      sub sp, sp, #0xc
00619e2c  00 10 a0 e3                                      mov r1, #0
00619e30  02 50 a0 e1                                      mov r5, r2
00619e34  03 a0 a0 e1                                      mov sl, r3
00619e38  00 60 a0 e1                                      mov r6, r0
00619e3c  30 70 9d e5                                      ldr r7, [sp, #0x30]
00619e40  f7 3f 01 eb                                      bl #0x669e24
00619e44  04 b0 90 e5                                      ldr fp, [r0, #4]
00619e48  06 00 a0 e1                                      mov r0, r6
00619e4c  00 40 01 eb                                      bl #0x669e54
00619e50  00 00 50 e3                                      cmp r0, #0
00619e54  20 00 00 0a                                      beq #0x619edc
00619e58  06 00 a0 e1                                      mov r0, r6
00619e5c  01 40 01 eb                                      bl #0x669e68
00619e60  00 30 d0 e5                                      ldrb r3, [r0]
00619e64  07 80 a0 e1                                      mov r8, r7
00619e68  01 30 c8 e4                                      strb r3, [r8], #1
00619e6c  04 30 db e7                                      ldrb r3, [fp, r4]
00619e70  01 40 88 e2                                      add r4, r8, #1
00619e74  03 00 a0 e1                                      mov r0, r3
00619e78  04 30 8d e5                                      str r3, [sp, #4]
00619e7c  b8 d2 f3 eb                                      bl #0x30e964
00619e80  04 30 9d e5                                      ldr r3, [sp, #4]
00619e84  00 90 a0 e1                                      mov sb, r0
00619e88  05 00 db e7                                      ldrb r0, [fp, r5]
00619e8c  00 00 63 e0                                      rsb r0, r3, r0
00619e90  b3 d2 f3 eb                                      bl #0x30e964
00619e94  00 10 a0 e1                                      mov r1, r0
00619e98  0a 00 a0 e1                                      mov r0, sl
00619e9c  b2 d3 f3 eb                                      bl #0x30ed6c
00619ea0  00 10 a0 e1                                      mov r1, r0
00619ea4  09 00 a0 e1                                      mov r0, sb
00619ea8  3d d3 f3 eb                                      bl #0x30eba4
00619eac  fb 90 0a eb                                      bl #0x8be2a0
00619eb0  01 00 c7 e5                                      strb r0, [r7, #1]
00619eb4  06 00 a0 e1                                      mov r0, r6
00619eb8  ea 3f 01 eb                                      bl #0x669e68
00619ebc  02 30 d0 e5                                      ldrb r3, [r0, #2]
00619ec0  06 00 a0 e1                                      mov r0, r6
00619ec4  01 30 c8 e5                                      strb r3, [r8, #1]
00619ec8  e6 3f 01 eb                                      bl #0x669e68
00619ecc  03 30 d0 e5                                      ldrb r3, [r0, #3]
00619ed0  01 30 c4 e5                                      strb r3, [r4, #1]
00619ed4  0c d0 8d e2                                      add sp, sp, #0xc
00619ed8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00619edc  04 60 db e7                                      ldrb r6, [fp, r4]
00619ee0  06 00 a0 e1                                      mov r0, r6
00619ee4  9e d2 f3 eb                                      bl #0x30e964
00619ee8  00 40 a0 e1                                      mov r4, r0
00619eec  05 00 db e7                                      ldrb r0, [fp, r5]
00619ef0  00 00 66 e0                                      rsb r0, r6, r0
00619ef4  9a d2 f3 eb                                      bl #0x30e964
00619ef8  00 10 a0 e1                                      mov r1, r0
00619efc  0a 00 a0 e1                                      mov r0, sl
00619f00  99 d3 f3 eb                                      bl #0x30ed6c
00619f04  00 10 a0 e1                                      mov r1, r0
00619f08  04 00 a0 e1                                      mov r0, r4
00619f0c  24 d3 f3 eb                                      bl #0x30eba4
00619f10  e2 90 0a eb                                      bl #0x8be2a0
00619f14  00 00 c7 e5                                      strb r0, [r7]
00619f18  ed ff ff ea                                      b #0x619ed4

; FUNCTION 0x00619f38, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi1EhEEhLi4ENS1_17SUseDefaultValuesILi1EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00619f38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00619f3c  01 40 a0 e1                                      mov r4, r1
00619f40  00 10 a0 e3                                      mov r1, #0
00619f44  02 50 a0 e1                                      mov r5, r2
00619f48  03 60 a0 e1                                      mov r6, r3
00619f4c  00 70 a0 e1                                      mov r7, r0
00619f50  b3 3f 01 eb                                      bl #0x669e24
00619f54  04 30 90 e5                                      ldr r3, [r0, #4]
00619f58  07 00 a0 e1                                      mov r0, r7
00619f5c  04 20 d3 e7                                      ldrb r2, [r3, r4]
00619f60  05 40 d3 e7                                      ldrb r4, [r3, r5]
00619f64  04 40 62 e0                                      rsb r4, r2, r4
00619f68  b9 3f 01 eb                                      bl #0x669e54
00619f6c  00 00 50 e3                                      cmp r0, #0
00619f70  74 40 ef e6                                      uxtb r4, r4
00619f74  01 00 00 1a                                      bne #0x619f80
00619f78  00 40 c6 e5                                      strb r4, [r6]
00619f7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00619f80  07 00 a0 e1                                      mov r0, r7
00619f84  b7 3f 01 eb                                      bl #0x669e68
00619f88  00 20 d0 e5                                      ldrb r2, [r0]
00619f8c  06 30 a0 e1                                      mov r3, r6
00619f90  01 20 c3 e4                                      strb r2, [r3], #1
00619f94  01 40 c6 e5                                      strb r4, [r6, #1]
00619f98  02 20 d0 e5                                      ldrb r2, [r0, #2]
00619f9c  01 20 c3 e5                                      strb r2, [r3, #1]
00619fa0  03 20 d0 e5                                      ldrb r2, [r0, #3]
00619fa4  02 20 c3 e5                                      strb r2, [r3, #2]
00619fa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00619fc0, declared_size=236, range_size=236, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi1EhEEhLi4ENS1_17SUseDefaultValuesILi1EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 1, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<1, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00619fc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00619fc4  01 40 a0 e1                                      mov r4, r1
00619fc8  00 10 a0 e3                                      mov r1, #0
00619fcc  03 a0 a0 e1                                      mov sl, r3
00619fd0  02 50 a0 e1                                      mov r5, r2
00619fd4  00 70 a0 e1                                      mov r7, r0
00619fd8  20 80 9d e5                                      ldr r8, [sp, #0x20]
00619fdc  24 60 9d e5                                      ldr r6, [sp, #0x24]
00619fe0  8f 3f 01 eb                                      bl #0x669e24
00619fe4  04 30 90 e5                                      ldr r3, [r0, #4]
00619fe8  07 00 a0 e1                                      mov r0, r7
00619fec  0a 90 d3 e7                                      ldrb sb, [r3, sl]
00619ff0  04 20 d3 e7                                      ldrb r2, [r3, r4]
00619ff4  05 a0 d3 e7                                      ldrb sl, [r3, r5]
00619ff8  09 90 62 e0                                      rsb sb, r2, sb
00619ffc  0a a0 62 e0                                      rsb sl, r2, sl
0061a000  93 3f 01 eb                                      bl #0x669e54
0061a004  00 00 50 e3                                      cmp r0, #0
0061a008  7a a0 ef e6                                      uxtb sl, sl
0061a00c  79 90 ef e6                                      uxtb sb, sb
0061a010  0d 00 00 1a                                      bne #0x61a04c
0061a014  0a 00 a0 e1                                      mov r0, sl
0061a018  51 d2 f3 eb                                      bl #0x30e964
0061a01c  00 40 a0 e1                                      mov r4, r0
0061a020  09 00 6a e0                                      rsb r0, sl, sb
0061a024  4e d2 f3 eb                                      bl #0x30e964
0061a028  00 10 a0 e1                                      mov r1, r0
0061a02c  08 00 a0 e1                                      mov r0, r8
0061a030  4d d3 f3 eb                                      bl #0x30ed6c
0061a034  00 10 a0 e1                                      mov r1, r0
0061a038  04 00 a0 e1                                      mov r0, r4
0061a03c  d8 d2 f3 eb                                      bl #0x30eba4
0061a040  96 90 0a eb                                      bl #0x8be2a0
0061a044  00 00 c6 e5                                      strb r0, [r6]
0061a048  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061a04c  07 00 a0 e1                                      mov r0, r7
0061a050  84 3f 01 eb                                      bl #0x669e68
0061a054  00 30 d0 e5                                      ldrb r3, [r0]
0061a058  06 40 a0 e1                                      mov r4, r6
0061a05c  00 50 a0 e1                                      mov r5, r0
0061a060  01 30 c4 e4                                      strb r3, [r4], #1
0061a064  0a 00 a0 e1                                      mov r0, sl
0061a068  3d d2 f3 eb                                      bl #0x30e964
0061a06c  00 70 a0 e1                                      mov r7, r0
0061a070  09 00 6a e0                                      rsb r0, sl, sb
0061a074  3a d2 f3 eb                                      bl #0x30e964
0061a078  00 10 a0 e1                                      mov r1, r0
0061a07c  08 00 a0 e1                                      mov r0, r8
0061a080  39 d3 f3 eb                                      bl #0x30ed6c
0061a084  00 10 a0 e1                                      mov r1, r0
0061a088  07 00 a0 e1                                      mov r0, r7
0061a08c  c4 d2 f3 eb                                      bl #0x30eba4
0061a090  82 90 0a eb                                      bl #0x8be2a0
0061a094  01 00 c6 e5                                      strb r0, [r6, #1]
0061a098  02 30 d5 e5                                      ldrb r3, [r5, #2]
0061a09c  01 30 c4 e5                                      strb r3, [r4, #1]
0061a0a0  03 30 d5 e5                                      ldrb r3, [r5, #3]
0061a0a4  02 30 c4 e5                                      strb r3, [r4, #2]
0061a0a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
