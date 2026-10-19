; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006209d0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006209d0  30 40 2d e9                                      push {r4, r5, lr}
006209d4  14 d0 4d e2                                      sub sp, sp, #0x14
006209d8  00 c0 a0 e3                                      mov ip, #0
006209dc  03 40 a0 e1                                      mov r4, r3
006209e0  fe e5 a0 e3                                      mov lr, #0x3f800000
006209e4  0d 30 a0 e1                                      mov r3, sp
006209e8  08 c0 8d e5                                      str ip, [sp, #8]
006209ec  0c e0 8d e5                                      str lr, [sp, #0xc]
006209f0  00 c0 8d e5                                      str ip, [sp]
006209f4  04 c0 8d e5                                      str ip, [sp, #4]
006209f8  b5 c9 ff eb                                      bl #0x6130d4
006209fc  04 00 a0 e1                                      mov r0, r4
00620a00  0d 10 a0 e1                                      mov r1, sp
00620a04  00 30 94 e5                                      ldr r3, [r4]
00620a08  0d 50 a0 e1                                      mov r5, sp
00620a0c  0f e0 a0 e1                                      mov lr, pc
00620a10  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620a14  14 d0 8d e2                                      add sp, sp, #0x14
00620a18  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620c40, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620c40  30 40 2d e9                                      push {r4, r5, lr}
00620c44  14 d0 4d e2                                      sub sp, sp, #0x14
00620c48  00 c0 a0 e3                                      mov ip, #0
00620c4c  03 40 a0 e1                                      mov r4, r3
00620c50  fe e5 a0 e3                                      mov lr, #0x3f800000
00620c54  0d 30 a0 e1                                      mov r3, sp
00620c58  08 c0 8d e5                                      str ip, [sp, #8]
00620c5c  0c e0 8d e5                                      str lr, [sp, #0xc]
00620c60  00 c0 8d e5                                      str ip, [sp]
00620c64  04 c0 8d e5                                      str ip, [sp, #4]
00620c68  c2 c9 ff eb                                      bl #0x613378
00620c6c  04 00 a0 e1                                      mov r0, r4
00620c70  0d 10 a0 e1                                      mov r1, sp
00620c74  00 30 94 e5                                      ldr r3, [r4]
00620c78  0d 50 a0 e1                                      mov r5, sp
00620c7c  0f e0 a0 e1                                      mov lr, pc
00620c80  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620c84  14 d0 8d e2                                      add sp, sp, #0x14
00620c88  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620e48, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620e48  30 40 2d e9                                      push {r4, r5, lr}
00620e4c  14 d0 4d e2                                      sub sp, sp, #0x14
00620e50  00 30 a0 e3                                      mov r3, #0
00620e54  02 40 a0 e1                                      mov r4, r2
00620e58  fe c5 a0 e3                                      mov ip, #0x3f800000
00620e5c  0d 20 a0 e1                                      mov r2, sp
00620e60  08 30 8d e5                                      str r3, [sp, #8]
00620e64  00 30 8d e5                                      str r3, [sp]
00620e68  04 30 8d e5                                      str r3, [sp, #4]
00620e6c  0c c0 8d e5                                      str ip, [sp, #0xc]
00620e70  f1 c9 ff eb                                      bl #0x61363c
00620e74  04 00 a0 e1                                      mov r0, r4
00620e78  0d 10 a0 e1                                      mov r1, sp
00620e7c  00 30 94 e5                                      ldr r3, [r4]
00620e80  0d 50 a0 e1                                      mov r5, sp
00620e84  0f e0 a0 e1                                      mov lr, pc
00620e88  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620e8c  14 d0 8d e2                                      add sp, sp, #0x14
00620e90  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620ea8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIsEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<short> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620ea8  30 40 2d e9                                      push {r4, r5, lr}
00620eac  1c d0 4d e2                                      sub sp, sp, #0x1c
00620eb0  28 40 9d e5                                      ldr r4, [sp, #0x28]
00620eb4  00 c0 a0 e3                                      mov ip, #0
00620eb8  08 50 8d e2                                      add r5, sp, #8
00620ebc  fe e5 a0 e3                                      mov lr, #0x3f800000
00620ec0  10 c0 8d e5                                      str ip, [sp, #0x10]
00620ec4  14 e0 8d e5                                      str lr, [sp, #0x14]
00620ec8  08 c0 8d e5                                      str ip, [sp, #8]
00620ecc  0c c0 8d e5                                      str ip, [sp, #0xc]
00620ed0  00 50 8d e5                                      str r5, [sp]
00620ed4  86 ca ff eb                                      bl #0x6138f4
00620ed8  04 00 a0 e1                                      mov r0, r4
00620edc  05 10 a0 e1                                      mov r1, r5
00620ee0  00 30 94 e5                                      ldr r3, [r4]
00620ee4  0f e0 a0 e1                                      mov lr, pc
00620ee8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620eec  1c d0 8d e2                                      add sp, sp, #0x1c
00620ef0  30 80 bd e8                                      pop {r4, r5, pc}
