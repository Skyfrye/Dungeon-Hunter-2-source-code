; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00622ce8, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00622ce8  30 40 2d e9                                      push {r4, r5, lr}
00622cec  00 30 a0 e3                                      mov r3, #0
00622cf0  14 d0 4d e2                                      sub sp, sp, #0x14
00622cf4  01 40 a0 e1                                      mov r4, r1
00622cf8  00 10 a0 e3                                      mov r1, #0
00622cfc  02 50 a0 e1                                      mov r5, r2
00622d00  0c 30 8d e5                                      str r3, [sp, #0xc]
00622d04  04 30 8d e5                                      str r3, [sp, #4]
00622d08  08 30 8d e5                                      str r3, [sp, #8]
00622d0c  44 1c 01 eb                                      bl #0x669e24
00622d10  0c 30 a0 e3                                      mov r3, #0xc
00622d14  93 04 04 e0                                      mul r4, r3, r4
00622d18  04 30 90 e5                                      ldr r3, [r0, #4]
00622d1c  10 20 8d e2                                      add r2, sp, #0x10
00622d20  05 00 a0 e1                                      mov r0, r5
00622d24  04 10 93 e7                                      ldr r1, [r3, r4]
00622d28  04 40 83 e0                                      add r4, r3, r4
00622d2c  00 30 95 e5                                      ldr r3, [r5]
00622d30  0c 10 22 e5                                      str r1, [r2, #-0xc]!
00622d34  04 c0 94 e5                                      ldr ip, [r4, #4]
00622d38  02 10 a0 e1                                      mov r1, r2
00622d3c  08 c0 8d e5                                      str ip, [sp, #8]
00622d40  08 c0 94 e5                                      ldr ip, [r4, #8]
00622d44  08 c0 82 e5                                      str ip, [r2, #8]
00622d48  0f e0 a0 e1                                      mov lr, pc
00622d4c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00622d50  14 d0 8d e2                                      add sp, sp, #0x14
00622d54  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006284a4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006284a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006284a8  01 00 52 e3                                      cmp r2, #1
006284ac  1c d0 4d e2                                      sub sp, sp, #0x1c
006284b0  00 a0 a0 e3                                      mov sl, #0
006284b4  02 40 a0 e1                                      mov r4, r2
006284b8  01 50 a0 e1                                      mov r5, r1
006284bc  04 30 8d e5                                      str r3, [sp, #4]
006284c0  14 a0 8d e5                                      str sl, [sp, #0x14]
006284c4  2b 00 00 0a                                      beq #0x628578
006284c8  00 00 52 e3                                      cmp r2, #0
006284cc  0a b0 a0 01                                      moveq fp, sl
006284d0  0a 90 a0 01                                      moveq sb, sl
006284d4  1d 00 00 0a                                      beq #0x628550
006284d8  00 60 a0 e1                                      mov r6, r0
006284dc  00 80 a0 e3                                      mov r8, #0
006284e0  0a b0 a0 e1                                      mov fp, sl
006284e4  0a 90 a0 e1                                      mov sb, sl
006284e8  08 70 95 e7                                      ldr r7, [r5, r8]
006284ec  00 10 96 e5                                      ldr r1, [r6]
006284f0  04 80 88 e2                                      add r8, r8, #4
006284f4  07 00 a0 e1                                      mov r0, r7
006284f8  1b 9a f3 eb                                      bl #0x30ed6c
006284fc  00 10 a0 e1                                      mov r1, r0
00628500  0a 00 a0 e1                                      mov r0, sl
00628504  a6 99 f3 eb                                      bl #0x30eba4
00628508  04 10 96 e5                                      ldr r1, [r6, #4]
0062850c  00 a0 a0 e1                                      mov sl, r0
00628510  07 00 a0 e1                                      mov r0, r7
00628514  14 9a f3 eb                                      bl #0x30ed6c
00628518  00 10 a0 e1                                      mov r1, r0
0062851c  0b 00 a0 e1                                      mov r0, fp
00628520  9f 99 f3 eb                                      bl #0x30eba4
00628524  08 10 96 e5                                      ldr r1, [r6, #8]
00628528  00 b0 a0 e1                                      mov fp, r0
0062852c  07 00 a0 e1                                      mov r0, r7
00628530  0d 9a f3 eb                                      bl #0x30ed6c
00628534  00 10 a0 e1                                      mov r1, r0
00628538  09 00 a0 e1                                      mov r0, sb
0062853c  98 99 f3 eb                                      bl #0x30eba4
00628540  01 40 54 e2                                      subs r4, r4, #1
00628544  00 90 a0 e1                                      mov sb, r0
00628548  0c 60 86 e2                                      add r6, r6, #0xc
0062854c  e5 ff ff 1a                                      bne #0x6284e8
00628550  18 10 8d e2                                      add r1, sp, #0x18
00628554  0c a0 21 e5                                      str sl, [r1, #-0xc]!
00628558  10 b0 8d e5                                      str fp, [sp, #0x10]
0062855c  08 90 81 e5                                      str sb, [r1, #8]
00628560  04 00 9d e5                                      ldr r0, [sp, #4]
00628564  00 30 90 e5                                      ldr r3, [r0]
00628568  0f e0 a0 e1                                      mov lr, pc
0062856c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628570  1c d0 8d e2                                      add sp, sp, #0x1c
00628574  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00628578  00 30 a0 e1                                      mov r3, r0
0062857c  04 c0 93 e4                                      ldr ip, [r3], #4
00628580  04 20 90 e5                                      ldr r2, [r0, #4]
00628584  18 10 8d e2                                      add r1, sp, #0x18
00628588  04 30 93 e5                                      ldr r3, [r3, #4]
0062858c  0c c0 21 e5                                      str ip, [r1, #-0xc]!
00628590  10 20 8d e5                                      str r2, [sp, #0x10]
00628594  08 30 81 e5                                      str r3, [r1, #8]
00628598  f0 ff ff ea                                      b #0x628560

; FUNCTION 0x006285b8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006285b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006285bc  01 00 52 e3                                      cmp r2, #1
006285c0  1c d0 4d e2                                      sub sp, sp, #0x1c
006285c4  00 a0 a0 e3                                      mov sl, #0
006285c8  02 40 a0 e1                                      mov r4, r2
006285cc  01 50 a0 e1                                      mov r5, r1
006285d0  04 30 8d e5                                      str r3, [sp, #4]
006285d4  14 a0 8d e5                                      str sl, [sp, #0x14]
006285d8  2b 00 00 0a                                      beq #0x62868c
006285dc  00 00 52 e3                                      cmp r2, #0
006285e0  0a b0 a0 01                                      moveq fp, sl
006285e4  0a 90 a0 01                                      moveq sb, sl
006285e8  1d 00 00 0a                                      beq #0x628664
006285ec  00 60 a0 e1                                      mov r6, r0
006285f0  00 80 a0 e3                                      mov r8, #0
006285f4  0a b0 a0 e1                                      mov fp, sl
006285f8  0a 90 a0 e1                                      mov sb, sl
006285fc  08 70 95 e7                                      ldr r7, [r5, r8]
00628600  00 10 96 e5                                      ldr r1, [r6]
00628604  04 80 88 e2                                      add r8, r8, #4
00628608  07 00 a0 e1                                      mov r0, r7
0062860c  d6 99 f3 eb                                      bl #0x30ed6c
00628610  00 10 a0 e1                                      mov r1, r0
00628614  0a 00 a0 e1                                      mov r0, sl
00628618  61 99 f3 eb                                      bl #0x30eba4
0062861c  04 10 96 e5                                      ldr r1, [r6, #4]
00628620  00 a0 a0 e1                                      mov sl, r0
00628624  07 00 a0 e1                                      mov r0, r7
00628628  cf 99 f3 eb                                      bl #0x30ed6c
0062862c  00 10 a0 e1                                      mov r1, r0
00628630  0b 00 a0 e1                                      mov r0, fp
00628634  5a 99 f3 eb                                      bl #0x30eba4
00628638  08 10 96 e5                                      ldr r1, [r6, #8]
0062863c  00 b0 a0 e1                                      mov fp, r0
00628640  07 00 a0 e1                                      mov r0, r7
00628644  c8 99 f3 eb                                      bl #0x30ed6c
00628648  00 10 a0 e1                                      mov r1, r0
0062864c  09 00 a0 e1                                      mov r0, sb
00628650  53 99 f3 eb                                      bl #0x30eba4
00628654  01 40 54 e2                                      subs r4, r4, #1
00628658  00 90 a0 e1                                      mov sb, r0
0062865c  0c 60 86 e2                                      add r6, r6, #0xc
00628660  e5 ff ff 1a                                      bne #0x6285fc
00628664  18 10 8d e2                                      add r1, sp, #0x18
00628668  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062866c  10 b0 8d e5                                      str fp, [sp, #0x10]
00628670  08 90 81 e5                                      str sb, [r1, #8]
00628674  04 00 9d e5                                      ldr r0, [sp, #4]
00628678  00 30 90 e5                                      ldr r3, [r0]
0062867c  0f e0 a0 e1                                      mov lr, pc
00628680  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628684  1c d0 8d e2                                      add sp, sp, #0x1c
00628688  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062868c  00 30 a0 e1                                      mov r3, r0
00628690  04 c0 93 e4                                      ldr ip, [r3], #4
00628694  04 20 90 e5                                      ldr r2, [r0, #4]
00628698  18 10 8d e2                                      add r1, sp, #0x18
0062869c  04 30 93 e5                                      ldr r3, [r3, #4]
006286a0  0c c0 21 e5                                      str ip, [r1, #-0xc]!
006286a4  10 20 8d e5                                      str r2, [sp, #0x10]
006286a8  08 30 81 e5                                      str r3, [r1, #8]
006286ac  f0 ff ff ea                                      b #0x628674

; FUNCTION 0x006287cc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_23CSceneNodePositionMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodePositionMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006287cc  30 40 2d e9                                      push {r4, r5, lr}
006287d0  1c d0 4d e2                                      sub sp, sp, #0x1c
006287d4  28 40 9d e5                                      ldr r4, [sp, #0x28]
006287d8  00 c0 a0 e3                                      mov ip, #0
006287dc  0c 50 8d e2                                      add r5, sp, #0xc
006287e0  00 50 8d e5                                      str r5, [sp]
006287e4  14 c0 8d e5                                      str ip, [sp, #0x14]
006287e8  0c c0 8d e5                                      str ip, [sp, #0xc]
006287ec  10 c0 8d e5                                      str ip, [sp, #0x10]
006287f0  b5 ff ff eb                                      bl #0x6286cc
006287f4  04 00 a0 e1                                      mov r0, r4
006287f8  05 10 a0 e1                                      mov r1, r5
006287fc  00 30 94 e5                                      ldr r3, [r4]
00628800  0f e0 a0 e1                                      mov lr, pc
00628804  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00628808  1c d0 8d e2                                      add sp, sp, #0x1c
0062880c  30 80 bd e8                                      pop {r4, r5, pc}
