; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00608a94, declared_size=808, range_size=808, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS2_IsEENS0_27STransformPositionComponentEEEPT_S7_jPKT0_jtRKT1_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponent<glitch::core::vector3d<float>, glitch::core::vector3d<short>, glitch::core::STransformPositionComponent>(glitch::core::vector3d<float>*, unsigned int, glitch::core::vector3d<short> const*, unsigned int, unsigned short, glitch::core::STransformPositionComponent const&)
; decoder-mode: arm
00608a94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00608a98  1c d0 4d e2                                      sub sp, sp, #0x1c
00608a9c  44 40 9d e5                                      ldr r4, [sp, #0x44]
00608aa0  10 00 8d e5                                      str r0, [sp, #0x10]
00608aa4  08 10 8d e5                                      str r1, [sp, #8]
00608aa8  40 10 d4 e5                                      ldrb r1, [r4, #0x40]
00608aac  02 50 a0 e1                                      mov r5, r2
00608ab0  0c 30 8d e5                                      str r3, [sp, #0xc]
00608ab4  00 00 51 e3                                      cmp r1, #0
00608ab8  b0 14 dd e1                                      ldrh r1, [sp, #0x40]
00608abc  14 10 8d e5                                      str r1, [sp, #0x14]
00608ac0  5b 00 00 1a                                      bne #0x608c34
00608ac4  00 00 51 e3                                      cmp r1, #0
00608ac8  56 00 00 0a                                      beq #0x608c28
00608acc  01 90 a0 e1                                      mov sb, r1
00608ad0  00 60 a0 e1                                      mov r6, r0
00608ad4  01 00 00 ea                                      b #0x608ae0
00608ad8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00608adc  03 50 85 e0                                      add r5, r5, r3
00608ae0  f0 00 d5 e1                                      ldrsh r0, [r5]
00608ae4  9e 17 f4 eb                                      bl #0x30e964
00608ae8  00 a0 a0 e1                                      mov sl, r0
00608aec  f2 00 d5 e1                                      ldrsh r0, [r5, #2]
00608af0  9b 17 f4 eb                                      bl #0x30e964
00608af4  00 80 a0 e1                                      mov r8, r0
00608af8  f4 00 d5 e1                                      ldrsh r0, [r5, #4]
00608afc  98 17 f4 eb                                      bl #0x30e964
00608b00  00 10 94 e5                                      ldr r1, [r4]
00608b04  00 70 a0 e1                                      mov r7, r0
00608b08  0a 00 a0 e1                                      mov r0, sl
00608b0c  96 18 f4 eb                                      bl #0x30ed6c
00608b10  10 10 94 e5                                      ldr r1, [r4, #0x10]
00608b14  00 b0 a0 e1                                      mov fp, r0
00608b18  08 00 a0 e1                                      mov r0, r8
00608b1c  92 18 f4 eb                                      bl #0x30ed6c
00608b20  00 10 a0 e1                                      mov r1, r0
00608b24  0b 00 a0 e1                                      mov r0, fp
00608b28  1d 18 f4 eb                                      bl #0x30eba4
00608b2c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00608b30  00 b0 a0 e1                                      mov fp, r0
00608b34  07 00 a0 e1                                      mov r0, r7
00608b38  8b 18 f4 eb                                      bl #0x30ed6c
00608b3c  00 10 a0 e1                                      mov r1, r0
00608b40  0b 00 a0 e1                                      mov r0, fp
00608b44  16 18 f4 eb                                      bl #0x30eba4
00608b48  30 10 94 e5                                      ldr r1, [r4, #0x30]
00608b4c  14 18 f4 eb                                      bl #0x30eba4
00608b50  00 00 86 e5                                      str r0, [r6]
00608b54  04 10 94 e5                                      ldr r1, [r4, #4]
00608b58  0a 00 a0 e1                                      mov r0, sl
00608b5c  82 18 f4 eb                                      bl #0x30ed6c
00608b60  14 10 94 e5                                      ldr r1, [r4, #0x14]
00608b64  00 b0 a0 e1                                      mov fp, r0
00608b68  08 00 a0 e1                                      mov r0, r8
00608b6c  7e 18 f4 eb                                      bl #0x30ed6c
00608b70  00 10 a0 e1                                      mov r1, r0
00608b74  0b 00 a0 e1                                      mov r0, fp
00608b78  09 18 f4 eb                                      bl #0x30eba4
00608b7c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00608b80  00 b0 a0 e1                                      mov fp, r0
00608b84  07 00 a0 e1                                      mov r0, r7
00608b88  77 18 f4 eb                                      bl #0x30ed6c
00608b8c  00 10 a0 e1                                      mov r1, r0
00608b90  0b 00 a0 e1                                      mov r0, fp
00608b94  02 18 f4 eb                                      bl #0x30eba4
00608b98  34 10 94 e5                                      ldr r1, [r4, #0x34]
00608b9c  00 18 f4 eb                                      bl #0x30eba4
00608ba0  04 00 86 e5                                      str r0, [r6, #4]
00608ba4  08 10 94 e5                                      ldr r1, [r4, #8]
00608ba8  0a 00 a0 e1                                      mov r0, sl
00608bac  6e 18 f4 eb                                      bl #0x30ed6c
00608bb0  18 10 94 e5                                      ldr r1, [r4, #0x18]
00608bb4  00 a0 a0 e1                                      mov sl, r0
00608bb8  08 00 a0 e1                                      mov r0, r8
00608bbc  6a 18 f4 eb                                      bl #0x30ed6c
00608bc0  00 10 a0 e1                                      mov r1, r0
00608bc4  0a 00 a0 e1                                      mov r0, sl
00608bc8  f5 17 f4 eb                                      bl #0x30eba4
00608bcc  28 10 94 e5                                      ldr r1, [r4, #0x28]
00608bd0  00 80 a0 e1                                      mov r8, r0
00608bd4  07 00 a0 e1                                      mov r0, r7
00608bd8  63 18 f4 eb                                      bl #0x30ed6c
00608bdc  00 10 a0 e1                                      mov r1, r0
00608be0  08 00 a0 e1                                      mov r0, r8
00608be4  ee 17 f4 eb                                      bl #0x30eba4
00608be8  38 10 94 e5                                      ldr r1, [r4, #0x38]
00608bec  ec 17 f4 eb                                      bl #0x30eba4
00608bf0  01 90 49 e2                                      sub sb, sb, #1
00608bf4  08 00 86 e5                                      str r0, [r6, #8]
00608bf8  08 20 9d e5                                      ldr r2, [sp, #8]
00608bfc  79 90 ff e6                                      uxth sb, sb
00608c00  00 00 59 e3                                      cmp sb, #0
00608c04  02 60 86 e0                                      add r6, r6, r2
00608c08  b2 ff ff 1a                                      bne #0x608ad8
00608c0c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00608c10  01 30 41 e2                                      sub r3, r1, #1
00608c14  73 30 ff e6                                      uxth r3, r3
00608c18  93 22 23 e0                                      mla r3, r3, r2, r2
00608c1c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00608c20  03 20 82 e0                                      add r2, r2, r3
00608c24  10 20 8d e5                                      str r2, [sp, #0x10]
00608c28  10 00 9d e5                                      ldr r0, [sp, #0x10]
00608c2c  1c d0 8d e2                                      add sp, sp, #0x1c
00608c30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00608c34  44 70 94 e5                                      ldr r7, [r4, #0x44]
00608c38  00 00 57 e3                                      cmp r7, #0
00608c3c  39 00 00 0a                                      beq #0x608d28
00608c40  14 10 9d e5                                      ldr r1, [sp, #0x14]
00608c44  00 00 51 e3                                      cmp r1, #0
00608c48  f6 ff ff 0a                                      beq #0x608c28
00608c4c  14 a0 9d e5                                      ldr sl, [sp, #0x14]
00608c50  10 60 9d e5                                      ldr r6, [sp, #0x10]
00608c54  02 00 00 ea                                      b #0x608c64
00608c58  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00608c5c  44 70 94 e5                                      ldr r7, [r4, #0x44]
00608c60  03 50 85 e0                                      add r5, r5, r3
00608c64  f0 00 d5 e1                                      ldrsh r0, [r5]
00608c68  3d 17 f4 eb                                      bl #0x30e964
00608c6c  00 b0 a0 e1                                      mov fp, r0
00608c70  f2 00 d5 e1                                      ldrsh r0, [r5, #2]
00608c74  3a 17 f4 eb                                      bl #0x30e964
00608c78  00 30 a0 e1                                      mov r3, r0
00608c7c  f4 00 d5 e1                                      ldrsh r0, [r5, #4]
00608c80  04 30 8d e5                                      str r3, [sp, #4]
00608c84  36 17 f4 eb                                      bl #0x30e964
00608c88  04 30 9d e5                                      ldr r3, [sp, #4]
00608c8c  48 80 94 e5                                      ldr r8, [r4, #0x48]
00608c90  04 10 97 e5                                      ldr r1, [r7, #4]
00608c94  00 90 a0 e1                                      mov sb, r0
00608c98  03 00 a0 e1                                      mov r0, r3
00608c9c  32 18 f4 eb                                      bl #0x30ed6c
00608ca0  04 10 98 e5                                      ldr r1, [r8, #4]
00608ca4  be 17 f4 eb                                      bl #0x30eba4
00608ca8  08 10 97 e5                                      ldr r1, [r7, #8]
00608cac  00 30 a0 e1                                      mov r3, r0
00608cb0  09 00 a0 e1                                      mov r0, sb
00608cb4  04 30 8d e5                                      str r3, [sp, #4]
00608cb8  2b 18 f4 eb                                      bl #0x30ed6c
00608cbc  08 10 98 e5                                      ldr r1, [r8, #8]
00608cc0  b7 17 f4 eb                                      bl #0x30eba4
00608cc4  00 10 97 e5                                      ldr r1, [r7]
00608cc8  00 90 a0 e1                                      mov sb, r0
00608ccc  0b 00 a0 e1                                      mov r0, fp
00608cd0  25 18 f4 eb                                      bl #0x30ed6c
00608cd4  00 10 98 e5                                      ldr r1, [r8]
00608cd8  b1 17 f4 eb                                      bl #0x30eba4
00608cdc  00 00 86 e5                                      str r0, [r6]
00608ce0  04 30 9d e5                                      ldr r3, [sp, #4]
00608ce4  08 90 86 e5                                      str sb, [r6, #8]
00608ce8  01 a0 4a e2                                      sub sl, sl, #1
00608cec  04 30 86 e5                                      str r3, [r6, #4]
00608cf0  08 20 9d e5                                      ldr r2, [sp, #8]
00608cf4  7a a0 ff e6                                      uxth sl, sl
00608cf8  00 00 5a e3                                      cmp sl, #0
00608cfc  02 60 86 e0                                      add r6, r6, r2
00608d00  d4 ff ff 1a                                      bne #0x608c58
00608d04  14 10 9d e5                                      ldr r1, [sp, #0x14]
00608d08  08 20 9d e5                                      ldr r2, [sp, #8]
00608d0c  01 30 41 e2                                      sub r3, r1, #1
00608d10  73 30 ff e6                                      uxth r3, r3
00608d14  10 10 9d e5                                      ldr r1, [sp, #0x10]
00608d18  93 22 23 e0                                      mla r3, r3, r2, r2
00608d1c  03 10 81 e0                                      add r1, r1, r3
00608d20  10 10 8d e5                                      str r1, [sp, #0x10]
00608d24  bf ff ff ea                                      b #0x608c28
00608d28  48 30 94 e5                                      ldr r3, [r4, #0x48]
00608d2c  00 00 53 e3                                      cmp r3, #0
00608d30  c2 ff ff 1a                                      bne #0x608c40
00608d34  14 20 9d e5                                      ldr r2, [sp, #0x14]
00608d38  00 00 52 e3                                      cmp r2, #0
00608d3c  b9 ff ff 0a                                      beq #0x608c28
00608d40  02 60 a0 e1                                      mov r6, r2
00608d44  10 40 9d e5                                      ldr r4, [sp, #0x10]
00608d48  08 a0 9d e5                                      ldr sl, [sp, #8]
00608d4c  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00608d50  00 00 00 ea                                      b #0x608d58
00608d54  09 50 85 e0                                      add r5, r5, sb
00608d58  f0 00 d5 e1                                      ldrsh r0, [r5]
00608d5c  00 17 f4 eb                                      bl #0x30e964
00608d60  00 80 a0 e1                                      mov r8, r0
00608d64  f2 00 d5 e1                                      ldrsh r0, [r5, #2]
00608d68  fd 16 f4 eb                                      bl #0x30e964
00608d6c  00 70 a0 e1                                      mov r7, r0
00608d70  f4 00 d5 e1                                      ldrsh r0, [r5, #4]
00608d74  fa 16 f4 eb                                      bl #0x30e964
00608d78  01 60 46 e2                                      sub r6, r6, #1
00608d7c  76 60 ff e6                                      uxth r6, r6
00608d80  00 00 56 e3                                      cmp r6, #0
00608d84  00 80 84 e5                                      str r8, [r4]
00608d88  04 70 84 e5                                      str r7, [r4, #4]
00608d8c  08 00 84 e5                                      str r0, [r4, #8]
00608d90  0a 40 84 e0                                      add r4, r4, sl
00608d94  ee ff ff 1a                                      bne #0x608d54
00608d98  14 10 9d e5                                      ldr r1, [sp, #0x14]
00608d9c  08 20 9d e5                                      ldr r2, [sp, #8]
00608da0  01 30 41 e2                                      sub r3, r1, #1
00608da4  73 30 ff e6                                      uxth r3, r3
00608da8  10 10 9d e5                                      ldr r1, [sp, #0x10]
00608dac  93 22 23 e0                                      mla r3, r3, r2, r2
00608db0  03 10 81 e0                                      add r1, r1, r3
00608db4  10 10 8d e5                                      str r1, [sp, #0x10]
00608db8  9a ff ff ea                                      b #0x608c28

; FUNCTION 0x00608dbc, declared_size=432, range_size=432, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS0_27STransformPositionComponentEEEPT_S6_jPKS5_jtRKT0_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponent<glitch::core::vector3d<float>, glitch::core::STransformPositionComponent>(glitch::core::vector3d<float>*, unsigned int, glitch::core::vector3d<float> const*, unsigned int, unsigned short, glitch::core::STransformPositionComponent const&)
; decoder-mode: arm
00608dbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00608dc0  0c d0 4d e2                                      sub sp, sp, #0xc
00608dc4  34 40 9d e5                                      ldr r4, [sp, #0x34]
00608dc8  01 50 a0 e1                                      mov r5, r1
00608dcc  02 70 a0 e1                                      mov r7, r2
00608dd0  40 10 d4 e5                                      ldrb r1, [r4, #0x40]
00608dd4  b0 23 dd e1                                      ldrh r2, [sp, #0x30]
00608dd8  00 60 a0 e1                                      mov r6, r0
00608ddc  00 00 51 e3                                      cmp r1, #0
00608de0  03 90 a0 e1                                      mov sb, r3
00608de4  04 20 8d e5                                      str r2, [sp, #4]
00608de8  4d 00 00 1a                                      bne #0x608f24
00608dec  00 00 52 e3                                      cmp r2, #0
00608df0  48 00 00 0a                                      beq #0x608f18
00608df4  02 a0 a0 e1                                      mov sl, r2
00608df8  00 80 a0 e1                                      mov r8, r0
00608dfc  00 00 97 e5                                      ldr r0, [r7]
00608e00  00 10 94 e5                                      ldr r1, [r4]
00608e04  d8 17 f4 eb                                      bl #0x30ed6c
00608e08  10 10 94 e5                                      ldr r1, [r4, #0x10]
00608e0c  00 b0 a0 e1                                      mov fp, r0
00608e10  04 00 97 e5                                      ldr r0, [r7, #4]
00608e14  d4 17 f4 eb                                      bl #0x30ed6c
00608e18  00 10 a0 e1                                      mov r1, r0
00608e1c  0b 00 a0 e1                                      mov r0, fp
00608e20  5f 17 f4 eb                                      bl #0x30eba4
00608e24  20 10 94 e5                                      ldr r1, [r4, #0x20]
00608e28  00 b0 a0 e1                                      mov fp, r0
00608e2c  08 00 97 e5                                      ldr r0, [r7, #8]
00608e30  cd 17 f4 eb                                      bl #0x30ed6c
00608e34  00 10 a0 e1                                      mov r1, r0
00608e38  0b 00 a0 e1                                      mov r0, fp
00608e3c  58 17 f4 eb                                      bl #0x30eba4
00608e40  30 10 94 e5                                      ldr r1, [r4, #0x30]
00608e44  56 17 f4 eb                                      bl #0x30eba4
00608e48  00 00 88 e5                                      str r0, [r8]
00608e4c  00 00 97 e5                                      ldr r0, [r7]
00608e50  04 10 94 e5                                      ldr r1, [r4, #4]
00608e54  c4 17 f4 eb                                      bl #0x30ed6c
00608e58  14 10 94 e5                                      ldr r1, [r4, #0x14]
00608e5c  00 b0 a0 e1                                      mov fp, r0
00608e60  04 00 97 e5                                      ldr r0, [r7, #4]
00608e64  c0 17 f4 eb                                      bl #0x30ed6c
00608e68  00 10 a0 e1                                      mov r1, r0
00608e6c  0b 00 a0 e1                                      mov r0, fp
00608e70  4b 17 f4 eb                                      bl #0x30eba4
00608e74  24 10 94 e5                                      ldr r1, [r4, #0x24]
00608e78  00 b0 a0 e1                                      mov fp, r0
00608e7c  08 00 97 e5                                      ldr r0, [r7, #8]
00608e80  b9 17 f4 eb                                      bl #0x30ed6c
00608e84  00 10 a0 e1                                      mov r1, r0
00608e88  0b 00 a0 e1                                      mov r0, fp
00608e8c  44 17 f4 eb                                      bl #0x30eba4
00608e90  34 10 94 e5                                      ldr r1, [r4, #0x34]
00608e94  42 17 f4 eb                                      bl #0x30eba4
00608e98  04 00 88 e5                                      str r0, [r8, #4]
00608e9c  00 00 97 e5                                      ldr r0, [r7]
00608ea0  08 10 94 e5                                      ldr r1, [r4, #8]
00608ea4  b0 17 f4 eb                                      bl #0x30ed6c
00608ea8  18 10 94 e5                                      ldr r1, [r4, #0x18]
00608eac  00 b0 a0 e1                                      mov fp, r0
00608eb0  04 00 97 e5                                      ldr r0, [r7, #4]
00608eb4  ac 17 f4 eb                                      bl #0x30ed6c
00608eb8  00 10 a0 e1                                      mov r1, r0
00608ebc  0b 00 a0 e1                                      mov r0, fp
00608ec0  37 17 f4 eb                                      bl #0x30eba4
00608ec4  28 10 94 e5                                      ldr r1, [r4, #0x28]
00608ec8  00 b0 a0 e1                                      mov fp, r0
00608ecc  08 00 97 e5                                      ldr r0, [r7, #8]
00608ed0  a5 17 f4 eb                                      bl #0x30ed6c
00608ed4  00 10 a0 e1                                      mov r1, r0
00608ed8  0b 00 a0 e1                                      mov r0, fp
00608edc  30 17 f4 eb                                      bl #0x30eba4
00608ee0  38 10 94 e5                                      ldr r1, [r4, #0x38]
00608ee4  2e 17 f4 eb                                      bl #0x30eba4
00608ee8  01 a0 4a e2                                      sub sl, sl, #1
00608eec  7a a0 ff e6                                      uxth sl, sl
00608ef0  00 00 5a e3                                      cmp sl, #0
00608ef4  08 00 88 e5                                      str r0, [r8, #8]
00608ef8  09 70 87 e0                                      add r7, r7, sb
00608efc  05 80 88 e0                                      add r8, r8, r5
00608f00  bd ff ff 1a                                      bne #0x608dfc
00608f04  04 20 9d e5                                      ldr r2, [sp, #4]
00608f08  01 30 42 e2                                      sub r3, r2, #1
00608f0c  73 30 ff e6                                      uxth r3, r3
00608f10  93 55 25 e0                                      mla r5, r3, r5, r5
00608f14  05 60 86 e0                                      add r6, r6, r5
00608f18  06 00 a0 e1                                      mov r0, r6
00608f1c  0c d0 8d e2                                      add sp, sp, #0xc
00608f20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00608f24  04 30 9d e5                                      ldr r3, [sp, #4]
00608f28  00 00 53 e3                                      cmp r3, #0
00608f2c  f9 ff ff 0a                                      beq #0x608f18
00608f30  03 20 a0 e1                                      mov r2, r3
00608f34  00 30 a0 e1                                      mov r3, r0
00608f38  00 10 97 e5                                      ldr r1, [r7]
00608f3c  01 20 52 e2                                      subs r2, r2, #1
00608f40  00 10 83 e5                                      str r1, [r3]
00608f44  04 10 97 e5                                      ldr r1, [r7, #4]
00608f48  04 10 83 e5                                      str r1, [r3, #4]
00608f4c  08 10 97 e5                                      ldr r1, [r7, #8]
00608f50  09 70 87 e0                                      add r7, r7, sb
00608f54  08 10 83 e5                                      str r1, [r3, #8]
00608f58  05 30 83 e0                                      add r3, r3, r5
00608f5c  f5 ff ff 1a                                      bne #0x608f38
00608f60  04 20 9d e5                                      ldr r2, [sp, #4]
00608f64  92 65 26 e0                                      mla r6, r2, r5, r6
00608f68  ea ff ff ea                                      b #0x608f18

; FUNCTION 0x00608f6c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core15copyComponentSFINS0_8vector3dIfEENS0_27STransformPositionComponentEEEPT_S6_jPKhjNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEtRT0_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponentSF<glitch::core::vector3d<float>, glitch::core::STransformPositionComponent>(glitch::core::vector3d<float>*, unsigned int, unsigned char const*, unsigned int, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short, glitch::core::STransformPositionComponent&)
; decoder-mode: arm
00608f6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00608f70  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00608f74  00 60 a0 e1                                      mov r6, r0
00608f78  01 70 a0 e1                                      mov r7, r1
00608f7c  02 00 5c e3                                      cmp ip, #2
00608f80  02 80 a0 e1                                      mov r8, r2
00608f84  03 a0 a0 e1                                      mov sl, r3
00608f88  28 40 9d e5                                      ldr r4, [sp, #0x28]
00608f8c  b4 52 dd e1                                      ldrh r5, [sp, #0x24]
00608f90  02 00 00 0a                                      beq #0x608fa0
00608f94  06 00 5c e3                                      cmp ip, #6
00608f98  0b 00 00 0a                                      beq #0x608fcc
00608f9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00608fa0  04 00 a0 e1                                      mov r0, r4
00608fa4  00 10 a0 e3                                      mov r1, #0
00608fa8  6c fe ff eb                                      bl #0x608960
00608fac  06 00 a0 e1                                      mov r0, r6
00608fb0  07 10 a0 e1                                      mov r1, r7
00608fb4  08 20 a0 e1                                      mov r2, r8
00608fb8  0a 30 a0 e1                                      mov r3, sl
00608fbc  20 50 8d e5                                      str r5, [sp, #0x20]
00608fc0  24 40 8d e5                                      str r4, [sp, #0x24]
00608fc4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00608fc8  b1 fe ff ea                                      b #0x608a94
00608fcc  20 50 8d e5                                      str r5, [sp, #0x20]
00608fd0  24 40 8d e5                                      str r4, [sp, #0x24]
00608fd4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00608fd8  77 ff ff ea                                      b #0x608dbc

; FUNCTION 0x006092e8, declared_size=584, range_size=584, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS2_IcEENS0_25STransformNormalComponentEEEPT_S7_jPKT0_jtRKT1_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponent<glitch::core::vector3d<float>, glitch::core::vector3d<char>, glitch::core::STransformNormalComponent>(glitch::core::vector3d<float>*, unsigned int, glitch::core::vector3d<char> const*, unsigned int, unsigned short, glitch::core::STransformNormalComponent const&)
; decoder-mode: arm
006092e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006092ec  14 d0 4d e2                                      sub sp, sp, #0x14
006092f0  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
006092f4  08 00 8d e5                                      str r0, [sp, #8]
006092f8  00 10 8d e5                                      str r1, [sp]
006092fc  40 10 d4 e5                                      ldrb r1, [r4, #0x40]
00609300  02 50 a0 e1                                      mov r5, r2
00609304  04 30 8d e5                                      str r3, [sp, #4]
00609308  00 00 51 e3                                      cmp r1, #0
0060930c  b8 13 dd e1                                      ldrh r1, [sp, #0x38]
00609310  0c 10 8d e5                                      str r1, [sp, #0xc]
00609314  2f 00 00 0a                                      beq #0x6093d8
00609318  00 00 51 e3                                      cmp r1, #0
0060931c  2a 00 00 0a                                      beq #0x6093cc
00609320  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00609324  08 40 9d e5                                      ldr r4, [sp, #8]
00609328  00 a0 9d e5                                      ldr sl, [sp]
0060932c  04 90 9d e5                                      ldr sb, [sp, #4]
00609330  00 00 00 ea                                      b #0x609338
00609334  09 50 85 e0                                      add r5, r5, sb
00609338  d0 00 d5 e1                                      ldrsb r0, [r5]
0060933c  88 15 f4 eb                                      bl #0x30e964
00609340  00 b0 a0 e1                                      mov fp, r0
00609344  d1 00 d5 e1                                      ldrsb r0, [r5, #1]
00609348  85 15 f4 eb                                      bl #0x30e964
0060934c  00 80 a0 e1                                      mov r8, r0
00609350  d2 00 d5 e1                                      ldrsb r0, [r5, #2]
00609354  82 15 f4 eb                                      bl #0x30e964
00609358  04 12 00 e3                                      movw r1, #0x204
0060935c  00 70 a0 e1                                      mov r7, r0
00609360  01 1c 43 e3                                      movt r1, #0x3c01
00609364  0b 00 a0 e1                                      mov r0, fp
00609368  7f 16 f4 eb                                      bl #0x30ed6c
0060936c  04 12 00 e3                                      movw r1, #0x204
00609370  00 00 84 e5                                      str r0, [r4]
00609374  01 1c 43 e3                                      movt r1, #0x3c01
00609378  08 00 a0 e1                                      mov r0, r8
0060937c  7a 16 f4 eb                                      bl #0x30ed6c
00609380  04 12 00 e3                                      movw r1, #0x204
00609384  04 00 84 e5                                      str r0, [r4, #4]
00609388  01 1c 43 e3                                      movt r1, #0x3c01
0060938c  07 00 a0 e1                                      mov r0, r7
00609390  75 16 f4 eb                                      bl #0x30ed6c
00609394  01 60 46 e2                                      sub r6, r6, #1
00609398  76 60 ff e6                                      uxth r6, r6
0060939c  00 00 56 e3                                      cmp r6, #0
006093a0  08 00 84 e5                                      str r0, [r4, #8]
006093a4  0a 40 84 e0                                      add r4, r4, sl
006093a8  e1 ff ff 1a                                      bne #0x609334
006093ac  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006093b0  00 20 9d e5                                      ldr r2, [sp]
006093b4  01 30 41 e2                                      sub r3, r1, #1
006093b8  73 30 ff e6                                      uxth r3, r3
006093bc  08 10 9d e5                                      ldr r1, [sp, #8]
006093c0  93 22 23 e0                                      mla r3, r3, r2, r2
006093c4  03 10 81 e0                                      add r1, r1, r3
006093c8  08 10 8d e5                                      str r1, [sp, #8]
006093cc  08 00 9d e5                                      ldr r0, [sp, #8]
006093d0  14 d0 8d e2                                      add sp, sp, #0x14
006093d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006093d8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006093dc  00 00 52 e3                                      cmp r2, #0
006093e0  f9 ff ff 0a                                      beq #0x6093cc
006093e4  02 90 a0 e1                                      mov sb, r2
006093e8  08 60 9d e5                                      ldr r6, [sp, #8]
006093ec  01 00 00 ea                                      b #0x6093f8
006093f0  04 20 9d e5                                      ldr r2, [sp, #4]
006093f4  02 50 85 e0                                      add r5, r5, r2
006093f8  d0 00 d5 e1                                      ldrsb r0, [r5]
006093fc  58 15 f4 eb                                      bl #0x30e964
00609400  00 a0 a0 e1                                      mov sl, r0
00609404  d1 00 d5 e1                                      ldrsb r0, [r5, #1]
00609408  55 15 f4 eb                                      bl #0x30e964
0060940c  00 80 a0 e1                                      mov r8, r0
00609410  d2 00 d5 e1                                      ldrsb r0, [r5, #2]
00609414  52 15 f4 eb                                      bl #0x30e964
00609418  00 10 94 e5                                      ldr r1, [r4]
0060941c  00 70 a0 e1                                      mov r7, r0
00609420  0a 00 a0 e1                                      mov r0, sl
00609424  50 16 f4 eb                                      bl #0x30ed6c
00609428  10 10 94 e5                                      ldr r1, [r4, #0x10]
0060942c  00 b0 a0 e1                                      mov fp, r0
00609430  08 00 a0 e1                                      mov r0, r8
00609434  4c 16 f4 eb                                      bl #0x30ed6c
00609438  00 10 a0 e1                                      mov r1, r0
0060943c  0b 00 a0 e1                                      mov r0, fp
00609440  d7 15 f4 eb                                      bl #0x30eba4
00609444  20 10 94 e5                                      ldr r1, [r4, #0x20]
00609448  00 b0 a0 e1                                      mov fp, r0
0060944c  07 00 a0 e1                                      mov r0, r7
00609450  45 16 f4 eb                                      bl #0x30ed6c
00609454  00 10 a0 e1                                      mov r1, r0
00609458  0b 00 a0 e1                                      mov r0, fp
0060945c  d0 15 f4 eb                                      bl #0x30eba4
00609460  00 00 86 e5                                      str r0, [r6]
00609464  04 10 94 e5                                      ldr r1, [r4, #4]
00609468  0a 00 a0 e1                                      mov r0, sl
0060946c  3e 16 f4 eb                                      bl #0x30ed6c
00609470  14 10 94 e5                                      ldr r1, [r4, #0x14]
00609474  00 b0 a0 e1                                      mov fp, r0
00609478  08 00 a0 e1                                      mov r0, r8
0060947c  3a 16 f4 eb                                      bl #0x30ed6c
00609480  00 10 a0 e1                                      mov r1, r0
00609484  0b 00 a0 e1                                      mov r0, fp
00609488  c5 15 f4 eb                                      bl #0x30eba4
0060948c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00609490  00 b0 a0 e1                                      mov fp, r0
00609494  07 00 a0 e1                                      mov r0, r7
00609498  33 16 f4 eb                                      bl #0x30ed6c
0060949c  00 10 a0 e1                                      mov r1, r0
006094a0  0b 00 a0 e1                                      mov r0, fp
006094a4  be 15 f4 eb                                      bl #0x30eba4
006094a8  04 00 86 e5                                      str r0, [r6, #4]
006094ac  08 10 94 e5                                      ldr r1, [r4, #8]
006094b0  0a 00 a0 e1                                      mov r0, sl
006094b4  2c 16 f4 eb                                      bl #0x30ed6c
006094b8  18 10 94 e5                                      ldr r1, [r4, #0x18]
006094bc  00 a0 a0 e1                                      mov sl, r0
006094c0  08 00 a0 e1                                      mov r0, r8
006094c4  28 16 f4 eb                                      bl #0x30ed6c
006094c8  00 10 a0 e1                                      mov r1, r0
006094cc  0a 00 a0 e1                                      mov r0, sl
006094d0  b3 15 f4 eb                                      bl #0x30eba4
006094d4  28 10 94 e5                                      ldr r1, [r4, #0x28]
006094d8  00 80 a0 e1                                      mov r8, r0
006094dc  07 00 a0 e1                                      mov r0, r7
006094e0  21 16 f4 eb                                      bl #0x30ed6c
006094e4  00 10 a0 e1                                      mov r1, r0
006094e8  08 00 a0 e1                                      mov r0, r8
006094ec  ac 15 f4 eb                                      bl #0x30eba4
006094f0  08 00 86 e5                                      str r0, [r6, #8]
006094f4  01 90 49 e2                                      sub sb, sb, #1
006094f8  00 30 9d e5                                      ldr r3, [sp]
006094fc  79 90 ff e6                                      uxth sb, sb
00609500  00 00 59 e3                                      cmp sb, #0
00609504  03 60 86 e0                                      add r6, r6, r3
00609508  b8 ff ff 1a                                      bne #0x6093f0
0060950c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00609510  00 20 9d e5                                      ldr r2, [sp]
00609514  01 30 41 e2                                      sub r3, r1, #1
00609518  73 30 ff e6                                      uxth r3, r3
0060951c  08 10 9d e5                                      ldr r1, [sp, #8]
00609520  93 22 23 e0                                      mla r3, r3, r2, r2
00609524  03 10 81 e0                                      add r1, r1, r3
00609528  08 10 8d e5                                      str r1, [sp, #8]
0060952c  a6 ff ff ea                                      b #0x6093cc

; FUNCTION 0x00609530, declared_size=584, range_size=584, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS2_IsEENS0_25STransformNormalComponentEEEPT_S7_jPKT0_jtRKT1_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponent<glitch::core::vector3d<float>, glitch::core::vector3d<short>, glitch::core::STransformNormalComponent>(glitch::core::vector3d<float>*, unsigned int, glitch::core::vector3d<short> const*, unsigned int, unsigned short, glitch::core::STransformNormalComponent const&)
; decoder-mode: arm
00609530  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00609534  14 d0 4d e2                                      sub sp, sp, #0x14
00609538  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
0060953c  08 00 8d e5                                      str r0, [sp, #8]
00609540  00 10 8d e5                                      str r1, [sp]
00609544  40 10 d4 e5                                      ldrb r1, [r4, #0x40]
00609548  02 50 a0 e1                                      mov r5, r2
0060954c  04 30 8d e5                                      str r3, [sp, #4]
00609550  00 00 51 e3                                      cmp r1, #0
00609554  b8 13 dd e1                                      ldrh r1, [sp, #0x38]
00609558  0c 10 8d e5                                      str r1, [sp, #0xc]
0060955c  2f 00 00 0a                                      beq #0x609620
00609560  00 00 51 e3                                      cmp r1, #0
00609564  2a 00 00 0a                                      beq #0x609614
00609568  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0060956c  08 40 9d e5                                      ldr r4, [sp, #8]
00609570  00 a0 9d e5                                      ldr sl, [sp]
00609574  04 90 9d e5                                      ldr sb, [sp, #4]
00609578  00 00 00 ea                                      b #0x609580
0060957c  09 50 85 e0                                      add r5, r5, sb
00609580  f0 00 d5 e1                                      ldrsh r0, [r5]
00609584  f6 14 f4 eb                                      bl #0x30e964
00609588  00 b0 a0 e1                                      mov fp, r0
0060958c  f2 00 d5 e1                                      ldrsh r0, [r5, #2]
00609590  f3 14 f4 eb                                      bl #0x30e964
00609594  00 80 a0 e1                                      mov r8, r0
00609598  f4 00 d5 e1                                      ldrsh r0, [r5, #4]
0060959c  f0 14 f4 eb                                      bl #0x30e964
006095a0  0e 13 a0 e3                                      mov r1, #0x38000000
006095a4  00 70 a0 e1                                      mov r7, r0
006095a8  01 1c 81 e2                                      add r1, r1, #0x100
006095ac  0b 00 a0 e1                                      mov r0, fp
006095b0  ed 15 f4 eb                                      bl #0x30ed6c
006095b4  0e 13 a0 e3                                      mov r1, #0x38000000
006095b8  00 00 84 e5                                      str r0, [r4]
006095bc  01 1c 81 e2                                      add r1, r1, #0x100
006095c0  08 00 a0 e1                                      mov r0, r8
006095c4  e8 15 f4 eb                                      bl #0x30ed6c
006095c8  0e 13 a0 e3                                      mov r1, #0x38000000
006095cc  04 00 84 e5                                      str r0, [r4, #4]
006095d0  01 1c 81 e2                                      add r1, r1, #0x100
006095d4  07 00 a0 e1                                      mov r0, r7
006095d8  e3 15 f4 eb                                      bl #0x30ed6c
006095dc  01 60 46 e2                                      sub r6, r6, #1
006095e0  76 60 ff e6                                      uxth r6, r6
006095e4  00 00 56 e3                                      cmp r6, #0
006095e8  08 00 84 e5                                      str r0, [r4, #8]
006095ec  0a 40 84 e0                                      add r4, r4, sl
006095f0  e1 ff ff 1a                                      bne #0x60957c
006095f4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006095f8  00 20 9d e5                                      ldr r2, [sp]
006095fc  01 30 41 e2                                      sub r3, r1, #1
00609600  73 30 ff e6                                      uxth r3, r3
00609604  08 10 9d e5                                      ldr r1, [sp, #8]
00609608  93 22 23 e0                                      mla r3, r3, r2, r2
0060960c  03 10 81 e0                                      add r1, r1, r3
00609610  08 10 8d e5                                      str r1, [sp, #8]
00609614  08 00 9d e5                                      ldr r0, [sp, #8]
00609618  14 d0 8d e2                                      add sp, sp, #0x14
0060961c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00609620  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00609624  00 00 52 e3                                      cmp r2, #0
00609628  f9 ff ff 0a                                      beq #0x609614
0060962c  02 90 a0 e1                                      mov sb, r2
00609630  08 60 9d e5                                      ldr r6, [sp, #8]
00609634  01 00 00 ea                                      b #0x609640
00609638  04 20 9d e5                                      ldr r2, [sp, #4]
0060963c  02 50 85 e0                                      add r5, r5, r2
00609640  f0 00 d5 e1                                      ldrsh r0, [r5]
00609644  c6 14 f4 eb                                      bl #0x30e964
00609648  00 a0 a0 e1                                      mov sl, r0
0060964c  f2 00 d5 e1                                      ldrsh r0, [r5, #2]
00609650  c3 14 f4 eb                                      bl #0x30e964
00609654  00 80 a0 e1                                      mov r8, r0
00609658  f4 00 d5 e1                                      ldrsh r0, [r5, #4]
0060965c  c0 14 f4 eb                                      bl #0x30e964
00609660  00 10 94 e5                                      ldr r1, [r4]
00609664  00 70 a0 e1                                      mov r7, r0
00609668  0a 00 a0 e1                                      mov r0, sl
0060966c  be 15 f4 eb                                      bl #0x30ed6c
00609670  10 10 94 e5                                      ldr r1, [r4, #0x10]
00609674  00 b0 a0 e1                                      mov fp, r0
00609678  08 00 a0 e1                                      mov r0, r8
0060967c  ba 15 f4 eb                                      bl #0x30ed6c
00609680  00 10 a0 e1                                      mov r1, r0
00609684  0b 00 a0 e1                                      mov r0, fp
00609688  45 15 f4 eb                                      bl #0x30eba4
0060968c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00609690  00 b0 a0 e1                                      mov fp, r0
00609694  07 00 a0 e1                                      mov r0, r7
00609698  b3 15 f4 eb                                      bl #0x30ed6c
0060969c  00 10 a0 e1                                      mov r1, r0
006096a0  0b 00 a0 e1                                      mov r0, fp
006096a4  3e 15 f4 eb                                      bl #0x30eba4
006096a8  00 00 86 e5                                      str r0, [r6]
006096ac  04 10 94 e5                                      ldr r1, [r4, #4]
006096b0  0a 00 a0 e1                                      mov r0, sl
006096b4  ac 15 f4 eb                                      bl #0x30ed6c
006096b8  14 10 94 e5                                      ldr r1, [r4, #0x14]
006096bc  00 b0 a0 e1                                      mov fp, r0
006096c0  08 00 a0 e1                                      mov r0, r8
006096c4  a8 15 f4 eb                                      bl #0x30ed6c
006096c8  00 10 a0 e1                                      mov r1, r0
006096cc  0b 00 a0 e1                                      mov r0, fp
006096d0  33 15 f4 eb                                      bl #0x30eba4
006096d4  24 10 94 e5                                      ldr r1, [r4, #0x24]
006096d8  00 b0 a0 e1                                      mov fp, r0
006096dc  07 00 a0 e1                                      mov r0, r7
006096e0  a1 15 f4 eb                                      bl #0x30ed6c
006096e4  00 10 a0 e1                                      mov r1, r0
006096e8  0b 00 a0 e1                                      mov r0, fp
006096ec  2c 15 f4 eb                                      bl #0x30eba4
006096f0  04 00 86 e5                                      str r0, [r6, #4]
006096f4  08 10 94 e5                                      ldr r1, [r4, #8]
006096f8  0a 00 a0 e1                                      mov r0, sl
006096fc  9a 15 f4 eb                                      bl #0x30ed6c
00609700  18 10 94 e5                                      ldr r1, [r4, #0x18]
00609704  00 a0 a0 e1                                      mov sl, r0
00609708  08 00 a0 e1                                      mov r0, r8
0060970c  96 15 f4 eb                                      bl #0x30ed6c
00609710  00 10 a0 e1                                      mov r1, r0
00609714  0a 00 a0 e1                                      mov r0, sl
00609718  21 15 f4 eb                                      bl #0x30eba4
0060971c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00609720  00 80 a0 e1                                      mov r8, r0
00609724  07 00 a0 e1                                      mov r0, r7
00609728  8f 15 f4 eb                                      bl #0x30ed6c
0060972c  00 10 a0 e1                                      mov r1, r0
00609730  08 00 a0 e1                                      mov r0, r8
00609734  1a 15 f4 eb                                      bl #0x30eba4
00609738  08 00 86 e5                                      str r0, [r6, #8]
0060973c  01 90 49 e2                                      sub sb, sb, #1
00609740  00 30 9d e5                                      ldr r3, [sp]
00609744  79 90 ff e6                                      uxth sb, sb
00609748  00 00 59 e3                                      cmp sb, #0
0060974c  03 60 86 e0                                      add r6, r6, r3
00609750  b8 ff ff 1a                                      bne #0x609638
00609754  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00609758  00 20 9d e5                                      ldr r2, [sp]
0060975c  01 30 41 e2                                      sub r3, r1, #1
00609760  73 30 ff e6                                      uxth r3, r3
00609764  08 10 9d e5                                      ldr r1, [sp, #8]
00609768  93 22 23 e0                                      mla r3, r3, r2, r2
0060976c  03 10 81 e0                                      add r1, r1, r3
00609770  08 10 8d e5                                      str r1, [sp, #8]
00609774  a6 ff ff ea                                      b #0x609614

; FUNCTION 0x00609778, declared_size=408, range_size=408, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core13copyComponentINS0_8vector3dIfEENS0_25STransformNormalComponentEEEPT_S6_jPKS5_jtRKT0_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponent<glitch::core::vector3d<float>, glitch::core::STransformNormalComponent>(glitch::core::vector3d<float>*, unsigned int, glitch::core::vector3d<float> const*, unsigned int, unsigned short, glitch::core::STransformNormalComponent const&)
; decoder-mode: arm
00609778  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060977c  0c d0 4d e2                                      sub sp, sp, #0xc
00609780  34 40 9d e5                                      ldr r4, [sp, #0x34]
00609784  01 50 a0 e1                                      mov r5, r1
00609788  02 70 a0 e1                                      mov r7, r2
0060978c  40 10 d4 e5                                      ldrb r1, [r4, #0x40]
00609790  b0 23 dd e1                                      ldrh r2, [sp, #0x30]
00609794  00 60 a0 e1                                      mov r6, r0
00609798  00 00 51 e3                                      cmp r1, #0
0060979c  03 90 a0 e1                                      mov sb, r3
006097a0  04 20 8d e5                                      str r2, [sp, #4]
006097a4  47 00 00 1a                                      bne #0x6098c8
006097a8  00 00 52 e3                                      cmp r2, #0
006097ac  42 00 00 0a                                      beq #0x6098bc
006097b0  02 a0 a0 e1                                      mov sl, r2
006097b4  00 80 a0 e1                                      mov r8, r0
006097b8  00 00 97 e5                                      ldr r0, [r7]
006097bc  00 10 94 e5                                      ldr r1, [r4]
006097c0  69 15 f4 eb                                      bl #0x30ed6c
006097c4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006097c8  00 b0 a0 e1                                      mov fp, r0
006097cc  04 00 97 e5                                      ldr r0, [r7, #4]
006097d0  65 15 f4 eb                                      bl #0x30ed6c
006097d4  00 10 a0 e1                                      mov r1, r0
006097d8  0b 00 a0 e1                                      mov r0, fp
006097dc  f0 14 f4 eb                                      bl #0x30eba4
006097e0  20 10 94 e5                                      ldr r1, [r4, #0x20]
006097e4  00 b0 a0 e1                                      mov fp, r0
006097e8  08 00 97 e5                                      ldr r0, [r7, #8]
006097ec  5e 15 f4 eb                                      bl #0x30ed6c
006097f0  00 10 a0 e1                                      mov r1, r0
006097f4  0b 00 a0 e1                                      mov r0, fp
006097f8  e9 14 f4 eb                                      bl #0x30eba4
006097fc  00 00 88 e5                                      str r0, [r8]
00609800  00 00 97 e5                                      ldr r0, [r7]
00609804  04 10 94 e5                                      ldr r1, [r4, #4]
00609808  57 15 f4 eb                                      bl #0x30ed6c
0060980c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00609810  00 b0 a0 e1                                      mov fp, r0
00609814  04 00 97 e5                                      ldr r0, [r7, #4]
00609818  53 15 f4 eb                                      bl #0x30ed6c
0060981c  00 10 a0 e1                                      mov r1, r0
00609820  0b 00 a0 e1                                      mov r0, fp
00609824  de 14 f4 eb                                      bl #0x30eba4
00609828  24 10 94 e5                                      ldr r1, [r4, #0x24]
0060982c  00 b0 a0 e1                                      mov fp, r0
00609830  08 00 97 e5                                      ldr r0, [r7, #8]
00609834  4c 15 f4 eb                                      bl #0x30ed6c
00609838  00 10 a0 e1                                      mov r1, r0
0060983c  0b 00 a0 e1                                      mov r0, fp
00609840  d7 14 f4 eb                                      bl #0x30eba4
00609844  04 00 88 e5                                      str r0, [r8, #4]
00609848  00 00 97 e5                                      ldr r0, [r7]
0060984c  08 10 94 e5                                      ldr r1, [r4, #8]
00609850  45 15 f4 eb                                      bl #0x30ed6c
00609854  18 10 94 e5                                      ldr r1, [r4, #0x18]
00609858  00 b0 a0 e1                                      mov fp, r0
0060985c  04 00 97 e5                                      ldr r0, [r7, #4]
00609860  41 15 f4 eb                                      bl #0x30ed6c
00609864  00 10 a0 e1                                      mov r1, r0
00609868  0b 00 a0 e1                                      mov r0, fp
0060986c  cc 14 f4 eb                                      bl #0x30eba4
00609870  28 10 94 e5                                      ldr r1, [r4, #0x28]
00609874  00 b0 a0 e1                                      mov fp, r0
00609878  08 00 97 e5                                      ldr r0, [r7, #8]
0060987c  3a 15 f4 eb                                      bl #0x30ed6c
00609880  00 10 a0 e1                                      mov r1, r0
00609884  0b 00 a0 e1                                      mov r0, fp
00609888  c5 14 f4 eb                                      bl #0x30eba4
0060988c  01 a0 4a e2                                      sub sl, sl, #1
00609890  7a a0 ff e6                                      uxth sl, sl
00609894  00 00 5a e3                                      cmp sl, #0
00609898  08 00 88 e5                                      str r0, [r8, #8]
0060989c  09 70 87 e0                                      add r7, r7, sb
006098a0  05 80 88 e0                                      add r8, r8, r5
006098a4  c3 ff ff 1a                                      bne #0x6097b8
006098a8  04 20 9d e5                                      ldr r2, [sp, #4]
006098ac  01 30 42 e2                                      sub r3, r2, #1
006098b0  73 30 ff e6                                      uxth r3, r3
006098b4  93 55 25 e0                                      mla r5, r3, r5, r5
006098b8  05 60 86 e0                                      add r6, r6, r5
006098bc  06 00 a0 e1                                      mov r0, r6
006098c0  0c d0 8d e2                                      add sp, sp, #0xc
006098c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006098c8  04 30 9d e5                                      ldr r3, [sp, #4]
006098cc  00 00 53 e3                                      cmp r3, #0
006098d0  f9 ff ff 0a                                      beq #0x6098bc
006098d4  03 20 a0 e1                                      mov r2, r3
006098d8  00 30 a0 e1                                      mov r3, r0
006098dc  00 10 97 e5                                      ldr r1, [r7]
006098e0  01 20 52 e2                                      subs r2, r2, #1
006098e4  00 10 83 e5                                      str r1, [r3]
006098e8  04 10 97 e5                                      ldr r1, [r7, #4]
006098ec  04 10 83 e5                                      str r1, [r3, #4]
006098f0  08 10 97 e5                                      ldr r1, [r7, #8]
006098f4  09 70 87 e0                                      add r7, r7, sb
006098f8  08 10 83 e5                                      str r1, [r3, #8]
006098fc  05 30 83 e0                                      add r3, r3, r5
00609900  f5 ff ff 1a                                      bne #0x6098dc
00609904  04 20 9d e5                                      ldr r2, [sp, #4]
00609908  92 65 26 e0                                      mla r6, r2, r5, r6
0060990c  ea ff ff ea                                      b #0x6098bc

; FUNCTION 0x00609910, declared_size=212, range_size=212, mode=arm
; class-group: glitch::core::vector3d<float>* glitch::core
; alias: _ZN6glitch4core16copyComponentBSFINS0_8vector3dIfEENS0_25STransformNormalComponentEEEPT_S6_jPKhjNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEtRT0_
; demangled: glitch::core::vector3d<float>* glitch::core::copyComponentBSF<glitch::core::vector3d<float>, glitch::core::STransformNormalComponent>(glitch::core::vector3d<float>*, unsigned int, unsigned char const*, unsigned int, glitch::video::E_VERTEX_ATTRIBUTE_VALUE_TYPE, unsigned short, glitch::core::STransformNormalComponent&)
; decoder-mode: arm
00609910  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00609914  24 d0 4d e2                                      sub sp, sp, #0x24
00609918  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0060991c  00 40 a0 e1                                      mov r4, r0
00609920  01 60 a0 e1                                      mov r6, r1
00609924  02 00 5c e3                                      cmp ip, #2
00609928  02 70 a0 e1                                      mov r7, r2
0060992c  03 80 a0 e1                                      mov r8, r3
00609930  48 a0 9d e5                                      ldr sl, [sp, #0x48]
00609934  b4 54 dd e1                                      ldrh r5, [sp, #0x44]
00609938  19 00 00 0a                                      beq #0x6099a4
0060993c  06 00 5c e3                                      cmp ip, #6
00609940  13 00 00 0a                                      beq #0x609994
00609944  00 00 5c e3                                      cmp ip, #0
00609948  0e 00 00 1a                                      bne #0x609988
0060994c  04 32 00 e3                                      movw r3, #0x204
00609950  01 3c 43 e3                                      movt r3, #0x3c01
00609954  14 10 8d e2                                      add r1, sp, #0x14
00609958  0a 00 a0 e1                                      mov r0, sl
0060995c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00609960  14 30 8d e5                                      str r3, [sp, #0x14]
00609964  18 30 8d e5                                      str r3, [sp, #0x18]
00609968  86 37 fe eb                                      bl #0x597788
0060996c  04 00 a0 e1                                      mov r0, r4
00609970  06 10 a0 e1                                      mov r1, r6
00609974  07 20 a0 e1                                      mov r2, r7
00609978  08 30 a0 e1                                      mov r3, r8
0060997c  20 04 8d e8                                      stm sp, {r5, sl}
00609980  58 fe ff eb                                      bl #0x6092e8
00609984  00 40 a0 e1                                      mov r4, r0
00609988  04 00 a0 e1                                      mov r0, r4
0060998c  24 d0 8d e2                                      add sp, sp, #0x24
00609990  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00609994  20 04 8d e8                                      stm sp, {r5, sl}
00609998  76 ff ff eb                                      bl #0x609778
0060999c  00 40 a0 e1                                      mov r4, r0
006099a0  f8 ff ff ea                                      b #0x609988
006099a4  0e 33 a0 e3                                      mov r3, #0x38000000
006099a8  01 3c 83 e2                                      add r3, r3, #0x100
006099ac  08 10 8d e2                                      add r1, sp, #8
006099b0  0a 00 a0 e1                                      mov r0, sl
006099b4  10 30 8d e5                                      str r3, [sp, #0x10]
006099b8  08 30 8d e5                                      str r3, [sp, #8]
006099bc  0c 30 8d e5                                      str r3, [sp, #0xc]
006099c0  70 37 fe eb                                      bl #0x597788
006099c4  04 00 a0 e1                                      mov r0, r4
006099c8  06 10 a0 e1                                      mov r1, r6
006099cc  07 20 a0 e1                                      mov r2, r7
006099d0  08 30 a0 e1                                      mov r3, r8
006099d4  20 04 8d e8                                      stm sp, {r5, sl}
006099d8  d4 fe ff eb                                      bl #0x609530
006099dc  00 40 a0 e1                                      mov r4, r0
006099e0  e8 ff ff ea                                      b #0x609988
