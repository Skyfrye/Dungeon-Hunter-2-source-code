; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00614c44, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIcEEfLi4ENS1_17SUseDefaultValuesILi3EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00614c44  70 40 2d e9                                      push {r4, r5, r6, lr}
00614c48  00 40 a0 e1                                      mov r4, r0
00614c4c  10 d0 4d e2                                      sub sp, sp, #0x10
00614c50  01 50 a0 e1                                      mov r5, r1
00614c54  04 00 8d e2                                      add r0, sp, #4
00614c58  04 10 a0 e1                                      mov r1, r4
00614c5c  02 60 a0 e1                                      mov r6, r2
00614c60  5f fc ff eb                                      bl #0x613de4
00614c64  04 30 9d e5                                      ldr r3, [sp, #4]
00614c68  04 30 93 e5                                      ldr r3, [r3, #4]
00614c6c  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00614c70  3b e7 f3 eb                                      bl #0x30e964
00614c74  08 30 9d e5                                      ldr r3, [sp, #8]
00614c78  00 10 93 e5                                      ldr r1, [r3]
00614c7c  3a e8 f3 eb                                      bl #0x30ed6c
00614c80  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614c84  00 10 93 e5                                      ldr r1, [r3]
00614c88  c5 e7 f3 eb                                      bl #0x30eba4
00614c8c  00 50 a0 e1                                      mov r5, r0
00614c90  04 00 a0 e1                                      mov r0, r4
00614c94  6e 54 01 eb                                      bl #0x669e54
00614c98  00 00 50 e3                                      cmp r0, #0
00614c9c  02 00 00 1a                                      bne #0x614cac
00614ca0  00 50 86 e5                                      str r5, [r6]
00614ca4  10 d0 8d e2                                      add sp, sp, #0x10
00614ca8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00614cac  04 00 a0 e1                                      mov r0, r4
00614cb0  6c 54 01 eb                                      bl #0x669e68
00614cb4  00 00 50 e3                                      cmp r0, #0
00614cb8  f8 ff ff 0a                                      beq #0x614ca0
00614cbc  04 00 a0 e1                                      mov r0, r4
00614cc0  68 54 01 eb                                      bl #0x669e68
00614cc4  00 20 90 e5                                      ldr r2, [r0]
00614cc8  06 30 a0 e1                                      mov r3, r6
00614ccc  04 20 83 e4                                      str r2, [r3], #4
00614cd0  04 20 90 e5                                      ldr r2, [r0, #4]
00614cd4  04 20 86 e5                                      str r2, [r6, #4]
00614cd8  08 20 90 e5                                      ldr r2, [r0, #8]
00614cdc  08 50 83 e5                                      str r5, [r3, #8]
00614ce0  04 20 83 e5                                      str r2, [r3, #4]
00614ce4  ee ff ff ea                                      b #0x614ca4

; FUNCTION 0x00614ce8, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_30CSceneNodeQuaternionAngleMixinIcEEfLi4ENS1_17SUseDefaultValuesILi3EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeQuaternionAngleMixin<char>, float, 4, glitch::collada::animation_track::SUseDefaultValues<3, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00614ce8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00614cec  00 40 a0 e1                                      mov r4, r0
00614cf0  14 d0 4d e2                                      sub sp, sp, #0x14
00614cf4  01 50 a0 e1                                      mov r5, r1
00614cf8  04 00 8d e2                                      add r0, sp, #4
00614cfc  04 10 a0 e1                                      mov r1, r4
00614d00  02 60 a0 e1                                      mov r6, r2
00614d04  03 b0 a0 e1                                      mov fp, r3
00614d08  38 70 9d e5                                      ldr r7, [sp, #0x38]
00614d0c  34 fc ff eb                                      bl #0x613de4
00614d10  04 30 9d e5                                      ldr r3, [sp, #4]
00614d14  04 90 93 e5                                      ldr sb, [r3, #4]
00614d18  08 30 9d e5                                      ldr r3, [sp, #8]
00614d1c  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00614d20  00 a0 93 e5                                      ldr sl, [r3]
00614d24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00614d28  00 80 93 e5                                      ldr r8, [r3]
00614d2c  0c e7 f3 eb                                      bl #0x30e964
00614d30  0a 10 a0 e1                                      mov r1, sl
00614d34  0c e8 f3 eb                                      bl #0x30ed6c
00614d38  08 10 a0 e1                                      mov r1, r8
00614d3c  98 e7 f3 eb                                      bl #0x30eba4
00614d40  00 50 a0 e1                                      mov r5, r0
00614d44  d6 00 99 e1                                      ldrsb r0, [sb, r6]
00614d48  05 e7 f3 eb                                      bl #0x30e964
00614d4c  00 10 a0 e1                                      mov r1, r0
00614d50  0a 00 a0 e1                                      mov r0, sl
00614d54  04 e8 f3 eb                                      bl #0x30ed6c
00614d58  00 10 a0 e1                                      mov r1, r0
00614d5c  08 00 a0 e1                                      mov r0, r8
00614d60  8f e7 f3 eb                                      bl #0x30eba4
00614d64  00 80 a0 e1                                      mov r8, r0
00614d68  04 00 a0 e1                                      mov r0, r4
00614d6c  38 54 01 eb                                      bl #0x669e54
00614d70  00 00 50 e3                                      cmp r0, #0
00614d74  12 00 00 0a                                      beq #0x614dc4
00614d78  00 60 a0 e3                                      mov r6, #0
00614d7c  04 00 a0 e1                                      mov r0, r4
00614d80  38 54 01 eb                                      bl #0x669e68
00614d84  06 30 90 e7                                      ldr r3, [r0, r6]
00614d88  06 30 87 e7                                      str r3, [r7, r6]
00614d8c  04 60 86 e2                                      add r6, r6, #4
00614d90  0c 00 56 e3                                      cmp r6, #0xc
00614d94  f8 ff ff 1a                                      bne #0x614d7c
00614d98  05 10 a0 e1                                      mov r1, r5
00614d9c  08 00 a0 e1                                      mov r0, r8
00614da0  81 e5 f3 eb                                      bl #0x30e3ac
00614da4  00 10 a0 e1                                      mov r1, r0
00614da8  0b 00 a0 e1                                      mov r0, fp
00614dac  ee e7 f3 eb                                      bl #0x30ed6c
00614db0  05 10 a0 e1                                      mov r1, r5
00614db4  7a e7 f3 eb                                      bl #0x30eba4
00614db8  0c 00 87 e5                                      str r0, [r7, #0xc]
00614dbc  14 d0 8d e2                                      add sp, sp, #0x14
00614dc0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00614dc4  05 10 a0 e1                                      mov r1, r5
00614dc8  08 00 a0 e1                                      mov r0, r8
00614dcc  76 e5 f3 eb                                      bl #0x30e3ac
00614dd0  00 10 a0 e1                                      mov r1, r0
00614dd4  0b 00 a0 e1                                      mov r0, fp
00614dd8  e3 e7 f3 eb                                      bl #0x30ed6c
00614ddc  05 10 a0 e1                                      mov r1, r5
00614de0  6f e7 f3 eb                                      bl #0x30eba4
00614de4  00 00 87 e5                                      str r0, [r7]
00614de8  f3 ff ff ea                                      b #0x614dbc
