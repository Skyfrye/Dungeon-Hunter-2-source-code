; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061521c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061521c  70 40 2d e9                                      push {r4, r5, r6, lr}
00615220  00 40 a0 e1                                      mov r4, r0
00615224  10 d0 4d e2                                      sub sp, sp, #0x10
00615228  01 50 a0 e1                                      mov r5, r1
0061522c  04 00 8d e2                                      add r0, sp, #4
00615230  04 10 a0 e1                                      mov r1, r4
00615234  02 60 a0 e1                                      mov r6, r2
00615238  e9 fa ff eb                                      bl #0x613de4
0061523c  04 30 9d e5                                      ldr r3, [sp, #4]
00615240  04 30 93 e5                                      ldr r3, [r3, #4]
00615244  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00615248  c5 e5 f3 eb                                      bl #0x30e964
0061524c  08 30 9d e5                                      ldr r3, [sp, #8]
00615250  00 10 93 e5                                      ldr r1, [r3]
00615254  c4 e6 f3 eb                                      bl #0x30ed6c
00615258  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061525c  00 10 93 e5                                      ldr r1, [r3]
00615260  4f e6 f3 eb                                      bl #0x30eba4
00615264  00 50 a0 e1                                      mov r5, r0
00615268  04 00 a0 e1                                      mov r0, r4
0061526c  f8 52 01 eb                                      bl #0x669e54
00615270  00 00 50 e3                                      cmp r0, #0
00615274  02 00 00 1a                                      bne #0x615284
00615278  00 50 86 e5                                      str r5, [r6]
0061527c  10 d0 8d e2                                      add sp, sp, #0x10
00615280  70 80 bd e8                                      pop {r4, r5, r6, pc}
00615284  04 00 a0 e1                                      mov r0, r4
00615288  f6 52 01 eb                                      bl #0x669e68
0061528c  00 00 50 e3                                      cmp r0, #0
00615290  f8 ff ff 0a                                      beq #0x615278
00615294  04 00 a0 e1                                      mov r0, r4
00615298  f2 52 01 eb                                      bl #0x669e68
0061529c  06 30 a0 e1                                      mov r3, r6
006152a0  04 50 83 e4                                      str r5, [r3], #4
006152a4  04 20 90 e5                                      ldr r2, [r0, #4]
006152a8  04 20 86 e5                                      str r2, [r6, #4]
006152ac  08 20 90 e5                                      ldr r2, [r0, #8]
006152b0  04 20 83 e5                                      str r2, [r3, #4]
006152b4  f0 ff ff ea                                      b #0x61527c

; FUNCTION 0x006152c8, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006152c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006152cc  00 40 a0 e1                                      mov r4, r0
006152d0  14 d0 4d e2                                      sub sp, sp, #0x14
006152d4  01 50 a0 e1                                      mov r5, r1
006152d8  04 00 8d e2                                      add r0, sp, #4
006152dc  04 10 a0 e1                                      mov r1, r4
006152e0  02 60 a0 e1                                      mov r6, r2
006152e4  03 b0 a0 e1                                      mov fp, r3
006152e8  38 90 9d e5                                      ldr sb, [sp, #0x38]
006152ec  bc fa ff eb                                      bl #0x613de4
006152f0  04 30 9d e5                                      ldr r3, [sp, #4]
006152f4  04 a0 93 e5                                      ldr sl, [r3, #4]
006152f8  08 30 9d e5                                      ldr r3, [sp, #8]
006152fc  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00615300  00 80 93 e5                                      ldr r8, [r3]
00615304  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615308  00 70 93 e5                                      ldr r7, [r3]
0061530c  94 e5 f3 eb                                      bl #0x30e964
00615310  08 10 a0 e1                                      mov r1, r8
00615314  94 e6 f3 eb                                      bl #0x30ed6c
00615318  07 10 a0 e1                                      mov r1, r7
0061531c  20 e6 f3 eb                                      bl #0x30eba4
00615320  00 50 a0 e1                                      mov r5, r0
00615324  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00615328  8d e5 f3 eb                                      bl #0x30e964
0061532c  00 10 a0 e1                                      mov r1, r0
00615330  08 00 a0 e1                                      mov r0, r8
00615334  8c e6 f3 eb                                      bl #0x30ed6c
00615338  00 10 a0 e1                                      mov r1, r0
0061533c  07 00 a0 e1                                      mov r0, r7
00615340  17 e6 f3 eb                                      bl #0x30eba4
00615344  00 60 a0 e1                                      mov r6, r0
00615348  04 00 a0 e1                                      mov r0, r4
0061534c  c0 52 01 eb                                      bl #0x669e54
00615350  00 00 50 e3                                      cmp r0, #0
00615354  13 00 00 0a                                      beq #0x6153a8
00615358  05 10 a0 e1                                      mov r1, r5
0061535c  06 00 a0 e1                                      mov r0, r6
00615360  11 e4 f3 eb                                      bl #0x30e3ac
00615364  00 10 a0 e1                                      mov r1, r0
00615368  0b 00 a0 e1                                      mov r0, fp
0061536c  7e e6 f3 eb                                      bl #0x30ed6c
00615370  05 10 a0 e1                                      mov r1, r5
00615374  0a e6 f3 eb                                      bl #0x30eba4
00615378  09 50 a0 e1                                      mov r5, sb
0061537c  04 00 85 e4                                      str r0, [r5], #4
00615380  04 00 a0 e1                                      mov r0, r4
00615384  b7 52 01 eb                                      bl #0x669e68
00615388  04 30 90 e5                                      ldr r3, [r0, #4]
0061538c  04 00 a0 e1                                      mov r0, r4
00615390  04 30 89 e5                                      str r3, [sb, #4]
00615394  b3 52 01 eb                                      bl #0x669e68
00615398  08 30 90 e5                                      ldr r3, [r0, #8]
0061539c  04 30 85 e5                                      str r3, [r5, #4]
006153a0  14 d0 8d e2                                      add sp, sp, #0x14
006153a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006153a8  05 10 a0 e1                                      mov r1, r5
006153ac  06 00 a0 e1                                      mov r0, r6
006153b0  fd e3 f3 eb                                      bl #0x30e3ac
006153b4  00 10 a0 e1                                      mov r1, r0
006153b8  0b 00 a0 e1                                      mov r0, fp
006153bc  6a e6 f3 eb                                      bl #0x30ed6c
006153c0  05 10 a0 e1                                      mov r1, r5
006153c4  f6 e5 f3 eb                                      bl #0x30eba4
006153c8  00 00 89 e5                                      str r0, [sb]
006153cc  f3 ff ff ea                                      b #0x6153a0

; FUNCTION 0x006153ec, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006153ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006153f0  00 40 a0 e1                                      mov r4, r0
006153f4  10 d0 4d e2                                      sub sp, sp, #0x10
006153f8  01 50 a0 e1                                      mov r5, r1
006153fc  04 00 8d e2                                      add r0, sp, #4
00615400  04 10 a0 e1                                      mov r1, r4
00615404  02 60 a0 e1                                      mov r6, r2
00615408  03 90 a0 e1                                      mov sb, r3
0061540c  74 fa ff eb                                      bl #0x613de4
00615410  04 30 9d e5                                      ldr r3, [sp, #4]
00615414  04 a0 93 e5                                      ldr sl, [r3, #4]
00615418  08 30 9d e5                                      ldr r3, [sp, #8]
0061541c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00615420  00 80 93 e5                                      ldr r8, [r3]
00615424  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615428  00 70 93 e5                                      ldr r7, [r3]
0061542c  4c e5 f3 eb                                      bl #0x30e964
00615430  00 10 a0 e1                                      mov r1, r0
00615434  08 00 a0 e1                                      mov r0, r8
00615438  4b e6 f3 eb                                      bl #0x30ed6c
0061543c  00 10 a0 e1                                      mov r1, r0
00615440  07 00 a0 e1                                      mov r0, r7
00615444  d6 e5 f3 eb                                      bl #0x30eba4
00615448  00 60 a0 e1                                      mov r6, r0
0061544c  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00615450  43 e5 f3 eb                                      bl #0x30e964
00615454  08 10 a0 e1                                      mov r1, r8
00615458  43 e6 f3 eb                                      bl #0x30ed6c
0061545c  07 10 a0 e1                                      mov r1, r7
00615460  cf e5 f3 eb                                      bl #0x30eba4
00615464  00 10 a0 e1                                      mov r1, r0
00615468  06 00 a0 e1                                      mov r0, r6
0061546c  ce e3 f3 eb                                      bl #0x30e3ac
00615470  00 50 a0 e1                                      mov r5, r0
00615474  04 00 a0 e1                                      mov r0, r4
00615478  75 52 01 eb                                      bl #0x669e54
0061547c  00 00 50 e3                                      cmp r0, #0
00615480  00 50 89 05                                      streq r5, [sb]
00615484  01 00 00 1a                                      bne #0x615490
00615488  10 d0 8d e2                                      add sp, sp, #0x10
0061548c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00615490  04 00 a0 e1                                      mov r0, r4
00615494  73 52 01 eb                                      bl #0x669e68
00615498  09 30 a0 e1                                      mov r3, sb
0061549c  04 50 83 e4                                      str r5, [r3], #4
006154a0  04 20 90 e5                                      ldr r2, [r0, #4]
006154a4  04 20 89 e5                                      str r2, [sb, #4]
006154a8  08 20 90 e5                                      ldr r2, [r0, #8]
006154ac  04 20 83 e5                                      str r2, [r3, #4]
006154b0  f4 ff ff ea                                      b #0x615488

; FUNCTION 0x006154c8, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006154c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006154cc  00 40 a0 e1                                      mov r4, r0
006154d0  14 d0 4d e2                                      sub sp, sp, #0x14
006154d4  01 50 a0 e1                                      mov r5, r1
006154d8  04 00 8d e2                                      add r0, sp, #4
006154dc  04 10 a0 e1                                      mov r1, r4
006154e0  02 60 a0 e1                                      mov r6, r2
006154e4  03 b0 a0 e1                                      mov fp, r3
006154e8  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
006154ec  3c fa ff eb                                      bl #0x613de4
006154f0  04 30 9d e5                                      ldr r3, [sp, #4]
006154f4  04 a0 93 e5                                      ldr sl, [r3, #4]
006154f8  08 30 9d e5                                      ldr r3, [sp, #8]
006154fc  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00615500  00 80 93 e5                                      ldr r8, [r3]
00615504  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615508  00 70 93 e5                                      ldr r7, [r3]
0061550c  14 e5 f3 eb                                      bl #0x30e964
00615510  08 10 a0 e1                                      mov r1, r8
00615514  14 e6 f3 eb                                      bl #0x30ed6c
00615518  07 10 a0 e1                                      mov r1, r7
0061551c  a0 e5 f3 eb                                      bl #0x30eba4
00615520  00 50 a0 e1                                      mov r5, r0
00615524  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00615528  0d e5 f3 eb                                      bl #0x30e964
0061552c  00 10 a0 e1                                      mov r1, r0
00615530  08 00 a0 e1                                      mov r0, r8
00615534  0c e6 f3 eb                                      bl #0x30ed6c
00615538  00 10 a0 e1                                      mov r1, r0
0061553c  07 00 a0 e1                                      mov r0, r7
00615540  97 e5 f3 eb                                      bl #0x30eba4
00615544  05 10 a0 e1                                      mov r1, r5
00615548  97 e3 f3 eb                                      bl #0x30e3ac
0061554c  00 60 a0 e1                                      mov r6, r0
00615550  db 00 9a e1                                      ldrsb r0, [sl, fp]
00615554  02 e5 f3 eb                                      bl #0x30e964
00615558  00 10 a0 e1                                      mov r1, r0
0061555c  08 00 a0 e1                                      mov r0, r8
00615560  01 e6 f3 eb                                      bl #0x30ed6c
00615564  00 10 a0 e1                                      mov r1, r0
00615568  07 00 a0 e1                                      mov r0, r7
0061556c  8c e5 f3 eb                                      bl #0x30eba4
00615570  05 10 a0 e1                                      mov r1, r5
00615574  8c e3 f3 eb                                      bl #0x30e3ac
00615578  00 50 a0 e1                                      mov r5, r0
0061557c  04 00 a0 e1                                      mov r0, r4
00615580  33 52 01 eb                                      bl #0x669e54
00615584  00 00 50 e3                                      cmp r0, #0
00615588  0b 00 00 1a                                      bne #0x6155bc
0061558c  06 10 a0 e1                                      mov r1, r6
00615590  05 00 a0 e1                                      mov r0, r5
00615594  84 e3 f3 eb                                      bl #0x30e3ac
00615598  00 10 a0 e1                                      mov r1, r0
0061559c  38 00 9d e5                                      ldr r0, [sp, #0x38]
006155a0  f1 e5 f3 eb                                      bl #0x30ed6c
006155a4  00 10 a0 e1                                      mov r1, r0
006155a8  06 00 a0 e1                                      mov r0, r6
006155ac  7c e5 f3 eb                                      bl #0x30eba4
006155b0  00 00 89 e5                                      str r0, [sb]
006155b4  14 d0 8d e2                                      add sp, sp, #0x14
006155b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006155bc  04 00 a0 e1                                      mov r0, r4
006155c0  28 52 01 eb                                      bl #0x669e68
006155c4  06 10 a0 e1                                      mov r1, r6
006155c8  00 40 a0 e1                                      mov r4, r0
006155cc  05 00 a0 e1                                      mov r0, r5
006155d0  75 e3 f3 eb                                      bl #0x30e3ac
006155d4  00 10 a0 e1                                      mov r1, r0
006155d8  38 00 9d e5                                      ldr r0, [sp, #0x38]
006155dc  e2 e5 f3 eb                                      bl #0x30ed6c
006155e0  00 10 a0 e1                                      mov r1, r0
006155e4  06 00 a0 e1                                      mov r0, r6
006155e8  6d e5 f3 eb                                      bl #0x30eba4
006155ec  09 30 a0 e1                                      mov r3, sb
006155f0  04 00 83 e4                                      str r0, [r3], #4
006155f4  04 20 94 e5                                      ldr r2, [r4, #4]
006155f8  04 20 89 e5                                      str r2, [sb, #4]
006155fc  08 20 94 e5                                      ldr r2, [r4, #8]
00615600  04 20 83 e5                                      str r2, [r3, #4]
00615604  ea ff ff ea                                      b #0x6155b4
