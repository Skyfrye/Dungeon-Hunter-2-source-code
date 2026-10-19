; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062335c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062335c  30 40 2d e9                                      push {r4, r5, lr}
00623360  14 d0 4d e2                                      sub sp, sp, #0x14
00623364  04 50 8d e2                                      add r5, sp, #4
00623368  00 30 a0 e3                                      mov r3, #0
0062336c  02 40 a0 e1                                      mov r4, r2
00623370  05 20 a0 e1                                      mov r2, r5
00623374  0c 30 8d e5                                      str r3, [sp, #0xc]
00623378  04 30 8d e5                                      str r3, [sp, #4]
0062337c  08 30 8d e5                                      str r3, [sp, #8]
00623380  01 c5 ff eb                                      bl #0x61478c
00623384  04 00 a0 e1                                      mov r0, r4
00623388  05 10 a0 e1                                      mov r1, r5
0062338c  00 30 94 e5                                      ldr r3, [r4]
00623390  0f e0 a0 e1                                      mov lr, pc
00623394  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00623398  14 d0 8d e2                                      add sp, sp, #0x14
0062339c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006280e4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006280e4  30 40 2d e9                                      push {r4, r5, lr}
006280e8  1c d0 4d e2                                      sub sp, sp, #0x1c
006280ec  28 40 9d e5                                      ldr r4, [sp, #0x28]
006280f0  00 c0 a0 e3                                      mov ip, #0
006280f4  0c 50 8d e2                                      add r5, sp, #0xc
006280f8  00 50 8d e5                                      str r5, [sp]
006280fc  14 c0 8d e5                                      str ip, [sp, #0x14]
00628100  0c c0 8d e5                                      str ip, [sp, #0xc]
00628104  10 c0 8d e5                                      str ip, [sp, #0x10]
00628108  9c ff ff eb                                      bl #0x627f80
0062810c  04 00 a0 e1                                      mov r0, r4
00628110  05 10 a0 e1                                      mov r1, r5
00628114  00 30 94 e5                                      ldr r3, [r4]
00628118  0f e0 a0 e1                                      mov lr, pc
0062811c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00628120  1c d0 8d e2                                      add sp, sp, #0x1c
00628124  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0062d1e4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEE19applyBlendedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d1e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d1e8  01 00 52 e3                                      cmp r2, #1
0062d1ec  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d1f0  00 a0 a0 e3                                      mov sl, #0
0062d1f4  02 40 a0 e1                                      mov r4, r2
0062d1f8  01 50 a0 e1                                      mov r5, r1
0062d1fc  04 30 8d e5                                      str r3, [sp, #4]
0062d200  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d204  2b 00 00 0a                                      beq #0x62d2b8
0062d208  00 00 52 e3                                      cmp r2, #0
0062d20c  0a b0 a0 01                                      moveq fp, sl
0062d210  0a 90 a0 01                                      moveq sb, sl
0062d214  1d 00 00 0a                                      beq #0x62d290
0062d218  00 60 a0 e1                                      mov r6, r0
0062d21c  00 80 a0 e3                                      mov r8, #0
0062d220  0a b0 a0 e1                                      mov fp, sl
0062d224  0a 90 a0 e1                                      mov sb, sl
0062d228  08 70 95 e7                                      ldr r7, [r5, r8]
0062d22c  00 10 96 e5                                      ldr r1, [r6]
0062d230  04 80 88 e2                                      add r8, r8, #4
0062d234  07 00 a0 e1                                      mov r0, r7
0062d238  cb 86 f3 eb                                      bl #0x30ed6c
0062d23c  00 10 a0 e1                                      mov r1, r0
0062d240  0a 00 a0 e1                                      mov r0, sl
0062d244  56 86 f3 eb                                      bl #0x30eba4
0062d248  04 10 96 e5                                      ldr r1, [r6, #4]
0062d24c  00 a0 a0 e1                                      mov sl, r0
0062d250  07 00 a0 e1                                      mov r0, r7
0062d254  c4 86 f3 eb                                      bl #0x30ed6c
0062d258  00 10 a0 e1                                      mov r1, r0
0062d25c  0b 00 a0 e1                                      mov r0, fp
0062d260  4f 86 f3 eb                                      bl #0x30eba4
0062d264  08 10 96 e5                                      ldr r1, [r6, #8]
0062d268  00 b0 a0 e1                                      mov fp, r0
0062d26c  07 00 a0 e1                                      mov r0, r7
0062d270  bd 86 f3 eb                                      bl #0x30ed6c
0062d274  00 10 a0 e1                                      mov r1, r0
0062d278  09 00 a0 e1                                      mov r0, sb
0062d27c  48 86 f3 eb                                      bl #0x30eba4
0062d280  01 40 54 e2                                      subs r4, r4, #1
0062d284  00 90 a0 e1                                      mov sb, r0
0062d288  0c 60 86 e2                                      add r6, r6, #0xc
0062d28c  e5 ff ff 1a                                      bne #0x62d228
0062d290  18 10 8d e2                                      add r1, sp, #0x18
0062d294  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d298  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d29c  08 90 81 e5                                      str sb, [r1, #8]
0062d2a0  04 00 9d e5                                      ldr r0, [sp, #4]
0062d2a4  00 30 90 e5                                      ldr r3, [r0]
0062d2a8  0f e0 a0 e1                                      mov lr, pc
0062d2ac  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d2b0  1c d0 8d e2                                      add sp, sp, #0x1c
0062d2b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d2b8  00 30 a0 e1                                      mov r3, r0
0062d2bc  04 c0 93 e4                                      ldr ip, [r3], #4
0062d2c0  04 20 90 e5                                      ldr r2, [r0, #4]
0062d2c4  18 10 8d e2                                      add r1, sp, #0x18
0062d2c8  04 30 93 e5                                      ldr r3, [r3, #4]
0062d2cc  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d2d0  10 20 8d e5                                      str r2, [sp, #0x10]
0062d2d4  08 30 81 e5                                      str r3, [r1, #8]
0062d2d8  f0 ff ff ea                                      b #0x62d2a0

; FUNCTION 0x0062d2f8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core8vector3dIfEENS1_20CSceneNodeScaleMixinIcEEE17applyAddedValueExEPvPfiS9_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::vector3d<float>, glitch::collada::animation_track::CSceneNodeScaleMixin<char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0062d2f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062d2fc  01 00 52 e3                                      cmp r2, #1
0062d300  1c d0 4d e2                                      sub sp, sp, #0x1c
0062d304  00 a0 a0 e3                                      mov sl, #0
0062d308  02 40 a0 e1                                      mov r4, r2
0062d30c  01 50 a0 e1                                      mov r5, r1
0062d310  04 30 8d e5                                      str r3, [sp, #4]
0062d314  14 a0 8d e5                                      str sl, [sp, #0x14]
0062d318  2b 00 00 0a                                      beq #0x62d3cc
0062d31c  00 00 52 e3                                      cmp r2, #0
0062d320  0a b0 a0 01                                      moveq fp, sl
0062d324  0a 90 a0 01                                      moveq sb, sl
0062d328  1d 00 00 0a                                      beq #0x62d3a4
0062d32c  00 60 a0 e1                                      mov r6, r0
0062d330  00 80 a0 e3                                      mov r8, #0
0062d334  0a b0 a0 e1                                      mov fp, sl
0062d338  0a 90 a0 e1                                      mov sb, sl
0062d33c  08 70 95 e7                                      ldr r7, [r5, r8]
0062d340  00 10 96 e5                                      ldr r1, [r6]
0062d344  04 80 88 e2                                      add r8, r8, #4
0062d348  07 00 a0 e1                                      mov r0, r7
0062d34c  86 86 f3 eb                                      bl #0x30ed6c
0062d350  00 10 a0 e1                                      mov r1, r0
0062d354  0a 00 a0 e1                                      mov r0, sl
0062d358  11 86 f3 eb                                      bl #0x30eba4
0062d35c  04 10 96 e5                                      ldr r1, [r6, #4]
0062d360  00 a0 a0 e1                                      mov sl, r0
0062d364  07 00 a0 e1                                      mov r0, r7
0062d368  7f 86 f3 eb                                      bl #0x30ed6c
0062d36c  00 10 a0 e1                                      mov r1, r0
0062d370  0b 00 a0 e1                                      mov r0, fp
0062d374  0a 86 f3 eb                                      bl #0x30eba4
0062d378  08 10 96 e5                                      ldr r1, [r6, #8]
0062d37c  00 b0 a0 e1                                      mov fp, r0
0062d380  07 00 a0 e1                                      mov r0, r7
0062d384  78 86 f3 eb                                      bl #0x30ed6c
0062d388  00 10 a0 e1                                      mov r1, r0
0062d38c  09 00 a0 e1                                      mov r0, sb
0062d390  03 86 f3 eb                                      bl #0x30eba4
0062d394  01 40 54 e2                                      subs r4, r4, #1
0062d398  00 90 a0 e1                                      mov sb, r0
0062d39c  0c 60 86 e2                                      add r6, r6, #0xc
0062d3a0  e5 ff ff 1a                                      bne #0x62d33c
0062d3a4  18 10 8d e2                                      add r1, sp, #0x18
0062d3a8  0c a0 21 e5                                      str sl, [r1, #-0xc]!
0062d3ac  10 b0 8d e5                                      str fp, [sp, #0x10]
0062d3b0  08 90 81 e5                                      str sb, [r1, #8]
0062d3b4  04 00 9d e5                                      ldr r0, [sp, #4]
0062d3b8  00 30 90 e5                                      ldr r3, [r0]
0062d3bc  0f e0 a0 e1                                      mov lr, pc
0062d3c0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0062d3c4  1c d0 8d e2                                      add sp, sp, #0x1c
0062d3c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062d3cc  00 30 a0 e1                                      mov r3, r0
0062d3d0  04 c0 93 e4                                      ldr ip, [r3], #4
0062d3d4  04 20 90 e5                                      ldr r2, [r0, #4]
0062d3d8  18 10 8d e2                                      add r1, sp, #0x18
0062d3dc  04 30 93 e5                                      ldr r3, [r3, #4]
0062d3e0  0c c0 21 e5                                      str ip, [r1, #-0xc]!
0062d3e4  10 20 8d e5                                      str r2, [sp, #0x10]
0062d3e8  08 30 81 e5                                      str r3, [r1, #8]
0062d3ec  f0 ff ff ea                                      b #0x62d3b4
