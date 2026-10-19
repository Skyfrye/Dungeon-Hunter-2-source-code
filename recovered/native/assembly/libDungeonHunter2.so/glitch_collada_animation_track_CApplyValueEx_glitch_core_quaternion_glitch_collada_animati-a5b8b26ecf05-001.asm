; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00620a38, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620a38  30 40 2d e9                                      push {r4, r5, lr}
00620a3c  14 d0 4d e2                                      sub sp, sp, #0x14
00620a40  00 c0 a0 e3                                      mov ip, #0
00620a44  03 40 a0 e1                                      mov r4, r3
00620a48  fe e5 a0 e3                                      mov lr, #0x3f800000
00620a4c  0d 30 a0 e1                                      mov r3, sp
00620a50  08 c0 8d e5                                      str ip, [sp, #8]
00620a54  0c e0 8d e5                                      str lr, [sp, #0xc]
00620a58  00 c0 8d e5                                      str ip, [sp]
00620a5c  04 c0 8d e5                                      str ip, [sp, #4]
00620a60  9b c9 ff eb                                      bl #0x6130d4
00620a64  04 00 a0 e1                                      mov r0, r4
00620a68  0d 10 a0 e1                                      mov r1, sp
00620a6c  00 30 94 e5                                      ldr r3, [r4]
00620a70  0d 50 a0 e1                                      mov r5, sp
00620a74  0f e0 a0 e1                                      mov lr, pc
00620a78  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620a7c  14 d0 8d e2                                      add sp, sp, #0x14
00620a80  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620ca8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620ca8  30 40 2d e9                                      push {r4, r5, lr}
00620cac  14 d0 4d e2                                      sub sp, sp, #0x14
00620cb0  00 c0 a0 e3                                      mov ip, #0
00620cb4  03 40 a0 e1                                      mov r4, r3
00620cb8  fe e5 a0 e3                                      mov lr, #0x3f800000
00620cbc  0d 30 a0 e1                                      mov r3, sp
00620cc0  08 c0 8d e5                                      str ip, [sp, #8]
00620cc4  0c e0 8d e5                                      str lr, [sp, #0xc]
00620cc8  00 c0 8d e5                                      str ip, [sp]
00620ccc  04 c0 8d e5                                      str ip, [sp, #4]
00620cd0  a8 c9 ff eb                                      bl #0x613378
00620cd4  04 00 a0 e1                                      mov r0, r4
00620cd8  0d 10 a0 e1                                      mov r1, sp
00620cdc  00 30 94 e5                                      ldr r3, [r4]
00620ce0  0d 50 a0 e1                                      mov r5, sp
00620ce4  0f e0 a0 e1                                      mov lr, pc
00620ce8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620cec  14 d0 8d e2                                      add sp, sp, #0x14
00620cf0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620f18, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620f18  30 40 2d e9                                      push {r4, r5, lr}
00620f1c  14 d0 4d e2                                      sub sp, sp, #0x14
00620f20  00 30 a0 e3                                      mov r3, #0
00620f24  02 40 a0 e1                                      mov r4, r2
00620f28  fe c5 a0 e3                                      mov ip, #0x3f800000
00620f2c  0d 20 a0 e1                                      mov r2, sp
00620f30  08 30 8d e5                                      str r3, [sp, #8]
00620f34  00 30 8d e5                                      str r3, [sp]
00620f38  04 30 8d e5                                      str r3, [sp, #4]
00620f3c  0c c0 8d e5                                      str ip, [sp, #0xc]
00620f40  b2 ca ff eb                                      bl #0x613a10
00620f44  04 00 a0 e1                                      mov r0, r4
00620f48  0d 10 a0 e1                                      mov r1, sp
00620f4c  00 30 94 e5                                      ldr r3, [r4]
00620f50  0d 50 a0 e1                                      mov r5, sp
00620f54  0f e0 a0 e1                                      mov lr, pc
00620f58  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620f5c  14 d0 8d e2                                      add sp, sp, #0x14
00620f60  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620f78, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIcEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<char> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620f78  30 40 2d e9                                      push {r4, r5, lr}
00620f7c  1c d0 4d e2                                      sub sp, sp, #0x1c
00620f80  28 40 9d e5                                      ldr r4, [sp, #0x28]
00620f84  00 c0 a0 e3                                      mov ip, #0
00620f88  08 50 8d e2                                      add r5, sp, #8
00620f8c  fe e5 a0 e3                                      mov lr, #0x3f800000
00620f90  10 c0 8d e5                                      str ip, [sp, #0x10]
00620f94  14 e0 8d e5                                      str lr, [sp, #0x14]
00620f98  08 c0 8d e5                                      str ip, [sp, #8]
00620f9c  0c c0 8d e5                                      str ip, [sp, #0xc]
00620fa0  00 50 8d e5                                      str r5, [sp]
00620fa4  47 cb ff eb                                      bl #0x613cc8
00620fa8  04 00 a0 e1                                      mov r0, r4
00620fac  05 10 a0 e1                                      mov r1, r5
00620fb0  00 30 94 e5                                      ldr r3, [r4]
00620fb4  0f e0 a0 e1                                      mov lr, pc
00620fb8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620fbc  1c d0 8d e2                                      add sp, sp, #0x1c
00620fc0  30 80 bd e8                                      pop {r4, r5, pc}
