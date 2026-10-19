; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00614488, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614488  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061448c  18 d0 4d e2                                      sub sp, sp, #0x18
00614490  01 40 a0 e1                                      mov r4, r1
00614494  00 10 a0 e1                                      mov r1, r0
00614498  0c 00 8d e2                                      add r0, sp, #0xc
0061449c  02 90 a0 e1                                      mov sb, r2
006144a0  e9 ff ff eb                                      bl #0x61444c
006144a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006144a8  10 a0 9d e5                                      ldr sl, [sp, #0x10]
006144ac  14 80 9d e5                                      ldr r8, [sp, #0x14]
006144b0  04 30 93 e5                                      ldr r3, [r3, #4]
006144b4  84 40 84 e0                                      add r4, r4, r4, lsl #1
006144b8  00 50 a0 e3                                      mov r5, #0
006144bc  04 40 83 e0                                      add r4, r3, r4
006144c0  05 60 a0 e1                                      mov r6, r5
006144c4  0d 70 a0 e1                                      mov r7, sp
006144c8  d6 00 94 e1                                      ldrsb r0, [r4, r6]
006144cc  24 e9 f3 eb                                      bl #0x30e964
006144d0  05 10 9a e7                                      ldr r1, [sl, r5]
006144d4  24 ea f3 eb                                      bl #0x30ed6c
006144d8  05 10 98 e7                                      ldr r1, [r8, r5]
006144dc  b0 e9 f3 eb                                      bl #0x30eba4
006144e0  01 60 86 e2                                      add r6, r6, #1
006144e4  03 00 56 e3                                      cmp r6, #3
006144e8  05 00 87 e7                                      str r0, [r7, r5]
006144ec  04 50 85 e2                                      add r5, r5, #4
006144f0  f4 ff ff 1a                                      bne #0x6144c8
006144f4  00 00 9d e5                                      ldr r0, [sp]
006144f8  04 10 9d e5                                      ldr r1, [sp, #4]
006144fc  08 20 9d e5                                      ldr r2, [sp, #8]
00614500  09 30 a0 e1                                      mov r3, sb
00614504  04 00 83 e4                                      str r0, [r3], #4
00614508  04 10 89 e5                                      str r1, [sb, #4]
0061450c  04 20 83 e5                                      str r2, [r3, #4]
00614510  18 d0 8d e2                                      add sp, sp, #0x18
00614514  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00614528, declared_size=224, range_size=224, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00614528  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061452c  34 d0 4d e2                                      sub sp, sp, #0x34
00614530  04 10 8d e5                                      str r1, [sp, #4]
00614534  00 10 a0 e1                                      mov r1, r0
00614538  24 00 8d e2                                      add r0, sp, #0x24
0061453c  02 40 a0 e1                                      mov r4, r2
00614540  03 a0 a0 e1                                      mov sl, r3
00614544  c0 ff ff eb                                      bl #0x61444c
00614548  24 b0 9d e5                                      ldr fp, [sp, #0x24]
0061454c  28 80 9d e5                                      ldr r8, [sp, #0x28]
00614550  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
00614554  04 30 9b e5                                      ldr r3, [fp, #4]
00614558  84 90 84 e0                                      add sb, r4, r4, lsl #1
0061455c  00 40 a0 e3                                      mov r4, #0
00614560  09 90 83 e0                                      add sb, r3, sb
00614564  04 50 a0 e1                                      mov r5, r4
00614568  18 60 8d e2                                      add r6, sp, #0x18
0061456c  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00614570  fb e8 f3 eb                                      bl #0x30e964
00614574  04 10 98 e7                                      ldr r1, [r8, r4]
00614578  fb e9 f3 eb                                      bl #0x30ed6c
0061457c  04 10 97 e7                                      ldr r1, [r7, r4]
00614580  87 e9 f3 eb                                      bl #0x30eba4
00614584  01 50 85 e2                                      add r5, r5, #1
00614588  03 00 55 e3                                      cmp r5, #3
0061458c  04 00 86 e7                                      str r0, [r6, r4]
00614590  04 40 84 e2                                      add r4, r4, #4
00614594  f4 ff ff 1a                                      bne #0x61456c
00614598  04 10 9d e5                                      ldr r1, [sp, #4]
0061459c  04 b0 9b e5                                      ldr fp, [fp, #4]
006145a0  00 40 a0 e3                                      mov r4, #0
006145a4  81 30 81 e0                                      add r3, r1, r1, lsl #1
006145a8  03 b0 8b e0                                      add fp, fp, r3
006145ac  04 50 a0 e1                                      mov r5, r4
006145b0  0c 90 8d e2                                      add sb, sp, #0xc
006145b4  d5 00 9b e1                                      ldrsb r0, [fp, r5]
006145b8  e9 e8 f3 eb                                      bl #0x30e964
006145bc  04 10 98 e7                                      ldr r1, [r8, r4]
006145c0  e9 e9 f3 eb                                      bl #0x30ed6c
006145c4  04 10 97 e7                                      ldr r1, [r7, r4]
006145c8  75 e9 f3 eb                                      bl #0x30eba4
006145cc  01 50 85 e2                                      add r5, r5, #1
006145d0  03 00 55 e3                                      cmp r5, #3
006145d4  04 00 89 e7                                      str r0, [sb, r4]
006145d8  04 40 84 e2                                      add r4, r4, #4
006145dc  f4 ff ff 1a                                      bne #0x6145b4
006145e0  00 40 a0 e3                                      mov r4, #0
006145e4  04 00 96 e7                                      ldr r0, [r6, r4]
006145e8  04 10 99 e7                                      ldr r1, [sb, r4]
006145ec  6e e7 f3 eb                                      bl #0x30e3ac
006145f0  04 00 8a e7                                      str r0, [sl, r4]
006145f4  04 40 84 e2                                      add r4, r4, #4
006145f8  0c 00 54 e3                                      cmp r4, #0xc
006145fc  f8 ff ff 1a                                      bne #0x6145e4
00614600  34 d0 8d e2                                      add sp, sp, #0x34
00614604  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061461c, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061461c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614620  3c d0 4d e2                                      sub sp, sp, #0x3c
00614624  04 10 8d e5                                      str r1, [sp, #4]
00614628  00 10 a0 e1                                      mov r1, r0
0061462c  2c 00 8d e2                                      add r0, sp, #0x2c
00614630  02 40 a0 e1                                      mov r4, r2
00614634  03 b0 a0 e1                                      mov fp, r3
00614638  83 ff ff eb                                      bl #0x61444c
0061463c  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00614640  30 70 9d e5                                      ldr r7, [sp, #0x30]
00614644  34 60 9d e5                                      ldr r6, [sp, #0x34]
00614648  04 30 9a e5                                      ldr r3, [sl, #4]
0061464c  84 90 84 e0                                      add sb, r4, r4, lsl #1
00614650  00 40 a0 e3                                      mov r4, #0
00614654  09 90 83 e0                                      add sb, r3, sb
00614658  04 50 a0 e1                                      mov r5, r4
0061465c  20 80 8d e2                                      add r8, sp, #0x20
00614660  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00614664  be e8 f3 eb                                      bl #0x30e964
00614668  04 10 97 e7                                      ldr r1, [r7, r4]
0061466c  be e9 f3 eb                                      bl #0x30ed6c
00614670  04 10 96 e7                                      ldr r1, [r6, r4]
00614674  4a e9 f3 eb                                      bl #0x30eba4
00614678  01 50 85 e2                                      add r5, r5, #1
0061467c  03 00 55 e3                                      cmp r5, #3
00614680  04 00 88 e7                                      str r0, [r8, r4]
00614684  04 40 84 e2                                      add r4, r4, #4
00614688  f4 ff ff 1a                                      bne #0x614660
0061468c  04 30 9a e5                                      ldr r3, [sl, #4]
00614690  8b b0 8b e0                                      add fp, fp, fp, lsl #1
00614694  00 40 a0 e3                                      mov r4, #0
00614698  0b b0 83 e0                                      add fp, r3, fp
0061469c  04 50 a0 e1                                      mov r5, r4
006146a0  14 90 8d e2                                      add sb, sp, #0x14
006146a4  d5 00 9b e1                                      ldrsb r0, [fp, r5]
006146a8  ad e8 f3 eb                                      bl #0x30e964
006146ac  04 10 97 e7                                      ldr r1, [r7, r4]
006146b0  ad e9 f3 eb                                      bl #0x30ed6c
006146b4  04 10 96 e7                                      ldr r1, [r6, r4]
006146b8  39 e9 f3 eb                                      bl #0x30eba4
006146bc  01 50 85 e2                                      add r5, r5, #1
006146c0  03 00 55 e3                                      cmp r5, #3
006146c4  04 00 89 e7                                      str r0, [sb, r4]
006146c8  04 40 84 e2                                      add r4, r4, #4
006146cc  f4 ff ff 1a                                      bne #0x6146a4
006146d0  04 10 9d e5                                      ldr r1, [sp, #4]
006146d4  04 b0 9a e5                                      ldr fp, [sl, #4]
006146d8  00 40 a0 e3                                      mov r4, #0
006146dc  81 30 81 e0                                      add r3, r1, r1, lsl #1
006146e0  03 b0 8b e0                                      add fp, fp, r3
006146e4  04 50 a0 e1                                      mov r5, r4
006146e8  08 a0 8d e2                                      add sl, sp, #8
006146ec  d5 00 9b e1                                      ldrsb r0, [fp, r5]
006146f0  9b e8 f3 eb                                      bl #0x30e964
006146f4  04 10 97 e7                                      ldr r1, [r7, r4]
006146f8  9b e9 f3 eb                                      bl #0x30ed6c
006146fc  04 10 96 e7                                      ldr r1, [r6, r4]
00614700  27 e9 f3 eb                                      bl #0x30eba4
00614704  01 50 85 e2                                      add r5, r5, #1
00614708  03 00 55 e3                                      cmp r5, #3
0061470c  04 00 8a e7                                      str r0, [sl, r4]
00614710  04 40 84 e2                                      add r4, r4, #4
00614714  f4 ff ff 1a                                      bne #0x6146ec
00614718  00 40 a0 e3                                      mov r4, #0
0061471c  04 50 98 e7                                      ldr r5, [r8, r4]
00614720  04 00 99 e7                                      ldr r0, [sb, r4]
00614724  05 10 a0 e1                                      mov r1, r5
00614728  1f e7 f3 eb                                      bl #0x30e3ac
0061472c  00 10 a0 e1                                      mov r1, r0
00614730  60 00 9d e5                                      ldr r0, [sp, #0x60]
00614734  8c e9 f3 eb                                      bl #0x30ed6c
00614738  00 10 a0 e1                                      mov r1, r0
0061473c  05 00 a0 e1                                      mov r0, r5
00614740  17 e9 f3 eb                                      bl #0x30eba4
00614744  04 10 9a e7                                      ldr r1, [sl, r4]
00614748  17 e7 f3 eb                                      bl #0x30e3ac
0061474c  64 20 9d e5                                      ldr r2, [sp, #0x64]
00614750  04 00 82 e7                                      str r0, [r2, r4]
00614754  04 40 84 e2                                      add r4, r4, #4
00614758  0c 00 54 e3                                      cmp r4, #0xc
0061475c  ee ff ff 1a                                      bne #0x61471c
00614760  3c d0 8d e2                                      add sp, sp, #0x3c
00614764  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00627d98, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIfLi3ENS1_18SSceneNodePositionELin1EfEEfLi3ENS1_15SUseDefaultLerpIcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<float, 3, glitch::collada::animation_track::SSceneNodePosition, -1, float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00627d98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627d9c  3c d0 4d e2                                      sub sp, sp, #0x3c
00627da0  03 40 a0 e1                                      mov r4, r3
00627da4  01 50 a0 e1                                      mov r5, r1
00627da8  00 10 a0 e1                                      mov r1, r0
00627dac  24 00 8d e2                                      add r0, sp, #0x24
00627db0  02 b0 a0 e1                                      mov fp, r2
00627db4  a4 b1 ff eb                                      bl #0x61444c
00627db8  fe 05 a0 e3                                      mov r0, #0x3f800000
00627dbc  04 10 a0 e1                                      mov r1, r4
00627dc0  79 99 f3 eb                                      bl #0x30e3ac
00627dc4  24 30 9d e5                                      ldr r3, [sp, #0x24]
00627dc8  30 00 8d e5                                      str r0, [sp, #0x30]
00627dcc  34 40 8d e5                                      str r4, [sp, #0x34]
00627dd0  04 30 93 e5                                      ldr r3, [r3, #4]
00627dd4  85 20 85 e0                                      add r2, r5, r5, lsl #1
00627dd8  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00627ddc  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00627de0  8b b0 8b e0                                      add fp, fp, fp, lsl #1
00627de4  0c 90 8d e2                                      add sb, sp, #0xc
00627de8  00 50 a0 e3                                      mov r5, #0
00627dec  02 20 83 e0                                      add r2, r3, r2
00627df0  0b b0 83 e0                                      add fp, r3, fp
00627df4  04 20 8d e5                                      str r2, [sp, #4]
00627df8  09 70 a0 e1                                      mov r7, sb
00627dfc  05 60 a0 e1                                      mov r6, r5
00627e00  04 20 9d e5                                      ldr r2, [sp, #4]
00627e04  d6 00 92 e1                                      ldrsb r0, [r2, r6]
00627e08  d5 9a f3 eb                                      bl #0x30e964
00627e0c  05 10 9a e7                                      ldr r1, [sl, r5]
00627e10  d5 9b f3 eb                                      bl #0x30ed6c
00627e14  05 10 98 e7                                      ldr r1, [r8, r5]
00627e18  61 9b f3 eb                                      bl #0x30eba4
00627e1c  05 00 89 e7                                      str r0, [sb, r5]
00627e20  d6 00 9b e1                                      ldrsb r0, [fp, r6]
00627e24  ce 9a f3 eb                                      bl #0x30e964
00627e28  05 10 9a e7                                      ldr r1, [sl, r5]
00627e2c  ce 9b f3 eb                                      bl #0x30ed6c
00627e30  05 10 98 e7                                      ldr r1, [r8, r5]
00627e34  5a 9b f3 eb                                      bl #0x30eba4
00627e38  01 60 86 e2                                      add r6, r6, #1
00627e3c  03 00 56 e3                                      cmp r6, #3
00627e40  0c 00 87 e5                                      str r0, [r7, #0xc]
00627e44  04 50 85 e2                                      add r5, r5, #4
00627e48  04 70 87 e2                                      add r7, r7, #4
00627e4c  eb ff ff 1a                                      bne #0x627e00
00627e50  30 50 9d e5                                      ldr r5, [sp, #0x30]
00627e54  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00627e58  05 00 a0 e1                                      mov r0, r5
00627e5c  c2 9b f3 eb                                      bl #0x30ed6c
00627e60  00 10 a0 e3                                      mov r1, #0
00627e64  4e 9b f3 eb                                      bl #0x30eba4
00627e68  10 10 9d e5                                      ldr r1, [sp, #0x10]
00627e6c  00 70 a0 e1                                      mov r7, r0
00627e70  05 00 a0 e1                                      mov r0, r5
00627e74  bc 9b f3 eb                                      bl #0x30ed6c
00627e78  00 10 a0 e3                                      mov r1, #0
00627e7c  48 9b f3 eb                                      bl #0x30eba4
00627e80  14 10 9d e5                                      ldr r1, [sp, #0x14]
00627e84  00 60 a0 e1                                      mov r6, r0
00627e88  05 00 a0 e1                                      mov r0, r5
00627e8c  b6 9b f3 eb                                      bl #0x30ed6c
00627e90  00 10 a0 e3                                      mov r1, #0
00627e94  42 9b f3 eb                                      bl #0x30eba4
00627e98  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00627e9c  00 50 a0 e1                                      mov r5, r0
00627ea0  04 00 a0 e1                                      mov r0, r4
00627ea4  b0 9b f3 eb                                      bl #0x30ed6c
00627ea8  06 10 a0 e1                                      mov r1, r6
00627eac  3c 9b f3 eb                                      bl #0x30eba4
00627eb0  20 10 9d e5                                      ldr r1, [sp, #0x20]
00627eb4  00 60 a0 e1                                      mov r6, r0
00627eb8  04 00 a0 e1                                      mov r0, r4
00627ebc  aa 9b f3 eb                                      bl #0x30ed6c
00627ec0  05 10 a0 e1                                      mov r1, r5
00627ec4  36 9b f3 eb                                      bl #0x30eba4
00627ec8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00627ecc  00 50 a0 e1                                      mov r5, r0
00627ed0  04 00 a0 e1                                      mov r0, r4
00627ed4  a4 9b f3 eb                                      bl #0x30ed6c
00627ed8  07 10 a0 e1                                      mov r1, r7
00627edc  30 9b f3 eb                                      bl #0x30eba4
00627ee0  60 30 9d e5                                      ldr r3, [sp, #0x60]
00627ee4  04 00 83 e4                                      str r0, [r3], #4
00627ee8  60 20 9d e5                                      ldr r2, [sp, #0x60]
00627eec  04 60 82 e5                                      str r6, [r2, #4]
00627ef0  04 50 83 e5                                      str r5, [r3, #4]
00627ef4  3c d0 8d e2                                      add sp, sp, #0x3c
00627ef8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
