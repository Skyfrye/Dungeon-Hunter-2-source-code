; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035f188, declared_size=448, range_size=448, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4core17buildShadowMatrixIfEENS0_8CMatrix4IT_EERKNS0_8vector3dIS3_EENS0_7plane3dIS3_EES3_.clone.2
; demangled: glitch::core::CMatrix4<float> glitch::core::buildShadowMatrix<float>(glitch::core::vector3d<float> const&, glitch::core::plane3d<float>, float) [clone .clone.2]
; decoder-mode: arm
0035f188  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035f18c  00 80 a0 e3                                      mov r8, #0
0035f190  02 40 a0 e1                                      mov r4, r2
0035f194  00 50 a0 e1                                      mov r5, r0
0035f198  01 60 a0 e1                                      mov r6, r1
0035f19c  40 80 c0 e5                                      strb r8, [r0, #0x40]
0035f1a0  02 00 a0 e1                                      mov r0, r2
0035f1a4  cd fd ff eb                                      bl #0x35e8e0
0035f1a8  00 10 96 e5                                      ldr r1, [r6]
0035f1ac  00 00 94 e5                                      ldr r0, [r4]
0035f1b0  ed be fe eb                                      bl #0x30ed6c
0035f1b4  04 10 96 e5                                      ldr r1, [r6, #4]
0035f1b8  00 70 a0 e1                                      mov r7, r0
0035f1bc  04 00 94 e5                                      ldr r0, [r4, #4]
0035f1c0  e9 be fe eb                                      bl #0x30ed6c
0035f1c4  00 10 a0 e1                                      mov r1, r0
0035f1c8  07 00 a0 e1                                      mov r0, r7
0035f1cc  74 be fe eb                                      bl #0x30eba4
0035f1d0  08 10 96 e5                                      ldr r1, [r6, #8]
0035f1d4  00 70 a0 e1                                      mov r7, r0
0035f1d8  08 00 94 e5                                      ldr r0, [r4, #8]
0035f1dc  e2 be fe eb                                      bl #0x30ed6c
0035f1e0  00 10 a0 e1                                      mov r1, r0
0035f1e4  07 00 a0 e1                                      mov r0, r7
0035f1e8  6d be fe eb                                      bl #0x30eba4
0035f1ec  40 80 c5 e5                                      strb r8, [r5, #0x40]
0035f1f0  00 70 a0 e1                                      mov r7, r0
0035f1f4  00 00 94 e5                                      ldr r0, [r4]
0035f1f8  00 10 96 e5                                      ldr r1, [r6]
0035f1fc  02 01 80 e2                                      add r0, r0, #0x80000000
0035f200  d9 be fe eb                                      bl #0x30ed6c
0035f204  00 10 a0 e1                                      mov r1, r0
0035f208  07 00 a0 e1                                      mov r0, r7
0035f20c  64 be fe eb                                      bl #0x30eba4
0035f210  00 00 85 e5                                      str r0, [r5]
0035f214  00 00 94 e5                                      ldr r0, [r4]
0035f218  04 10 96 e5                                      ldr r1, [r6, #4]
0035f21c  02 01 80 e2                                      add r0, r0, #0x80000000
0035f220  d1 be fe eb                                      bl #0x30ed6c
0035f224  04 00 85 e5                                      str r0, [r5, #4]
0035f228  00 00 94 e5                                      ldr r0, [r4]
0035f22c  08 10 96 e5                                      ldr r1, [r6, #8]
0035f230  02 01 80 e2                                      add r0, r0, #0x80000000
0035f234  cc be fe eb                                      bl #0x30ed6c
0035f238  08 00 85 e5                                      str r0, [r5, #8]
0035f23c  00 30 94 e5                                      ldr r3, [r4]
0035f240  02 31 83 e2                                      add r3, r3, #0x80000000
0035f244  0c 30 85 e5                                      str r3, [r5, #0xc]
0035f248  04 00 94 e5                                      ldr r0, [r4, #4]
0035f24c  00 10 96 e5                                      ldr r1, [r6]
0035f250  02 01 80 e2                                      add r0, r0, #0x80000000
0035f254  c4 be fe eb                                      bl #0x30ed6c
0035f258  10 00 85 e5                                      str r0, [r5, #0x10]
0035f25c  04 00 94 e5                                      ldr r0, [r4, #4]
0035f260  04 10 96 e5                                      ldr r1, [r6, #4]
0035f264  02 01 80 e2                                      add r0, r0, #0x80000000
0035f268  bf be fe eb                                      bl #0x30ed6c
0035f26c  00 10 a0 e1                                      mov r1, r0
0035f270  07 00 a0 e1                                      mov r0, r7
0035f274  4a be fe eb                                      bl #0x30eba4
0035f278  14 00 85 e5                                      str r0, [r5, #0x14]
0035f27c  04 00 94 e5                                      ldr r0, [r4, #4]
0035f280  08 10 96 e5                                      ldr r1, [r6, #8]
0035f284  02 01 80 e2                                      add r0, r0, #0x80000000
0035f288  b7 be fe eb                                      bl #0x30ed6c
0035f28c  18 00 85 e5                                      str r0, [r5, #0x18]
0035f290  04 30 94 e5                                      ldr r3, [r4, #4]
0035f294  02 31 83 e2                                      add r3, r3, #0x80000000
0035f298  1c 30 85 e5                                      str r3, [r5, #0x1c]
0035f29c  08 00 94 e5                                      ldr r0, [r4, #8]
0035f2a0  00 10 96 e5                                      ldr r1, [r6]
0035f2a4  02 01 80 e2                                      add r0, r0, #0x80000000
0035f2a8  af be fe eb                                      bl #0x30ed6c
0035f2ac  20 00 85 e5                                      str r0, [r5, #0x20]
0035f2b0  08 00 94 e5                                      ldr r0, [r4, #8]
0035f2b4  04 10 96 e5                                      ldr r1, [r6, #4]
0035f2b8  02 01 80 e2                                      add r0, r0, #0x80000000
0035f2bc  aa be fe eb                                      bl #0x30ed6c
0035f2c0  24 00 85 e5                                      str r0, [r5, #0x24]
0035f2c4  08 00 94 e5                                      ldr r0, [r4, #8]
0035f2c8  08 10 96 e5                                      ldr r1, [r6, #8]
0035f2cc  02 01 80 e2                                      add r0, r0, #0x80000000
0035f2d0  a5 be fe eb                                      bl #0x30ed6c
0035f2d4  00 10 a0 e1                                      mov r1, r0
0035f2d8  07 00 a0 e1                                      mov r0, r7
0035f2dc  30 be fe eb                                      bl #0x30eba4
0035f2e0  28 00 85 e5                                      str r0, [r5, #0x28]
0035f2e4  08 30 94 e5                                      ldr r3, [r4, #8]
0035f2e8  02 31 83 e2                                      add r3, r3, #0x80000000
0035f2ec  2c 30 85 e5                                      str r3, [r5, #0x2c]
0035f2f0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0035f2f4  00 10 96 e5                                      ldr r1, [r6]
0035f2f8  02 01 80 e2                                      add r0, r0, #0x80000000
0035f2fc  9a be fe eb                                      bl #0x30ed6c
0035f300  30 00 85 e5                                      str r0, [r5, #0x30]
0035f304  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0035f308  04 10 96 e5                                      ldr r1, [r6, #4]
0035f30c  02 01 80 e2                                      add r0, r0, #0x80000000
0035f310  95 be fe eb                                      bl #0x30ed6c
0035f314  34 00 85 e5                                      str r0, [r5, #0x34]
0035f318  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0035f31c  08 10 96 e5                                      ldr r1, [r6, #8]
0035f320  02 01 80 e2                                      add r0, r0, #0x80000000
0035f324  90 be fe eb                                      bl #0x30ed6c
0035f328  38 00 85 e5                                      str r0, [r5, #0x38]
0035f32c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0035f330  07 00 a0 e1                                      mov r0, r7
0035f334  02 11 81 e2                                      add r1, r1, #0x80000000
0035f338  19 be fe eb                                      bl #0x30eba4
0035f33c  3c 00 85 e5                                      str r0, [r5, #0x3c]
0035f340  05 00 a0 e1                                      mov r0, r5
0035f344  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00582c88, declared_size=264, range_size=264, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4core35buildProjectionMatrixPerspectiveFovIfEENS0_8CMatrix4IT_EES3_S3_S3_S3_
; demangled: glitch::core::CMatrix4<float> glitch::core::buildProjectionMatrixPerspectiveFov<float>(float, float, float, float)
; decoder-mode: arm
00582c88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00582c8c  00 40 a0 e1                                      mov r4, r0
00582c90  01 00 a0 e1                                      mov r0, r1
00582c94  03 50 a0 e1                                      mov r5, r3
00582c98  02 60 a0 e1                                      mov r6, r2
00582c9c  00 2f f6 eb                                      bl #0x30e8a4
00582ca0  ff 35 a0 e3                                      mov r3, #0x3fc00000
00582ca4  00 20 a0 e3                                      mov r2, #0
00582ca8  02 36 83 e2                                      add r3, r3, #0x200000
00582cac  80 2f f6 eb                                      bl #0x30eab4
00582cb0  11 2e f6 eb                                      bl #0x30e4fc
00582cb4  01 30 a0 e1                                      mov r3, r1
00582cb8  ff 15 a0 e3                                      mov r1, #0x3fc00000
00582cbc  00 20 a0 e1                                      mov r2, r0
00582cc0  03 16 81 e2                                      add r1, r1, #0x300000
00582cc4  00 00 a0 e3                                      mov r0, #0
00582cc8  9c 2d f6 eb                                      bl #0x30e340
00582ccc  00 80 a0 e1                                      mov r8, r0
00582cd0  06 00 a0 e1                                      mov r0, r6
00582cd4  01 90 a0 e1                                      mov sb, r1
00582cd8  f1 2e f6 eb                                      bl #0x30e8a4
00582cdc  00 20 a0 e1                                      mov r2, r0
00582ce0  01 30 a0 e1                                      mov r3, r1
00582ce4  08 00 a0 e1                                      mov r0, r8
00582ce8  09 10 a0 e1                                      mov r1, sb
00582cec  93 2d f6 eb                                      bl #0x30e340
00582cf0  6a 2e f6 eb                                      bl #0x30e6a0
00582cf4  00 60 a0 e3                                      mov r6, #0
00582cf8  00 00 84 e5                                      str r0, [r4]
00582cfc  09 10 a0 e1                                      mov r1, sb
00582d00  08 00 a0 e1                                      mov r0, r8
00582d04  04 60 84 e5                                      str r6, [r4, #4]
00582d08  08 60 84 e5                                      str r6, [r4, #8]
00582d0c  0c 60 84 e5                                      str r6, [r4, #0xc]
00582d10  10 60 84 e5                                      str r6, [r4, #0x10]
00582d14  61 2e f6 eb                                      bl #0x30e6a0
00582d18  20 70 9d e5                                      ldr r7, [sp, #0x20]
00582d1c  05 10 a0 e1                                      mov r1, r5
00582d20  14 00 84 e5                                      str r0, [r4, #0x14]
00582d24  18 60 84 e5                                      str r6, [r4, #0x18]
00582d28  1c 60 84 e5                                      str r6, [r4, #0x1c]
00582d2c  20 60 84 e5                                      str r6, [r4, #0x20]
00582d30  24 60 84 e5                                      str r6, [r4, #0x24]
00582d34  07 00 a0 e1                                      mov r0, r7
00582d38  9b 2d f6 eb                                      bl #0x30e3ac
00582d3c  00 80 a0 e1                                      mov r8, r0
00582d40  08 10 a0 e1                                      mov r1, r8
00582d44  07 00 a0 e1                                      mov r0, r7
00582d48  d1 2f f6 eb                                      bl #0x30ec94
00582d4c  02 51 85 e2                                      add r5, r5, #0x80000000
00582d50  fe 35 a0 e3                                      mov r3, #0x3f800000
00582d54  2c 30 84 e5                                      str r3, [r4, #0x2c]
00582d58  28 00 84 e5                                      str r0, [r4, #0x28]
00582d5c  07 10 a0 e1                                      mov r1, r7
00582d60  30 60 84 e5                                      str r6, [r4, #0x30]
00582d64  34 60 84 e5                                      str r6, [r4, #0x34]
00582d68  05 00 a0 e1                                      mov r0, r5
00582d6c  fe 2f f6 eb                                      bl #0x30ed6c
00582d70  08 10 a0 e1                                      mov r1, r8
00582d74  c6 2f f6 eb                                      bl #0x30ec94
00582d78  00 30 a0 e3                                      mov r3, #0
00582d7c  38 00 84 e5                                      str r0, [r4, #0x38]
00582d80  40 30 c4 e5                                      strb r3, [r4, #0x40]
00582d84  3c 60 84 e5                                      str r6, [r4, #0x3c]
00582d88  04 00 a0 e1                                      mov r0, r4
00582d8c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00582d90, declared_size=212, range_size=212, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4core43buildProjectionMatrixPerspectiveFovInfinityIfEENS0_8CMatrix4IT_EES3_S3_S3_
; demangled: glitch::core::CMatrix4<float> glitch::core::buildProjectionMatrixPerspectiveFovInfinity<float>(float, float, float)
; decoder-mode: arm
00582d90  70 43 2d e9                                      push {r4, r5, r6, r8, sb, lr}
00582d94  00 40 a0 e1                                      mov r4, r0
00582d98  01 00 a0 e1                                      mov r0, r1
00582d9c  02 60 a0 e1                                      mov r6, r2
00582da0  03 50 a0 e1                                      mov r5, r3
00582da4  be 2e f6 eb                                      bl #0x30e8a4
00582da8  ff 35 a0 e3                                      mov r3, #0x3fc00000
00582dac  00 20 a0 e3                                      mov r2, #0
00582db0  02 36 83 e2                                      add r3, r3, #0x200000
00582db4  3e 2f f6 eb                                      bl #0x30eab4
00582db8  cf 2d f6 eb                                      bl #0x30e4fc
00582dbc  01 30 a0 e1                                      mov r3, r1
00582dc0  ff 15 a0 e3                                      mov r1, #0x3fc00000
00582dc4  00 20 a0 e1                                      mov r2, r0
00582dc8  03 16 81 e2                                      add r1, r1, #0x300000
00582dcc  00 00 a0 e3                                      mov r0, #0
00582dd0  5a 2d f6 eb                                      bl #0x30e340
00582dd4  00 80 a0 e1                                      mov r8, r0
00582dd8  06 00 a0 e1                                      mov r0, r6
00582ddc  01 90 a0 e1                                      mov sb, r1
00582de0  af 2e f6 eb                                      bl #0x30e8a4
00582de4  00 20 a0 e1                                      mov r2, r0
00582de8  01 30 a0 e1                                      mov r3, r1
00582dec  08 00 a0 e1                                      mov r0, r8
00582df0  09 10 a0 e1                                      mov r1, sb
00582df4  51 2d f6 eb                                      bl #0x30e340
00582df8  28 2e f6 eb                                      bl #0x30e6a0
00582dfc  00 60 a0 e3                                      mov r6, #0
00582e00  00 00 84 e5                                      str r0, [r4]
00582e04  09 10 a0 e1                                      mov r1, sb
00582e08  08 00 a0 e1                                      mov r0, r8
00582e0c  04 60 84 e5                                      str r6, [r4, #4]
00582e10  08 60 84 e5                                      str r6, [r4, #8]
00582e14  0c 60 84 e5                                      str r6, [r4, #0xc]
00582e18  10 60 84 e5                                      str r6, [r4, #0x10]
00582e1c  1f 2e f6 eb                                      bl #0x30e6a0
00582e20  02 51 85 e2                                      add r5, r5, #0x80000000
00582e24  fe 35 a0 e3                                      mov r3, #0x3f800000
00582e28  00 20 a0 e3                                      mov r2, #0
00582e2c  14 00 84 e5                                      str r0, [r4, #0x14]
00582e30  2c 30 84 e5                                      str r3, [r4, #0x2c]
00582e34  38 50 84 e5                                      str r5, [r4, #0x38]
00582e38  40 20 c4 e5                                      strb r2, [r4, #0x40]
00582e3c  3c 60 84 e5                                      str r6, [r4, #0x3c]
00582e40  18 60 84 e5                                      str r6, [r4, #0x18]
00582e44  1c 60 84 e5                                      str r6, [r4, #0x1c]
00582e48  20 60 84 e5                                      str r6, [r4, #0x20]
00582e4c  24 60 84 e5                                      str r6, [r4, #0x24]
00582e50  28 30 84 e5                                      str r3, [r4, #0x28]
00582e54  30 60 84 e5                                      str r6, [r4, #0x30]
00582e58  34 60 84 e5                                      str r6, [r4, #0x34]
00582e5c  04 00 a0 e1                                      mov r0, r4
00582e60  70 83 bd e8                                      pop {r4, r5, r6, r8, sb, pc}

; FUNCTION 0x00582e64, declared_size=1052, range_size=1052, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4core23buildCameraLookAtMatrixIfEENS0_8CMatrix4IT_EERKNS0_8vector3dIS3_EES8_S8_
; demangled: glitch::core::CMatrix4<float> glitch::core::buildCameraLookAtMatrix<float>(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00582e64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00582e68  01 50 a0 e1                                      mov r5, r1
00582e6c  14 d0 4d e2                                      sub sp, sp, #0x14
00582e70  00 10 91 e5                                      ldr r1, [r1]
00582e74  00 40 a0 e1                                      mov r4, r0
00582e78  00 00 92 e5                                      ldr r0, [r2]
00582e7c  02 60 a0 e1                                      mov r6, r2
00582e80  03 a0 a0 e1                                      mov sl, r3
00582e84  48 2d f6 eb                                      bl #0x30e3ac
00582e88  04 10 95 e5                                      ldr r1, [r5, #4]
00582e8c  00 80 a0 e1                                      mov r8, r0
00582e90  04 00 96 e5                                      ldr r0, [r6, #4]
00582e94  44 2d f6 eb                                      bl #0x30e3ac
00582e98  08 10 95 e5                                      ldr r1, [r5, #8]
00582e9c  00 70 a0 e1                                      mov r7, r0
00582ea0  08 00 96 e5                                      ldr r0, [r6, #8]
00582ea4  40 2d f6 eb                                      bl #0x30e3ac
00582ea8  08 10 a0 e1                                      mov r1, r8
00582eac  00 60 a0 e1                                      mov r6, r0
00582eb0  08 00 a0 e1                                      mov r0, r8
00582eb4  ac 2f f6 eb                                      bl #0x30ed6c
00582eb8  07 10 a0 e1                                      mov r1, r7
00582ebc  00 90 a0 e1                                      mov sb, r0
00582ec0  07 00 a0 e1                                      mov r0, r7
00582ec4  a8 2f f6 eb                                      bl #0x30ed6c
00582ec8  00 10 a0 e1                                      mov r1, r0
00582ecc  09 00 a0 e1                                      mov r0, sb
00582ed0  33 2f f6 eb                                      bl #0x30eba4
00582ed4  06 10 a0 e1                                      mov r1, r6
00582ed8  00 90 a0 e1                                      mov sb, r0
00582edc  06 00 a0 e1                                      mov r0, r6
00582ee0  a1 2f f6 eb                                      bl #0x30ed6c
00582ee4  00 10 a0 e1                                      mov r1, r0
00582ee8  09 00 a0 e1                                      mov r0, sb
00582eec  2c 2f f6 eb                                      bl #0x30eba4
00582ef0  00 10 a0 e3                                      mov r1, #0
00582ef4  00 90 a0 e1                                      mov sb, r0
00582ef8  23 2c f6 eb                                      bl #0x30df8c
00582efc  00 00 50 e3                                      cmp r0, #0
00582f00  11 00 00 1a                                      bne #0x582f4c
00582f04  09 00 a0 e1                                      mov r0, sb
00582f08  85 2c f6 eb                                      bl #0x30e124
00582f0c  00 10 a0 e1                                      mov r1, r0
00582f10  fe 05 a0 e3                                      mov r0, #0x3f800000
00582f14  5e 2f f6 eb                                      bl #0x30ec94
00582f18  00 90 a0 e1                                      mov sb, r0
00582f1c  09 10 a0 e1                                      mov r1, sb
00582f20  08 00 a0 e1                                      mov r0, r8
00582f24  90 2f f6 eb                                      bl #0x30ed6c
00582f28  09 10 a0 e1                                      mov r1, sb
00582f2c  00 80 a0 e1                                      mov r8, r0
00582f30  07 00 a0 e1                                      mov r0, r7
00582f34  8c 2f f6 eb                                      bl #0x30ed6c
00582f38  09 10 a0 e1                                      mov r1, sb
00582f3c  00 70 a0 e1                                      mov r7, r0
00582f40  06 00 a0 e1                                      mov r0, r6
00582f44  88 2f f6 eb                                      bl #0x30ed6c
00582f48  00 60 a0 e1                                      mov r6, r0
00582f4c  04 20 9a e5                                      ldr r2, [sl, #4]
00582f50  06 00 a0 e1                                      mov r0, r6
00582f54  08 b0 9a e5                                      ldr fp, [sl, #8]
00582f58  02 11 82 e2                                      add r1, r2, #0x80000000
00582f5c  04 20 8d e5                                      str r2, [sp, #4]
00582f60  81 2f f6 eb                                      bl #0x30ed6c
00582f64  0b 10 a0 e1                                      mov r1, fp
00582f68  00 90 a0 e1                                      mov sb, r0
00582f6c  07 00 a0 e1                                      mov r0, r7
00582f70  7d 2f f6 eb                                      bl #0x30ed6c
00582f74  00 10 a0 e1                                      mov r1, r0
00582f78  09 00 a0 e1                                      mov r0, sb
00582f7c  08 2f f6 eb                                      bl #0x30eba4
00582f80  02 11 8b e2                                      add r1, fp, #0x80000000
00582f84  00 90 a0 e1                                      mov sb, r0
00582f88  08 00 a0 e1                                      mov r0, r8
00582f8c  76 2f f6 eb                                      bl #0x30ed6c
00582f90  00 b0 9a e5                                      ldr fp, [sl]
00582f94  00 a0 a0 e1                                      mov sl, r0
00582f98  06 00 a0 e1                                      mov r0, r6
00582f9c  0b 10 a0 e1                                      mov r1, fp
00582fa0  71 2f f6 eb                                      bl #0x30ed6c
00582fa4  00 10 a0 e1                                      mov r1, r0
00582fa8  0a 00 a0 e1                                      mov r0, sl
00582fac  fc 2e f6 eb                                      bl #0x30eba4
00582fb0  02 11 8b e2                                      add r1, fp, #0x80000000
00582fb4  00 a0 a0 e1                                      mov sl, r0
00582fb8  07 00 a0 e1                                      mov r0, r7
00582fbc  6a 2f f6 eb                                      bl #0x30ed6c
00582fc0  04 20 9d e5                                      ldr r2, [sp, #4]
00582fc4  00 b0 a0 e1                                      mov fp, r0
00582fc8  08 00 a0 e1                                      mov r0, r8
00582fcc  02 10 a0 e1                                      mov r1, r2
00582fd0  65 2f f6 eb                                      bl #0x30ed6c
00582fd4  00 10 a0 e1                                      mov r1, r0
00582fd8  0b 00 a0 e1                                      mov r0, fp
00582fdc  f0 2e f6 eb                                      bl #0x30eba4
00582fe0  09 10 a0 e1                                      mov r1, sb
00582fe4  00 b0 a0 e1                                      mov fp, r0
00582fe8  09 00 a0 e1                                      mov r0, sb
00582fec  5e 2f f6 eb                                      bl #0x30ed6c
00582ff0  0a 10 a0 e1                                      mov r1, sl
00582ff4  00 30 a0 e1                                      mov r3, r0
00582ff8  0a 00 a0 e1                                      mov r0, sl
00582ffc  04 30 8d e5                                      str r3, [sp, #4]
00583000  59 2f f6 eb                                      bl #0x30ed6c
00583004  04 30 9d e5                                      ldr r3, [sp, #4]
00583008  00 10 a0 e1                                      mov r1, r0
0058300c  03 00 a0 e1                                      mov r0, r3
00583010  e3 2e f6 eb                                      bl #0x30eba4
00583014  0b 10 a0 e1                                      mov r1, fp
00583018  00 30 a0 e1                                      mov r3, r0
0058301c  0b 00 a0 e1                                      mov r0, fp
00583020  04 30 8d e5                                      str r3, [sp, #4]
00583024  50 2f f6 eb                                      bl #0x30ed6c
00583028  04 30 9d e5                                      ldr r3, [sp, #4]
0058302c  00 10 a0 e1                                      mov r1, r0
00583030  03 00 a0 e1                                      mov r0, r3
00583034  da 2e f6 eb                                      bl #0x30eba4
00583038  00 10 a0 e3                                      mov r1, #0
0058303c  08 00 8d e5                                      str r0, [sp, #8]
00583040  d1 2b f6 eb                                      bl #0x30df8c
00583044  00 00 50 e3                                      cmp r0, #0
00583048  14 00 00 1a                                      bne #0x5830a0
0058304c  08 00 9d e5                                      ldr r0, [sp, #8]
00583050  33 2c f6 eb                                      bl #0x30e124
00583054  00 10 a0 e1                                      mov r1, r0
00583058  fe 05 a0 e3                                      mov r0, #0x3f800000
0058305c  0c 2f f6 eb                                      bl #0x30ec94
00583060  00 30 a0 e1                                      mov r3, r0
00583064  03 10 a0 e1                                      mov r1, r3
00583068  09 00 a0 e1                                      mov r0, sb
0058306c  04 30 8d e5                                      str r3, [sp, #4]
00583070  3d 2f f6 eb                                      bl #0x30ed6c
00583074  04 30 9d e5                                      ldr r3, [sp, #4]
00583078  00 90 a0 e1                                      mov sb, r0
0058307c  0a 00 a0 e1                                      mov r0, sl
00583080  03 10 a0 e1                                      mov r1, r3
00583084  38 2f f6 eb                                      bl #0x30ed6c
00583088  04 30 9d e5                                      ldr r3, [sp, #4]
0058308c  00 a0 a0 e1                                      mov sl, r0
00583090  0b 00 a0 e1                                      mov r0, fp
00583094  03 10 a0 e1                                      mov r1, r3
00583098  33 2f f6 eb                                      bl #0x30ed6c
0058309c  00 b0 a0 e1                                      mov fp, r0
005830a0  02 11 87 e2                                      add r1, r7, #0x80000000
005830a4  0b 00 a0 e1                                      mov r0, fp
005830a8  2f 2f f6 eb                                      bl #0x30ed6c
005830ac  0a 10 a0 e1                                      mov r1, sl
005830b0  00 30 a0 e1                                      mov r3, r0
005830b4  06 00 a0 e1                                      mov r0, r6
005830b8  04 30 8d e5                                      str r3, [sp, #4]
005830bc  2a 2f f6 eb                                      bl #0x30ed6c
005830c0  04 30 9d e5                                      ldr r3, [sp, #4]
005830c4  00 10 a0 e1                                      mov r1, r0
005830c8  03 00 a0 e1                                      mov r0, r3
005830cc  b4 2e f6 eb                                      bl #0x30eba4
005830d0  02 11 86 e2                                      add r1, r6, #0x80000000
005830d4  08 00 8d e5                                      str r0, [sp, #8]
005830d8  09 00 a0 e1                                      mov r0, sb
005830dc  22 2f f6 eb                                      bl #0x30ed6c
005830e0  08 10 a0 e1                                      mov r1, r8
005830e4  00 30 a0 e1                                      mov r3, r0
005830e8  0b 00 a0 e1                                      mov r0, fp
005830ec  04 30 8d e5                                      str r3, [sp, #4]
005830f0  1d 2f f6 eb                                      bl #0x30ed6c
005830f4  04 30 9d e5                                      ldr r3, [sp, #4]
005830f8  00 10 a0 e1                                      mov r1, r0
005830fc  03 00 a0 e1                                      mov r0, r3
00583100  a7 2e f6 eb                                      bl #0x30eba4
00583104  02 11 88 e2                                      add r1, r8, #0x80000000
00583108  0c 00 8d e5                                      str r0, [sp, #0xc]
0058310c  0a 00 a0 e1                                      mov r0, sl
00583110  15 2f f6 eb                                      bl #0x30ed6c
00583114  09 10 a0 e1                                      mov r1, sb
00583118  00 30 a0 e1                                      mov r3, r0
0058311c  07 00 a0 e1                                      mov r0, r7
00583120  04 30 8d e5                                      str r3, [sp, #4]
00583124  10 2f f6 eb                                      bl #0x30ed6c
00583128  04 30 9d e5                                      ldr r3, [sp, #4]
0058312c  00 10 a0 e1                                      mov r1, r0
00583130  03 00 a0 e1                                      mov r0, r3
00583134  9a 2e f6 eb                                      bl #0x30eba4
00583138  00 20 a0 e3                                      mov r2, #0
0058313c  00 10 a0 e3                                      mov r1, #0
00583140  2c 20 84 e5                                      str r2, [r4, #0x2c]
00583144  00 90 84 e5                                      str sb, [r4]
00583148  40 10 c4 e5                                      strb r1, [r4, #0x40]
0058314c  08 10 9d e5                                      ldr r1, [sp, #8]
00583150  0c 20 84 e5                                      str r2, [r4, #0xc]
00583154  08 80 84 e5                                      str r8, [r4, #8]
00583158  10 a0 84 e5                                      str sl, [r4, #0x10]
0058315c  04 10 84 e5                                      str r1, [r4, #4]
00583160  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00583164  1c 20 84 e5                                      str r2, [r4, #0x1c]
00583168  18 70 84 e5                                      str r7, [r4, #0x18]
0058316c  24 00 84 e5                                      str r0, [r4, #0x24]
00583170  14 10 84 e5                                      str r1, [r4, #0x14]
00583174  20 b0 84 e5                                      str fp, [r4, #0x20]
00583178  28 60 84 e5                                      str r6, [r4, #0x28]
0058317c  00 30 a0 e1                                      mov r3, r0
00583180  00 10 95 e5                                      ldr r1, [r5]
00583184  09 00 a0 e1                                      mov r0, sb
00583188  04 30 8d e5                                      str r3, [sp, #4]
0058318c  f6 2e f6 eb                                      bl #0x30ed6c
00583190  04 10 95 e5                                      ldr r1, [r5, #4]
00583194  00 90 a0 e1                                      mov sb, r0
00583198  0a 00 a0 e1                                      mov r0, sl
0058319c  f2 2e f6 eb                                      bl #0x30ed6c
005831a0  00 10 a0 e1                                      mov r1, r0
005831a4  09 00 a0 e1                                      mov r0, sb
005831a8  7d 2e f6 eb                                      bl #0x30eba4
005831ac  08 10 95 e5                                      ldr r1, [r5, #8]
005831b0  00 a0 a0 e1                                      mov sl, r0
005831b4  0b 00 a0 e1                                      mov r0, fp
005831b8  eb 2e f6 eb                                      bl #0x30ed6c
005831bc  00 10 a0 e1                                      mov r1, r0
005831c0  0a 00 a0 e1                                      mov r0, sl
005831c4  76 2e f6 eb                                      bl #0x30eba4
005831c8  02 01 80 e2                                      add r0, r0, #0x80000000
005831cc  30 00 84 e5                                      str r0, [r4, #0x30]
005831d0  00 10 95 e5                                      ldr r1, [r5]
005831d4  08 00 9d e5                                      ldr r0, [sp, #8]
005831d8  e3 2e f6 eb                                      bl #0x30ed6c
005831dc  04 10 95 e5                                      ldr r1, [r5, #4]
005831e0  00 a0 a0 e1                                      mov sl, r0
005831e4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005831e8  df 2e f6 eb                                      bl #0x30ed6c
005831ec  00 10 a0 e1                                      mov r1, r0
005831f0  0a 00 a0 e1                                      mov r0, sl
005831f4  6a 2e f6 eb                                      bl #0x30eba4
005831f8  04 30 9d e5                                      ldr r3, [sp, #4]
005831fc  08 10 95 e5                                      ldr r1, [r5, #8]
00583200  00 a0 a0 e1                                      mov sl, r0
00583204  03 00 a0 e1                                      mov r0, r3
00583208  d7 2e f6 eb                                      bl #0x30ed6c
0058320c  00 10 a0 e1                                      mov r1, r0
00583210  0a 00 a0 e1                                      mov r0, sl
00583214  62 2e f6 eb                                      bl #0x30eba4
00583218  02 01 80 e2                                      add r0, r0, #0x80000000
0058321c  34 00 84 e5                                      str r0, [r4, #0x34]
00583220  00 10 95 e5                                      ldr r1, [r5]
00583224  08 00 a0 e1                                      mov r0, r8
00583228  cf 2e f6 eb                                      bl #0x30ed6c
0058322c  04 10 95 e5                                      ldr r1, [r5, #4]
00583230  00 80 a0 e1                                      mov r8, r0
00583234  07 00 a0 e1                                      mov r0, r7
00583238  cb 2e f6 eb                                      bl #0x30ed6c
0058323c  00 10 a0 e1                                      mov r1, r0
00583240  08 00 a0 e1                                      mov r0, r8
00583244  56 2e f6 eb                                      bl #0x30eba4
00583248  08 10 95 e5                                      ldr r1, [r5, #8]
0058324c  00 70 a0 e1                                      mov r7, r0
00583250  06 00 a0 e1                                      mov r0, r6
00583254  c4 2e f6 eb                                      bl #0x30ed6c
00583258  00 10 a0 e1                                      mov r1, r0
0058325c  07 00 a0 e1                                      mov r0, r7
00583260  4f 2e f6 eb                                      bl #0x30eba4
00583264  fe 35 a0 e3                                      mov r3, #0x3f800000
00583268  02 01 80 e2                                      add r0, r0, #0x80000000
0058326c  38 00 84 e5                                      str r0, [r4, #0x38]
00583270  3c 30 84 e5                                      str r3, [r4, #0x3c]
00583274  04 00 a0 e1                                      mov r0, r4
00583278  14 d0 8d e2                                      add sp, sp, #0x14
0058327c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0058359c, declared_size=176, range_size=176, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4core26buildProjectionMatrixOrthoIfEENS0_8CMatrix4IT_EES3_S3_S3_S3_
; demangled: glitch::core::CMatrix4<float> glitch::core::buildProjectionMatrixOrtho<float>(float, float, float, float)
; decoder-mode: arm
0058359c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005835a0  00 40 a0 e1                                      mov r4, r0
005835a4  01 01 a0 e3                                      mov r0, #0x40000000
005835a8  03 50 a0 e1                                      mov r5, r3
005835ac  02 70 a0 e1                                      mov r7, r2
005835b0  b7 2d f6 eb                                      bl #0x30ec94
005835b4  00 60 a0 e3                                      mov r6, #0
005835b8  00 00 84 e5                                      str r0, [r4]
005835bc  07 10 a0 e1                                      mov r1, r7
005835c0  04 60 84 e5                                      str r6, [r4, #4]
005835c4  08 60 84 e5                                      str r6, [r4, #8]
005835c8  0c 60 84 e5                                      str r6, [r4, #0xc]
005835cc  10 60 84 e5                                      str r6, [r4, #0x10]
005835d0  01 01 a0 e3                                      mov r0, #0x40000000
005835d4  ae 2d f6 eb                                      bl #0x30ec94
005835d8  18 70 9d e5                                      ldr r7, [sp, #0x18]
005835dc  05 10 a0 e1                                      mov r1, r5
005835e0  14 00 84 e5                                      str r0, [r4, #0x14]
005835e4  18 60 84 e5                                      str r6, [r4, #0x18]
005835e8  1c 60 84 e5                                      str r6, [r4, #0x1c]
005835ec  20 60 84 e5                                      str r6, [r4, #0x20]
005835f0  24 60 84 e5                                      str r6, [r4, #0x24]
005835f4  07 00 a0 e1                                      mov r0, r7
005835f8  6b 2b f6 eb                                      bl #0x30e3ac
005835fc  00 10 a0 e1                                      mov r1, r0
00583600  fe 05 a0 e3                                      mov r0, #0x3f800000
00583604  a2 2d f6 eb                                      bl #0x30ec94
00583608  07 10 a0 e1                                      mov r1, r7
0058360c  28 00 84 e5                                      str r0, [r4, #0x28]
00583610  34 60 84 e5                                      str r6, [r4, #0x34]
00583614  2c 60 84 e5                                      str r6, [r4, #0x2c]
00583618  30 60 84 e5                                      str r6, [r4, #0x30]
0058361c  05 00 a0 e1                                      mov r0, r5
00583620  61 2b f6 eb                                      bl #0x30e3ac
00583624  00 10 a0 e1                                      mov r1, r0
00583628  05 00 a0 e1                                      mov r0, r5
0058362c  98 2d f6 eb                                      bl #0x30ec94
00583630  00 30 a0 e3                                      mov r3, #0
00583634  40 30 c4 e5                                      strb r3, [r4, #0x40]
00583638  fe 35 a0 e3                                      mov r3, #0x3f800000
0058363c  38 00 84 e5                                      str r0, [r4, #0x38]
00583640  3c 30 84 e5                                      str r3, [r4, #0x3c]
00583644  04 00 a0 e1                                      mov r0, r4
00583648  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006651a0, declared_size=992, range_size=992, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4coremlIfNS_7collada7SMatrixEEENS0_8CMatrix4IT_EERKS6_RKT0_
; demangled: glitch::core::CMatrix4<float> glitch::core::operator*<float, glitch::collada::SMatrix>(glitch::core::CMatrix4<float> const&, glitch::collada::SMatrix const&)
; decoder-mode: arm
006651a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006651a4  00 30 a0 e3                                      mov r3, #0
006651a8  40 30 c0 e5                                      strb r3, [r0, #0x40]
006651ac  01 50 a0 e1                                      mov r5, r1
006651b0  40 10 d1 e5                                      ldrb r1, [r1, #0x40]
006651b4  00 40 a0 e1                                      mov r4, r0
006651b8  02 60 a0 e1                                      mov r6, r2
006651bc  03 00 51 e1                                      cmp r1, r3
006651c0  08 00 00 0a                                      beq #0x6651e8
006651c4  03 10 a0 e1                                      mov r1, r3
006651c8  40 10 c4 e5                                      strb r1, [r4, #0x40]
006651cc  03 20 96 e7                                      ldr r2, [r6, r3]
006651d0  03 20 84 e7                                      str r2, [r4, r3]
006651d4  04 30 83 e2                                      add r3, r3, #4
006651d8  40 00 53 e3                                      cmp r3, #0x40
006651dc  f9 ff ff 1a                                      bne #0x6651c8
006651e0  04 00 a0 e1                                      mov r0, r4
006651e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006651e8  00 10 92 e5                                      ldr r1, [r2]
006651ec  00 00 95 e5                                      ldr r0, [r5]
006651f0  dd a6 f2 eb                                      bl #0x30ed6c
006651f4  04 10 96 e5                                      ldr r1, [r6, #4]
006651f8  00 70 a0 e1                                      mov r7, r0
006651fc  10 00 95 e5                                      ldr r0, [r5, #0x10]
00665200  d9 a6 f2 eb                                      bl #0x30ed6c
00665204  00 10 a0 e1                                      mov r1, r0
00665208  07 00 a0 e1                                      mov r0, r7
0066520c  64 a6 f2 eb                                      bl #0x30eba4
00665210  08 10 96 e5                                      ldr r1, [r6, #8]
00665214  00 70 a0 e1                                      mov r7, r0
00665218  20 00 95 e5                                      ldr r0, [r5, #0x20]
0066521c  d2 a6 f2 eb                                      bl #0x30ed6c
00665220  00 10 a0 e1                                      mov r1, r0
00665224  07 00 a0 e1                                      mov r0, r7
00665228  5d a6 f2 eb                                      bl #0x30eba4
0066522c  00 00 84 e5                                      str r0, [r4]
00665230  00 10 96 e5                                      ldr r1, [r6]
00665234  04 00 95 e5                                      ldr r0, [r5, #4]
00665238  cb a6 f2 eb                                      bl #0x30ed6c
0066523c  04 10 96 e5                                      ldr r1, [r6, #4]
00665240  00 70 a0 e1                                      mov r7, r0
00665244  14 00 95 e5                                      ldr r0, [r5, #0x14]
00665248  c7 a6 f2 eb                                      bl #0x30ed6c
0066524c  00 10 a0 e1                                      mov r1, r0
00665250  07 00 a0 e1                                      mov r0, r7
00665254  52 a6 f2 eb                                      bl #0x30eba4
00665258  08 10 96 e5                                      ldr r1, [r6, #8]
0066525c  00 70 a0 e1                                      mov r7, r0
00665260  24 00 95 e5                                      ldr r0, [r5, #0x24]
00665264  c0 a6 f2 eb                                      bl #0x30ed6c
00665268  00 10 a0 e1                                      mov r1, r0
0066526c  07 00 a0 e1                                      mov r0, r7
00665270  4b a6 f2 eb                                      bl #0x30eba4
00665274  04 00 84 e5                                      str r0, [r4, #4]
00665278  00 10 96 e5                                      ldr r1, [r6]
0066527c  08 00 95 e5                                      ldr r0, [r5, #8]
00665280  b9 a6 f2 eb                                      bl #0x30ed6c
00665284  04 10 96 e5                                      ldr r1, [r6, #4]
00665288  00 70 a0 e1                                      mov r7, r0
0066528c  18 00 95 e5                                      ldr r0, [r5, #0x18]
00665290  b5 a6 f2 eb                                      bl #0x30ed6c
00665294  00 10 a0 e1                                      mov r1, r0
00665298  07 00 a0 e1                                      mov r0, r7
0066529c  40 a6 f2 eb                                      bl #0x30eba4
006652a0  08 10 96 e5                                      ldr r1, [r6, #8]
006652a4  00 70 a0 e1                                      mov r7, r0
006652a8  28 00 95 e5                                      ldr r0, [r5, #0x28]
006652ac  ae a6 f2 eb                                      bl #0x30ed6c
006652b0  00 10 a0 e1                                      mov r1, r0
006652b4  07 00 a0 e1                                      mov r0, r7
006652b8  39 a6 f2 eb                                      bl #0x30eba4
006652bc  00 70 a0 e3                                      mov r7, #0
006652c0  08 00 84 e5                                      str r0, [r4, #8]
006652c4  0c 70 84 e5                                      str r7, [r4, #0xc]
006652c8  10 10 96 e5                                      ldr r1, [r6, #0x10]
006652cc  00 00 95 e5                                      ldr r0, [r5]
006652d0  a5 a6 f2 eb                                      bl #0x30ed6c
006652d4  14 10 96 e5                                      ldr r1, [r6, #0x14]
006652d8  00 80 a0 e1                                      mov r8, r0
006652dc  10 00 95 e5                                      ldr r0, [r5, #0x10]
006652e0  a1 a6 f2 eb                                      bl #0x30ed6c
006652e4  00 10 a0 e1                                      mov r1, r0
006652e8  08 00 a0 e1                                      mov r0, r8
006652ec  2c a6 f2 eb                                      bl #0x30eba4
006652f0  18 10 96 e5                                      ldr r1, [r6, #0x18]
006652f4  00 80 a0 e1                                      mov r8, r0
006652f8  20 00 95 e5                                      ldr r0, [r5, #0x20]
006652fc  9a a6 f2 eb                                      bl #0x30ed6c
00665300  00 10 a0 e1                                      mov r1, r0
00665304  08 00 a0 e1                                      mov r0, r8
00665308  25 a6 f2 eb                                      bl #0x30eba4
0066530c  10 00 84 e5                                      str r0, [r4, #0x10]
00665310  10 10 96 e5                                      ldr r1, [r6, #0x10]
00665314  04 00 95 e5                                      ldr r0, [r5, #4]
00665318  93 a6 f2 eb                                      bl #0x30ed6c
0066531c  14 10 96 e5                                      ldr r1, [r6, #0x14]
00665320  00 80 a0 e1                                      mov r8, r0
00665324  14 00 95 e5                                      ldr r0, [r5, #0x14]
00665328  8f a6 f2 eb                                      bl #0x30ed6c
0066532c  00 10 a0 e1                                      mov r1, r0
00665330  08 00 a0 e1                                      mov r0, r8
00665334  1a a6 f2 eb                                      bl #0x30eba4
00665338  18 10 96 e5                                      ldr r1, [r6, #0x18]
0066533c  00 80 a0 e1                                      mov r8, r0
00665340  24 00 95 e5                                      ldr r0, [r5, #0x24]
00665344  88 a6 f2 eb                                      bl #0x30ed6c
00665348  00 10 a0 e1                                      mov r1, r0
0066534c  08 00 a0 e1                                      mov r0, r8
00665350  13 a6 f2 eb                                      bl #0x30eba4
00665354  14 00 84 e5                                      str r0, [r4, #0x14]
00665358  10 10 96 e5                                      ldr r1, [r6, #0x10]
0066535c  08 00 95 e5                                      ldr r0, [r5, #8]
00665360  81 a6 f2 eb                                      bl #0x30ed6c
00665364  14 10 96 e5                                      ldr r1, [r6, #0x14]
00665368  00 80 a0 e1                                      mov r8, r0
0066536c  18 00 95 e5                                      ldr r0, [r5, #0x18]
00665370  7d a6 f2 eb                                      bl #0x30ed6c
00665374  00 10 a0 e1                                      mov r1, r0
00665378  08 00 a0 e1                                      mov r0, r8
0066537c  08 a6 f2 eb                                      bl #0x30eba4
00665380  18 10 96 e5                                      ldr r1, [r6, #0x18]
00665384  00 80 a0 e1                                      mov r8, r0
00665388  28 00 95 e5                                      ldr r0, [r5, #0x28]
0066538c  76 a6 f2 eb                                      bl #0x30ed6c
00665390  00 10 a0 e1                                      mov r1, r0
00665394  08 00 a0 e1                                      mov r0, r8
00665398  01 a6 f2 eb                                      bl #0x30eba4
0066539c  18 00 84 e5                                      str r0, [r4, #0x18]
006653a0  1c 70 84 e5                                      str r7, [r4, #0x1c]
006653a4  20 10 96 e5                                      ldr r1, [r6, #0x20]
006653a8  00 00 95 e5                                      ldr r0, [r5]
006653ac  6e a6 f2 eb                                      bl #0x30ed6c
006653b0  24 10 96 e5                                      ldr r1, [r6, #0x24]
006653b4  00 80 a0 e1                                      mov r8, r0
006653b8  10 00 95 e5                                      ldr r0, [r5, #0x10]
006653bc  6a a6 f2 eb                                      bl #0x30ed6c
006653c0  00 10 a0 e1                                      mov r1, r0
006653c4  08 00 a0 e1                                      mov r0, r8
006653c8  f5 a5 f2 eb                                      bl #0x30eba4
006653cc  28 10 96 e5                                      ldr r1, [r6, #0x28]
006653d0  00 80 a0 e1                                      mov r8, r0
006653d4  20 00 95 e5                                      ldr r0, [r5, #0x20]
006653d8  63 a6 f2 eb                                      bl #0x30ed6c
006653dc  00 10 a0 e1                                      mov r1, r0
006653e0  08 00 a0 e1                                      mov r0, r8
006653e4  ee a5 f2 eb                                      bl #0x30eba4
006653e8  20 00 84 e5                                      str r0, [r4, #0x20]
006653ec  20 10 96 e5                                      ldr r1, [r6, #0x20]
006653f0  04 00 95 e5                                      ldr r0, [r5, #4]
006653f4  5c a6 f2 eb                                      bl #0x30ed6c
006653f8  24 10 96 e5                                      ldr r1, [r6, #0x24]
006653fc  00 80 a0 e1                                      mov r8, r0
00665400  14 00 95 e5                                      ldr r0, [r5, #0x14]
00665404  58 a6 f2 eb                                      bl #0x30ed6c
00665408  00 10 a0 e1                                      mov r1, r0
0066540c  08 00 a0 e1                                      mov r0, r8
00665410  e3 a5 f2 eb                                      bl #0x30eba4
00665414  28 10 96 e5                                      ldr r1, [r6, #0x28]
00665418  00 80 a0 e1                                      mov r8, r0
0066541c  24 00 95 e5                                      ldr r0, [r5, #0x24]
00665420  51 a6 f2 eb                                      bl #0x30ed6c
00665424  00 10 a0 e1                                      mov r1, r0
00665428  08 00 a0 e1                                      mov r0, r8
0066542c  dc a5 f2 eb                                      bl #0x30eba4
00665430  24 00 84 e5                                      str r0, [r4, #0x24]
00665434  20 10 96 e5                                      ldr r1, [r6, #0x20]
00665438  08 00 95 e5                                      ldr r0, [r5, #8]
0066543c  4a a6 f2 eb                                      bl #0x30ed6c
00665440  24 10 96 e5                                      ldr r1, [r6, #0x24]
00665444  00 80 a0 e1                                      mov r8, r0
00665448  18 00 95 e5                                      ldr r0, [r5, #0x18]
0066544c  46 a6 f2 eb                                      bl #0x30ed6c
00665450  00 10 a0 e1                                      mov r1, r0
00665454  08 00 a0 e1                                      mov r0, r8
00665458  d1 a5 f2 eb                                      bl #0x30eba4
0066545c  28 10 96 e5                                      ldr r1, [r6, #0x28]
00665460  00 80 a0 e1                                      mov r8, r0
00665464  28 00 95 e5                                      ldr r0, [r5, #0x28]
00665468  3f a6 f2 eb                                      bl #0x30ed6c
0066546c  00 10 a0 e1                                      mov r1, r0
00665470  08 00 a0 e1                                      mov r0, r8
00665474  ca a5 f2 eb                                      bl #0x30eba4
00665478  28 00 84 e5                                      str r0, [r4, #0x28]
0066547c  2c 70 84 e5                                      str r7, [r4, #0x2c]
00665480  30 10 96 e5                                      ldr r1, [r6, #0x30]
00665484  00 00 95 e5                                      ldr r0, [r5]
00665488  37 a6 f2 eb                                      bl #0x30ed6c
0066548c  34 10 96 e5                                      ldr r1, [r6, #0x34]
00665490  00 70 a0 e1                                      mov r7, r0
00665494  10 00 95 e5                                      ldr r0, [r5, #0x10]
00665498  33 a6 f2 eb                                      bl #0x30ed6c
0066549c  00 10 a0 e1                                      mov r1, r0
006654a0  07 00 a0 e1                                      mov r0, r7
006654a4  be a5 f2 eb                                      bl #0x30eba4
006654a8  38 10 96 e5                                      ldr r1, [r6, #0x38]
006654ac  00 70 a0 e1                                      mov r7, r0
006654b0  20 00 95 e5                                      ldr r0, [r5, #0x20]
006654b4  2c a6 f2 eb                                      bl #0x30ed6c
006654b8  00 10 a0 e1                                      mov r1, r0
006654bc  07 00 a0 e1                                      mov r0, r7
006654c0  b7 a5 f2 eb                                      bl #0x30eba4
006654c4  30 10 95 e5                                      ldr r1, [r5, #0x30]
006654c8  b5 a5 f2 eb                                      bl #0x30eba4
006654cc  30 00 84 e5                                      str r0, [r4, #0x30]
006654d0  30 10 96 e5                                      ldr r1, [r6, #0x30]
006654d4  04 00 95 e5                                      ldr r0, [r5, #4]
006654d8  23 a6 f2 eb                                      bl #0x30ed6c
006654dc  34 10 96 e5                                      ldr r1, [r6, #0x34]
006654e0  00 70 a0 e1                                      mov r7, r0
006654e4  14 00 95 e5                                      ldr r0, [r5, #0x14]
006654e8  1f a6 f2 eb                                      bl #0x30ed6c
006654ec  00 10 a0 e1                                      mov r1, r0
006654f0  07 00 a0 e1                                      mov r0, r7
006654f4  aa a5 f2 eb                                      bl #0x30eba4
006654f8  38 10 96 e5                                      ldr r1, [r6, #0x38]
006654fc  00 70 a0 e1                                      mov r7, r0
00665500  24 00 95 e5                                      ldr r0, [r5, #0x24]
00665504  18 a6 f2 eb                                      bl #0x30ed6c
00665508  00 10 a0 e1                                      mov r1, r0
0066550c  07 00 a0 e1                                      mov r0, r7
00665510  a3 a5 f2 eb                                      bl #0x30eba4
00665514  34 10 95 e5                                      ldr r1, [r5, #0x34]
00665518  a1 a5 f2 eb                                      bl #0x30eba4
0066551c  34 00 84 e5                                      str r0, [r4, #0x34]
00665520  30 10 96 e5                                      ldr r1, [r6, #0x30]
00665524  08 00 95 e5                                      ldr r0, [r5, #8]
00665528  0f a6 f2 eb                                      bl #0x30ed6c
0066552c  34 10 96 e5                                      ldr r1, [r6, #0x34]
00665530  00 70 a0 e1                                      mov r7, r0
00665534  18 00 95 e5                                      ldr r0, [r5, #0x18]
00665538  0b a6 f2 eb                                      bl #0x30ed6c
0066553c  00 10 a0 e1                                      mov r1, r0
00665540  07 00 a0 e1                                      mov r0, r7
00665544  96 a5 f2 eb                                      bl #0x30eba4
00665548  38 10 96 e5                                      ldr r1, [r6, #0x38]
0066554c  00 70 a0 e1                                      mov r7, r0
00665550  28 00 95 e5                                      ldr r0, [r5, #0x28]
00665554  04 a6 f2 eb                                      bl #0x30ed6c
00665558  00 10 a0 e1                                      mov r1, r0
0066555c  07 00 a0 e1                                      mov r0, r7
00665560  8f a5 f2 eb                                      bl #0x30eba4
00665564  38 10 95 e5                                      ldr r1, [r5, #0x38]
00665568  8d a5 f2 eb                                      bl #0x30eba4
0066556c  fe 35 a0 e3                                      mov r3, #0x3f800000
00665570  38 00 84 e5                                      str r0, [r4, #0x38]
00665574  3c 30 84 e5                                      str r3, [r4, #0x3c]
00665578  04 00 a0 e1                                      mov r0, r4
0066557c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e377c, declared_size=328, range_size=328, mode=arm
; class-group: glitch::core::CMatrix4<float> glitch::core
; alias: _ZN6glitch4core21buildTextureTransformIfEENS0_8CMatrix4IT_EES3_RKNS0_8vector2dIS3_EES8_S8_
; demangled: glitch::core::CMatrix4<float> glitch::core::buildTextureTransform<float>(float, glitch::core::vector2d<float> const&, glitch::core::vector2d<float> const&, glitch::core::vector2d<float> const&)
; decoder-mode: arm
006e377c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e3780  00 40 a0 e1                                      mov r4, r0
006e3784  01 00 a0 e1                                      mov r0, r1
006e3788  02 50 a0 e1                                      mov r5, r2
006e378c  03 90 a0 e1                                      mov sb, r3
006e3790  01 60 a0 e1                                      mov r6, r1
006e3794  ee ab f0 eb                                      bl #0x30e754
006e3798  00 80 a0 e1                                      mov r8, r0
006e379c  06 00 a0 e1                                      mov r0, r6
006e37a0  d8 ac f0 eb                                      bl #0x30eb08
006e37a4  28 70 9d e5                                      ldr r7, [sp, #0x28]
006e37a8  00 30 a0 e3                                      mov r3, #0
006e37ac  40 30 c4 e5                                      strb r3, [r4, #0x40]
006e37b0  00 a0 a0 e1                                      mov sl, r0
006e37b4  08 10 a0 e1                                      mov r1, r8
006e37b8  00 00 97 e5                                      ldr r0, [r7]
006e37bc  6a ad f0 eb                                      bl #0x30ed6c
006e37c0  00 00 84 e5                                      str r0, [r4]
006e37c4  04 00 97 e5                                      ldr r0, [r7, #4]
006e37c8  0a 10 a0 e1                                      mov r1, sl
006e37cc  66 ad f0 eb                                      bl #0x30ed6c
006e37d0  00 60 a0 e3                                      mov r6, #0
006e37d4  04 00 84 e5                                      str r0, [r4, #4]
006e37d8  08 60 84 e5                                      str r6, [r4, #8]
006e37dc  0c 60 84 e5                                      str r6, [r4, #0xc]
006e37e0  00 10 97 e5                                      ldr r1, [r7]
006e37e4  02 01 8a e2                                      add r0, sl, #0x80000000
006e37e8  5f ad f0 eb                                      bl #0x30ed6c
006e37ec  10 00 84 e5                                      str r0, [r4, #0x10]
006e37f0  04 00 97 e5                                      ldr r0, [r7, #4]
006e37f4  08 10 a0 e1                                      mov r1, r8
006e37f8  5b ad f0 eb                                      bl #0x30ed6c
006e37fc  18 60 84 e5                                      str r6, [r4, #0x18]
006e3800  14 00 84 e5                                      str r0, [r4, #0x14]
006e3804  1c 60 84 e5                                      str r6, [r4, #0x1c]
006e3808  00 b0 95 e5                                      ldr fp, [r5]
006e380c  08 00 a0 e1                                      mov r0, r8
006e3810  0b 10 a0 e1                                      mov r1, fp
006e3814  54 ad f0 eb                                      bl #0x30ed6c
006e3818  00 10 a0 e1                                      mov r1, r0
006e381c  0b 00 a0 e1                                      mov r0, fp
006e3820  e1 aa f0 eb                                      bl #0x30e3ac
006e3824  04 10 95 e5                                      ldr r1, [r5, #4]
006e3828  00 b0 a0 e1                                      mov fp, r0
006e382c  0a 00 a0 e1                                      mov r0, sl
006e3830  4d ad f0 eb                                      bl #0x30ed6c
006e3834  00 10 a0 e1                                      mov r1, r0
006e3838  0b 00 a0 e1                                      mov r0, fp
006e383c  d8 ac f0 eb                                      bl #0x30eba4
006e3840  00 10 97 e5                                      ldr r1, [r7]
006e3844  48 ad f0 eb                                      bl #0x30ed6c
006e3848  00 10 99 e5                                      ldr r1, [sb]
006e384c  d4 ac f0 eb                                      bl #0x30eba4
006e3850  20 00 84 e5                                      str r0, [r4, #0x20]
006e3854  00 10 95 e5                                      ldr r1, [r5]
006e3858  0a 00 a0 e1                                      mov r0, sl
006e385c  42 ad f0 eb                                      bl #0x30ed6c
006e3860  04 50 95 e5                                      ldr r5, [r5, #4]
006e3864  00 10 a0 e1                                      mov r1, r0
006e3868  05 00 a0 e1                                      mov r0, r5
006e386c  ce aa f0 eb                                      bl #0x30e3ac
006e3870  05 10 a0 e1                                      mov r1, r5
006e3874  00 a0 a0 e1                                      mov sl, r0
006e3878  08 00 a0 e1                                      mov r0, r8
006e387c  3a ad f0 eb                                      bl #0x30ed6c
006e3880  00 10 a0 e1                                      mov r1, r0
006e3884  0a 00 a0 e1                                      mov r0, sl
006e3888  c7 aa f0 eb                                      bl #0x30e3ac
006e388c  04 10 97 e5                                      ldr r1, [r7, #4]
006e3890  35 ad f0 eb                                      bl #0x30ed6c
006e3894  04 10 99 e5                                      ldr r1, [sb, #4]
006e3898  c1 ac f0 eb                                      bl #0x30eba4
006e389c  fe 35 a0 e3                                      mov r3, #0x3f800000
006e38a0  24 00 84 e5                                      str r0, [r4, #0x24]
006e38a4  28 30 84 e5                                      str r3, [r4, #0x28]
006e38a8  04 00 a0 e1                                      mov r0, r4
006e38ac  2c 60 84 e5                                      str r6, [r4, #0x2c]
006e38b0  38 60 84 e5                                      str r6, [r4, #0x38]
006e38b4  3c 30 84 e5                                      str r3, [r4, #0x3c]
006e38b8  30 60 84 e5                                      str r6, [r4, #0x30]
006e38bc  34 60 84 e5                                      str r6, [r4, #0x34]
006e38c0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
