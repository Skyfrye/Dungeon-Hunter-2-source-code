; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061242c, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061242c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00612430  01 40 a0 e1                                      mov r4, r1
00612434  00 10 a0 e3                                      mov r1, #0
00612438  03 70 a0 e1                                      mov r7, r3
0061243c  02 50 a0 e1                                      mov r5, r2
00612440  20 90 9d e5                                      ldr sb, [sp, #0x20]
00612444  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00612448  75 5e 01 eb                                      bl #0x669e24
0061244c  04 30 90 e5                                      ldr r3, [r0, #4]
00612450  0c 80 a0 e3                                      mov r8, #0xc
00612454  00 60 a0 e3                                      mov r6, #0
00612458  98 34 24 e0                                      mla r4, r8, r4, r3
0061245c  98 35 25 e0                                      mla r5, r8, r5, r3
00612460  98 37 28 e0                                      mla r8, r8, r7, r3
00612464  06 70 95 e7                                      ldr r7, [r5, r6]
00612468  06 00 98 e7                                      ldr r0, [r8, r6]
0061246c  07 10 a0 e1                                      mov r1, r7
00612470  cd ef f3 eb                                      bl #0x30e3ac
00612474  00 10 a0 e1                                      mov r1, r0
00612478  09 00 a0 e1                                      mov r0, sb
0061247c  3a f2 f3 eb                                      bl #0x30ed6c
00612480  00 10 a0 e1                                      mov r1, r0
00612484  07 00 a0 e1                                      mov r0, r7
00612488  c5 f1 f3 eb                                      bl #0x30eba4
0061248c  06 10 94 e7                                      ldr r1, [r4, r6]
00612490  c5 ef f3 eb                                      bl #0x30e3ac
00612494  06 00 8a e7                                      str r0, [sl, r6]
00612498  04 60 86 e2                                      add r6, r6, #4
0061249c  0c 00 56 e3                                      cmp r6, #0xc
006124a0  ef ff ff 1a                                      bne #0x612464
006124a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00628850, declared_size=256, range_size=256, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_20CSceneNodeScaleMixinIfEEfLi3ENS1_15SUseDefaultLerpIfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleMixin<float>, float, 3, glitch::collada::animation_track::SUseDefaultLerp<float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00628850  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00628854  01 70 a0 e1                                      mov r7, r1
00628858  08 d0 4d e2                                      sub sp, sp, #8
0062885c  00 10 a0 e3                                      mov r1, #0
00628860  03 40 a0 e1                                      mov r4, r3
00628864  28 60 9d e5                                      ldr r6, [sp, #0x28]
00628868  6d 05 01 eb                                      bl #0x669e24
0062886c  04 10 a0 e1                                      mov r1, r4
00628870  00 80 a0 e1                                      mov r8, r0
00628874  fe 05 a0 e3                                      mov r0, #0x3f800000
00628878  cb 96 f3 eb                                      bl #0x30e3ac
0062887c  04 40 8d e5                                      str r4, [sp, #4]
00628880  00 00 8d e5                                      str r0, [sp]
00628884  0c 30 a0 e3                                      mov r3, #0xc
00628888  93 07 07 e0                                      mul r7, r3, r7
0062888c  04 30 98 e5                                      ldr r3, [r8, #4]
00628890  00 50 a0 e1                                      mov r5, r0
00628894  07 10 93 e7                                      ldr r1, [r3, r7]
00628898  07 70 83 e0                                      add r7, r3, r7
0062889c  32 99 f3 eb                                      bl #0x30ed6c
006288a0  00 10 a0 e3                                      mov r1, #0
006288a4  be 98 f3 eb                                      bl #0x30eba4
006288a8  04 10 97 e5                                      ldr r1, [r7, #4]
006288ac  00 80 a0 e1                                      mov r8, r0
006288b0  05 00 a0 e1                                      mov r0, r5
006288b4  2c 99 f3 eb                                      bl #0x30ed6c
006288b8  00 10 a0 e3                                      mov r1, #0
006288bc  b8 98 f3 eb                                      bl #0x30eba4
006288c0  04 70 87 e2                                      add r7, r7, #4
006288c4  04 10 97 e5                                      ldr r1, [r7, #4]
006288c8  00 a0 a0 e1                                      mov sl, r0
006288cc  05 00 a0 e1                                      mov r0, r5
006288d0  25 99 f3 eb                                      bl #0x30ed6c
006288d4  00 10 a0 e3                                      mov r1, #0
006288d8  b1 98 f3 eb                                      bl #0x30eba4
006288dc  04 50 87 e2                                      add r5, r7, #4
006288e0  04 90 85 e2                                      add sb, r5, #4
006288e4  04 10 99 e5                                      ldr r1, [sb, #4]
006288e8  00 70 a0 e1                                      mov r7, r0
006288ec  04 00 a0 e1                                      mov r0, r4
006288f0  1d 99 f3 eb                                      bl #0x30ed6c
006288f4  00 10 a0 e1                                      mov r1, r0
006288f8  0a 00 a0 e1                                      mov r0, sl
006288fc  a8 98 f3 eb                                      bl #0x30eba4
00628900  04 90 89 e2                                      add sb, sb, #4
00628904  04 10 99 e5                                      ldr r1, [sb, #4]
00628908  00 a0 a0 e1                                      mov sl, r0
0062890c  04 00 a0 e1                                      mov r0, r4
00628910  15 99 f3 eb                                      bl #0x30ed6c
00628914  07 10 a0 e1                                      mov r1, r7
00628918  a1 98 f3 eb                                      bl #0x30eba4
0062891c  04 10 95 e5                                      ldr r1, [r5, #4]
00628920  00 70 a0 e1                                      mov r7, r0
00628924  04 00 a0 e1                                      mov r0, r4
00628928  0f 99 f3 eb                                      bl #0x30ed6c
0062892c  00 10 a0 e1                                      mov r1, r0
00628930  08 00 a0 e1                                      mov r0, r8
00628934  9a 98 f3 eb                                      bl #0x30eba4
00628938  06 30 a0 e1                                      mov r3, r6
0062893c  04 00 83 e4                                      str r0, [r3], #4
00628940  04 a0 86 e5                                      str sl, [r6, #4]
00628944  04 70 83 e5                                      str r7, [r3, #4]
00628948  08 d0 8d e2                                      add sp, sp, #8
0062894c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
