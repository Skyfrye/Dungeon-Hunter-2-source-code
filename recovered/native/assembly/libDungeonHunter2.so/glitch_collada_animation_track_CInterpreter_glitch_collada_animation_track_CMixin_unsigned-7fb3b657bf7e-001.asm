; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00619a88, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi0EhEEhLi4ENS1_17SUseDefaultValuesILi0EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00619a88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00619a8c  01 40 a0 e1                                      mov r4, r1
00619a90  00 10 a0 e3                                      mov r1, #0
00619a94  02 60 a0 e1                                      mov r6, r2
00619a98  00 50 a0 e1                                      mov r5, r0
00619a9c  e0 40 01 eb                                      bl #0x669e24
00619aa0  04 70 90 e5                                      ldr r7, [r0, #4]
00619aa4  05 00 a0 e1                                      mov r0, r5
00619aa8  e9 40 01 eb                                      bl #0x669e54
00619aac  00 00 50 e3                                      cmp r0, #0
00619ab0  02 00 00 1a                                      bne #0x619ac0
00619ab4  04 30 d7 e7                                      ldrb r3, [r7, r4]
00619ab8  00 30 c6 e5                                      strb r3, [r6]
00619abc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00619ac0  05 00 a0 e1                                      mov r0, r5
00619ac4  e7 40 01 eb                                      bl #0x669e68
00619ac8  00 00 50 e3                                      cmp r0, #0
00619acc  f8 ff ff 0a                                      beq #0x619ab4
00619ad0  05 00 a0 e1                                      mov r0, r5
00619ad4  e3 40 01 eb                                      bl #0x669e68
00619ad8  04 20 d7 e7                                      ldrb r2, [r7, r4]
00619adc  06 30 a0 e1                                      mov r3, r6
00619ae0  01 20 c3 e4                                      strb r2, [r3], #1
00619ae4  01 20 d0 e5                                      ldrb r2, [r0, #1]
00619ae8  01 20 c6 e5                                      strb r2, [r6, #1]
00619aec  02 20 d0 e5                                      ldrb r2, [r0, #2]
00619af0  01 20 c3 e5                                      strb r2, [r3, #1]
00619af4  03 20 d0 e5                                      ldrb r2, [r0, #3]
00619af8  02 20 c3 e5                                      strb r2, [r3, #2]
00619afc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00619b10, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi0EhEEhLi4ENS1_17SUseDefaultValuesILi0EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00619b10  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00619b14  01 40 a0 e1                                      mov r4, r1
00619b18  00 10 a0 e3                                      mov r1, #0
00619b1c  02 50 a0 e1                                      mov r5, r2
00619b20  03 80 a0 e1                                      mov r8, r3
00619b24  00 70 a0 e1                                      mov r7, r0
00619b28  28 60 9d e5                                      ldr r6, [sp, #0x28]
00619b2c  bc 40 01 eb                                      bl #0x669e24
00619b30  04 90 90 e5                                      ldr sb, [r0, #4]
00619b34  07 00 a0 e1                                      mov r0, r7
00619b38  c5 40 01 eb                                      bl #0x669e54
00619b3c  00 00 50 e3                                      cmp r0, #0
00619b40  17 00 00 0a                                      beq #0x619ba4
00619b44  04 b0 d9 e7                                      ldrb fp, [sb, r4]
00619b48  01 40 a0 e3                                      mov r4, #1
00619b4c  0b 00 a0 e1                                      mov r0, fp
00619b50  83 d3 f3 eb                                      bl #0x30e964
00619b54  00 a0 a0 e1                                      mov sl, r0
00619b58  05 00 d9 e7                                      ldrb r0, [sb, r5]
00619b5c  00 00 6b e0                                      rsb r0, fp, r0
00619b60  7f d3 f3 eb                                      bl #0x30e964
00619b64  00 10 a0 e1                                      mov r1, r0
00619b68  08 00 a0 e1                                      mov r0, r8
00619b6c  7e d4 f3 eb                                      bl #0x30ed6c
00619b70  00 10 a0 e1                                      mov r1, r0
00619b74  0a 00 a0 e1                                      mov r0, sl
00619b78  09 d4 f3 eb                                      bl #0x30eba4
00619b7c  c7 91 0a eb                                      bl #0x8be2a0
00619b80  00 00 c6 e5                                      strb r0, [r6]
00619b84  07 00 a0 e1                                      mov r0, r7
00619b88  b6 40 01 eb                                      bl #0x669e68
00619b8c  04 30 d0 e7                                      ldrb r3, [r0, r4]
00619b90  04 30 c6 e7                                      strb r3, [r6, r4]
00619b94  01 40 84 e2                                      add r4, r4, #1
00619b98  04 00 54 e3                                      cmp r4, #4
00619b9c  f8 ff ff 1a                                      bne #0x619b84
00619ba0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00619ba4  04 70 d9 e7                                      ldrb r7, [sb, r4]
00619ba8  07 00 a0 e1                                      mov r0, r7
00619bac  6c d3 f3 eb                                      bl #0x30e964
00619bb0  00 40 a0 e1                                      mov r4, r0
00619bb4  05 00 d9 e7                                      ldrb r0, [sb, r5]
00619bb8  00 00 67 e0                                      rsb r0, r7, r0
00619bbc  68 d3 f3 eb                                      bl #0x30e964
00619bc0  00 10 a0 e1                                      mov r1, r0
00619bc4  08 00 a0 e1                                      mov r0, r8
00619bc8  67 d4 f3 eb                                      bl #0x30ed6c
00619bcc  00 10 a0 e1                                      mov r1, r0
00619bd0  04 00 a0 e1                                      mov r0, r4
00619bd4  f2 d3 f3 eb                                      bl #0x30eba4
00619bd8  b0 91 0a eb                                      bl #0x8be2a0
00619bdc  00 00 c6 e5                                      strb r0, [r6]
00619be0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00619c00, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi0EhEEhLi4ENS1_17SUseDefaultValuesILi0EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00619c00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00619c04  01 40 a0 e1                                      mov r4, r1
00619c08  00 10 a0 e3                                      mov r1, #0
00619c0c  02 50 a0 e1                                      mov r5, r2
00619c10  03 60 a0 e1                                      mov r6, r3
00619c14  00 70 a0 e1                                      mov r7, r0
00619c18  81 40 01 eb                                      bl #0x669e24
00619c1c  04 30 90 e5                                      ldr r3, [r0, #4]
00619c20  07 00 a0 e1                                      mov r0, r7
00619c24  04 20 d3 e7                                      ldrb r2, [r3, r4]
00619c28  05 40 d3 e7                                      ldrb r4, [r3, r5]
00619c2c  04 40 62 e0                                      rsb r4, r2, r4
00619c30  87 40 01 eb                                      bl #0x669e54
00619c34  00 00 50 e3                                      cmp r0, #0
00619c38  74 40 ef e6                                      uxtb r4, r4
00619c3c  01 00 00 1a                                      bne #0x619c48
00619c40  00 40 c6 e5                                      strb r4, [r6]
00619c44  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00619c48  07 00 a0 e1                                      mov r0, r7
00619c4c  85 40 01 eb                                      bl #0x669e68
00619c50  06 30 a0 e1                                      mov r3, r6
00619c54  01 40 c3 e4                                      strb r4, [r3], #1
00619c58  01 20 d0 e5                                      ldrb r2, [r0, #1]
00619c5c  01 20 c6 e5                                      strb r2, [r6, #1]
00619c60  02 20 d0 e5                                      ldrb r2, [r0, #2]
00619c64  01 20 c3 e5                                      strb r2, [r3, #1]
00619c68  03 20 d0 e5                                      ldrb r2, [r0, #3]
00619c6c  02 20 c3 e5                                      strb r2, [r3, #2]
00619c70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00619c88, declared_size=236, range_size=236, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi0EhEEhLi4ENS1_17SUseDefaultValuesILi0EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 0, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<0, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00619c88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00619c8c  01 40 a0 e1                                      mov r4, r1
00619c90  00 10 a0 e3                                      mov r1, #0
00619c94  03 a0 a0 e1                                      mov sl, r3
00619c98  02 50 a0 e1                                      mov r5, r2
00619c9c  00 70 a0 e1                                      mov r7, r0
00619ca0  20 80 9d e5                                      ldr r8, [sp, #0x20]
00619ca4  24 60 9d e5                                      ldr r6, [sp, #0x24]
00619ca8  5d 40 01 eb                                      bl #0x669e24
00619cac  04 30 90 e5                                      ldr r3, [r0, #4]
00619cb0  07 00 a0 e1                                      mov r0, r7
00619cb4  0a 90 d3 e7                                      ldrb sb, [r3, sl]
00619cb8  04 20 d3 e7                                      ldrb r2, [r3, r4]
00619cbc  05 a0 d3 e7                                      ldrb sl, [r3, r5]
00619cc0  09 90 62 e0                                      rsb sb, r2, sb
00619cc4  0a a0 62 e0                                      rsb sl, r2, sl
00619cc8  61 40 01 eb                                      bl #0x669e54
00619ccc  00 00 50 e3                                      cmp r0, #0
00619cd0  7a a0 ef e6                                      uxtb sl, sl
00619cd4  79 90 ef e6                                      uxtb sb, sb
00619cd8  0d 00 00 1a                                      bne #0x619d14
00619cdc  0a 00 a0 e1                                      mov r0, sl
00619ce0  1f d3 f3 eb                                      bl #0x30e964
00619ce4  00 40 a0 e1                                      mov r4, r0
00619ce8  09 00 6a e0                                      rsb r0, sl, sb
00619cec  1c d3 f3 eb                                      bl #0x30e964
00619cf0  00 10 a0 e1                                      mov r1, r0
00619cf4  08 00 a0 e1                                      mov r0, r8
00619cf8  1b d4 f3 eb                                      bl #0x30ed6c
00619cfc  00 10 a0 e1                                      mov r1, r0
00619d00  04 00 a0 e1                                      mov r0, r4
00619d04  a6 d3 f3 eb                                      bl #0x30eba4
00619d08  64 91 0a eb                                      bl #0x8be2a0
00619d0c  00 00 c6 e5                                      strb r0, [r6]
00619d10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00619d14  07 00 a0 e1                                      mov r0, r7
00619d18  52 40 01 eb                                      bl #0x669e68
00619d1c  00 40 a0 e1                                      mov r4, r0
00619d20  0a 00 a0 e1                                      mov r0, sl
00619d24  0e d3 f3 eb                                      bl #0x30e964
00619d28  00 50 a0 e1                                      mov r5, r0
00619d2c  09 00 6a e0                                      rsb r0, sl, sb
00619d30  0b d3 f3 eb                                      bl #0x30e964
00619d34  00 10 a0 e1                                      mov r1, r0
00619d38  08 00 a0 e1                                      mov r0, r8
00619d3c  0a d4 f3 eb                                      bl #0x30ed6c
00619d40  00 10 a0 e1                                      mov r1, r0
00619d44  05 00 a0 e1                                      mov r0, r5
00619d48  95 d3 f3 eb                                      bl #0x30eba4
00619d4c  53 91 0a eb                                      bl #0x8be2a0
00619d50  06 30 a0 e1                                      mov r3, r6
00619d54  01 00 c3 e4                                      strb r0, [r3], #1
00619d58  01 20 d4 e5                                      ldrb r2, [r4, #1]
00619d5c  01 20 c6 e5                                      strb r2, [r6, #1]
00619d60  02 20 d4 e5                                      ldrb r2, [r4, #2]
00619d64  01 20 c3 e5                                      strb r2, [r3, #1]
00619d68  03 20 d4 e5                                      ldrb r2, [r4, #3]
00619d6c  02 20 c3 e5                                      strb r2, [r3, #2]
00619d70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
