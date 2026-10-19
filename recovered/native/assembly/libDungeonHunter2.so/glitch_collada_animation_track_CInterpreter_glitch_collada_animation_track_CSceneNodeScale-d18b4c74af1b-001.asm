; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006177a4, declared_size=160, range_size=160, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
006177a4  70 40 2d e9                                      push {r4, r5, r6, lr}
006177a8  00 40 a0 e1                                      mov r4, r0
006177ac  10 d0 4d e2                                      sub sp, sp, #0x10
006177b0  01 50 a0 e1                                      mov r5, r1
006177b4  04 00 8d e2                                      add r0, sp, #4
006177b8  04 10 a0 e1                                      mov r1, r4
006177bc  02 60 a0 e1                                      mov r6, r2
006177c0  78 f1 ff eb                                      bl #0x613da8
006177c4  04 30 9d e5                                      ldr r3, [sp, #4]
006177c8  85 50 a0 e1                                      lsl r5, r5, #1
006177cc  04 30 93 e5                                      ldr r3, [r3, #4]
006177d0  f5 00 93 e1                                      ldrsh r0, [r3, r5]
006177d4  62 dc f3 eb                                      bl #0x30e964
006177d8  08 30 9d e5                                      ldr r3, [sp, #8]
006177dc  00 10 93 e5                                      ldr r1, [r3]
006177e0  61 dd f3 eb                                      bl #0x30ed6c
006177e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006177e8  00 10 93 e5                                      ldr r1, [r3]
006177ec  ec dc f3 eb                                      bl #0x30eba4
006177f0  00 50 a0 e1                                      mov r5, r0
006177f4  04 00 a0 e1                                      mov r0, r4
006177f8  95 49 01 eb                                      bl #0x669e54
006177fc  00 00 50 e3                                      cmp r0, #0
00617800  02 00 00 1a                                      bne #0x617810
00617804  00 50 86 e5                                      str r5, [r6]
00617808  10 d0 8d e2                                      add sp, sp, #0x10
0061780c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00617810  04 00 a0 e1                                      mov r0, r4
00617814  93 49 01 eb                                      bl #0x669e68
00617818  00 00 50 e3                                      cmp r0, #0
0061781c  f8 ff ff 0a                                      beq #0x617804
00617820  04 00 a0 e1                                      mov r0, r4
00617824  8f 49 01 eb                                      bl #0x669e68
00617828  00 20 90 e5                                      ldr r2, [r0]
0061782c  06 30 a0 e1                                      mov r3, r6
00617830  04 20 83 e4                                      str r2, [r3], #4
00617834  04 20 90 e5                                      ldr r2, [r0, #4]
00617838  04 20 86 e5                                      str r2, [r6, #4]
0061783c  04 50 83 e5                                      str r5, [r3, #4]
00617840  f0 ff ff ea                                      b #0x617808

; FUNCTION 0x00617854, declared_size=268, range_size=268, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00617854  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617858  00 40 a0 e1                                      mov r4, r0
0061785c  14 d0 4d e2                                      sub sp, sp, #0x14
00617860  01 50 a0 e1                                      mov r5, r1
00617864  04 00 8d e2                                      add r0, sp, #4
00617868  04 10 a0 e1                                      mov r1, r4
0061786c  02 60 a0 e1                                      mov r6, r2
00617870  03 90 a0 e1                                      mov sb, r3
00617874  38 70 9d e5                                      ldr r7, [sp, #0x38]
00617878  4a f1 ff eb                                      bl #0x613da8
0061787c  04 30 9d e5                                      ldr r3, [sp, #4]
00617880  85 50 a0 e1                                      lsl r5, r5, #1
00617884  86 60 a0 e1                                      lsl r6, r6, #1
00617888  04 a0 93 e5                                      ldr sl, [r3, #4]
0061788c  08 30 9d e5                                      ldr r3, [sp, #8]
00617890  f5 00 9a e1                                      ldrsh r0, [sl, r5]
00617894  00 b0 93 e5                                      ldr fp, [r3]
00617898  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061789c  00 80 93 e5                                      ldr r8, [r3]
006178a0  2f dc f3 eb                                      bl #0x30e964
006178a4  0b 10 a0 e1                                      mov r1, fp
006178a8  2f dd f3 eb                                      bl #0x30ed6c
006178ac  08 10 a0 e1                                      mov r1, r8
006178b0  bb dc f3 eb                                      bl #0x30eba4
006178b4  00 50 a0 e1                                      mov r5, r0
006178b8  f6 00 9a e1                                      ldrsh r0, [sl, r6]
006178bc  28 dc f3 eb                                      bl #0x30e964
006178c0  00 10 a0 e1                                      mov r1, r0
006178c4  0b 00 a0 e1                                      mov r0, fp
006178c8  27 dd f3 eb                                      bl #0x30ed6c
006178cc  00 10 a0 e1                                      mov r1, r0
006178d0  08 00 a0 e1                                      mov r0, r8
006178d4  b2 dc f3 eb                                      bl #0x30eba4
006178d8  00 60 a0 e1                                      mov r6, r0
006178dc  04 00 a0 e1                                      mov r0, r4
006178e0  5b 49 01 eb                                      bl #0x669e54
006178e4  00 00 50 e3                                      cmp r0, #0
006178e8  12 00 00 0a                                      beq #0x617938
006178ec  04 00 a0 e1                                      mov r0, r4
006178f0  5c 49 01 eb                                      bl #0x669e68
006178f4  00 30 90 e5                                      ldr r3, [r0]
006178f8  04 00 a0 e1                                      mov r0, r4
006178fc  00 30 87 e5                                      str r3, [r7]
00617900  58 49 01 eb                                      bl #0x669e68
00617904  04 30 90 e5                                      ldr r3, [r0, #4]
00617908  05 10 a0 e1                                      mov r1, r5
0061790c  06 00 a0 e1                                      mov r0, r6
00617910  04 30 87 e5                                      str r3, [r7, #4]
00617914  a4 da f3 eb                                      bl #0x30e3ac
00617918  00 10 a0 e1                                      mov r1, r0
0061791c  09 00 a0 e1                                      mov r0, sb
00617920  11 dd f3 eb                                      bl #0x30ed6c
00617924  05 10 a0 e1                                      mov r1, r5
00617928  9d dc f3 eb                                      bl #0x30eba4
0061792c  08 00 87 e5                                      str r0, [r7, #8]
00617930  14 d0 8d e2                                      add sp, sp, #0x14
00617934  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617938  05 10 a0 e1                                      mov r1, r5
0061793c  06 00 a0 e1                                      mov r0, r6
00617940  99 da f3 eb                                      bl #0x30e3ac
00617944  00 10 a0 e1                                      mov r1, r0
00617948  09 00 a0 e1                                      mov r0, sb
0061794c  06 dd f3 eb                                      bl #0x30ed6c
00617950  05 10 a0 e1                                      mov r1, r5
00617954  92 dc f3 eb                                      bl #0x30eba4
00617958  00 00 87 e5                                      str r0, [r7]
0061795c  f3 ff ff ea                                      b #0x617930

; FUNCTION 0x0061797c, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
0061797c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00617980  00 40 a0 e1                                      mov r4, r0
00617984  10 d0 4d e2                                      sub sp, sp, #0x10
00617988  01 50 a0 e1                                      mov r5, r1
0061798c  04 00 8d e2                                      add r0, sp, #4
00617990  04 10 a0 e1                                      mov r1, r4
00617994  02 60 a0 e1                                      mov r6, r2
00617998  03 a0 a0 e1                                      mov sl, r3
0061799c  01 f1 ff eb                                      bl #0x613da8
006179a0  04 30 9d e5                                      ldr r3, [sp, #4]
006179a4  86 60 a0 e1                                      lsl r6, r6, #1
006179a8  85 50 a0 e1                                      lsl r5, r5, #1
006179ac  04 80 93 e5                                      ldr r8, [r3, #4]
006179b0  08 30 9d e5                                      ldr r3, [sp, #8]
006179b4  f6 00 98 e1                                      ldrsh r0, [r8, r6]
006179b8  00 70 93 e5                                      ldr r7, [r3]
006179bc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006179c0  00 60 93 e5                                      ldr r6, [r3]
006179c4  e6 db f3 eb                                      bl #0x30e964
006179c8  00 10 a0 e1                                      mov r1, r0
006179cc  07 00 a0 e1                                      mov r0, r7
006179d0  e5 dc f3 eb                                      bl #0x30ed6c
006179d4  00 10 a0 e1                                      mov r1, r0
006179d8  06 00 a0 e1                                      mov r0, r6
006179dc  70 dc f3 eb                                      bl #0x30eba4
006179e0  00 90 a0 e1                                      mov sb, r0
006179e4  f5 00 98 e1                                      ldrsh r0, [r8, r5]
006179e8  dd db f3 eb                                      bl #0x30e964
006179ec  07 10 a0 e1                                      mov r1, r7
006179f0  dd dc f3 eb                                      bl #0x30ed6c
006179f4  06 10 a0 e1                                      mov r1, r6
006179f8  69 dc f3 eb                                      bl #0x30eba4
006179fc  00 10 a0 e1                                      mov r1, r0
00617a00  09 00 a0 e1                                      mov r0, sb
00617a04  68 da f3 eb                                      bl #0x30e3ac
00617a08  00 50 a0 e1                                      mov r5, r0
00617a0c  04 00 a0 e1                                      mov r0, r4
00617a10  0f 49 01 eb                                      bl #0x669e54
00617a14  00 00 50 e3                                      cmp r0, #0
00617a18  00 50 8a 05                                      streq r5, [sl]
00617a1c  01 00 00 1a                                      bne #0x617a28
00617a20  10 d0 8d e2                                      add sp, sp, #0x10
00617a24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00617a28  04 00 a0 e1                                      mov r0, r4
00617a2c  0d 49 01 eb                                      bl #0x669e68
00617a30  00 20 90 e5                                      ldr r2, [r0]
00617a34  0a 30 a0 e1                                      mov r3, sl
00617a38  04 20 83 e4                                      str r2, [r3], #4
00617a3c  04 20 90 e5                                      ldr r2, [r0, #4]
00617a40  04 20 8a e5                                      str r2, [sl, #4]
00617a44  04 50 83 e5                                      str r5, [r3, #4]
00617a48  f4 ff ff ea                                      b #0x617a20

; FUNCTION 0x00617a60, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIsEEfLi3ENS1_17SUseDefaultValuesILi2EsEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<short>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, short> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00617a60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617a64  00 40 a0 e1                                      mov r4, r0
00617a68  14 d0 4d e2                                      sub sp, sp, #0x14
00617a6c  01 50 a0 e1                                      mov r5, r1
00617a70  04 00 8d e2                                      add r0, sp, #4
00617a74  04 10 a0 e1                                      mov r1, r4
00617a78  02 60 a0 e1                                      mov r6, r2
00617a7c  03 90 a0 e1                                      mov sb, r3
00617a80  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
00617a84  c7 f0 ff eb                                      bl #0x613da8
00617a88  04 30 9d e5                                      ldr r3, [sp, #4]
00617a8c  85 50 a0 e1                                      lsl r5, r5, #1
00617a90  86 60 a0 e1                                      lsl r6, r6, #1
00617a94  04 80 93 e5                                      ldr r8, [r3, #4]
00617a98  08 30 9d e5                                      ldr r3, [sp, #8]
00617a9c  89 90 a0 e1                                      lsl sb, sb, #1
00617aa0  f5 00 98 e1                                      ldrsh r0, [r8, r5]
00617aa4  00 70 93 e5                                      ldr r7, [r3]
00617aa8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617aac  00 50 93 e5                                      ldr r5, [r3]
00617ab0  ab db f3 eb                                      bl #0x30e964
00617ab4  07 10 a0 e1                                      mov r1, r7
00617ab8  ab dc f3 eb                                      bl #0x30ed6c
00617abc  05 10 a0 e1                                      mov r1, r5
00617ac0  37 dc f3 eb                                      bl #0x30eba4
00617ac4  00 b0 a0 e1                                      mov fp, r0
00617ac8  f6 00 98 e1                                      ldrsh r0, [r8, r6]
00617acc  a4 db f3 eb                                      bl #0x30e964
00617ad0  00 10 a0 e1                                      mov r1, r0
00617ad4  07 00 a0 e1                                      mov r0, r7
00617ad8  a3 dc f3 eb                                      bl #0x30ed6c
00617adc  00 10 a0 e1                                      mov r1, r0
00617ae0  05 00 a0 e1                                      mov r0, r5
00617ae4  2e dc f3 eb                                      bl #0x30eba4
00617ae8  0b 10 a0 e1                                      mov r1, fp
00617aec  2e da f3 eb                                      bl #0x30e3ac
00617af0  00 60 a0 e1                                      mov r6, r0
00617af4  f9 00 98 e1                                      ldrsh r0, [r8, sb]
00617af8  99 db f3 eb                                      bl #0x30e964
00617afc  00 10 a0 e1                                      mov r1, r0
00617b00  07 00 a0 e1                                      mov r0, r7
00617b04  98 dc f3 eb                                      bl #0x30ed6c
00617b08  00 10 a0 e1                                      mov r1, r0
00617b0c  05 00 a0 e1                                      mov r0, r5
00617b10  23 dc f3 eb                                      bl #0x30eba4
00617b14  0b 10 a0 e1                                      mov r1, fp
00617b18  23 da f3 eb                                      bl #0x30e3ac
00617b1c  00 50 a0 e1                                      mov r5, r0
00617b20  04 00 a0 e1                                      mov r0, r4
00617b24  ca 48 01 eb                                      bl #0x669e54
00617b28  00 00 50 e3                                      cmp r0, #0
00617b2c  0b 00 00 1a                                      bne #0x617b60
00617b30  06 10 a0 e1                                      mov r1, r6
00617b34  05 00 a0 e1                                      mov r0, r5
00617b38  1b da f3 eb                                      bl #0x30e3ac
00617b3c  00 10 a0 e1                                      mov r1, r0
00617b40  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617b44  88 dc f3 eb                                      bl #0x30ed6c
00617b48  00 10 a0 e1                                      mov r1, r0
00617b4c  06 00 a0 e1                                      mov r0, r6
00617b50  13 dc f3 eb                                      bl #0x30eba4
00617b54  00 00 8a e5                                      str r0, [sl]
00617b58  14 d0 8d e2                                      add sp, sp, #0x14
00617b5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617b60  04 00 a0 e1                                      mov r0, r4
00617b64  bf 48 01 eb                                      bl #0x669e68
00617b68  00 20 90 e5                                      ldr r2, [r0]
00617b6c  0a 40 a0 e1                                      mov r4, sl
00617b70  00 30 a0 e1                                      mov r3, r0
00617b74  04 20 84 e4                                      str r2, [r4], #4
00617b78  04 30 93 e5                                      ldr r3, [r3, #4]
00617b7c  06 10 a0 e1                                      mov r1, r6
00617b80  05 00 a0 e1                                      mov r0, r5
00617b84  04 30 8a e5                                      str r3, [sl, #4]
00617b88  07 da f3 eb                                      bl #0x30e3ac
00617b8c  00 10 a0 e1                                      mov r1, r0
00617b90  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617b94  74 dc f3 eb                                      bl #0x30ed6c
00617b98  00 10 a0 e1                                      mov r1, r0
00617b9c  06 00 a0 e1                                      mov r0, r6
00617ba0  ff db f3 eb                                      bl #0x30eba4
00617ba4  04 00 84 e5                                      str r0, [r4, #4]
00617ba8  ea ff ff ea                                      b #0x617b58
