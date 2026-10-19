; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061a0d0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi2EhEEhLi4ENS1_17SUseDefaultValuesILi2EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061a0d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a0d4  01 40 a0 e1                                      mov r4, r1
0061a0d8  00 10 a0 e3                                      mov r1, #0
0061a0dc  02 60 a0 e1                                      mov r6, r2
0061a0e0  00 50 a0 e1                                      mov r5, r0
0061a0e4  4e 3f 01 eb                                      bl #0x669e24
0061a0e8  04 70 90 e5                                      ldr r7, [r0, #4]
0061a0ec  05 00 a0 e1                                      mov r0, r5
0061a0f0  57 3f 01 eb                                      bl #0x669e54
0061a0f4  00 00 50 e3                                      cmp r0, #0
0061a0f8  02 00 00 1a                                      bne #0x61a108
0061a0fc  04 30 d7 e7                                      ldrb r3, [r7, r4]
0061a100  00 30 c6 e5                                      strb r3, [r6]
0061a104  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a108  05 00 a0 e1                                      mov r0, r5
0061a10c  55 3f 01 eb                                      bl #0x669e68
0061a110  00 00 50 e3                                      cmp r0, #0
0061a114  f8 ff ff 0a                                      beq #0x61a0fc
0061a118  05 00 a0 e1                                      mov r0, r5
0061a11c  51 3f 01 eb                                      bl #0x669e68
0061a120  00 20 d0 e5                                      ldrb r2, [r0]
0061a124  06 30 a0 e1                                      mov r3, r6
0061a128  01 20 c3 e4                                      strb r2, [r3], #1
0061a12c  01 20 d0 e5                                      ldrb r2, [r0, #1]
0061a130  01 20 c6 e5                                      strb r2, [r6, #1]
0061a134  04 20 d7 e7                                      ldrb r2, [r7, r4]
0061a138  01 20 c3 e5                                      strb r2, [r3, #1]
0061a13c  03 20 d0 e5                                      ldrb r2, [r0, #3]
0061a140  02 20 c3 e5                                      strb r2, [r3, #2]
0061a144  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a158, declared_size=236, range_size=236, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi2EhEEhLi4ENS1_17SUseDefaultValuesILi2EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061a158  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061a15c  01 40 a0 e1                                      mov r4, r1
0061a160  00 10 a0 e3                                      mov r1, #0
0061a164  02 50 a0 e1                                      mov r5, r2
0061a168  03 a0 a0 e1                                      mov sl, r3
0061a16c  00 60 a0 e1                                      mov r6, r0
0061a170  28 70 9d e5                                      ldr r7, [sp, #0x28]
0061a174  2a 3f 01 eb                                      bl #0x669e24
0061a178  04 b0 90 e5                                      ldr fp, [r0, #4]
0061a17c  06 00 a0 e1                                      mov r0, r6
0061a180  33 3f 01 eb                                      bl #0x669e54
0061a184  00 00 50 e3                                      cmp r0, #0
0061a188  1d 00 00 0a                                      beq #0x61a204
0061a18c  06 00 a0 e1                                      mov r0, r6
0061a190  34 3f 01 eb                                      bl #0x669e68
0061a194  00 30 d0 e5                                      ldrb r3, [r0]
0061a198  07 80 a0 e1                                      mov r8, r7
0061a19c  06 00 a0 e1                                      mov r0, r6
0061a1a0  01 30 c8 e4                                      strb r3, [r8], #1
0061a1a4  2f 3f 01 eb                                      bl #0x669e68
0061a1a8  01 30 d0 e5                                      ldrb r3, [r0, #1]
0061a1ac  01 90 88 e2                                      add sb, r8, #1
0061a1b0  01 30 c7 e5                                      strb r3, [r7, #1]
0061a1b4  04 70 db e7                                      ldrb r7, [fp, r4]
0061a1b8  07 00 a0 e1                                      mov r0, r7
0061a1bc  e8 d1 f3 eb                                      bl #0x30e964
0061a1c0  00 40 a0 e1                                      mov r4, r0
0061a1c4  05 00 db e7                                      ldrb r0, [fp, r5]
0061a1c8  00 00 67 e0                                      rsb r0, r7, r0
0061a1cc  e4 d1 f3 eb                                      bl #0x30e964
0061a1d0  00 10 a0 e1                                      mov r1, r0
0061a1d4  0a 00 a0 e1                                      mov r0, sl
0061a1d8  e3 d2 f3 eb                                      bl #0x30ed6c
0061a1dc  00 10 a0 e1                                      mov r1, r0
0061a1e0  04 00 a0 e1                                      mov r0, r4
0061a1e4  6e d2 f3 eb                                      bl #0x30eba4
0061a1e8  2c 90 0a eb                                      bl #0x8be2a0
0061a1ec  01 00 c8 e5                                      strb r0, [r8, #1]
0061a1f0  06 00 a0 e1                                      mov r0, r6
0061a1f4  1b 3f 01 eb                                      bl #0x669e68
0061a1f8  03 30 d0 e5                                      ldrb r3, [r0, #3]
0061a1fc  01 30 c9 e5                                      strb r3, [sb, #1]
0061a200  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061a204  04 60 db e7                                      ldrb r6, [fp, r4]
0061a208  06 00 a0 e1                                      mov r0, r6
0061a20c  d4 d1 f3 eb                                      bl #0x30e964
0061a210  00 40 a0 e1                                      mov r4, r0
0061a214  05 00 db e7                                      ldrb r0, [fp, r5]
0061a218  00 00 66 e0                                      rsb r0, r6, r0
0061a21c  d0 d1 f3 eb                                      bl #0x30e964
0061a220  00 10 a0 e1                                      mov r1, r0
0061a224  0a 00 a0 e1                                      mov r0, sl
0061a228  cf d2 f3 eb                                      bl #0x30ed6c
0061a22c  00 10 a0 e1                                      mov r1, r0
0061a230  04 00 a0 e1                                      mov r0, r4
0061a234  5a d2 f3 eb                                      bl #0x30eba4
0061a238  18 90 0a eb                                      bl #0x8be2a0
0061a23c  00 00 c7 e5                                      strb r0, [r7]
0061a240  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061a260, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi2EhEEhLi4ENS1_17SUseDefaultValuesILi2EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061a260  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a264  01 40 a0 e1                                      mov r4, r1
0061a268  00 10 a0 e3                                      mov r1, #0
0061a26c  02 50 a0 e1                                      mov r5, r2
0061a270  03 60 a0 e1                                      mov r6, r3
0061a274  00 70 a0 e1                                      mov r7, r0
0061a278  e9 3e 01 eb                                      bl #0x669e24
0061a27c  04 30 90 e5                                      ldr r3, [r0, #4]
0061a280  07 00 a0 e1                                      mov r0, r7
0061a284  04 20 d3 e7                                      ldrb r2, [r3, r4]
0061a288  05 40 d3 e7                                      ldrb r4, [r3, r5]
0061a28c  04 40 62 e0                                      rsb r4, r2, r4
0061a290  ef 3e 01 eb                                      bl #0x669e54
0061a294  00 00 50 e3                                      cmp r0, #0
0061a298  74 40 ef e6                                      uxtb r4, r4
0061a29c  01 00 00 1a                                      bne #0x61a2a8
0061a2a0  00 40 c6 e5                                      strb r4, [r6]
0061a2a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a2a8  07 00 a0 e1                                      mov r0, r7
0061a2ac  ed 3e 01 eb                                      bl #0x669e68
0061a2b0  00 20 d0 e5                                      ldrb r2, [r0]
0061a2b4  06 30 a0 e1                                      mov r3, r6
0061a2b8  01 20 c3 e4                                      strb r2, [r3], #1
0061a2bc  01 20 d0 e5                                      ldrb r2, [r0, #1]
0061a2c0  01 20 c6 e5                                      strb r2, [r6, #1]
0061a2c4  01 40 c3 e5                                      strb r4, [r3, #1]
0061a2c8  03 20 d0 e5                                      ldrb r2, [r0, #3]
0061a2cc  02 20 c3 e5                                      strb r2, [r3, #2]
0061a2d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a2e8, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi4ENS1_17SMaterialSetParamINS1_15SAnimationTypesIA4_hNS_5video6SColorEEEEELi2EhEEhLi4ENS1_17SUseDefaultValuesILi2EhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 4, glitch::collada::animation_track::SMaterialSetParam<glitch::collada::animation_track::SAnimationTypes<unsigned char [4], glitch::video::SColor> >, 2, unsigned char>, unsigned char, 4, glitch::collada::animation_track::SUseDefaultValues<2, unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061a2e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061a2ec  01 40 a0 e1                                      mov r4, r1
0061a2f0  00 10 a0 e3                                      mov r1, #0
0061a2f4  03 a0 a0 e1                                      mov sl, r3
0061a2f8  02 50 a0 e1                                      mov r5, r2
0061a2fc  00 70 a0 e1                                      mov r7, r0
0061a300  20 80 9d e5                                      ldr r8, [sp, #0x20]
0061a304  24 60 9d e5                                      ldr r6, [sp, #0x24]
0061a308  c5 3e 01 eb                                      bl #0x669e24
0061a30c  04 30 90 e5                                      ldr r3, [r0, #4]
0061a310  07 00 a0 e1                                      mov r0, r7
0061a314  0a 90 d3 e7                                      ldrb sb, [r3, sl]
0061a318  04 20 d3 e7                                      ldrb r2, [r3, r4]
0061a31c  05 a0 d3 e7                                      ldrb sl, [r3, r5]
0061a320  09 90 62 e0                                      rsb sb, r2, sb
0061a324  0a a0 62 e0                                      rsb sl, r2, sl
0061a328  c9 3e 01 eb                                      bl #0x669e54
0061a32c  00 00 50 e3                                      cmp r0, #0
0061a330  7a a0 ef e6                                      uxtb sl, sl
0061a334  79 90 ef e6                                      uxtb sb, sb
0061a338  0d 00 00 1a                                      bne #0x61a374
0061a33c  0a 00 a0 e1                                      mov r0, sl
0061a340  87 d1 f3 eb                                      bl #0x30e964
0061a344  00 40 a0 e1                                      mov r4, r0
0061a348  09 00 6a e0                                      rsb r0, sl, sb
0061a34c  84 d1 f3 eb                                      bl #0x30e964
0061a350  00 10 a0 e1                                      mov r1, r0
0061a354  08 00 a0 e1                                      mov r0, r8
0061a358  83 d2 f3 eb                                      bl #0x30ed6c
0061a35c  00 10 a0 e1                                      mov r1, r0
0061a360  04 00 a0 e1                                      mov r0, r4
0061a364  0e d2 f3 eb                                      bl #0x30eba4
0061a368  cc 8f 0a eb                                      bl #0x8be2a0
0061a36c  00 00 c6 e5                                      strb r0, [r6]
0061a370  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061a374  07 00 a0 e1                                      mov r0, r7
0061a378  ba 3e 01 eb                                      bl #0x669e68
0061a37c  00 30 d0 e5                                      ldrb r3, [r0]
0061a380  06 40 a0 e1                                      mov r4, r6
0061a384  00 50 a0 e1                                      mov r5, r0
0061a388  01 30 c4 e4                                      strb r3, [r4], #1
0061a38c  01 30 d5 e5                                      ldrb r3, [r5, #1]
0061a390  0a 00 a0 e1                                      mov r0, sl
0061a394  01 70 84 e2                                      add r7, r4, #1
0061a398  01 30 c6 e5                                      strb r3, [r6, #1]
0061a39c  70 d1 f3 eb                                      bl #0x30e964
0061a3a0  00 60 a0 e1                                      mov r6, r0
0061a3a4  09 00 6a e0                                      rsb r0, sl, sb
0061a3a8  6d d1 f3 eb                                      bl #0x30e964
0061a3ac  00 10 a0 e1                                      mov r1, r0
0061a3b0  08 00 a0 e1                                      mov r0, r8
0061a3b4  6c d2 f3 eb                                      bl #0x30ed6c
0061a3b8  00 10 a0 e1                                      mov r1, r0
0061a3bc  06 00 a0 e1                                      mov r0, r6
0061a3c0  f7 d1 f3 eb                                      bl #0x30eba4
0061a3c4  b5 8f 0a eb                                      bl #0x8be2a0
0061a3c8  01 00 c4 e5                                      strb r0, [r4, #1]
0061a3cc  03 30 d5 e5                                      ldrb r3, [r5, #3]
0061a3d0  01 30 c7 e5                                      strb r3, [r7, #1]
0061a3d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
