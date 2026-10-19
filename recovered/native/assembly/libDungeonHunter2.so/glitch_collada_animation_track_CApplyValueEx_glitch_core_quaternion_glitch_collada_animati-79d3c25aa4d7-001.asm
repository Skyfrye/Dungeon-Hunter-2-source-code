; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00620aa0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620aa0  30 40 2d e9                                      push {r4, r5, lr}
00620aa4  14 d0 4d e2                                      sub sp, sp, #0x14
00620aa8  00 c0 a0 e3                                      mov ip, #0
00620aac  03 40 a0 e1                                      mov r4, r3
00620ab0  fe e5 a0 e3                                      mov lr, #0x3f800000
00620ab4  0d 30 a0 e1                                      mov r3, sp
00620ab8  08 c0 8d e5                                      str ip, [sp, #8]
00620abc  0c e0 8d e5                                      str lr, [sp, #0xc]
00620ac0  00 c0 8d e5                                      str ip, [sp]
00620ac4  04 c0 8d e5                                      str ip, [sp, #4]
00620ac8  81 c9 ff eb                                      bl #0x6130d4
00620acc  04 00 a0 e1                                      mov r0, r4
00620ad0  0d 10 a0 e1                                      mov r1, sp
00620ad4  00 30 94 e5                                      ldr r3, [r4]
00620ad8  0d 50 a0 e1                                      mov r5, sp
00620adc  0f e0 a0 e1                                      mov lr, pc
00620ae0  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620ae4  14 d0 8d e2                                      add sp, sp, #0x14
00620ae8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620d10, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620d10  30 40 2d e9                                      push {r4, r5, lr}
00620d14  14 d0 4d e2                                      sub sp, sp, #0x14
00620d18  00 c0 a0 e3                                      mov ip, #0
00620d1c  03 40 a0 e1                                      mov r4, r3
00620d20  fe e5 a0 e3                                      mov lr, #0x3f800000
00620d24  0d 30 a0 e1                                      mov r3, sp
00620d28  08 c0 8d e5                                      str ip, [sp, #8]
00620d2c  0c e0 8d e5                                      str lr, [sp, #0xc]
00620d30  00 c0 8d e5                                      str ip, [sp]
00620d34  04 c0 8d e5                                      str ip, [sp, #4]
00620d38  8e c9 ff eb                                      bl #0x613378
00620d3c  04 00 a0 e1                                      mov r0, r4
00620d40  0d 10 a0 e1                                      mov r1, sp
00620d44  00 30 94 e5                                      ldr r3, [r4]
00620d48  0d 50 a0 e1                                      mov r5, sp
00620d4c  0f e0 a0 e1                                      mov lr, pc
00620d50  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620d54  14 d0 8d e2                                      add sp, sp, #0x14
00620d58  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620fe8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620fe8  30 40 2d e9                                      push {r4, r5, lr}
00620fec  14 d0 4d e2                                      sub sp, sp, #0x14
00620ff0  00 30 a0 e3                                      mov r3, #0
00620ff4  02 40 a0 e1                                      mov r4, r2
00620ff8  fe c5 a0 e3                                      mov ip, #0x3f800000
00620ffc  0d 20 a0 e1                                      mov r2, sp
00621000  08 30 8d e5                                      str r3, [sp, #8]
00621004  00 30 8d e5                                      str r3, [sp]
00621008  04 30 8d e5                                      str r3, [sp, #4]
0062100c  0c c0 8d e5                                      str ip, [sp, #0xc]
00621010  5f f9 ff eb                                      bl #0x61f594
00621014  04 00 a0 e1                                      mov r0, r4
00621018  0d 10 a0 e1                                      mov r1, sp
0062101c  00 30 94 e5                                      ldr r3, [r4]
00621020  0d 50 a0 e1                                      mov r5, sp
00621024  0f e0 a0 e1                                      mov lr, pc
00621028  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062102c  14 d0 8d e2                                      add sp, sp, #0x14
00621030  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00621048, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_30CSceneNodeQuaternionAngleMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00621048  30 40 2d e9                                      push {r4, r5, lr}
0062104c  1c d0 4d e2                                      sub sp, sp, #0x1c
00621050  28 40 9d e5                                      ldr r4, [sp, #0x28]
00621054  00 c0 a0 e3                                      mov ip, #0
00621058  08 50 8d e2                                      add r5, sp, #8
0062105c  fe e5 a0 e3                                      mov lr, #0x3f800000
00621060  10 c0 8d e5                                      str ip, [sp, #0x10]
00621064  14 e0 8d e5                                      str lr, [sp, #0x14]
00621068  08 c0 8d e5                                      str ip, [sp, #8]
0062106c  0c c0 8d e5                                      str ip, [sp, #0xc]
00621070  00 50 8d e5                                      str r5, [sp]
00621074  34 fa ff eb                                      bl #0x61f94c
00621078  04 00 a0 e1                                      mov r0, r4
0062107c  05 10 a0 e1                                      mov r1, r5
00621080  00 30 94 e5                                      ldr r3, [r4]
00621084  0f e0 a0 e1                                      mov lr, pc
00621088  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062108c  1c d0 8d e2                                      add sp, sp, #0x1c
00621090  30 80 bd e8                                      pop {r4, r5, pc}
