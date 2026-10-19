; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00614dec, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614dec  70 40 2d e9                                      push {r4, r5, r6, lr}
00614df0  00 40 a0 e1                                      mov r4, r0
00614df4  10 d0 4d e2                                      sub sp, sp, #0x10
00614df8  01 50 a0 e1                                      mov r5, r1
00614dfc  04 00 8d e2                                      add r0, sp, #4
00614e00  04 10 a0 e1                                      mov r1, r4
00614e04  02 60 a0 e1                                      mov r6, r2
00614e08  e6 fb ff eb                                      bl #0x613da8
00614e0c  04 30 9d e5                                      ldr r3, [sp, #4]
00614e10  85 50 a0 e1                                      lsl r5, r5, #1
00614e14  04 30 93 e5                                      ldr r3, [r3, #4]
00614e18  f5 00 93 e1                                      ldrsh r0, [r3, r5]
00614e1c  d0 e6 f3 eb                                      bl #0x30e964
00614e20  08 30 9d e5                                      ldr r3, [sp, #8]
00614e24  00 10 93 e5                                      ldr r1, [r3]
00614e28  cf e7 f3 eb                                      bl #0x30ed6c
00614e2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614e30  00 10 93 e5                                      ldr r1, [r3]
00614e34  5a e7 f3 eb                                      bl #0x30eba4
00614e38  00 50 a0 e1                                      mov r5, r0
00614e3c  04 00 a0 e1                                      mov r0, r4
00614e40  03 54 01 eb                                      bl #0x669e54
00614e44  00 00 50 e3                                      cmp r0, #0
00614e48  02 00 00 1a                                      bne #0x614e58
00614e4c  00 50 86 e5                                      str r5, [r6]
00614e50  10 d0 8d e2                                      add sp, sp, #0x10
00614e54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00614e58  04 00 a0 e1                                      mov r0, r4
00614e5c  01 54 01 eb                                      bl #0x669e68
00614e60  00 00 50 e3                                      cmp r0, #0
00614e64  f8 ff ff 0a                                      beq #0x614e4c
00614e68  04 00 a0 e1                                      mov r0, r4
00614e6c  fd 53 01 eb                                      bl #0x669e68
00614e70  06 30 a0 e1                                      mov r3, r6
00614e74  04 50 83 e4                                      str r5, [r3], #4
00614e78  04 20 90 e5                                      ldr r2, [r0, #4]
00614e7c  04 20 86 e5                                      str r2, [r6, #4]
00614e80  08 20 90 e5                                      ldr r2, [r0, #8]
00614e84  04 20 83 e5                                      str r2, [r3, #4]
00614e88  f0 ff ff ea                                      b #0x614e50

; FUNCTION 0x00614e9c, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00614e9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614ea0  00 40 a0 e1                                      mov r4, r0
00614ea4  14 d0 4d e2                                      sub sp, sp, #0x14
00614ea8  01 50 a0 e1                                      mov r5, r1
00614eac  04 00 8d e2                                      add r0, sp, #4
00614eb0  04 10 a0 e1                                      mov r1, r4
00614eb4  02 60 a0 e1                                      mov r6, r2
00614eb8  03 90 a0 e1                                      mov sb, r3
00614ebc  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00614ec0  b8 fb ff eb                                      bl #0x613da8
00614ec4  04 30 9d e5                                      ldr r3, [sp, #4]
00614ec8  85 50 a0 e1                                      lsl r5, r5, #1
00614ecc  86 60 a0 e1                                      lsl r6, r6, #1
00614ed0  04 80 93 e5                                      ldr r8, [r3, #4]
00614ed4  08 30 9d e5                                      ldr r3, [sp, #8]
00614ed8  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00614edc  00 b0 93 e5                                      ldr fp, [r3]
00614ee0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614ee4  00 70 93 e5                                      ldr r7, [r3]
00614ee8  9d e6 f3 eb                                      bl #0x30e964
00614eec  0b 10 a0 e1                                      mov r1, fp
00614ef0  9d e7 f3 eb                                      bl #0x30ed6c
00614ef4  07 10 a0 e1                                      mov r1, r7
00614ef8  29 e7 f3 eb                                      bl #0x30eba4
00614efc  00 50 a0 e1                                      mov r5, r0
00614f00  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00614f04  96 e6 f3 eb                                      bl #0x30e964
00614f08  00 10 a0 e1                                      mov r1, r0
00614f0c  0b 00 a0 e1                                      mov r0, fp
00614f10  95 e7 f3 eb                                      bl #0x30ed6c
00614f14  00 10 a0 e1                                      mov r1, r0
00614f18  07 00 a0 e1                                      mov r0, r7
00614f1c  20 e7 f3 eb                                      bl #0x30eba4
00614f20  00 60 a0 e1                                      mov r6, r0
00614f24  04 00 a0 e1                                      mov r0, r4
00614f28  c9 53 01 eb                                      bl #0x669e54
00614f2c  00 00 50 e3                                      cmp r0, #0
00614f30  13 00 00 0a                                      beq #0x614f84
00614f34  05 10 a0 e1                                      mov r1, r5
00614f38  06 00 a0 e1                                      mov r0, r6
00614f3c  1a e5 f3 eb                                      bl #0x30e3ac
00614f40  00 10 a0 e1                                      mov r1, r0
00614f44  09 00 a0 e1                                      mov r0, sb
00614f48  87 e7 f3 eb                                      bl #0x30ed6c
00614f4c  05 10 a0 e1                                      mov r1, r5
00614f50  13 e7 f3 eb                                      bl #0x30eba4
00614f54  0a 50 a0 e1                                      mov r5, sl
00614f58  04 00 85 e4                                      str r0, [r5], #4
00614f5c  04 00 a0 e1                                      mov r0, r4
00614f60  c0 53 01 eb                                      bl #0x669e68
00614f64  04 30 90 e5                                      ldr r3, [r0, #4]
00614f68  04 00 a0 e1                                      mov r0, r4
00614f6c  04 30 8a e5                                      str r3, [sl, #4]
00614f70  bc 53 01 eb                                      bl #0x669e68
00614f74  08 30 90 e5                                      ldr r3, [r0, #8]
00614f78  04 30 85 e5                                      str r3, [r5, #4]
00614f7c  14 d0 8d e2                                      add sp, sp, #0x14
00614f80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00614f84  05 10 a0 e1                                      mov r1, r5
00614f88  06 00 a0 e1                                      mov r0, r6
00614f8c  06 e5 f3 eb                                      bl #0x30e3ac
00614f90  00 10 a0 e1                                      mov r1, r0
00614f94  09 00 a0 e1                                      mov r0, sb
00614f98  73 e7 f3 eb                                      bl #0x30ed6c
00614f9c  05 10 a0 e1                                      mov r1, r5
00614fa0  ff e6 f3 eb                                      bl #0x30eba4
00614fa4  00 00 8a e5                                      str r0, [sl]
00614fa8  f3 ff ff ea                                      b #0x614f7c

; FUNCTION 0x00614fc8, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00614fc8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00614fcc  00 40 a0 e1                                      mov r4, r0
00614fd0  10 d0 4d e2                                      sub sp, sp, #0x10
00614fd4  01 50 a0 e1                                      mov r5, r1
00614fd8  04 00 8d e2                                      add r0, sp, #4
00614fdc  04 10 a0 e1                                      mov r1, r4
00614fe0  02 60 a0 e1                                      mov r6, r2
00614fe4  03 a0 a0 e1                                      mov sl, r3
00614fe8  6e fb ff eb                                      bl #0x613da8
00614fec  04 30 9d e5                                      ldr r3, [sp, #4]
00614ff0  86 60 a0 e1                                      lsl r6, r6, #1
00614ff4  85 50 a0 e1                                      lsl r5, r5, #1
00614ff8  04 80 93 e5                                      ldr r8, [r3, #4]
00614ffc  08 30 9d e5                                      ldr r3, [sp, #8]
00615000  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00615004  00 70 93 e5                                      ldr r7, [r3]
00615008  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061500c  00 60 93 e5                                      ldr r6, [r3]
00615010  53 e6 f3 eb                                      bl #0x30e964
00615014  00 10 a0 e1                                      mov r1, r0
00615018  07 00 a0 e1                                      mov r0, r7
0061501c  52 e7 f3 eb                                      bl #0x30ed6c
00615020  00 10 a0 e1                                      mov r1, r0
00615024  06 00 a0 e1                                      mov r0, r6
00615028  dd e6 f3 eb                                      bl #0x30eba4
0061502c  00 90 a0 e1                                      mov sb, r0
00615030  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00615034  4a e6 f3 eb                                      bl #0x30e964
00615038  07 10 a0 e1                                      mov r1, r7
0061503c  4a e7 f3 eb                                      bl #0x30ed6c
00615040  06 10 a0 e1                                      mov r1, r6
00615044  d6 e6 f3 eb                                      bl #0x30eba4
00615048  00 10 a0 e1                                      mov r1, r0
0061504c  09 00 a0 e1                                      mov r0, sb
00615050  d5 e4 f3 eb                                      bl #0x30e3ac
00615054  00 50 a0 e1                                      mov r5, r0
00615058  04 00 a0 e1                                      mov r0, r4
0061505c  7c 53 01 eb                                      bl #0x669e54
00615060  00 00 50 e3                                      cmp r0, #0
00615064  00 50 8a 05                                      streq r5, [sl]
00615068  01 00 00 1a                                      bne #0x615074
0061506c  10 d0 8d e2                                      add sp, sp, #0x10
00615070  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00615074  04 00 a0 e1                                      mov r0, r4
00615078  7a 53 01 eb                                      bl #0x669e68
0061507c  0a 30 a0 e1                                      mov r3, sl
00615080  04 50 83 e4                                      str r5, [r3], #4
00615084  04 20 90 e5                                      ldr r2, [r0, #4]
00615088  04 20 8a e5                                      str r2, [sl, #4]
0061508c  08 20 90 e5                                      ldr r2, [r0, #8]
00615090  04 20 83 e5                                      str r2, [r3, #4]
00615094  f4 ff ff ea                                      b #0x61506c

; FUNCTION 0x006150ac, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006150ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006150b0  00 40 a0 e1                                      mov r4, r0
006150b4  14 d0 4d e2                                      sub sp, sp, #0x14
006150b8  01 50 a0 e1                                      mov r5, r1
006150bc  04 00 8d e2                                      add r0, sp, #4
006150c0  04 10 a0 e1                                      mov r1, r4
006150c4  02 60 a0 e1                                      mov r6, r2
006150c8  03 90 a0 e1                                      mov sb, r3
006150cc  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
006150d0  34 fb ff eb                                      bl #0x613da8
006150d4  04 30 9d e5                                      ldr r3, [sp, #4]
006150d8  85 50 a0 e1                                      lsl r5, r5, #1
006150dc  86 60 a0 e1                                      lsl r6, r6, #1
006150e0  04 80 93 e5                                      ldr r8, [r3, #4]
006150e4  08 30 9d e5                                      ldr r3, [sp, #8]
006150e8  89 90 a0 e1                                      lsl sb, sb, #1
006150ec  f5 00 98 e1                                      ldrsh r0, [r8, r5]
006150f0  00 70 93 e5                                      ldr r7, [r3]
006150f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006150f8  00 50 93 e5                                      ldr r5, [r3]
006150fc  18 e6 f3 eb                                      bl #0x30e964
00615100  07 10 a0 e1                                      mov r1, r7
00615104  18 e7 f3 eb                                      bl #0x30ed6c
00615108  05 10 a0 e1                                      mov r1, r5
0061510c  a4 e6 f3 eb                                      bl #0x30eba4
00615110  00 b0 a0 e1                                      mov fp, r0
00615114  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00615118  11 e6 f3 eb                                      bl #0x30e964
0061511c  00 10 a0 e1                                      mov r1, r0
00615120  07 00 a0 e1                                      mov r0, r7
00615124  10 e7 f3 eb                                      bl #0x30ed6c
00615128  00 10 a0 e1                                      mov r1, r0
0061512c  05 00 a0 e1                                      mov r0, r5
00615130  9b e6 f3 eb                                      bl #0x30eba4
00615134  0b 10 a0 e1                                      mov r1, fp
00615138  9b e4 f3 eb                                      bl #0x30e3ac
0061513c  00 60 a0 e1                                      mov r6, r0
00615140  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00615144  06 e6 f3 eb                                      bl #0x30e964
00615148  00 10 a0 e1                                      mov r1, r0
0061514c  07 00 a0 e1                                      mov r0, r7
00615150  05 e7 f3 eb                                      bl #0x30ed6c
00615154  00 10 a0 e1                                      mov r1, r0
00615158  05 00 a0 e1                                      mov r0, r5
0061515c  90 e6 f3 eb                                      bl #0x30eba4
00615160  0b 10 a0 e1                                      mov r1, fp
00615164  90 e4 f3 eb                                      bl #0x30e3ac
00615168  00 50 a0 e1                                      mov r5, r0
0061516c  04 00 a0 e1                                      mov r0, r4
00615170  37 53 01 eb                                      bl #0x669e54
00615174  00 00 50 e3                                      cmp r0, #0
00615178  0b 00 00 1a                                      bne #0x6151ac
0061517c  06 10 a0 e1                                      mov r1, r6
00615180  05 00 a0 e1                                      mov r0, r5
00615184  88 e4 f3 eb                                      bl #0x30e3ac
00615188  00 10 a0 e1                                      mov r1, r0
0061518c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00615190  f5 e6 f3 eb                                      bl #0x30ed6c
00615194  00 10 a0 e1                                      mov r1, r0
00615198  06 00 a0 e1                                      mov r0, r6
0061519c  80 e6 f3 eb                                      bl #0x30eba4
006151a0  00 00 8a e5                                      str r0, [sl]
006151a4  14 d0 8d e2                                      add sp, sp, #0x14
006151a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006151ac  04 00 a0 e1                                      mov r0, r4
006151b0  2c 53 01 eb                                      bl #0x669e68
006151b4  06 10 a0 e1                                      mov r1, r6
006151b8  00 40 a0 e1                                      mov r4, r0
006151bc  05 00 a0 e1                                      mov r0, r5
006151c0  79 e4 f3 eb                                      bl #0x30e3ac
006151c4  00 10 a0 e1                                      mov r1, r0
006151c8  38 00 9d e5                                      ldr r0, [sp, #0x38]
006151cc  e6 e6 f3 eb                                      bl #0x30ed6c
006151d0  00 10 a0 e1                                      mov r1, r0
006151d4  06 00 a0 e1                                      mov r0, r6
006151d8  71 e6 f3 eb                                      bl #0x30eba4
006151dc  0a 30 a0 e1                                      mov r3, sl
006151e0  04 00 83 e4                                      str r0, [r3], #4
006151e4  04 20 94 e5                                      ldr r2, [r4, #4]
006151e8  04 20 8a e5                                      str r2, [sl, #4]
006151ec  08 20 94 e5                                      ldr r2, [r4, #8]
006151f0  04 20 83 e5                                      str r2, [r3, #4]
006151f4  ea ff ff ea                                      b #0x6151a4
