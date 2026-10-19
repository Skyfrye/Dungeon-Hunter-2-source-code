; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00616724, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00616724  70 40 2d e9                                      push {r4, r5, r6, lr}
00616728  00 40 a0 e1                                      mov r4, r0
0061672c  10 d0 4d e2                                      sub sp, sp, #0x10
00616730  01 50 a0 e1                                      mov r5, r1
00616734  04 00 8d e2                                      add r0, sp, #4
00616738  04 10 a0 e1                                      mov r1, r4
0061673c  02 60 a0 e1                                      mov r6, r2
00616740  98 f5 ff eb                                      bl #0x613da8
00616744  04 30 9d e5                                      ldr r3, [sp, #4]
00616748  85 50 a0 e1                                      lsl r5, r5, #1
0061674c  04 30 93 e5                                      ldr r3, [r3, #4]
00616750  f5 00 93 e1                                      ldrsh r0, [r3, r5]
00616754  82 e0 f3 eb                                      bl #0x30e964
00616758  08 30 9d e5                                      ldr r3, [sp, #8]
0061675c  00 10 93 e5                                      ldr r1, [r3]
00616760  81 e1 f3 eb                                      bl #0x30ed6c
00616764  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616768  00 10 93 e5                                      ldr r1, [r3]
0061676c  0c e1 f3 eb                                      bl #0x30eba4
00616770  00 50 a0 e1                                      mov r5, r0
00616774  04 00 a0 e1                                      mov r0, r4
00616778  b5 4d 01 eb                                      bl #0x669e54
0061677c  00 00 50 e3                                      cmp r0, #0
00616780  02 00 00 1a                                      bne #0x616790
00616784  00 50 86 e5                                      str r5, [r6]
00616788  10 d0 8d e2                                      add sp, sp, #0x10
0061678c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00616790  04 00 a0 e1                                      mov r0, r4
00616794  b3 4d 01 eb                                      bl #0x669e68
00616798  00 00 50 e3                                      cmp r0, #0
0061679c  f8 ff ff 0a                                      beq #0x616784
006167a0  04 00 a0 e1                                      mov r0, r4
006167a4  af 4d 01 eb                                      bl #0x669e68
006167a8  06 30 a0 e1                                      mov r3, r6
006167ac  04 50 83 e4                                      str r5, [r3], #4
006167b0  04 20 90 e5                                      ldr r2, [r0, #4]
006167b4  04 20 86 e5                                      str r2, [r6, #4]
006167b8  08 20 90 e5                                      ldr r2, [r0, #8]
006167bc  04 20 83 e5                                      str r2, [r3, #4]
006167c0  f0 ff ff ea                                      b #0x616788

; FUNCTION 0x006167d4, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006167d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006167d8  00 40 a0 e1                                      mov r4, r0
006167dc  14 d0 4d e2                                      sub sp, sp, #0x14
006167e0  01 50 a0 e1                                      mov r5, r1
006167e4  04 00 8d e2                                      add r0, sp, #4
006167e8  04 10 a0 e1                                      mov r1, r4
006167ec  02 60 a0 e1                                      mov r6, r2
006167f0  03 90 a0 e1                                      mov sb, r3
006167f4  38 a0 9d e5                                      ldr sl, [sp, #0x38]
006167f8  6a f5 ff eb                                      bl #0x613da8
006167fc  04 30 9d e5                                      ldr r3, [sp, #4]
00616800  85 50 a0 e1                                      lsl r5, r5, #1
00616804  86 60 a0 e1                                      lsl r6, r6, #1
00616808  04 80 93 e5                                      ldr r8, [r3, #4]
0061680c  08 30 9d e5                                      ldr r3, [sp, #8]
00616810  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00616814  00 b0 93 e5                                      ldr fp, [r3]
00616818  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061681c  00 70 93 e5                                      ldr r7, [r3]
00616820  4f e0 f3 eb                                      bl #0x30e964
00616824  0b 10 a0 e1                                      mov r1, fp
00616828  4f e1 f3 eb                                      bl #0x30ed6c
0061682c  07 10 a0 e1                                      mov r1, r7
00616830  db e0 f3 eb                                      bl #0x30eba4
00616834  00 50 a0 e1                                      mov r5, r0
00616838  f6 00 98 e1                                      ldrsh r0, [r8, r6]
0061683c  48 e0 f3 eb                                      bl #0x30e964
00616840  00 10 a0 e1                                      mov r1, r0
00616844  0b 00 a0 e1                                      mov r0, fp
00616848  47 e1 f3 eb                                      bl #0x30ed6c
0061684c  00 10 a0 e1                                      mov r1, r0
00616850  07 00 a0 e1                                      mov r0, r7
00616854  d2 e0 f3 eb                                      bl #0x30eba4
00616858  00 60 a0 e1                                      mov r6, r0
0061685c  04 00 a0 e1                                      mov r0, r4
00616860  7b 4d 01 eb                                      bl #0x669e54
00616864  00 00 50 e3                                      cmp r0, #0
00616868  13 00 00 0a                                      beq #0x6168bc
0061686c  05 10 a0 e1                                      mov r1, r5
00616870  06 00 a0 e1                                      mov r0, r6
00616874  cc de f3 eb                                      bl #0x30e3ac
00616878  00 10 a0 e1                                      mov r1, r0
0061687c  09 00 a0 e1                                      mov r0, sb
00616880  39 e1 f3 eb                                      bl #0x30ed6c
00616884  05 10 a0 e1                                      mov r1, r5
00616888  c5 e0 f3 eb                                      bl #0x30eba4
0061688c  0a 50 a0 e1                                      mov r5, sl
00616890  04 00 85 e4                                      str r0, [r5], #4
00616894  04 00 a0 e1                                      mov r0, r4
00616898  72 4d 01 eb                                      bl #0x669e68
0061689c  04 30 90 e5                                      ldr r3, [r0, #4]
006168a0  04 00 a0 e1                                      mov r0, r4
006168a4  04 30 8a e5                                      str r3, [sl, #4]
006168a8  6e 4d 01 eb                                      bl #0x669e68
006168ac  08 30 90 e5                                      ldr r3, [r0, #8]
006168b0  04 30 85 e5                                      str r3, [r5, #4]
006168b4  14 d0 8d e2                                      add sp, sp, #0x14
006168b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006168bc  05 10 a0 e1                                      mov r1, r5
006168c0  06 00 a0 e1                                      mov r0, r6
006168c4  b8 de f3 eb                                      bl #0x30e3ac
006168c8  00 10 a0 e1                                      mov r1, r0
006168cc  09 00 a0 e1                                      mov r0, sb
006168d0  25 e1 f3 eb                                      bl #0x30ed6c
006168d4  05 10 a0 e1                                      mov r1, r5
006168d8  b1 e0 f3 eb                                      bl #0x30eba4
006168dc  00 00 8a e5                                      str r0, [sl]
006168e0  f3 ff ff ea                                      b #0x6168b4

; FUNCTION 0x00616900, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00616900  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00616904  00 40 a0 e1                                      mov r4, r0
00616908  10 d0 4d e2                                      sub sp, sp, #0x10
0061690c  01 50 a0 e1                                      mov r5, r1
00616910  04 00 8d e2                                      add r0, sp, #4
00616914  04 10 a0 e1                                      mov r1, r4
00616918  02 60 a0 e1                                      mov r6, r2
0061691c  03 a0 a0 e1                                      mov sl, r3
00616920  20 f5 ff eb                                      bl #0x613da8
00616924  04 30 9d e5                                      ldr r3, [sp, #4]
00616928  86 60 a0 e1                                      lsl r6, r6, #1
0061692c  85 50 a0 e1                                      lsl r5, r5, #1
00616930  04 80 93 e5                                      ldr r8, [r3, #4]
00616934  08 30 9d e5                                      ldr r3, [sp, #8]
00616938  f6 00 98 e1                                      ldrsh r0, [r8, r6]
0061693c  00 70 93 e5                                      ldr r7, [r3]
00616940  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616944  00 60 93 e5                                      ldr r6, [r3]
00616948  05 e0 f3 eb                                      bl #0x30e964
0061694c  00 10 a0 e1                                      mov r1, r0
00616950  07 00 a0 e1                                      mov r0, r7
00616954  04 e1 f3 eb                                      bl #0x30ed6c
00616958  00 10 a0 e1                                      mov r1, r0
0061695c  06 00 a0 e1                                      mov r0, r6
00616960  8f e0 f3 eb                                      bl #0x30eba4
00616964  00 90 a0 e1                                      mov sb, r0
00616968  f5 00 98 e1                                      ldrsh r0, [r8, r5]
0061696c  fc df f3 eb                                      bl #0x30e964
00616970  07 10 a0 e1                                      mov r1, r7
00616974  fc e0 f3 eb                                      bl #0x30ed6c
00616978  06 10 a0 e1                                      mov r1, r6
0061697c  88 e0 f3 eb                                      bl #0x30eba4
00616980  00 10 a0 e1                                      mov r1, r0
00616984  09 00 a0 e1                                      mov r0, sb
00616988  87 de f3 eb                                      bl #0x30e3ac
0061698c  00 50 a0 e1                                      mov r5, r0
00616990  04 00 a0 e1                                      mov r0, r4
00616994  2e 4d 01 eb                                      bl #0x669e54
00616998  00 00 50 e3                                      cmp r0, #0
0061699c  00 50 8a 05                                      streq r5, [sl]
006169a0  01 00 00 1a                                      bne #0x6169ac
006169a4  10 d0 8d e2                                      add sp, sp, #0x10
006169a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006169ac  04 00 a0 e1                                      mov r0, r4
006169b0  2c 4d 01 eb                                      bl #0x669e68
006169b4  0a 30 a0 e1                                      mov r3, sl
006169b8  04 50 83 e4                                      str r5, [r3], #4
006169bc  04 20 90 e5                                      ldr r2, [r0, #4]
006169c0  04 20 8a e5                                      str r2, [sl, #4]
006169c4  08 20 90 e5                                      ldr r2, [r0, #8]
006169c8  04 20 83 e5                                      str r2, [r3, #4]
006169cc  f4 ff ff ea                                      b #0x6169a4

; FUNCTION 0x006169e4, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIsEEfLi3ENS1_17SUseDefaultValuesILi0EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006169e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006169e8  00 40 a0 e1                                      mov r4, r0
006169ec  14 d0 4d e2                                      sub sp, sp, #0x14
006169f0  01 50 a0 e1                                      mov r5, r1
006169f4  04 00 8d e2                                      add r0, sp, #4
006169f8  04 10 a0 e1                                      mov r1, r4
006169fc  02 60 a0 e1                                      mov r6, r2
00616a00  03 90 a0 e1                                      mov sb, r3
00616a04  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
00616a08  e6 f4 ff eb                                      bl #0x613da8
00616a0c  04 30 9d e5                                      ldr r3, [sp, #4]
00616a10  85 50 a0 e1                                      lsl r5, r5, #1
00616a14  86 60 a0 e1                                      lsl r6, r6, #1
00616a18  04 80 93 e5                                      ldr r8, [r3, #4]
00616a1c  08 30 9d e5                                      ldr r3, [sp, #8]
00616a20  89 90 a0 e1                                      lsl sb, sb, #1
00616a24  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00616a28  00 70 93 e5                                      ldr r7, [r3]
00616a2c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616a30  00 50 93 e5                                      ldr r5, [r3]
00616a34  ca df f3 eb                                      bl #0x30e964
00616a38  07 10 a0 e1                                      mov r1, r7
00616a3c  ca e0 f3 eb                                      bl #0x30ed6c
00616a40  05 10 a0 e1                                      mov r1, r5
00616a44  56 e0 f3 eb                                      bl #0x30eba4
00616a48  00 b0 a0 e1                                      mov fp, r0
00616a4c  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00616a50  c3 df f3 eb                                      bl #0x30e964
00616a54  00 10 a0 e1                                      mov r1, r0
00616a58  07 00 a0 e1                                      mov r0, r7
00616a5c  c2 e0 f3 eb                                      bl #0x30ed6c
00616a60  00 10 a0 e1                                      mov r1, r0
00616a64  05 00 a0 e1                                      mov r0, r5
00616a68  4d e0 f3 eb                                      bl #0x30eba4
00616a6c  0b 10 a0 e1                                      mov r1, fp
00616a70  4d de f3 eb                                      bl #0x30e3ac
00616a74  00 60 a0 e1                                      mov r6, r0
00616a78  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00616a7c  b8 df f3 eb                                      bl #0x30e964
00616a80  00 10 a0 e1                                      mov r1, r0
00616a84  07 00 a0 e1                                      mov r0, r7
00616a88  b7 e0 f3 eb                                      bl #0x30ed6c
00616a8c  00 10 a0 e1                                      mov r1, r0
00616a90  05 00 a0 e1                                      mov r0, r5
00616a94  42 e0 f3 eb                                      bl #0x30eba4
00616a98  0b 10 a0 e1                                      mov r1, fp
00616a9c  42 de f3 eb                                      bl #0x30e3ac
00616aa0  00 50 a0 e1                                      mov r5, r0
00616aa4  04 00 a0 e1                                      mov r0, r4
00616aa8  e9 4c 01 eb                                      bl #0x669e54
00616aac  00 00 50 e3                                      cmp r0, #0
00616ab0  0b 00 00 1a                                      bne #0x616ae4
00616ab4  06 10 a0 e1                                      mov r1, r6
00616ab8  05 00 a0 e1                                      mov r0, r5
00616abc  3a de f3 eb                                      bl #0x30e3ac
00616ac0  00 10 a0 e1                                      mov r1, r0
00616ac4  38 00 9d e5                                      ldr r0, [sp, #0x38]
00616ac8  a7 e0 f3 eb                                      bl #0x30ed6c
00616acc  00 10 a0 e1                                      mov r1, r0
00616ad0  06 00 a0 e1                                      mov r0, r6
00616ad4  32 e0 f3 eb                                      bl #0x30eba4
00616ad8  00 00 8a e5                                      str r0, [sl]
00616adc  14 d0 8d e2                                      add sp, sp, #0x14
00616ae0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00616ae4  04 00 a0 e1                                      mov r0, r4
00616ae8  de 4c 01 eb                                      bl #0x669e68
00616aec  06 10 a0 e1                                      mov r1, r6
00616af0  00 40 a0 e1                                      mov r4, r0
00616af4  05 00 a0 e1                                      mov r0, r5
00616af8  2b de f3 eb                                      bl #0x30e3ac
00616afc  00 10 a0 e1                                      mov r1, r0
00616b00  38 00 9d e5                                      ldr r0, [sp, #0x38]
00616b04  98 e0 f3 eb                                      bl #0x30ed6c
00616b08  00 10 a0 e1                                      mov r1, r0
00616b0c  06 00 a0 e1                                      mov r0, r6
00616b10  23 e0 f3 eb                                      bl #0x30eba4
00616b14  0a 30 a0 e1                                      mov r3, sl
00616b18  04 00 83 e4                                      str r0, [r3], #4
00616b1c  04 20 94 e5                                      ldr r2, [r4, #4]
00616b20  04 20 8a e5                                      str r2, [sl, #4]
00616b24  08 20 94 e5                                      ldr r2, [r4, #8]
00616b28  04 20 83 e5                                      str r2, [r3, #4]
00616b2c  ea ff ff ea                                      b #0x616adc
