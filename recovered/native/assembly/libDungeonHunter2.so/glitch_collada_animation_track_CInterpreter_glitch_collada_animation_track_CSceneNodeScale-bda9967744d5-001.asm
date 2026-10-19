; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00617394, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00617394  70 40 2d e9                                      push {r4, r5, r6, lr}
00617398  00 40 a0 e1                                      mov r4, r0
0061739c  10 d0 4d e2                                      sub sp, sp, #0x10
006173a0  01 50 a0 e1                                      mov r5, r1
006173a4  04 00 8d e2                                      add r0, sp, #4
006173a8  04 10 a0 e1                                      mov r1, r4
006173ac  02 60 a0 e1                                      mov r6, r2
006173b0  8b f2 ff eb                                      bl #0x613de4
006173b4  04 30 9d e5                                      ldr r3, [sp, #4]
006173b8  04 30 93 e5                                      ldr r3, [r3, #4]
006173bc  d5 00 93 e1                                      ldrsb r0, [r3, r5]
006173c0  67 dd f3 eb                                      bl #0x30e964
006173c4  08 30 9d e5                                      ldr r3, [sp, #8]
006173c8  00 10 93 e5                                      ldr r1, [r3]
006173cc  66 de f3 eb                                      bl #0x30ed6c
006173d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006173d4  00 10 93 e5                                      ldr r1, [r3]
006173d8  f1 dd f3 eb                                      bl #0x30eba4
006173dc  00 50 a0 e1                                      mov r5, r0
006173e0  04 00 a0 e1                                      mov r0, r4
006173e4  9a 4a 01 eb                                      bl #0x669e54
006173e8  00 00 50 e3                                      cmp r0, #0
006173ec  02 00 00 1a                                      bne #0x6173fc
006173f0  00 50 86 e5                                      str r5, [r6]
006173f4  10 d0 8d e2                                      add sp, sp, #0x10
006173f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006173fc  04 00 a0 e1                                      mov r0, r4
00617400  98 4a 01 eb                                      bl #0x669e68
00617404  00 00 50 e3                                      cmp r0, #0
00617408  f8 ff ff 0a                                      beq #0x6173f0
0061740c  04 00 a0 e1                                      mov r0, r4
00617410  94 4a 01 eb                                      bl #0x669e68
00617414  00 20 90 e5                                      ldr r2, [r0]
00617418  06 30 a0 e1                                      mov r3, r6
0061741c  04 20 83 e4                                      str r2, [r3], #4
00617420  04 50 86 e5                                      str r5, [r6, #4]
00617424  08 20 90 e5                                      ldr r2, [r0, #8]
00617428  04 20 83 e5                                      str r2, [r3, #4]
0061742c  f0 ff ff ea                                      b #0x6173f4

; FUNCTION 0x00617440, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00617440  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617444  00 40 a0 e1                                      mov r4, r0
00617448  14 d0 4d e2                                      sub sp, sp, #0x14
0061744c  01 50 a0 e1                                      mov r5, r1
00617450  04 00 8d e2                                      add r0, sp, #4
00617454  04 10 a0 e1                                      mov r1, r4
00617458  02 60 a0 e1                                      mov r6, r2
0061745c  03 b0 a0 e1                                      mov fp, r3
00617460  38 90 9d e5                                      ldr sb, [sp, #0x38]
00617464  5e f2 ff eb                                      bl #0x613de4
00617468  04 30 9d e5                                      ldr r3, [sp, #4]
0061746c  04 a0 93 e5                                      ldr sl, [r3, #4]
00617470  08 30 9d e5                                      ldr r3, [sp, #8]
00617474  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00617478  00 80 93 e5                                      ldr r8, [r3]
0061747c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617480  00 70 93 e5                                      ldr r7, [r3]
00617484  36 dd f3 eb                                      bl #0x30e964
00617488  08 10 a0 e1                                      mov r1, r8
0061748c  36 de f3 eb                                      bl #0x30ed6c
00617490  07 10 a0 e1                                      mov r1, r7
00617494  c2 dd f3 eb                                      bl #0x30eba4
00617498  00 50 a0 e1                                      mov r5, r0
0061749c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
006174a0  2f dd f3 eb                                      bl #0x30e964
006174a4  00 10 a0 e1                                      mov r1, r0
006174a8  08 00 a0 e1                                      mov r0, r8
006174ac  2e de f3 eb                                      bl #0x30ed6c
006174b0  00 10 a0 e1                                      mov r1, r0
006174b4  07 00 a0 e1                                      mov r0, r7
006174b8  b9 dd f3 eb                                      bl #0x30eba4
006174bc  00 70 a0 e1                                      mov r7, r0
006174c0  04 00 a0 e1                                      mov r0, r4
006174c4  62 4a 01 eb                                      bl #0x669e54
006174c8  00 00 50 e3                                      cmp r0, #0
006174cc  13 00 00 0a                                      beq #0x617520
006174d0  04 00 a0 e1                                      mov r0, r4
006174d4  63 4a 01 eb                                      bl #0x669e68
006174d8  00 30 90 e5                                      ldr r3, [r0]
006174dc  09 60 a0 e1                                      mov r6, sb
006174e0  05 10 a0 e1                                      mov r1, r5
006174e4  04 30 86 e4                                      str r3, [r6], #4
006174e8  07 00 a0 e1                                      mov r0, r7
006174ec  ae db f3 eb                                      bl #0x30e3ac
006174f0  00 10 a0 e1                                      mov r1, r0
006174f4  0b 00 a0 e1                                      mov r0, fp
006174f8  1b de f3 eb                                      bl #0x30ed6c
006174fc  05 10 a0 e1                                      mov r1, r5
00617500  a7 dd f3 eb                                      bl #0x30eba4
00617504  04 00 89 e5                                      str r0, [sb, #4]
00617508  04 00 a0 e1                                      mov r0, r4
0061750c  55 4a 01 eb                                      bl #0x669e68
00617510  08 30 90 e5                                      ldr r3, [r0, #8]
00617514  04 30 86 e5                                      str r3, [r6, #4]
00617518  14 d0 8d e2                                      add sp, sp, #0x14
0061751c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617520  05 10 a0 e1                                      mov r1, r5
00617524  07 00 a0 e1                                      mov r0, r7
00617528  9f db f3 eb                                      bl #0x30e3ac
0061752c  00 10 a0 e1                                      mov r1, r0
00617530  0b 00 a0 e1                                      mov r0, fp
00617534  0c de f3 eb                                      bl #0x30ed6c
00617538  05 10 a0 e1                                      mov r1, r5
0061753c  98 dd f3 eb                                      bl #0x30eba4
00617540  00 00 89 e5                                      str r0, [sb]
00617544  f3 ff ff ea                                      b #0x617518

; FUNCTION 0x00617564, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00617564  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00617568  00 40 a0 e1                                      mov r4, r0
0061756c  10 d0 4d e2                                      sub sp, sp, #0x10
00617570  01 50 a0 e1                                      mov r5, r1
00617574  04 00 8d e2                                      add r0, sp, #4
00617578  04 10 a0 e1                                      mov r1, r4
0061757c  02 60 a0 e1                                      mov r6, r2
00617580  03 90 a0 e1                                      mov sb, r3
00617584  16 f2 ff eb                                      bl #0x613de4
00617588  04 30 9d e5                                      ldr r3, [sp, #4]
0061758c  04 a0 93 e5                                      ldr sl, [r3, #4]
00617590  08 30 9d e5                                      ldr r3, [sp, #8]
00617594  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00617598  00 80 93 e5                                      ldr r8, [r3]
0061759c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006175a0  00 70 93 e5                                      ldr r7, [r3]
006175a4  ee dc f3 eb                                      bl #0x30e964
006175a8  00 10 a0 e1                                      mov r1, r0
006175ac  08 00 a0 e1                                      mov r0, r8
006175b0  ed dd f3 eb                                      bl #0x30ed6c
006175b4  00 10 a0 e1                                      mov r1, r0
006175b8  07 00 a0 e1                                      mov r0, r7
006175bc  78 dd f3 eb                                      bl #0x30eba4
006175c0  00 60 a0 e1                                      mov r6, r0
006175c4  d5 00 9a e1                                      ldrsb r0, [sl, r5]
006175c8  e5 dc f3 eb                                      bl #0x30e964
006175cc  08 10 a0 e1                                      mov r1, r8
006175d0  e5 dd f3 eb                                      bl #0x30ed6c
006175d4  07 10 a0 e1                                      mov r1, r7
006175d8  71 dd f3 eb                                      bl #0x30eba4
006175dc  00 10 a0 e1                                      mov r1, r0
006175e0  06 00 a0 e1                                      mov r0, r6
006175e4  70 db f3 eb                                      bl #0x30e3ac
006175e8  00 50 a0 e1                                      mov r5, r0
006175ec  04 00 a0 e1                                      mov r0, r4
006175f0  17 4a 01 eb                                      bl #0x669e54
006175f4  00 00 50 e3                                      cmp r0, #0
006175f8  00 50 89 05                                      streq r5, [sb]
006175fc  01 00 00 1a                                      bne #0x617608
00617600  10 d0 8d e2                                      add sp, sp, #0x10
00617604  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00617608  04 00 a0 e1                                      mov r0, r4
0061760c  15 4a 01 eb                                      bl #0x669e68
00617610  00 20 90 e5                                      ldr r2, [r0]
00617614  09 30 a0 e1                                      mov r3, sb
00617618  04 20 83 e4                                      str r2, [r3], #4
0061761c  04 50 89 e5                                      str r5, [sb, #4]
00617620  08 20 90 e5                                      ldr r2, [r0, #8]
00617624  04 20 83 e5                                      str r2, [r3, #4]
00617628  f4 ff ff ea                                      b #0x617600

; FUNCTION 0x00617640, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00617640  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617644  00 40 a0 e1                                      mov r4, r0
00617648  14 d0 4d e2                                      sub sp, sp, #0x14
0061764c  01 50 a0 e1                                      mov r5, r1
00617650  04 00 8d e2                                      add r0, sp, #4
00617654  04 10 a0 e1                                      mov r1, r4
00617658  02 60 a0 e1                                      mov r6, r2
0061765c  03 b0 a0 e1                                      mov fp, r3
00617660  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
00617664  de f1 ff eb                                      bl #0x613de4
00617668  04 30 9d e5                                      ldr r3, [sp, #4]
0061766c  04 a0 93 e5                                      ldr sl, [r3, #4]
00617670  08 30 9d e5                                      ldr r3, [sp, #8]
00617674  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00617678  00 80 93 e5                                      ldr r8, [r3]
0061767c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617680  00 70 93 e5                                      ldr r7, [r3]
00617684  b6 dc f3 eb                                      bl #0x30e964
00617688  08 10 a0 e1                                      mov r1, r8
0061768c  b6 dd f3 eb                                      bl #0x30ed6c
00617690  07 10 a0 e1                                      mov r1, r7
00617694  42 dd f3 eb                                      bl #0x30eba4
00617698  00 50 a0 e1                                      mov r5, r0
0061769c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
006176a0  af dc f3 eb                                      bl #0x30e964
006176a4  00 10 a0 e1                                      mov r1, r0
006176a8  08 00 a0 e1                                      mov r0, r8
006176ac  ae dd f3 eb                                      bl #0x30ed6c
006176b0  00 10 a0 e1                                      mov r1, r0
006176b4  07 00 a0 e1                                      mov r0, r7
006176b8  39 dd f3 eb                                      bl #0x30eba4
006176bc  05 10 a0 e1                                      mov r1, r5
006176c0  39 db f3 eb                                      bl #0x30e3ac
006176c4  00 60 a0 e1                                      mov r6, r0
006176c8  db 00 9a e1                                      ldrsb r0, [sl, fp]
006176cc  a4 dc f3 eb                                      bl #0x30e964
006176d0  00 10 a0 e1                                      mov r1, r0
006176d4  08 00 a0 e1                                      mov r0, r8
006176d8  a3 dd f3 eb                                      bl #0x30ed6c
006176dc  00 10 a0 e1                                      mov r1, r0
006176e0  07 00 a0 e1                                      mov r0, r7
006176e4  2e dd f3 eb                                      bl #0x30eba4
006176e8  05 10 a0 e1                                      mov r1, r5
006176ec  2e db f3 eb                                      bl #0x30e3ac
006176f0  00 70 a0 e1                                      mov r7, r0
006176f4  04 00 a0 e1                                      mov r0, r4
006176f8  d5 49 01 eb                                      bl #0x669e54
006176fc  00 00 50 e3                                      cmp r0, #0
00617700  0b 00 00 1a                                      bne #0x617734
00617704  06 10 a0 e1                                      mov r1, r6
00617708  07 00 a0 e1                                      mov r0, r7
0061770c  26 db f3 eb                                      bl #0x30e3ac
00617710  00 10 a0 e1                                      mov r1, r0
00617714  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617718  93 dd f3 eb                                      bl #0x30ed6c
0061771c  00 10 a0 e1                                      mov r1, r0
00617720  06 00 a0 e1                                      mov r0, r6
00617724  1e dd f3 eb                                      bl #0x30eba4
00617728  00 00 89 e5                                      str r0, [sb]
0061772c  14 d0 8d e2                                      add sp, sp, #0x14
00617730  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617734  04 00 a0 e1                                      mov r0, r4
00617738  ca 49 01 eb                                      bl #0x669e68
0061773c  00 30 90 e5                                      ldr r3, [r0]
00617740  09 40 a0 e1                                      mov r4, sb
00617744  00 50 a0 e1                                      mov r5, r0
00617748  04 30 84 e4                                      str r3, [r4], #4
0061774c  06 10 a0 e1                                      mov r1, r6
00617750  07 00 a0 e1                                      mov r0, r7
00617754  14 db f3 eb                                      bl #0x30e3ac
00617758  00 10 a0 e1                                      mov r1, r0
0061775c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617760  81 dd f3 eb                                      bl #0x30ed6c
00617764  00 10 a0 e1                                      mov r1, r0
00617768  06 00 a0 e1                                      mov r0, r6
0061776c  0c dd f3 eb                                      bl #0x30eba4
00617770  04 00 89 e5                                      str r0, [sb, #4]
00617774  08 30 95 e5                                      ldr r3, [r5, #8]
00617778  04 30 84 e5                                      str r3, [r4, #4]
0061777c  ea ff ff ea                                      b #0x61772c
