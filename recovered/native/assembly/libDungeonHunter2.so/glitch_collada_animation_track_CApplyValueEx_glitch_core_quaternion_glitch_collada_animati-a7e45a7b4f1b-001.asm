; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00620864, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620864  30 40 2d e9                                      push {r4, r5, lr}
00620868  00 30 a0 e3                                      mov r3, #0
0062086c  14 d0 4d e2                                      sub sp, sp, #0x14
00620870  01 40 a0 e1                                      mov r4, r1
00620874  fe c5 a0 e3                                      mov ip, #0x3f800000
00620878  00 10 a0 e3                                      mov r1, #0
0062087c  02 50 a0 e1                                      mov r5, r2
00620880  08 30 8d e5                                      str r3, [sp, #8]
00620884  0c c0 8d e5                                      str ip, [sp, #0xc]
00620888  00 30 8d e5                                      str r3, [sp]
0062088c  04 30 8d e5                                      str r3, [sp, #4]
00620890  63 25 01 eb                                      bl #0x669e24
00620894  04 30 90 e5                                      ldr r3, [r0, #4]
00620898  10 10 8d e2                                      add r1, sp, #0x10
0062089c  05 00 a0 e1                                      mov r0, r5
006208a0  04 22 93 e7                                      ldr r2, [r3, r4, lsl #4]
006208a4  04 42 83 e0                                      add r4, r3, r4, lsl #4
006208a8  04 c0 84 e2                                      add ip, r4, #4
006208ac  10 20 21 e5                                      str r2, [r1, #-0x10]!
006208b0  04 30 94 e5                                      ldr r3, [r4, #4]
006208b4  04 20 81 e2                                      add r2, r1, #4
006208b8  0d 10 a0 e1                                      mov r1, sp
006208bc  04 30 8d e5                                      str r3, [sp, #4]
006208c0  04 e0 9c e5                                      ldr lr, [ip, #4]
006208c4  00 30 95 e5                                      ldr r3, [r5]
006208c8  04 e0 82 e5                                      str lr, [r2, #4]
006208cc  08 c0 9c e5                                      ldr ip, [ip, #8]
006208d0  08 c0 82 e5                                      str ip, [r2, #8]
006208d4  0f e0 a0 e1                                      mov lr, pc
006208d8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006208dc  14 d0 8d e2                                      add sp, sp, #0x14
006208e0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006208f8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE20applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >::applyKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
006208f8  30 40 2d e9                                      push {r4, r5, lr}
006208fc  1c d0 4d e2                                      sub sp, sp, #0x1c
00620900  28 40 9d e5                                      ldr r4, [sp, #0x28]
00620904  00 c0 a0 e3                                      mov ip, #0
00620908  08 50 8d e2                                      add r5, sp, #8
0062090c  fe e5 a0 e3                                      mov lr, #0x3f800000
00620910  10 c0 8d e5                                      str ip, [sp, #0x10]
00620914  14 e0 8d e5                                      str lr, [sp, #0x14]
00620918  08 c0 8d e5                                      str ip, [sp, #8]
0062091c  0c c0 8d e5                                      str ip, [sp, #0xc]
00620920  00 50 8d e5                                      str r5, [sp]
00620924  5a ca ff eb                                      bl #0x613294
00620928  04 00 a0 e1                                      mov r0, r4
0062092c  05 10 a0 e1                                      mov r1, r5
00620930  00 30 94 e5                                      ldr r3, [r4]
00620934  0f e0 a0 e1                                      mov lr, pc
00620938  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0062093c  1c d0 8d e2                                      add sp, sp, #0x1c
00620940  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620968, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE19applyBlendedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >::applyBlendedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620968  30 40 2d e9                                      push {r4, r5, lr}
0062096c  14 d0 4d e2                                      sub sp, sp, #0x14
00620970  00 c0 a0 e3                                      mov ip, #0
00620974  03 40 a0 e1                                      mov r4, r3
00620978  fe e5 a0 e3                                      mov lr, #0x3f800000
0062097c  0d 30 a0 e1                                      mov r3, sp
00620980  08 c0 8d e5                                      str ip, [sp, #8]
00620984  0c e0 8d e5                                      str lr, [sp, #0xc]
00620988  00 c0 8d e5                                      str ip, [sp]
0062098c  04 c0 8d e5                                      str ip, [sp, #4]
00620990  cf c9 ff eb                                      bl #0x6130d4
00620994  04 00 a0 e1                                      mov r0, r4
00620998  0d 10 a0 e1                                      mov r1, sp
0062099c  00 30 94 e5                                      ldr r3, [r4]
006209a0  0d 50 a0 e1                                      mov r5, sp
006209a4  0f e0 a0 e1                                      mov lr, pc
006209a8  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006209ac  14 d0 8d e2                                      add sp, sp, #0x14
006209b0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00620bd8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >
; alias: _ZN6glitch7collada15animation_track13CApplyValueExINS_4core10quaternionENS1_25CSceneNodeQuaternionMixinIfEEE17applyAddedValueExEPvPfiS8_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplyValueEx<glitch::core::quaternion, glitch::collada::animation_track::CSceneNodeQuaternionMixin<float> >::applyAddedValueEx(void*, float*, int, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
00620bd8  30 40 2d e9                                      push {r4, r5, lr}
00620bdc  14 d0 4d e2                                      sub sp, sp, #0x14
00620be0  00 c0 a0 e3                                      mov ip, #0
00620be4  03 40 a0 e1                                      mov r4, r3
00620be8  fe e5 a0 e3                                      mov lr, #0x3f800000
00620bec  0d 30 a0 e1                                      mov r3, sp
00620bf0  08 c0 8d e5                                      str ip, [sp, #8]
00620bf4  0c e0 8d e5                                      str lr, [sp, #0xc]
00620bf8  00 c0 8d e5                                      str ip, [sp]
00620bfc  04 c0 8d e5                                      str ip, [sp, #4]
00620c00  dc c9 ff eb                                      bl #0x613378
00620c04  04 00 a0 e1                                      mov r0, r4
00620c08  0d 10 a0 e1                                      mov r1, sp
00620c0c  00 30 94 e5                                      ldr r3, [r4]
00620c10  0d 50 a0 e1                                      mov r5, sp
00620c14  0f e0 a0 e1                                      mov lr, pc
00620c18  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00620c1c  14 d0 8d e2                                      add sp, sp, #0x14
00620c20  30 80 bd e8                                      pop {r4, r5, pc}
