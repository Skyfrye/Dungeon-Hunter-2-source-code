; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00617fdc, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi3EhEEhLi4ENS1_17SUseDefaultValuesILi3EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00617fdc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00617fe0  01 40 a0 e1                                      mov r4, r1
00617fe4  00 10 a0 e3                                      mov r1, #0
00617fe8  02 50 a0 e1                                      mov r5, r2
00617fec  03 60 a0 e1                                      mov r6, r3
00617ff0  00 70 a0 e1                                      mov r7, r0
00617ff4  8a 47 01 eb                                      bl #0x669e24
00617ff8  04 30 90 e5                                      ldr r3, [r0, #4]
00617ffc  07 00 a0 e1                                      mov r0, r7
00618000  04 20 d3 e7                                      ldrb r2, [r3, r4]
00618004  05 40 d3 e7                                      ldrb r4, [r3, r5]
00618008  04 40 62 e0                                      rsb r4, r2, r4
0061800c  90 47 01 eb                                      bl #0x669e54
00618010  00 00 50 e3                                      cmp r0, #0
00618014  74 40 ef e6                                      uxtb r4, r4
00618018  01 00 00 1a                                      bne #0x618024
0061801c  00 40 c6 e5                                      strb r4, [r6]
00618020  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00618024  07 00 a0 e1                                      mov r0, r7
00618028  8e 47 01 eb                                      bl #0x669e68
0061802c  00 20 d0 e5                                      ldrb r2, [r0]
00618030  06 30 a0 e1                                      mov r3, r6
00618034  01 20 c3 e4                                      strb r2, [r3], #1
00618038  01 20 d0 e5                                      ldrb r2, [r0, #1]
0061803c  01 20 c6 e5                                      strb r2, [r6, #1]
00618040  02 20 d0 e5                                      ldrb r2, [r0, #2]
00618044  01 20 c3 e5                                      strb r2, [r3, #1]
00618048  03 40 c6 e5                                      strb r4, [r6, #3]
0061804c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00619978, declared_size=236, range_size=236, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi3EhEEhLi4ENS1_17SUseDefaultValuesILi3EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00619978  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061997c  01 40 a0 e1                                      mov r4, r1
00619980  00 10 a0 e3                                      mov r1, #0
00619984  02 50 a0 e1                                      mov r5, r2
00619988  03 a0 a0 e1                                      mov sl, r3
0061998c  00 70 a0 e1                                      mov r7, r0
00619990  20 80 9d e5                                      ldr r8, [sp, #0x20]
00619994  24 60 9d e5                                      ldr r6, [sp, #0x24]
00619998  21 41 01 eb                                      bl #0x669e24
0061999c  04 30 90 e5                                      ldr r3, [r0, #4]
006199a0  07 00 a0 e1                                      mov r0, r7
006199a4  04 20 d3 e7                                      ldrb r2, [r3, r4]
006199a8  0a a0 d3 e7                                      ldrb sl, [r3, sl]
006199ac  05 50 d3 e7                                      ldrb r5, [r3, r5]
006199b0  0a a0 62 e0                                      rsb sl, r2, sl
006199b4  05 50 62 e0                                      rsb r5, r2, r5
006199b8  25 41 01 eb                                      bl #0x669e54
006199bc  00 00 50 e3                                      cmp r0, #0
006199c0  75 50 ef e6                                      uxtb r5, r5
006199c4  7a a0 ef e6                                      uxtb sl, sl
006199c8  0d 00 00 1a                                      bne #0x619a04
006199cc  05 00 a0 e1                                      mov r0, r5
006199d0  e3 d3 f3 eb                                      bl #0x30e964
006199d4  00 40 a0 e1                                      mov r4, r0
006199d8  0a 00 65 e0                                      rsb r0, r5, sl
006199dc  e0 d3 f3 eb                                      bl #0x30e964
006199e0  00 10 a0 e1                                      mov r1, r0
006199e4  08 00 a0 e1                                      mov r0, r8
006199e8  df d4 f3 eb                                      bl #0x30ed6c
006199ec  00 10 a0 e1                                      mov r1, r0
006199f0  04 00 a0 e1                                      mov r0, r4
006199f4  6a d4 f3 eb                                      bl #0x30eba4
006199f8  28 92 0a eb                                      bl #0x8be2a0
006199fc  00 00 c6 e5                                      strb r0, [r6]
00619a00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00619a04  07 00 a0 e1                                      mov r0, r7
00619a08  16 41 01 eb                                      bl #0x669e68
00619a0c  00 10 d0 e5                                      ldrb r1, [r0]
00619a10  06 30 a0 e1                                      mov r3, r6
00619a14  00 20 a0 e1                                      mov r2, r0
00619a18  01 10 c3 e4                                      strb r1, [r3], #1
00619a1c  01 10 d2 e5                                      ldrb r1, [r2, #1]
00619a20  05 00 a0 e1                                      mov r0, r5
00619a24  01 10 c6 e5                                      strb r1, [r6, #1]
00619a28  02 20 d2 e5                                      ldrb r2, [r2, #2]
00619a2c  01 20 c3 e5                                      strb r2, [r3, #1]
00619a30  cb d3 f3 eb                                      bl #0x30e964
00619a34  00 40 a0 e1                                      mov r4, r0
00619a38  0a 00 65 e0                                      rsb r0, r5, sl
00619a3c  c8 d3 f3 eb                                      bl #0x30e964
00619a40  00 10 a0 e1                                      mov r1, r0
00619a44  08 00 a0 e1                                      mov r0, r8
00619a48  c7 d4 f3 eb                                      bl #0x30ed6c
00619a4c  00 10 a0 e1                                      mov r1, r0
00619a50  04 00 a0 e1                                      mov r0, r4
00619a54  52 d4 f3 eb                                      bl #0x30eba4
00619a58  10 92 0a eb                                      bl #0x8be2a0
00619a5c  03 00 c6 e5                                      strb r0, [r6, #3]
00619a60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061a3fc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi3EhEEhLi4ENS1_17SUseDefaultValuesILi3EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061a3fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a400  01 40 a0 e1                                      mov r4, r1
0061a404  00 10 a0 e3                                      mov r1, #0
0061a408  02 60 a0 e1                                      mov r6, r2
0061a40c  00 50 a0 e1                                      mov r5, r0
0061a410  83 3e 01 eb                                      bl #0x669e24
0061a414  04 70 90 e5                                      ldr r7, [r0, #4]
0061a418  05 00 a0 e1                                      mov r0, r5
0061a41c  8c 3e 01 eb                                      bl #0x669e54
0061a420  00 00 50 e3                                      cmp r0, #0
0061a424  02 00 00 1a                                      bne #0x61a434
0061a428  04 30 d7 e7                                      ldrb r3, [r7, r4]
0061a42c  00 30 c6 e5                                      strb r3, [r6]
0061a430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a434  05 00 a0 e1                                      mov r0, r5
0061a438  8a 3e 01 eb                                      bl #0x669e68
0061a43c  00 00 50 e3                                      cmp r0, #0
0061a440  f8 ff ff 0a                                      beq #0x61a428
0061a444  05 00 a0 e1                                      mov r0, r5
0061a448  86 3e 01 eb                                      bl #0x669e68
0061a44c  00 20 d0 e5                                      ldrb r2, [r0]
0061a450  06 30 a0 e1                                      mov r3, r6
0061a454  01 20 c3 e4                                      strb r2, [r3], #1
0061a458  01 20 d0 e5                                      ldrb r2, [r0, #1]
0061a45c  01 20 c6 e5                                      strb r2, [r6, #1]
0061a460  02 20 d0 e5                                      ldrb r2, [r0, #2]
0061a464  01 20 c3 e5                                      strb r2, [r3, #1]
0061a468  04 30 d7 e7                                      ldrb r3, [r7, r4]
0061a46c  03 30 c6 e5                                      strb r3, [r6, #3]
0061a470  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a484, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi3EhEEhLi4ENS1_17SUseDefaultValuesILi3EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 3, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<3, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061a484  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061a488  01 40 a0 e1                                      mov r4, r1
0061a48c  00 10 a0 e3                                      mov r1, #0
0061a490  02 50 a0 e1                                      mov r5, r2
0061a494  03 80 a0 e1                                      mov r8, r3
0061a498  00 70 a0 e1                                      mov r7, r0
0061a49c  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061a4a0  5f 3e 01 eb                                      bl #0x669e24
0061a4a4  04 90 90 e5                                      ldr sb, [r0, #4]
0061a4a8  07 00 a0 e1                                      mov r0, r7
0061a4ac  68 3e 01 eb                                      bl #0x669e54
0061a4b0  00 00 50 e3                                      cmp r0, #0
0061a4b4  17 00 00 0a                                      beq #0x61a518
0061a4b8  00 a0 a0 e3                                      mov sl, #0
0061a4bc  07 00 a0 e1                                      mov r0, r7
0061a4c0  68 3e 01 eb                                      bl #0x669e68
0061a4c4  0a 30 d0 e7                                      ldrb r3, [r0, sl]
0061a4c8  0a 30 c6 e7                                      strb r3, [r6, sl]
0061a4cc  01 a0 8a e2                                      add sl, sl, #1
0061a4d0  03 00 5a e3                                      cmp sl, #3
0061a4d4  f8 ff ff 1a                                      bne #0x61a4bc
0061a4d8  04 70 d9 e7                                      ldrb r7, [sb, r4]
0061a4dc  07 00 a0 e1                                      mov r0, r7
0061a4e0  1f d1 f3 eb                                      bl #0x30e964
0061a4e4  00 40 a0 e1                                      mov r4, r0
0061a4e8  05 00 d9 e7                                      ldrb r0, [sb, r5]
0061a4ec  00 00 67 e0                                      rsb r0, r7, r0
0061a4f0  1b d1 f3 eb                                      bl #0x30e964
0061a4f4  00 10 a0 e1                                      mov r1, r0
0061a4f8  08 00 a0 e1                                      mov r0, r8
0061a4fc  1a d2 f3 eb                                      bl #0x30ed6c
0061a500  00 10 a0 e1                                      mov r1, r0
0061a504  04 00 a0 e1                                      mov r0, r4
0061a508  a5 d1 f3 eb                                      bl #0x30eba4
0061a50c  63 8f 0a eb                                      bl #0x8be2a0
0061a510  03 00 c6 e5                                      strb r0, [r6, #3]
0061a514  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061a518  04 70 d9 e7                                      ldrb r7, [sb, r4]
0061a51c  07 00 a0 e1                                      mov r0, r7
0061a520  0f d1 f3 eb                                      bl #0x30e964
0061a524  00 40 a0 e1                                      mov r4, r0
0061a528  05 00 d9 e7                                      ldrb r0, [sb, r5]
0061a52c  00 00 67 e0                                      rsb r0, r7, r0
0061a530  0b d1 f3 eb                                      bl #0x30e964
0061a534  00 10 a0 e1                                      mov r1, r0
0061a538  08 00 a0 e1                                      mov r0, r8
0061a53c  0a d2 f3 eb                                      bl #0x30ed6c
0061a540  00 10 a0 e1                                      mov r1, r0
0061a544  04 00 a0 e1                                      mov r0, r4
0061a548  95 d1 f3 eb                                      bl #0x30eba4
0061a54c  53 8f 0a eb                                      bl #0x8be2a0
0061a550  00 00 c6 e5                                      strb r0, [r6]
0061a554  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
