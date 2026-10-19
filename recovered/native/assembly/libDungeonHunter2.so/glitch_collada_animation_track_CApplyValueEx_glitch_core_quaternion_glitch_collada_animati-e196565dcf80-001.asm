; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061844c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0061844c  30 40 2d e9                                      push {r4, r5, lr}
00618450  1c d0 4d e2                                      sub sp, sp, #0x1c
00618454  28 40 9d e5                                      ldr r4, [sp, #0x28]
00618458  00 c0 a0 e3                                      mov ip, #0
0061845c  08 50 8d e2                                      add r5, sp, #8
00618460  fe e5 a0 e3                                      mov lr, #0x3f800000
00618464  10 c0 8d e5                                      str ip, [sp, #0x10]
00618468  14 e0 8d e5                                      str lr, [sp, #0x14]
0061846c  08 c0 8d e5                                      str ip, [sp, #8]
00618470  0c c0 8d e5                                      str ip, [sp, #0xc]
00618474  00 50 8d e5                                      str r5, [sp]
00618478  e4 ff ff eb                                      bl #0x618410
0061847c  04 00 a0 e1                                      mov r0, r4
00618480  05 10 a0 e1                                      mov r1, r5
00618484  00 30 94 e5                                      ldr r3, [r4]
00618488  0f e0 a0 e1                                      mov lr, pc
0061848c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00618490  1c d0 8d e2                                      add sp, sp, #0x1c
00618494  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620b70, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620b70  30 40 2d e9                                      push {r4, r5, lr}
00620b74  14 d0 4d e2                                      sub sp, sp, #0x14
00620b78  00 c0 a0 e3                                      mov ip, #0
00620b7c  03 40 a0 e1                                      mov r4, r3
00620b80  fe e5 a0 e3                                      mov lr, #0x3f800000
00620b84  0d 30 a0 e1                                      mov r3, sp
00620b88  08 c0 8d e5                                      str ip, [sp, #8]
00620b8c  0c e0 8d e5                                      str lr, [sp, #0xc]
00620b90  00 c0 8d e5                                      str ip, [sp]
00620b94  04 c0 8d e5                                      str ip, [sp, #4]
00620b98  4d c9 ff eb                                      bl #0x6130d4
00620b9c  04 00 a0 e1                                      mov r0, r4
00620ba0  0d 10 a0 e1                                      mov r1, sp
00620ba4  00 30 94 e5                                      ldr r3, [r4]
00620ba8  0d 50 a0 e1                                      mov r5, sp
00620bac  0f e0 a0 e1                                      mov lr, pc
00620bb0  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620bb4  14 d0 8d e2                                      add sp, sp, #0x14
00620bb8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620de0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620de0  30 40 2d e9                                      push {r4, r5, lr}
00620de4  14 d0 4d e2                                      sub sp, sp, #0x14
00620de8  00 c0 a0 e3                                      mov ip, #0
00620dec  03 40 a0 e1                                      mov r4, r3
00620df0  fe e5 a0 e3                                      mov lr, #0x3f800000
00620df4  0d 30 a0 e1                                      mov r3, sp
00620df8  08 c0 8d e5                                      str ip, [sp, #8]
00620dfc  0c e0 8d e5                                      str lr, [sp, #0xc]
00620e00  00 c0 8d e5                                      str ip, [sp]
00620e04  04 c0 8d e5                                      str ip, [sp, #4]
00620e08  5a c9 ff eb                                      bl #0x613378
00620e0c  04 00 a0 e1                                      mov r0, r4
00620e10  0d 10 a0 e1                                      mov r1, sp
00620e14  00 30 94 e5                                      ldr r3, [r4]
00620e18  0d 50 a0 e1                                      mov r5, sp
00620e1c  0f e0 a0 e1                                      mov lr, pc
00620e20  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620e24  14 d0 8d e2                                      add sp, sp, #0x14
00620e28  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00621188, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621188  30 40 2d e9                                      push {r4, r5, lr}
0062118c  14 d0 4d e2                                      sub sp, sp, #0x14
00621190  00 30 a0 e3                                      mov r3, #0
00621194  02 40 a0 e1                                      mov r4, r2
00621198  fe c5 a0 e3                                      mov ip, #0x3f800000
0062119c  0d 20 a0 e1                                      mov r2, sp
006211a0  08 30 8d e5                                      str r3, [sp, #8]
006211a4  00 30 8d e5                                      str r3, [sp]
006211a8  04 30 8d e5                                      str r3, [sp, #4]
006211ac  0c c0 8d e5                                      str ip, [sp, #0xc]
006211b0  82 dc ff eb                                      bl #0x6183c0
006211b4  04 00 a0 e1                                      mov r0, r4
006211b8  0d 10 a0 e1                                      mov r1, sp
006211bc  00 30 94 e5                                      ldr r3, [r4]
006211c0  0d 50 a0 e1                                      mov r5, sp
006211c4  0f e0 a0 e1                                      mov lr, pc
006211c8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006211cc  14 d0 8d e2                                      add sp, sp, #0x14
006211d0  30 80 bd e8                                      pop {r4, r5, pc}
