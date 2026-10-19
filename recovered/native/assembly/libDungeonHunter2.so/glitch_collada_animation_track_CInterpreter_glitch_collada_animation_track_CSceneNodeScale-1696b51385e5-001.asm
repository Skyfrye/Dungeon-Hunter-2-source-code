; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00616b54, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00616b54  70 40 2d e9                                      push {r4, r5, r6, lr}
00616b58  00 40 a0 e1                                      mov r4, r0
00616b5c  10 d0 4d e2                                      sub sp, sp, #0x10
00616b60  01 50 a0 e1                                      mov r5, r1
00616b64  04 00 8d e2                                      add r0, sp, #4
00616b68  04 10 a0 e1                                      mov r1, r4
00616b6c  02 60 a0 e1                                      mov r6, r2
00616b70  9b f4 ff eb                                      bl #0x613de4
00616b74  04 30 9d e5                                      ldr r3, [sp, #4]
00616b78  04 30 93 e5                                      ldr r3, [r3, #4]
00616b7c  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00616b80  77 df f3 eb                                      bl #0x30e964
00616b84  08 30 9d e5                                      ldr r3, [sp, #8]
00616b88  00 10 93 e5                                      ldr r1, [r3]
00616b8c  76 e0 f3 eb                                      bl #0x30ed6c
00616b90  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616b94  00 10 93 e5                                      ldr r1, [r3]
00616b98  01 e0 f3 eb                                      bl #0x30eba4
00616b9c  00 50 a0 e1                                      mov r5, r0
00616ba0  04 00 a0 e1                                      mov r0, r4
00616ba4  aa 4c 01 eb                                      bl #0x669e54
00616ba8  00 00 50 e3                                      cmp r0, #0
00616bac  02 00 00 1a                                      bne #0x616bbc
00616bb0  00 50 86 e5                                      str r5, [r6]
00616bb4  10 d0 8d e2                                      add sp, sp, #0x10
00616bb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00616bbc  04 00 a0 e1                                      mov r0, r4
00616bc0  a8 4c 01 eb                                      bl #0x669e68
00616bc4  00 00 50 e3                                      cmp r0, #0
00616bc8  f8 ff ff 0a                                      beq #0x616bb0
00616bcc  04 00 a0 e1                                      mov r0, r4
00616bd0  a4 4c 01 eb                                      bl #0x669e68
00616bd4  06 30 a0 e1                                      mov r3, r6
00616bd8  04 50 83 e4                                      str r5, [r3], #4
00616bdc  04 20 90 e5                                      ldr r2, [r0, #4]
00616be0  04 20 86 e5                                      str r2, [r6, #4]
00616be4  08 20 90 e5                                      ldr r2, [r0, #8]
00616be8  04 20 83 e5                                      str r2, [r3, #4]
00616bec  f0 ff ff ea                                      b #0x616bb4

; FUNCTION 0x00616c00, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00616c00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00616c04  00 40 a0 e1                                      mov r4, r0
00616c08  14 d0 4d e2                                      sub sp, sp, #0x14
00616c0c  01 50 a0 e1                                      mov r5, r1
00616c10  04 00 8d e2                                      add r0, sp, #4
00616c14  04 10 a0 e1                                      mov r1, r4
00616c18  02 60 a0 e1                                      mov r6, r2
00616c1c  03 b0 a0 e1                                      mov fp, r3
00616c20  38 90 9d e5                                      ldr sb, [sp, #0x38]
00616c24  6e f4 ff eb                                      bl #0x613de4
00616c28  04 30 9d e5                                      ldr r3, [sp, #4]
00616c2c  04 a0 93 e5                                      ldr sl, [r3, #4]
00616c30  08 30 9d e5                                      ldr r3, [sp, #8]
00616c34  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00616c38  00 80 93 e5                                      ldr r8, [r3]
00616c3c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616c40  00 70 93 e5                                      ldr r7, [r3]
00616c44  46 df f3 eb                                      bl #0x30e964
00616c48  08 10 a0 e1                                      mov r1, r8
00616c4c  46 e0 f3 eb                                      bl #0x30ed6c
00616c50  07 10 a0 e1                                      mov r1, r7
00616c54  d2 df f3 eb                                      bl #0x30eba4
00616c58  00 50 a0 e1                                      mov r5, r0
00616c5c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00616c60  3f df f3 eb                                      bl #0x30e964
00616c64  00 10 a0 e1                                      mov r1, r0
00616c68  08 00 a0 e1                                      mov r0, r8
00616c6c  3e e0 f3 eb                                      bl #0x30ed6c
00616c70  00 10 a0 e1                                      mov r1, r0
00616c74  07 00 a0 e1                                      mov r0, r7
00616c78  c9 df f3 eb                                      bl #0x30eba4
00616c7c  00 60 a0 e1                                      mov r6, r0
00616c80  04 00 a0 e1                                      mov r0, r4
00616c84  72 4c 01 eb                                      bl #0x669e54
00616c88  00 00 50 e3                                      cmp r0, #0
00616c8c  13 00 00 0a                                      beq #0x616ce0
00616c90  05 10 a0 e1                                      mov r1, r5
00616c94  06 00 a0 e1                                      mov r0, r6
00616c98  c3 dd f3 eb                                      bl #0x30e3ac
00616c9c  00 10 a0 e1                                      mov r1, r0
00616ca0  0b 00 a0 e1                                      mov r0, fp
00616ca4  30 e0 f3 eb                                      bl #0x30ed6c
00616ca8  05 10 a0 e1                                      mov r1, r5
00616cac  bc df f3 eb                                      bl #0x30eba4
00616cb0  09 50 a0 e1                                      mov r5, sb
00616cb4  04 00 85 e4                                      str r0, [r5], #4
00616cb8  04 00 a0 e1                                      mov r0, r4
00616cbc  69 4c 01 eb                                      bl #0x669e68
00616cc0  04 30 90 e5                                      ldr r3, [r0, #4]
00616cc4  04 00 a0 e1                                      mov r0, r4
00616cc8  04 30 89 e5                                      str r3, [sb, #4]
00616ccc  65 4c 01 eb                                      bl #0x669e68
00616cd0  08 30 90 e5                                      ldr r3, [r0, #8]
00616cd4  04 30 85 e5                                      str r3, [r5, #4]
00616cd8  14 d0 8d e2                                      add sp, sp, #0x14
00616cdc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00616ce0  05 10 a0 e1                                      mov r1, r5
00616ce4  06 00 a0 e1                                      mov r0, r6
00616ce8  af dd f3 eb                                      bl #0x30e3ac
00616cec  00 10 a0 e1                                      mov r1, r0
00616cf0  0b 00 a0 e1                                      mov r0, fp
00616cf4  1c e0 f3 eb                                      bl #0x30ed6c
00616cf8  05 10 a0 e1                                      mov r1, r5
00616cfc  a8 df f3 eb                                      bl #0x30eba4
00616d00  00 00 89 e5                                      str r0, [sb]
00616d04  f3 ff ff ea                                      b #0x616cd8

; FUNCTION 0x00616d24, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00616d24  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00616d28  00 40 a0 e1                                      mov r4, r0
00616d2c  10 d0 4d e2                                      sub sp, sp, #0x10
00616d30  01 50 a0 e1                                      mov r5, r1
00616d34  04 00 8d e2                                      add r0, sp, #4
00616d38  04 10 a0 e1                                      mov r1, r4
00616d3c  02 60 a0 e1                                      mov r6, r2
00616d40  03 90 a0 e1                                      mov sb, r3
00616d44  26 f4 ff eb                                      bl #0x613de4
00616d48  04 30 9d e5                                      ldr r3, [sp, #4]
00616d4c  04 a0 93 e5                                      ldr sl, [r3, #4]
00616d50  08 30 9d e5                                      ldr r3, [sp, #8]
00616d54  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00616d58  00 80 93 e5                                      ldr r8, [r3]
00616d5c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616d60  00 70 93 e5                                      ldr r7, [r3]
00616d64  fe de f3 eb                                      bl #0x30e964
00616d68  00 10 a0 e1                                      mov r1, r0
00616d6c  08 00 a0 e1                                      mov r0, r8
00616d70  fd df f3 eb                                      bl #0x30ed6c
00616d74  00 10 a0 e1                                      mov r1, r0
00616d78  07 00 a0 e1                                      mov r0, r7
00616d7c  88 df f3 eb                                      bl #0x30eba4
00616d80  00 60 a0 e1                                      mov r6, r0
00616d84  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00616d88  f5 de f3 eb                                      bl #0x30e964
00616d8c  08 10 a0 e1                                      mov r1, r8
00616d90  f5 df f3 eb                                      bl #0x30ed6c
00616d94  07 10 a0 e1                                      mov r1, r7
00616d98  81 df f3 eb                                      bl #0x30eba4
00616d9c  00 10 a0 e1                                      mov r1, r0
00616da0  06 00 a0 e1                                      mov r0, r6
00616da4  80 dd f3 eb                                      bl #0x30e3ac
00616da8  00 50 a0 e1                                      mov r5, r0
00616dac  04 00 a0 e1                                      mov r0, r4
00616db0  27 4c 01 eb                                      bl #0x669e54
00616db4  00 00 50 e3                                      cmp r0, #0
00616db8  00 50 89 05                                      streq r5, [sb]
00616dbc  01 00 00 1a                                      bne #0x616dc8
00616dc0  10 d0 8d e2                                      add sp, sp, #0x10
00616dc4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00616dc8  04 00 a0 e1                                      mov r0, r4
00616dcc  25 4c 01 eb                                      bl #0x669e68
00616dd0  09 30 a0 e1                                      mov r3, sb
00616dd4  04 50 83 e4                                      str r5, [r3], #4
00616dd8  04 20 90 e5                                      ldr r2, [r0, #4]
00616ddc  04 20 89 e5                                      str r2, [sb, #4]
00616de0  08 20 90 e5                                      ldr r2, [r0, #8]
00616de4  04 20 83 e5                                      str r2, [r3, #4]
00616de8  f4 ff ff ea                                      b #0x616dc0

; FUNCTION 0x00616e00, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_18CSceneNodeScaleXExIcEEfLi3ENS1_17SUseDefaultValuesILi0EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodeScaleXEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<0, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00616e00  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00616e04  00 40 a0 e1                                      mov r4, r0
00616e08  14 d0 4d e2                                      sub sp, sp, #0x14
00616e0c  01 50 a0 e1                                      mov r5, r1
00616e10  04 00 8d e2                                      add r0, sp, #4
00616e14  04 10 a0 e1                                      mov r1, r4
00616e18  02 60 a0 e1                                      mov r6, r2
00616e1c  03 b0 a0 e1                                      mov fp, r3
00616e20  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
00616e24  ee f3 ff eb                                      bl #0x613de4
00616e28  04 30 9d e5                                      ldr r3, [sp, #4]
00616e2c  04 a0 93 e5                                      ldr sl, [r3, #4]
00616e30  08 30 9d e5                                      ldr r3, [sp, #8]
00616e34  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00616e38  00 80 93 e5                                      ldr r8, [r3]
00616e3c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616e40  00 70 93 e5                                      ldr r7, [r3]
00616e44  c6 de f3 eb                                      bl #0x30e964
00616e48  08 10 a0 e1                                      mov r1, r8
00616e4c  c6 df f3 eb                                      bl #0x30ed6c
00616e50  07 10 a0 e1                                      mov r1, r7
00616e54  52 df f3 eb                                      bl #0x30eba4
00616e58  00 50 a0 e1                                      mov r5, r0
00616e5c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00616e60  bf de f3 eb                                      bl #0x30e964
00616e64  00 10 a0 e1                                      mov r1, r0
00616e68  08 00 a0 e1                                      mov r0, r8
00616e6c  be df f3 eb                                      bl #0x30ed6c
00616e70  00 10 a0 e1                                      mov r1, r0
00616e74  07 00 a0 e1                                      mov r0, r7
00616e78  49 df f3 eb                                      bl #0x30eba4
00616e7c  05 10 a0 e1                                      mov r1, r5
00616e80  49 dd f3 eb                                      bl #0x30e3ac
00616e84  00 60 a0 e1                                      mov r6, r0
00616e88  db 00 9a e1                                      ldrsb r0, [sl, fp]
00616e8c  b4 de f3 eb                                      bl #0x30e964
00616e90  00 10 a0 e1                                      mov r1, r0
00616e94  08 00 a0 e1                                      mov r0, r8
00616e98  b3 df f3 eb                                      bl #0x30ed6c
00616e9c  00 10 a0 e1                                      mov r1, r0
00616ea0  07 00 a0 e1                                      mov r0, r7
00616ea4  3e df f3 eb                                      bl #0x30eba4
00616ea8  05 10 a0 e1                                      mov r1, r5
00616eac  3e dd f3 eb                                      bl #0x30e3ac
00616eb0  00 50 a0 e1                                      mov r5, r0
00616eb4  04 00 a0 e1                                      mov r0, r4
00616eb8  e5 4b 01 eb                                      bl #0x669e54
00616ebc  00 00 50 e3                                      cmp r0, #0
00616ec0  0b 00 00 1a                                      bne #0x616ef4
00616ec4  06 10 a0 e1                                      mov r1, r6
00616ec8  05 00 a0 e1                                      mov r0, r5
00616ecc  36 dd f3 eb                                      bl #0x30e3ac
00616ed0  00 10 a0 e1                                      mov r1, r0
00616ed4  38 00 9d e5                                      ldr r0, [sp, #0x38]
00616ed8  a3 df f3 eb                                      bl #0x30ed6c
00616edc  00 10 a0 e1                                      mov r1, r0
00616ee0  06 00 a0 e1                                      mov r0, r6
00616ee4  2e df f3 eb                                      bl #0x30eba4
00616ee8  00 00 89 e5                                      str r0, [sb]
00616eec  14 d0 8d e2                                      add sp, sp, #0x14
00616ef0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00616ef4  04 00 a0 e1                                      mov r0, r4
00616ef8  da 4b 01 eb                                      bl #0x669e68
00616efc  06 10 a0 e1                                      mov r1, r6
00616f00  00 40 a0 e1                                      mov r4, r0
00616f04  05 00 a0 e1                                      mov r0, r5
00616f08  27 dd f3 eb                                      bl #0x30e3ac
00616f0c  00 10 a0 e1                                      mov r1, r0
00616f10  38 00 9d e5                                      ldr r0, [sp, #0x38]
00616f14  94 df f3 eb                                      bl #0x30ed6c
00616f18  00 10 a0 e1                                      mov r1, r0
00616f1c  06 00 a0 e1                                      mov r0, r6
00616f20  1f df f3 eb                                      bl #0x30eba4
00616f24  09 30 a0 e1                                      mov r3, sb
00616f28  04 00 83 e4                                      str r0, [r3], #4
00616f2c  04 20 94 e5                                      ldr r2, [r4, #4]
00616f30  04 20 89 e5                                      str r2, [sb, #4]
00616f34  08 20 94 e5                                      ldr r2, [r4, #8]
00616f38  04 20 83 e5                                      str r2, [r3, #4]
00616f3c  ea ff ff ea                                      b #0x616eec
