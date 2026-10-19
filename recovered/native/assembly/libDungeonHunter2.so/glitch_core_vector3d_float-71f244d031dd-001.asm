; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035e8e0, declared_size=184, range_size=184, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZN6glitch4core8vector3dIfE9normalizeEv
; demangled: glitch::core::vector3d<float>::normalize()
; decoder-mode: arm
0035e8e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0035e8e4  00 40 a0 e1                                      mov r4, r0
0035e8e8  00 00 90 e5                                      ldr r0, [r0]
0035e8ec  04 70 94 e5                                      ldr r7, [r4, #4]
0035e8f0  08 60 94 e5                                      ldr r6, [r4, #8]
0035e8f4  00 10 a0 e1                                      mov r1, r0
0035e8f8  1b c1 fe eb                                      bl #0x30ed6c
0035e8fc  07 10 a0 e1                                      mov r1, r7
0035e900  00 50 a0 e1                                      mov r5, r0
0035e904  07 00 a0 e1                                      mov r0, r7
0035e908  17 c1 fe eb                                      bl #0x30ed6c
0035e90c  00 10 a0 e1                                      mov r1, r0
0035e910  05 00 a0 e1                                      mov r0, r5
0035e914  a2 c0 fe eb                                      bl #0x30eba4
0035e918  06 10 a0 e1                                      mov r1, r6
0035e91c  00 50 a0 e1                                      mov r5, r0
0035e920  06 00 a0 e1                                      mov r0, r6
0035e924  10 c1 fe eb                                      bl #0x30ed6c
0035e928  00 10 a0 e1                                      mov r1, r0
0035e92c  05 00 a0 e1                                      mov r0, r5
0035e930  9b c0 fe eb                                      bl #0x30eba4
0035e934  00 10 a0 e3                                      mov r1, #0
0035e938  00 50 a0 e1                                      mov r5, r0
0035e93c  92 bd fe eb                                      bl #0x30df8c
0035e940  00 00 50 e3                                      cmp r0, #0
0035e944  11 00 00 1a                                      bne #0x35e990
0035e948  05 00 a0 e1                                      mov r0, r5
0035e94c  f4 bd fe eb                                      bl #0x30e124
0035e950  00 10 a0 e1                                      mov r1, r0
0035e954  fe 05 a0 e3                                      mov r0, #0x3f800000
0035e958  cd c0 fe eb                                      bl #0x30ec94
0035e95c  00 50 a0 e1                                      mov r5, r0
0035e960  00 10 a0 e1                                      mov r1, r0
0035e964  00 00 94 e5                                      ldr r0, [r4]
0035e968  ff c0 fe eb                                      bl #0x30ed6c
0035e96c  05 10 a0 e1                                      mov r1, r5
0035e970  00 00 84 e5                                      str r0, [r4]
0035e974  04 00 94 e5                                      ldr r0, [r4, #4]
0035e978  fb c0 fe eb                                      bl #0x30ed6c
0035e97c  05 10 a0 e1                                      mov r1, r5
0035e980  04 00 84 e5                                      str r0, [r4, #4]
0035e984  08 00 94 e5                                      ldr r0, [r4, #8]
0035e988  f7 c0 fe eb                                      bl #0x30ed6c
0035e98c  08 00 84 e5                                      str r0, [r4, #8]
0035e990  04 00 a0 e1                                      mov r0, r4
0035e994  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0059a294, declared_size=80, range_size=80, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZNK6glitch4core8vector3dIfEdvERKS2_
; demangled: glitch::core::vector3d<float>::operator/(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0059a294  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059a298  01 50 a0 e1                                      mov r5, r1
0059a29c  00 40 a0 e1                                      mov r4, r0
0059a2a0  04 10 92 e5                                      ldr r1, [r2, #4]
0059a2a4  04 00 95 e5                                      ldr r0, [r5, #4]
0059a2a8  02 60 a0 e1                                      mov r6, r2
0059a2ac  78 d2 f5 eb                                      bl #0x30ec94
0059a2b0  08 10 96 e5                                      ldr r1, [r6, #8]
0059a2b4  00 80 a0 e1                                      mov r8, r0
0059a2b8  08 00 95 e5                                      ldr r0, [r5, #8]
0059a2bc  74 d2 f5 eb                                      bl #0x30ec94
0059a2c0  00 10 96 e5                                      ldr r1, [r6]
0059a2c4  00 70 a0 e1                                      mov r7, r0
0059a2c8  00 00 95 e5                                      ldr r0, [r5]
0059a2cc  70 d2 f5 eb                                      bl #0x30ec94
0059a2d0  04 80 84 e5                                      str r8, [r4, #4]
0059a2d4  00 00 84 e5                                      str r0, [r4]
0059a2d8  08 70 84 e5                                      str r7, [r4, #8]
0059a2dc  04 00 a0 e1                                      mov r0, r4
0059a2e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a24b4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZN6glitch4core8vector3dIfEdVERKS2_
; demangled: glitch::core::vector3d<float>::operator/=(glitch::core::vector3d<float> const&)
; decoder-mode: arm
005a24b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005a24b8  00 40 a0 e1                                      mov r4, r0
005a24bc  01 50 a0 e1                                      mov r5, r1
005a24c0  00 00 90 e5                                      ldr r0, [r0]
005a24c4  00 10 91 e5                                      ldr r1, [r1]
005a24c8  f1 b1 f5 eb                                      bl #0x30ec94
005a24cc  00 00 84 e5                                      str r0, [r4]
005a24d0  04 10 95 e5                                      ldr r1, [r5, #4]
005a24d4  04 00 94 e5                                      ldr r0, [r4, #4]
005a24d8  ed b1 f5 eb                                      bl #0x30ec94
005a24dc  04 00 84 e5                                      str r0, [r4, #4]
005a24e0  08 10 95 e5                                      ldr r1, [r5, #8]
005a24e4  08 00 94 e5                                      ldr r0, [r4, #8]
005a24e8  e9 b1 f5 eb                                      bl #0x30ec94
005a24ec  08 00 84 e5                                      str r0, [r4, #8]
005a24f0  04 00 a0 e1                                      mov r0, r4
005a24f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00630bfc, declared_size=252, range_size=252, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZN6glitch4core8vector3dIfE10rotateXYByEdRKS2_
; demangled: glitch::core::vector3d<float>::rotateXYBy(double, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00630bfc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00630c00  03 10 a0 e1                                      mov r1, r3
00630c04  00 40 a0 e1                                      mov r4, r0
00630c08  46 3f 0d e3                                      movw r3, #0xdf46
00630c0c  02 00 a0 e1                                      mov r0, r2
00630c10  39 2d 09 e3                                      movw r2, #0x9d39
00630c14  52 22 4a e3                                      movt r2, #0xa252
00630c18  91 3f 43 e3                                      movt r3, #0x3f91
00630c1c  a4 77 f3 eb                                      bl #0x30eab4
00630c20  00 60 a0 e1                                      mov r6, r0
00630c24  01 70 a0 e1                                      mov r7, r1
00630c28  46 75 f3 eb                                      bl #0x30e148
00630c2c  9b 76 f3 eb                                      bl #0x30e6a0
00630c30  07 10 a0 e1                                      mov r1, r7
00630c34  00 a0 a0 e1                                      mov sl, r0
00630c38  06 00 a0 e1                                      mov r0, r6
00630c3c  ea 74 f3 eb                                      bl #0x30dfec
00630c40  96 76 f3 eb                                      bl #0x30e6a0
00630c44  20 50 9d e5                                      ldr r5, [sp, #0x20]
00630c48  00 90 a0 e1                                      mov sb, r0
00630c4c  00 00 94 e5                                      ldr r0, [r4]
00630c50  00 10 95 e5                                      ldr r1, [r5]
00630c54  d4 75 f3 eb                                      bl #0x30e3ac
00630c58  00 00 84 e5                                      str r0, [r4]
00630c5c  04 10 95 e5                                      ldr r1, [r5, #4]
00630c60  00 70 a0 e1                                      mov r7, r0
00630c64  04 00 94 e5                                      ldr r0, [r4, #4]
00630c68  cf 75 f3 eb                                      bl #0x30e3ac
00630c6c  07 10 a0 e1                                      mov r1, r7
00630c70  00 60 a0 e1                                      mov r6, r0
00630c74  04 00 84 e5                                      str r0, [r4, #4]
00630c78  0a 00 a0 e1                                      mov r0, sl
00630c7c  3a 78 f3 eb                                      bl #0x30ed6c
00630c80  06 10 a0 e1                                      mov r1, r6
00630c84  00 80 a0 e1                                      mov r8, r0
00630c88  09 00 a0 e1                                      mov r0, sb
00630c8c  36 78 f3 eb                                      bl #0x30ed6c
00630c90  00 10 a0 e1                                      mov r1, r0
00630c94  08 00 a0 e1                                      mov r0, r8
00630c98  c3 75 f3 eb                                      bl #0x30e3ac
00630c9c  07 10 a0 e1                                      mov r1, r7
00630ca0  00 80 a0 e1                                      mov r8, r0
00630ca4  09 00 a0 e1                                      mov r0, sb
00630ca8  2f 78 f3 eb                                      bl #0x30ed6c
00630cac  06 10 a0 e1                                      mov r1, r6
00630cb0  00 70 a0 e1                                      mov r7, r0
00630cb4  0a 00 a0 e1                                      mov r0, sl
00630cb8  2b 78 f3 eb                                      bl #0x30ed6c
00630cbc  00 10 a0 e1                                      mov r1, r0
00630cc0  07 00 a0 e1                                      mov r0, r7
00630cc4  b6 77 f3 eb                                      bl #0x30eba4
00630cc8  00 80 84 e5                                      str r8, [r4]
00630ccc  04 00 84 e5                                      str r0, [r4, #4]
00630cd0  00 10 95 e5                                      ldr r1, [r5]
00630cd4  00 60 a0 e1                                      mov r6, r0
00630cd8  08 00 a0 e1                                      mov r0, r8
00630cdc  b0 77 f3 eb                                      bl #0x30eba4
00630ce0  00 00 84 e5                                      str r0, [r4]
00630ce4  04 10 95 e5                                      ldr r1, [r5, #4]
00630ce8  06 00 a0 e1                                      mov r0, r6
00630cec  ac 77 f3 eb                                      bl #0x30eba4
00630cf0  04 00 84 e5                                      str r0, [r4, #4]
00630cf4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00630cf8, declared_size=240, range_size=240, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZN6glitch4core8vector3dIfE10rotateYZByEdRKS2_
; demangled: glitch::core::vector3d<float>::rotateYZBy(double, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00630cf8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00630cfc  03 10 a0 e1                                      mov r1, r3
00630d00  00 40 a0 e1                                      mov r4, r0
00630d04  46 3f 0d e3                                      movw r3, #0xdf46
00630d08  02 00 a0 e1                                      mov r0, r2
00630d0c  39 2d 09 e3                                      movw r2, #0x9d39
00630d10  52 22 4a e3                                      movt r2, #0xa252
00630d14  91 3f 43 e3                                      movt r3, #0x3f91
00630d18  65 77 f3 eb                                      bl #0x30eab4
00630d1c  00 60 a0 e1                                      mov r6, r0
00630d20  01 70 a0 e1                                      mov r7, r1
00630d24  07 75 f3 eb                                      bl #0x30e148
00630d28  5c 76 f3 eb                                      bl #0x30e6a0
00630d2c  07 10 a0 e1                                      mov r1, r7
00630d30  00 80 a0 e1                                      mov r8, r0
00630d34  06 00 a0 e1                                      mov r0, r6
00630d38  ab 74 f3 eb                                      bl #0x30dfec
00630d3c  57 76 f3 eb                                      bl #0x30e6a0
00630d40  20 50 9d e5                                      ldr r5, [sp, #0x20]
00630d44  00 90 a0 e1                                      mov sb, r0
00630d48  08 00 94 e5                                      ldr r0, [r4, #8]
00630d4c  08 10 95 e5                                      ldr r1, [r5, #8]
00630d50  95 75 f3 eb                                      bl #0x30e3ac
00630d54  08 00 84 e5                                      str r0, [r4, #8]
00630d58  04 10 95 e5                                      ldr r1, [r5, #4]
00630d5c  00 60 a0 e1                                      mov r6, r0
00630d60  04 00 94 e5                                      ldr r0, [r4, #4]
00630d64  90 75 f3 eb                                      bl #0x30e3ac
00630d68  00 a0 a0 e1                                      mov sl, r0
00630d6c  0a 10 a0 e1                                      mov r1, sl
00630d70  08 00 a0 e1                                      mov r0, r8
00630d74  fc 77 f3 eb                                      bl #0x30ed6c
00630d78  06 10 a0 e1                                      mov r1, r6
00630d7c  00 70 a0 e1                                      mov r7, r0
00630d80  09 00 a0 e1                                      mov r0, sb
00630d84  f8 77 f3 eb                                      bl #0x30ed6c
00630d88  00 10 a0 e1                                      mov r1, r0
00630d8c  07 00 a0 e1                                      mov r0, r7
00630d90  85 75 f3 eb                                      bl #0x30e3ac
00630d94  0a 10 a0 e1                                      mov r1, sl
00630d98  00 70 a0 e1                                      mov r7, r0
00630d9c  09 00 a0 e1                                      mov r0, sb
00630da0  f1 77 f3 eb                                      bl #0x30ed6c
00630da4  06 10 a0 e1                                      mov r1, r6
00630da8  00 a0 a0 e1                                      mov sl, r0
00630dac  08 00 a0 e1                                      mov r0, r8
00630db0  ed 77 f3 eb                                      bl #0x30ed6c
00630db4  00 10 a0 e1                                      mov r1, r0
00630db8  0a 00 a0 e1                                      mov r0, sl
00630dbc  78 77 f3 eb                                      bl #0x30eba4
00630dc0  04 70 84 e5                                      str r7, [r4, #4]
00630dc4  08 00 84 e5                                      str r0, [r4, #8]
00630dc8  08 10 95 e5                                      ldr r1, [r5, #8]
00630dcc  74 77 f3 eb                                      bl #0x30eba4
00630dd0  08 00 84 e5                                      str r0, [r4, #8]
00630dd4  04 10 95 e5                                      ldr r1, [r5, #4]
00630dd8  07 00 a0 e1                                      mov r0, r7
00630ddc  70 77 f3 eb                                      bl #0x30eba4
00630de0  04 00 84 e5                                      str r0, [r4, #4]
00630de4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00630de8, declared_size=256, range_size=256, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZN6glitch4core8vector3dIfE10rotateXZByEdRKS2_
; demangled: glitch::core::vector3d<float>::rotateXZBy(double, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00630de8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00630dec  03 10 a0 e1                                      mov r1, r3
00630df0  00 40 a0 e1                                      mov r4, r0
00630df4  46 3f 0d e3                                      movw r3, #0xdf46
00630df8  02 00 a0 e1                                      mov r0, r2
00630dfc  39 2d 09 e3                                      movw r2, #0x9d39
00630e00  52 22 4a e3                                      movt r2, #0xa252
00630e04  91 3f 43 e3                                      movt r3, #0x3f91
00630e08  29 77 f3 eb                                      bl #0x30eab4
00630e0c  00 60 a0 e1                                      mov r6, r0
00630e10  01 70 a0 e1                                      mov r7, r1
00630e14  cb 74 f3 eb                                      bl #0x30e148
00630e18  20 76 f3 eb                                      bl #0x30e6a0
00630e1c  07 10 a0 e1                                      mov r1, r7
00630e20  00 a0 a0 e1                                      mov sl, r0
00630e24  06 00 a0 e1                                      mov r0, r6
00630e28  6f 74 f3 eb                                      bl #0x30dfec
00630e2c  1b 76 f3 eb                                      bl #0x30e6a0
00630e30  20 50 9d e5                                      ldr r5, [sp, #0x20]
00630e34  00 90 a0 e1                                      mov sb, r0
00630e38  00 00 94 e5                                      ldr r0, [r4]
00630e3c  00 10 95 e5                                      ldr r1, [r5]
00630e40  59 75 f3 eb                                      bl #0x30e3ac
00630e44  00 00 84 e5                                      str r0, [r4]
00630e48  08 10 95 e5                                      ldr r1, [r5, #8]
00630e4c  00 70 a0 e1                                      mov r7, r0
00630e50  08 00 94 e5                                      ldr r0, [r4, #8]
00630e54  54 75 f3 eb                                      bl #0x30e3ac
00630e58  07 10 a0 e1                                      mov r1, r7
00630e5c  00 60 a0 e1                                      mov r6, r0
00630e60  08 00 84 e5                                      str r0, [r4, #8]
00630e64  0a 00 a0 e1                                      mov r0, sl
00630e68  bf 77 f3 eb                                      bl #0x30ed6c
00630e6c  06 10 a0 e1                                      mov r1, r6
00630e70  00 80 a0 e1                                      mov r8, r0
00630e74  09 00 a0 e1                                      mov r0, sb
00630e78  bb 77 f3 eb                                      bl #0x30ed6c
00630e7c  00 10 a0 e1                                      mov r1, r0
00630e80  08 00 a0 e1                                      mov r0, r8
00630e84  48 75 f3 eb                                      bl #0x30e3ac
00630e88  07 10 a0 e1                                      mov r1, r7
00630e8c  00 80 a0 e1                                      mov r8, r0
00630e90  09 00 a0 e1                                      mov r0, sb
00630e94  b4 77 f3 eb                                      bl #0x30ed6c
00630e98  06 10 a0 e1                                      mov r1, r6
00630e9c  00 90 a0 e1                                      mov sb, r0
00630ea0  0a 00 a0 e1                                      mov r0, sl
00630ea4  b0 77 f3 eb                                      bl #0x30ed6c
00630ea8  00 10 a0 e1                                      mov r1, r0
00630eac  09 00 a0 e1                                      mov r0, sb
00630eb0  3b 77 f3 eb                                      bl #0x30eba4
00630eb4  00 80 84 e5                                      str r8, [r4]
00630eb8  08 00 84 e5                                      str r0, [r4, #8]
00630ebc  00 10 95 e5                                      ldr r1, [r5]
00630ec0  00 60 a0 e1                                      mov r6, r0
00630ec4  08 00 a0 e1                                      mov r0, r8
00630ec8  35 77 f3 eb                                      bl #0x30eba4
00630ecc  00 00 84 e5                                      str r0, [r4]
00630ed0  08 10 95 e5                                      ldr r1, [r5, #8]
00630ed4  06 00 a0 e1                                      mov r0, r6
00630ed8  31 77 f3 eb                                      bl #0x30eba4
00630edc  04 70 94 e5                                      ldr r7, [r4, #4]
00630ee0  08 00 84 e5                                      str r0, [r4, #8]
00630ee4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006c7b6c, declared_size=388, range_size=388, mode=arm
; class-group: glitch::core::vector3d<float>
; alias: _ZNK6glitch4core8vector3dIfE18getHorizontalAngleEv
; demangled: glitch::core::vector3d<float>::getHorizontalAngle() const
; decoder-mode: arm
006c7b6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c7b70  00 60 a0 e3                                      mov r6, #0
006c7b74  00 60 80 e5                                      str r6, [r0]
006c7b78  04 60 80 e5                                      str r6, [r0, #4]
006c7b7c  08 60 80 e5                                      str r6, [r0, #8]
006c7b80  01 50 a0 e1                                      mov r5, r1
006c7b84  00 40 a0 e1                                      mov r4, r0
006c7b88  08 10 91 e5                                      ldr r1, [r1, #8]
006c7b8c  00 00 95 e5                                      ldr r0, [r5]
006c7b90  88 18 f1 eb                                      bl #0x30ddb8
006c7b94  42 1b f1 eb                                      bl #0x30e8a4
006c7b98  f8 21 0c e3                                      movw r2, #0xc1f8
006c7b9c  dc 35 0a e3                                      movw r3, #0xa5dc
006c7ba0  63 2a 41 e3                                      movt r2, #0x1a63
006c7ba4  4c 30 44 e3                                      movt r3, #0x404c
006c7ba8  c1 1b f1 eb                                      bl #0x30eab4
006c7bac  bb 1a f1 eb                                      bl #0x30e6a0
006c7bb0  06 10 a0 e1                                      mov r1, r6
006c7bb4  04 00 84 e5                                      str r0, [r4, #4]
006c7bb8  00 70 a0 e1                                      mov r7, r0
006c7bbc  d2 1a f1 eb                                      bl #0x30e70c
006c7bc0  00 00 50 e3                                      cmp r0, #0
006c7bc4  05 00 00 0a                                      beq #0x6c7be0
006c7bc8  43 14 a0 e3                                      mov r1, #0x43000000
006c7bcc  07 00 a0 e1                                      mov r0, r7
006c7bd0  2d 17 81 e2                                      add r1, r1, #0xb40000
006c7bd4  f2 1b f1 eb                                      bl #0x30eba4
006c7bd8  00 70 a0 e1                                      mov r7, r0
006c7bdc  04 00 84 e5                                      str r0, [r4, #4]
006c7be0  43 14 a0 e3                                      mov r1, #0x43000000
006c7be4  07 00 a0 e1                                      mov r0, r7
006c7be8  2d 17 81 e2                                      add r1, r1, #0xb40000
006c7bec  30 1a f1 eb                                      bl #0x30e4b4
006c7bf0  00 00 50 e3                                      cmp r0, #0
006c7bf4  04 00 00 0a                                      beq #0x6c7c0c
006c7bf8  43 14 a0 e3                                      mov r1, #0x43000000
006c7bfc  07 00 a0 e1                                      mov r0, r7
006c7c00  2d 17 81 e2                                      add r1, r1, #0xb40000
006c7c04  e8 19 f1 eb                                      bl #0x30e3ac
006c7c08  04 00 84 e5                                      str r0, [r4, #4]
006c7c0c  00 00 95 e5                                      ldr r0, [r5]
006c7c10  08 70 95 e5                                      ldr r7, [r5, #8]
006c7c14  00 10 a0 e1                                      mov r1, r0
006c7c18  53 1c f1 eb                                      bl #0x30ed6c
006c7c1c  07 10 a0 e1                                      mov r1, r7
006c7c20  00 60 a0 e1                                      mov r6, r0
006c7c24  07 00 a0 e1                                      mov r0, r7
006c7c28  4f 1c f1 eb                                      bl #0x30ed6c
006c7c2c  00 10 a0 e1                                      mov r1, r0
006c7c30  06 00 a0 e1                                      mov r0, r6
006c7c34  da 1b f1 eb                                      bl #0x30eba4
006c7c38  39 19 f1 eb                                      bl #0x30e124
006c7c3c  18 1b f1 eb                                      bl #0x30e8a4
006c7c40  00 60 a0 e1                                      mov r6, r0
006c7c44  04 00 95 e5                                      ldr r0, [r5, #4]
006c7c48  01 70 a0 e1                                      mov r7, r1
006c7c4c  14 1b f1 eb                                      bl #0x30e8a4
006c7c50  00 20 a0 e1                                      mov r2, r0
006c7c54  01 30 a0 e1                                      mov r3, r1
006c7c58  06 00 a0 e1                                      mov r0, r6
006c7c5c  07 10 a0 e1                                      mov r1, r7
006c7c60  ae 18 f1 eb                                      bl #0x30df20
006c7c64  f8 21 0c e3                                      movw r2, #0xc1f8
006c7c68  dc 35 0a e3                                      movw r3, #0xa5dc
006c7c6c  63 2a 41 e3                                      movt r2, #0x1a63
006c7c70  4c 30 44 e3                                      movt r3, #0x404c
006c7c74  8e 1b f1 eb                                      bl #0x30eab4
006c7c78  00 30 08 e3                                      movw r3, #0x8000
006c7c7c  00 20 a0 e3                                      mov r2, #0
006c7c80  56 30 44 e3                                      movt r3, #0x4056
006c7c84  28 1a f1 eb                                      bl #0x30e52c
006c7c88  84 1a f1 eb                                      bl #0x30e6a0
006c7c8c  00 10 a0 e3                                      mov r1, #0
006c7c90  00 00 84 e5                                      str r0, [r4]
006c7c94  00 50 a0 e1                                      mov r5, r0
006c7c98  9b 1a f1 eb                                      bl #0x30e70c
006c7c9c  00 00 50 e3                                      cmp r0, #0
006c7ca0  05 00 00 0a                                      beq #0x6c7cbc
006c7ca4  43 14 a0 e3                                      mov r1, #0x43000000
006c7ca8  05 00 a0 e1                                      mov r0, r5
006c7cac  2d 17 81 e2                                      add r1, r1, #0xb40000
006c7cb0  bb 1b f1 eb                                      bl #0x30eba4
006c7cb4  00 50 a0 e1                                      mov r5, r0
006c7cb8  00 00 84 e5                                      str r0, [r4]
006c7cbc  43 14 a0 e3                                      mov r1, #0x43000000
006c7cc0  05 00 a0 e1                                      mov r0, r5
006c7cc4  2d 17 81 e2                                      add r1, r1, #0xb40000
006c7cc8  f9 19 f1 eb                                      bl #0x30e4b4
006c7ccc  00 00 50 e3                                      cmp r0, #0
006c7cd0  04 00 00 0a                                      beq #0x6c7ce8
006c7cd4  43 14 a0 e3                                      mov r1, #0x43000000
006c7cd8  05 00 a0 e1                                      mov r0, r5
006c7cdc  2d 17 81 e2                                      add r1, r1, #0xb40000
006c7ce0  b1 19 f1 eb                                      bl #0x30e3ac
006c7ce4  00 00 84 e5                                      str r0, [r4]
006c7ce8  04 00 a0 e1                                      mov r0, r4
006c7cec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
