; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061562c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
0061562c  70 40 2d e9                                      push {r4, r5, r6, lr}
00615630  00 40 a0 e1                                      mov r4, r0
00615634  10 d0 4d e2                                      sub sp, sp, #0x10
00615638  01 50 a0 e1                                      mov r5, r1
0061563c  04 00 8d e2                                      add r0, sp, #4
00615640  04 10 a0 e1                                      mov r1, r4
00615644  02 60 a0 e1                                      mov r6, r2
00615648  d6 f9 ff eb                                      bl #0x613da8
0061564c  04 30 9d e5                                      ldr r3, [sp, #4]
00615650  85 50 a0 e1                                      lsl r5, r5, #1
00615654  04 30 93 e5                                      ldr r3, [r3, #4]
00615658  f5 00 93 e1                                      ldrsh r0, [r3, r5]
0061565c  c0 e4 f3 eb                                      bl #0x30e964
00615660  08 30 9d e5                                      ldr r3, [sp, #8]
00615664  00 10 93 e5                                      ldr r1, [r3]
00615668  bf e5 f3 eb                                      bl #0x30ed6c
0061566c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615670  00 10 93 e5                                      ldr r1, [r3]
00615674  4a e5 f3 eb                                      bl #0x30eba4
00615678  00 50 a0 e1                                      mov r5, r0
0061567c  04 00 a0 e1                                      mov r0, r4
00615680  f3 51 01 eb                                      bl #0x669e54
00615684  00 00 50 e3                                      cmp r0, #0
00615688  02 00 00 1a                                      bne #0x615698
0061568c  00 50 86 e5                                      str r5, [r6]
00615690  10 d0 8d e2                                      add sp, sp, #0x10
00615694  70 80 bd e8                                      pop {r4, r5, r6, pc}
00615698  04 00 a0 e1                                      mov r0, r4
0061569c  f1 51 01 eb                                      bl #0x669e68
006156a0  00 00 50 e3                                      cmp r0, #0
006156a4  f8 ff ff 0a                                      beq #0x61568c
006156a8  04 00 a0 e1                                      mov r0, r4
006156ac  ed 51 01 eb                                      bl #0x669e68
006156b0  00 20 90 e5                                      ldr r2, [r0]
006156b4  06 30 a0 e1                                      mov r3, r6
006156b8  04 20 83 e4                                      str r2, [r3], #4
006156bc  04 50 86 e5                                      str r5, [r6, #4]
006156c0  08 20 90 e5                                      ldr r2, [r0, #8]
006156c4  04 20 83 e5                                      str r2, [r3, #4]
006156c8  f0 ff ff ea                                      b #0x615690

; FUNCTION 0x006156dc, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006156dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006156e0  00 40 a0 e1                                      mov r4, r0
006156e4  14 d0 4d e2                                      sub sp, sp, #0x14
006156e8  01 50 a0 e1                                      mov r5, r1
006156ec  04 00 8d e2                                      add r0, sp, #4
006156f0  04 10 a0 e1                                      mov r1, r4
006156f4  02 60 a0 e1                                      mov r6, r2
006156f8  03 90 a0 e1                                      mov sb, r3
006156fc  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00615700  a8 f9 ff eb                                      bl #0x613da8
00615704  04 30 9d e5                                      ldr r3, [sp, #4]
00615708  85 50 a0 e1                                      lsl r5, r5, #1
0061570c  86 60 a0 e1                                      lsl r6, r6, #1
00615710  04 80 93 e5                                      ldr r8, [r3, #4]
00615714  08 30 9d e5                                      ldr r3, [sp, #8]
00615718  f5 00 98 e1                                      ldrsh r0, [r8, r5]
0061571c  00 b0 93 e5                                      ldr fp, [r3]
00615720  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615724  00 70 93 e5                                      ldr r7, [r3]
00615728  8d e4 f3 eb                                      bl #0x30e964
0061572c  0b 10 a0 e1                                      mov r1, fp
00615730  8d e5 f3 eb                                      bl #0x30ed6c
00615734  07 10 a0 e1                                      mov r1, r7
00615738  19 e5 f3 eb                                      bl #0x30eba4
0061573c  00 50 a0 e1                                      mov r5, r0
00615740  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00615744  86 e4 f3 eb                                      bl #0x30e964
00615748  00 10 a0 e1                                      mov r1, r0
0061574c  0b 00 a0 e1                                      mov r0, fp
00615750  85 e5 f3 eb                                      bl #0x30ed6c
00615754  00 10 a0 e1                                      mov r1, r0
00615758  07 00 a0 e1                                      mov r0, r7
0061575c  10 e5 f3 eb                                      bl #0x30eba4
00615760  00 70 a0 e1                                      mov r7, r0
00615764  04 00 a0 e1                                      mov r0, r4
00615768  b9 51 01 eb                                      bl #0x669e54
0061576c  00 00 50 e3                                      cmp r0, #0
00615770  13 00 00 0a                                      beq #0x6157c4
00615774  04 00 a0 e1                                      mov r0, r4
00615778  ba 51 01 eb                                      bl #0x669e68
0061577c  00 30 90 e5                                      ldr r3, [r0]
00615780  0a 60 a0 e1                                      mov r6, sl
00615784  05 10 a0 e1                                      mov r1, r5
00615788  04 30 86 e4                                      str r3, [r6], #4
0061578c  07 00 a0 e1                                      mov r0, r7
00615790  05 e3 f3 eb                                      bl #0x30e3ac
00615794  00 10 a0 e1                                      mov r1, r0
00615798  09 00 a0 e1                                      mov r0, sb
0061579c  72 e5 f3 eb                                      bl #0x30ed6c
006157a0  05 10 a0 e1                                      mov r1, r5
006157a4  fe e4 f3 eb                                      bl #0x30eba4
006157a8  04 00 8a e5                                      str r0, [sl, #4]
006157ac  04 00 a0 e1                                      mov r0, r4
006157b0  ac 51 01 eb                                      bl #0x669e68
006157b4  08 30 90 e5                                      ldr r3, [r0, #8]
006157b8  04 30 86 e5                                      str r3, [r6, #4]
006157bc  14 d0 8d e2                                      add sp, sp, #0x14
006157c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006157c4  05 10 a0 e1                                      mov r1, r5
006157c8  07 00 a0 e1                                      mov r0, r7
006157cc  f6 e2 f3 eb                                      bl #0x30e3ac
006157d0  00 10 a0 e1                                      mov r1, r0
006157d4  09 00 a0 e1                                      mov r0, sb
006157d8  63 e5 f3 eb                                      bl #0x30ed6c
006157dc  05 10 a0 e1                                      mov r1, r5
006157e0  ef e4 f3 eb                                      bl #0x30eba4
006157e4  00 00 8a e5                                      str r0, [sl]
006157e8  f3 ff ff ea                                      b #0x6157bc

; FUNCTION 0x00615808, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00615808  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061580c  00 40 a0 e1                                      mov r4, r0
00615810  10 d0 4d e2                                      sub sp, sp, #0x10
00615814  01 50 a0 e1                                      mov r5, r1
00615818  04 00 8d e2                                      add r0, sp, #4
0061581c  04 10 a0 e1                                      mov r1, r4
00615820  02 60 a0 e1                                      mov r6, r2
00615824  03 a0 a0 e1                                      mov sl, r3
00615828  5e f9 ff eb                                      bl #0x613da8
0061582c  04 30 9d e5                                      ldr r3, [sp, #4]
00615830  86 60 a0 e1                                      lsl r6, r6, #1
00615834  85 50 a0 e1                                      lsl r5, r5, #1
00615838  04 80 93 e5                                      ldr r8, [r3, #4]
0061583c  08 30 9d e5                                      ldr r3, [sp, #8]
00615840  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00615844  00 70 93 e5                                      ldr r7, [r3]
00615848  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061584c  00 60 93 e5                                      ldr r6, [r3]
00615850  43 e4 f3 eb                                      bl #0x30e964
00615854  00 10 a0 e1                                      mov r1, r0
00615858  07 00 a0 e1                                      mov r0, r7
0061585c  42 e5 f3 eb                                      bl #0x30ed6c
00615860  00 10 a0 e1                                      mov r1, r0
00615864  06 00 a0 e1                                      mov r0, r6
00615868  cd e4 f3 eb                                      bl #0x30eba4
0061586c  00 90 a0 e1                                      mov sb, r0
00615870  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00615874  3a e4 f3 eb                                      bl #0x30e964
00615878  07 10 a0 e1                                      mov r1, r7
0061587c  3a e5 f3 eb                                      bl #0x30ed6c
00615880  06 10 a0 e1                                      mov r1, r6
00615884  c6 e4 f3 eb                                      bl #0x30eba4
00615888  00 10 a0 e1                                      mov r1, r0
0061588c  09 00 a0 e1                                      mov r0, sb
00615890  c5 e2 f3 eb                                      bl #0x30e3ac
00615894  00 50 a0 e1                                      mov r5, r0
00615898  04 00 a0 e1                                      mov r0, r4
0061589c  6c 51 01 eb                                      bl #0x669e54
006158a0  00 00 50 e3                                      cmp r0, #0
006158a4  00 50 8a 05                                      streq r5, [sl]
006158a8  01 00 00 1a                                      bne #0x6158b4
006158ac  10 d0 8d e2                                      add sp, sp, #0x10
006158b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006158b4  04 00 a0 e1                                      mov r0, r4
006158b8  6a 51 01 eb                                      bl #0x669e68
006158bc  00 20 90 e5                                      ldr r2, [r0]
006158c0  0a 30 a0 e1                                      mov r3, sl
006158c4  04 20 83 e4                                      str r2, [r3], #4
006158c8  04 50 8a e5                                      str r5, [sl, #4]
006158cc  08 20 90 e5                                      ldr r2, [r0, #8]
006158d0  04 20 83 e5                                      str r2, [r3, #4]
006158d4  f4 ff ff ea                                      b #0x6158ac

; FUNCTION 0x006158ec, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIsEEfLi3ENS1_17SUseDefaultValuesILi1EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006158ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006158f0  00 40 a0 e1                                      mov r4, r0
006158f4  14 d0 4d e2                                      sub sp, sp, #0x14
006158f8  01 50 a0 e1                                      mov r5, r1
006158fc  04 00 8d e2                                      add r0, sp, #4
00615900  04 10 a0 e1                                      mov r1, r4
00615904  02 60 a0 e1                                      mov r6, r2
00615908  03 90 a0 e1                                      mov sb, r3
0061590c  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
00615910  24 f9 ff eb                                      bl #0x613da8
00615914  04 30 9d e5                                      ldr r3, [sp, #4]
00615918  85 50 a0 e1                                      lsl r5, r5, #1
0061591c  86 60 a0 e1                                      lsl r6, r6, #1
00615920  04 80 93 e5                                      ldr r8, [r3, #4]
00615924  08 30 9d e5                                      ldr r3, [sp, #8]
00615928  89 90 a0 e1                                      lsl sb, sb, #1
0061592c  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00615930  00 70 93 e5                                      ldr r7, [r3]
00615934  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615938  00 50 93 e5                                      ldr r5, [r3]
0061593c  08 e4 f3 eb                                      bl #0x30e964
00615940  07 10 a0 e1                                      mov r1, r7
00615944  08 e5 f3 eb                                      bl #0x30ed6c
00615948  05 10 a0 e1                                      mov r1, r5
0061594c  94 e4 f3 eb                                      bl #0x30eba4
00615950  00 b0 a0 e1                                      mov fp, r0
00615954  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00615958  01 e4 f3 eb                                      bl #0x30e964
0061595c  00 10 a0 e1                                      mov r1, r0
00615960  07 00 a0 e1                                      mov r0, r7
00615964  00 e5 f3 eb                                      bl #0x30ed6c
00615968  00 10 a0 e1                                      mov r1, r0
0061596c  05 00 a0 e1                                      mov r0, r5
00615970  8b e4 f3 eb                                      bl #0x30eba4
00615974  0b 10 a0 e1                                      mov r1, fp
00615978  8b e2 f3 eb                                      bl #0x30e3ac
0061597c  00 60 a0 e1                                      mov r6, r0
00615980  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00615984  f6 e3 f3 eb                                      bl #0x30e964
00615988  00 10 a0 e1                                      mov r1, r0
0061598c  07 00 a0 e1                                      mov r0, r7
00615990  f5 e4 f3 eb                                      bl #0x30ed6c
00615994  00 10 a0 e1                                      mov r1, r0
00615998  05 00 a0 e1                                      mov r0, r5
0061599c  80 e4 f3 eb                                      bl #0x30eba4
006159a0  0b 10 a0 e1                                      mov r1, fp
006159a4  80 e2 f3 eb                                      bl #0x30e3ac
006159a8  00 70 a0 e1                                      mov r7, r0
006159ac  04 00 a0 e1                                      mov r0, r4
006159b0  27 51 01 eb                                      bl #0x669e54
006159b4  00 00 50 e3                                      cmp r0, #0
006159b8  0b 00 00 1a                                      bne #0x6159ec
006159bc  06 10 a0 e1                                      mov r1, r6
006159c0  07 00 a0 e1                                      mov r0, r7
006159c4  78 e2 f3 eb                                      bl #0x30e3ac
006159c8  00 10 a0 e1                                      mov r1, r0
006159cc  38 00 9d e5                                      ldr r0, [sp, #0x38]
006159d0  e5 e4 f3 eb                                      bl #0x30ed6c
006159d4  00 10 a0 e1                                      mov r1, r0
006159d8  06 00 a0 e1                                      mov r0, r6
006159dc  70 e4 f3 eb                                      bl #0x30eba4
006159e0  00 00 8a e5                                      str r0, [sl]
006159e4  14 d0 8d e2                                      add sp, sp, #0x14
006159e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006159ec  04 00 a0 e1                                      mov r0, r4
006159f0  1c 51 01 eb                                      bl #0x669e68
006159f4  00 30 90 e5                                      ldr r3, [r0]
006159f8  0a 40 a0 e1                                      mov r4, sl
006159fc  00 50 a0 e1                                      mov r5, r0
00615a00  04 30 84 e4                                      str r3, [r4], #4
00615a04  06 10 a0 e1                                      mov r1, r6
00615a08  07 00 a0 e1                                      mov r0, r7
00615a0c  66 e2 f3 eb                                      bl #0x30e3ac
00615a10  00 10 a0 e1                                      mov r1, r0
00615a14  38 00 9d e5                                      ldr r0, [sp, #0x38]
00615a18  d3 e4 f3 eb                                      bl #0x30ed6c
00615a1c  00 10 a0 e1                                      mov r1, r0
00615a20  06 00 a0 e1                                      mov r0, r6
00615a24  5e e4 f3 eb                                      bl #0x30eba4
00615a28  04 00 8a e5                                      str r0, [sl, #4]
00615a2c  08 30 95 e5                                      ldr r3, [r5, #8]
00615a30  04 30 84 e5                                      str r3, [r4, #4]
00615a34  ea ff ff ea                                      b #0x6159e4
