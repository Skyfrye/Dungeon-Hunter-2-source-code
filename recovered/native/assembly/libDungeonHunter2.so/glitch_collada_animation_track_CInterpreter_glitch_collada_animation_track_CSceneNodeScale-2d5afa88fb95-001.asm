; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00617bd0, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00617bd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00617bd4  00 40 a0 e1                                      mov r4, r0
00617bd8  10 d0 4d e2                                      sub sp, sp, #0x10
00617bdc  01 50 a0 e1                                      mov r5, r1
00617be0  04 00 8d e2                                      add r0, sp, #4
00617be4  04 10 a0 e1                                      mov r1, r4
00617be8  02 60 a0 e1                                      mov r6, r2
00617bec  7c f0 ff eb                                      bl #0x613de4
00617bf0  04 30 9d e5                                      ldr r3, [sp, #4]
00617bf4  04 30 93 e5                                      ldr r3, [r3, #4]
00617bf8  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00617bfc  58 db f3 eb                                      bl #0x30e964
00617c00  08 30 9d e5                                      ldr r3, [sp, #8]
00617c04  00 10 93 e5                                      ldr r1, [r3]
00617c08  57 dc f3 eb                                      bl #0x30ed6c
00617c0c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617c10  00 10 93 e5                                      ldr r1, [r3]
00617c14  e2 db f3 eb                                      bl #0x30eba4
00617c18  00 50 a0 e1                                      mov r5, r0
00617c1c  04 00 a0 e1                                      mov r0, r4
00617c20  8b 48 01 eb                                      bl #0x669e54
00617c24  00 00 50 e3                                      cmp r0, #0
00617c28  02 00 00 1a                                      bne #0x617c38
00617c2c  00 50 86 e5                                      str r5, [r6]
00617c30  10 d0 8d e2                                      add sp, sp, #0x10
00617c34  70 80 bd e8                                      pop {r4, r5, r6, pc}
00617c38  04 00 a0 e1                                      mov r0, r4
00617c3c  89 48 01 eb                                      bl #0x669e68
00617c40  00 00 50 e3                                      cmp r0, #0
00617c44  f8 ff ff 0a                                      beq #0x617c2c
00617c48  04 00 a0 e1                                      mov r0, r4
00617c4c  85 48 01 eb                                      bl #0x669e68
00617c50  00 20 90 e5                                      ldr r2, [r0]
00617c54  06 30 a0 e1                                      mov r3, r6
00617c58  04 20 83 e4                                      str r2, [r3], #4
00617c5c  04 20 90 e5                                      ldr r2, [r0, #4]
00617c60  04 20 86 e5                                      str r2, [r6, #4]
00617c64  04 50 83 e5                                      str r5, [r3, #4]
00617c68  f0 ff ff ea                                      b #0x617c30

; FUNCTION 0x00617c7c, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00617c7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617c80  00 40 a0 e1                                      mov r4, r0
00617c84  14 d0 4d e2                                      sub sp, sp, #0x14
00617c88  01 50 a0 e1                                      mov r5, r1
00617c8c  04 00 8d e2                                      add r0, sp, #4
00617c90  04 10 a0 e1                                      mov r1, r4
00617c94  02 60 a0 e1                                      mov r6, r2
00617c98  03 b0 a0 e1                                      mov fp, r3
00617c9c  38 70 9d e5                                      ldr r7, [sp, #0x38]
00617ca0  4f f0 ff eb                                      bl #0x613de4
00617ca4  04 30 9d e5                                      ldr r3, [sp, #4]
00617ca8  04 90 93 e5                                      ldr sb, [r3, #4]
00617cac  08 30 9d e5                                      ldr r3, [sp, #8]
00617cb0  d5 00 99 e1                                      ldrsb r0, [sb, r5]
00617cb4  00 a0 93 e5                                      ldr sl, [r3]
00617cb8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617cbc  00 80 93 e5                                      ldr r8, [r3]
00617cc0  27 db f3 eb                                      bl #0x30e964
00617cc4  0a 10 a0 e1                                      mov r1, sl
00617cc8  27 dc f3 eb                                      bl #0x30ed6c
00617ccc  08 10 a0 e1                                      mov r1, r8
00617cd0  b3 db f3 eb                                      bl #0x30eba4
00617cd4  00 50 a0 e1                                      mov r5, r0
00617cd8  d6 00 99 e1                                      ldrsb r0, [sb, r6]
00617cdc  20 db f3 eb                                      bl #0x30e964
00617ce0  00 10 a0 e1                                      mov r1, r0
00617ce4  0a 00 a0 e1                                      mov r0, sl
00617ce8  1f dc f3 eb                                      bl #0x30ed6c
00617cec  00 10 a0 e1                                      mov r1, r0
00617cf0  08 00 a0 e1                                      mov r0, r8
00617cf4  aa db f3 eb                                      bl #0x30eba4
00617cf8  00 60 a0 e1                                      mov r6, r0
00617cfc  04 00 a0 e1                                      mov r0, r4
00617d00  53 48 01 eb                                      bl #0x669e54
00617d04  00 00 50 e3                                      cmp r0, #0
00617d08  12 00 00 0a                                      beq #0x617d58
00617d0c  04 00 a0 e1                                      mov r0, r4
00617d10  54 48 01 eb                                      bl #0x669e68
00617d14  00 30 90 e5                                      ldr r3, [r0]
00617d18  04 00 a0 e1                                      mov r0, r4
00617d1c  00 30 87 e5                                      str r3, [r7]
00617d20  50 48 01 eb                                      bl #0x669e68
00617d24  04 30 90 e5                                      ldr r3, [r0, #4]
00617d28  05 10 a0 e1                                      mov r1, r5
00617d2c  06 00 a0 e1                                      mov r0, r6
00617d30  04 30 87 e5                                      str r3, [r7, #4]
00617d34  9c d9 f3 eb                                      bl #0x30e3ac
00617d38  00 10 a0 e1                                      mov r1, r0
00617d3c  0b 00 a0 e1                                      mov r0, fp
00617d40  09 dc f3 eb                                      bl #0x30ed6c
00617d44  05 10 a0 e1                                      mov r1, r5
00617d48  95 db f3 eb                                      bl #0x30eba4
00617d4c  08 00 87 e5                                      str r0, [r7, #8]
00617d50  14 d0 8d e2                                      add sp, sp, #0x14
00617d54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617d58  05 10 a0 e1                                      mov r1, r5
00617d5c  06 00 a0 e1                                      mov r0, r6
00617d60  91 d9 f3 eb                                      bl #0x30e3ac
00617d64  00 10 a0 e1                                      mov r1, r0
00617d68  0b 00 a0 e1                                      mov r0, fp
00617d6c  fe db f3 eb                                      bl #0x30ed6c
00617d70  05 10 a0 e1                                      mov r1, r5
00617d74  8a db f3 eb                                      bl #0x30eba4
00617d78  00 00 87 e5                                      str r0, [r7]
00617d7c  f3 ff ff ea                                      b #0x617d50

; FUNCTION 0x00617d9c, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00617d9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00617da0  00 40 a0 e1                                      mov r4, r0
00617da4  10 d0 4d e2                                      sub sp, sp, #0x10
00617da8  01 50 a0 e1                                      mov r5, r1
00617dac  04 00 8d e2                                      add r0, sp, #4
00617db0  04 10 a0 e1                                      mov r1, r4
00617db4  02 60 a0 e1                                      mov r6, r2
00617db8  03 90 a0 e1                                      mov sb, r3
00617dbc  08 f0 ff eb                                      bl #0x613de4
00617dc0  04 30 9d e5                                      ldr r3, [sp, #4]
00617dc4  04 a0 93 e5                                      ldr sl, [r3, #4]
00617dc8  08 30 9d e5                                      ldr r3, [sp, #8]
00617dcc  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00617dd0  00 80 93 e5                                      ldr r8, [r3]
00617dd4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617dd8  00 70 93 e5                                      ldr r7, [r3]
00617ddc  e0 da f3 eb                                      bl #0x30e964
00617de0  00 10 a0 e1                                      mov r1, r0
00617de4  08 00 a0 e1                                      mov r0, r8
00617de8  df db f3 eb                                      bl #0x30ed6c
00617dec  00 10 a0 e1                                      mov r1, r0
00617df0  07 00 a0 e1                                      mov r0, r7
00617df4  6a db f3 eb                                      bl #0x30eba4
00617df8  00 60 a0 e1                                      mov r6, r0
00617dfc  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00617e00  d7 da f3 eb                                      bl #0x30e964
00617e04  08 10 a0 e1                                      mov r1, r8
00617e08  d7 db f3 eb                                      bl #0x30ed6c
00617e0c  07 10 a0 e1                                      mov r1, r7
00617e10  63 db f3 eb                                      bl #0x30eba4
00617e14  00 10 a0 e1                                      mov r1, r0
00617e18  06 00 a0 e1                                      mov r0, r6
00617e1c  62 d9 f3 eb                                      bl #0x30e3ac
00617e20  00 50 a0 e1                                      mov r5, r0
00617e24  04 00 a0 e1                                      mov r0, r4
00617e28  09 48 01 eb                                      bl #0x669e54
00617e2c  00 00 50 e3                                      cmp r0, #0
00617e30  00 50 89 05                                      streq r5, [sb]
00617e34  01 00 00 1a                                      bne #0x617e40
00617e38  10 d0 8d e2                                      add sp, sp, #0x10
00617e3c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00617e40  04 00 a0 e1                                      mov r0, r4
00617e44  07 48 01 eb                                      bl #0x669e68
00617e48  00 20 90 e5                                      ldr r2, [r0]
00617e4c  09 30 a0 e1                                      mov r3, sb
00617e50  04 20 83 e4                                      str r2, [r3], #4
00617e54  04 20 90 e5                                      ldr r2, [r0, #4]
00617e58  04 20 89 e5                                      str r2, [sb, #4]
00617e5c  04 50 83 e5                                      str r5, [r3, #4]
00617e60  f4 ff ff ea                                      b #0x617e38

; FUNCTION 0x00617e78, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00617e78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00617e7c  00 40 a0 e1                                      mov r4, r0
00617e80  14 d0 4d e2                                      sub sp, sp, #0x14
00617e84  01 50 a0 e1                                      mov r5, r1
00617e88  04 00 8d e2                                      add r0, sp, #4
00617e8c  04 10 a0 e1                                      mov r1, r4
00617e90  02 60 a0 e1                                      mov r6, r2
00617e94  03 b0 a0 e1                                      mov fp, r3
00617e98  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
00617e9c  d0 ef ff eb                                      bl #0x613de4
00617ea0  04 30 9d e5                                      ldr r3, [sp, #4]
00617ea4  04 a0 93 e5                                      ldr sl, [r3, #4]
00617ea8  08 30 9d e5                                      ldr r3, [sp, #8]
00617eac  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00617eb0  00 80 93 e5                                      ldr r8, [r3]
00617eb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00617eb8  00 70 93 e5                                      ldr r7, [r3]
00617ebc  a8 da f3 eb                                      bl #0x30e964
00617ec0  08 10 a0 e1                                      mov r1, r8
00617ec4  a8 db f3 eb                                      bl #0x30ed6c
00617ec8  07 10 a0 e1                                      mov r1, r7
00617ecc  34 db f3 eb                                      bl #0x30eba4
00617ed0  00 50 a0 e1                                      mov r5, r0
00617ed4  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00617ed8  a1 da f3 eb                                      bl #0x30e964
00617edc  00 10 a0 e1                                      mov r1, r0
00617ee0  08 00 a0 e1                                      mov r0, r8
00617ee4  a0 db f3 eb                                      bl #0x30ed6c
00617ee8  00 10 a0 e1                                      mov r1, r0
00617eec  07 00 a0 e1                                      mov r0, r7
00617ef0  2b db f3 eb                                      bl #0x30eba4
00617ef4  05 10 a0 e1                                      mov r1, r5
00617ef8  2b d9 f3 eb                                      bl #0x30e3ac
00617efc  00 60 a0 e1                                      mov r6, r0
00617f00  db 00 9a e1                                      ldrsb r0, [sl, fp]
00617f04  96 da f3 eb                                      bl #0x30e964
00617f08  00 10 a0 e1                                      mov r1, r0
00617f0c  08 00 a0 e1                                      mov r0, r8
00617f10  95 db f3 eb                                      bl #0x30ed6c
00617f14  00 10 a0 e1                                      mov r1, r0
00617f18  07 00 a0 e1                                      mov r0, r7
00617f1c  20 db f3 eb                                      bl #0x30eba4
00617f20  05 10 a0 e1                                      mov r1, r5
00617f24  20 d9 f3 eb                                      bl #0x30e3ac
00617f28  00 50 a0 e1                                      mov r5, r0
00617f2c  04 00 a0 e1                                      mov r0, r4
00617f30  c7 47 01 eb                                      bl #0x669e54
00617f34  00 00 50 e3                                      cmp r0, #0
00617f38  0b 00 00 1a                                      bne #0x617f6c
00617f3c  06 10 a0 e1                                      mov r1, r6
00617f40  05 00 a0 e1                                      mov r0, r5
00617f44  18 d9 f3 eb                                      bl #0x30e3ac
00617f48  00 10 a0 e1                                      mov r1, r0
00617f4c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617f50  85 db f3 eb                                      bl #0x30ed6c
00617f54  00 10 a0 e1                                      mov r1, r0
00617f58  06 00 a0 e1                                      mov r0, r6
00617f5c  10 db f3 eb                                      bl #0x30eba4
00617f60  00 00 89 e5                                      str r0, [sb]
00617f64  14 d0 8d e2                                      add sp, sp, #0x14
00617f68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00617f6c  04 00 a0 e1                                      mov r0, r4
00617f70  bc 47 01 eb                                      bl #0x669e68
00617f74  00 20 90 e5                                      ldr r2, [r0]
00617f78  09 40 a0 e1                                      mov r4, sb
00617f7c  00 30 a0 e1                                      mov r3, r0
00617f80  04 20 84 e4                                      str r2, [r4], #4
00617f84  04 30 93 e5                                      ldr r3, [r3, #4]
00617f88  06 10 a0 e1                                      mov r1, r6
00617f8c  05 00 a0 e1                                      mov r0, r5
00617f90  04 30 89 e5                                      str r3, [sb, #4]
00617f94  04 d9 f3 eb                                      bl #0x30e3ac
00617f98  00 10 a0 e1                                      mov r1, r0
00617f9c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00617fa0  71 db f3 eb                                      bl #0x30ed6c
00617fa4  00 10 a0 e1                                      mov r1, r0
00617fa8  06 00 a0 e1                                      mov r0, r6
00617fac  fc da f3 eb                                      bl #0x30eba4
00617fb0  04 00 84 e5                                      str r0, [r4, #4]
00617fb4  ea ff ff ea                                      b #0x617f64
