; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00615eec, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00615eec  70 40 2d e9                                      push {r4, r5, r6, lr}
00615ef0  00 40 a0 e1                                      mov r4, r0
00615ef4  10 d0 4d e2                                      sub sp, sp, #0x10
00615ef8  01 50 a0 e1                                      mov r5, r1
00615efc  04 00 8d e2                                      add r0, sp, #4
00615f00  04 10 a0 e1                                      mov r1, r4
00615f04  02 60 a0 e1                                      mov r6, r2
00615f08  a6 f7 ff eb                                      bl #0x613da8
00615f0c  04 30 9d e5                                      ldr r3, [sp, #4]
00615f10  85 50 a0 e1                                      lsl r5, r5, #1
00615f14  04 30 93 e5                                      ldr r3, [r3, #4]
00615f18  f5 00 93 e1                                      ldrsh r0, [r3, r5]
00615f1c  90 e2 f3 eb                                      bl #0x30e964
00615f20  08 30 9d e5                                      ldr r3, [sp, #8]
00615f24  00 10 93 e5                                      ldr r1, [r3]
00615f28  8f e3 f3 eb                                      bl #0x30ed6c
00615f2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615f30  00 10 93 e5                                      ldr r1, [r3]
00615f34  1a e3 f3 eb                                      bl #0x30eba4
00615f38  00 50 a0 e1                                      mov r5, r0
00615f3c  04 00 a0 e1                                      mov r0, r4
00615f40  c3 4f 01 eb                                      bl #0x669e54
00615f44  00 00 50 e3                                      cmp r0, #0
00615f48  02 00 00 1a                                      bne #0x615f58
00615f4c  00 50 86 e5                                      str r5, [r6]
00615f50  10 d0 8d e2                                      add sp, sp, #0x10
00615f54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00615f58  04 00 a0 e1                                      mov r0, r4
00615f5c  c1 4f 01 eb                                      bl #0x669e68
00615f60  00 00 50 e3                                      cmp r0, #0
00615f64  f8 ff ff 0a                                      beq #0x615f4c
00615f68  04 00 a0 e1                                      mov r0, r4
00615f6c  bd 4f 01 eb                                      bl #0x669e68
00615f70  00 20 90 e5                                      ldr r2, [r0]
00615f74  06 30 a0 e1                                      mov r3, r6
00615f78  04 20 83 e4                                      str r2, [r3], #4
00615f7c  04 20 90 e5                                      ldr r2, [r0, #4]
00615f80  04 20 86 e5                                      str r2, [r6, #4]
00615f84  04 50 83 e5                                      str r5, [r3, #4]
00615f88  f0 ff ff ea                                      b #0x615f50

; FUNCTION 0x00615f9c, declared_size=268, range_size=268, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00615f9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00615fa0  00 40 a0 e1                                      mov r4, r0
00615fa4  14 d0 4d e2                                      sub sp, sp, #0x14
00615fa8  01 50 a0 e1                                      mov r5, r1
00615fac  04 00 8d e2                                      add r0, sp, #4
00615fb0  04 10 a0 e1                                      mov r1, r4
00615fb4  02 60 a0 e1                                      mov r6, r2
00615fb8  03 90 a0 e1                                      mov sb, r3
00615fbc  38 70 9d e5                                      ldr r7, [sp, #0x38]
00615fc0  78 f7 ff eb                                      bl #0x613da8
00615fc4  04 30 9d e5                                      ldr r3, [sp, #4]
00615fc8  85 50 a0 e1                                      lsl r5, r5, #1
00615fcc  86 60 a0 e1                                      lsl r6, r6, #1
00615fd0  04 a0 93 e5                                      ldr sl, [r3, #4]
00615fd4  08 30 9d e5                                      ldr r3, [sp, #8]
00615fd8  f5 00 9a e1                                      ldrsh r0, [sl, r5]
00615fdc  00 b0 93 e5                                      ldr fp, [r3]
00615fe0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615fe4  00 80 93 e5                                      ldr r8, [r3]
00615fe8  5d e2 f3 eb                                      bl #0x30e964
00615fec  0b 10 a0 e1                                      mov r1, fp
00615ff0  5d e3 f3 eb                                      bl #0x30ed6c
00615ff4  08 10 a0 e1                                      mov r1, r8
00615ff8  e9 e2 f3 eb                                      bl #0x30eba4
00615ffc  00 50 a0 e1                                      mov r5, r0
00616000  f6 00 9a e1                                      ldrsh r0, [sl, r6]
00616004  56 e2 f3 eb                                      bl #0x30e964
00616008  00 10 a0 e1                                      mov r1, r0
0061600c  0b 00 a0 e1                                      mov r0, fp
00616010  55 e3 f3 eb                                      bl #0x30ed6c
00616014  00 10 a0 e1                                      mov r1, r0
00616018  08 00 a0 e1                                      mov r0, r8
0061601c  e0 e2 f3 eb                                      bl #0x30eba4
00616020  00 60 a0 e1                                      mov r6, r0
00616024  04 00 a0 e1                                      mov r0, r4
00616028  89 4f 01 eb                                      bl #0x669e54
0061602c  00 00 50 e3                                      cmp r0, #0
00616030  12 00 00 0a                                      beq #0x616080
00616034  04 00 a0 e1                                      mov r0, r4
00616038  8a 4f 01 eb                                      bl #0x669e68
0061603c  00 30 90 e5                                      ldr r3, [r0]
00616040  04 00 a0 e1                                      mov r0, r4
00616044  00 30 87 e5                                      str r3, [r7]
00616048  86 4f 01 eb                                      bl #0x669e68
0061604c  04 30 90 e5                                      ldr r3, [r0, #4]
00616050  05 10 a0 e1                                      mov r1, r5
00616054  06 00 a0 e1                                      mov r0, r6
00616058  04 30 87 e5                                      str r3, [r7, #4]
0061605c  d2 e0 f3 eb                                      bl #0x30e3ac
00616060  00 10 a0 e1                                      mov r1, r0
00616064  09 00 a0 e1                                      mov r0, sb
00616068  3f e3 f3 eb                                      bl #0x30ed6c
0061606c  05 10 a0 e1                                      mov r1, r5
00616070  cb e2 f3 eb                                      bl #0x30eba4
00616074  08 00 87 e5                                      str r0, [r7, #8]
00616078  14 d0 8d e2                                      add sp, sp, #0x14
0061607c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00616080  05 10 a0 e1                                      mov r1, r5
00616084  06 00 a0 e1                                      mov r0, r6
00616088  c7 e0 f3 eb                                      bl #0x30e3ac
0061608c  00 10 a0 e1                                      mov r1, r0
00616090  09 00 a0 e1                                      mov r0, sb
00616094  34 e3 f3 eb                                      bl #0x30ed6c
00616098  05 10 a0 e1                                      mov r1, r5
0061609c  c0 e2 f3 eb                                      bl #0x30eba4
006160a0  00 00 87 e5                                      str r0, [r7]
006160a4  f3 ff ff ea                                      b #0x616078

; FUNCTION 0x006160c4, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006160c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006160c8  00 40 a0 e1                                      mov r4, r0
006160cc  10 d0 4d e2                                      sub sp, sp, #0x10
006160d0  01 50 a0 e1                                      mov r5, r1
006160d4  04 00 8d e2                                      add r0, sp, #4
006160d8  04 10 a0 e1                                      mov r1, r4
006160dc  02 60 a0 e1                                      mov r6, r2
006160e0  03 a0 a0 e1                                      mov sl, r3
006160e4  2f f7 ff eb                                      bl #0x613da8
006160e8  04 30 9d e5                                      ldr r3, [sp, #4]
006160ec  86 60 a0 e1                                      lsl r6, r6, #1
006160f0  85 50 a0 e1                                      lsl r5, r5, #1
006160f4  04 80 93 e5                                      ldr r8, [r3, #4]
006160f8  08 30 9d e5                                      ldr r3, [sp, #8]
006160fc  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00616100  00 70 93 e5                                      ldr r7, [r3]
00616104  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616108  00 60 93 e5                                      ldr r6, [r3]
0061610c  14 e2 f3 eb                                      bl #0x30e964
00616110  00 10 a0 e1                                      mov r1, r0
00616114  07 00 a0 e1                                      mov r0, r7
00616118  13 e3 f3 eb                                      bl #0x30ed6c
0061611c  00 10 a0 e1                                      mov r1, r0
00616120  06 00 a0 e1                                      mov r0, r6
00616124  9e e2 f3 eb                                      bl #0x30eba4
00616128  00 90 a0 e1                                      mov sb, r0
0061612c  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00616130  0b e2 f3 eb                                      bl #0x30e964
00616134  07 10 a0 e1                                      mov r1, r7
00616138  0b e3 f3 eb                                      bl #0x30ed6c
0061613c  06 10 a0 e1                                      mov r1, r6
00616140  97 e2 f3 eb                                      bl #0x30eba4
00616144  00 10 a0 e1                                      mov r1, r0
00616148  09 00 a0 e1                                      mov r0, sb
0061614c  96 e0 f3 eb                                      bl #0x30e3ac
00616150  00 50 a0 e1                                      mov r5, r0
00616154  04 00 a0 e1                                      mov r0, r4
00616158  3d 4f 01 eb                                      bl #0x669e54
0061615c  00 00 50 e3                                      cmp r0, #0
00616160  00 50 8a 05                                      streq r5, [sl]
00616164  01 00 00 1a                                      bne #0x616170
00616168  10 d0 8d e2                                      add sp, sp, #0x10
0061616c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00616170  04 00 a0 e1                                      mov r0, r4
00616174  3b 4f 01 eb                                      bl #0x669e68
00616178  00 20 90 e5                                      ldr r2, [r0]
0061617c  0a 30 a0 e1                                      mov r3, sl
00616180  04 20 83 e4                                      str r2, [r3], #4
00616184  04 20 90 e5                                      ldr r2, [r0, #4]
00616188  04 20 8a e5                                      str r2, [sl, #4]
0061618c  04 50 83 e5                                      str r5, [r3, #4]
00616190  f4 ff ff ea                                      b #0x616168

; FUNCTION 0x006161a8, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006161a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006161ac  00 40 a0 e1                                      mov r4, r0
006161b0  14 d0 4d e2                                      sub sp, sp, #0x14
006161b4  01 50 a0 e1                                      mov r5, r1
006161b8  04 00 8d e2                                      add r0, sp, #4
006161bc  04 10 a0 e1                                      mov r1, r4
006161c0  02 60 a0 e1                                      mov r6, r2
006161c4  03 90 a0 e1                                      mov sb, r3
006161c8  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
006161cc  f5 f6 ff eb                                      bl #0x613da8
006161d0  04 30 9d e5                                      ldr r3, [sp, #4]
006161d4  85 50 a0 e1                                      lsl r5, r5, #1
006161d8  86 60 a0 e1                                      lsl r6, r6, #1
006161dc  04 80 93 e5                                      ldr r8, [r3, #4]
006161e0  08 30 9d e5                                      ldr r3, [sp, #8]
006161e4  89 90 a0 e1                                      lsl sb, sb, #1
006161e8  f5 00 98 e1                                      ldrsh r0, [r8, r5]
006161ec  00 70 93 e5                                      ldr r7, [r3]
006161f0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006161f4  00 50 93 e5                                      ldr r5, [r3]
006161f8  d9 e1 f3 eb                                      bl #0x30e964
006161fc  07 10 a0 e1                                      mov r1, r7
00616200  d9 e2 f3 eb                                      bl #0x30ed6c
00616204  05 10 a0 e1                                      mov r1, r5
00616208  65 e2 f3 eb                                      bl #0x30eba4
0061620c  00 b0 a0 e1                                      mov fp, r0
00616210  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00616214  d2 e1 f3 eb                                      bl #0x30e964
00616218  00 10 a0 e1                                      mov r1, r0
0061621c  07 00 a0 e1                                      mov r0, r7
00616220  d1 e2 f3 eb                                      bl #0x30ed6c
00616224  00 10 a0 e1                                      mov r1, r0
00616228  05 00 a0 e1                                      mov r0, r5
0061622c  5c e2 f3 eb                                      bl #0x30eba4
00616230  0b 10 a0 e1                                      mov r1, fp
00616234  5c e0 f3 eb                                      bl #0x30e3ac
00616238  00 60 a0 e1                                      mov r6, r0
0061623c  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00616240  c7 e1 f3 eb                                      bl #0x30e964
00616244  00 10 a0 e1                                      mov r1, r0
00616248  07 00 a0 e1                                      mov r0, r7
0061624c  c6 e2 f3 eb                                      bl #0x30ed6c
00616250  00 10 a0 e1                                      mov r1, r0
00616254  05 00 a0 e1                                      mov r0, r5
00616258  51 e2 f3 eb                                      bl #0x30eba4
0061625c  0b 10 a0 e1                                      mov r1, fp
00616260  51 e0 f3 eb                                      bl #0x30e3ac
00616264  00 50 a0 e1                                      mov r5, r0
00616268  04 00 a0 e1                                      mov r0, r4
0061626c  f8 4e 01 eb                                      bl #0x669e54
00616270  00 00 50 e3                                      cmp r0, #0
00616274  0b 00 00 1a                                      bne #0x6162a8
00616278  06 10 a0 e1                                      mov r1, r6
0061627c  05 00 a0 e1                                      mov r0, r5
00616280  49 e0 f3 eb                                      bl #0x30e3ac
00616284  00 10 a0 e1                                      mov r1, r0
00616288  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061628c  b6 e2 f3 eb                                      bl #0x30ed6c
00616290  00 10 a0 e1                                      mov r1, r0
00616294  06 00 a0 e1                                      mov r0, r6
00616298  41 e2 f3 eb                                      bl #0x30eba4
0061629c  00 00 8a e5                                      str r0, [sl]
006162a0  14 d0 8d e2                                      add sp, sp, #0x14
006162a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006162a8  04 00 a0 e1                                      mov r0, r4
006162ac  ed 4e 01 eb                                      bl #0x669e68
006162b0  00 20 90 e5                                      ldr r2, [r0]
006162b4  0a 40 a0 e1                                      mov r4, sl
006162b8  00 30 a0 e1                                      mov r3, r0
006162bc  04 20 84 e4                                      str r2, [r4], #4
006162c0  04 30 93 e5                                      ldr r3, [r3, #4]
006162c4  06 10 a0 e1                                      mov r1, r6
006162c8  05 00 a0 e1                                      mov r0, r5
006162cc  04 30 8a e5                                      str r3, [sl, #4]
006162d0  35 e0 f3 eb                                      bl #0x30e3ac
006162d4  00 10 a0 e1                                      mov r1, r0
006162d8  38 00 9d e5                                      ldr r0, [sp, #0x38]
006162dc  a2 e2 f3 eb                                      bl #0x30ed6c
006162e0  00 10 a0 e1                                      mov r1, r0
006162e4  06 00 a0 e1                                      mov r0, r6
006162e8  2d e2 f3 eb                                      bl #0x30eba4
006162ec  04 00 84 e5                                      str r0, [r4, #4]
006162f0  ea ff ff ea                                      b #0x6162a0
