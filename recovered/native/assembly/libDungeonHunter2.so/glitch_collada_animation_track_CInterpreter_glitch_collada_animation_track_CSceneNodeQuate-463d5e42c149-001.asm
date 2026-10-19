; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061363c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_25CSceneNodeQuaternionMixinIsEEfLi4ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061363c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00613640  20 d0 4d e2                                      sub sp, sp, #0x20
00613644  01 40 a0 e1                                      mov r4, r1
00613648  00 10 a0 e1                                      mov r1, r0
0061364c  14 00 8d e2                                      add r0, sp, #0x14
00613650  02 90 a0 e1                                      mov sb, r2
00613654  e9 ff ff eb                                      bl #0x613600
00613658  14 30 9d e5                                      ldr r3, [sp, #0x14]
0061365c  18 a0 9d e5                                      ldr sl, [sp, #0x18]
00613660  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00613664  04 30 93 e5                                      ldr r3, [r3, #4]
00613668  00 50 a0 e3                                      mov r5, #0
0061366c  05 60 a0 e1                                      mov r6, r5
00613670  84 41 83 e0                                      add r4, r3, r4, lsl #3
00613674  04 70 8d e2                                      add r7, sp, #4
00613678  f6 00 94 e1                                      ldrsh r0, [r4, r6]
0061367c  b8 ec f3 eb                                      bl #0x30e964
00613680  05 10 9a e7                                      ldr r1, [sl, r5]
00613684  b8 ed f3 eb                                      bl #0x30ed6c
00613688  05 10 98 e7                                      ldr r1, [r8, r5]
0061368c  44 ed f3 eb                                      bl #0x30eba4
00613690  02 60 86 e2                                      add r6, r6, #2
00613694  08 00 56 e3                                      cmp r6, #8
00613698  05 00 87 e7                                      str r0, [r7, r5]
0061369c  04 50 85 e2                                      add r5, r5, #4
006136a0  f4 ff ff 1a                                      bne #0x613678
006136a4  04 c0 9d e5                                      ldr ip, [sp, #4]
006136a8  08 00 9d e5                                      ldr r0, [sp, #8]
006136ac  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006136b0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006136b4  09 30 a0 e1                                      mov r3, sb
006136b8  04 c0 83 e4                                      str ip, [r3], #4
006136bc  04 00 89 e5                                      str r0, [sb, #4]
006136c0  08 10 83 e5                                      str r1, [r3, #8]
006136c4  04 20 83 e5                                      str r2, [r3, #4]
006136c8  20 d0 8d e2                                      add sp, sp, #0x20
006136cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006138f4, declared_size=196, range_size=196, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_25CSceneNodeQuaternionMixinIsEEfLi4ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionMixin<short>, float, 4, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006138f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006138f8  3c d0 4d e2                                      sub sp, sp, #0x3c
006138fc  03 40 a0 e1                                      mov r4, r3
00613900  01 50 a0 e1                                      mov r5, r1
00613904  00 10 a0 e1                                      mov r1, r0
00613908  24 00 8d e2                                      add r0, sp, #0x24
0061390c  02 b0 a0 e1                                      mov fp, r2
00613910  3a ff ff eb                                      bl #0x613600
00613914  04 10 a0 e1                                      mov r1, r4
00613918  fe 05 a0 e3                                      mov r0, #0x3f800000
0061391c  a2 ea f3 eb                                      bl #0x30e3ac
00613920  24 30 9d e5                                      ldr r3, [sp, #0x24]
00613924  34 40 8d e5                                      str r4, [sp, #0x34]
00613928  30 00 8d e5                                      str r0, [sp, #0x30]
0061392c  04 30 93 e5                                      ldr r3, [r3, #4]
00613930  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00613934  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00613938  04 90 8d e2                                      add sb, sp, #4
0061393c  00 40 a0 e3                                      mov r4, #0
00613940  8b b1 83 e0                                      add fp, r3, fp, lsl #3
00613944  85 51 83 e0                                      add r5, r3, r5, lsl #3
00613948  09 70 a0 e1                                      mov r7, sb
0061394c  04 60 a0 e1                                      mov r6, r4
00613950  f6 00 95 e1                                      ldrsh r0, [r5, r6]
00613954  02 ec f3 eb                                      bl #0x30e964
00613958  04 10 9a e7                                      ldr r1, [sl, r4]
0061395c  02 ed f3 eb                                      bl #0x30ed6c
00613960  04 10 98 e7                                      ldr r1, [r8, r4]
00613964  8e ec f3 eb                                      bl #0x30eba4
00613968  04 00 89 e7                                      str r0, [sb, r4]
0061396c  f6 00 9b e1                                      ldrsh r0, [fp, r6]
00613970  fb eb f3 eb                                      bl #0x30e964
00613974  04 10 9a e7                                      ldr r1, [sl, r4]
00613978  fb ec f3 eb                                      bl #0x30ed6c
0061397c  04 10 98 e7                                      ldr r1, [r8, r4]
00613980  87 ec f3 eb                                      bl #0x30eba4
00613984  02 60 86 e2                                      add r6, r6, #2
00613988  08 00 56 e3                                      cmp r6, #8
0061398c  10 00 87 e5                                      str r0, [r7, #0x10]
00613990  04 40 84 e2                                      add r4, r4, #4
00613994  04 70 87 e2                                      add r7, r7, #4
00613998  ec ff ff 1a                                      bne #0x613950
0061399c  09 00 a0 e1                                      mov r0, sb
006139a0  60 30 9d e5                                      ldr r3, [sp, #0x60]
006139a4  30 10 8d e2                                      add r1, sp, #0x30
006139a8  02 20 a0 e3                                      mov r2, #2
006139ac  c8 fd ff eb                                      bl #0x6130d4
006139b0  3c d0 8d e2                                      add sp, sp, #0x3c
006139b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
