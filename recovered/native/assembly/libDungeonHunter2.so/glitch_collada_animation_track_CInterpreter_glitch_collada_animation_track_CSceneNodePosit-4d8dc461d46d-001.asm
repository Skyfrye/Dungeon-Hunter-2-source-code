; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00615e6c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00615e6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00615e70  01 40 a0 e1                                      mov r4, r1
00615e74  00 10 a0 e3                                      mov r1, #0
00615e78  02 50 a0 e1                                      mov r5, r2
00615e7c  03 60 a0 e1                                      mov r6, r3
00615e80  00 70 a0 e1                                      mov r7, r0
00615e84  e6 4f 01 eb                                      bl #0x669e24
00615e88  04 30 90 e5                                      ldr r3, [r0, #4]
00615e8c  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00615e90  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00615e94  44 e1 f3 eb                                      bl #0x30e3ac
00615e98  00 40 a0 e1                                      mov r4, r0
00615e9c  07 00 a0 e1                                      mov r0, r7
00615ea0  eb 4f 01 eb                                      bl #0x669e54
00615ea4  00 00 50 e3                                      cmp r0, #0
00615ea8  01 00 00 1a                                      bne #0x615eb4
00615eac  00 40 86 e5                                      str r4, [r6]
00615eb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00615eb4  07 00 a0 e1                                      mov r0, r7
00615eb8  ea 4f 01 eb                                      bl #0x669e68
00615ebc  00 20 90 e5                                      ldr r2, [r0]
00615ec0  06 30 a0 e1                                      mov r3, r6
00615ec4  04 20 83 e4                                      str r2, [r3], #4
00615ec8  04 20 90 e5                                      ldr r2, [r0, #4]
00615ecc  04 20 86 e5                                      str r2, [r6, #4]
00615ed0  04 40 83 e5                                      str r4, [r3, #4]
00615ed4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061db54, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
0061db54  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061db58  01 40 a0 e1                                      mov r4, r1
0061db5c  00 10 a0 e3                                      mov r1, #0
0061db60  02 50 a0 e1                                      mov r5, r2
0061db64  03 90 a0 e1                                      mov sb, r3
0061db68  00 80 a0 e1                                      mov r8, r0
0061db6c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
0061db70  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
0061db74  aa 30 01 eb                                      bl #0x669e24
0061db78  04 60 90 e5                                      ldr r6, [r0, #4]
0061db7c  04 b1 96 e7                                      ldr fp, [r6, r4, lsl #2]
0061db80  05 01 96 e7                                      ldr r0, [r6, r5, lsl #2]
0061db84  0b 10 a0 e1                                      mov r1, fp
0061db88  07 c2 f3 eb                                      bl #0x30e3ac
0061db8c  0b 10 a0 e1                                      mov r1, fp
0061db90  00 40 a0 e1                                      mov r4, r0
0061db94  09 01 96 e7                                      ldr r0, [r6, sb, lsl #2]
0061db98  03 c2 f3 eb                                      bl #0x30e3ac
0061db9c  00 60 a0 e1                                      mov r6, r0
0061dba0  08 00 a0 e1                                      mov r0, r8
0061dba4  aa 30 01 eb                                      bl #0x669e54
0061dba8  00 00 50 e3                                      cmp r0, #0
0061dbac  0a 00 00 1a                                      bne #0x61dbdc
0061dbb0  04 10 a0 e1                                      mov r1, r4
0061dbb4  06 00 a0 e1                                      mov r0, r6
0061dbb8  fb c1 f3 eb                                      bl #0x30e3ac
0061dbbc  00 10 a0 e1                                      mov r1, r0
0061dbc0  0a 00 a0 e1                                      mov r0, sl
0061dbc4  68 c4 f3 eb                                      bl #0x30ed6c
0061dbc8  00 10 a0 e1                                      mov r1, r0
0061dbcc  04 00 a0 e1                                      mov r0, r4
0061dbd0  f3 c3 f3 eb                                      bl #0x30eba4
0061dbd4  00 00 87 e5                                      str r0, [r7]
0061dbd8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061dbdc  08 00 a0 e1                                      mov r0, r8
0061dbe0  a0 30 01 eb                                      bl #0x669e68
0061dbe4  00 20 90 e5                                      ldr r2, [r0]
0061dbe8  07 50 a0 e1                                      mov r5, r7
0061dbec  00 30 a0 e1                                      mov r3, r0
0061dbf0  04 20 85 e4                                      str r2, [r5], #4
0061dbf4  04 30 93 e5                                      ldr r3, [r3, #4]
0061dbf8  04 10 a0 e1                                      mov r1, r4
0061dbfc  06 00 a0 e1                                      mov r0, r6
0061dc00  04 30 87 e5                                      str r3, [r7, #4]
0061dc04  e8 c1 f3 eb                                      bl #0x30e3ac
0061dc08  00 10 a0 e1                                      mov r1, r0
0061dc0c  0a 00 a0 e1                                      mov r0, sl
0061dc10  55 c4 f3 eb                                      bl #0x30ed6c
0061dc14  00 10 a0 e1                                      mov r1, r0
0061dc18  04 00 a0 e1                                      mov r0, r4
0061dc1c  e0 c3 f3 eb                                      bl #0x30eba4
0061dc20  04 00 85 e5                                      str r0, [r5, #4]
0061dc24  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061ff3c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061ff3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061ff40  01 40 a0 e1                                      mov r4, r1
0061ff44  00 10 a0 e3                                      mov r1, #0
0061ff48  02 60 a0 e1                                      mov r6, r2
0061ff4c  00 50 a0 e1                                      mov r5, r0
0061ff50  b3 27 01 eb                                      bl #0x669e24
0061ff54  04 70 90 e5                                      ldr r7, [r0, #4]
0061ff58  05 00 a0 e1                                      mov r0, r5
0061ff5c  bc 27 01 eb                                      bl #0x669e54
0061ff60  00 00 50 e3                                      cmp r0, #0
0061ff64  02 00 00 1a                                      bne #0x61ff74
0061ff68  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
0061ff6c  00 30 86 e5                                      str r3, [r6]
0061ff70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061ff74  05 00 a0 e1                                      mov r0, r5
0061ff78  ba 27 01 eb                                      bl #0x669e68
0061ff7c  00 00 50 e3                                      cmp r0, #0
0061ff80  f8 ff ff 0a                                      beq #0x61ff68
0061ff84  05 00 a0 e1                                      mov r0, r5
0061ff88  b6 27 01 eb                                      bl #0x669e68
0061ff8c  00 20 90 e5                                      ldr r2, [r0]
0061ff90  06 30 a0 e1                                      mov r3, r6
0061ff94  04 20 83 e4                                      str r2, [r3], #4
0061ff98  04 20 90 e5                                      ldr r2, [r0, #4]
0061ff9c  04 20 86 e5                                      str r2, [r6, #4]
0061ffa0  04 21 97 e7                                      ldr r2, [r7, r4, lsl #2]
0061ffa4  04 20 83 e5                                      str r2, [r3, #4]
0061ffa8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ffbc, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIfEEfLi3ENS1_17SUseDefaultValuesILi2EfEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<float>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, float> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
0061ffbc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061ffc0  01 40 a0 e1                                      mov r4, r1
0061ffc4  00 10 a0 e3                                      mov r1, #0
0061ffc8  02 50 a0 e1                                      mov r5, r2
0061ffcc  03 80 a0 e1                                      mov r8, r3
0061ffd0  00 70 a0 e1                                      mov r7, r0
0061ffd4  20 60 9d e5                                      ldr r6, [sp, #0x20]
0061ffd8  91 27 01 eb                                      bl #0x669e24
0061ffdc  04 a0 90 e5                                      ldr sl, [r0, #4]
0061ffe0  07 00 a0 e1                                      mov r0, r7
0061ffe4  9a 27 01 eb                                      bl #0x669e54
0061ffe8  00 00 50 e3                                      cmp r0, #0
0061ffec  13 00 00 0a                                      beq #0x620040
0061fff0  07 00 a0 e1                                      mov r0, r7
0061fff4  9b 27 01 eb                                      bl #0x669e68
0061fff8  00 30 90 e5                                      ldr r3, [r0]
0061fffc  07 00 a0 e1                                      mov r0, r7
00620000  00 30 86 e5                                      str r3, [r6]
00620004  97 27 01 eb                                      bl #0x669e68
00620008  04 30 90 e5                                      ldr r3, [r0, #4]
0062000c  04 30 86 e5                                      str r3, [r6, #4]
00620010  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
00620014  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
00620018  04 10 a0 e1                                      mov r1, r4
0062001c  e2 b8 f3 eb                                      bl #0x30e3ac
00620020  00 10 a0 e1                                      mov r1, r0
00620024  08 00 a0 e1                                      mov r0, r8
00620028  4f bb f3 eb                                      bl #0x30ed6c
0062002c  00 10 a0 e1                                      mov r1, r0
00620030  04 00 a0 e1                                      mov r0, r4
00620034  da ba f3 eb                                      bl #0x30eba4
00620038  08 00 86 e5                                      str r0, [r6, #8]
0062003c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00620040  04 41 9a e7                                      ldr r4, [sl, r4, lsl #2]
00620044  05 01 9a e7                                      ldr r0, [sl, r5, lsl #2]
00620048  04 10 a0 e1                                      mov r1, r4
0062004c  d6 b8 f3 eb                                      bl #0x30e3ac
00620050  00 10 a0 e1                                      mov r1, r0
00620054  08 00 a0 e1                                      mov r0, r8
00620058  43 bb f3 eb                                      bl #0x30ed6c
0062005c  00 10 a0 e1                                      mov r1, r0
00620060  04 00 a0 e1                                      mov r0, r4
00620064  ce ba f3 eb                                      bl #0x30eba4
00620068  00 00 86 e5                                      str r0, [r6]
0062006c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
