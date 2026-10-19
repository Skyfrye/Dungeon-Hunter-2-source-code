; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005857ac, declared_size=452, range_size=452, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE16isTotalInsideBoxERKNS0_8aabbox3dIfEE
; demangled: glitch::core::triangle3d<float>::isTotalInsideBox(glitch::core::aabbox3d<float> const&) const
; decoder-mode: arm
005857ac  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005857b0  00 60 90 e5                                      ldr r6, [r0]
005857b4  00 70 91 e5                                      ldr r7, [r1]
005857b8  00 50 a0 e1                                      mov r5, r0
005857bc  01 40 a0 e1                                      mov r4, r1
005857c0  06 00 a0 e1                                      mov r0, r6
005857c4  07 10 a0 e1                                      mov r1, r7
005857c8  39 23 f6 eb                                      bl #0x30e4b4
005857cc  00 00 50 e3                                      cmp r0, #0
005857d0  64 00 00 0a                                      beq #0x585968
005857d4  0c 80 94 e5                                      ldr r8, [r4, #0xc]
005857d8  06 00 a0 e1                                      mov r0, r6
005857dc  08 10 a0 e1                                      mov r1, r8
005857e0  71 24 f6 eb                                      bl #0x30e9ac
005857e4  00 00 50 e3                                      cmp r0, #0
005857e8  5e 00 00 0a                                      beq #0x585968
005857ec  04 a0 95 e5                                      ldr sl, [r5, #4]
005857f0  04 60 94 e5                                      ldr r6, [r4, #4]
005857f4  0a 00 a0 e1                                      mov r0, sl
005857f8  06 10 a0 e1                                      mov r1, r6
005857fc  2c 23 f6 eb                                      bl #0x30e4b4
00585800  00 00 50 e3                                      cmp r0, #0
00585804  57 00 00 0a                                      beq #0x585968
00585808  10 90 94 e5                                      ldr sb, [r4, #0x10]
0058580c  0a 00 a0 e1                                      mov r0, sl
00585810  09 10 a0 e1                                      mov r1, sb
00585814  64 24 f6 eb                                      bl #0x30e9ac
00585818  00 00 50 e3                                      cmp r0, #0
0058581c  51 00 00 0a                                      beq #0x585968
00585820  08 b0 95 e5                                      ldr fp, [r5, #8]
00585824  08 a0 94 e5                                      ldr sl, [r4, #8]
00585828  0b 00 a0 e1                                      mov r0, fp
0058582c  0a 10 a0 e1                                      mov r1, sl
00585830  1f 23 f6 eb                                      bl #0x30e4b4
00585834  00 00 50 e3                                      cmp r0, #0
00585838  4a 00 00 0a                                      beq #0x585968
0058583c  14 40 94 e5                                      ldr r4, [r4, #0x14]
00585840  0b 00 a0 e1                                      mov r0, fp
00585844  04 10 a0 e1                                      mov r1, r4
00585848  57 24 f6 eb                                      bl #0x30e9ac
0058584c  00 00 50 e3                                      cmp r0, #0
00585850  44 00 00 0a                                      beq #0x585968
00585854  0c b0 95 e5                                      ldr fp, [r5, #0xc]
00585858  07 00 a0 e1                                      mov r0, r7
0058585c  0b 10 a0 e1                                      mov r1, fp
00585860  51 24 f6 eb                                      bl #0x30e9ac
00585864  00 00 50 e3                                      cmp r0, #0
00585868  3e 00 00 0a                                      beq #0x585968
0058586c  0b 10 a0 e1                                      mov r1, fp
00585870  08 00 a0 e1                                      mov r0, r8
00585874  0e 23 f6 eb                                      bl #0x30e4b4
00585878  00 00 50 e3                                      cmp r0, #0
0058587c  39 00 00 0a                                      beq #0x585968
00585880  10 b0 95 e5                                      ldr fp, [r5, #0x10]
00585884  06 00 a0 e1                                      mov r0, r6
00585888  0b 10 a0 e1                                      mov r1, fp
0058588c  46 24 f6 eb                                      bl #0x30e9ac
00585890  00 00 50 e3                                      cmp r0, #0
00585894  33 00 00 0a                                      beq #0x585968
00585898  0b 10 a0 e1                                      mov r1, fp
0058589c  09 00 a0 e1                                      mov r0, sb
005858a0  03 23 f6 eb                                      bl #0x30e4b4
005858a4  00 00 50 e3                                      cmp r0, #0
005858a8  2e 00 00 0a                                      beq #0x585968
005858ac  14 b0 95 e5                                      ldr fp, [r5, #0x14]
005858b0  0a 00 a0 e1                                      mov r0, sl
005858b4  0b 10 a0 e1                                      mov r1, fp
005858b8  3b 24 f6 eb                                      bl #0x30e9ac
005858bc  00 00 50 e3                                      cmp r0, #0
005858c0  28 00 00 0a                                      beq #0x585968
005858c4  0b 10 a0 e1                                      mov r1, fp
005858c8  04 00 a0 e1                                      mov r0, r4
005858cc  f8 22 f6 eb                                      bl #0x30e4b4
005858d0  00 00 50 e3                                      cmp r0, #0
005858d4  23 00 00 0a                                      beq #0x585968
005858d8  18 b0 95 e5                                      ldr fp, [r5, #0x18]
005858dc  07 00 a0 e1                                      mov r0, r7
005858e0  0b 10 a0 e1                                      mov r1, fp
005858e4  30 24 f6 eb                                      bl #0x30e9ac
005858e8  00 00 50 e3                                      cmp r0, #0
005858ec  1d 00 00 0a                                      beq #0x585968
005858f0  08 00 a0 e1                                      mov r0, r8
005858f4  0b 10 a0 e1                                      mov r1, fp
005858f8  ed 22 f6 eb                                      bl #0x30e4b4
005858fc  00 00 50 e3                                      cmp r0, #0
00585900  18 00 00 0a                                      beq #0x585968
00585904  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
00585908  06 00 a0 e1                                      mov r0, r6
0058590c  07 10 a0 e1                                      mov r1, r7
00585910  25 24 f6 eb                                      bl #0x30e9ac
00585914  00 00 50 e3                                      cmp r0, #0
00585918  12 00 00 0a                                      beq #0x585968
0058591c  09 00 a0 e1                                      mov r0, sb
00585920  07 10 a0 e1                                      mov r1, r7
00585924  e2 22 f6 eb                                      bl #0x30e4b4
00585928  00 00 50 e3                                      cmp r0, #0
0058592c  0d 00 00 0a                                      beq #0x585968
00585930  20 50 95 e5                                      ldr r5, [r5, #0x20]
00585934  0a 00 a0 e1                                      mov r0, sl
00585938  05 10 a0 e1                                      mov r1, r5
0058593c  1a 24 f6 eb                                      bl #0x30e9ac
00585940  00 00 50 e3                                      cmp r0, #0
00585944  07 00 00 0a                                      beq #0x585968
00585948  04 00 a0 e1                                      mov r0, r4
0058594c  05 10 a0 e1                                      mov r1, r5
00585950  d7 22 f6 eb                                      bl #0x30e4b4
00585954  00 00 50 e3                                      cmp r0, #0
00585958  00 00 a0 e3                                      mov r0, #0
0058595c  01 00 a0 13                                      movne r0, #1
00585960  70 00 ef e6                                      uxtb r0, r0
00585964  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00585968  00 00 a0 e3                                      mov r0, #0
0058596c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00585bb8, declared_size=560, range_size=560, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE12isOnSameSideERKNS0_8vector3dIfEES6_S6_S6_
; demangled: glitch::core::triangle3d<float>::isOnSameSide(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&) const
; decoder-mode: arm
00585bb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00585bbc  1c d0 4d e2                                      sub sp, sp, #0x1c
00585bc0  00 40 93 e5                                      ldr r4, [r3]
00585bc4  03 60 a0 e1                                      mov r6, r3
00585bc8  40 30 9d e5                                      ldr r3, [sp, #0x40]
00585bcc  01 50 a0 e1                                      mov r5, r1
00585bd0  04 10 a0 e1                                      mov r1, r4
00585bd4  00 00 93 e5                                      ldr r0, [r3]
00585bd8  02 a0 a0 e1                                      mov sl, r2
00585bdc  f2 21 f6 eb                                      bl #0x30e3ac
00585be0  04 90 96 e5                                      ldr sb, [r6, #4]
00585be4  40 30 9d e5                                      ldr r3, [sp, #0x40]
00585be8  00 80 a0 e1                                      mov r8, r0
00585bec  09 10 a0 e1                                      mov r1, sb
00585bf0  04 00 93 e5                                      ldr r0, [r3, #4]
00585bf4  02 31 88 e2                                      add r3, r8, #0x80000000
00585bf8  08 30 8d e5                                      str r3, [sp, #8]
00585bfc  ea 21 f6 eb                                      bl #0x30e3ac
00585c00  08 b0 96 e5                                      ldr fp, [r6, #8]
00585c04  40 30 9d e5                                      ldr r3, [sp, #0x40]
00585c08  00 70 a0 e1                                      mov r7, r0
00585c0c  0b 10 a0 e1                                      mov r1, fp
00585c10  08 00 93 e5                                      ldr r0, [r3, #8]
00585c14  02 31 87 e2                                      add r3, r7, #0x80000000
00585c18  04 30 8d e5                                      str r3, [sp, #4]
00585c1c  e2 21 f6 eb                                      bl #0x30e3ac
00585c20  04 10 a0 e1                                      mov r1, r4
00585c24  00 60 a0 e1                                      mov r6, r0
00585c28  00 00 95 e5                                      ldr r0, [r5]
00585c2c  de 21 f6 eb                                      bl #0x30e3ac
00585c30  0c 00 8d e5                                      str r0, [sp, #0xc]
00585c34  04 00 95 e5                                      ldr r0, [r5, #4]
00585c38  09 10 a0 e1                                      mov r1, sb
00585c3c  da 21 f6 eb                                      bl #0x30e3ac
00585c40  10 00 8d e5                                      str r0, [sp, #0x10]
00585c44  08 00 95 e5                                      ldr r0, [r5, #8]
00585c48  0b 10 a0 e1                                      mov r1, fp
00585c4c  d6 21 f6 eb                                      bl #0x30e3ac
00585c50  14 00 8d e5                                      str r0, [sp, #0x14]
00585c54  04 10 a0 e1                                      mov r1, r4
00585c58  00 00 9a e5                                      ldr r0, [sl]
00585c5c  d2 21 f6 eb                                      bl #0x30e3ac
00585c60  09 10 a0 e1                                      mov r1, sb
00585c64  00 40 a0 e1                                      mov r4, r0
00585c68  04 00 9a e5                                      ldr r0, [sl, #4]
00585c6c  ce 21 f6 eb                                      bl #0x30e3ac
00585c70  0b 10 a0 e1                                      mov r1, fp
00585c74  00 50 a0 e1                                      mov r5, r0
00585c78  08 00 9a e5                                      ldr r0, [sl, #8]
00585c7c  ca 21 f6 eb                                      bl #0x30e3ac
00585c80  04 10 9d e5                                      ldr r1, [sp, #4]
00585c84  00 a0 a0 e1                                      mov sl, r0
00585c88  14 00 9d e5                                      ldr r0, [sp, #0x14]
00585c8c  36 24 f6 eb                                      bl #0x30ed6c
00585c90  10 10 9d e5                                      ldr r1, [sp, #0x10]
00585c94  00 90 a0 e1                                      mov sb, r0
00585c98  06 00 a0 e1                                      mov r0, r6
00585c9c  32 24 f6 eb                                      bl #0x30ed6c
00585ca0  00 10 a0 e1                                      mov r1, r0
00585ca4  09 00 a0 e1                                      mov r0, sb
00585ca8  bd 23 f6 eb                                      bl #0x30eba4
00585cac  0a 10 a0 e1                                      mov r1, sl
00585cb0  00 90 a0 e1                                      mov sb, r0
00585cb4  04 00 9d e5                                      ldr r0, [sp, #4]
00585cb8  2b 24 f6 eb                                      bl #0x30ed6c
00585cbc  05 10 a0 e1                                      mov r1, r5
00585cc0  00 b0 a0 e1                                      mov fp, r0
00585cc4  06 00 a0 e1                                      mov r0, r6
00585cc8  27 24 f6 eb                                      bl #0x30ed6c
00585ccc  00 10 a0 e1                                      mov r1, r0
00585cd0  0b 00 a0 e1                                      mov r0, fp
00585cd4  b2 23 f6 eb                                      bl #0x30eba4
00585cd8  00 10 a0 e1                                      mov r1, r0
00585cdc  09 00 a0 e1                                      mov r0, sb
00585ce0  21 24 f6 eb                                      bl #0x30ed6c
00585ce4  02 61 86 e2                                      add r6, r6, #0x80000000
00585ce8  00 90 a0 e1                                      mov sb, r0
00585cec  06 10 a0 e1                                      mov r1, r6
00585cf0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00585cf4  1c 24 f6 eb                                      bl #0x30ed6c
00585cf8  14 10 9d e5                                      ldr r1, [sp, #0x14]
00585cfc  00 b0 a0 e1                                      mov fp, r0
00585d00  08 00 a0 e1                                      mov r0, r8
00585d04  18 24 f6 eb                                      bl #0x30ed6c
00585d08  00 10 a0 e1                                      mov r1, r0
00585d0c  0b 00 a0 e1                                      mov r0, fp
00585d10  a3 23 f6 eb                                      bl #0x30eba4
00585d14  04 10 a0 e1                                      mov r1, r4
00585d18  00 b0 a0 e1                                      mov fp, r0
00585d1c  06 00 a0 e1                                      mov r0, r6
00585d20  11 24 f6 eb                                      bl #0x30ed6c
00585d24  0a 10 a0 e1                                      mov r1, sl
00585d28  00 60 a0 e1                                      mov r6, r0
00585d2c  08 00 a0 e1                                      mov r0, r8
00585d30  0d 24 f6 eb                                      bl #0x30ed6c
00585d34  00 10 a0 e1                                      mov r1, r0
00585d38  06 00 a0 e1                                      mov r0, r6
00585d3c  98 23 f6 eb                                      bl #0x30eba4
00585d40  00 10 a0 e1                                      mov r1, r0
00585d44  0b 00 a0 e1                                      mov r0, fp
00585d48  07 24 f6 eb                                      bl #0x30ed6c
00585d4c  00 10 a0 e1                                      mov r1, r0
00585d50  09 00 a0 e1                                      mov r0, sb
00585d54  92 23 f6 eb                                      bl #0x30eba4
00585d58  08 10 9d e5                                      ldr r1, [sp, #8]
00585d5c  00 60 a0 e1                                      mov r6, r0
00585d60  10 00 9d e5                                      ldr r0, [sp, #0x10]
00585d64  00 24 f6 eb                                      bl #0x30ed6c
00585d68  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00585d6c  00 80 a0 e1                                      mov r8, r0
00585d70  07 00 a0 e1                                      mov r0, r7
00585d74  fc 23 f6 eb                                      bl #0x30ed6c
00585d78  00 10 a0 e1                                      mov r1, r0
00585d7c  08 00 a0 e1                                      mov r0, r8
00585d80  87 23 f6 eb                                      bl #0x30eba4
00585d84  05 10 a0 e1                                      mov r1, r5
00585d88  00 80 a0 e1                                      mov r8, r0
00585d8c  08 00 9d e5                                      ldr r0, [sp, #8]
00585d90  f5 23 f6 eb                                      bl #0x30ed6c
00585d94  04 10 a0 e1                                      mov r1, r4
00585d98  00 50 a0 e1                                      mov r5, r0
00585d9c  07 00 a0 e1                                      mov r0, r7
00585da0  f1 23 f6 eb                                      bl #0x30ed6c
00585da4  00 10 a0 e1                                      mov r1, r0
00585da8  05 00 a0 e1                                      mov r0, r5
00585dac  7c 23 f6 eb                                      bl #0x30eba4
00585db0  00 10 a0 e1                                      mov r1, r0
00585db4  08 00 a0 e1                                      mov r0, r8
00585db8  eb 23 f6 eb                                      bl #0x30ed6c
00585dbc  00 10 a0 e1                                      mov r1, r0
00585dc0  06 00 a0 e1                                      mov r0, r6
00585dc4  76 23 f6 eb                                      bl #0x30eba4
00585dc8  00 10 a0 e3                                      mov r1, #0
00585dcc  b8 21 f6 eb                                      bl #0x30e4b4
00585dd0  00 00 50 e3                                      cmp r0, #0
00585dd4  00 00 a0 e3                                      mov r0, #0
00585dd8  01 00 a0 13                                      movne r0, #1
00585ddc  01 00 00 e2                                      and r0, r0, #1
00585de0  1c d0 8d e2                                      add sp, sp, #0x1c
00585de4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00585de8, declared_size=120, range_size=120, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE13isPointInsideERKNS0_8vector3dIfEE
; demangled: glitch::core::triangle3d<float>::isPointInside(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
00585de8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00585dec  0c 50 80 e2                                      add r5, r0, #0xc
00585df0  0c d0 4d e2                                      sub sp, sp, #0xc
00585df4  18 60 80 e2                                      add r6, r0, #0x18
00585df8  00 20 a0 e1                                      mov r2, r0
00585dfc  05 30 a0 e1                                      mov r3, r5
00585e00  00 40 a0 e1                                      mov r4, r0
00585e04  00 60 8d e5                                      str r6, [sp]
00585e08  01 70 a0 e1                                      mov r7, r1
00585e0c  69 ff ff eb                                      bl #0x585bb8
00585e10  00 00 50 e3                                      cmp r0, #0
00585e14  02 00 00 1a                                      bne #0x585e24
00585e18  00 00 a0 e3                                      mov r0, #0
00585e1c  0c d0 8d e2                                      add sp, sp, #0xc
00585e20  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00585e24  04 00 a0 e1                                      mov r0, r4
00585e28  07 10 a0 e1                                      mov r1, r7
00585e2c  05 20 a0 e1                                      mov r2, r5
00585e30  04 30 a0 e1                                      mov r3, r4
00585e34  00 60 8d e5                                      str r6, [sp]
00585e38  5e ff ff eb                                      bl #0x585bb8
00585e3c  00 00 50 e3                                      cmp r0, #0
00585e40  f4 ff ff 0a                                      beq #0x585e18
00585e44  04 00 a0 e1                                      mov r0, r4
00585e48  07 10 a0 e1                                      mov r1, r7
00585e4c  06 20 a0 e1                                      mov r2, r6
00585e50  04 30 a0 e1                                      mov r3, r4
00585e54  00 50 8d e5                                      str r5, [sp]
00585e58  56 ff ff eb                                      bl #0x585bb8
00585e5c  ee ff ff ea                                      b #0x585e1c

; FUNCTION 0x00585e80, declared_size=732, range_size=732, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE30getIntersectionOfPlaneWithLineERKNS0_8vector3dIfEES6_RS4_
; demangled: glitch::core::triangle3d<float>::getIntersectionOfPlaneWithLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
00585e80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00585e84  00 50 90 e5                                      ldr r5, [r0]
00585e88  2c d0 4d e2                                      sub sp, sp, #0x2c
00585e8c  0c 10 8d e5                                      str r1, [sp, #0xc]
00585e90  00 40 a0 e1                                      mov r4, r0
00585e94  05 10 a0 e1                                      mov r1, r5
00585e98  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00585e9c  02 60 a0 e1                                      mov r6, r2
00585ea0  10 30 8d e5                                      str r3, [sp, #0x10]
00585ea4  40 21 f6 eb                                      bl #0x30e3ac
00585ea8  04 80 94 e5                                      ldr r8, [r4, #4]
00585eac  00 a0 a0 e1                                      mov sl, r0
00585eb0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00585eb4  08 10 a0 e1                                      mov r1, r8
00585eb8  3b 21 f6 eb                                      bl #0x30e3ac
00585ebc  08 b0 94 e5                                      ldr fp, [r4, #8]
00585ec0  00 70 a0 e1                                      mov r7, r0
00585ec4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00585ec8  0b 10 a0 e1                                      mov r1, fp
00585ecc  36 21 f6 eb                                      bl #0x30e3ac
00585ed0  05 10 a0 e1                                      mov r1, r5
00585ed4  00 90 a0 e1                                      mov sb, r0
00585ed8  18 00 94 e5                                      ldr r0, [r4, #0x18]
00585edc  32 21 f6 eb                                      bl #0x30e3ac
00585ee0  08 10 a0 e1                                      mov r1, r8
00585ee4  00 50 a0 e1                                      mov r5, r0
00585ee8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00585eec  2e 21 f6 eb                                      bl #0x30e3ac
00585ef0  0b 10 a0 e1                                      mov r1, fp
00585ef4  00 80 a0 e1                                      mov r8, r0
00585ef8  20 00 94 e5                                      ldr r0, [r4, #0x20]
00585efc  2a 21 f6 eb                                      bl #0x30e3ac
00585f00  02 11 87 e2                                      add r1, r7, #0x80000000
00585f04  04 00 8d e5                                      str r0, [sp, #4]
00585f08  97 23 f6 eb                                      bl #0x30ed6c
00585f0c  08 10 a0 e1                                      mov r1, r8
00585f10  00 b0 a0 e1                                      mov fp, r0
00585f14  09 00 a0 e1                                      mov r0, sb
00585f18  93 23 f6 eb                                      bl #0x30ed6c
00585f1c  00 10 a0 e1                                      mov r1, r0
00585f20  0b 00 a0 e1                                      mov r0, fp
00585f24  1e 23 f6 eb                                      bl #0x30eba4
00585f28  02 11 89 e2                                      add r1, sb, #0x80000000
00585f2c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00585f30  05 00 a0 e1                                      mov r0, r5
00585f34  8c 23 f6 eb                                      bl #0x30ed6c
00585f38  04 30 9d e5                                      ldr r3, [sp, #4]
00585f3c  00 90 a0 e1                                      mov sb, r0
00585f40  0a 00 a0 e1                                      mov r0, sl
00585f44  03 10 a0 e1                                      mov r1, r3
00585f48  87 23 f6 eb                                      bl #0x30ed6c
00585f4c  00 10 a0 e1                                      mov r1, r0
00585f50  09 00 a0 e1                                      mov r0, sb
00585f54  12 23 f6 eb                                      bl #0x30eba4
00585f58  02 11 8a e2                                      add r1, sl, #0x80000000
00585f5c  20 00 8d e5                                      str r0, [sp, #0x20]
00585f60  08 00 a0 e1                                      mov r0, r8
00585f64  80 23 f6 eb                                      bl #0x30ed6c
00585f68  05 10 a0 e1                                      mov r1, r5
00585f6c  00 80 a0 e1                                      mov r8, r0
00585f70  07 00 a0 e1                                      mov r0, r7
00585f74  7c 23 f6 eb                                      bl #0x30ed6c
00585f78  00 10 a0 e1                                      mov r1, r0
00585f7c  08 00 a0 e1                                      mov r0, r8
00585f80  07 23 f6 eb                                      bl #0x30eba4
00585f84  24 00 8d e5                                      str r0, [sp, #0x24]
00585f88  1c 00 8d e2                                      add r0, sp, #0x1c
00585f8c  53 62 f7 eb                                      bl #0x35e8e0
00585f90  00 90 96 e5                                      ldr sb, [r6]
00585f94  00 80 90 e5                                      ldr r8, [r0]
00585f98  00 30 a0 e1                                      mov r3, r0
00585f9c  04 70 90 e5                                      ldr r7, [r0, #4]
00585fa0  09 10 a0 e1                                      mov r1, sb
00585fa4  08 00 a0 e1                                      mov r0, r8
00585fa8  08 50 93 e5                                      ldr r5, [r3, #8]
00585fac  6e 23 f6 eb                                      bl #0x30ed6c
00585fb0  04 a0 96 e5                                      ldr sl, [r6, #4]
00585fb4  00 b0 a0 e1                                      mov fp, r0
00585fb8  07 00 a0 e1                                      mov r0, r7
00585fbc  0a 10 a0 e1                                      mov r1, sl
00585fc0  69 23 f6 eb                                      bl #0x30ed6c
00585fc4  00 10 a0 e1                                      mov r1, r0
00585fc8  0b 00 a0 e1                                      mov r0, fp
00585fcc  f4 22 f6 eb                                      bl #0x30eba4
00585fd0  08 60 96 e5                                      ldr r6, [r6, #8]
00585fd4  00 b0 a0 e1                                      mov fp, r0
00585fd8  05 00 a0 e1                                      mov r0, r5
00585fdc  06 10 a0 e1                                      mov r1, r6
00585fe0  61 23 f6 eb                                      bl #0x30ed6c
00585fe4  00 10 a0 e1                                      mov r1, r0
00585fe8  0b 00 a0 e1                                      mov r0, fp
00585fec  ec 22 f6 eb                                      bl #0x30eba4
00585ff0  bd 17 03 e3                                      movw r1, #0x37bd
00585ff4  00 b0 a0 e1                                      mov fp, r0
00585ff8  86 15 43 e3                                      movt r1, #0x3586
00585ffc  02 01 c0 e3                                      bic r0, r0, #0x80000000
00586000  69 22 f6 eb                                      bl #0x30e9ac
00586004  00 00 50 e3                                      cmp r0, #0
00586008  00 00 a0 13                                      movne r0, #0
0058600c  50 00 00 1a                                      bne #0x586154
00586010  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00586014  08 00 a0 e1                                      mov r0, r8
00586018  00 30 9c e5                                      ldr r3, [ip]
0058601c  04 20 9c e5                                      ldr r2, [ip, #4]
00586020  03 10 a0 e1                                      mov r1, r3
00586024  04 30 8d e5                                      str r3, [sp, #4]
00586028  14 20 8d e5                                      str r2, [sp, #0x14]
0058602c  4e 23 f6 eb                                      bl #0x30ed6c
00586030  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00586034  00 20 a0 e1                                      mov r2, r0
00586038  14 10 9d e5                                      ldr r1, [sp, #0x14]
0058603c  08 c0 9c e5                                      ldr ip, [ip, #8]
00586040  07 00 a0 e1                                      mov r0, r7
00586044  08 20 8d e5                                      str r2, [sp, #8]
00586048  0c c0 8d e5                                      str ip, [sp, #0xc]
0058604c  46 23 f6 eb                                      bl #0x30ed6c
00586050  08 20 9d e5                                      ldr r2, [sp, #8]
00586054  00 10 a0 e1                                      mov r1, r0
00586058  02 00 a0 e1                                      mov r0, r2
0058605c  d0 22 f6 eb                                      bl #0x30eba4
00586060  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00586064  00 20 a0 e1                                      mov r2, r0
00586068  05 00 a0 e1                                      mov r0, r5
0058606c  08 20 8d e5                                      str r2, [sp, #8]
00586070  3d 23 f6 eb                                      bl #0x30ed6c
00586074  08 20 9d e5                                      ldr r2, [sp, #8]
00586078  00 10 a0 e1                                      mov r1, r0
0058607c  02 00 a0 e1                                      mov r0, r2
00586080  c7 22 f6 eb                                      bl #0x30eba4
00586084  00 10 94 e5                                      ldr r1, [r4]
00586088  00 20 a0 e1                                      mov r2, r0
0058608c  08 00 a0 e1                                      mov r0, r8
00586090  08 20 8d e5                                      str r2, [sp, #8]
00586094  34 23 f6 eb                                      bl #0x30ed6c
00586098  04 10 94 e5                                      ldr r1, [r4, #4]
0058609c  00 80 a0 e1                                      mov r8, r0
005860a0  07 00 a0 e1                                      mov r0, r7
005860a4  30 23 f6 eb                                      bl #0x30ed6c
005860a8  00 10 a0 e1                                      mov r1, r0
005860ac  08 00 a0 e1                                      mov r0, r8
005860b0  bb 22 f6 eb                                      bl #0x30eba4
005860b4  08 10 94 e5                                      ldr r1, [r4, #8]
005860b8  00 70 a0 e1                                      mov r7, r0
005860bc  05 00 a0 e1                                      mov r0, r5
005860c0  29 23 f6 eb                                      bl #0x30ed6c
005860c4  00 10 a0 e1                                      mov r1, r0
005860c8  07 00 a0 e1                                      mov r0, r7
005860cc  b4 22 f6 eb                                      bl #0x30eba4
005860d0  08 20 9d e5                                      ldr r2, [sp, #8]
005860d4  00 10 a0 e1                                      mov r1, r0
005860d8  02 00 a0 e1                                      mov r0, r2
005860dc  b2 20 f6 eb                                      bl #0x30e3ac
005860e0  0b 10 a0 e1                                      mov r1, fp
005860e4  02 01 80 e2                                      add r0, r0, #0x80000000
005860e8  e9 22 f6 eb                                      bl #0x30ec94
005860ec  09 10 a0 e1                                      mov r1, sb
005860f0  00 40 a0 e1                                      mov r4, r0
005860f4  1c 23 f6 eb                                      bl #0x30ed6c
005860f8  04 30 9d e5                                      ldr r3, [sp, #4]
005860fc  00 10 a0 e1                                      mov r1, r0
00586100  03 00 a0 e1                                      mov r0, r3
00586104  a6 22 f6 eb                                      bl #0x30eba4
00586108  10 20 9d e5                                      ldr r2, [sp, #0x10]
0058610c  0a 10 a0 e1                                      mov r1, sl
00586110  00 00 82 e5                                      str r0, [r2]
00586114  04 00 a0 e1                                      mov r0, r4
00586118  13 23 f6 eb                                      bl #0x30ed6c
0058611c  00 10 a0 e1                                      mov r1, r0
00586120  14 00 9d e5                                      ldr r0, [sp, #0x14]
00586124  9e 22 f6 eb                                      bl #0x30eba4
00586128  10 30 9d e5                                      ldr r3, [sp, #0x10]
0058612c  06 10 a0 e1                                      mov r1, r6
00586130  04 00 83 e5                                      str r0, [r3, #4]
00586134  04 00 a0 e1                                      mov r0, r4
00586138  0b 23 f6 eb                                      bl #0x30ed6c
0058613c  00 10 a0 e1                                      mov r1, r0
00586140  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00586144  96 22 f6 eb                                      bl #0x30eba4
00586148  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0058614c  08 00 8c e5                                      str r0, [ip, #8]
00586150  01 00 a0 e3                                      mov r0, #1
00586154  2c d0 8d e2                                      add sp, sp, #0x2c
00586158  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0058615c, declared_size=44, range_size=44, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE23getIntersectionWithLineERKNS0_8vector3dIfEES6_RS4_
; demangled: glitch::core::triangle3d<float>::getIntersectionWithLine(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
0058615c  70 40 2d e9                                      push {r4, r5, r6, lr}
00586160  00 50 a0 e1                                      mov r5, r0
00586164  03 40 a0 e1                                      mov r4, r3
00586168  44 ff ff eb                                      bl #0x585e80
0058616c  00 00 50 e3                                      cmp r0, #0
00586170  00 00 00 1a                                      bne #0x586178
00586174  70 80 bd e8                                      pop {r4, r5, r6, pc}
00586178  05 00 a0 e1                                      mov r0, r5
0058617c  04 10 a0 e1                                      mov r1, r4
00586180  70 40 bd e8                                      pop {r4, r5, r6, lr}
00586184  17 ff ff ea                                      b #0x585de8

; FUNCTION 0x00586188, declared_size=760, range_size=760, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE30getIntersectionWithLineSegmentERKNS0_6line3dIfEEfRKNS0_8vector3dIfEERKNS0_8aabbox3dIfEERS8_
; demangled: glitch::core::triangle3d<float>::getIntersectionWithLineSegment(glitch::core::line3d<float> const&, float, glitch::core::vector3d<float> const&, glitch::core::aabbox3d<float> const&, glitch::core::vector3d<float>&) const
; decoder-mode: arm
00586188  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058618c  28 50 9d e5                                      ldr r5, [sp, #0x28]
00586190  00 60 90 e5                                      ldr r6, [r0]
00586194  00 40 a0 e1                                      mov r4, r0
00586198  00 70 95 e5                                      ldr r7, [r5]
0058619c  01 80 a0 e1                                      mov r8, r1
005861a0  06 10 a0 e1                                      mov r1, r6
005861a4  07 00 a0 e1                                      mov r0, r7
005861a8  02 a0 a0 e1                                      mov sl, r2
005861ac  03 b0 a0 e1                                      mov fp, r3
005861b0  50 20 f6 eb                                      bl #0x30e2f8
005861b4  00 00 50 e3                                      cmp r0, #0
005861b8  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
005861bc  0b 00 00 0a                                      beq #0x5861f0
005861c0  07 00 a0 e1                                      mov r0, r7
005861c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005861c8  4a 20 f6 eb                                      bl #0x30e2f8
005861cc  00 00 50 e3                                      cmp r0, #0
005861d0  06 00 00 0a                                      beq #0x5861f0
005861d4  07 00 a0 e1                                      mov r0, r7
005861d8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005861dc  45 20 f6 eb                                      bl #0x30e2f8
005861e0  00 00 50 e3                                      cmp r0, #0
005861e4  01 00 00 0a                                      beq #0x5861f0
005861e8  00 00 a0 e3                                      mov r0, #0
005861ec  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005861f0  0c 70 95 e5                                      ldr r7, [r5, #0xc]
005861f4  06 00 a0 e1                                      mov r0, r6
005861f8  07 10 a0 e1                                      mov r1, r7
005861fc  3d 20 f6 eb                                      bl #0x30e2f8
00586200  00 00 50 e3                                      cmp r0, #0
00586204  09 00 00 0a                                      beq #0x586230
00586208  07 00 a0 e1                                      mov r0, r7
0058620c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00586210  3d 21 f6 eb                                      bl #0x30e70c
00586214  00 00 50 e3                                      cmp r0, #0
00586218  04 00 00 0a                                      beq #0x586230
0058621c  07 00 a0 e1                                      mov r0, r7
00586220  18 10 94 e5                                      ldr r1, [r4, #0x18]
00586224  38 21 f6 eb                                      bl #0x30e70c
00586228  00 00 50 e3                                      cmp r0, #0
0058622c  ed ff ff 1a                                      bne #0x5861e8
00586230  04 70 95 e5                                      ldr r7, [r5, #4]
00586234  04 60 94 e5                                      ldr r6, [r4, #4]
00586238  07 00 a0 e1                                      mov r0, r7
0058623c  06 10 a0 e1                                      mov r1, r6
00586240  2c 20 f6 eb                                      bl #0x30e2f8
00586244  00 00 50 e3                                      cmp r0, #0
00586248  09 00 00 0a                                      beq #0x586274
0058624c  07 00 a0 e1                                      mov r0, r7
00586250  10 10 94 e5                                      ldr r1, [r4, #0x10]
00586254  27 20 f6 eb                                      bl #0x30e2f8
00586258  00 00 50 e3                                      cmp r0, #0
0058625c  04 00 00 0a                                      beq #0x586274
00586260  07 00 a0 e1                                      mov r0, r7
00586264  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00586268  22 20 f6 eb                                      bl #0x30e2f8
0058626c  00 00 50 e3                                      cmp r0, #0
00586270  dc ff ff 1a                                      bne #0x5861e8
00586274  10 70 95 e5                                      ldr r7, [r5, #0x10]
00586278  06 00 a0 e1                                      mov r0, r6
0058627c  07 10 a0 e1                                      mov r1, r7
00586280  1c 20 f6 eb                                      bl #0x30e2f8
00586284  00 00 50 e3                                      cmp r0, #0
00586288  09 00 00 0a                                      beq #0x5862b4
0058628c  07 00 a0 e1                                      mov r0, r7
00586290  10 10 94 e5                                      ldr r1, [r4, #0x10]
00586294  1c 21 f6 eb                                      bl #0x30e70c
00586298  00 00 50 e3                                      cmp r0, #0
0058629c  04 00 00 0a                                      beq #0x5862b4
005862a0  07 00 a0 e1                                      mov r0, r7
005862a4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005862a8  17 21 f6 eb                                      bl #0x30e70c
005862ac  00 00 50 e3                                      cmp r0, #0
005862b0  cc ff ff 1a                                      bne #0x5861e8
005862b4  08 70 95 e5                                      ldr r7, [r5, #8]
005862b8  08 60 94 e5                                      ldr r6, [r4, #8]
005862bc  07 00 a0 e1                                      mov r0, r7
005862c0  06 10 a0 e1                                      mov r1, r6
005862c4  0b 20 f6 eb                                      bl #0x30e2f8
005862c8  00 00 50 e3                                      cmp r0, #0
005862cc  04 00 00 0a                                      beq #0x5862e4
005862d0  07 00 a0 e1                                      mov r0, r7
005862d4  14 10 94 e5                                      ldr r1, [r4, #0x14]
005862d8  06 20 f6 eb                                      bl #0x30e2f8
005862dc  00 00 50 e3                                      cmp r0, #0
005862e0  60 00 00 1a                                      bne #0x586468
005862e4  14 50 95 e5                                      ldr r5, [r5, #0x14]
005862e8  06 00 a0 e1                                      mov r0, r6
005862ec  05 10 a0 e1                                      mov r1, r5
005862f0  00 20 f6 eb                                      bl #0x30e2f8
005862f4  00 00 50 e3                                      cmp r0, #0
005862f8  09 00 00 0a                                      beq #0x586324
005862fc  05 00 a0 e1                                      mov r0, r5
00586300  14 10 94 e5                                      ldr r1, [r4, #0x14]
00586304  00 21 f6 eb                                      bl #0x30e70c
00586308  00 00 50 e3                                      cmp r0, #0
0058630c  04 00 00 0a                                      beq #0x586324
00586310  05 00 a0 e1                                      mov r0, r5
00586314  20 10 94 e5                                      ldr r1, [r4, #0x20]
00586318  fb 20 f6 eb                                      bl #0x30e70c
0058631c  00 00 50 e3                                      cmp r0, #0
00586320  b0 ff ff 1a                                      bne #0x5861e8
00586324  04 00 a0 e1                                      mov r0, r4
00586328  0b 20 a0 e1                                      mov r2, fp
0058632c  08 10 a0 e1                                      mov r1, r8
00586330  09 30 a0 e1                                      mov r3, sb
00586334  88 ff ff eb                                      bl #0x58615c
00586338  00 00 50 e3                                      cmp r0, #0
0058633c  a9 ff ff 0a                                      beq #0x5861e8
00586340  00 40 99 e5                                      ldr r4, [sb]
00586344  00 10 98 e5                                      ldr r1, [r8]
00586348  04 00 a0 e1                                      mov r0, r4
0058634c  16 20 f6 eb                                      bl #0x30e3ac
00586350  04 50 99 e5                                      ldr r5, [sb, #4]
00586354  00 b0 a0 e1                                      mov fp, r0
00586358  04 10 98 e5                                      ldr r1, [r8, #4]
0058635c  05 00 a0 e1                                      mov r0, r5
00586360  11 20 f6 eb                                      bl #0x30e3ac
00586364  08 60 99 e5                                      ldr r6, [sb, #8]
00586368  00 70 a0 e1                                      mov r7, r0
0058636c  08 10 98 e5                                      ldr r1, [r8, #8]
00586370  06 00 a0 e1                                      mov r0, r6
00586374  0c 20 f6 eb                                      bl #0x30e3ac
00586378  0b 10 a0 e1                                      mov r1, fp
0058637c  00 90 a0 e1                                      mov sb, r0
00586380  0b 00 a0 e1                                      mov r0, fp
00586384  78 22 f6 eb                                      bl #0x30ed6c
00586388  07 10 a0 e1                                      mov r1, r7
0058638c  00 b0 a0 e1                                      mov fp, r0
00586390  07 00 a0 e1                                      mov r0, r7
00586394  74 22 f6 eb                                      bl #0x30ed6c
00586398  00 10 a0 e1                                      mov r1, r0
0058639c  0b 00 a0 e1                                      mov r0, fp
005863a0  ff 21 f6 eb                                      bl #0x30eba4
005863a4  09 10 a0 e1                                      mov r1, sb
005863a8  00 70 a0 e1                                      mov r7, r0
005863ac  09 00 a0 e1                                      mov r0, sb
005863b0  6d 22 f6 eb                                      bl #0x30ed6c
005863b4  00 10 a0 e1                                      mov r1, r0
005863b8  07 00 a0 e1                                      mov r0, r7
005863bc  f8 21 f6 eb                                      bl #0x30eba4
005863c0  00 10 a0 e1                                      mov r1, r0
005863c4  0a 00 a0 e1                                      mov r0, sl
005863c8  ca 1f f6 eb                                      bl #0x30e2f8
005863cc  00 00 50 e3                                      cmp r0, #0
005863d0  14 10 98 e5                                      ldr r1, [r8, #0x14]
005863d4  0c 70 98 e5                                      ldr r7, [r8, #0xc]
005863d8  10 80 98 e5                                      ldr r8, [r8, #0x10]
005863dc  81 ff ff 0a                                      beq #0x5861e8
005863e0  06 00 a0 e1                                      mov r0, r6
005863e4  f0 1f f6 eb                                      bl #0x30e3ac
005863e8  08 10 a0 e1                                      mov r1, r8
005863ec  00 60 a0 e1                                      mov r6, r0
005863f0  05 00 a0 e1                                      mov r0, r5
005863f4  ec 1f f6 eb                                      bl #0x30e3ac
005863f8  07 10 a0 e1                                      mov r1, r7
005863fc  00 50 a0 e1                                      mov r5, r0
00586400  04 00 a0 e1                                      mov r0, r4
00586404  e8 1f f6 eb                                      bl #0x30e3ac
00586408  00 10 a0 e1                                      mov r1, r0
0058640c  56 22 f6 eb                                      bl #0x30ed6c
00586410  05 10 a0 e1                                      mov r1, r5
00586414  00 40 a0 e1                                      mov r4, r0
00586418  05 00 a0 e1                                      mov r0, r5
0058641c  52 22 f6 eb                                      bl #0x30ed6c
00586420  00 10 a0 e1                                      mov r1, r0
00586424  04 00 a0 e1                                      mov r0, r4
00586428  dd 21 f6 eb                                      bl #0x30eba4
0058642c  06 10 a0 e1                                      mov r1, r6
00586430  00 40 a0 e1                                      mov r4, r0
00586434  06 00 a0 e1                                      mov r0, r6
00586438  4b 22 f6 eb                                      bl #0x30ed6c
0058643c  00 10 a0 e1                                      mov r1, r0
00586440  04 00 a0 e1                                      mov r0, r4
00586444  d6 21 f6 eb                                      bl #0x30eba4
00586448  00 10 a0 e1                                      mov r1, r0
0058644c  0a 00 a0 e1                                      mov r0, sl
00586450  a8 1f f6 eb                                      bl #0x30e2f8
00586454  00 00 50 e3                                      cmp r0, #0
00586458  00 00 a0 e3                                      mov r0, #0
0058645c  01 00 a0 13                                      movne r0, #1
00586460  70 00 ef e6                                      uxtb r0, r0
00586464  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00586468  07 00 a0 e1                                      mov r0, r7
0058646c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00586470  a0 1f f6 eb                                      bl #0x30e2f8
00586474  00 00 50 e3                                      cmp r0, #0
00586478  5a ff ff 1a                                      bne #0x5861e8
0058647c  98 ff ff ea                                      b #0x5862e4

; FUNCTION 0x006c3da0, declared_size=784, range_size=784, mode=arm
; class-group: glitch::core::triangle3d<float>
; alias: _ZNK6glitch4core10triangle3dIfE17isPointInsideFastERKNS0_8vector3dIfEE
; demangled: glitch::core::triangle3d<float>::isPointInsideFast(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
006c3da0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c3da4  00 b0 90 e5                                      ldr fp, [r0]
006c3da8  24 d0 4d e2                                      sub sp, sp, #0x24
006c3dac  0c 10 8d e5                                      str r1, [sp, #0xc]
006c3db0  00 40 a0 e1                                      mov r4, r0
006c3db4  0b 10 a0 e1                                      mov r1, fp
006c3db8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006c3dbc  7a 29 f1 eb                                      bl #0x30e3ac
006c3dc0  04 90 94 e5                                      ldr sb, [r4, #4]
006c3dc4  00 a0 a0 e1                                      mov sl, r0
006c3dc8  10 00 94 e5                                      ldr r0, [r4, #0x10]
006c3dcc  09 10 a0 e1                                      mov r1, sb
006c3dd0  75 29 f1 eb                                      bl #0x30e3ac
006c3dd4  08 30 94 e5                                      ldr r3, [r4, #8]
006c3dd8  00 80 a0 e1                                      mov r8, r0
006c3ddc  14 00 94 e5                                      ldr r0, [r4, #0x14]
006c3de0  03 10 a0 e1                                      mov r1, r3
006c3de4  04 30 8d e5                                      str r3, [sp, #4]
006c3de8  6f 29 f1 eb                                      bl #0x30e3ac
006c3dec  0b 10 a0 e1                                      mov r1, fp
006c3df0  00 70 a0 e1                                      mov r7, r0
006c3df4  18 00 94 e5                                      ldr r0, [r4, #0x18]
006c3df8  6b 29 f1 eb                                      bl #0x30e3ac
006c3dfc  09 10 a0 e1                                      mov r1, sb
006c3e00  00 60 a0 e1                                      mov r6, r0
006c3e04  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006c3e08  67 29 f1 eb                                      bl #0x30e3ac
006c3e0c  04 30 9d e5                                      ldr r3, [sp, #4]
006c3e10  00 50 a0 e1                                      mov r5, r0
006c3e14  20 00 94 e5                                      ldr r0, [r4, #0x20]
006c3e18  03 10 a0 e1                                      mov r1, r3
006c3e1c  62 29 f1 eb                                      bl #0x30e3ac
006c3e20  0a 10 a0 e1                                      mov r1, sl
006c3e24  00 40 a0 e1                                      mov r4, r0
006c3e28  0a 00 a0 e1                                      mov r0, sl
006c3e2c  ce 2b f1 eb                                      bl #0x30ed6c
006c3e30  08 10 a0 e1                                      mov r1, r8
006c3e34  00 20 a0 e1                                      mov r2, r0
006c3e38  08 00 a0 e1                                      mov r0, r8
006c3e3c  08 20 8d e5                                      str r2, [sp, #8]
006c3e40  c9 2b f1 eb                                      bl #0x30ed6c
006c3e44  08 20 9d e5                                      ldr r2, [sp, #8]
006c3e48  00 10 a0 e1                                      mov r1, r0
006c3e4c  02 00 a0 e1                                      mov r0, r2
006c3e50  53 2b f1 eb                                      bl #0x30eba4
006c3e54  07 10 a0 e1                                      mov r1, r7
006c3e58  00 20 a0 e1                                      mov r2, r0
006c3e5c  07 00 a0 e1                                      mov r0, r7
006c3e60  08 20 8d e5                                      str r2, [sp, #8]
006c3e64  c0 2b f1 eb                                      bl #0x30ed6c
006c3e68  08 20 9d e5                                      ldr r2, [sp, #8]
006c3e6c  00 10 a0 e1                                      mov r1, r0
006c3e70  02 00 a0 e1                                      mov r0, r2
006c3e74  4a 2b f1 eb                                      bl #0x30eba4
006c3e78  06 10 a0 e1                                      mov r1, r6
006c3e7c  14 00 8d e5                                      str r0, [sp, #0x14]
006c3e80  0a 00 a0 e1                                      mov r0, sl
006c3e84  b8 2b f1 eb                                      bl #0x30ed6c
006c3e88  05 10 a0 e1                                      mov r1, r5
006c3e8c  00 20 a0 e1                                      mov r2, r0
006c3e90  08 00 a0 e1                                      mov r0, r8
006c3e94  08 20 8d e5                                      str r2, [sp, #8]
006c3e98  b3 2b f1 eb                                      bl #0x30ed6c
006c3e9c  08 20 9d e5                                      ldr r2, [sp, #8]
006c3ea0  00 10 a0 e1                                      mov r1, r0
006c3ea4  02 00 a0 e1                                      mov r0, r2
006c3ea8  3d 2b f1 eb                                      bl #0x30eba4
006c3eac  04 10 a0 e1                                      mov r1, r4
006c3eb0  00 20 a0 e1                                      mov r2, r0
006c3eb4  07 00 a0 e1                                      mov r0, r7
006c3eb8  08 20 8d e5                                      str r2, [sp, #8]
006c3ebc  aa 2b f1 eb                                      bl #0x30ed6c
006c3ec0  08 20 9d e5                                      ldr r2, [sp, #8]
006c3ec4  00 10 a0 e1                                      mov r1, r0
006c3ec8  02 00 a0 e1                                      mov r0, r2
006c3ecc  34 2b f1 eb                                      bl #0x30eba4
006c3ed0  06 10 a0 e1                                      mov r1, r6
006c3ed4  10 00 8d e5                                      str r0, [sp, #0x10]
006c3ed8  06 00 a0 e1                                      mov r0, r6
006c3edc  a2 2b f1 eb                                      bl #0x30ed6c
006c3ee0  05 10 a0 e1                                      mov r1, r5
006c3ee4  00 20 a0 e1                                      mov r2, r0
006c3ee8  05 00 a0 e1                                      mov r0, r5
006c3eec  08 20 8d e5                                      str r2, [sp, #8]
006c3ef0  9d 2b f1 eb                                      bl #0x30ed6c
006c3ef4  08 20 9d e5                                      ldr r2, [sp, #8]
006c3ef8  00 10 a0 e1                                      mov r1, r0
006c3efc  02 00 a0 e1                                      mov r0, r2
006c3f00  27 2b f1 eb                                      bl #0x30eba4
006c3f04  04 10 a0 e1                                      mov r1, r4
006c3f08  00 20 a0 e1                                      mov r2, r0
006c3f0c  04 00 a0 e1                                      mov r0, r4
006c3f10  08 20 8d e5                                      str r2, [sp, #8]
006c3f14  94 2b f1 eb                                      bl #0x30ed6c
006c3f18  08 20 9d e5                                      ldr r2, [sp, #8]
006c3f1c  00 10 a0 e1                                      mov r1, r0
006c3f20  02 00 a0 e1                                      mov r0, r2
006c3f24  1e 2b f1 eb                                      bl #0x30eba4
006c3f28  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006c3f2c  18 00 8d e5                                      str r0, [sp, #0x18]
006c3f30  0b 10 a0 e1                                      mov r1, fp
006c3f34  00 00 92 e5                                      ldr r0, [r2]
006c3f38  1b 29 f1 eb                                      bl #0x30e3ac
006c3f3c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006c3f40  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c3f44  09 10 a0 e1                                      mov r1, sb
006c3f48  04 00 92 e5                                      ldr r0, [r2, #4]
006c3f4c  16 29 f1 eb                                      bl #0x30e3ac
006c3f50  04 30 9d e5                                      ldr r3, [sp, #4]
006c3f54  00 b0 a0 e1                                      mov fp, r0
006c3f58  03 10 a0 e1                                      mov r1, r3
006c3f5c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c3f60  08 00 93 e5                                      ldr r0, [r3, #8]
006c3f64  10 29 f1 eb                                      bl #0x30e3ac
006c3f68  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c3f6c  00 90 a0 e1                                      mov sb, r0
006c3f70  0a 00 a0 e1                                      mov r0, sl
006c3f74  7c 2b f1 eb                                      bl #0x30ed6c
006c3f78  0b 10 a0 e1                                      mov r1, fp
006c3f7c  00 a0 a0 e1                                      mov sl, r0
006c3f80  08 00 a0 e1                                      mov r0, r8
006c3f84  78 2b f1 eb                                      bl #0x30ed6c
006c3f88  00 10 a0 e1                                      mov r1, r0
006c3f8c  0a 00 a0 e1                                      mov r0, sl
006c3f90  03 2b f1 eb                                      bl #0x30eba4
006c3f94  09 10 a0 e1                                      mov r1, sb
006c3f98  00 80 a0 e1                                      mov r8, r0
006c3f9c  07 00 a0 e1                                      mov r0, r7
006c3fa0  71 2b f1 eb                                      bl #0x30ed6c
006c3fa4  00 10 a0 e1                                      mov r1, r0
006c3fa8  08 00 a0 e1                                      mov r0, r8
006c3fac  fc 2a f1 eb                                      bl #0x30eba4
006c3fb0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006c3fb4  00 70 a0 e1                                      mov r7, r0
006c3fb8  06 00 a0 e1                                      mov r0, r6
006c3fbc  6a 2b f1 eb                                      bl #0x30ed6c
006c3fc0  0b 10 a0 e1                                      mov r1, fp
006c3fc4  00 60 a0 e1                                      mov r6, r0
006c3fc8  05 00 a0 e1                                      mov r0, r5
006c3fcc  66 2b f1 eb                                      bl #0x30ed6c
006c3fd0  00 10 a0 e1                                      mov r1, r0
006c3fd4  06 00 a0 e1                                      mov r0, r6
006c3fd8  f1 2a f1 eb                                      bl #0x30eba4
006c3fdc  09 10 a0 e1                                      mov r1, sb
006c3fe0  00 50 a0 e1                                      mov r5, r0
006c3fe4  04 00 a0 e1                                      mov r0, r4
006c3fe8  5f 2b f1 eb                                      bl #0x30ed6c
006c3fec  00 10 a0 e1                                      mov r1, r0
006c3ff0  05 00 a0 e1                                      mov r0, r5
006c3ff4  ea 2a f1 eb                                      bl #0x30eba4
006c3ff8  07 10 a0 e1                                      mov r1, r7
006c3ffc  00 50 a0 e1                                      mov r5, r0
006c4000  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c4004  58 2b f1 eb                                      bl #0x30ed6c
006c4008  05 10 a0 e1                                      mov r1, r5
006c400c  00 40 a0 e1                                      mov r4, r0
006c4010  10 00 9d e5                                      ldr r0, [sp, #0x10]
006c4014  54 2b f1 eb                                      bl #0x30ed6c
006c4018  00 10 a0 e1                                      mov r1, r0
006c401c  04 00 a0 e1                                      mov r0, r4
006c4020  e1 28 f1 eb                                      bl #0x30e3ac
006c4024  05 10 a0 e1                                      mov r1, r5
006c4028  00 40 a0 e1                                      mov r4, r0
006c402c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006c4030  4d 2b f1 eb                                      bl #0x30ed6c
006c4034  07 10 a0 e1                                      mov r1, r7
006c4038  00 50 a0 e1                                      mov r5, r0
006c403c  10 00 9d e5                                      ldr r0, [sp, #0x10]
006c4040  49 2b f1 eb                                      bl #0x30ed6c
006c4044  00 10 a0 e1                                      mov r1, r0
006c4048  05 00 a0 e1                                      mov r0, r5
006c404c  d6 28 f1 eb                                      bl #0x30e3ac
006c4050  00 30 a0 e1                                      mov r3, r0
006c4054  00 10 a0 e1                                      mov r1, r0
006c4058  04 00 a0 e1                                      mov r0, r4
006c405c  04 40 83 e1                                      orr r4, r3, r4
006c4060  cf 2a f1 eb                                      bl #0x30eba4
006c4064  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c4068  00 50 a0 e1                                      mov r5, r0
006c406c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006c4070  3d 2b f1 eb                                      bl #0x30ed6c
006c4074  00 60 a0 e1                                      mov r6, r0
006c4078  10 00 9d e5                                      ldr r0, [sp, #0x10]
006c407c  04 40 e0 e1                                      mvn r4, r4
006c4080  00 10 a0 e1                                      mov r1, r0
006c4084  38 2b f1 eb                                      bl #0x30ed6c
006c4088  00 10 a0 e1                                      mov r1, r0
006c408c  06 00 a0 e1                                      mov r0, r6
006c4090  c5 28 f1 eb                                      bl #0x30e3ac
006c4094  00 10 a0 e1                                      mov r1, r0
006c4098  05 00 a0 e1                                      mov r0, r5
006c409c  c2 28 f1 eb                                      bl #0x30e3ac
006c40a0  00 00 04 e0                                      and r0, r4, r0
006c40a4  a0 0f a0 e1                                      lsr r0, r0, #0x1f
006c40a8  24 d0 8d e2                                      add sp, sp, #0x24
006c40ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
