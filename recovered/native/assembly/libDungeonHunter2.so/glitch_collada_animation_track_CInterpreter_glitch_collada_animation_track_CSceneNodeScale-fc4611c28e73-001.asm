; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061478c, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIcEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061478c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00614790  18 d0 4d e2                                      sub sp, sp, #0x18
00614794  01 40 a0 e1                                      mov r4, r1
00614798  00 10 a0 e1                                      mov r1, r0
0061479c  0c 00 8d e2                                      add r0, sp, #0xc
006147a0  02 90 a0 e1                                      mov sb, r2
006147a4  28 ff ff eb                                      bl #0x61444c
006147a8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006147ac  10 a0 9d e5                                      ldr sl, [sp, #0x10]
006147b0  14 80 9d e5                                      ldr r8, [sp, #0x14]
006147b4  04 30 93 e5                                      ldr r3, [r3, #4]
006147b8  84 40 84 e0                                      add r4, r4, r4, lsl #1
006147bc  00 50 a0 e3                                      mov r5, #0
006147c0  04 40 83 e0                                      add r4, r3, r4
006147c4  05 60 a0 e1                                      mov r6, r5
006147c8  0d 70 a0 e1                                      mov r7, sp
006147cc  d6 00 94 e1                                      ldrsb r0, [r4, r6]
006147d0  63 e8 f3 eb                                      bl #0x30e964
006147d4  05 10 9a e7                                      ldr r1, [sl, r5]
006147d8  63 e9 f3 eb                                      bl #0x30ed6c
006147dc  05 10 98 e7                                      ldr r1, [r8, r5]
006147e0  ef e8 f3 eb                                      bl #0x30eba4
006147e4  01 60 86 e2                                      add r6, r6, #1
006147e8  03 00 56 e3                                      cmp r6, #3
006147ec  05 00 87 e7                                      str r0, [r7, r5]
006147f0  04 50 85 e2                                      add r5, r5, #4
006147f4  f4 ff ff 1a                                      bne #0x6147cc
006147f8  00 00 9d e5                                      ldr r0, [sp]
006147fc  04 10 9d e5                                      ldr r1, [sp, #4]
00614800  08 20 9d e5                                      ldr r2, [sp, #8]
00614804  09 30 a0 e1                                      mov r3, sb
00614808  04 00 83 e4                                      str r0, [r3], #4
0061480c  04 10 89 e5                                      str r1, [sb, #4]
00614810  04 20 83 e5                                      str r2, [r3, #4]
00614814  18 d0 8d e2                                      add sp, sp, #0x18
00614818  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061482c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIcEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061482c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614830  34 d0 4d e2                                      sub sp, sp, #0x34
00614834  04 10 8d e5                                      str r1, [sp, #4]
00614838  00 10 a0 e1                                      mov r1, r0
0061483c  24 00 8d e2                                      add r0, sp, #0x24
00614840  02 40 a0 e1                                      mov r4, r2
00614844  03 a0 a0 e1                                      mov sl, r3
00614848  ff fe ff eb                                      bl #0x61444c
0061484c  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00614850  28 80 9d e5                                      ldr r8, [sp, #0x28]
00614854  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
00614858  04 30 9b e5                                      ldr r3, [fp, #4]
0061485c  84 90 84 e0                                      add sb, r4, r4, lsl #1
00614860  00 40 a0 e3                                      mov r4, #0
00614864  09 90 83 e0                                      add sb, r3, sb
00614868  04 50 a0 e1                                      mov r5, r4
0061486c  18 60 8d e2                                      add r6, sp, #0x18
00614870  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00614874  3a e8 f3 eb                                      bl #0x30e964
00614878  04 10 98 e7                                      ldr r1, [r8, r4]
0061487c  3a e9 f3 eb                                      bl #0x30ed6c
00614880  04 10 97 e7                                      ldr r1, [r7, r4]
00614884  c6 e8 f3 eb                                      bl #0x30eba4
00614888  01 50 85 e2                                      add r5, r5, #1
0061488c  03 00 55 e3                                      cmp r5, #3
00614890  04 00 86 e7                                      str r0, [r6, r4]
00614894  04 40 84 e2                                      add r4, r4, #4
00614898  f4 ff ff 1a                                      bne #0x614870
0061489c  04 10 9d e5                                      ldr r1, [sp, #4]
006148a0  04 b0 9b e5                                      ldr fp, [fp, #4]
006148a4  00 40 a0 e3                                      mov r4, #0
006148a8  81 30 81 e0                                      add r3, r1, r1, lsl #1
006148ac  03 b0 8b e0                                      add fp, fp, r3
006148b0  04 50 a0 e1                                      mov r5, r4
006148b4  0c 90 8d e2                                      add sb, sp, #0xc
006148b8  d5 00 9b e1                                      ldrsb r0, [fp, r5]
006148bc  28 e8 f3 eb                                      bl #0x30e964
006148c0  04 10 98 e7                                      ldr r1, [r8, r4]
006148c4  28 e9 f3 eb                                      bl #0x30ed6c
006148c8  04 10 97 e7                                      ldr r1, [r7, r4]
006148cc  b4 e8 f3 eb                                      bl #0x30eba4
006148d0  01 50 85 e2                                      add r5, r5, #1
006148d4  03 00 55 e3                                      cmp r5, #3
006148d8  04 00 89 e7                                      str r0, [sb, r4]
006148dc  04 40 84 e2                                      add r4, r4, #4
006148e0  f4 ff ff 1a                                      bne #0x6148b8
006148e4  00 40 a0 e3                                      mov r4, #0
006148e8  04 00 96 e7                                      ldr r0, [r6, r4]
006148ec  04 10 99 e7                                      ldr r1, [sb, r4]
006148f0  ad e6 f3 eb                                      bl #0x30e3ac
006148f4  04 00 8a e7                                      str r0, [sl, r4]
006148f8  04 40 84 e2                                      add r4, r4, #4
006148fc  0c 00 54 e3                                      cmp r4, #0xc
00614900  f8 ff ff 1a                                      bne #0x6148e8
00614904  34 d0 8d e2                                      add sp, sp, #0x34
00614908  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00614920, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIcEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00614920  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614924  3c d0 4d e2                                      sub sp, sp, #0x3c
00614928  04 10 8d e5                                      str r1, [sp, #4]
0061492c  00 10 a0 e1                                      mov r1, r0
00614930  2c 00 8d e2                                      add r0, sp, #0x2c
00614934  02 40 a0 e1                                      mov r4, r2
00614938  03 b0 a0 e1                                      mov fp, r3
0061493c  c2 fe ff eb                                      bl #0x61444c
00614940  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00614944  30 70 9d e5                                      ldr r7, [sp, #0x30]
00614948  34 60 9d e5                                      ldr r6, [sp, #0x34]
0061494c  04 30 9a e5                                      ldr r3, [sl, #4]
00614950  84 90 84 e0                                      add sb, r4, r4, lsl #1
00614954  00 40 a0 e3                                      mov r4, #0
00614958  09 90 83 e0                                      add sb, r3, sb
0061495c  04 50 a0 e1                                      mov r5, r4
00614960  20 80 8d e2                                      add r8, sp, #0x20
00614964  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00614968  fd e7 f3 eb                                      bl #0x30e964
0061496c  04 10 97 e7                                      ldr r1, [r7, r4]
00614970  fd e8 f3 eb                                      bl #0x30ed6c
00614974  04 10 96 e7                                      ldr r1, [r6, r4]
00614978  89 e8 f3 eb                                      bl #0x30eba4
0061497c  01 50 85 e2                                      add r5, r5, #1
00614980  03 00 55 e3                                      cmp r5, #3
00614984  04 00 88 e7                                      str r0, [r8, r4]
00614988  04 40 84 e2                                      add r4, r4, #4
0061498c  f4 ff ff 1a                                      bne #0x614964
00614990  04 30 9a e5                                      ldr r3, [sl, #4]
00614994  8b b0 8b e0                                      add fp, fp, fp, lsl #1
00614998  00 40 a0 e3                                      mov r4, #0
0061499c  0b b0 83 e0                                      add fp, r3, fp
006149a0  04 50 a0 e1                                      mov r5, r4
006149a4  14 90 8d e2                                      add sb, sp, #0x14
006149a8  d5 00 9b e1                                      ldrsb r0, [fp, r5]
006149ac  ec e7 f3 eb                                      bl #0x30e964
006149b0  04 10 97 e7                                      ldr r1, [r7, r4]
006149b4  ec e8 f3 eb                                      bl #0x30ed6c
006149b8  04 10 96 e7                                      ldr r1, [r6, r4]
006149bc  78 e8 f3 eb                                      bl #0x30eba4
006149c0  01 50 85 e2                                      add r5, r5, #1
006149c4  03 00 55 e3                                      cmp r5, #3
006149c8  04 00 89 e7                                      str r0, [sb, r4]
006149cc  04 40 84 e2                                      add r4, r4, #4
006149d0  f4 ff ff 1a                                      bne #0x6149a8
006149d4  04 10 9d e5                                      ldr r1, [sp, #4]
006149d8  04 b0 9a e5                                      ldr fp, [sl, #4]
006149dc  00 40 a0 e3                                      mov r4, #0
006149e0  81 30 81 e0                                      add r3, r1, r1, lsl #1
006149e4  03 b0 8b e0                                      add fp, fp, r3
006149e8  04 50 a0 e1                                      mov r5, r4
006149ec  08 a0 8d e2                                      add sl, sp, #8
006149f0  d5 00 9b e1                                      ldrsb r0, [fp, r5]
006149f4  da e7 f3 eb                                      bl #0x30e964
006149f8  04 10 97 e7                                      ldr r1, [r7, r4]
006149fc  da e8 f3 eb                                      bl #0x30ed6c
00614a00  04 10 96 e7                                      ldr r1, [r6, r4]
00614a04  66 e8 f3 eb                                      bl #0x30eba4
00614a08  01 50 85 e2                                      add r5, r5, #1
00614a0c  03 00 55 e3                                      cmp r5, #3
00614a10  04 00 8a e7                                      str r0, [sl, r4]
00614a14  04 40 84 e2                                      add r4, r4, #4
00614a18  f4 ff ff 1a                                      bne #0x6149f0
00614a1c  00 40 a0 e3                                      mov r4, #0
00614a20  04 50 98 e7                                      ldr r5, [r8, r4]
00614a24  04 00 99 e7                                      ldr r0, [sb, r4]
00614a28  05 10 a0 e1                                      mov r1, r5
00614a2c  5e e6 f3 eb                                      bl #0x30e3ac
00614a30  00 10 a0 e1                                      mov r1, r0
00614a34  60 00 9d e5                                      ldr r0, [sp, #0x60]
00614a38  cb e8 f3 eb                                      bl #0x30ed6c
00614a3c  00 10 a0 e1                                      mov r1, r0
00614a40  05 00 a0 e1                                      mov r0, r5
00614a44  56 e8 f3 eb                                      bl #0x30eba4
00614a48  04 10 9a e7                                      ldr r1, [sl, r4]
00614a4c  56 e6 f3 eb                                      bl #0x30e3ac
00614a50  64 20 9d e5                                      ldr r2, [sp, #0x64]
00614a54  04 00 82 e7                                      str r0, [r2, r4]
00614a58  04 40 84 e2                                      add r4, r4, #4
00614a5c  0c 00 54 e3                                      cmp r4, #0xc
00614a60  ee ff ff 1a                                      bne #0x614a20
00614a64  3c d0 8d e2                                      add sp, sp, #0x3c
00614a68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00627f80, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIcEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<char>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00627f80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627f84  3c d0 4d e2                                      sub sp, sp, #0x3c
00627f88  03 40 a0 e1                                      mov r4, r3
00627f8c  01 50 a0 e1                                      mov r5, r1
00627f90  00 10 a0 e1                                      mov r1, r0
00627f94  24 00 8d e2                                      add r0, sp, #0x24
00627f98  02 b0 a0 e1                                      mov fp, r2
00627f9c  2a b1 ff eb                                      bl #0x61444c
00627fa0  fe 05 a0 e3                                      mov r0, #0x3f800000
00627fa4  04 10 a0 e1                                      mov r1, r4
00627fa8  ff 98 f3 eb                                      bl #0x30e3ac
00627fac  24 30 9d e5                                      ldr r3, [sp, #0x24]
00627fb0  30 00 8d e5                                      str r0, [sp, #0x30]
00627fb4  34 40 8d e5                                      str r4, [sp, #0x34]
00627fb8  04 30 93 e5                                      ldr r3, [r3, #4]
00627fbc  85 20 85 e0                                      add r2, r5, r5, lsl #1
00627fc0  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00627fc4  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00627fc8  8b b0 8b e0                                      add fp, fp, fp, lsl #1
00627fcc  0c 90 8d e2                                      add sb, sp, #0xc
00627fd0  00 50 a0 e3                                      mov r5, #0
00627fd4  02 20 83 e0                                      add r2, r3, r2
00627fd8  0b b0 83 e0                                      add fp, r3, fp
00627fdc  04 20 8d e5                                      str r2, [sp, #4]
00627fe0  09 70 a0 e1                                      mov r7, sb
00627fe4  05 60 a0 e1                                      mov r6, r5
00627fe8  04 20 9d e5                                      ldr r2, [sp, #4]
00627fec  d6 00 92 e1                                      ldrsb r0, [r2, r6]
00627ff0  5b 9a f3 eb                                      bl #0x30e964
00627ff4  05 10 9a e7                                      ldr r1, [sl, r5]
00627ff8  5b 9b f3 eb                                      bl #0x30ed6c
00627ffc  05 10 98 e7                                      ldr r1, [r8, r5]
00628000  e7 9a f3 eb                                      bl #0x30eba4
00628004  05 00 89 e7                                      str r0, [sb, r5]
00628008  d6 00 9b e1                                      ldrsb r0, [fp, r6]
0062800c  54 9a f3 eb                                      bl #0x30e964
00628010  05 10 9a e7                                      ldr r1, [sl, r5]
00628014  54 9b f3 eb                                      bl #0x30ed6c
00628018  05 10 98 e7                                      ldr r1, [r8, r5]
0062801c  e0 9a f3 eb                                      bl #0x30eba4
00628020  01 60 86 e2                                      add r6, r6, #1
00628024  03 00 56 e3                                      cmp r6, #3
00628028  0c 00 87 e5                                      str r0, [r7, #0xc]
0062802c  04 50 85 e2                                      add r5, r5, #4
00628030  04 70 87 e2                                      add r7, r7, #4
00628034  eb ff ff 1a                                      bne #0x627fe8
00628038  30 50 9d e5                                      ldr r5, [sp, #0x30]
0062803c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00628040  05 00 a0 e1                                      mov r0, r5
00628044  48 9b f3 eb                                      bl #0x30ed6c
00628048  00 10 a0 e3                                      mov r1, #0
0062804c  d4 9a f3 eb                                      bl #0x30eba4
00628050  10 10 9d e5                                      ldr r1, [sp, #0x10]
00628054  00 70 a0 e1                                      mov r7, r0
00628058  05 00 a0 e1                                      mov r0, r5
0062805c  42 9b f3 eb                                      bl #0x30ed6c
00628060  00 10 a0 e3                                      mov r1, #0
00628064  ce 9a f3 eb                                      bl #0x30eba4
00628068  14 10 9d e5                                      ldr r1, [sp, #0x14]
0062806c  00 60 a0 e1                                      mov r6, r0
00628070  05 00 a0 e1                                      mov r0, r5
00628074  3c 9b f3 eb                                      bl #0x30ed6c
00628078  00 10 a0 e3                                      mov r1, #0
0062807c  c8 9a f3 eb                                      bl #0x30eba4
00628080  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00628084  00 50 a0 e1                                      mov r5, r0
00628088  04 00 a0 e1                                      mov r0, r4
0062808c  36 9b f3 eb                                      bl #0x30ed6c
00628090  06 10 a0 e1                                      mov r1, r6
00628094  c2 9a f3 eb                                      bl #0x30eba4
00628098  20 10 9d e5                                      ldr r1, [sp, #0x20]
0062809c  00 60 a0 e1                                      mov r6, r0
006280a0  04 00 a0 e1                                      mov r0, r4
006280a4  30 9b f3 eb                                      bl #0x30ed6c
006280a8  05 10 a0 e1                                      mov r1, r5
006280ac  bc 9a f3 eb                                      bl #0x30eba4
006280b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006280b4  00 50 a0 e1                                      mov r5, r0
006280b8  04 00 a0 e1                                      mov r0, r4
006280bc  2a 9b f3 eb                                      bl #0x30ed6c
006280c0  07 10 a0 e1                                      mov r1, r7
006280c4  b6 9a f3 eb                                      bl #0x30eba4
006280c8  60 30 9d e5                                      ldr r3, [sp, #0x60]
006280cc  04 00 83 e4                                      str r0, [r3], #4
006280d0  60 20 9d e5                                      ldr r2, [sp, #0x60]
006280d4  04 60 82 e5                                      str r6, [r2, #4]
006280d8  04 50 83 e5                                      str r5, [r3, #4]
006280dc  3c d0 8d e2                                      add sp, sp, #0x3c
006280e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
