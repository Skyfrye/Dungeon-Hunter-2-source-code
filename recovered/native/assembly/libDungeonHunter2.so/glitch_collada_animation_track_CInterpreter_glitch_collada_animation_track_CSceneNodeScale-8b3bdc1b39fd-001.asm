; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00614154, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIsEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614154  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00614158  18 d0 4d e2                                      sub sp, sp, #0x18
0061415c  01 40 a0 e1                                      mov r4, r1
00614160  00 10 a0 e1                                      mov r1, r0
00614164  0c 00 8d e2                                      add r0, sp, #0xc
00614168  02 90 a0 e1                                      mov sb, r2
0061416c  2b ff ff eb                                      bl #0x613e20
00614170  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614174  06 20 a0 e3                                      mov r2, #6
00614178  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0061417c  04 30 93 e5                                      ldr r3, [r3, #4]
00614180  14 80 9d e5                                      ldr r8, [sp, #0x14]
00614184  00 50 a0 e3                                      mov r5, #0
00614188  92 34 24 e0                                      mla r4, r2, r4, r3
0061418c  05 60 a0 e1                                      mov r6, r5
00614190  0d 70 a0 e1                                      mov r7, sp
00614194  f6 00 94 e1                                      ldrsh r0, [r4, r6]
00614198  f1 e9 f3 eb                                      bl #0x30e964
0061419c  05 10 9a e7                                      ldr r1, [sl, r5]
006141a0  f1 ea f3 eb                                      bl #0x30ed6c
006141a4  05 10 98 e7                                      ldr r1, [r8, r5]
006141a8  7d ea f3 eb                                      bl #0x30eba4
006141ac  02 60 86 e2                                      add r6, r6, #2
006141b0  06 00 56 e3                                      cmp r6, #6
006141b4  05 00 87 e7                                      str r0, [r7, r5]
006141b8  04 50 85 e2                                      add r5, r5, #4
006141bc  f4 ff ff 1a                                      bne #0x614194
006141c0  00 00 9d e5                                      ldr r0, [sp]
006141c4  04 10 9d e5                                      ldr r1, [sp, #4]
006141c8  08 20 9d e5                                      ldr r2, [sp, #8]
006141cc  09 30 a0 e1                                      mov r3, sb
006141d0  04 00 83 e4                                      str r0, [r3], #4
006141d4  04 10 89 e5                                      str r1, [sb, #4]
006141d8  04 20 83 e5                                      str r2, [r3, #4]
006141dc  18 d0 8d e2                                      add sp, sp, #0x18
006141e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006141f4, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIsEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006141f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006141f8  34 d0 4d e2                                      sub sp, sp, #0x34
006141fc  04 10 8d e5                                      str r1, [sp, #4]
00614200  00 10 a0 e1                                      mov r1, r0
00614204  24 00 8d e2                                      add r0, sp, #0x24
00614208  02 40 a0 e1                                      mov r4, r2
0061420c  03 90 a0 e1                                      mov sb, r3
00614210  02 ff ff eb                                      bl #0x613e20
00614214  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00614218  06 20 a0 e3                                      mov r2, #6
0061421c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00614220  04 30 9b e5                                      ldr r3, [fp, #4]
00614224  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00614228  00 50 a0 e3                                      mov r5, #0
0061422c  92 34 24 e0                                      mla r4, r2, r4, r3
00614230  05 60 a0 e1                                      mov r6, r5
00614234  18 70 8d e2                                      add r7, sp, #0x18
00614238  f6 00 94 e1                                      ldrsh r0, [r4, r6]
0061423c  c8 e9 f3 eb                                      bl #0x30e964
00614240  05 10 9a e7                                      ldr r1, [sl, r5]
00614244  c8 ea f3 eb                                      bl #0x30ed6c
00614248  05 10 98 e7                                      ldr r1, [r8, r5]
0061424c  54 ea f3 eb                                      bl #0x30eba4
00614250  02 60 86 e2                                      add r6, r6, #2
00614254  06 00 56 e3                                      cmp r6, #6
00614258  05 00 87 e7                                      str r0, [r7, r5]
0061425c  04 50 85 e2                                      add r5, r5, #4
00614260  f4 ff ff 1a                                      bne #0x614238
00614264  04 30 9b e5                                      ldr r3, [fp, #4]
00614268  04 20 9d e5                                      ldr r2, [sp, #4]
0061426c  00 40 a0 e3                                      mov r4, #0
00614270  04 50 a0 e1                                      mov r5, r4
00614274  96 32 26 e0                                      mla r6, r6, r2, r3
00614278  0c b0 8d e2                                      add fp, sp, #0xc
0061427c  f5 00 96 e1                                      ldrsh r0, [r6, r5]
00614280  b7 e9 f3 eb                                      bl #0x30e964
00614284  04 10 9a e7                                      ldr r1, [sl, r4]
00614288  b7 ea f3 eb                                      bl #0x30ed6c
0061428c  04 10 98 e7                                      ldr r1, [r8, r4]
00614290  43 ea f3 eb                                      bl #0x30eba4
00614294  02 50 85 e2                                      add r5, r5, #2
00614298  06 00 55 e3                                      cmp r5, #6
0061429c  04 00 8b e7                                      str r0, [fp, r4]
006142a0  04 40 84 e2                                      add r4, r4, #4
006142a4  f4 ff ff 1a                                      bne #0x61427c
006142a8  00 40 a0 e3                                      mov r4, #0
006142ac  04 00 97 e7                                      ldr r0, [r7, r4]
006142b0  04 10 9b e7                                      ldr r1, [fp, r4]
006142b4  3c e8 f3 eb                                      bl #0x30e3ac
006142b8  04 00 89 e7                                      str r0, [sb, r4]
006142bc  04 40 84 e2                                      add r4, r4, #4
006142c0  0c 00 54 e3                                      cmp r4, #0xc
006142c4  f8 ff ff 1a                                      bne #0x6142ac
006142c8  34 d0 8d e2                                      add sp, sp, #0x34
006142cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006142e4, declared_size=324, range_size=324, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIsEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006142e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006142e8  3c d0 4d e2                                      sub sp, sp, #0x3c
006142ec  04 10 8d e5                                      str r1, [sp, #4]
006142f0  00 10 a0 e1                                      mov r1, r0
006142f4  2c 00 8d e2                                      add r0, sp, #0x2c
006142f8  02 40 a0 e1                                      mov r4, r2
006142fc  03 b0 a0 e1                                      mov fp, r3
00614300  c6 fe ff eb                                      bl #0x613e20
00614304  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00614308  06 20 a0 e3                                      mov r2, #6
0061430c  30 80 9d e5                                      ldr r8, [sp, #0x30]
00614310  04 30 96 e5                                      ldr r3, [r6, #4]
00614314  34 70 9d e5                                      ldr r7, [sp, #0x34]
00614318  00 50 a0 e3                                      mov r5, #0
0061431c  92 34 24 e0                                      mla r4, r2, r4, r3
00614320  05 a0 a0 e1                                      mov sl, r5
00614324  20 90 8d e2                                      add sb, sp, #0x20
00614328  fa 00 94 e1                                      ldrsh r0, [r4, sl]
0061432c  8c e9 f3 eb                                      bl #0x30e964
00614330  05 10 98 e7                                      ldr r1, [r8, r5]
00614334  8c ea f3 eb                                      bl #0x30ed6c
00614338  05 10 97 e7                                      ldr r1, [r7, r5]
0061433c  18 ea f3 eb                                      bl #0x30eba4
00614340  02 a0 8a e2                                      add sl, sl, #2
00614344  06 00 5a e3                                      cmp sl, #6
00614348  05 00 89 e7                                      str r0, [sb, r5]
0061434c  04 50 85 e2                                      add r5, r5, #4
00614350  f4 ff ff 1a                                      bne #0x614328
00614354  04 30 96 e5                                      ldr r3, [r6, #4]
00614358  00 40 a0 e3                                      mov r4, #0
0061435c  04 50 a0 e1                                      mov r5, r4
00614360  9a 3b 2b e0                                      mla fp, sl, fp, r3
00614364  14 a0 8d e2                                      add sl, sp, #0x14
00614368  f5 00 9b e1                                      ldrsh r0, [fp, r5]
0061436c  7c e9 f3 eb                                      bl #0x30e964
00614370  04 10 98 e7                                      ldr r1, [r8, r4]
00614374  7c ea f3 eb                                      bl #0x30ed6c
00614378  04 10 97 e7                                      ldr r1, [r7, r4]
0061437c  08 ea f3 eb                                      bl #0x30eba4
00614380  02 50 85 e2                                      add r5, r5, #2
00614384  06 00 55 e3                                      cmp r5, #6
00614388  04 00 8a e7                                      str r0, [sl, r4]
0061438c  04 40 84 e2                                      add r4, r4, #4
00614390  f4 ff ff 1a                                      bne #0x614368
00614394  04 30 96 e5                                      ldr r3, [r6, #4]
00614398  04 20 9d e5                                      ldr r2, [sp, #4]
0061439c  00 40 a0 e3                                      mov r4, #0
006143a0  04 60 a0 e1                                      mov r6, r4
006143a4  95 32 25 e0                                      mla r5, r5, r2, r3
006143a8  08 b0 8d e2                                      add fp, sp, #8
006143ac  f6 00 95 e1                                      ldrsh r0, [r5, r6]
006143b0  6b e9 f3 eb                                      bl #0x30e964
006143b4  04 10 98 e7                                      ldr r1, [r8, r4]
006143b8  6b ea f3 eb                                      bl #0x30ed6c
006143bc  04 10 97 e7                                      ldr r1, [r7, r4]
006143c0  f7 e9 f3 eb                                      bl #0x30eba4
006143c4  02 60 86 e2                                      add r6, r6, #2
006143c8  06 00 56 e3                                      cmp r6, #6
006143cc  04 00 8b e7                                      str r0, [fp, r4]
006143d0  04 40 84 e2                                      add r4, r4, #4
006143d4  f4 ff ff 1a                                      bne #0x6143ac
006143d8  00 40 a0 e3                                      mov r4, #0
006143dc  04 50 99 e7                                      ldr r5, [sb, r4]
006143e0  04 00 9a e7                                      ldr r0, [sl, r4]
006143e4  05 10 a0 e1                                      mov r1, r5
006143e8  ef e7 f3 eb                                      bl #0x30e3ac
006143ec  00 10 a0 e1                                      mov r1, r0
006143f0  60 00 9d e5                                      ldr r0, [sp, #0x60]
006143f4  5c ea f3 eb                                      bl #0x30ed6c
006143f8  00 10 a0 e1                                      mov r1, r0
006143fc  05 00 a0 e1                                      mov r0, r5
00614400  e7 e9 f3 eb                                      bl #0x30eba4
00614404  04 10 9b e7                                      ldr r1, [fp, r4]
00614408  e7 e7 f3 eb                                      bl #0x30e3ac
0061440c  64 30 9d e5                                      ldr r3, [sp, #0x64]
00614410  04 00 83 e7                                      str r0, [r3, r4]
00614414  04 40 84 e2                                      add r4, r4, #4
00614418  0c 00 54 e3                                      cmp r4, #0xc
0061441c  ee ff ff 1a                                      bne #0x6143dc
00614420  3c d0 8d e2                                      add sp, sp, #0x3c
00614424  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00627bb4, declared_size=352, range_size=352, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIsEEfLi3ENS1_15SUseDefaultLerpIsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<short>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00627bb4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00627bb8  3c d0 4d e2                                      sub sp, sp, #0x3c
00627bbc  03 40 a0 e1                                      mov r4, r3
00627bc0  01 50 a0 e1                                      mov r5, r1
00627bc4  00 10 a0 e1                                      mov r1, r0
00627bc8  24 00 8d e2                                      add r0, sp, #0x24
00627bcc  02 b0 a0 e1                                      mov fp, r2
00627bd0  92 b0 ff eb                                      bl #0x613e20
00627bd4  fe 05 a0 e3                                      mov r0, #0x3f800000
00627bd8  04 10 a0 e1                                      mov r1, r4
00627bdc  f2 99 f3 eb                                      bl #0x30e3ac
00627be0  24 30 9d e5                                      ldr r3, [sp, #0x24]
00627be4  30 00 8d e5                                      str r0, [sp, #0x30]
00627be8  34 40 8d e5                                      str r4, [sp, #0x34]
00627bec  04 30 93 e5                                      ldr r3, [r3, #4]
00627bf0  06 20 a0 e3                                      mov r2, #6
00627bf4  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00627bf8  92 3b 2b e0                                      mla fp, r2, fp, r3
00627bfc  92 35 22 e0                                      mla r2, r2, r5, r3
00627c00  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00627c04  0c 90 8d e2                                      add sb, sp, #0xc
00627c08  00 50 a0 e3                                      mov r5, #0
00627c0c  04 20 8d e5                                      str r2, [sp, #4]
00627c10  09 70 a0 e1                                      mov r7, sb
00627c14  05 60 a0 e1                                      mov r6, r5
00627c18  04 20 9d e5                                      ldr r2, [sp, #4]
00627c1c  f6 00 92 e1                                      ldrsh r0, [r2, r6]
00627c20  4f 9b f3 eb                                      bl #0x30e964
00627c24  05 10 9a e7                                      ldr r1, [sl, r5]
00627c28  4f 9c f3 eb                                      bl #0x30ed6c
00627c2c  05 10 98 e7                                      ldr r1, [r8, r5]
00627c30  db 9b f3 eb                                      bl #0x30eba4
00627c34  05 00 89 e7                                      str r0, [sb, r5]
00627c38  f6 00 9b e1                                      ldrsh r0, [fp, r6]
00627c3c  48 9b f3 eb                                      bl #0x30e964
00627c40  05 10 9a e7                                      ldr r1, [sl, r5]
00627c44  48 9c f3 eb                                      bl #0x30ed6c
00627c48  05 10 98 e7                                      ldr r1, [r8, r5]
00627c4c  d4 9b f3 eb                                      bl #0x30eba4
00627c50  02 60 86 e2                                      add r6, r6, #2
00627c54  06 00 56 e3                                      cmp r6, #6
00627c58  0c 00 87 e5                                      str r0, [r7, #0xc]
00627c5c  04 50 85 e2                                      add r5, r5, #4
00627c60  04 70 87 e2                                      add r7, r7, #4
00627c64  eb ff ff 1a                                      bne #0x627c18
00627c68  30 50 9d e5                                      ldr r5, [sp, #0x30]
00627c6c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00627c70  05 00 a0 e1                                      mov r0, r5
00627c74  3c 9c f3 eb                                      bl #0x30ed6c
00627c78  00 10 a0 e3                                      mov r1, #0
00627c7c  c8 9b f3 eb                                      bl #0x30eba4
00627c80  10 10 9d e5                                      ldr r1, [sp, #0x10]
00627c84  00 70 a0 e1                                      mov r7, r0
00627c88  05 00 a0 e1                                      mov r0, r5
00627c8c  36 9c f3 eb                                      bl #0x30ed6c
00627c90  00 10 a0 e3                                      mov r1, #0
00627c94  c2 9b f3 eb                                      bl #0x30eba4
00627c98  14 10 9d e5                                      ldr r1, [sp, #0x14]
00627c9c  00 60 a0 e1                                      mov r6, r0
00627ca0  05 00 a0 e1                                      mov r0, r5
00627ca4  30 9c f3 eb                                      bl #0x30ed6c
00627ca8  00 10 a0 e3                                      mov r1, #0
00627cac  bc 9b f3 eb                                      bl #0x30eba4
00627cb0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00627cb4  00 50 a0 e1                                      mov r5, r0
00627cb8  04 00 a0 e1                                      mov r0, r4
00627cbc  2a 9c f3 eb                                      bl #0x30ed6c
00627cc0  06 10 a0 e1                                      mov r1, r6
00627cc4  b6 9b f3 eb                                      bl #0x30eba4
00627cc8  20 10 9d e5                                      ldr r1, [sp, #0x20]
00627ccc  00 60 a0 e1                                      mov r6, r0
00627cd0  04 00 a0 e1                                      mov r0, r4
00627cd4  24 9c f3 eb                                      bl #0x30ed6c
00627cd8  05 10 a0 e1                                      mov r1, r5
00627cdc  b0 9b f3 eb                                      bl #0x30eba4
00627ce0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00627ce4  00 50 a0 e1                                      mov r5, r0
00627ce8  04 00 a0 e1                                      mov r0, r4
00627cec  1e 9c f3 eb                                      bl #0x30ed6c
00627cf0  07 10 a0 e1                                      mov r1, r7
00627cf4  aa 9b f3 eb                                      bl #0x30eba4
00627cf8  60 30 9d e5                                      ldr r3, [sp, #0x60]
00627cfc  04 00 83 e4                                      str r0, [r3], #4
00627d00  60 20 9d e5                                      ldr r2, [sp, #0x60]
00627d04  04 60 82 e5                                      str r6, [r2, #4]
00627d08  04 50 83 e5                                      str r5, [r3, #4]
00627d0c  3c d0 8d e2                                      add sp, sp, #0x3c
00627d10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
