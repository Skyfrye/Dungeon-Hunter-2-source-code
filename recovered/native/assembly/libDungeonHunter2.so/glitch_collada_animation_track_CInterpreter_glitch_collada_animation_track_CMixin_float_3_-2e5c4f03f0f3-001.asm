; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613e5c, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00613e5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00613e60  18 d0 4d e2                                      sub sp, sp, #0x18
00613e64  01 40 a0 e1                                      mov r4, r1
00613e68  00 10 a0 e1                                      mov r1, r0
00613e6c  0c 00 8d e2                                      add r0, sp, #0xc
00613e70  02 90 a0 e1                                      mov sb, r2
00613e74  e9 ff ff eb                                      bl #0x613e20
00613e78  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00613e7c  06 20 a0 e3                                      mov r2, #6
00613e80  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00613e84  04 30 93 e5                                      ldr r3, [r3, #4]
00613e88  14 80 9d e5                                      ldr r8, [sp, #0x14]
00613e8c  00 50 a0 e3                                      mov r5, #0
00613e90  92 34 24 e0                                      mla r4, r2, r4, r3
00613e94  05 60 a0 e1                                      mov r6, r5
00613e98  0d 70 a0 e1                                      mov r7, sp
00613e9c  f6 00 94 e1                                      ldrsh r0, [r4, r6]
00613ea0  af ea f3 eb                                      bl #0x30e964
00613ea4  05 10 9a e7                                      ldr r1, [sl, r5]
00613ea8  af eb f3 eb                                      bl #0x30ed6c
00613eac  05 10 98 e7                                      ldr r1, [r8, r5]
00613eb0  3b eb f3 eb                                      bl #0x30eba4
00613eb4  02 60 86 e2                                      add r6, r6, #2
00613eb8  06 00 56 e3                                      cmp r6, #6
00613ebc  05 00 87 e7                                      str r0, [r7, r5]
00613ec0  04 50 85 e2                                      add r5, r5, #4
00613ec4  f4 ff ff 1a                                      bne #0x613e9c
00613ec8  00 00 9d e5                                      ldr r0, [sp]
00613ecc  04 10 9d e5                                      ldr r1, [sp, #4]
00613ed0  08 20 9d e5                                      ldr r2, [sp, #8]
00613ed4  09 30 a0 e1                                      mov r3, sb
00613ed8  04 00 83 e4                                      str r0, [r3], #4
00613edc  04 10 89 e5                                      str r1, [sb, #4]
00613ee0  04 20 83 e5                                      str r2, [r3, #4]
00613ee4  18 d0 8d e2                                      add sp, sp, #0x18
00613ee8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00613efc, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00613efc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00613f00  34 d0 4d e2                                      sub sp, sp, #0x34
00613f04  04 10 8d e5                                      str r1, [sp, #4]
00613f08  00 10 a0 e1                                      mov r1, r0
00613f0c  24 00 8d e2                                      add r0, sp, #0x24
00613f10  02 40 a0 e1                                      mov r4, r2
00613f14  03 90 a0 e1                                      mov sb, r3
00613f18  c0 ff ff eb                                      bl #0x613e20
00613f1c  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00613f20  06 20 a0 e3                                      mov r2, #6
00613f24  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00613f28  04 30 9b e5                                      ldr r3, [fp, #4]
00613f2c  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00613f30  00 50 a0 e3                                      mov r5, #0
00613f34  92 34 24 e0                                      mla r4, r2, r4, r3
00613f38  05 60 a0 e1                                      mov r6, r5
00613f3c  18 70 8d e2                                      add r7, sp, #0x18
00613f40  f6 00 94 e1                                      ldrsh r0, [r4, r6]
00613f44  86 ea f3 eb                                      bl #0x30e964
00613f48  05 10 9a e7                                      ldr r1, [sl, r5]
00613f4c  86 eb f3 eb                                      bl #0x30ed6c
00613f50  05 10 98 e7                                      ldr r1, [r8, r5]
00613f54  12 eb f3 eb                                      bl #0x30eba4
00613f58  02 60 86 e2                                      add r6, r6, #2
00613f5c  06 00 56 e3                                      cmp r6, #6
00613f60  05 00 87 e7                                      str r0, [r7, r5]
00613f64  04 50 85 e2                                      add r5, r5, #4
00613f68  f4 ff ff 1a                                      bne #0x613f40
00613f6c  04 30 9b e5                                      ldr r3, [fp, #4]
00613f70  04 20 9d e5                                      ldr r2, [sp, #4]
00613f74  00 40 a0 e3                                      mov r4, #0
00613f78  04 50 a0 e1                                      mov r5, r4
00613f7c  96 32 26 e0                                      mla r6, r6, r2, r3
00613f80  0c b0 8d e2                                      add fp, sp, #0xc
00613f84  f5 00 96 e1                                      ldrsh r0, [r6, r5]
00613f88  75 ea f3 eb                                      bl #0x30e964
00613f8c  04 10 9a e7                                      ldr r1, [sl, r4]
00613f90  75 eb f3 eb                                      bl #0x30ed6c
00613f94  04 10 98 e7                                      ldr r1, [r8, r4]
00613f98  01 eb f3 eb                                      bl #0x30eba4
00613f9c  02 50 85 e2                                      add r5, r5, #2
00613fa0  06 00 55 e3                                      cmp r5, #6
00613fa4  04 00 8b e7                                      str r0, [fp, r4]
00613fa8  04 40 84 e2                                      add r4, r4, #4
00613fac  f4 ff ff 1a                                      bne #0x613f84
00613fb0  00 40 a0 e3                                      mov r4, #0
00613fb4  04 00 97 e7                                      ldr r0, [r7, r4]
00613fb8  04 10 9b e7                                      ldr r1, [fp, r4]
00613fbc  fa e8 f3 eb                                      bl #0x30e3ac
00613fc0  04 00 89 e7                                      str r0, [sb, r4]
00613fc4  04 40 84 e2                                      add r4, r4, #4
00613fc8  0c 00 54 e3                                      cmp r4, #0xc
00613fcc  f8 ff ff 1a                                      bne #0x613fb4
00613fd0  34 d0 8d e2                                      add sp, sp, #0x34
00613fd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00613fec, declared_size=324, range_size=324, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00613fec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00613ff0  3c d0 4d e2                                      sub sp, sp, #0x3c
00613ff4  04 10 8d e5                                      str r1, [sp, #4]
00613ff8  00 10 a0 e1                                      mov r1, r0
00613ffc  2c 00 8d e2                                      add r0, sp, #0x2c
00614000  02 40 a0 e1                                      mov r4, r2
00614004  03 b0 a0 e1                                      mov fp, r3
00614008  84 ff ff eb                                      bl #0x613e20
0061400c  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00614010  06 20 a0 e3                                      mov r2, #6
00614014  30 80 9d e5                                      ldr r8, [sp, #0x30]
00614018  04 30 96 e5                                      ldr r3, [r6, #4]
0061401c  34 70 9d e5                                      ldr r7, [sp, #0x34]
00614020  00 50 a0 e3                                      mov r5, #0
00614024  92 34 24 e0                                      mla r4, r2, r4, r3
00614028  05 a0 a0 e1                                      mov sl, r5
0061402c  20 90 8d e2                                      add sb, sp, #0x20
00614030  fa 00 94 e1                                      ldrsh r0, [r4, sl]
00614034  4a ea f3 eb                                      bl #0x30e964
00614038  05 10 98 e7                                      ldr r1, [r8, r5]
0061403c  4a eb f3 eb                                      bl #0x30ed6c
00614040  05 10 97 e7                                      ldr r1, [r7, r5]
00614044  d6 ea f3 eb                                      bl #0x30eba4
00614048  02 a0 8a e2                                      add sl, sl, #2
0061404c  06 00 5a e3                                      cmp sl, #6
00614050  05 00 89 e7                                      str r0, [sb, r5]
00614054  04 50 85 e2                                      add r5, r5, #4
00614058  f4 ff ff 1a                                      bne #0x614030
0061405c  04 30 96 e5                                      ldr r3, [r6, #4]
00614060  00 40 a0 e3                                      mov r4, #0
00614064  04 50 a0 e1                                      mov r5, r4
00614068  9a 3b 2b e0                                      mla fp, sl, fp, r3
0061406c  14 a0 8d e2                                      add sl, sp, #0x14
00614070  f5 00 9b e1                                      ldrsh r0, [fp, r5]
00614074  3a ea f3 eb                                      bl #0x30e964
00614078  04 10 98 e7                                      ldr r1, [r8, r4]
0061407c  3a eb f3 eb                                      bl #0x30ed6c
00614080  04 10 97 e7                                      ldr r1, [r7, r4]
00614084  c6 ea f3 eb                                      bl #0x30eba4
00614088  02 50 85 e2                                      add r5, r5, #2
0061408c  06 00 55 e3                                      cmp r5, #6
00614090  04 00 8a e7                                      str r0, [sl, r4]
00614094  04 40 84 e2                                      add r4, r4, #4
00614098  f4 ff ff 1a                                      bne #0x614070
0061409c  04 30 96 e5                                      ldr r3, [r6, #4]
006140a0  04 20 9d e5                                      ldr r2, [sp, #4]
006140a4  00 40 a0 e3                                      mov r4, #0
006140a8  04 60 a0 e1                                      mov r6, r4
006140ac  95 32 25 e0                                      mla r5, r5, r2, r3
006140b0  08 b0 8d e2                                      add fp, sp, #8
006140b4  f6 00 95 e1                                      ldrsh r0, [r5, r6]
006140b8  29 ea f3 eb                                      bl #0x30e964
006140bc  04 10 98 e7                                      ldr r1, [r8, r4]
006140c0  29 eb f3 eb                                      bl #0x30ed6c
006140c4  04 10 97 e7                                      ldr r1, [r7, r4]
006140c8  b5 ea f3 eb                                      bl #0x30eba4
006140cc  02 60 86 e2                                      add r6, r6, #2
006140d0  06 00 56 e3                                      cmp r6, #6
006140d4  04 00 8b e7                                      str r0, [fp, r4]
006140d8  04 40 84 e2                                      add r4, r4, #4
006140dc  f4 ff ff 1a                                      bne #0x6140b4
006140e0  00 40 a0 e3                                      mov r4, #0
006140e4  04 50 99 e7                                      ldr r5, [sb, r4]
006140e8  04 00 9a e7                                      ldr r0, [sl, r4]
006140ec  05 10 a0 e1                                      mov r1, r5
006140f0  ad e8 f3 eb                                      bl #0x30e3ac
006140f4  00 10 a0 e1                                      mov r1, r0
006140f8  60 00 9d e5                                      ldr r0, [sp, #0x60]
006140fc  1a eb f3 eb                                      bl #0x30ed6c
00614100  00 10 a0 e1                                      mov r1, r0
00614104  05 00 a0 e1                                      mov r0, r5
00614108  a5 ea f3 eb                                      bl #0x30eba4
0061410c  04 10 9b e7                                      ldr r1, [fp, r4]
00614110  a5 e8 f3 eb                                      bl #0x30e3ac
00614114  64 30 9d e5                                      ldr r3, [sp, #0x64]
00614118  04 00 83 e7                                      str r0, [r3, r4]
0061411c  04 40 84 e2                                      add r4, r4, #4
00614120  0c 00 54 e3                                      cmp r4, #0xc
00614124  ee ff ff 1a                                      bne #0x6140e4
00614128  3c d0 8d e2                                      add sp, sp, #0x3c
0061412c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00628b48, declared_size=352, range_size=352, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00628b48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00628b4c  3c d0 4d e2                                      sub sp, sp, #0x3c
00628b50  03 40 a0 e1                                      mov r4, r3
00628b54  01 50 a0 e1                                      mov r5, r1
00628b58  00 10 a0 e1                                      mov r1, r0
00628b5c  24 00 8d e2                                      add r0, sp, #0x24
00628b60  02 b0 a0 e1                                      mov fp, r2
00628b64  ad ac ff eb                                      bl #0x613e20
00628b68  fe 05 a0 e3                                      mov r0, #0x3f800000
00628b6c  04 10 a0 e1                                      mov r1, r4
00628b70  0d 96 f3 eb                                      bl #0x30e3ac
00628b74  24 30 9d e5                                      ldr r3, [sp, #0x24]
00628b78  30 00 8d e5                                      str r0, [sp, #0x30]
00628b7c  34 40 8d e5                                      str r4, [sp, #0x34]
00628b80  04 30 93 e5                                      ldr r3, [r3, #4]
00628b84  06 20 a0 e3                                      mov r2, #6
00628b88  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00628b8c  92 3b 2b e0                                      mla fp, r2, fp, r3
00628b90  92 35 22 e0                                      mla r2, r2, r5, r3
00628b94  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00628b98  0c 90 8d e2                                      add sb, sp, #0xc
00628b9c  00 50 a0 e3                                      mov r5, #0
00628ba0  04 20 8d e5                                      str r2, [sp, #4]
00628ba4  09 70 a0 e1                                      mov r7, sb
00628ba8  05 60 a0 e1                                      mov r6, r5
00628bac  04 20 9d e5                                      ldr r2, [sp, #4]
00628bb0  f6 00 92 e1                                      ldrsh r0, [r2, r6]
00628bb4  6a 97 f3 eb                                      bl #0x30e964
00628bb8  05 10 9a e7                                      ldr r1, [sl, r5]
00628bbc  6a 98 f3 eb                                      bl #0x30ed6c
00628bc0  05 10 98 e7                                      ldr r1, [r8, r5]
00628bc4  f6 97 f3 eb                                      bl #0x30eba4
00628bc8  05 00 89 e7                                      str r0, [sb, r5]
00628bcc  f6 00 9b e1                                      ldrsh r0, [fp, r6]
00628bd0  63 97 f3 eb                                      bl #0x30e964
00628bd4  05 10 9a e7                                      ldr r1, [sl, r5]
00628bd8  63 98 f3 eb                                      bl #0x30ed6c
00628bdc  05 10 98 e7                                      ldr r1, [r8, r5]
00628be0  ef 97 f3 eb                                      bl #0x30eba4
00628be4  02 60 86 e2                                      add r6, r6, #2
00628be8  06 00 56 e3                                      cmp r6, #6
00628bec  0c 00 87 e5                                      str r0, [r7, #0xc]
00628bf0  04 50 85 e2                                      add r5, r5, #4
00628bf4  04 70 87 e2                                      add r7, r7, #4
00628bf8  eb ff ff 1a                                      bne #0x628bac
00628bfc  30 50 9d e5                                      ldr r5, [sp, #0x30]
00628c00  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00628c04  05 00 a0 e1                                      mov r0, r5
00628c08  57 98 f3 eb                                      bl #0x30ed6c
00628c0c  00 10 a0 e3                                      mov r1, #0
00628c10  e3 97 f3 eb                                      bl #0x30eba4
00628c14  10 10 9d e5                                      ldr r1, [sp, #0x10]
00628c18  00 70 a0 e1                                      mov r7, r0
00628c1c  05 00 a0 e1                                      mov r0, r5
00628c20  51 98 f3 eb                                      bl #0x30ed6c
00628c24  00 10 a0 e3                                      mov r1, #0
00628c28  dd 97 f3 eb                                      bl #0x30eba4
00628c2c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00628c30  00 60 a0 e1                                      mov r6, r0
00628c34  05 00 a0 e1                                      mov r0, r5
00628c38  4b 98 f3 eb                                      bl #0x30ed6c
00628c3c  00 10 a0 e3                                      mov r1, #0
00628c40  d7 97 f3 eb                                      bl #0x30eba4
00628c44  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00628c48  00 50 a0 e1                                      mov r5, r0
00628c4c  04 00 a0 e1                                      mov r0, r4
00628c50  45 98 f3 eb                                      bl #0x30ed6c
00628c54  06 10 a0 e1                                      mov r1, r6
00628c58  d1 97 f3 eb                                      bl #0x30eba4
00628c5c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00628c60  00 60 a0 e1                                      mov r6, r0
00628c64  04 00 a0 e1                                      mov r0, r4
00628c68  3f 98 f3 eb                                      bl #0x30ed6c
00628c6c  05 10 a0 e1                                      mov r1, r5
00628c70  cb 97 f3 eb                                      bl #0x30eba4
00628c74  18 10 9d e5                                      ldr r1, [sp, #0x18]
00628c78  00 50 a0 e1                                      mov r5, r0
00628c7c  04 00 a0 e1                                      mov r0, r4
00628c80  39 98 f3 eb                                      bl #0x30ed6c
00628c84  07 10 a0 e1                                      mov r1, r7
00628c88  c5 97 f3 eb                                      bl #0x30eba4
00628c8c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00628c90  04 00 83 e4                                      str r0, [r3], #4
00628c94  60 20 9d e5                                      ldr r2, [sp, #0x60]
00628c98  04 60 82 e5                                      str r6, [r2, #4]
00628c9c  04 50 83 e5                                      str r5, [r3, #4]
00628ca0  3c d0 8d e2                                      add sp, sp, #0x3c
00628ca4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
