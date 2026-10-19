; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00632b70, declared_size=1012, range_size=1012, mode=arm
; class-group: void glitch::ps::PWind
; alias: _ZN6glitch2ps5PWind5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
; demangled: void glitch::ps::PWind::apply<glitch::ps::GNPSParticle>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
00632b70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00632b74  00 70 a0 e3                                      mov r7, #0
00632b78  34 d0 4d e2                                      sub sp, sp, #0x34
00632b7c  04 20 8d e5                                      str r2, [sp, #4]
00632b80  24 70 8d e5                                      str r7, [sp, #0x24]
00632b84  28 70 8d e5                                      str r7, [sp, #0x28]
00632b88  2c 70 8d e5                                      str r7, [sp, #0x2c]
00632b8c  00 40 90 e5                                      ldr r4, [r0]
00632b90  01 80 a0 e1                                      mov r8, r1
00632b94  11 13 a0 e3                                      mov r1, #0x44000000
00632b98  04 00 94 e5                                      ldr r0, [r4, #4]
00632b9c  7a 18 81 e2                                      add r1, r1, #0x7a0000
00632ba0  03 50 a0 e1                                      mov r5, r3
00632ba4  70 70 f3 eb                                      bl #0x30ed6c
00632ba8  04 30 9d e5                                      ldr r3, [sp, #4]
00632bac  08 00 8d e5                                      str r0, [sp, #8]
00632bb0  18 90 94 e5                                      ldr sb, [r4, #0x18]
00632bb4  03 00 58 e1                                      cmp r8, r3
00632bb8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00632bbc  00 60 94 e5                                      ldr r6, [r4]
00632bc0  08 b0 94 e5                                      ldr fp, [r4, #8]
00632bc4  50 50 95 e5                                      ldr r5, [r5, #0x50]
00632bc8  10 30 8d e5                                      str r3, [sp, #0x10]
00632bcc  10 40 94 e5                                      ldr r4, [r4, #0x10]
00632bd0  18 40 8d e5                                      str r4, [sp, #0x18]
00632bd4  4a 00 00 0a                                      beq #0x632d04
00632bd8  03 00 a0 e1                                      mov r0, r3
00632bdc  07 10 a0 e1                                      mov r1, r7
00632be0  c4 6d f3 eb                                      bl #0x30e2f8
00632be4  00 00 50 e3                                      cmp r0, #0
00632be8  00 30 a0 e3                                      mov r3, #0
00632bec  01 30 a0 13                                      movne r3, #1
00632bf0  73 30 ef e6                                      uxtb r3, r3
00632bf4  0c 30 8d e5                                      str r3, [sp, #0xc]
00632bf8  02 31 8b e2                                      add r3, fp, #0x80000000
00632bfc  1c 30 8d e5                                      str r3, [sp, #0x1c]
00632c00  24 30 8d e2                                      add r3, sp, #0x24
00632c04  08 40 a0 e1                                      mov r4, r8
00632c08  14 30 8d e5                                      str r3, [sp, #0x14]
00632c0c  00 00 59 e3                                      cmp sb, #0
00632c10  5c 00 00 1a                                      bne #0x632d88
00632c14  20 30 96 e5                                      ldr r3, [r6, #0x20]
00632c18  14 00 9d e5                                      ldr r0, [sp, #0x14]
00632c1c  24 30 8d e5                                      str r3, [sp, #0x24]
00632c20  24 30 96 e5                                      ldr r3, [r6, #0x24]
00632c24  28 30 8d e5                                      str r3, [sp, #0x28]
00632c28  28 30 96 e5                                      ldr r3, [r6, #0x28]
00632c2c  40 90 c6 e5                                      strb sb, [r6, #0x40]
00632c30  2c 30 8d e5                                      str r3, [sp, #0x2c]
00632c34  29 af f4 eb                                      bl #0x35e8e0
00632c38  0b 00 a0 e1                                      mov r0, fp
00632c3c  00 10 a0 e3                                      mov r1, #0
00632c40  ac 6d f3 eb                                      bl #0x30e2f8
00632c44  00 00 50 e3                                      cmp r0, #0
00632c48  2f 00 00 1a                                      bne #0x632d0c
00632c4c  08 00 9d e5                                      ldr r0, [sp, #8]
00632c50  05 10 a0 e1                                      mov r1, r5
00632c54  44 70 f3 eb                                      bl #0x30ed6c
00632c58  24 10 9d e5                                      ldr r1, [sp, #0x24]
00632c5c  00 a0 a0 e1                                      mov sl, r0
00632c60  41 70 f3 eb                                      bl #0x30ed6c
00632c64  28 10 9d e5                                      ldr r1, [sp, #0x28]
00632c68  00 80 a0 e1                                      mov r8, r0
00632c6c  0a 00 a0 e1                                      mov r0, sl
00632c70  24 80 8d e5                                      str r8, [sp, #0x24]
00632c74  3c 70 f3 eb                                      bl #0x30ed6c
00632c78  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00632c7c  00 70 a0 e1                                      mov r7, r0
00632c80  0a 00 a0 e1                                      mov r0, sl
00632c84  28 70 8d e5                                      str r7, [sp, #0x28]
00632c88  37 70 f3 eb                                      bl #0x30ed6c
00632c8c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00632c90  00 a0 a0 e1                                      mov sl, r0
00632c94  2c 00 8d e5                                      str r0, [sp, #0x2c]
00632c98  00 00 53 e3                                      cmp r3, #0
00632c9c  79 00 00 1a                                      bne #0x632e88
00632ca0  08 10 a0 e1                                      mov r1, r8
00632ca4  05 00 a0 e1                                      mov r0, r5
00632ca8  2f 70 f3 eb                                      bl #0x30ed6c
00632cac  00 10 a0 e1                                      mov r1, r0
00632cb0  00 00 94 e5                                      ldr r0, [r4]
00632cb4  ba 6f f3 eb                                      bl #0x30eba4
00632cb8  07 10 a0 e1                                      mov r1, r7
00632cbc  00 00 84 e5                                      str r0, [r4]
00632cc0  05 00 a0 e1                                      mov r0, r5
00632cc4  28 70 f3 eb                                      bl #0x30ed6c
00632cc8  00 10 a0 e1                                      mov r1, r0
00632ccc  04 00 94 e5                                      ldr r0, [r4, #4]
00632cd0  b3 6f f3 eb                                      bl #0x30eba4
00632cd4  05 10 a0 e1                                      mov r1, r5
00632cd8  04 00 84 e5                                      str r0, [r4, #4]
00632cdc  0a 00 a0 e1                                      mov r0, sl
00632ce0  21 70 f3 eb                                      bl #0x30ed6c
00632ce4  00 10 a0 e1                                      mov r1, r0
00632ce8  08 00 94 e5                                      ldr r0, [r4, #8]
00632cec  ac 6f f3 eb                                      bl #0x30eba4
00632cf0  08 00 84 e5                                      str r0, [r4, #8]
00632cf4  04 30 9d e5                                      ldr r3, [sp, #4]
00632cf8  9c 40 84 e2                                      add r4, r4, #0x9c
00632cfc  04 00 53 e1                                      cmp r3, r4
00632d00  c1 ff ff 1a                                      bne #0x632c0c
00632d04  34 d0 8d e2                                      add sp, sp, #0x34
00632d08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00632d0c  30 10 96 e5                                      ldr r1, [r6, #0x30]
00632d10  00 00 94 e5                                      ldr r0, [r4]
00632d14  a4 6d f3 eb                                      bl #0x30e3ac
00632d18  24 10 9d e5                                      ldr r1, [sp, #0x24]
00632d1c  12 70 f3 eb                                      bl #0x30ed6c
00632d20  34 10 96 e5                                      ldr r1, [r6, #0x34]
00632d24  00 70 a0 e1                                      mov r7, r0
00632d28  04 00 94 e5                                      ldr r0, [r4, #4]
00632d2c  9e 6d f3 eb                                      bl #0x30e3ac
00632d30  28 10 9d e5                                      ldr r1, [sp, #0x28]
00632d34  0c 70 f3 eb                                      bl #0x30ed6c
00632d38  00 10 a0 e1                                      mov r1, r0
00632d3c  07 00 a0 e1                                      mov r0, r7
00632d40  97 6f f3 eb                                      bl #0x30eba4
00632d44  38 10 96 e5                                      ldr r1, [r6, #0x38]
00632d48  00 70 a0 e1                                      mov r7, r0
00632d4c  08 00 94 e5                                      ldr r0, [r4, #8]
00632d50  95 6d f3 eb                                      bl #0x30e3ac
00632d54  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00632d58  03 70 f3 eb                                      bl #0x30ed6c
00632d5c  00 10 a0 e1                                      mov r1, r0
00632d60  07 00 a0 e1                                      mov r0, r7
00632d64  8e 6f f3 eb                                      bl #0x30eba4
00632d68  02 11 c0 e3                                      bic r1, r0, #0x80000000
00632d6c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00632d70  fd 6f f3 eb                                      bl #0x30ed6c
00632d74  ba 6f f3 eb                                      bl #0x30ec64
00632d78  00 10 a0 e1                                      mov r1, r0
00632d7c  08 00 9d e5                                      ldr r0, [sp, #8]
00632d80  f9 6f f3 eb                                      bl #0x30ed6c
00632d84  b1 ff ff ea                                      b #0x632c50
00632d88  00 10 94 e5                                      ldr r1, [r4]
00632d8c  30 00 96 e5                                      ldr r0, [r6, #0x30]
00632d90  85 6d f3 eb                                      bl #0x30e3ac
00632d94  04 10 94 e5                                      ldr r1, [r4, #4]
00632d98  00 a0 a0 e1                                      mov sl, r0
00632d9c  34 00 96 e5                                      ldr r0, [r6, #0x34]
00632da0  81 6d f3 eb                                      bl #0x30e3ac
00632da4  08 10 94 e5                                      ldr r1, [r4, #8]
00632da8  00 80 a0 e1                                      mov r8, r0
00632dac  38 00 96 e5                                      ldr r0, [r6, #0x38]
00632db0  7d 6d f3 eb                                      bl #0x30e3ac
00632db4  0a 10 a0 e1                                      mov r1, sl
00632db8  00 70 a0 e1                                      mov r7, r0
00632dbc  0a 00 a0 e1                                      mov r0, sl
00632dc0  24 a0 8d e5                                      str sl, [sp, #0x24]
00632dc4  28 80 8d e5                                      str r8, [sp, #0x28]
00632dc8  2c 70 8d e5                                      str r7, [sp, #0x2c]
00632dcc  e6 6f f3 eb                                      bl #0x30ed6c
00632dd0  08 10 a0 e1                                      mov r1, r8
00632dd4  00 a0 a0 e1                                      mov sl, r0
00632dd8  08 00 a0 e1                                      mov r0, r8
00632ddc  e2 6f f3 eb                                      bl #0x30ed6c
00632de0  00 10 a0 e1                                      mov r1, r0
00632de4  0a 00 a0 e1                                      mov r0, sl
00632de8  6d 6f f3 eb                                      bl #0x30eba4
00632dec  07 10 a0 e1                                      mov r1, r7
00632df0  00 80 a0 e1                                      mov r8, r0
00632df4  07 00 a0 e1                                      mov r0, r7
00632df8  db 6f f3 eb                                      bl #0x30ed6c
00632dfc  00 10 a0 e1                                      mov r1, r0
00632e00  08 00 a0 e1                                      mov r0, r8
00632e04  66 6f f3 eb                                      bl #0x30eba4
00632e08  a5 6e f3 eb                                      bl #0x30e8a4
00632e0c  eb 6c f3 eb                                      bl #0x30e1c0
00632e10  22 6e f3 eb                                      bl #0x30e6a0
00632e14  00 10 a0 e3                                      mov r1, #0
00632e18  00 80 a0 e1                                      mov r8, r0
00632e1c  5a 6c f3 eb                                      bl #0x30df8c
00632e20  00 00 50 e3                                      cmp r0, #0
00632e24  0f 00 00 1a                                      bne #0x632e68
00632e28  08 10 a0 e1                                      mov r1, r8
00632e2c  fe 05 a0 e3                                      mov r0, #0x3f800000
00632e30  97 6f f3 eb                                      bl #0x30ec94
00632e34  00 70 a0 e1                                      mov r7, r0
00632e38  00 10 a0 e1                                      mov r1, r0
00632e3c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00632e40  c9 6f f3 eb                                      bl #0x30ed6c
00632e44  07 10 a0 e1                                      mov r1, r7
00632e48  24 00 8d e5                                      str r0, [sp, #0x24]
00632e4c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00632e50  c5 6f f3 eb                                      bl #0x30ed6c
00632e54  07 10 a0 e1                                      mov r1, r7
00632e58  28 00 8d e5                                      str r0, [sp, #0x28]
00632e5c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00632e60  c1 6f f3 eb                                      bl #0x30ed6c
00632e64  2c 00 8d e5                                      str r0, [sp, #0x2c]
00632e68  0b 00 a0 e1                                      mov r0, fp
00632e6c  00 10 a0 e3                                      mov r1, #0
00632e70  20 6d f3 eb                                      bl #0x30e2f8
00632e74  00 00 50 e3                                      cmp r0, #0
00632e78  73 ff ff 0a                                      beq #0x632c4c
00632e7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00632e80  08 10 a0 e1                                      mov r1, r8
00632e84  b9 ff ff ea                                      b #0x632d70
00632e88  05 10 a0 e1                                      mov r1, r5
00632e8c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00632e90  b5 6f f3 eb                                      bl #0x30ed6c
00632e94  00 a0 a0 e1                                      mov sl, r0
00632e98  c2 6f f3 eb                                      bl #0x30eda8
00632e9c  00 80 a0 e1                                      mov r8, r0
00632ea0  c0 6f f3 eb                                      bl #0x30eda8
00632ea4  00 70 a0 e1                                      mov r7, r0
00632ea8  be 6f f3 eb                                      bl #0x30eda8
00632eac  00 30 a0 e1                                      mov r3, r0
00632eb0  08 00 a0 e1                                      mov r0, r8
00632eb4  00 30 8d e5                                      str r3, [sp]
00632eb8  a9 6e f3 eb                                      bl #0x30e964
00632ebc  03 12 a0 e3                                      mov r1, #0x30000000
00632ec0  a9 6f f3 eb                                      bl #0x30ed6c
00632ec4  00 10 a0 e1                                      mov r1, r0
00632ec8  0a 00 a0 e1                                      mov r0, sl
00632ecc  a6 6f f3 eb                                      bl #0x30ed6c
00632ed0  00 10 a0 e1                                      mov r1, r0
00632ed4  10 00 9d e5                                      ldr r0, [sp, #0x10]
00632ed8  a3 6f f3 eb                                      bl #0x30ed6c
00632edc  24 10 9d e5                                      ldr r1, [sp, #0x24]
00632ee0  2f 6f f3 eb                                      bl #0x30eba4
00632ee4  00 80 a0 e1                                      mov r8, r0
00632ee8  07 00 a0 e1                                      mov r0, r7
00632eec  24 80 8d e5                                      str r8, [sp, #0x24]
00632ef0  9b 6e f3 eb                                      bl #0x30e964
00632ef4  03 12 a0 e3                                      mov r1, #0x30000000
00632ef8  9b 6f f3 eb                                      bl #0x30ed6c
00632efc  00 10 a0 e1                                      mov r1, r0
00632f00  0a 00 a0 e1                                      mov r0, sl
00632f04  98 6f f3 eb                                      bl #0x30ed6c
00632f08  00 10 a0 e1                                      mov r1, r0
00632f0c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00632f10  95 6f f3 eb                                      bl #0x30ed6c
00632f14  28 10 9d e5                                      ldr r1, [sp, #0x28]
00632f18  21 6f f3 eb                                      bl #0x30eba4
00632f1c  00 30 9d e5                                      ldr r3, [sp]
00632f20  00 70 a0 e1                                      mov r7, r0
00632f24  28 70 8d e5                                      str r7, [sp, #0x28]
00632f28  03 00 a0 e1                                      mov r0, r3
00632f2c  8c 6e f3 eb                                      bl #0x30e964
00632f30  03 12 a0 e3                                      mov r1, #0x30000000
00632f34  8c 6f f3 eb                                      bl #0x30ed6c
00632f38  00 10 a0 e1                                      mov r1, r0
00632f3c  0a 00 a0 e1                                      mov r0, sl
00632f40  89 6f f3 eb                                      bl #0x30ed6c
00632f44  00 10 a0 e1                                      mov r1, r0
00632f48  10 00 9d e5                                      ldr r0, [sp, #0x10]
00632f4c  86 6f f3 eb                                      bl #0x30ed6c
00632f50  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00632f54  12 6f f3 eb                                      bl #0x30eba4
00632f58  00 a0 a0 e1                                      mov sl, r0
00632f5c  2c 00 8d e5                                      str r0, [sp, #0x2c]
00632f60  4e ff ff ea                                      b #0x632ca0

; FUNCTION 0x00632f6c, declared_size=1012, range_size=1012, mode=arm
; class-group: void glitch::ps::PWind
; alias: _ZN6glitch2ps5PWind5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
; demangled: void glitch::ps::PWind::apply<glitch::ps::SParticle>(glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::SParticle>*)
; decoder-mode: arm
00632f6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00632f70  00 70 a0 e3                                      mov r7, #0
00632f74  34 d0 4d e2                                      sub sp, sp, #0x34
00632f78  04 20 8d e5                                      str r2, [sp, #4]
00632f7c  24 70 8d e5                                      str r7, [sp, #0x24]
00632f80  28 70 8d e5                                      str r7, [sp, #0x28]
00632f84  2c 70 8d e5                                      str r7, [sp, #0x2c]
00632f88  00 40 90 e5                                      ldr r4, [r0]
00632f8c  01 80 a0 e1                                      mov r8, r1
00632f90  11 13 a0 e3                                      mov r1, #0x44000000
00632f94  04 00 94 e5                                      ldr r0, [r4, #4]
00632f98  7a 18 81 e2                                      add r1, r1, #0x7a0000
00632f9c  03 50 a0 e1                                      mov r5, r3
00632fa0  71 6f f3 eb                                      bl #0x30ed6c
00632fa4  04 30 9d e5                                      ldr r3, [sp, #4]
00632fa8  08 00 8d e5                                      str r0, [sp, #8]
00632fac  18 90 94 e5                                      ldr sb, [r4, #0x18]
00632fb0  03 00 58 e1                                      cmp r8, r3
00632fb4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00632fb8  00 60 94 e5                                      ldr r6, [r4]
00632fbc  08 b0 94 e5                                      ldr fp, [r4, #8]
00632fc0  50 50 95 e5                                      ldr r5, [r5, #0x50]
00632fc4  10 30 8d e5                                      str r3, [sp, #0x10]
00632fc8  10 40 94 e5                                      ldr r4, [r4, #0x10]
00632fcc  18 40 8d e5                                      str r4, [sp, #0x18]
00632fd0  4a 00 00 0a                                      beq #0x633100
00632fd4  03 00 a0 e1                                      mov r0, r3
00632fd8  07 10 a0 e1                                      mov r1, r7
00632fdc  c5 6c f3 eb                                      bl #0x30e2f8
00632fe0  00 00 50 e3                                      cmp r0, #0
00632fe4  00 30 a0 e3                                      mov r3, #0
00632fe8  01 30 a0 13                                      movne r3, #1
00632fec  73 30 ef e6                                      uxtb r3, r3
00632ff0  0c 30 8d e5                                      str r3, [sp, #0xc]
00632ff4  02 31 8b e2                                      add r3, fp, #0x80000000
00632ff8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00632ffc  24 30 8d e2                                      add r3, sp, #0x24
00633000  08 40 a0 e1                                      mov r4, r8
00633004  14 30 8d e5                                      str r3, [sp, #0x14]
00633008  00 00 59 e3                                      cmp sb, #0
0063300c  5c 00 00 1a                                      bne #0x633184
00633010  20 30 96 e5                                      ldr r3, [r6, #0x20]
00633014  14 00 9d e5                                      ldr r0, [sp, #0x14]
00633018  24 30 8d e5                                      str r3, [sp, #0x24]
0063301c  24 30 96 e5                                      ldr r3, [r6, #0x24]
00633020  28 30 8d e5                                      str r3, [sp, #0x28]
00633024  28 30 96 e5                                      ldr r3, [r6, #0x28]
00633028  40 90 c6 e5                                      strb sb, [r6, #0x40]
0063302c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00633030  2a ae f4 eb                                      bl #0x35e8e0
00633034  0b 00 a0 e1                                      mov r0, fp
00633038  00 10 a0 e3                                      mov r1, #0
0063303c  ad 6c f3 eb                                      bl #0x30e2f8
00633040  00 00 50 e3                                      cmp r0, #0
00633044  2f 00 00 1a                                      bne #0x633108
00633048  08 00 9d e5                                      ldr r0, [sp, #8]
0063304c  05 10 a0 e1                                      mov r1, r5
00633050  45 6f f3 eb                                      bl #0x30ed6c
00633054  24 10 9d e5                                      ldr r1, [sp, #0x24]
00633058  00 a0 a0 e1                                      mov sl, r0
0063305c  42 6f f3 eb                                      bl #0x30ed6c
00633060  28 10 9d e5                                      ldr r1, [sp, #0x28]
00633064  00 80 a0 e1                                      mov r8, r0
00633068  0a 00 a0 e1                                      mov r0, sl
0063306c  24 80 8d e5                                      str r8, [sp, #0x24]
00633070  3d 6f f3 eb                                      bl #0x30ed6c
00633074  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00633078  00 70 a0 e1                                      mov r7, r0
0063307c  0a 00 a0 e1                                      mov r0, sl
00633080  28 70 8d e5                                      str r7, [sp, #0x28]
00633084  38 6f f3 eb                                      bl #0x30ed6c
00633088  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063308c  00 a0 a0 e1                                      mov sl, r0
00633090  2c 00 8d e5                                      str r0, [sp, #0x2c]
00633094  00 00 53 e3                                      cmp r3, #0
00633098  79 00 00 1a                                      bne #0x633284
0063309c  08 10 a0 e1                                      mov r1, r8
006330a0  05 00 a0 e1                                      mov r0, r5
006330a4  30 6f f3 eb                                      bl #0x30ed6c
006330a8  00 10 a0 e1                                      mov r1, r0
006330ac  00 00 94 e5                                      ldr r0, [r4]
006330b0  bb 6e f3 eb                                      bl #0x30eba4
006330b4  07 10 a0 e1                                      mov r1, r7
006330b8  00 00 84 e5                                      str r0, [r4]
006330bc  05 00 a0 e1                                      mov r0, r5
006330c0  29 6f f3 eb                                      bl #0x30ed6c
006330c4  00 10 a0 e1                                      mov r1, r0
006330c8  04 00 94 e5                                      ldr r0, [r4, #4]
006330cc  b4 6e f3 eb                                      bl #0x30eba4
006330d0  05 10 a0 e1                                      mov r1, r5
006330d4  04 00 84 e5                                      str r0, [r4, #4]
006330d8  0a 00 a0 e1                                      mov r0, sl
006330dc  22 6f f3 eb                                      bl #0x30ed6c
006330e0  00 10 a0 e1                                      mov r1, r0
006330e4  08 00 94 e5                                      ldr r0, [r4, #8]
006330e8  ad 6e f3 eb                                      bl #0x30eba4
006330ec  08 00 84 e5                                      str r0, [r4, #8]
006330f0  04 30 9d e5                                      ldr r3, [sp, #4]
006330f4  64 40 84 e2                                      add r4, r4, #0x64
006330f8  04 00 53 e1                                      cmp r3, r4
006330fc  c1 ff ff 1a                                      bne #0x633008
00633100  34 d0 8d e2                                      add sp, sp, #0x34
00633104  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00633108  30 10 96 e5                                      ldr r1, [r6, #0x30]
0063310c  00 00 94 e5                                      ldr r0, [r4]
00633110  a5 6c f3 eb                                      bl #0x30e3ac
00633114  24 10 9d e5                                      ldr r1, [sp, #0x24]
00633118  13 6f f3 eb                                      bl #0x30ed6c
0063311c  34 10 96 e5                                      ldr r1, [r6, #0x34]
00633120  00 70 a0 e1                                      mov r7, r0
00633124  04 00 94 e5                                      ldr r0, [r4, #4]
00633128  9f 6c f3 eb                                      bl #0x30e3ac
0063312c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00633130  0d 6f f3 eb                                      bl #0x30ed6c
00633134  00 10 a0 e1                                      mov r1, r0
00633138  07 00 a0 e1                                      mov r0, r7
0063313c  98 6e f3 eb                                      bl #0x30eba4
00633140  38 10 96 e5                                      ldr r1, [r6, #0x38]
00633144  00 70 a0 e1                                      mov r7, r0
00633148  08 00 94 e5                                      ldr r0, [r4, #8]
0063314c  96 6c f3 eb                                      bl #0x30e3ac
00633150  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00633154  04 6f f3 eb                                      bl #0x30ed6c
00633158  00 10 a0 e1                                      mov r1, r0
0063315c  07 00 a0 e1                                      mov r0, r7
00633160  8f 6e f3 eb                                      bl #0x30eba4
00633164  02 11 c0 e3                                      bic r1, r0, #0x80000000
00633168  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0063316c  fe 6e f3 eb                                      bl #0x30ed6c
00633170  bb 6e f3 eb                                      bl #0x30ec64
00633174  00 10 a0 e1                                      mov r1, r0
00633178  08 00 9d e5                                      ldr r0, [sp, #8]
0063317c  fa 6e f3 eb                                      bl #0x30ed6c
00633180  b1 ff ff ea                                      b #0x63304c
00633184  00 10 94 e5                                      ldr r1, [r4]
00633188  30 00 96 e5                                      ldr r0, [r6, #0x30]
0063318c  86 6c f3 eb                                      bl #0x30e3ac
00633190  04 10 94 e5                                      ldr r1, [r4, #4]
00633194  00 a0 a0 e1                                      mov sl, r0
00633198  34 00 96 e5                                      ldr r0, [r6, #0x34]
0063319c  82 6c f3 eb                                      bl #0x30e3ac
006331a0  08 10 94 e5                                      ldr r1, [r4, #8]
006331a4  00 80 a0 e1                                      mov r8, r0
006331a8  38 00 96 e5                                      ldr r0, [r6, #0x38]
006331ac  7e 6c f3 eb                                      bl #0x30e3ac
006331b0  0a 10 a0 e1                                      mov r1, sl
006331b4  00 70 a0 e1                                      mov r7, r0
006331b8  0a 00 a0 e1                                      mov r0, sl
006331bc  24 a0 8d e5                                      str sl, [sp, #0x24]
006331c0  28 80 8d e5                                      str r8, [sp, #0x28]
006331c4  2c 70 8d e5                                      str r7, [sp, #0x2c]
006331c8  e7 6e f3 eb                                      bl #0x30ed6c
006331cc  08 10 a0 e1                                      mov r1, r8
006331d0  00 a0 a0 e1                                      mov sl, r0
006331d4  08 00 a0 e1                                      mov r0, r8
006331d8  e3 6e f3 eb                                      bl #0x30ed6c
006331dc  00 10 a0 e1                                      mov r1, r0
006331e0  0a 00 a0 e1                                      mov r0, sl
006331e4  6e 6e f3 eb                                      bl #0x30eba4
006331e8  07 10 a0 e1                                      mov r1, r7
006331ec  00 80 a0 e1                                      mov r8, r0
006331f0  07 00 a0 e1                                      mov r0, r7
006331f4  dc 6e f3 eb                                      bl #0x30ed6c
006331f8  00 10 a0 e1                                      mov r1, r0
006331fc  08 00 a0 e1                                      mov r0, r8
00633200  67 6e f3 eb                                      bl #0x30eba4
00633204  a6 6d f3 eb                                      bl #0x30e8a4
00633208  ec 6b f3 eb                                      bl #0x30e1c0
0063320c  23 6d f3 eb                                      bl #0x30e6a0
00633210  00 10 a0 e3                                      mov r1, #0
00633214  00 80 a0 e1                                      mov r8, r0
00633218  5b 6b f3 eb                                      bl #0x30df8c
0063321c  00 00 50 e3                                      cmp r0, #0
00633220  0f 00 00 1a                                      bne #0x633264
00633224  08 10 a0 e1                                      mov r1, r8
00633228  fe 05 a0 e3                                      mov r0, #0x3f800000
0063322c  98 6e f3 eb                                      bl #0x30ec94
00633230  00 70 a0 e1                                      mov r7, r0
00633234  00 10 a0 e1                                      mov r1, r0
00633238  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063323c  ca 6e f3 eb                                      bl #0x30ed6c
00633240  07 10 a0 e1                                      mov r1, r7
00633244  24 00 8d e5                                      str r0, [sp, #0x24]
00633248  28 00 9d e5                                      ldr r0, [sp, #0x28]
0063324c  c6 6e f3 eb                                      bl #0x30ed6c
00633250  07 10 a0 e1                                      mov r1, r7
00633254  28 00 8d e5                                      str r0, [sp, #0x28]
00633258  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0063325c  c2 6e f3 eb                                      bl #0x30ed6c
00633260  2c 00 8d e5                                      str r0, [sp, #0x2c]
00633264  0b 00 a0 e1                                      mov r0, fp
00633268  00 10 a0 e3                                      mov r1, #0
0063326c  21 6c f3 eb                                      bl #0x30e2f8
00633270  00 00 50 e3                                      cmp r0, #0
00633274  73 ff ff 0a                                      beq #0x633048
00633278  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0063327c  08 10 a0 e1                                      mov r1, r8
00633280  b9 ff ff ea                                      b #0x63316c
00633284  05 10 a0 e1                                      mov r1, r5
00633288  18 00 9d e5                                      ldr r0, [sp, #0x18]
0063328c  b6 6e f3 eb                                      bl #0x30ed6c
00633290  00 a0 a0 e1                                      mov sl, r0
00633294  c3 6e f3 eb                                      bl #0x30eda8
00633298  00 80 a0 e1                                      mov r8, r0
0063329c  c1 6e f3 eb                                      bl #0x30eda8
006332a0  00 70 a0 e1                                      mov r7, r0
006332a4  bf 6e f3 eb                                      bl #0x30eda8
006332a8  00 30 a0 e1                                      mov r3, r0
006332ac  08 00 a0 e1                                      mov r0, r8
006332b0  00 30 8d e5                                      str r3, [sp]
006332b4  aa 6d f3 eb                                      bl #0x30e964
006332b8  03 12 a0 e3                                      mov r1, #0x30000000
006332bc  aa 6e f3 eb                                      bl #0x30ed6c
006332c0  00 10 a0 e1                                      mov r1, r0
006332c4  0a 00 a0 e1                                      mov r0, sl
006332c8  a7 6e f3 eb                                      bl #0x30ed6c
006332cc  00 10 a0 e1                                      mov r1, r0
006332d0  10 00 9d e5                                      ldr r0, [sp, #0x10]
006332d4  a4 6e f3 eb                                      bl #0x30ed6c
006332d8  24 10 9d e5                                      ldr r1, [sp, #0x24]
006332dc  30 6e f3 eb                                      bl #0x30eba4
006332e0  00 80 a0 e1                                      mov r8, r0
006332e4  07 00 a0 e1                                      mov r0, r7
006332e8  24 80 8d e5                                      str r8, [sp, #0x24]
006332ec  9c 6d f3 eb                                      bl #0x30e964
006332f0  03 12 a0 e3                                      mov r1, #0x30000000
006332f4  9c 6e f3 eb                                      bl #0x30ed6c
006332f8  00 10 a0 e1                                      mov r1, r0
006332fc  0a 00 a0 e1                                      mov r0, sl
00633300  99 6e f3 eb                                      bl #0x30ed6c
00633304  00 10 a0 e1                                      mov r1, r0
00633308  10 00 9d e5                                      ldr r0, [sp, #0x10]
0063330c  96 6e f3 eb                                      bl #0x30ed6c
00633310  28 10 9d e5                                      ldr r1, [sp, #0x28]
00633314  22 6e f3 eb                                      bl #0x30eba4
00633318  00 30 9d e5                                      ldr r3, [sp]
0063331c  00 70 a0 e1                                      mov r7, r0
00633320  28 70 8d e5                                      str r7, [sp, #0x28]
00633324  03 00 a0 e1                                      mov r0, r3
00633328  8d 6d f3 eb                                      bl #0x30e964
0063332c  03 12 a0 e3                                      mov r1, #0x30000000
00633330  8d 6e f3 eb                                      bl #0x30ed6c
00633334  00 10 a0 e1                                      mov r1, r0
00633338  0a 00 a0 e1                                      mov r0, sl
0063333c  8a 6e f3 eb                                      bl #0x30ed6c
00633340  00 10 a0 e1                                      mov r1, r0
00633344  10 00 9d e5                                      ldr r0, [sp, #0x10]
00633348  87 6e f3 eb                                      bl #0x30ed6c
0063334c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00633350  13 6e f3 eb                                      bl #0x30eba4
00633354  00 a0 a0 e1                                      mov sl, r0
00633358  2c 00 8d e5                                      str r0, [sp, #0x2c]
0063335c  4e ff ff ea                                      b #0x63309c
