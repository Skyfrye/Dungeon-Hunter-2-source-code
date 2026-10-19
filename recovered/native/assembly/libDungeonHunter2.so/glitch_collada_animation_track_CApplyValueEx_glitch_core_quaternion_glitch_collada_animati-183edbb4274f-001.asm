; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00620b08, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620b08  30 40 2d e9                                      push {r4, r5, lr}
00620b0c  14 d0 4d e2                                      sub sp, sp, #0x14
00620b10  00 c0 a0 e3                                      mov ip, #0
00620b14  03 40 a0 e1                                      mov r4, r3
00620b18  fe e5 a0 e3                                      mov lr, #0x3f800000
00620b1c  0d 30 a0 e1                                      mov r3, sp
00620b20  08 c0 8d e5                                      str ip, [sp, #8]
00620b24  0c e0 8d e5                                      str lr, [sp, #0xc]
00620b28  00 c0 8d e5                                      str ip, [sp]
00620b2c  04 c0 8d e5                                      str ip, [sp, #4]
00620b30  67 c9 ff eb                                      bl #0x6130d4
00620b34  04 00 a0 e1                                      mov r0, r4
00620b38  0d 10 a0 e1                                      mov r1, sp
00620b3c  00 30 94 e5                                      ldr r3, [r4]
00620b40  0d 50 a0 e1                                      mov r5, sp
00620b44  0f e0 a0 e1                                      mov lr, pc
00620b48  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620b4c  14 d0 8d e2                                      add sp, sp, #0x14
00620b50  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620d78, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620d78  30 40 2d e9                                      push {r4, r5, lr}
00620d7c  14 d0 4d e2                                      sub sp, sp, #0x14
00620d80  00 c0 a0 e3                                      mov ip, #0
00620d84  03 40 a0 e1                                      mov r4, r3
00620d88  fe e5 a0 e3                                      mov lr, #0x3f800000
00620d8c  0d 30 a0 e1                                      mov r3, sp
00620d90  08 c0 8d e5                                      str ip, [sp, #8]
00620d94  0c e0 8d e5                                      str lr, [sp, #0xc]
00620d98  00 c0 8d e5                                      str ip, [sp]
00620d9c  04 c0 8d e5                                      str ip, [sp, #4]
00620da0  74 c9 ff eb                                      bl #0x613378
00620da4  04 00 a0 e1                                      mov r0, r4
00620da8  0d 10 a0 e1                                      mov r1, sp
00620dac  00 30 94 e5                                      ldr r3, [r4]
00620db0  0d 50 a0 e1                                      mov r5, sp
00620db4  0f e0 a0 e1                                      mov lr, pc
00620db8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620dbc  14 d0 8d e2                                      add sp, sp, #0x14
00620dc0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006210b8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006210b8  30 40 2d e9                                      push {r4, r5, lr}
006210bc  14 d0 4d e2                                      sub sp, sp, #0x14
006210c0  00 30 a0 e3                                      mov r3, #0
006210c4  02 40 a0 e1                                      mov r4, r2
006210c8  fe c5 a0 e3                                      mov ip, #0x3f800000
006210cc  0d 20 a0 e1                                      mov r2, sp
006210d0  08 30 8d e5                                      str r3, [sp, #8]
006210d4  00 30 8d e5                                      str r3, [sp]
006210d8  04 30 8d e5                                      str r3, [sp, #4]
006210dc  0c c0 8d e5                                      str ip, [sp, #0xc]
006210e0  df db ff eb                                      bl #0x618064
006210e4  04 00 a0 e1                                      mov r0, r4
006210e8  0d 10 a0 e1                                      mov r1, sp
006210ec  00 30 94 e5                                      ldr r3, [r4]
006210f0  0d 50 a0 e1                                      mov r5, sp
006210f4  0f e0 a0 e1                                      mov lr, pc
006210f8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006210fc  14 d0 8d e2                                      add sp, sp, #0x14
00621100  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00621118, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621118  30 40 2d e9                                      push {r4, r5, lr}
0062111c  1c d0 4d e2                                      sub sp, sp, #0x1c
00621120  28 40 9d e5                                      ldr r4, [sp, #0x28]
00621124  00 c0 a0 e3                                      mov ip, #0
00621128  08 50 8d e2                                      add r5, sp, #8
0062112c  fe e5 a0 e3                                      mov lr, #0x3f800000
00621130  10 c0 8d e5                                      str ip, [sp, #0x10]
00621134  14 e0 8d e5                                      str lr, [sp, #0x14]
00621138  08 c0 8d e5                                      str ip, [sp, #8]
0062113c  0c c0 8d e5                                      str ip, [sp, #0xc]
00621140  00 50 8d e5                                      str r5, [sp]
00621144  da db ff eb                                      bl #0x6180b4
00621148  04 00 a0 e1                                      mov r0, r4
0062114c  05 10 a0 e1                                      mov r1, r5
00621150  00 30 94 e5                                      ldr r3, [r4]
00621154  0f e0 a0 e1                                      mov lr, pc
00621158  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062115c  1c d0 8d e2                                      add sp, sp, #0x1c
00621160  30 80 bd e8                                      pop {r4, r5, pc}
