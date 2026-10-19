; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00615a5c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00615a5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00615a60  00 40 a0 e1                                      mov r4, r0
00615a64  10 d0 4d e2                                      sub sp, sp, #0x10
00615a68  01 50 a0 e1                                      mov r5, r1
00615a6c  04 00 8d e2                                      add r0, sp, #4
00615a70  04 10 a0 e1                                      mov r1, r4
00615a74  02 60 a0 e1                                      mov r6, r2
00615a78  d9 f8 ff eb                                      bl #0x613de4
00615a7c  04 30 9d e5                                      ldr r3, [sp, #4]
00615a80  04 30 93 e5                                      ldr r3, [r3, #4]
00615a84  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00615a88  b5 e3 f3 eb                                      bl #0x30e964
00615a8c  08 30 9d e5                                      ldr r3, [sp, #8]
00615a90  00 10 93 e5                                      ldr r1, [r3]
00615a94  b4 e4 f3 eb                                      bl #0x30ed6c
00615a98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615a9c  00 10 93 e5                                      ldr r1, [r3]
00615aa0  3f e4 f3 eb                                      bl #0x30eba4
00615aa4  00 50 a0 e1                                      mov r5, r0
00615aa8  04 00 a0 e1                                      mov r0, r4
00615aac  e8 50 01 eb                                      bl #0x669e54
00615ab0  00 00 50 e3                                      cmp r0, #0
00615ab4  02 00 00 1a                                      bne #0x615ac4
00615ab8  00 50 86 e5                                      str r5, [r6]
00615abc  10 d0 8d e2                                      add sp, sp, #0x10
00615ac0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00615ac4  04 00 a0 e1                                      mov r0, r4
00615ac8  e6 50 01 eb                                      bl #0x669e68
00615acc  00 00 50 e3                                      cmp r0, #0
00615ad0  f8 ff ff 0a                                      beq #0x615ab8
00615ad4  04 00 a0 e1                                      mov r0, r4
00615ad8  e2 50 01 eb                                      bl #0x669e68
00615adc  00 20 90 e5                                      ldr r2, [r0]
00615ae0  06 30 a0 e1                                      mov r3, r6
00615ae4  04 20 83 e4                                      str r2, [r3], #4
00615ae8  04 50 86 e5                                      str r5, [r6, #4]
00615aec  08 20 90 e5                                      ldr r2, [r0, #8]
00615af0  04 20 83 e5                                      str r2, [r3, #4]
00615af4  f0 ff ff ea                                      b #0x615abc

; FUNCTION 0x00615b08, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
00615b08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00615b0c  00 40 a0 e1                                      mov r4, r0
00615b10  14 d0 4d e2                                      sub sp, sp, #0x14
00615b14  01 50 a0 e1                                      mov r5, r1
00615b18  04 00 8d e2                                      add r0, sp, #4
00615b1c  04 10 a0 e1                                      mov r1, r4
00615b20  02 60 a0 e1                                      mov r6, r2
00615b24  03 b0 a0 e1                                      mov fp, r3
00615b28  38 90 9d e5                                      ldr sb, [sp, #0x38]
00615b2c  ac f8 ff eb                                      bl #0x613de4
00615b30  04 30 9d e5                                      ldr r3, [sp, #4]
00615b34  04 a0 93 e5                                      ldr sl, [r3, #4]
00615b38  08 30 9d e5                                      ldr r3, [sp, #8]
00615b3c  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00615b40  00 80 93 e5                                      ldr r8, [r3]
00615b44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615b48  00 70 93 e5                                      ldr r7, [r3]
00615b4c  84 e3 f3 eb                                      bl #0x30e964
00615b50  08 10 a0 e1                                      mov r1, r8
00615b54  84 e4 f3 eb                                      bl #0x30ed6c
00615b58  07 10 a0 e1                                      mov r1, r7
00615b5c  10 e4 f3 eb                                      bl #0x30eba4
00615b60  00 50 a0 e1                                      mov r5, r0
00615b64  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00615b68  7d e3 f3 eb                                      bl #0x30e964
00615b6c  00 10 a0 e1                                      mov r1, r0
00615b70  08 00 a0 e1                                      mov r0, r8
00615b74  7c e4 f3 eb                                      bl #0x30ed6c
00615b78  00 10 a0 e1                                      mov r1, r0
00615b7c  07 00 a0 e1                                      mov r0, r7
00615b80  07 e4 f3 eb                                      bl #0x30eba4
00615b84  00 70 a0 e1                                      mov r7, r0
00615b88  04 00 a0 e1                                      mov r0, r4
00615b8c  b0 50 01 eb                                      bl #0x669e54
00615b90  00 00 50 e3                                      cmp r0, #0
00615b94  13 00 00 0a                                      beq #0x615be8
00615b98  04 00 a0 e1                                      mov r0, r4
00615b9c  b1 50 01 eb                                      bl #0x669e68
00615ba0  00 30 90 e5                                      ldr r3, [r0]
00615ba4  09 60 a0 e1                                      mov r6, sb
00615ba8  05 10 a0 e1                                      mov r1, r5
00615bac  04 30 86 e4                                      str r3, [r6], #4
00615bb0  07 00 a0 e1                                      mov r0, r7
00615bb4  fc e1 f3 eb                                      bl #0x30e3ac
00615bb8  00 10 a0 e1                                      mov r1, r0
00615bbc  0b 00 a0 e1                                      mov r0, fp
00615bc0  69 e4 f3 eb                                      bl #0x30ed6c
00615bc4  05 10 a0 e1                                      mov r1, r5
00615bc8  f5 e3 f3 eb                                      bl #0x30eba4
00615bcc  04 00 89 e5                                      str r0, [sb, #4]
00615bd0  04 00 a0 e1                                      mov r0, r4
00615bd4  a3 50 01 eb                                      bl #0x669e68
00615bd8  08 30 90 e5                                      ldr r3, [r0, #8]
00615bdc  04 30 86 e5                                      str r3, [r6, #4]
00615be0  14 d0 8d e2                                      add sp, sp, #0x14
00615be4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00615be8  05 10 a0 e1                                      mov r1, r5
00615bec  07 00 a0 e1                                      mov r0, r7
00615bf0  ed e1 f3 eb                                      bl #0x30e3ac
00615bf4  00 10 a0 e1                                      mov r1, r0
00615bf8  0b 00 a0 e1                                      mov r0, fp
00615bfc  5a e4 f3 eb                                      bl #0x30ed6c
00615c00  05 10 a0 e1                                      mov r1, r5
00615c04  e6 e3 f3 eb                                      bl #0x30eba4
00615c08  00 00 89 e5                                      str r0, [sb]
00615c0c  f3 ff ff ea                                      b #0x615be0

; FUNCTION 0x00615c2c, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
00615c2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00615c30  00 40 a0 e1                                      mov r4, r0
00615c34  10 d0 4d e2                                      sub sp, sp, #0x10
00615c38  01 50 a0 e1                                      mov r5, r1
00615c3c  04 00 8d e2                                      add r0, sp, #4
00615c40  04 10 a0 e1                                      mov r1, r4
00615c44  02 60 a0 e1                                      mov r6, r2
00615c48  03 90 a0 e1                                      mov sb, r3
00615c4c  64 f8 ff eb                                      bl #0x613de4
00615c50  04 30 9d e5                                      ldr r3, [sp, #4]
00615c54  04 a0 93 e5                                      ldr sl, [r3, #4]
00615c58  08 30 9d e5                                      ldr r3, [sp, #8]
00615c5c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00615c60  00 80 93 e5                                      ldr r8, [r3]
00615c64  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615c68  00 70 93 e5                                      ldr r7, [r3]
00615c6c  3c e3 f3 eb                                      bl #0x30e964
00615c70  00 10 a0 e1                                      mov r1, r0
00615c74  08 00 a0 e1                                      mov r0, r8
00615c78  3b e4 f3 eb                                      bl #0x30ed6c
00615c7c  00 10 a0 e1                                      mov r1, r0
00615c80  07 00 a0 e1                                      mov r0, r7
00615c84  c6 e3 f3 eb                                      bl #0x30eba4
00615c88  00 60 a0 e1                                      mov r6, r0
00615c8c  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00615c90  33 e3 f3 eb                                      bl #0x30e964
00615c94  08 10 a0 e1                                      mov r1, r8
00615c98  33 e4 f3 eb                                      bl #0x30ed6c
00615c9c  07 10 a0 e1                                      mov r1, r7
00615ca0  bf e3 f3 eb                                      bl #0x30eba4
00615ca4  00 10 a0 e1                                      mov r1, r0
00615ca8  06 00 a0 e1                                      mov r0, r6
00615cac  be e1 f3 eb                                      bl #0x30e3ac
00615cb0  00 50 a0 e1                                      mov r5, r0
00615cb4  04 00 a0 e1                                      mov r0, r4
00615cb8  65 50 01 eb                                      bl #0x669e54
00615cbc  00 00 50 e3                                      cmp r0, #0
00615cc0  00 50 89 05                                      streq r5, [sb]
00615cc4  01 00 00 1a                                      bne #0x615cd0
00615cc8  10 d0 8d e2                                      add sp, sp, #0x10
00615ccc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00615cd0  04 00 a0 e1                                      mov r0, r4
00615cd4  63 50 01 eb                                      bl #0x669e68
00615cd8  00 20 90 e5                                      ldr r2, [r0]
00615cdc  09 30 a0 e1                                      mov r3, sb
00615ce0  04 20 83 e4                                      str r2, [r3], #4
00615ce4  04 50 89 e5                                      str r5, [sb, #4]
00615ce8  08 20 90 e5                                      ldr r2, [r0, #8]
00615cec  04 20 83 e5                                      str r2, [r3, #4]
00615cf0  f4 ff ff ea                                      b #0x615cc8

; FUNCTION 0x00615d08, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionYExIcEEfLi3ENS1_17SUseDefaultValuesILi1EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionYEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<1, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00615d08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00615d0c  00 40 a0 e1                                      mov r4, r0
00615d10  14 d0 4d e2                                      sub sp, sp, #0x14
00615d14  01 50 a0 e1                                      mov r5, r1
00615d18  04 00 8d e2                                      add r0, sp, #4
00615d1c  04 10 a0 e1                                      mov r1, r4
00615d20  02 60 a0 e1                                      mov r6, r2
00615d24  03 b0 a0 e1                                      mov fp, r3
00615d28  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
00615d2c  2c f8 ff eb                                      bl #0x613de4
00615d30  04 30 9d e5                                      ldr r3, [sp, #4]
00615d34  04 a0 93 e5                                      ldr sl, [r3, #4]
00615d38  08 30 9d e5                                      ldr r3, [sp, #8]
00615d3c  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00615d40  00 80 93 e5                                      ldr r8, [r3]
00615d44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00615d48  00 70 93 e5                                      ldr r7, [r3]
00615d4c  04 e3 f3 eb                                      bl #0x30e964
00615d50  08 10 a0 e1                                      mov r1, r8
00615d54  04 e4 f3 eb                                      bl #0x30ed6c
00615d58  07 10 a0 e1                                      mov r1, r7
00615d5c  90 e3 f3 eb                                      bl #0x30eba4
00615d60  00 50 a0 e1                                      mov r5, r0
00615d64  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00615d68  fd e2 f3 eb                                      bl #0x30e964
00615d6c  00 10 a0 e1                                      mov r1, r0
00615d70  08 00 a0 e1                                      mov r0, r8
00615d74  fc e3 f3 eb                                      bl #0x30ed6c
00615d78  00 10 a0 e1                                      mov r1, r0
00615d7c  07 00 a0 e1                                      mov r0, r7
00615d80  87 e3 f3 eb                                      bl #0x30eba4
00615d84  05 10 a0 e1                                      mov r1, r5
00615d88  87 e1 f3 eb                                      bl #0x30e3ac
00615d8c  00 60 a0 e1                                      mov r6, r0
00615d90  db 00 9a e1                                      ldrsb r0, [sl, fp]
00615d94  f2 e2 f3 eb                                      bl #0x30e964
00615d98  00 10 a0 e1                                      mov r1, r0
00615d9c  08 00 a0 e1                                      mov r0, r8
00615da0  f1 e3 f3 eb                                      bl #0x30ed6c
00615da4  00 10 a0 e1                                      mov r1, r0
00615da8  07 00 a0 e1                                      mov r0, r7
00615dac  7c e3 f3 eb                                      bl #0x30eba4
00615db0  05 10 a0 e1                                      mov r1, r5
00615db4  7c e1 f3 eb                                      bl #0x30e3ac
00615db8  00 70 a0 e1                                      mov r7, r0
00615dbc  04 00 a0 e1                                      mov r0, r4
00615dc0  23 50 01 eb                                      bl #0x669e54
00615dc4  00 00 50 e3                                      cmp r0, #0
00615dc8  0b 00 00 1a                                      bne #0x615dfc
00615dcc  06 10 a0 e1                                      mov r1, r6
00615dd0  07 00 a0 e1                                      mov r0, r7
00615dd4  74 e1 f3 eb                                      bl #0x30e3ac
00615dd8  00 10 a0 e1                                      mov r1, r0
00615ddc  38 00 9d e5                                      ldr r0, [sp, #0x38]
00615de0  e1 e3 f3 eb                                      bl #0x30ed6c
00615de4  00 10 a0 e1                                      mov r1, r0
00615de8  06 00 a0 e1                                      mov r0, r6
00615dec  6c e3 f3 eb                                      bl #0x30eba4
00615df0  00 00 89 e5                                      str r0, [sb]
00615df4  14 d0 8d e2                                      add sp, sp, #0x14
00615df8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00615dfc  04 00 a0 e1                                      mov r0, r4
00615e00  18 50 01 eb                                      bl #0x669e68
00615e04  00 30 90 e5                                      ldr r3, [r0]
00615e08  09 40 a0 e1                                      mov r4, sb
00615e0c  00 50 a0 e1                                      mov r5, r0
00615e10  04 30 84 e4                                      str r3, [r4], #4
00615e14  06 10 a0 e1                                      mov r1, r6
00615e18  07 00 a0 e1                                      mov r0, r7
00615e1c  62 e1 f3 eb                                      bl #0x30e3ac
00615e20  00 10 a0 e1                                      mov r1, r0
00615e24  38 00 9d e5                                      ldr r0, [sp, #0x38]
00615e28  cf e3 f3 eb                                      bl #0x30ed6c
00615e2c  00 10 a0 e1                                      mov r1, r0
00615e30  06 00 a0 e1                                      mov r0, r6
00615e34  5a e3 f3 eb                                      bl #0x30eba4
00615e38  04 00 89 e5                                      str r0, [sb, #4]
00615e3c  08 30 95 e5                                      ldr r3, [r5, #8]
00615e40  04 30 84 e5                                      str r3, [r4, #4]
00615e44  ea ff ff ea                                      b #0x615df4
