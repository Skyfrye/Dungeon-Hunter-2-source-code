; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622edc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622edc  30 40 2d e9                                      push {r4, r5, lr}
00622ee0  14 d0 4d e2                                      sub sp, sp, #0x14
00622ee4  04 50 8d e2                                      add r5, sp, #4
00622ee8  00 30 a0 e3                                      mov r3, #0
00622eec  02 40 a0 e1                                      mov r4, r2
00622ef0  05 20 a0 e1                                      mov r2, r5
00622ef4  0c 30 8d e5                                      str r3, [sp, #0xc]
00622ef8  04 30 8d e5                                      str r3, [sp, #4]
00622efc  08 30 8d e5                                      str r3, [sp, #8]
00622f00  b9 c7 ff eb                                      bl #0x614dec
00622f04  04 00 a0 e1                                      mov r0, r4
00622f08  05 10 a0 e1                                      mov r1, r5
00622f0c  00 30 94 e5                                      ldr r3, [r4]
00622f10  0f e0 a0 e1                                      mov lr, pc
00622f14  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622f18  14 d0 8d e2                                      add sp, sp, #0x14
00622f1c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00622f34, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622f34  30 40 2d e9                                      push {r4, r5, lr}
00622f38  1c d0 4d e2                                      sub sp, sp, #0x1c
00622f3c  28 40 9d e5                                      ldr r4, [sp, #0x28]
00622f40  00 c0 a0 e3                                      mov ip, #0
00622f44  0c 50 8d e2                                      add r5, sp, #0xc
00622f48  00 50 8d e5                                      str r5, [sp]
00622f4c  14 c0 8d e5                                      str ip, [sp, #0x14]
00622f50  0c c0 8d e5                                      str ip, [sp, #0xc]
00622f54  10 c0 8d e5                                      str ip, [sp, #0x10]
00622f58  cf c7 ff eb                                      bl #0x614e9c
00622f5c  04 00 a0 e1                                      mov r0, r4
00622f60  05 10 a0 e1                                      mov r1, r5
00622f64  00 30 94 e5                                      ldr r3, [r4]
00622f68  0f e0 a0 e1                                      mov lr, pc
00622f6c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622f70  1c d0 8d e2                                      add sp, sp, #0x1c
00622f74  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006297f4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE19applyBlendedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006297f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006297f8  01 00 52 e3                                      cmp r2, #1
006297fc  1c d0 4d e2                                      sub sp, sp, #0x1c
00629800  00 a0 a0 e3                                      mov sl, #0
00629804  02 40 a0 e1                                      mov r4, r2
00629808  01 50 a0 e1                                      mov r5, r1
0062980c  04 30 8d e5                                      str r3, [sp, #4]
00629810  14 a0 8d e5                                      str sl, [sp, #0x14]
00629814  2b 00 00 0a                                      beq #0x6298c8
00629818  00 00 52 e3                                      cmp r2, #0
0062981c  0a b0 a0 01                                      moveq fp, sl
00629820  0a 90 a0 01                                      moveq sb, sl
00629824  1d 00 00 0a                                      beq #0x6298a0
00629828  00 60 a0 e1                                      mov r6, r0
0062982c  00 80 a0 e3                                      mov r8, #0
00629830  0a b0 a0 e1                                      mov fp, sl
00629834  0a 90 a0 e1                                      mov sb, sl
00629838  08 70 95 e7                                      ldr r7, [r5, r8]
0062983c  00 10 96 e5                                      ldr r1, [r6]
00629840  04 80 88 e2                                      add r8, r8, #4
00629844  07 00 a0 e1                                      mov r0, r7
00629848  47 95 f3 eb                                      bl #0x30ed6c
0062984c  00 10 a0 e1                                      mov r1, r0
00629850  0a 00 a0 e1                                      mov r0, sl
00629854  d2 94 f3 eb                                      bl #0x30eba4
00629858  04 10 96 e5                                      ldr r1, [r6, #4]
0062985c  00 a0 a0 e1                                      mov sl, r0
00629860  07 00 a0 e1                                      mov r0, r7
00629864  40 95 f3 eb                                      bl #0x30ed6c
00629868  00 10 a0 e1                                      mov r1, r0
0062986c  0b 00 a0 e1                                      mov r0, fp
00629870  cb 94 f3 eb                                      bl #0x30eba4
00629874  08 10 96 e5                                      ldr r1, [r6, #8]
00629878  00 b0 a0 e1                                      mov fp, r0
0062987c  07 00 a0 e1                                      mov r0, r7
00629880  39 95 f3 eb                                      bl #0x30ed6c
00629884  00 10 a0 e1                                      mov r1, r0
00629888  09 00 a0 e1                                      mov r0, sb
0062988c  c4 94 f3 eb                                      bl #0x30eba4
00629890  01 40 54 e2                                      subs r4, r4, #1
00629894  00 90 a0 e1                                      mov sb, r0
00629898  0c 60 86 e2                                      add r6, r6, #0xc
0062989c  e5 ff ff 1a                                      bne #0x629838
006298a0  18 10 8d e2                                      add r1, sp, #0x18
006298a4  0c a0 21 e5                                      str sl, [r1, #-0xc]!
006298a8  10 b0 8d e5                                      str fp, [sp, #0x10]
006298ac  08 90 81 e5                                      str sb, [r1, #8]
006298b0  04 00 9d e5                                      ldr r0, [sp, #4]
006298b4  00 30 90 e5                                      ldr r3, [r0]
006298b8  0f e0 a0 e1                                      mov lr, pc
006298bc  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006298c0  1c d0 8d e2                                      add sp, sp, #0x1c
006298c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006298c8  00 30 a0 e1                                      mov r3, r0
006298cc  04 c0 93 e4                                      ldr ip, [r3], #4
006298d0  04 20 90 e5                                      ldr r2, [r0, #4]
006298d4  18 10 8d e2                                      add r1, sp, #0x18
006298d8  04 30 93 e5                                      ldr r3, [r3, #4]
006298dc  0c c0 21 e5                                      str ip, [r1, #-0xc]!
006298e0  10 20 8d e5                                      str r2, [sp, #0x10]
006298e4  08 30 81 e5                                      str r3, [r1, #8]
006298e8  f0 ff ff ea                                      b #0x6298b0

; FUNCTION 0x00629908, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_32CSceneNodePositionComponentMixinINS1_21CSceneNodePositionXExIsEELi0EsEEE17applyAddedValueExEPvPfiSB_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionComponentMixin<glitch::collada::animation_track::CSceneNodePositionXEx<short>, 0, short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00629908  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062990c  01 00 52 e3                                      cmp r2, #1
00629910  1c d0 4d e2                                      sub sp, sp, #0x1c
00629914  00 a0 a0 e3                                      mov sl, #0
00629918  02 40 a0 e1                                      mov r4, r2
0062991c  01 50 a0 e1                                      mov r5, r1
00629920  04 30 8d e5                                      str r3, [sp, #4]
00629924  14 a0 8d e5                                      str sl, [sp, #0x14]
00629928  2b 00 00 0a                                      beq #0x6299dc
0062992c  00 00 52 e3                                      cmp r2, #0
00629930  0a b0 a0 01                                      moveq fp, sl
00629934  0a 90 a0 01                                      moveq sb, sl
00629938  1d 00 00 0a                                      beq #0x6299b4
0062993c  00 60 a0 e1                                      mov r6, r0
00629940  00 80 a0 e3                                      mov r8, #0
00629944  0a b0 a0 e1                                      mov fp, sl
00629948  0a 90 a0 e1                                      mov sb, sl
0062994c  08 70 95 e7                                      ldr r7, [r5, r8]
00629950  00 10 96 e5                                      ldr r1, [r6]
00629954  04 80 88 e2                                      add r8, r8, #4
00629958  07 00 a0 e1                                      mov r0, r7
0062995c  02 95 f3 eb                                      bl #0x30ed6c
00629960  00 10 a0 e1                                      mov r1, r0
00629964  0a 00 a0 e1                                      mov r0, sl
00629968  8d 94 f3 eb                                      bl #0x30eba4
0062996c  04 10 96 e5                                      ldr r1, [r6, #4]
00629970  00 a0 a0 e1                                      mov sl, r0
00629974  07 00 a0 e1                                      mov r0, r7
00629978  fb 94 f3 eb                                      bl #0x30ed6c
0062997c  00 10 a0 e1                                      mov r1, r0
00629980  0b 00 a0 e1                                      mov r0, fp
00629984  86 94 f3 eb                                      bl #0x30eba4
00629988  08 10 96 e5                                      ldr r1, [r6, #8]
0062998c  00 b0 a0 e1                                      mov fp, r0
00629990  07 00 a0 e1                                      mov r0, r7
00629994  f4 94 f3 eb                                      bl #0x30ed6c
00629998  00 10 a0 e1                                      mov r1, r0
0062999c  09 00 a0 e1                                      mov r0, sb
006299a0  7f 94 f3 eb                                      bl #0x30eba4
006299a4  01 40 54 e2                                      subs r4, r4, #1
006299a8  00 90 a0 e1                                      mov sb, r0
006299ac  0c 60 86 e2                                      add r6, r6, #0xc
006299b0  e5 ff ff 1a                                      bne #0x62994c
006299b4  18 10 8d e2                                      add r1, sp, #0x18
006299b8  0c a0 21 e5                                      str sl, [r1, #-0xc]!
006299bc  10 b0 8d e5                                      str fp, [sp, #0x10]
006299c0  08 90 81 e5                                      str sb, [r1, #8]
006299c4  04 00 9d e5                                      ldr r0, [sp, #4]
006299c8  00 30 90 e5                                      ldr r3, [r0]
006299cc  0f e0 a0 e1                                      mov lr, pc
006299d0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
006299d4  1c d0 8d e2                                      add sp, sp, #0x1c
006299d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006299dc  00 30 a0 e1                                      mov r3, r0
006299e0  04 c0 93 e4                                      ldr ip, [r3], #4
006299e4  04 20 90 e5                                      ldr r2, [r0, #4]
006299e8  18 10 8d e2                                      add r1, sp, #0x18
006299ec  04 30 93 e5                                      ldr r3, [r3, #4]
006299f0  0c c0 21 e5                                      str ip, [r1, #-0xc]!
006299f4  10 20 8d e5                                      str r2, [sp, #0x10]
006299f8  08 30 81 e5                                      str r3, [r1, #8]
006299fc  f0 ff ff ea                                      b #0x6299c4
