; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00586a34, declared_size=152, range_size=152, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector5SetupEPKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::CTriangleSelector::Setup(glitch::core::CMatrix4<float> const*) const
; decoder-mode: arm
00586a34  70 40 2d e9                                      push {r4, r5, r6, lr}
00586a38  00 30 a0 e3                                      mov r3, #0
00586a3c  5c 50 80 e2                                      add r5, r0, #0x5c
00586a40  00 40 a0 e1                                      mov r4, r0
00586a44  9c 30 c0 e5                                      strb r3, [r0, #0x9c]
00586a48  01 60 a0 e1                                      mov r6, r1
00586a4c  40 20 a0 e3                                      mov r2, #0x40
00586a50  03 10 a0 e1                                      mov r1, r3
00586a54  05 00 a0 e1                                      mov r0, r5
00586a58  80 1e f6 eb                                      bl #0x30e460
00586a5c  fe 35 a0 e3                                      mov r3, #0x3f800000
00586a60  01 20 a0 e3                                      mov r2, #1
00586a64  00 00 56 e3                                      cmp r6, #0
00586a68  98 30 84 e5                                      str r3, [r4, #0x98]
00586a6c  9c 20 c4 e5                                      strb r2, [r4, #0x9c]
00586a70  5c 30 84 e5                                      str r3, [r4, #0x5c]
00586a74  70 30 84 e5                                      str r3, [r4, #0x70]
00586a78  84 30 84 e5                                      str r3, [r4, #0x84]
00586a7c  03 00 00 0a                                      beq #0x586a90
00586a80  06 10 a0 e1                                      mov r1, r6
00586a84  05 00 a0 e1                                      mov r0, r5
00586a88  41 20 a0 e3                                      mov r2, #0x41
00586a8c  75 1f f6 eb                                      bl #0x30e868
00586a90  08 30 94 e5                                      ldr r3, [r4, #8]
00586a94  00 00 53 e3                                      cmp r3, #0
00586a98  02 00 00 0a                                      beq #0x586aa8
00586a9c  18 20 d4 e5                                      ldrb r2, [r4, #0x18]
00586aa0  00 00 52 e3                                      cmp r2, #0
00586aa4  00 00 00 0a                                      beq #0x586aac
00586aa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00586aac  03 00 a0 e1                                      mov r0, r3
00586ab0  00 30 93 e5                                      ldr r3, [r3]
00586ab4  0f e0 a0 e1                                      mov lr, pc
00586ab8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00586abc  00 10 a0 e1                                      mov r1, r0
00586ac0  05 00 a0 e1                                      mov r0, r5
00586ac4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00586ac8  02 23 fe ea                                      b #0x50f6d8

; FUNCTION 0x00586acc, declared_size=1020, range_size=1020, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector9AddResultERKNS_4core10triangle3dIfEE
; demangled: glitch::scene::CTriangleSelector::AddResult(glitch::core::triangle3d<float> const&) const
; decoder-mode: arm
00586acc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00586ad0  a8 30 90 e5                                      ldr r3, [r0, #0xa8]
00586ad4  24 50 a0 e3                                      mov r5, #0x24
00586ad8  00 c0 91 e5                                      ldr ip, [r1]
00586adc  95 03 03 e0                                      mul r3, r5, r3
00586ae0  00 40 a0 e1                                      mov r4, r0
00586ae4  a0 00 90 e5                                      ldr r0, [r0, #0xa0]
00586ae8  0c d0 4d e2                                      sub sp, sp, #0xc
00586aec  03 c0 80 e7                                      str ip, [r0, r3]
00586af0  03 20 80 e0                                      add r2, r0, r3
00586af4  04 30 91 e5                                      ldr r3, [r1, #4]
00586af8  04 30 82 e5                                      str r3, [r2, #4]
00586afc  08 30 91 e5                                      ldr r3, [r1, #8]
00586b00  08 30 82 e5                                      str r3, [r2, #8]
00586b04  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00586b08  0c 30 82 e5                                      str r3, [r2, #0xc]
00586b0c  10 30 91 e5                                      ldr r3, [r1, #0x10]
00586b10  10 30 82 e5                                      str r3, [r2, #0x10]
00586b14  14 30 91 e5                                      ldr r3, [r1, #0x14]
00586b18  14 30 82 e5                                      str r3, [r2, #0x14]
00586b1c  18 30 91 e5                                      ldr r3, [r1, #0x18]
00586b20  18 30 82 e5                                      str r3, [r2, #0x18]
00586b24  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00586b28  1c 30 82 e5                                      str r3, [r2, #0x1c]
00586b2c  20 30 91 e5                                      ldr r3, [r1, #0x20]
00586b30  20 30 82 e5                                      str r3, [r2, #0x20]
00586b34  9c 30 d4 e5                                      ldrb r3, [r4, #0x9c]
00586b38  00 00 53 e3                                      cmp r3, #0
00586b3c  d8 00 00 1a                                      bne #0x586ea4
00586b40  a8 70 94 e5                                      ldr r7, [r4, #0xa8]
00586b44  a0 80 94 e5                                      ldr r8, [r4, #0xa0]
00586b48  60 10 94 e5                                      ldr r1, [r4, #0x60]
00586b4c  95 07 07 e0                                      mul r7, r5, r7
00586b50  07 b0 98 e7                                      ldr fp, [r8, r7]
00586b54  07 60 88 e0                                      add r6, r8, r7
00586b58  04 90 96 e5                                      ldr sb, [r6, #4]
00586b5c  0b 00 a0 e1                                      mov r0, fp
00586b60  81 20 f6 eb                                      bl #0x30ed6c
00586b64  70 10 94 e5                                      ldr r1, [r4, #0x70]
00586b68  00 30 a0 e1                                      mov r3, r0
00586b6c  09 00 a0 e1                                      mov r0, sb
00586b70  08 a0 96 e5                                      ldr sl, [r6, #8]
00586b74  04 30 8d e5                                      str r3, [sp, #4]
00586b78  7b 20 f6 eb                                      bl #0x30ed6c
00586b7c  04 30 9d e5                                      ldr r3, [sp, #4]
00586b80  00 10 a0 e1                                      mov r1, r0
00586b84  03 00 a0 e1                                      mov r0, r3
00586b88  05 20 f6 eb                                      bl #0x30eba4
00586b8c  80 10 94 e5                                      ldr r1, [r4, #0x80]
00586b90  00 30 a0 e1                                      mov r3, r0
00586b94  0a 00 a0 e1                                      mov r0, sl
00586b98  04 30 8d e5                                      str r3, [sp, #4]
00586b9c  72 20 f6 eb                                      bl #0x30ed6c
00586ba0  04 30 9d e5                                      ldr r3, [sp, #4]
00586ba4  00 10 a0 e1                                      mov r1, r0
00586ba8  03 00 a0 e1                                      mov r0, r3
00586bac  fc 1f f6 eb                                      bl #0x30eba4
00586bb0  90 10 94 e5                                      ldr r1, [r4, #0x90]
00586bb4  fa 1f f6 eb                                      bl #0x30eba4
00586bb8  64 10 94 e5                                      ldr r1, [r4, #0x64]
00586bbc  00 20 a0 e1                                      mov r2, r0
00586bc0  0b 00 a0 e1                                      mov r0, fp
00586bc4  00 20 8d e5                                      str r2, [sp]
00586bc8  67 20 f6 eb                                      bl #0x30ed6c
00586bcc  74 10 94 e5                                      ldr r1, [r4, #0x74]
00586bd0  00 30 a0 e1                                      mov r3, r0
00586bd4  09 00 a0 e1                                      mov r0, sb
00586bd8  04 30 8d e5                                      str r3, [sp, #4]
00586bdc  62 20 f6 eb                                      bl #0x30ed6c
00586be0  04 30 9d e5                                      ldr r3, [sp, #4]
00586be4  00 10 a0 e1                                      mov r1, r0
00586be8  03 00 a0 e1                                      mov r0, r3
00586bec  ec 1f f6 eb                                      bl #0x30eba4
00586bf0  84 10 94 e5                                      ldr r1, [r4, #0x84]
00586bf4  00 30 a0 e1                                      mov r3, r0
00586bf8  0a 00 a0 e1                                      mov r0, sl
00586bfc  04 30 8d e5                                      str r3, [sp, #4]
00586c00  59 20 f6 eb                                      bl #0x30ed6c
00586c04  04 30 9d e5                                      ldr r3, [sp, #4]
00586c08  00 10 a0 e1                                      mov r1, r0
00586c0c  03 00 a0 e1                                      mov r0, r3
00586c10  e3 1f f6 eb                                      bl #0x30eba4
00586c14  94 10 94 e5                                      ldr r1, [r4, #0x94]
00586c18  e1 1f f6 eb                                      bl #0x30eba4
00586c1c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00586c20  00 30 a0 e1                                      mov r3, r0
00586c24  0b 00 a0 e1                                      mov r0, fp
00586c28  04 30 8d e5                                      str r3, [sp, #4]
00586c2c  4e 20 f6 eb                                      bl #0x30ed6c
00586c30  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
00586c34  00 b0 a0 e1                                      mov fp, r0
00586c38  09 00 a0 e1                                      mov r0, sb
00586c3c  4a 20 f6 eb                                      bl #0x30ed6c
00586c40  00 10 a0 e1                                      mov r1, r0
00586c44  0b 00 a0 e1                                      mov r0, fp
00586c48  d5 1f f6 eb                                      bl #0x30eba4
00586c4c  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00586c50  00 90 a0 e1                                      mov sb, r0
00586c54  0a 00 a0 e1                                      mov r0, sl
00586c58  43 20 f6 eb                                      bl #0x30ed6c
00586c5c  00 10 a0 e1                                      mov r1, r0
00586c60  09 00 a0 e1                                      mov r0, sb
00586c64  ce 1f f6 eb                                      bl #0x30eba4
00586c68  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00586c6c  cc 1f f6 eb                                      bl #0x30eba4
00586c70  07 00 88 e7                                      str r0, [r8, r7]
00586c74  04 30 9d e5                                      ldr r3, [sp, #4]
00586c78  08 30 86 e5                                      str r3, [r6, #8]
00586c7c  00 20 9d e5                                      ldr r2, [sp]
00586c80  04 20 86 e5                                      str r2, [r6, #4]
00586c84  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00586c88  a8 60 94 e5                                      ldr r6, [r4, #0xa8]
00586c8c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00586c90  95 36 26 e0                                      mla r6, r5, r6, r3
00586c94  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00586c98  10 80 96 e5                                      ldr r8, [r6, #0x10]
00586c9c  14 70 96 e5                                      ldr r7, [r6, #0x14]
00586ca0  0a 00 a0 e1                                      mov r0, sl
00586ca4  30 20 f6 eb                                      bl #0x30ed6c
00586ca8  70 10 94 e5                                      ldr r1, [r4, #0x70]
00586cac  00 90 a0 e1                                      mov sb, r0
00586cb0  08 00 a0 e1                                      mov r0, r8
00586cb4  2c 20 f6 eb                                      bl #0x30ed6c
00586cb8  00 10 a0 e1                                      mov r1, r0
00586cbc  09 00 a0 e1                                      mov r0, sb
00586cc0  b7 1f f6 eb                                      bl #0x30eba4
00586cc4  80 10 94 e5                                      ldr r1, [r4, #0x80]
00586cc8  00 90 a0 e1                                      mov sb, r0
00586ccc  07 00 a0 e1                                      mov r0, r7
00586cd0  25 20 f6 eb                                      bl #0x30ed6c
00586cd4  00 10 a0 e1                                      mov r1, r0
00586cd8  09 00 a0 e1                                      mov r0, sb
00586cdc  b0 1f f6 eb                                      bl #0x30eba4
00586ce0  90 10 94 e5                                      ldr r1, [r4, #0x90]
00586ce4  ae 1f f6 eb                                      bl #0x30eba4
00586ce8  64 10 94 e5                                      ldr r1, [r4, #0x64]
00586cec  00 90 a0 e1                                      mov sb, r0
00586cf0  0a 00 a0 e1                                      mov r0, sl
00586cf4  1c 20 f6 eb                                      bl #0x30ed6c
00586cf8  74 10 94 e5                                      ldr r1, [r4, #0x74]
00586cfc  00 b0 a0 e1                                      mov fp, r0
00586d00  08 00 a0 e1                                      mov r0, r8
00586d04  18 20 f6 eb                                      bl #0x30ed6c
00586d08  00 10 a0 e1                                      mov r1, r0
00586d0c  0b 00 a0 e1                                      mov r0, fp
00586d10  a3 1f f6 eb                                      bl #0x30eba4
00586d14  84 10 94 e5                                      ldr r1, [r4, #0x84]
00586d18  00 b0 a0 e1                                      mov fp, r0
00586d1c  07 00 a0 e1                                      mov r0, r7
00586d20  11 20 f6 eb                                      bl #0x30ed6c
00586d24  00 10 a0 e1                                      mov r1, r0
00586d28  0b 00 a0 e1                                      mov r0, fp
00586d2c  9c 1f f6 eb                                      bl #0x30eba4
00586d30  94 10 94 e5                                      ldr r1, [r4, #0x94]
00586d34  9a 1f f6 eb                                      bl #0x30eba4
00586d38  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00586d3c  00 b0 a0 e1                                      mov fp, r0
00586d40  0a 00 a0 e1                                      mov r0, sl
00586d44  08 20 f6 eb                                      bl #0x30ed6c
00586d48  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
00586d4c  00 a0 a0 e1                                      mov sl, r0
00586d50  08 00 a0 e1                                      mov r0, r8
00586d54  04 20 f6 eb                                      bl #0x30ed6c
00586d58  00 10 a0 e1                                      mov r1, r0
00586d5c  0a 00 a0 e1                                      mov r0, sl
00586d60  8f 1f f6 eb                                      bl #0x30eba4
00586d64  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00586d68  00 80 a0 e1                                      mov r8, r0
00586d6c  07 00 a0 e1                                      mov r0, r7
00586d70  fd 1f f6 eb                                      bl #0x30ed6c
00586d74  00 10 a0 e1                                      mov r1, r0
00586d78  08 00 a0 e1                                      mov r0, r8
00586d7c  88 1f f6 eb                                      bl #0x30eba4
00586d80  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00586d84  86 1f f6 eb                                      bl #0x30eba4
00586d88  0c 00 86 e5                                      str r0, [r6, #0xc]
00586d8c  10 90 86 e5                                      str sb, [r6, #0x10]
00586d90  14 b0 86 e5                                      str fp, [r6, #0x14]
00586d94  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
00586d98  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00586d9c  60 10 94 e5                                      ldr r1, [r4, #0x60]
00586da0  95 32 25 e0                                      mla r5, r5, r2, r3
00586da4  18 80 95 e5                                      ldr r8, [r5, #0x18]
00586da8  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
00586dac  20 60 95 e5                                      ldr r6, [r5, #0x20]
00586db0  08 00 a0 e1                                      mov r0, r8
00586db4  ec 1f f6 eb                                      bl #0x30ed6c
00586db8  70 10 94 e5                                      ldr r1, [r4, #0x70]
00586dbc  00 a0 a0 e1                                      mov sl, r0
00586dc0  07 00 a0 e1                                      mov r0, r7
00586dc4  e8 1f f6 eb                                      bl #0x30ed6c
00586dc8  00 10 a0 e1                                      mov r1, r0
00586dcc  0a 00 a0 e1                                      mov r0, sl
00586dd0  73 1f f6 eb                                      bl #0x30eba4
00586dd4  80 10 94 e5                                      ldr r1, [r4, #0x80]
00586dd8  00 a0 a0 e1                                      mov sl, r0
00586ddc  06 00 a0 e1                                      mov r0, r6
00586de0  e1 1f f6 eb                                      bl #0x30ed6c
00586de4  00 10 a0 e1                                      mov r1, r0
00586de8  0a 00 a0 e1                                      mov r0, sl
00586dec  6c 1f f6 eb                                      bl #0x30eba4
00586df0  90 10 94 e5                                      ldr r1, [r4, #0x90]
00586df4  6a 1f f6 eb                                      bl #0x30eba4
00586df8  64 10 94 e5                                      ldr r1, [r4, #0x64]
00586dfc  00 a0 a0 e1                                      mov sl, r0
00586e00  08 00 a0 e1                                      mov r0, r8
00586e04  d8 1f f6 eb                                      bl #0x30ed6c
00586e08  74 10 94 e5                                      ldr r1, [r4, #0x74]
00586e0c  00 90 a0 e1                                      mov sb, r0
00586e10  07 00 a0 e1                                      mov r0, r7
00586e14  d4 1f f6 eb                                      bl #0x30ed6c
00586e18  00 10 a0 e1                                      mov r1, r0
00586e1c  09 00 a0 e1                                      mov r0, sb
00586e20  5f 1f f6 eb                                      bl #0x30eba4
00586e24  84 10 94 e5                                      ldr r1, [r4, #0x84]
00586e28  00 90 a0 e1                                      mov sb, r0
00586e2c  06 00 a0 e1                                      mov r0, r6
00586e30  cd 1f f6 eb                                      bl #0x30ed6c
00586e34  00 10 a0 e1                                      mov r1, r0
00586e38  09 00 a0 e1                                      mov r0, sb
00586e3c  58 1f f6 eb                                      bl #0x30eba4
00586e40  94 10 94 e5                                      ldr r1, [r4, #0x94]
00586e44  56 1f f6 eb                                      bl #0x30eba4
00586e48  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00586e4c  00 90 a0 e1                                      mov sb, r0
00586e50  08 00 a0 e1                                      mov r0, r8
00586e54  c4 1f f6 eb                                      bl #0x30ed6c
00586e58  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
00586e5c  00 80 a0 e1                                      mov r8, r0
00586e60  07 00 a0 e1                                      mov r0, r7
00586e64  c0 1f f6 eb                                      bl #0x30ed6c
00586e68  00 10 a0 e1                                      mov r1, r0
00586e6c  08 00 a0 e1                                      mov r0, r8
00586e70  4b 1f f6 eb                                      bl #0x30eba4
00586e74  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00586e78  00 70 a0 e1                                      mov r7, r0
00586e7c  06 00 a0 e1                                      mov r0, r6
00586e80  b9 1f f6 eb                                      bl #0x30ed6c
00586e84  00 10 a0 e1                                      mov r1, r0
00586e88  07 00 a0 e1                                      mov r0, r7
00586e8c  44 1f f6 eb                                      bl #0x30eba4
00586e90  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00586e94  42 1f f6 eb                                      bl #0x30eba4
00586e98  18 00 85 e5                                      str r0, [r5, #0x18]
00586e9c  20 90 85 e5                                      str sb, [r5, #0x20]
00586ea0  1c a0 85 e5                                      str sl, [r5, #0x1c]
00586ea4  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00586ea8  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
00586eac  01 30 83 e2                                      add r3, r3, #1
00586eb0  00 00 53 e1                                      cmp r3, r0
00586eb4  00 00 a0 13                                      movne r0, #0
00586eb8  01 00 a0 03                                      moveq r0, #1
00586ebc  a8 30 84 e5                                      str r3, [r4, #0xa8]
00586ec0  0c d0 8d e2                                      add sp, sp, #0xc
00586ec4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00586ec8, declared_size=564, range_size=564, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector11TestWithBoxERSt6vectorINS_4core10triangle3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CTriangleSelector::TestWithBox(std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&) const
; decoder-mode: arm
00586ec8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00586ecc  00 30 91 e5                                      ldr r3, [r1]
00586ed0  04 20 91 e5                                      ldr r2, [r1, #4]
00586ed4  1c d0 4d e2                                      sub sp, sp, #0x1c
00586ed8  0c 00 8d e5                                      str r0, [sp, #0xc]
00586edc  02 20 63 e0                                      rsb r2, r3, r2
00586ee0  42 21 a0 e1                                      asr r2, r2, #2
00586ee4  01 a0 a0 e1                                      mov sl, r1
00586ee8  82 11 a0 e1                                      lsl r1, r2, #3
00586eec  44 70 90 e5                                      ldr r7, [r0, #0x44]
00586ef0  50 80 90 e5                                      ldr r8, [r0, #0x50]
00586ef4  01 10 62 e0                                      rsb r1, r2, r1
00586ef8  48 00 90 e5                                      ldr r0, [r0, #0x48]
00586efc  01 13 81 e0                                      add r1, r1, r1, lsl #6
00586f00  04 00 8d e5                                      str r0, [sp, #4]
00586f04  81 11 82 e0                                      add r1, r2, r1, lsl #3
00586f08  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00586f0c  81 97 a0 e1                                      lsl sb, r1, #0xf
00586f10  09 10 61 e0                                      rsb r1, r1, sb
00586f14  54 00 90 e5                                      ldr r0, [r0, #0x54]
00586f18  81 91 82 e0                                      add sb, r2, r1, lsl #3
00586f1c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00586f20  08 00 8d e5                                      str r0, [sp, #8]
00586f24  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00586f28  4c 10 91 e5                                      ldr r1, [r1, #0x4c]
00586f2c  00 00 59 e3                                      cmp sb, #0
00586f30  10 10 8d e5                                      str r1, [sp, #0x10]
00586f34  58 20 92 e5                                      ldr r2, [r2, #0x58]
00586f38  14 20 8d e5                                      str r2, [sp, #0x14]
00586f3c  66 00 00 da                                      ble #0x5870dc
00586f40  00 40 a0 e3                                      mov r4, #0
00586f44  04 50 a0 e1                                      mov r5, r4
00586f48  03 60 a0 e1                                      mov r6, r3
00586f4c  04 b0 96 e7                                      ldr fp, [r6, r4]
00586f50  07 10 a0 e1                                      mov r1, r7
00586f54  04 60 86 e0                                      add r6, r6, r4
00586f58  0b 00 a0 e1                                      mov r0, fp
00586f5c  ea 1d f6 eb                                      bl #0x30e70c
00586f60  00 00 50 e3                                      cmp r0, #0
00586f64  09 00 00 0a                                      beq #0x586f90
00586f68  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00586f6c  07 10 a0 e1                                      mov r1, r7
00586f70  e5 1d f6 eb                                      bl #0x30e70c
00586f74  00 00 50 e3                                      cmp r0, #0
00586f78  04 00 00 0a                                      beq #0x586f90
00586f7c  18 00 96 e5                                      ldr r0, [r6, #0x18]
00586f80  07 10 a0 e1                                      mov r1, r7
00586f84  e0 1d f6 eb                                      bl #0x30e70c
00586f88  00 00 50 e3                                      cmp r0, #0
00586f8c  2d 00 00 1a                                      bne #0x587048
00586f90  0b 10 a0 e1                                      mov r1, fp
00586f94  08 00 a0 e1                                      mov r0, r8
00586f98  db 1d f6 eb                                      bl #0x30e70c
00586f9c  00 00 50 e3                                      cmp r0, #0
00586fa0  09 00 00 0a                                      beq #0x586fcc
00586fa4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00586fa8  08 10 a0 e1                                      mov r1, r8
00586fac  d1 1c f6 eb                                      bl #0x30e2f8
00586fb0  00 00 50 e3                                      cmp r0, #0
00586fb4  04 00 00 0a                                      beq #0x586fcc
00586fb8  18 00 96 e5                                      ldr r0, [r6, #0x18]
00586fbc  08 10 a0 e1                                      mov r1, r8
00586fc0  cc 1c f6 eb                                      bl #0x30e2f8
00586fc4  00 00 50 e3                                      cmp r0, #0
00586fc8  1e 00 00 1a                                      bne #0x587048
00586fcc  04 b0 96 e5                                      ldr fp, [r6, #4]
00586fd0  04 10 9d e5                                      ldr r1, [sp, #4]
00586fd4  0b 00 a0 e1                                      mov r0, fp
00586fd8  cb 1d f6 eb                                      bl #0x30e70c
00586fdc  00 00 50 e3                                      cmp r0, #0
00586fe0  09 00 00 0a                                      beq #0x58700c
00586fe4  10 00 96 e5                                      ldr r0, [r6, #0x10]
00586fe8  04 10 9d e5                                      ldr r1, [sp, #4]
00586fec  c6 1d f6 eb                                      bl #0x30e70c
00586ff0  00 00 50 e3                                      cmp r0, #0
00586ff4  04 00 00 0a                                      beq #0x58700c
00586ff8  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00586ffc  04 10 9d e5                                      ldr r1, [sp, #4]
00587000  c1 1d f6 eb                                      bl #0x30e70c
00587004  00 00 50 e3                                      cmp r0, #0
00587008  0e 00 00 1a                                      bne #0x587048
0058700c  0b 10 a0 e1                                      mov r1, fp
00587010  08 00 9d e5                                      ldr r0, [sp, #8]
00587014  bc 1d f6 eb                                      bl #0x30e70c
00587018  00 00 50 e3                                      cmp r0, #0
0058701c  0f 00 00 0a                                      beq #0x587060
00587020  10 00 96 e5                                      ldr r0, [r6, #0x10]
00587024  08 10 9d e5                                      ldr r1, [sp, #8]
00587028  b2 1c f6 eb                                      bl #0x30e2f8
0058702c  00 00 50 e3                                      cmp r0, #0
00587030  0a 00 00 0a                                      beq #0x587060
00587034  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00587038  08 10 9d e5                                      ldr r1, [sp, #8]
0058703c  ad 1c f6 eb                                      bl #0x30e2f8
00587040  00 00 50 e3                                      cmp r0, #0
00587044  05 00 00 0a                                      beq #0x587060
00587048  01 50 85 e2                                      add r5, r5, #1
0058704c  09 00 55 e1                                      cmp r5, sb
00587050  24 40 84 e2                                      add r4, r4, #0x24
00587054  20 00 00 0a                                      beq #0x5870dc
00587058  00 60 9a e5                                      ldr r6, [sl]
0058705c  ba ff ff ea                                      b #0x586f4c
00587060  08 b0 96 e5                                      ldr fp, [r6, #8]
00587064  10 10 9d e5                                      ldr r1, [sp, #0x10]
00587068  0b 00 a0 e1                                      mov r0, fp
0058706c  a6 1d f6 eb                                      bl #0x30e70c
00587070  00 00 50 e3                                      cmp r0, #0
00587074  04 00 00 0a                                      beq #0x58708c
00587078  14 00 96 e5                                      ldr r0, [r6, #0x14]
0058707c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00587080  a1 1d f6 eb                                      bl #0x30e70c
00587084  00 00 50 e3                                      cmp r0, #0
00587088  15 00 00 1a                                      bne #0x5870e4
0058708c  0b 10 a0 e1                                      mov r1, fp
00587090  14 00 9d e5                                      ldr r0, [sp, #0x14]
00587094  9c 1d f6 eb                                      bl #0x30e70c
00587098  00 00 50 e3                                      cmp r0, #0
0058709c  09 00 00 0a                                      beq #0x5870c8
005870a0  14 00 96 e5                                      ldr r0, [r6, #0x14]
005870a4  14 10 9d e5                                      ldr r1, [sp, #0x14]
005870a8  92 1c f6 eb                                      bl #0x30e2f8
005870ac  00 00 50 e3                                      cmp r0, #0
005870b0  04 00 00 0a                                      beq #0x5870c8
005870b4  20 00 96 e5                                      ldr r0, [r6, #0x20]
005870b8  14 10 9d e5                                      ldr r1, [sp, #0x14]
005870bc  8d 1c f6 eb                                      bl #0x30e2f8
005870c0  00 00 50 e3                                      cmp r0, #0
005870c4  df ff ff 1a                                      bne #0x587048
005870c8  06 10 a0 e1                                      mov r1, r6
005870cc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005870d0  7d fe ff eb                                      bl #0x586acc
005870d4  00 00 50 e3                                      cmp r0, #0
005870d8  da ff ff 0a                                      beq #0x587048
005870dc  1c d0 8d e2                                      add sp, sp, #0x1c
005870e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005870e4  20 00 96 e5                                      ldr r0, [r6, #0x20]
005870e8  10 10 9d e5                                      ldr r1, [sp, #0x10]
005870ec  86 1d f6 eb                                      bl #0x30e70c
005870f0  00 00 50 e3                                      cmp r0, #0
005870f4  d3 ff ff 1a                                      bne #0x587048
005870f8  e3 ff ff ea                                      b #0x58708c

; FUNCTION 0x005871c8, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector12TestWithLineERSt6vectorINS_4core10triangle3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CTriangleSelector::TestWithLine(std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >&) const
; decoder-mode: arm
005871c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005871cc  00 70 91 e5                                      ldr r7, [r1]
005871d0  04 30 91 e5                                      ldr r3, [r1, #4]
005871d4  2c d0 4d e2                                      sub sp, sp, #0x2c
005871d8  01 a0 a0 e1                                      mov sl, r1
005871dc  03 30 67 e0                                      rsb r3, r7, r3
005871e0  43 31 a0 e1                                      asr r3, r3, #2
005871e4  00 80 a0 e1                                      mov r8, r0
005871e8  83 21 a0 e1                                      lsl r2, r3, #3
005871ec  02 20 63 e0                                      rsb r2, r3, r2
005871f0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005871f4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005871f8  82 97 a0 e1                                      lsl sb, r2, #0xf
005871fc  09 20 62 e0                                      rsb r2, r2, sb
00587200  82 91 83 e0                                      add sb, r3, r2, lsl #3
00587204  00 00 59 e3                                      cmp sb, #0
00587208  23 00 00 da                                      ble #0x58729c
0058720c  38 30 80 e2                                      add r3, r0, #0x38
00587210  00 40 a0 e3                                      mov r4, #0
00587214  10 30 8d e5                                      str r3, [sp, #0x10]
00587218  44 c0 80 e2                                      add ip, r0, #0x44
0058721c  1c 30 8d e2                                      add r3, sp, #0x1c
00587220  00 50 a0 e3                                      mov r5, #0
00587224  1c b0 80 e2                                      add fp, r0, #0x1c
00587228  0c c0 8d e5                                      str ip, [sp, #0xc]
0058722c  04 60 a0 e1                                      mov r6, r4
00587230  14 30 8d e5                                      str r3, [sp, #0x14]
00587234  03 00 00 ea                                      b #0x587248
00587238  09 00 56 e1                                      cmp r6, sb
0058723c  24 40 84 e2                                      add r4, r4, #0x24
00587240  15 00 00 0a                                      beq #0x58729c
00587244  00 70 9a e5                                      ldr r7, [sl]
00587248  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0058724c  34 20 98 e5                                      ldr r2, [r8, #0x34]
00587250  04 70 87 e0                                      add r7, r7, r4
00587254  00 c0 8d e5                                      str ip, [sp]
00587258  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0058725c  0b 10 a0 e1                                      mov r1, fp
00587260  10 30 9d e5                                      ldr r3, [sp, #0x10]
00587264  07 00 a0 e1                                      mov r0, r7
00587268  1c 50 8d e5                                      str r5, [sp, #0x1c]
0058726c  20 50 8d e5                                      str r5, [sp, #0x20]
00587270  24 50 8d e5                                      str r5, [sp, #0x24]
00587274  04 c0 8d e5                                      str ip, [sp, #4]
00587278  c2 fb ff eb                                      bl #0x586188
0058727c  00 00 50 e3                                      cmp r0, #0
00587280  01 60 86 e2                                      add r6, r6, #1
00587284  eb ff ff 0a                                      beq #0x587238
00587288  07 10 a0 e1                                      mov r1, r7
0058728c  08 00 a0 e1                                      mov r0, r8
00587290  0d fe ff eb                                      bl #0x586acc
00587294  00 00 50 e3                                      cmp r0, #0
00587298  e6 ff ff 0a                                      beq #0x587238
0058729c  2c d0 8d e2                                      add sp, sp, #0x2c
005872a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00587604, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector5SetupERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::CTriangleSelector::Setup(glitch::core::aabbox3d<float> const&) const
; decoder-mode: arm
00587604  30 40 2d e9                                      push {r4, r5, lr}
00587608  00 20 91 e5                                      ldr r2, [r1]
0058760c  08 30 90 e5                                      ldr r3, [r0, #8]
00587610  4c d0 4d e2                                      sub sp, sp, #0x4c
00587614  44 20 80 e5                                      str r2, [r0, #0x44]
00587618  04 20 91 e5                                      ldr r2, [r1, #4]
0058761c  00 00 53 e3                                      cmp r3, #0
00587620  00 40 a0 e1                                      mov r4, r0
00587624  48 20 80 e5                                      str r2, [r0, #0x48]
00587628  08 20 91 e5                                      ldr r2, [r1, #8]
0058762c  4c 20 80 e5                                      str r2, [r0, #0x4c]
00587630  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00587634  50 20 80 e5                                      str r2, [r0, #0x50]
00587638  10 20 91 e5                                      ldr r2, [r1, #0x10]
0058763c  54 20 80 e5                                      str r2, [r0, #0x54]
00587640  14 20 91 e5                                      ldr r2, [r1, #0x14]
00587644  58 20 80 e5                                      str r2, [r0, #0x58]
00587648  0f 00 00 0a                                      beq #0x58768c
0058764c  18 20 d0 e5                                      ldrb r2, [r0, #0x18]
00587650  00 00 52 e3                                      cmp r2, #0
00587654  0c 00 00 1a                                      bne #0x58768c
00587658  03 00 a0 e1                                      mov r0, r3
0058765c  00 30 93 e5                                      ldr r3, [r3]
00587660  0f e0 a0 e1                                      mov lr, pc
00587664  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00587668  04 50 8d e2                                      add r5, sp, #4
0058766c  00 10 a0 e1                                      mov r1, r0
00587670  05 00 a0 e1                                      mov r0, r5
00587674  e6 fc ff eb                                      bl #0x586a14
00587678  05 00 a0 e1                                      mov r0, r5
0058767c  1d eb ff eb                                      bl #0x5822f8
00587680  05 00 a0 e1                                      mov r0, r5
00587684  44 10 84 e2                                      add r1, r4, #0x44
00587688  42 ff ff eb                                      bl #0x587398
0058768c  4c d0 8d e2                                      add sp, sp, #0x4c
00587690  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00588984, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector5SetupERKNS_4core6line3dIfEE
; demangled: glitch::scene::CTriangleSelector::Setup(glitch::core::line3d<float> const&) const
; decoder-mode: arm
00588984  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00588988  00 a0 91 e5                                      ldr sl, [r1]
0058898c  08 30 90 e5                                      ldr r3, [r0, #8]
00588990  54 d0 4d e2                                      sub sp, sp, #0x54
00588994  1c a0 80 e5                                      str sl, [r0, #0x1c]
00588998  04 70 91 e5                                      ldr r7, [r1, #4]
0058899c  00 00 53 e3                                      cmp r3, #0
005889a0  00 40 a0 e1                                      mov r4, r0
005889a4  20 70 80 e5                                      str r7, [r0, #0x20]
005889a8  08 50 91 e5                                      ldr r5, [r1, #8]
005889ac  24 50 80 e5                                      str r5, [r0, #0x24]
005889b0  0c 80 91 e5                                      ldr r8, [r1, #0xc]
005889b4  28 80 80 e5                                      str r8, [r0, #0x28]
005889b8  10 60 91 e5                                      ldr r6, [r1, #0x10]
005889bc  2c 60 80 e5                                      str r6, [r0, #0x2c]
005889c0  14 90 91 e5                                      ldr sb, [r1, #0x14]
005889c4  30 90 80 e5                                      str sb, [r0, #0x30]
005889c8  02 00 00 0a                                      beq #0x5889d8
005889cc  18 20 d0 e5                                      ldrb r2, [r0, #0x18]
005889d0  00 00 52 e3                                      cmp r2, #0
005889d4  5f 00 00 0a                                      beq #0x588b58
005889d8  08 10 a0 e1                                      mov r1, r8
005889dc  0a 00 a0 e1                                      mov r0, sl
005889e0  71 16 f6 eb                                      bl #0x30e3ac
005889e4  06 10 a0 e1                                      mov r1, r6
005889e8  00 80 a0 e1                                      mov r8, r0
005889ec  07 00 a0 e1                                      mov r0, r7
005889f0  6d 16 f6 eb                                      bl #0x30e3ac
005889f4  09 10 a0 e1                                      mov r1, sb
005889f8  00 70 a0 e1                                      mov r7, r0
005889fc  05 00 a0 e1                                      mov r0, r5
00588a00  69 16 f6 eb                                      bl #0x30e3ac
00588a04  08 10 a0 e1                                      mov r1, r8
00588a08  00 60 a0 e1                                      mov r6, r0
00588a0c  08 00 a0 e1                                      mov r0, r8
00588a10  d5 18 f6 eb                                      bl #0x30ed6c
00588a14  07 10 a0 e1                                      mov r1, r7
00588a18  00 50 a0 e1                                      mov r5, r0
00588a1c  07 00 a0 e1                                      mov r0, r7
00588a20  d1 18 f6 eb                                      bl #0x30ed6c
00588a24  00 10 a0 e1                                      mov r1, r0
00588a28  05 00 a0 e1                                      mov r0, r5
00588a2c  5c 18 f6 eb                                      bl #0x30eba4
00588a30  06 10 a0 e1                                      mov r1, r6
00588a34  00 50 a0 e1                                      mov r5, r0
00588a38  06 00 a0 e1                                      mov r0, r6
00588a3c  ca 18 f6 eb                                      bl #0x30ed6c
00588a40  00 10 a0 e1                                      mov r1, r0
00588a44  05 00 a0 e1                                      mov r0, r5
00588a48  55 18 f6 eb                                      bl #0x30eba4
00588a4c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00588a50  34 00 84 e5                                      str r0, [r4, #0x34]
00588a54  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00588a58  53 16 f6 eb                                      bl #0x30e3ac
00588a5c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00588a60  00 60 a0 e1                                      mov r6, r0
00588a64  30 00 94 e5                                      ldr r0, [r4, #0x30]
00588a68  4f 16 f6 eb                                      bl #0x30e3ac
00588a6c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00588a70  00 50 a0 e1                                      mov r5, r0
00588a74  28 00 94 e5                                      ldr r0, [r4, #0x28]
00588a78  4b 16 f6 eb                                      bl #0x30e3ac
00588a7c  44 00 8d e5                                      str r0, [sp, #0x44]
00588a80  44 00 8d e2                                      add r0, sp, #0x44
00588a84  48 60 8d e5                                      str r6, [sp, #0x48]
00588a88  4c 50 8d e5                                      str r5, [sp, #0x4c]
00588a8c  93 57 f7 eb                                      bl #0x35e8e0
00588a90  00 20 90 e5                                      ldr r2, [r0]
00588a94  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00588a98  28 70 94 e5                                      ldr r7, [r4, #0x28]
00588a9c  38 20 84 e5                                      str r2, [r4, #0x38]
00588aa0  04 10 90 e5                                      ldr r1, [r0, #4]
00588aa4  24 20 94 e5                                      ldr r2, [r4, #0x24]
00588aa8  20 80 94 e5                                      ldr r8, [r4, #0x20]
00588aac  3c 10 84 e5                                      str r1, [r4, #0x3c]
00588ab0  08 10 90 e5                                      ldr r1, [r0, #8]
00588ab4  4c 20 84 e5                                      str r2, [r4, #0x4c]
00588ab8  50 30 84 e5                                      str r3, [r4, #0x50]
00588abc  58 20 84 e5                                      str r2, [r4, #0x58]
00588ac0  44 30 84 e5                                      str r3, [r4, #0x44]
00588ac4  03 00 a0 e1                                      mov r0, r3
00588ac8  40 10 84 e5                                      str r1, [r4, #0x40]
00588acc  54 80 84 e5                                      str r8, [r4, #0x54]
00588ad0  07 10 a0 e1                                      mov r1, r7
00588ad4  48 80 84 e5                                      str r8, [r4, #0x48]
00588ad8  0b 17 f6 eb                                      bl #0x30e70c
00588adc  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
00588ae0  00 00 50 e3                                      cmp r0, #0
00588ae4  50 70 84 15                                      strne r7, [r4, #0x50]
00588ae8  06 10 a0 e1                                      mov r1, r6
00588aec  08 00 a0 e1                                      mov r0, r8
00588af0  05 17 f6 eb                                      bl #0x30e70c
00588af4  30 50 94 e5                                      ldr r5, [r4, #0x30]
00588af8  00 00 50 e3                                      cmp r0, #0
00588afc  58 10 94 e5                                      ldr r1, [r4, #0x58]
00588b00  54 60 84 15                                      strne r6, [r4, #0x54]
00588b04  05 00 a0 e1                                      mov r0, r5
00588b08  fa 15 f6 eb                                      bl #0x30e2f8
00588b0c  00 00 50 e3                                      cmp r0, #0
00588b10  44 10 94 e5                                      ldr r1, [r4, #0x44]
00588b14  58 50 84 15                                      strne r5, [r4, #0x58]
00588b18  07 00 a0 e1                                      mov r0, r7
00588b1c  fa 16 f6 eb                                      bl #0x30e70c
00588b20  00 00 50 e3                                      cmp r0, #0
00588b24  48 10 94 e5                                      ldr r1, [r4, #0x48]
00588b28  44 70 84 15                                      strne r7, [r4, #0x44]
00588b2c  06 00 a0 e1                                      mov r0, r6
00588b30  f5 16 f6 eb                                      bl #0x30e70c
00588b34  00 00 50 e3                                      cmp r0, #0
00588b38  48 60 84 15                                      strne r6, [r4, #0x48]
00588b3c  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00588b40  05 00 a0 e1                                      mov r0, r5
00588b44  f0 16 f6 eb                                      bl #0x30e70c
00588b48  00 00 50 e3                                      cmp r0, #0
00588b4c  4c 50 84 15                                      strne r5, [r4, #0x4c]
00588b50  54 d0 8d e2                                      add sp, sp, #0x54
00588b54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00588b58  03 00 a0 e1                                      mov r0, r3
00588b5c  00 30 93 e5                                      ldr r3, [r3]
00588b60  0f e0 a0 e1                                      mov lr, pc
00588b64  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00588b68  00 10 a0 e1                                      mov r1, r0
00588b6c  0d 00 a0 e1                                      mov r0, sp
00588b70  a7 f7 ff eb                                      bl #0x586a14
00588b74  0d 00 a0 e1                                      mov r0, sp
00588b78  de e5 ff eb                                      bl #0x5822f8
00588b7c  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
00588b80  00 10 9d e5                                      ldr r1, [sp]
00588b84  20 60 94 e5                                      ldr r6, [r4, #0x20]
00588b88  08 00 a0 e1                                      mov r0, r8
00588b8c  76 18 f6 eb                                      bl #0x30ed6c
00588b90  10 10 9d e5                                      ldr r1, [sp, #0x10]
00588b94  00 70 a0 e1                                      mov r7, r0
00588b98  06 00 a0 e1                                      mov r0, r6
00588b9c  72 18 f6 eb                                      bl #0x30ed6c
00588ba0  00 10 a0 e1                                      mov r1, r0
00588ba4  07 00 a0 e1                                      mov r0, r7
00588ba8  fd 17 f6 eb                                      bl #0x30eba4
00588bac  24 50 94 e5                                      ldr r5, [r4, #0x24]
00588bb0  00 70 a0 e1                                      mov r7, r0
00588bb4  20 10 9d e5                                      ldr r1, [sp, #0x20]
00588bb8  05 00 a0 e1                                      mov r0, r5
00588bbc  6a 18 f6 eb                                      bl #0x30ed6c
00588bc0  00 10 a0 e1                                      mov r1, r0
00588bc4  07 00 a0 e1                                      mov r0, r7
00588bc8  f5 17 f6 eb                                      bl #0x30eba4
00588bcc  30 10 9d e5                                      ldr r1, [sp, #0x30]
00588bd0  f3 17 f6 eb                                      bl #0x30eba4
00588bd4  04 10 9d e5                                      ldr r1, [sp, #4]
00588bd8  00 a0 a0 e1                                      mov sl, r0
00588bdc  08 00 a0 e1                                      mov r0, r8
00588be0  61 18 f6 eb                                      bl #0x30ed6c
00588be4  14 10 9d e5                                      ldr r1, [sp, #0x14]
00588be8  00 70 a0 e1                                      mov r7, r0
00588bec  06 00 a0 e1                                      mov r0, r6
00588bf0  5d 18 f6 eb                                      bl #0x30ed6c
00588bf4  00 10 a0 e1                                      mov r1, r0
00588bf8  07 00 a0 e1                                      mov r0, r7
00588bfc  e8 17 f6 eb                                      bl #0x30eba4
00588c00  24 10 9d e5                                      ldr r1, [sp, #0x24]
00588c04  00 70 a0 e1                                      mov r7, r0
00588c08  05 00 a0 e1                                      mov r0, r5
00588c0c  56 18 f6 eb                                      bl #0x30ed6c
00588c10  00 10 a0 e1                                      mov r1, r0
00588c14  07 00 a0 e1                                      mov r0, r7
00588c18  e1 17 f6 eb                                      bl #0x30eba4
00588c1c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00588c20  df 17 f6 eb                                      bl #0x30eba4
00588c24  08 10 9d e5                                      ldr r1, [sp, #8]
00588c28  00 70 a0 e1                                      mov r7, r0
00588c2c  08 00 a0 e1                                      mov r0, r8
00588c30  4d 18 f6 eb                                      bl #0x30ed6c
00588c34  18 10 9d e5                                      ldr r1, [sp, #0x18]
00588c38  00 80 a0 e1                                      mov r8, r0
00588c3c  06 00 a0 e1                                      mov r0, r6
00588c40  49 18 f6 eb                                      bl #0x30ed6c
00588c44  00 10 a0 e1                                      mov r1, r0
00588c48  08 00 a0 e1                                      mov r0, r8
00588c4c  d4 17 f6 eb                                      bl #0x30eba4
00588c50  28 10 9d e5                                      ldr r1, [sp, #0x28]
00588c54  00 60 a0 e1                                      mov r6, r0
00588c58  05 00 a0 e1                                      mov r0, r5
00588c5c  42 18 f6 eb                                      bl #0x30ed6c
00588c60  00 10 a0 e1                                      mov r1, r0
00588c64  06 00 a0 e1                                      mov r0, r6
00588c68  cd 17 f6 eb                                      bl #0x30eba4
00588c6c  38 10 9d e5                                      ldr r1, [sp, #0x38]
00588c70  cb 17 f6 eb                                      bl #0x30eba4
00588c74  1c a0 84 e5                                      str sl, [r4, #0x1c]
00588c78  28 b0 94 e5                                      ldr fp, [r4, #0x28]
00588c7c  24 00 84 e5                                      str r0, [r4, #0x24]
00588c80  20 70 84 e5                                      str r7, [r4, #0x20]
00588c84  00 10 9d e5                                      ldr r1, [sp]
00588c88  00 50 a0 e1                                      mov r5, r0
00588c8c  0b 00 a0 e1                                      mov r0, fp
00588c90  35 18 f6 eb                                      bl #0x30ed6c
00588c94  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
00588c98  00 60 a0 e1                                      mov r6, r0
00588c9c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00588ca0  09 00 a0 e1                                      mov r0, sb
00588ca4  30 18 f6 eb                                      bl #0x30ed6c
00588ca8  00 10 a0 e1                                      mov r1, r0
00588cac  06 00 a0 e1                                      mov r0, r6
00588cb0  bb 17 f6 eb                                      bl #0x30eba4
00588cb4  20 10 9d e5                                      ldr r1, [sp, #0x20]
00588cb8  00 60 a0 e1                                      mov r6, r0
00588cbc  30 00 94 e5                                      ldr r0, [r4, #0x30]
00588cc0  29 18 f6 eb                                      bl #0x30ed6c
00588cc4  00 10 a0 e1                                      mov r1, r0
00588cc8  06 00 a0 e1                                      mov r0, r6
00588ccc  b4 17 f6 eb                                      bl #0x30eba4
00588cd0  30 10 9d e5                                      ldr r1, [sp, #0x30]
00588cd4  b2 17 f6 eb                                      bl #0x30eba4
00588cd8  04 10 9d e5                                      ldr r1, [sp, #4]
00588cdc  00 80 a0 e1                                      mov r8, r0
00588ce0  0b 00 a0 e1                                      mov r0, fp
00588ce4  20 18 f6 eb                                      bl #0x30ed6c
00588ce8  14 10 9d e5                                      ldr r1, [sp, #0x14]
00588cec  00 60 a0 e1                                      mov r6, r0
00588cf0  09 00 a0 e1                                      mov r0, sb
00588cf4  1c 18 f6 eb                                      bl #0x30ed6c
00588cf8  00 10 a0 e1                                      mov r1, r0
00588cfc  06 00 a0 e1                                      mov r0, r6
00588d00  a7 17 f6 eb                                      bl #0x30eba4
00588d04  24 10 9d e5                                      ldr r1, [sp, #0x24]
00588d08  00 60 a0 e1                                      mov r6, r0
00588d0c  30 00 94 e5                                      ldr r0, [r4, #0x30]
00588d10  15 18 f6 eb                                      bl #0x30ed6c
00588d14  00 10 a0 e1                                      mov r1, r0
00588d18  06 00 a0 e1                                      mov r0, r6
00588d1c  a0 17 f6 eb                                      bl #0x30eba4
00588d20  34 10 9d e5                                      ldr r1, [sp, #0x34]
00588d24  9e 17 f6 eb                                      bl #0x30eba4
00588d28  08 10 9d e5                                      ldr r1, [sp, #8]
00588d2c  00 60 a0 e1                                      mov r6, r0
00588d30  0b 00 a0 e1                                      mov r0, fp
00588d34  0c 18 f6 eb                                      bl #0x30ed6c
00588d38  18 10 9d e5                                      ldr r1, [sp, #0x18]
00588d3c  00 b0 a0 e1                                      mov fp, r0
00588d40  09 00 a0 e1                                      mov r0, sb
00588d44  08 18 f6 eb                                      bl #0x30ed6c
00588d48  00 10 a0 e1                                      mov r1, r0
00588d4c  0b 00 a0 e1                                      mov r0, fp
00588d50  93 17 f6 eb                                      bl #0x30eba4
00588d54  28 10 9d e5                                      ldr r1, [sp, #0x28]
00588d58  00 90 a0 e1                                      mov sb, r0
00588d5c  30 00 94 e5                                      ldr r0, [r4, #0x30]
00588d60  01 18 f6 eb                                      bl #0x30ed6c
00588d64  00 10 a0 e1                                      mov r1, r0
00588d68  09 00 a0 e1                                      mov r0, sb
00588d6c  8c 17 f6 eb                                      bl #0x30eba4
00588d70  38 10 9d e5                                      ldr r1, [sp, #0x38]
00588d74  8a 17 f6 eb                                      bl #0x30eba4
00588d78  28 80 84 e5                                      str r8, [r4, #0x28]
00588d7c  00 90 a0 e1                                      mov sb, r0
00588d80  2c 60 84 e5                                      str r6, [r4, #0x2c]
00588d84  30 00 84 e5                                      str r0, [r4, #0x30]
00588d88  12 ff ff ea                                      b #0x5889d8

; FUNCTION 0x00590f20, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector16getTriangleCountEv
; demangled: glitch::scene::CTriangleSelector::getTriangleCount() const
; decoder-mode: arm
00590f20  10 20 90 e5                                      ldr r2, [r0, #0x10]
00590f24  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00590f28  02 30 63 e0                                      rsb r3, r3, r2
00590f2c  43 31 a0 e1                                      asr r3, r3, #2
00590f30  83 21 a0 e1                                      lsl r2, r3, #3
00590f34  02 20 63 e0                                      rsb r2, r3, r2
00590f38  02 23 82 e0                                      add r2, r2, r2, lsl #6
00590f3c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00590f40  82 17 a0 e1                                      lsl r1, r2, #0xf
00590f44  01 20 62 e0                                      rsb r2, r2, r1
00590f48  82 01 83 e0                                      add r0, r3, r2, lsl #3
00590f4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00590f70, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorD1Ev
; demangled: glitch::scene::CTriangleSelector::~CTriangleSelector()
; decoder-mode: arm
00590f70  10 40 2d e9                                      push {r4, lr}
00590f74  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00590f78  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00590f7c  00 40 a0 e1                                      mov r4, r0
00590f80  03 30 8f e0                                      add r3, pc, r3
00590f84  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00590f88  02 20 93 e7                                      ldr r2, [r3, r2]
00590f8c  00 00 50 e3                                      cmp r0, #0
00590f90  08 20 82 e2                                      add r2, r2, #8
00590f94  00 20 84 e5                                      str r2, [r4]
00590f98  00 00 00 0a                                      beq #0x590fa0
00590f9c  2b fd f5 eb                                      bl #0x310450
00590fa0  04 00 a0 e1                                      mov r0, r4
00590fa4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00590fa8  10 3b 40 00 c0 05 00 00                          .byte 0x10, 0x3b, 0x40, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x005913fc, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorD0Ev
; demangled: glitch::scene::CTriangleSelector::~CTriangleSelector()
; decoder-mode: arm
005913fc  10 40 2d e9                                      push {r4, lr}
00591400  34 30 9f e5                                      ldr r3, [pc, #0x34]
00591404  34 20 9f e5                                      ldr r2, [pc, #0x34]
00591408  00 40 a0 e1                                      mov r4, r0
0059140c  03 30 8f e0                                      add r3, pc, r3
00591410  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00591414  02 20 93 e7                                      ldr r2, [r3, r2]
00591418  00 00 50 e3                                      cmp r0, #0
0059141c  08 20 82 e2                                      add r2, r2, #8
00591420  00 20 84 e5                                      str r2, [r4]
00591424  00 00 00 0a                                      beq #0x59142c
00591428  08 fc f5 eb                                      bl #0x310450
0059142c  04 00 a0 e1                                      mov r0, r4
00591430  9e f3 f5 eb                                      bl #0x30e2b0
00591434  04 00 a0 e1                                      mov r0, r4
00591438  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0059143c  84 36 40 00 c0 05 00 00                          .byte 0x84, 0x36, 0x40, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00591464, declared_size=1340, range_size=1340, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiPKNS2_8CMatrix4IfEE
; demangled: glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&, glitch::core::CMatrix4<float> const*) const
; decoder-mode: arm
00591464  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00591468  00 c0 a0 e1                                      mov ip, r0
0059146c  10 e0 90 e5                                      ldr lr, [r0, #0x10]
00591470  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00591474  74 d0 4d e2                                      sub sp, sp, #0x74
00591478  98 70 9d e5                                      ldr r7, [sp, #0x98]
0059147c  0e e0 60 e0                                      rsb lr, r0, lr
00591480  4e e1 a0 e1                                      asr lr, lr, #2
00591484  2c 40 8d e2                                      add r4, sp, #0x2c
00591488  8e 51 a0 e1                                      lsl r5, lr, #3
0059148c  05 50 6e e0                                      rsb r5, lr, r5
00591490  05 53 85 e0                                      add r5, r5, r5, lsl #6
00591494  18 10 8d e5                                      str r1, [sp, #0x18]
00591498  85 51 8e e0                                      add r5, lr, r5, lsl #3
0059149c  04 00 a0 e1                                      mov r0, r4
005914a0  85 67 a0 e1                                      lsl r6, r5, #0xf
005914a4  06 50 65 e0                                      rsb r5, r5, r6
005914a8  85 e1 8e e0                                      add lr, lr, r5, lsl #3
005914ac  0e 00 52 e1                                      cmp r2, lr
005914b0  0e 20 a0 a1                                      movge r2, lr
005914b4  1c 20 8d e5                                      str r2, [sp, #0x1c]
005914b8  00 10 a0 e3                                      mov r1, #0
005914bc  40 20 a0 e3                                      mov r2, #0x40
005914c0  24 30 8d e5                                      str r3, [sp, #0x24]
005914c4  00 c0 8d e5                                      str ip, [sp]
005914c8  e4 f3 f5 eb                                      bl #0x30e460
005914cc  fe 35 a0 e3                                      mov r3, #0x3f800000
005914d0  01 20 a0 e3                                      mov r2, #1
005914d4  00 00 57 e3                                      cmp r7, #0
005914d8  68 30 8d e5                                      str r3, [sp, #0x68]
005914dc  6c 20 cd e5                                      strb r2, [sp, #0x6c]
005914e0  2c 30 8d e5                                      str r3, [sp, #0x2c]
005914e4  40 30 8d e5                                      str r3, [sp, #0x40]
005914e8  54 30 8d e5                                      str r3, [sp, #0x54]
005914ec  00 c0 9d e5                                      ldr ip, [sp]
005914f0  04 00 00 0a                                      beq #0x591508
005914f4  07 10 a0 e1                                      mov r1, r7
005914f8  04 00 a0 e1                                      mov r0, r4
005914fc  41 20 a0 e3                                      mov r2, #0x41
00591500  d8 f4 f5 eb                                      bl #0x30e868
00591504  00 c0 9d e5                                      ldr ip, [sp]
00591508  08 30 9c e5                                      ldr r3, [ip, #8]
0059150c  00 00 53 e3                                      cmp r3, #0
00591510  02 00 00 0a                                      beq #0x591520
00591514  18 20 dc e5                                      ldrb r2, [ip, #0x18]
00591518  00 00 52 e3                                      cmp r2, #0
0059151c  15 01 00 0a                                      beq #0x591978
00591520  6c 50 dd e5                                      ldrb r5, [sp, #0x6c]
00591524  00 00 55 e3                                      cmp r5, #0
00591528  24 00 00 0a                                      beq #0x5915c0
0059152c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00591530  00 00 51 e3                                      cmp r1, #0
00591534  1c 00 00 da                                      ble #0x5915ac
00591538  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0059153c  18 40 9d e5                                      ldr r4, [sp, #0x18]
00591540  00 10 a0 e3                                      mov r1, #0
00591544  01 00 a0 e1                                      mov r0, r1
00591548  0c 20 9c e5                                      ldr r2, [ip, #0xc]
0059154c  01 30 84 e0                                      add r3, r4, r1
00591550  01 00 80 e2                                      add r0, r0, #1
00591554  01 50 92 e7                                      ldr r5, [r2, r1]
00591558  01 20 82 e0                                      add r2, r2, r1
0059155c  06 00 50 e1                                      cmp r0, r6
00591560  01 50 84 e7                                      str r5, [r4, r1]
00591564  04 50 92 e5                                      ldr r5, [r2, #4]
00591568  24 10 81 e2                                      add r1, r1, #0x24
0059156c  04 50 83 e5                                      str r5, [r3, #4]
00591570  08 50 92 e5                                      ldr r5, [r2, #8]
00591574  08 50 83 e5                                      str r5, [r3, #8]
00591578  0c 50 92 e5                                      ldr r5, [r2, #0xc]
0059157c  0c 50 83 e5                                      str r5, [r3, #0xc]
00591580  10 50 92 e5                                      ldr r5, [r2, #0x10]
00591584  10 50 83 e5                                      str r5, [r3, #0x10]
00591588  14 50 92 e5                                      ldr r5, [r2, #0x14]
0059158c  14 50 83 e5                                      str r5, [r3, #0x14]
00591590  18 50 92 e5                                      ldr r5, [r2, #0x18]
00591594  18 50 83 e5                                      str r5, [r3, #0x18]
00591598  1c 50 92 e5                                      ldr r5, [r2, #0x1c]
0059159c  1c 50 83 e5                                      str r5, [r3, #0x1c]
005915a0  20 20 92 e5                                      ldr r2, [r2, #0x20]
005915a4  20 20 83 e5                                      str r2, [r3, #0x20]
005915a8  e6 ff ff 1a                                      bne #0x591548
005915ac  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005915b0  24 10 9d e5                                      ldr r1, [sp, #0x24]
005915b4  00 30 81 e5                                      str r3, [r1]
005915b8  74 d0 8d e2                                      add sp, sp, #0x74
005915bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005915c0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005915c4  00 00 52 e3                                      cmp r2, #0
005915c8  f7 ff ff da                                      ble #0x5915ac
005915cc  20 c0 8d e5                                      str ip, [sp, #0x20]
005915d0  05 c0 a0 e1                                      mov ip, r5
005915d4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005915d8  18 20 9d e5                                      ldr r2, [sp, #0x18]
005915dc  01 c0 8c e2                                      add ip, ip, #1
005915e0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005915e4  30 10 9d e5                                      ldr r1, [sp, #0x30]
005915e8  05 40 82 e0                                      add r4, r2, r5
005915ec  05 b0 93 e7                                      ldr fp, [r3, r5]
005915f0  05 30 83 e0                                      add r3, r3, r5
005915f4  05 b0 82 e7                                      str fp, [r2, r5]
005915f8  04 90 93 e5                                      ldr sb, [r3, #4]
005915fc  0b 00 a0 e1                                      mov r0, fp
00591600  04 90 84 e5                                      str sb, [r4, #4]
00591604  08 a0 93 e5                                      ldr sl, [r3, #8]
00591608  08 a0 84 e5                                      str sl, [r4, #8]
0059160c  0c 80 93 e5                                      ldr r8, [r3, #0xc]
00591610  0c 80 84 e5                                      str r8, [r4, #0xc]
00591614  10 70 93 e5                                      ldr r7, [r3, #0x10]
00591618  10 70 84 e5                                      str r7, [r4, #0x10]
0059161c  14 60 93 e5                                      ldr r6, [r3, #0x14]
00591620  14 60 84 e5                                      str r6, [r4, #0x14]
00591624  18 20 93 e5                                      ldr r2, [r3, #0x18]
00591628  14 20 8d e5                                      str r2, [sp, #0x14]
0059162c  18 20 84 e5                                      str r2, [r4, #0x18]
00591630  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00591634  10 20 8d e5                                      str r2, [sp, #0x10]
00591638  1c 20 84 e5                                      str r2, [r4, #0x1c]
0059163c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00591640  0c 30 8d e5                                      str r3, [sp, #0xc]
00591644  20 30 84 e5                                      str r3, [r4, #0x20]
00591648  00 c0 8d e5                                      str ip, [sp]
0059164c  c6 f5 f5 eb                                      bl #0x30ed6c
00591650  40 10 9d e5                                      ldr r1, [sp, #0x40]
00591654  00 30 a0 e1                                      mov r3, r0
00591658  09 00 a0 e1                                      mov r0, sb
0059165c  08 30 8d e5                                      str r3, [sp, #8]
00591660  c1 f5 f5 eb                                      bl #0x30ed6c
00591664  08 30 9d e5                                      ldr r3, [sp, #8]
00591668  00 10 a0 e1                                      mov r1, r0
0059166c  03 00 a0 e1                                      mov r0, r3
00591670  4b f5 f5 eb                                      bl #0x30eba4
00591674  50 10 9d e5                                      ldr r1, [sp, #0x50]
00591678  00 30 a0 e1                                      mov r3, r0
0059167c  0a 00 a0 e1                                      mov r0, sl
00591680  08 30 8d e5                                      str r3, [sp, #8]
00591684  b8 f5 f5 eb                                      bl #0x30ed6c
00591688  08 30 9d e5                                      ldr r3, [sp, #8]
0059168c  00 10 a0 e1                                      mov r1, r0
00591690  03 00 a0 e1                                      mov r0, r3
00591694  42 f5 f5 eb                                      bl #0x30eba4
00591698  60 10 9d e5                                      ldr r1, [sp, #0x60]
0059169c  40 f5 f5 eb                                      bl #0x30eba4
005916a0  34 10 9d e5                                      ldr r1, [sp, #0x34]
005916a4  00 20 a0 e1                                      mov r2, r0
005916a8  0b 00 a0 e1                                      mov r0, fp
005916ac  04 20 8d e5                                      str r2, [sp, #4]
005916b0  ad f5 f5 eb                                      bl #0x30ed6c
005916b4  44 10 9d e5                                      ldr r1, [sp, #0x44]
005916b8  00 30 a0 e1                                      mov r3, r0
005916bc  09 00 a0 e1                                      mov r0, sb
005916c0  08 30 8d e5                                      str r3, [sp, #8]
005916c4  a8 f5 f5 eb                                      bl #0x30ed6c
005916c8  08 30 9d e5                                      ldr r3, [sp, #8]
005916cc  00 10 a0 e1                                      mov r1, r0
005916d0  03 00 a0 e1                                      mov r0, r3
005916d4  32 f5 f5 eb                                      bl #0x30eba4
005916d8  54 10 9d e5                                      ldr r1, [sp, #0x54]
005916dc  00 30 a0 e1                                      mov r3, r0
005916e0  0a 00 a0 e1                                      mov r0, sl
005916e4  08 30 8d e5                                      str r3, [sp, #8]
005916e8  9f f5 f5 eb                                      bl #0x30ed6c
005916ec  08 30 9d e5                                      ldr r3, [sp, #8]
005916f0  00 10 a0 e1                                      mov r1, r0
005916f4  03 00 a0 e1                                      mov r0, r3
005916f8  29 f5 f5 eb                                      bl #0x30eba4
005916fc  64 10 9d e5                                      ldr r1, [sp, #0x64]
00591700  27 f5 f5 eb                                      bl #0x30eba4
00591704  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00591708  00 30 a0 e1                                      mov r3, r0
0059170c  0b 00 a0 e1                                      mov r0, fp
00591710  08 30 8d e5                                      str r3, [sp, #8]
00591714  94 f5 f5 eb                                      bl #0x30ed6c
00591718  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0059171c  00 b0 a0 e1                                      mov fp, r0
00591720  09 00 a0 e1                                      mov r0, sb
00591724  90 f5 f5 eb                                      bl #0x30ed6c
00591728  00 10 a0 e1                                      mov r1, r0
0059172c  0b 00 a0 e1                                      mov r0, fp
00591730  1b f5 f5 eb                                      bl #0x30eba4
00591734  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00591738  00 90 a0 e1                                      mov sb, r0
0059173c  0a 00 a0 e1                                      mov r0, sl
00591740  89 f5 f5 eb                                      bl #0x30ed6c
00591744  00 10 a0 e1                                      mov r1, r0
00591748  09 00 a0 e1                                      mov r0, sb
0059174c  14 f5 f5 eb                                      bl #0x30eba4
00591750  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00591754  12 f5 f5 eb                                      bl #0x30eba4
00591758  18 10 9d e5                                      ldr r1, [sp, #0x18]
0059175c  05 00 81 e7                                      str r0, [r1, r5]
00591760  04 20 9d e5                                      ldr r2, [sp, #4]
00591764  08 00 a0 e1                                      mov r0, r8
00591768  24 50 85 e2                                      add r5, r5, #0x24
0059176c  04 20 84 e5                                      str r2, [r4, #4]
00591770  08 30 9d e5                                      ldr r3, [sp, #8]
00591774  08 30 84 e5                                      str r3, [r4, #8]
00591778  30 10 9d e5                                      ldr r1, [sp, #0x30]
0059177c  7a f5 f5 eb                                      bl #0x30ed6c
00591780  40 10 9d e5                                      ldr r1, [sp, #0x40]
00591784  00 a0 a0 e1                                      mov sl, r0
00591788  07 00 a0 e1                                      mov r0, r7
0059178c  76 f5 f5 eb                                      bl #0x30ed6c
00591790  00 10 a0 e1                                      mov r1, r0
00591794  0a 00 a0 e1                                      mov r0, sl
00591798  01 f5 f5 eb                                      bl #0x30eba4
0059179c  50 10 9d e5                                      ldr r1, [sp, #0x50]
005917a0  00 a0 a0 e1                                      mov sl, r0
005917a4  06 00 a0 e1                                      mov r0, r6
005917a8  6f f5 f5 eb                                      bl #0x30ed6c
005917ac  00 10 a0 e1                                      mov r1, r0
005917b0  0a 00 a0 e1                                      mov r0, sl
005917b4  fa f4 f5 eb                                      bl #0x30eba4
005917b8  60 10 9d e5                                      ldr r1, [sp, #0x60]
005917bc  f8 f4 f5 eb                                      bl #0x30eba4
005917c0  34 10 9d e5                                      ldr r1, [sp, #0x34]
005917c4  00 90 a0 e1                                      mov sb, r0
005917c8  08 00 a0 e1                                      mov r0, r8
005917cc  66 f5 f5 eb                                      bl #0x30ed6c
005917d0  44 10 9d e5                                      ldr r1, [sp, #0x44]
005917d4  00 a0 a0 e1                                      mov sl, r0
005917d8  07 00 a0 e1                                      mov r0, r7
005917dc  62 f5 f5 eb                                      bl #0x30ed6c
005917e0  00 10 a0 e1                                      mov r1, r0
005917e4  0a 00 a0 e1                                      mov r0, sl
005917e8  ed f4 f5 eb                                      bl #0x30eba4
005917ec  54 10 9d e5                                      ldr r1, [sp, #0x54]
005917f0  00 a0 a0 e1                                      mov sl, r0
005917f4  06 00 a0 e1                                      mov r0, r6
005917f8  5b f5 f5 eb                                      bl #0x30ed6c
005917fc  00 10 a0 e1                                      mov r1, r0
00591800  0a 00 a0 e1                                      mov r0, sl
00591804  e6 f4 f5 eb                                      bl #0x30eba4
00591808  64 10 9d e5                                      ldr r1, [sp, #0x64]
0059180c  e4 f4 f5 eb                                      bl #0x30eba4
00591810  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00591814  00 a0 a0 e1                                      mov sl, r0
00591818  08 00 a0 e1                                      mov r0, r8
0059181c  52 f5 f5 eb                                      bl #0x30ed6c
00591820  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00591824  00 80 a0 e1                                      mov r8, r0
00591828  07 00 a0 e1                                      mov r0, r7
0059182c  4e f5 f5 eb                                      bl #0x30ed6c
00591830  00 10 a0 e1                                      mov r1, r0
00591834  08 00 a0 e1                                      mov r0, r8
00591838  d9 f4 f5 eb                                      bl #0x30eba4
0059183c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00591840  00 70 a0 e1                                      mov r7, r0
00591844  06 00 a0 e1                                      mov r0, r6
00591848  47 f5 f5 eb                                      bl #0x30ed6c
0059184c  00 10 a0 e1                                      mov r1, r0
00591850  07 00 a0 e1                                      mov r0, r7
00591854  d2 f4 f5 eb                                      bl #0x30eba4
00591858  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0059185c  d0 f4 f5 eb                                      bl #0x30eba4
00591860  10 90 84 e5                                      str sb, [r4, #0x10]
00591864  0c 00 84 e5                                      str r0, [r4, #0xc]
00591868  14 a0 84 e5                                      str sl, [r4, #0x14]
0059186c  30 10 9d e5                                      ldr r1, [sp, #0x30]
00591870  14 00 9d e5                                      ldr r0, [sp, #0x14]
00591874  3c f5 f5 eb                                      bl #0x30ed6c
00591878  40 10 9d e5                                      ldr r1, [sp, #0x40]
0059187c  00 60 a0 e1                                      mov r6, r0
00591880  10 00 9d e5                                      ldr r0, [sp, #0x10]
00591884  38 f5 f5 eb                                      bl #0x30ed6c
00591888  00 10 a0 e1                                      mov r1, r0
0059188c  06 00 a0 e1                                      mov r0, r6
00591890  c3 f4 f5 eb                                      bl #0x30eba4
00591894  50 10 9d e5                                      ldr r1, [sp, #0x50]
00591898  00 60 a0 e1                                      mov r6, r0
0059189c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005918a0  31 f5 f5 eb                                      bl #0x30ed6c
005918a4  00 10 a0 e1                                      mov r1, r0
005918a8  06 00 a0 e1                                      mov r0, r6
005918ac  bc f4 f5 eb                                      bl #0x30eba4
005918b0  60 10 9d e5                                      ldr r1, [sp, #0x60]
005918b4  ba f4 f5 eb                                      bl #0x30eba4
005918b8  34 10 9d e5                                      ldr r1, [sp, #0x34]
005918bc  00 60 a0 e1                                      mov r6, r0
005918c0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005918c4  28 f5 f5 eb                                      bl #0x30ed6c
005918c8  44 10 9d e5                                      ldr r1, [sp, #0x44]
005918cc  00 70 a0 e1                                      mov r7, r0
005918d0  10 00 9d e5                                      ldr r0, [sp, #0x10]
005918d4  24 f5 f5 eb                                      bl #0x30ed6c
005918d8  00 10 a0 e1                                      mov r1, r0
005918dc  07 00 a0 e1                                      mov r0, r7
005918e0  af f4 f5 eb                                      bl #0x30eba4
005918e4  54 10 9d e5                                      ldr r1, [sp, #0x54]
005918e8  00 70 a0 e1                                      mov r7, r0
005918ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005918f0  1d f5 f5 eb                                      bl #0x30ed6c
005918f4  00 10 a0 e1                                      mov r1, r0
005918f8  07 00 a0 e1                                      mov r0, r7
005918fc  a8 f4 f5 eb                                      bl #0x30eba4
00591900  64 10 9d e5                                      ldr r1, [sp, #0x64]
00591904  a6 f4 f5 eb                                      bl #0x30eba4
00591908  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0059190c  00 70 a0 e1                                      mov r7, r0
00591910  14 00 9d e5                                      ldr r0, [sp, #0x14]
00591914  14 f5 f5 eb                                      bl #0x30ed6c
00591918  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0059191c  00 80 a0 e1                                      mov r8, r0
00591920  10 00 9d e5                                      ldr r0, [sp, #0x10]
00591924  10 f5 f5 eb                                      bl #0x30ed6c
00591928  00 10 a0 e1                                      mov r1, r0
0059192c  08 00 a0 e1                                      mov r0, r8
00591930  9b f4 f5 eb                                      bl #0x30eba4
00591934  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00591938  00 80 a0 e1                                      mov r8, r0
0059193c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00591940  09 f5 f5 eb                                      bl #0x30ed6c
00591944  00 10 a0 e1                                      mov r1, r0
00591948  08 00 a0 e1                                      mov r0, r8
0059194c  94 f4 f5 eb                                      bl #0x30eba4
00591950  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00591954  92 f4 f5 eb                                      bl #0x30eba4
00591958  00 c0 9d e5                                      ldr ip, [sp]
0059195c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00591960  18 00 84 e5                                      str r0, [r4, #0x18]
00591964  20 70 84 e5                                      str r7, [r4, #0x20]
00591968  02 00 5c e1                                      cmp ip, r2
0059196c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00591970  17 ff ff 1a                                      bne #0x5915d4
00591974  0c ff ff ea                                      b #0x5915ac
00591978  03 00 a0 e1                                      mov r0, r3
0059197c  00 30 93 e5                                      ldr r3, [r3]
00591980  00 c0 8d e5                                      str ip, [sp]
00591984  0f e0 a0 e1                                      mov lr, pc
00591988  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0059198c  00 10 a0 e1                                      mov r1, r0
00591990  04 00 a0 e1                                      mov r0, r4
00591994  4f f7 fd eb                                      bl #0x50f6d8
00591998  00 c0 9d e5                                      ldr ip, [sp]
0059199c  df fe ff ea                                      b #0x591520

; FUNCTION 0x005919a0, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorC1ERKNS_4core8aabbox3dIfEEPKNS0_10ISceneNodeEb
; demangled: glitch::scene::CTriangleSelector::CTriangleSelector(glitch::core::aabbox3d<float> const&, glitch::scene::ISceneNode const*, bool)
; decoder-mode: arm
005919a0  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
005919a4  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
005919a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005919ac  0c c0 8f e0                                      add ip, pc, ip
005919b0  01 10 9c e7                                      ldr r1, [ip, r1]
005919b4  bf 74 a0 e3                                      mov r7, #0xbf000000
005919b8  00 40 a0 e1                                      mov r4, r0
005919bc  fe 55 a0 e3                                      mov r5, #0x3f800000
005919c0  00 e0 a0 e3                                      mov lr, #0
005919c4  02 75 87 e2                                      add r7, r7, #0x800000
005919c8  08 00 81 e2                                      add r0, r1, #8
005919cc  01 60 a0 e3                                      mov r6, #1
005919d0  00 10 a0 e3                                      mov r1, #0
005919d4  08 20 84 e5                                      str r2, [r4, #8]
005919d8  00 00 84 e5                                      str r0, [r4]
005919dc  18 30 c4 e5                                      strb r3, [r4, #0x18]
005919e0  40 e0 84 e5                                      str lr, [r4, #0x40]
005919e4  4c 70 84 e5                                      str r7, [r4, #0x4c]
005919e8  04 60 84 e5                                      str r6, [r4, #4]
005919ec  0c 10 84 e5                                      str r1, [r4, #0xc]
005919f0  10 10 84 e5                                      str r1, [r4, #0x10]
005919f4  14 10 84 e5                                      str r1, [r4, #0x14]
005919f8  1c e0 84 e5                                      str lr, [r4, #0x1c]
005919fc  20 e0 84 e5                                      str lr, [r4, #0x20]
00591a00  24 e0 84 e5                                      str lr, [r4, #0x24]
00591a04  28 50 84 e5                                      str r5, [r4, #0x28]
00591a08  2c 50 84 e5                                      str r5, [r4, #0x2c]
00591a0c  30 50 84 e5                                      str r5, [r4, #0x30]
00591a10  38 e0 84 e5                                      str lr, [r4, #0x38]
00591a14  3c e0 84 e5                                      str lr, [r4, #0x3c]
00591a18  44 70 84 e5                                      str r7, [r4, #0x44]
00591a1c  48 70 84 e5                                      str r7, [r4, #0x48]
00591a20  50 50 84 e5                                      str r5, [r4, #0x50]
00591a24  54 50 84 e5                                      str r5, [r4, #0x54]
00591a28  58 50 84 e5                                      str r5, [r4, #0x58]
00591a2c  9c 10 c4 e5                                      strb r1, [r4, #0x9c]
00591a30  5c 00 84 e2                                      add r0, r4, #0x5c
00591a34  40 20 a0 e3                                      mov r2, #0x40
00591a38  88 f2 f5 eb                                      bl #0x30e460
00591a3c  98 50 84 e5                                      str r5, [r4, #0x98]
00591a40  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00591a44  5c 50 84 e5                                      str r5, [r4, #0x5c]
00591a48  70 50 84 e5                                      str r5, [r4, #0x70]
00591a4c  84 50 84 e5                                      str r5, [r4, #0x84]
00591a50  04 00 a0 e1                                      mov r0, r4
00591a54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00591a58  e4 30 40 00 c0 05 00 00                          .byte 0xe4, 0x30, 0x40, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00591a60, declared_size=196, range_size=196, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorC1EPKNS0_10ISceneNodeEb
; demangled: glitch::scene::CTriangleSelector::CTriangleSelector(glitch::scene::ISceneNode const*, bool)
; decoder-mode: arm
00591a60  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
00591a64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00591a68  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
00591a6c  0c c0 8f e0                                      add ip, pc, ip
00591a70  bf e4 a0 e3                                      mov lr, #0xbf000000
00591a74  06 60 9c e7                                      ldr r6, [ip, r6]
00591a78  00 40 a0 e1                                      mov r4, r0
00591a7c  fe 55 a0 e3                                      mov r5, #0x3f800000
00591a80  00 30 a0 e3                                      mov r3, #0
00591a84  00 00 a0 e3                                      mov r0, #0
00591a88  02 e5 8e e2                                      add lr, lr, #0x800000
00591a8c  08 70 86 e2                                      add r7, r6, #8
00591a90  01 60 a0 e3                                      mov r6, #1
00591a94  08 10 84 e5                                      str r1, [r4, #8]
00591a98  18 20 c4 e5                                      strb r2, [r4, #0x18]
00591a9c  0c 00 84 e5                                      str r0, [r4, #0xc]
00591aa0  10 00 84 e5                                      str r0, [r4, #0x10]
00591aa4  14 00 84 e5                                      str r0, [r4, #0x14]
00591aa8  9c 00 c4 e5                                      strb r0, [r4, #0x9c]
00591aac  00 10 a0 e1                                      mov r1, r0
00591ab0  00 70 84 e5                                      str r7, [r4]
00591ab4  40 30 84 e5                                      str r3, [r4, #0x40]
00591ab8  4c e0 84 e5                                      str lr, [r4, #0x4c]
00591abc  04 60 84 e5                                      str r6, [r4, #4]
00591ac0  1c 30 84 e5                                      str r3, [r4, #0x1c]
00591ac4  20 30 84 e5                                      str r3, [r4, #0x20]
00591ac8  24 30 84 e5                                      str r3, [r4, #0x24]
00591acc  28 50 84 e5                                      str r5, [r4, #0x28]
00591ad0  2c 50 84 e5                                      str r5, [r4, #0x2c]
00591ad4  30 50 84 e5                                      str r5, [r4, #0x30]
00591ad8  38 30 84 e5                                      str r3, [r4, #0x38]
00591adc  3c 30 84 e5                                      str r3, [r4, #0x3c]
00591ae0  44 e0 84 e5                                      str lr, [r4, #0x44]
00591ae4  48 e0 84 e5                                      str lr, [r4, #0x48]
00591ae8  50 50 84 e5                                      str r5, [r4, #0x50]
00591aec  54 50 84 e5                                      str r5, [r4, #0x54]
00591af0  58 50 84 e5                                      str r5, [r4, #0x58]
00591af4  5c 00 84 e2                                      add r0, r4, #0x5c
00591af8  40 20 a0 e3                                      mov r2, #0x40
00591afc  57 f2 f5 eb                                      bl #0x30e460
00591b00  98 50 84 e5                                      str r5, [r4, #0x98]
00591b04  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00591b08  5c 50 84 e5                                      str r5, [r4, #0x5c]
00591b0c  70 50 84 e5                                      str r5, [r4, #0x70]
00591b10  84 50 84 e5                                      str r5, [r4, #0x84]
00591b14  04 00 a0 e1                                      mov r0, r4
00591b18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00591b1c  24 30 40 00 c0 05 00 00                          .byte 0x24, 0x30, 0x40, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00591b24, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorC2ERKNS_4core8aabbox3dIfEEPKNS0_10ISceneNodeEb
; demangled: glitch::scene::CTriangleSelector::CTriangleSelector(glitch::core::aabbox3d<float> const&, glitch::scene::ISceneNode const*, bool)
; decoder-mode: arm
00591b24  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
00591b28  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00591b2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00591b30  0c c0 8f e0                                      add ip, pc, ip
00591b34  01 10 9c e7                                      ldr r1, [ip, r1]
00591b38  bf 74 a0 e3                                      mov r7, #0xbf000000
00591b3c  00 40 a0 e1                                      mov r4, r0
00591b40  fe 55 a0 e3                                      mov r5, #0x3f800000
00591b44  00 e0 a0 e3                                      mov lr, #0
00591b48  02 75 87 e2                                      add r7, r7, #0x800000
00591b4c  08 00 81 e2                                      add r0, r1, #8
00591b50  01 60 a0 e3                                      mov r6, #1
00591b54  00 10 a0 e3                                      mov r1, #0
00591b58  08 20 84 e5                                      str r2, [r4, #8]
00591b5c  00 00 84 e5                                      str r0, [r4]
00591b60  18 30 c4 e5                                      strb r3, [r4, #0x18]
00591b64  40 e0 84 e5                                      str lr, [r4, #0x40]
00591b68  4c 70 84 e5                                      str r7, [r4, #0x4c]
00591b6c  04 60 84 e5                                      str r6, [r4, #4]
00591b70  0c 10 84 e5                                      str r1, [r4, #0xc]
00591b74  10 10 84 e5                                      str r1, [r4, #0x10]
00591b78  14 10 84 e5                                      str r1, [r4, #0x14]
00591b7c  1c e0 84 e5                                      str lr, [r4, #0x1c]
00591b80  20 e0 84 e5                                      str lr, [r4, #0x20]
00591b84  24 e0 84 e5                                      str lr, [r4, #0x24]
00591b88  28 50 84 e5                                      str r5, [r4, #0x28]
00591b8c  2c 50 84 e5                                      str r5, [r4, #0x2c]
00591b90  30 50 84 e5                                      str r5, [r4, #0x30]
00591b94  38 e0 84 e5                                      str lr, [r4, #0x38]
00591b98  3c e0 84 e5                                      str lr, [r4, #0x3c]
00591b9c  44 70 84 e5                                      str r7, [r4, #0x44]
00591ba0  48 70 84 e5                                      str r7, [r4, #0x48]
00591ba4  50 50 84 e5                                      str r5, [r4, #0x50]
00591ba8  54 50 84 e5                                      str r5, [r4, #0x54]
00591bac  58 50 84 e5                                      str r5, [r4, #0x58]
00591bb0  9c 10 c4 e5                                      strb r1, [r4, #0x9c]
00591bb4  5c 00 84 e2                                      add r0, r4, #0x5c
00591bb8  40 20 a0 e3                                      mov r2, #0x40
00591bbc  27 f2 f5 eb                                      bl #0x30e460
00591bc0  98 50 84 e5                                      str r5, [r4, #0x98]
00591bc4  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00591bc8  5c 50 84 e5                                      str r5, [r4, #0x5c]
00591bcc  70 50 84 e5                                      str r5, [r4, #0x70]
00591bd0  84 50 84 e5                                      str r5, [r4, #0x84]
00591bd4  04 00 a0 e1                                      mov r0, r4
00591bd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00591bdc  60 2f 40 00 c0 05 00 00                          .byte 0x60, 0x2f, 0x40, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00591be4, declared_size=196, range_size=196, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorC2EPKNS0_10ISceneNodeEb
; demangled: glitch::scene::CTriangleSelector::CTriangleSelector(glitch::scene::ISceneNode const*, bool)
; decoder-mode: arm
00591be4  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
00591be8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00591bec  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
00591bf0  0c c0 8f e0                                      add ip, pc, ip
00591bf4  bf e4 a0 e3                                      mov lr, #0xbf000000
00591bf8  06 60 9c e7                                      ldr r6, [ip, r6]
00591bfc  00 40 a0 e1                                      mov r4, r0
00591c00  fe 55 a0 e3                                      mov r5, #0x3f800000
00591c04  00 30 a0 e3                                      mov r3, #0
00591c08  00 00 a0 e3                                      mov r0, #0
00591c0c  02 e5 8e e2                                      add lr, lr, #0x800000
00591c10  08 70 86 e2                                      add r7, r6, #8
00591c14  01 60 a0 e3                                      mov r6, #1
00591c18  08 10 84 e5                                      str r1, [r4, #8]
00591c1c  18 20 c4 e5                                      strb r2, [r4, #0x18]
00591c20  0c 00 84 e5                                      str r0, [r4, #0xc]
00591c24  10 00 84 e5                                      str r0, [r4, #0x10]
00591c28  14 00 84 e5                                      str r0, [r4, #0x14]
00591c2c  9c 00 c4 e5                                      strb r0, [r4, #0x9c]
00591c30  00 10 a0 e1                                      mov r1, r0
00591c34  00 70 84 e5                                      str r7, [r4]
00591c38  40 30 84 e5                                      str r3, [r4, #0x40]
00591c3c  4c e0 84 e5                                      str lr, [r4, #0x4c]
00591c40  04 60 84 e5                                      str r6, [r4, #4]
00591c44  1c 30 84 e5                                      str r3, [r4, #0x1c]
00591c48  20 30 84 e5                                      str r3, [r4, #0x20]
00591c4c  24 30 84 e5                                      str r3, [r4, #0x24]
00591c50  28 50 84 e5                                      str r5, [r4, #0x28]
00591c54  2c 50 84 e5                                      str r5, [r4, #0x2c]
00591c58  30 50 84 e5                                      str r5, [r4, #0x30]
00591c5c  38 30 84 e5                                      str r3, [r4, #0x38]
00591c60  3c 30 84 e5                                      str r3, [r4, #0x3c]
00591c64  44 e0 84 e5                                      str lr, [r4, #0x44]
00591c68  48 e0 84 e5                                      str lr, [r4, #0x48]
00591c6c  50 50 84 e5                                      str r5, [r4, #0x50]
00591c70  54 50 84 e5                                      str r5, [r4, #0x54]
00591c74  58 50 84 e5                                      str r5, [r4, #0x58]
00591c78  5c 00 84 e2                                      add r0, r4, #0x5c
00591c7c  40 20 a0 e3                                      mov r2, #0x40
00591c80  f6 f1 f5 eb                                      bl #0x30e460
00591c84  98 50 84 e5                                      str r5, [r4, #0x98]
00591c88  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00591c8c  5c 50 84 e5                                      str r5, [r4, #0x5c]
00591c90  70 50 84 e5                                      str r5, [r4, #0x70]
00591c94  84 50 84 e5                                      str r5, [r4, #0x84]
00591c98  04 00 a0 e1                                      mov r0, r4
00591c9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00591ca0  a0 2e 40 00 c0 05 00 00                          .byte 0xa0, 0x2e, 0x40, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00591ca8, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_8aabbox3dIfEEPKNS2_8CMatrix4IfEE
; demangled: glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&, glitch::core::aabbox3d<float> const&, glitch::core::CMatrix4<float> const*) const
; decoder-mode: arm
00591ca8  70 40 2d e9                                      push {r4, r5, r6, lr}
00591cac  a4 20 80 e5                                      str r2, [r0, #0xa4]
00591cb0  00 20 a0 e3                                      mov r2, #0
00591cb4  a8 20 80 e5                                      str r2, [r0, #0xa8]
00591cb8  a0 10 80 e5                                      str r1, [r0, #0xa0]
00591cbc  00 40 a0 e1                                      mov r4, r0
00591cc0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00591cc4  03 50 a0 e1                                      mov r5, r3
00591cc8  59 d3 ff eb                                      bl #0x586a34
00591ccc  04 00 a0 e1                                      mov r0, r4
00591cd0  10 10 9d e5                                      ldr r1, [sp, #0x10]
00591cd4  4a d6 ff eb                                      bl #0x587604
00591cd8  04 00 a0 e1                                      mov r0, r4
00591cdc  0c 10 84 e2                                      add r1, r4, #0xc
00591ce0  78 d4 ff eb                                      bl #0x586ec8
00591ce4  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00591ce8  00 30 85 e5                                      str r3, [r5]
00591cec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00591cf0, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZNK6glitch5scene17CTriangleSelector12getTrianglesEPNS_4core10triangle3dIfEEiRiRKNS2_6line3dIfEEPKNS2_8CMatrix4IfEE
; demangled: glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&, glitch::core::line3d<float> const&, glitch::core::CMatrix4<float> const*) const
; decoder-mode: arm
00591cf0  70 40 2d e9                                      push {r4, r5, r6, lr}
00591cf4  a4 20 80 e5                                      str r2, [r0, #0xa4]
00591cf8  00 20 a0 e3                                      mov r2, #0
00591cfc  a8 20 80 e5                                      str r2, [r0, #0xa8]
00591d00  a0 10 80 e5                                      str r1, [r0, #0xa0]
00591d04  00 40 a0 e1                                      mov r4, r0
00591d08  14 10 9d e5                                      ldr r1, [sp, #0x14]
00591d0c  03 50 a0 e1                                      mov r5, r3
00591d10  47 d3 ff eb                                      bl #0x586a34
00591d14  04 00 a0 e1                                      mov r0, r4
00591d18  10 10 9d e5                                      ldr r1, [sp, #0x10]
00591d1c  18 db ff eb                                      bl #0x588984
00591d20  04 00 a0 e1                                      mov r0, r4
00591d24  0c 10 84 e2                                      add r1, r4, #0xc
00591d28  26 d5 ff eb                                      bl #0x5871c8
00591d2c  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00591d30  00 30 85 e5                                      str r3, [r5]
00591d34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00595ec8, declared_size=1744, range_size=1744, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorC1ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEPKNS0_10ISceneNodeEb
; demangled: glitch::scene::CTriangleSelector::CTriangleSelector(boost::intrusive_ptr<glitch::scene::IMesh const> const&, glitch::scene::ISceneNode const*, bool)
; decoder-mode: arm
00595ec8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00595ecc  bc 86 9f e5                                      ldr r8, [pc, #0x6bc]
00595ed0  bc 56 9f e5                                      ldr r5, [pc, #0x6bc]
00595ed4  bf e4 a0 e3                                      mov lr, #0xbf000000
00595ed8  08 80 8f e0                                      add r8, pc, r8
00595edc  05 50 98 e7                                      ldr r5, [r8, r5]
00595ee0  00 40 a0 e1                                      mov r4, r0
00595ee4  fe 65 a0 e3                                      mov r6, #0x3f800000
00595ee8  00 c0 a0 e3                                      mov ip, #0
00595eec  02 e5 8e e2                                      add lr, lr, #0x800000
00595ef0  08 00 85 e2                                      add r0, r5, #8
00595ef4  01 a0 a0 e3                                      mov sl, #1
00595ef8  00 50 a0 e3                                      mov r5, #0
00595efc  64 d0 4d e2                                      sub sp, sp, #0x64
00595f00  08 20 84 e5                                      str r2, [r4, #8]
00595f04  18 30 c4 e5                                      strb r3, [r4, #0x18]
00595f08  00 00 84 e5                                      str r0, [r4]
00595f0c  40 c0 84 e5                                      str ip, [r4, #0x40]
00595f10  4c e0 84 e5                                      str lr, [r4, #0x4c]
00595f14  01 70 a0 e1                                      mov r7, r1
00595f18  1c c0 84 e5                                      str ip, [r4, #0x1c]
00595f1c  20 c0 84 e5                                      str ip, [r4, #0x20]
00595f20  24 c0 84 e5                                      str ip, [r4, #0x24]
00595f24  38 c0 84 e5                                      str ip, [r4, #0x38]
00595f28  3c c0 84 e5                                      str ip, [r4, #0x3c]
00595f2c  44 e0 84 e5                                      str lr, [r4, #0x44]
00595f30  48 e0 84 e5                                      str lr, [r4, #0x48]
00595f34  05 10 a0 e1                                      mov r1, r5
00595f38  40 20 a0 e3                                      mov r2, #0x40
00595f3c  04 a0 84 e5                                      str sl, [r4, #4]
00595f40  0c 50 84 e5                                      str r5, [r4, #0xc]
00595f44  10 50 84 e5                                      str r5, [r4, #0x10]
00595f48  14 50 84 e5                                      str r5, [r4, #0x14]
00595f4c  28 60 84 e5                                      str r6, [r4, #0x28]
00595f50  2c 60 84 e5                                      str r6, [r4, #0x2c]
00595f54  30 60 84 e5                                      str r6, [r4, #0x30]
00595f58  50 60 84 e5                                      str r6, [r4, #0x50]
00595f5c  54 60 84 e5                                      str r6, [r4, #0x54]
00595f60  58 60 84 e5                                      str r6, [r4, #0x58]
00595f64  9c 50 c4 e5                                      strb r5, [r4, #0x9c]
00595f68  5c 00 84 e2                                      add r0, r4, #0x5c
00595f6c  3b e1 f5 eb                                      bl #0x30e460
00595f70  98 60 84 e5                                      str r6, [r4, #0x98]
00595f74  9c a0 c4 e5                                      strb sl, [r4, #0x9c]
00595f78  5c 60 84 e5                                      str r6, [r4, #0x5c]
00595f7c  70 60 84 e5                                      str r6, [r4, #0x70]
00595f80  84 60 84 e5                                      str r6, [r4, #0x84]
00595f84  00 30 97 e5                                      ldr r3, [r7]
00595f88  03 00 a0 e1                                      mov r0, r3
00595f8c  00 30 93 e5                                      ldr r3, [r3]
00595f90  0f e0 a0 e1                                      mov lr, pc
00595f94  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00595f98  00 80 50 e2                                      subs r8, r0, #0
00595f9c  77 01 00 0a                                      beq #0x596580
00595fa0  05 60 a0 e1                                      mov r6, r5
00595fa4  5c a0 8d e2                                      add sl, sp, #0x5c
00595fa8  00 30 97 e5                                      ldr r3, [r7]
00595fac  05 20 a0 e1                                      mov r2, r5
00595fb0  0a 00 a0 e1                                      mov r0, sl
00595fb4  03 10 a0 e1                                      mov r1, r3
00595fb8  00 30 93 e5                                      ldr r3, [r3]
00595fbc  0f e0 a0 e1                                      mov lr, pc
00595fc0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00595fc4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00595fc8  01 50 85 e2                                      add r5, r5, #1
00595fcc  20 30 90 e5                                      ldr r3, [r0, #0x20]
00595fd0  03 60 86 e0                                      add r6, r6, r3
00595fd4  6a 1d f6 eb                                      bl #0x31d584
00595fd8  08 00 55 e1                                      cmp r5, r8
00595fdc  f1 ff ff 1a                                      bne #0x595fa8
00595fe0  ab 3a 0a e3                                      movw r3, #0xaaab
00595fe4  aa 3a 4a e3                                      movt r3, #0xaaaa
00595fe8  93 26 86 e0                                      umull r2, r6, r3, r6
00595fec  0c 30 84 e2                                      add r3, r4, #0xc
00595ff0  a6 10 a0 e1                                      lsr r1, r6, #1
00595ff4  03 00 a0 e1                                      mov r0, r3
00595ff8  08 30 8d e5                                      str r3, [sp, #8]
00595ffc  00 50 a0 e3                                      mov r5, #0
00596000  16 ec ff eb                                      bl #0x591060
00596004  54 20 8d e2                                      add r2, sp, #0x54
00596008  10 30 8d e2                                      add r3, sp, #0x10
0059600c  58 a0 8d e2                                      add sl, sp, #0x58
00596010  04 20 8d e5                                      str r2, [sp, #4]
00596014  05 60 a0 e1                                      mov r6, r5
00596018  0c 30 8d e5                                      str r3, [sp, #0xc]
0059601c  02 00 00 ea                                      b #0x59602c
00596020  01 50 85 e2                                      add r5, r5, #1
00596024  08 00 55 e1                                      cmp r5, r8
00596028  42 00 00 0a                                      beq #0x596138
0059602c  00 30 97 e5                                      ldr r3, [r7]
00596030  0a 00 a0 e1                                      mov r0, sl
00596034  05 20 a0 e1                                      mov r2, r5
00596038  03 10 a0 e1                                      mov r1, r3
0059603c  00 30 93 e5                                      ldr r3, [r3]
00596040  0f e0 a0 e1                                      mov lr, pc
00596044  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00596048  58 90 9d e5                                      ldr sb, [sp, #0x58]
0059604c  00 00 59 e3                                      cmp sb, #0
00596050  01 00 00 0a                                      beq #0x59605c
00596054  09 00 a0 e1                                      mov r0, sb
00596058  49 1d f6 eb                                      bl #0x31d584
0059605c  14 b0 99 e5                                      ldr fp, [sb, #0x14]
00596060  00 00 5b e3                                      cmp fp, #0
00596064  54 b0 8d e5                                      str fp, [sp, #0x54]
00596068  00 30 9b 15                                      ldrne r3, [fp]
0059606c  01 30 83 12                                      addne r3, r3, #1
00596070  00 30 8b 15                                      strne r3, [fp]
00596074  04 00 9d e5                                      ldr r0, [sp, #4]
00596078  54 b0 9d 15                                      ldrne fp, [sp, #0x54]
0059607c  c3 22 f7 eb                                      bl #0x35eb90
00596080  10 60 8d e5                                      str r6, [sp, #0x10]
00596084  14 60 8d e5                                      str r6, [sp, #0x14]
00596088  be 32 d9 e1                                      ldrh r3, [sb, #0x2e]
0059608c  06 00 53 e3                                      cmp r3, #6
00596090  e2 ff ff 1a                                      bne #0x596020
00596094  18 30 99 e5                                      ldr r3, [sb, #0x18]
00596098  00 00 53 e3                                      cmp r3, #0
0059609c  06 00 a0 01                                      moveq r0, r6
005960a0  03 00 00 0a                                      beq #0x5960b4
005960a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005960a8  18 10 89 e2                                      add r1, sb, #0x18
005960ac  3b ec ff eb                                      bl #0x5911a0
005960b0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005960b4  14 20 8b e2                                      add r2, fp, #0x14
005960b8  ba 30 d2 e1                                      ldrh r3, [r2, #0xa]
005960bc  20 10 99 e5                                      ldr r1, [sb, #0x20]
005960c0  06 00 53 e3                                      cmp r3, #6
005960c4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005960c8  08 00 00 ea                                      b #0x5960f0
005960cc  05 00 00 ea                                      b #0x5960e8
005960d0  35 00 00 ea                                      b #0x5961ac
005960d4  31 00 00 ea                                      b #0x5961a0
005960d8  2d 00 00 ea                                      b #0x596194
005960dc  29 00 00 ea                                      b #0x596188
005960e0  25 00 00 ea                                      b #0x59617c
005960e4  21 00 00 ea                                      b #0x596170
005960e8  08 30 9d e5                                      ldr r3, [sp, #8]
005960ec  59 f3 ff eb                                      bl #0x592e58
005960f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005960f4  00 00 53 e3                                      cmp r3, #0
005960f8  c8 ff ff 0a                                      beq #0x596020
005960fc  10 30 9d e5                                      ldr r3, [sp, #0x10]
00596100  00 90 93 e5                                      ldr sb, [r3]
00596104  13 30 d9 e5                                      ldrb r3, [sb, #0x13]
00596108  1f 20 03 e2                                      and r2, r3, #0x1f
0059610c  01 00 52 e3                                      cmp r2, #1
00596110  11 00 00 9a                                      bls #0x59615c
00596114  01 20 42 e2                                      sub r2, r2, #1
00596118  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059611c  03 30 82 e1                                      orr r3, r2, r3
00596120  13 30 c9 e5                                      strb r3, [sb, #0x13]
00596124  01 50 85 e2                                      add r5, r5, #1
00596128  08 00 55 e1                                      cmp r5, r8
0059612c  10 60 8d e5                                      str r6, [sp, #0x10]
00596130  14 60 8d e5                                      str r6, [sp, #0x14]
00596134  bc ff ff 1a                                      bne #0x59602c
00596138  08 30 94 e5                                      ldr r3, [r4, #8]
0059613c  00 00 53 e3                                      cmp r3, #0
00596140  02 00 00 0a                                      beq #0x596150
00596144  18 20 d4 e5                                      ldrb r2, [r4, #0x18]
00596148  00 00 52 e3                                      cmp r2, #0
0059614c  1f 00 00 1a                                      bne #0x5961d0
00596150  04 00 a0 e1                                      mov r0, r4
00596154  64 d0 8d e2                                      add sp, sp, #0x64
00596158  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059615c  12 30 d9 e5                                      ldrb r3, [sb, #0x12]
00596160  20 00 13 e3                                      tst r3, #0x20
00596164  13 00 00 1a                                      bne #0x5961b8
00596168  13 60 c9 e5                                      strb r6, [sb, #0x13]
0059616c  ec ff ff ea                                      b #0x596124
00596170  08 30 9d e5                                      ldr r3, [sp, #8]
00596174  ef ee ff eb                                      bl #0x591d38
00596178  dc ff ff ea                                      b #0x5960f0
0059617c  08 30 9d e5                                      ldr r3, [sp, #8]
00596180  c8 f0 ff eb                                      bl #0x5924a8
00596184  d9 ff ff ea                                      b #0x5960f0
00596188  08 30 9d e5                                      ldr r3, [sp, #8]
0059618c  e1 fc ff eb                                      bl #0x595518
00596190  d6 ff ff ea                                      b #0x5960f0
00596194  08 30 9d e5                                      ldr r3, [sp, #8]
00596198  72 fa ff eb                                      bl #0x594b68
0059619c  d3 ff ff ea                                      b #0x5960f0
005961a0  08 30 9d e5                                      ldr r3, [sp, #8]
005961a4  03 f8 ff eb                                      bl #0x5941b8
005961a8  d0 ff ff ea                                      b #0x5960f0
005961ac  08 30 9d e5                                      ldr r3, [sp, #8]
005961b0  94 f5 ff eb                                      bl #0x593808
005961b4  cd ff ff ea                                      b #0x5960f0
005961b8  00 30 99 e5                                      ldr r3, [sb]
005961bc  09 00 a0 e1                                      mov r0, sb
005961c0  0f e0 a0 e1                                      mov lr, pc
005961c4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005961c8  13 60 c9 e5                                      strb r6, [sb, #0x13]
005961cc  d4 ff ff ea                                      b #0x596124
005961d0  03 00 a0 e1                                      mov r0, r3
005961d4  00 30 93 e5                                      ldr r3, [r3]
005961d8  0f e0 a0 e1                                      mov lr, pc
005961dc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005961e0  00 10 a0 e1                                      mov r1, r0
005961e4  10 00 8d e2                                      add r0, sp, #0x10
005961e8  95 ec ff eb                                      bl #0x591444
005961ec  0c 70 94 e5                                      ldr r7, [r4, #0xc]
005961f0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005961f4  03 30 67 e0                                      rsb r3, r7, r3
005961f8  43 31 a0 e1                                      asr r3, r3, #2
005961fc  83 21 a0 e1                                      lsl r2, r3, #3
00596200  02 20 63 e0                                      rsb r2, r3, r2
00596204  02 23 82 e0                                      add r2, r2, r2, lsl #6
00596208  82 21 83 e0                                      add r2, r3, r2, lsl #3
0059620c  82 17 a0 e1                                      lsl r1, r2, #0xf
00596210  01 20 62 e0                                      rsb r2, r2, r1
00596214  82 21 83 e0                                      add r2, r3, r2, lsl #3
00596218  00 00 52 e3                                      cmp r2, #0
0059621c  08 20 8d e5                                      str r2, [sp, #8]
00596220  ca ff ff da                                      ble #0x596150
00596224  00 50 a0 e3                                      mov r5, #0
00596228  04 50 8d e5                                      str r5, [sp, #4]
0059622c  00 00 00 ea                                      b #0x596234
00596230  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00596234  05 90 97 e7                                      ldr sb, [r7, r5]
00596238  14 10 9d e5                                      ldr r1, [sp, #0x14]
0059623c  05 60 87 e0                                      add r6, r7, r5
00596240  09 00 a0 e1                                      mov r0, sb
00596244  c8 e2 f5 eb                                      bl #0x30ed6c
00596248  04 a0 96 e5                                      ldr sl, [r6, #4]
0059624c  00 b0 a0 e1                                      mov fp, r0
00596250  24 10 9d e5                                      ldr r1, [sp, #0x24]
00596254  0a 00 a0 e1                                      mov r0, sl
00596258  c3 e2 f5 eb                                      bl #0x30ed6c
0059625c  00 10 a0 e1                                      mov r1, r0
00596260  0b 00 a0 e1                                      mov r0, fp
00596264  4e e2 f5 eb                                      bl #0x30eba4
00596268  08 80 96 e5                                      ldr r8, [r6, #8]
0059626c  00 b0 a0 e1                                      mov fp, r0
00596270  34 10 9d e5                                      ldr r1, [sp, #0x34]
00596274  08 00 a0 e1                                      mov r0, r8
00596278  bb e2 f5 eb                                      bl #0x30ed6c
0059627c  00 10 a0 e1                                      mov r1, r0
00596280  0b 00 a0 e1                                      mov r0, fp
00596284  46 e2 f5 eb                                      bl #0x30eba4
00596288  44 10 9d e5                                      ldr r1, [sp, #0x44]
0059628c  44 e2 f5 eb                                      bl #0x30eba4
00596290  18 10 9d e5                                      ldr r1, [sp, #0x18]
00596294  00 30 a0 e1                                      mov r3, r0
00596298  09 00 a0 e1                                      mov r0, sb
0059629c  00 30 8d e5                                      str r3, [sp]
005962a0  b1 e2 f5 eb                                      bl #0x30ed6c
005962a4  28 10 9d e5                                      ldr r1, [sp, #0x28]
005962a8  00 b0 a0 e1                                      mov fp, r0
005962ac  0a 00 a0 e1                                      mov r0, sl
005962b0  ad e2 f5 eb                                      bl #0x30ed6c
005962b4  00 10 a0 e1                                      mov r1, r0
005962b8  0b 00 a0 e1                                      mov r0, fp
005962bc  38 e2 f5 eb                                      bl #0x30eba4
005962c0  38 10 9d e5                                      ldr r1, [sp, #0x38]
005962c4  00 b0 a0 e1                                      mov fp, r0
005962c8  08 00 a0 e1                                      mov r0, r8
005962cc  a6 e2 f5 eb                                      bl #0x30ed6c
005962d0  00 10 a0 e1                                      mov r1, r0
005962d4  0b 00 a0 e1                                      mov r0, fp
005962d8  31 e2 f5 eb                                      bl #0x30eba4
005962dc  48 10 9d e5                                      ldr r1, [sp, #0x48]
005962e0  2f e2 f5 eb                                      bl #0x30eba4
005962e4  10 10 9d e5                                      ldr r1, [sp, #0x10]
005962e8  00 b0 a0 e1                                      mov fp, r0
005962ec  09 00 a0 e1                                      mov r0, sb
005962f0  9d e2 f5 eb                                      bl #0x30ed6c
005962f4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005962f8  00 90 a0 e1                                      mov sb, r0
005962fc  0a 00 a0 e1                                      mov r0, sl
00596300  99 e2 f5 eb                                      bl #0x30ed6c
00596304  00 10 a0 e1                                      mov r1, r0
00596308  09 00 a0 e1                                      mov r0, sb
0059630c  24 e2 f5 eb                                      bl #0x30eba4
00596310  30 10 9d e5                                      ldr r1, [sp, #0x30]
00596314  00 a0 a0 e1                                      mov sl, r0
00596318  08 00 a0 e1                                      mov r0, r8
0059631c  92 e2 f5 eb                                      bl #0x30ed6c
00596320  00 10 a0 e1                                      mov r1, r0
00596324  0a 00 a0 e1                                      mov r0, sl
00596328  1d e2 f5 eb                                      bl #0x30eba4
0059632c  40 10 9d e5                                      ldr r1, [sp, #0x40]
00596330  1b e2 f5 eb                                      bl #0x30eba4
00596334  05 00 87 e7                                      str r0, [r7, r5]
00596338  08 b0 86 e5                                      str fp, [r6, #8]
0059633c  00 30 9d e5                                      ldr r3, [sp]
00596340  04 30 86 e5                                      str r3, [r6, #4]
00596344  04 20 9d e5                                      ldr r2, [sp, #4]
00596348  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0059634c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00596350  01 20 82 e2                                      add r2, r2, #1
00596354  04 20 8d e5                                      str r2, [sp, #4]
00596358  05 60 86 e0                                      add r6, r6, r5
0059635c  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00596360  10 80 96 e5                                      ldr r8, [r6, #0x10]
00596364  14 70 96 e5                                      ldr r7, [r6, #0x14]
00596368  0a 00 a0 e1                                      mov r0, sl
0059636c  7e e2 f5 eb                                      bl #0x30ed6c
00596370  24 10 9d e5                                      ldr r1, [sp, #0x24]
00596374  00 90 a0 e1                                      mov sb, r0
00596378  08 00 a0 e1                                      mov r0, r8
0059637c  7a e2 f5 eb                                      bl #0x30ed6c
00596380  00 10 a0 e1                                      mov r1, r0
00596384  09 00 a0 e1                                      mov r0, sb
00596388  05 e2 f5 eb                                      bl #0x30eba4
0059638c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00596390  00 90 a0 e1                                      mov sb, r0
00596394  07 00 a0 e1                                      mov r0, r7
00596398  73 e2 f5 eb                                      bl #0x30ed6c
0059639c  00 10 a0 e1                                      mov r1, r0
005963a0  09 00 a0 e1                                      mov r0, sb
005963a4  fe e1 f5 eb                                      bl #0x30eba4
005963a8  44 10 9d e5                                      ldr r1, [sp, #0x44]
005963ac  fc e1 f5 eb                                      bl #0x30eba4
005963b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
005963b4  00 90 a0 e1                                      mov sb, r0
005963b8  0a 00 a0 e1                                      mov r0, sl
005963bc  6a e2 f5 eb                                      bl #0x30ed6c
005963c0  28 10 9d e5                                      ldr r1, [sp, #0x28]
005963c4  00 b0 a0 e1                                      mov fp, r0
005963c8  08 00 a0 e1                                      mov r0, r8
005963cc  66 e2 f5 eb                                      bl #0x30ed6c
005963d0  00 10 a0 e1                                      mov r1, r0
005963d4  0b 00 a0 e1                                      mov r0, fp
005963d8  f1 e1 f5 eb                                      bl #0x30eba4
005963dc  38 10 9d e5                                      ldr r1, [sp, #0x38]
005963e0  00 b0 a0 e1                                      mov fp, r0
005963e4  07 00 a0 e1                                      mov r0, r7
005963e8  5f e2 f5 eb                                      bl #0x30ed6c
005963ec  00 10 a0 e1                                      mov r1, r0
005963f0  0b 00 a0 e1                                      mov r0, fp
005963f4  ea e1 f5 eb                                      bl #0x30eba4
005963f8  48 10 9d e5                                      ldr r1, [sp, #0x48]
005963fc  e8 e1 f5 eb                                      bl #0x30eba4
00596400  10 10 9d e5                                      ldr r1, [sp, #0x10]
00596404  00 b0 a0 e1                                      mov fp, r0
00596408  0a 00 a0 e1                                      mov r0, sl
0059640c  56 e2 f5 eb                                      bl #0x30ed6c
00596410  20 10 9d e5                                      ldr r1, [sp, #0x20]
00596414  00 a0 a0 e1                                      mov sl, r0
00596418  08 00 a0 e1                                      mov r0, r8
0059641c  52 e2 f5 eb                                      bl #0x30ed6c
00596420  00 10 a0 e1                                      mov r1, r0
00596424  0a 00 a0 e1                                      mov r0, sl
00596428  dd e1 f5 eb                                      bl #0x30eba4
0059642c  30 10 9d e5                                      ldr r1, [sp, #0x30]
00596430  00 80 a0 e1                                      mov r8, r0
00596434  07 00 a0 e1                                      mov r0, r7
00596438  4b e2 f5 eb                                      bl #0x30ed6c
0059643c  00 10 a0 e1                                      mov r1, r0
00596440  08 00 a0 e1                                      mov r0, r8
00596444  d6 e1 f5 eb                                      bl #0x30eba4
00596448  40 10 9d e5                                      ldr r1, [sp, #0x40]
0059644c  d4 e1 f5 eb                                      bl #0x30eba4
00596450  0c 00 86 e5                                      str r0, [r6, #0xc]
00596454  14 b0 86 e5                                      str fp, [r6, #0x14]
00596458  10 90 86 e5                                      str sb, [r6, #0x10]
0059645c  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00596460  14 10 9d e5                                      ldr r1, [sp, #0x14]
00596464  05 60 86 e0                                      add r6, r6, r5
00596468  18 a0 96 e5                                      ldr sl, [r6, #0x18]
0059646c  1c 80 96 e5                                      ldr r8, [r6, #0x1c]
00596470  20 70 96 e5                                      ldr r7, [r6, #0x20]
00596474  0a 00 a0 e1                                      mov r0, sl
00596478  3b e2 f5 eb                                      bl #0x30ed6c
0059647c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00596480  00 90 a0 e1                                      mov sb, r0
00596484  08 00 a0 e1                                      mov r0, r8
00596488  37 e2 f5 eb                                      bl #0x30ed6c
0059648c  00 10 a0 e1                                      mov r1, r0
00596490  09 00 a0 e1                                      mov r0, sb
00596494  c2 e1 f5 eb                                      bl #0x30eba4
00596498  34 10 9d e5                                      ldr r1, [sp, #0x34]
0059649c  00 90 a0 e1                                      mov sb, r0
005964a0  07 00 a0 e1                                      mov r0, r7
005964a4  30 e2 f5 eb                                      bl #0x30ed6c
005964a8  00 10 a0 e1                                      mov r1, r0
005964ac  09 00 a0 e1                                      mov r0, sb
005964b0  bb e1 f5 eb                                      bl #0x30eba4
005964b4  44 10 9d e5                                      ldr r1, [sp, #0x44]
005964b8  b9 e1 f5 eb                                      bl #0x30eba4
005964bc  18 10 9d e5                                      ldr r1, [sp, #0x18]
005964c0  00 90 a0 e1                                      mov sb, r0
005964c4  0a 00 a0 e1                                      mov r0, sl
005964c8  27 e2 f5 eb                                      bl #0x30ed6c
005964cc  28 10 9d e5                                      ldr r1, [sp, #0x28]
005964d0  00 b0 a0 e1                                      mov fp, r0
005964d4  08 00 a0 e1                                      mov r0, r8
005964d8  23 e2 f5 eb                                      bl #0x30ed6c
005964dc  00 10 a0 e1                                      mov r1, r0
005964e0  0b 00 a0 e1                                      mov r0, fp
005964e4  ae e1 f5 eb                                      bl #0x30eba4
005964e8  38 10 9d e5                                      ldr r1, [sp, #0x38]
005964ec  00 b0 a0 e1                                      mov fp, r0
005964f0  07 00 a0 e1                                      mov r0, r7
005964f4  1c e2 f5 eb                                      bl #0x30ed6c
005964f8  00 10 a0 e1                                      mov r1, r0
005964fc  0b 00 a0 e1                                      mov r0, fp
00596500  a7 e1 f5 eb                                      bl #0x30eba4
00596504  48 10 9d e5                                      ldr r1, [sp, #0x48]
00596508  a5 e1 f5 eb                                      bl #0x30eba4
0059650c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00596510  00 b0 a0 e1                                      mov fp, r0
00596514  0a 00 a0 e1                                      mov r0, sl
00596518  13 e2 f5 eb                                      bl #0x30ed6c
0059651c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00596520  00 a0 a0 e1                                      mov sl, r0
00596524  08 00 a0 e1                                      mov r0, r8
00596528  0f e2 f5 eb                                      bl #0x30ed6c
0059652c  00 10 a0 e1                                      mov r1, r0
00596530  0a 00 a0 e1                                      mov r0, sl
00596534  9a e1 f5 eb                                      bl #0x30eba4
00596538  30 10 9d e5                                      ldr r1, [sp, #0x30]
0059653c  00 80 a0 e1                                      mov r8, r0
00596540  07 00 a0 e1                                      mov r0, r7
00596544  08 e2 f5 eb                                      bl #0x30ed6c
00596548  00 10 a0 e1                                      mov r1, r0
0059654c  08 00 a0 e1                                      mov r0, r8
00596550  93 e1 f5 eb                                      bl #0x30eba4
00596554  40 10 9d e5                                      ldr r1, [sp, #0x40]
00596558  91 e1 f5 eb                                      bl #0x30eba4
0059655c  04 30 9d e5                                      ldr r3, [sp, #4]
00596560  08 20 9d e5                                      ldr r2, [sp, #8]
00596564  24 50 85 e2                                      add r5, r5, #0x24
00596568  18 00 86 e5                                      str r0, [r6, #0x18]
0059656c  02 00 53 e1                                      cmp r3, r2
00596570  20 b0 86 e5                                      str fp, [r6, #0x20]
00596574  1c 90 86 e5                                      str sb, [r6, #0x1c]
00596578  2c ff ff 1a                                      bne #0x596230
0059657c  f3 fe ff ea                                      b #0x596150
00596580  08 10 a0 e1                                      mov r1, r8
00596584  0c 00 84 e2                                      add r0, r4, #0xc
00596588  b4 ea ff eb                                      bl #0x591060
0059658c  e9 fe ff ea                                      b #0x596138
; mapping-symbol data/literal pool
00596590  b8 eb 3f 00 c0 05 00 00                          .byte 0xb8, 0xeb, 0x3f, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00596598, declared_size=1744, range_size=1744, mode=arm
; class-group: glitch::scene::CTriangleSelector
; alias: _ZN6glitch5scene17CTriangleSelectorC2ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEPKNS0_10ISceneNodeEb
; demangled: glitch::scene::CTriangleSelector::CTriangleSelector(boost::intrusive_ptr<glitch::scene::IMesh const> const&, glitch::scene::ISceneNode const*, bool)
; decoder-mode: arm
00596598  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059659c  bc 86 9f e5                                      ldr r8, [pc, #0x6bc]
005965a0  bc 66 9f e5                                      ldr r6, [pc, #0x6bc]
005965a4  bf e4 a0 e3                                      mov lr, #0xbf000000
005965a8  08 80 8f e0                                      add r8, pc, r8
005965ac  06 60 98 e7                                      ldr r6, [r8, r6]
005965b0  00 40 a0 e1                                      mov r4, r0
005965b4  fe 55 a0 e3                                      mov r5, #0x3f800000
005965b8  00 c0 a0 e3                                      mov ip, #0
005965bc  02 e5 8e e2                                      add lr, lr, #0x800000
005965c0  08 00 86 e2                                      add r0, r6, #8
005965c4  01 a0 a0 e3                                      mov sl, #1
005965c8  00 60 a0 e3                                      mov r6, #0
005965cc  64 d0 4d e2                                      sub sp, sp, #0x64
005965d0  08 20 84 e5                                      str r2, [r4, #8]
005965d4  18 30 c4 e5                                      strb r3, [r4, #0x18]
005965d8  00 00 84 e5                                      str r0, [r4]
005965dc  40 c0 84 e5                                      str ip, [r4, #0x40]
005965e0  4c e0 84 e5                                      str lr, [r4, #0x4c]
005965e4  01 70 a0 e1                                      mov r7, r1
005965e8  1c c0 84 e5                                      str ip, [r4, #0x1c]
005965ec  20 c0 84 e5                                      str ip, [r4, #0x20]
005965f0  24 c0 84 e5                                      str ip, [r4, #0x24]
005965f4  38 c0 84 e5                                      str ip, [r4, #0x38]
005965f8  3c c0 84 e5                                      str ip, [r4, #0x3c]
005965fc  44 e0 84 e5                                      str lr, [r4, #0x44]
00596600  48 e0 84 e5                                      str lr, [r4, #0x48]
00596604  06 10 a0 e1                                      mov r1, r6
00596608  40 20 a0 e3                                      mov r2, #0x40
0059660c  04 a0 84 e5                                      str sl, [r4, #4]
00596610  0c 60 84 e5                                      str r6, [r4, #0xc]
00596614  10 60 84 e5                                      str r6, [r4, #0x10]
00596618  14 60 84 e5                                      str r6, [r4, #0x14]
0059661c  28 50 84 e5                                      str r5, [r4, #0x28]
00596620  2c 50 84 e5                                      str r5, [r4, #0x2c]
00596624  30 50 84 e5                                      str r5, [r4, #0x30]
00596628  50 50 84 e5                                      str r5, [r4, #0x50]
0059662c  54 50 84 e5                                      str r5, [r4, #0x54]
00596630  58 50 84 e5                                      str r5, [r4, #0x58]
00596634  9c 60 c4 e5                                      strb r6, [r4, #0x9c]
00596638  5c 00 84 e2                                      add r0, r4, #0x5c
0059663c  87 df f5 eb                                      bl #0x30e460
00596640  98 50 84 e5                                      str r5, [r4, #0x98]
00596644  9c a0 c4 e5                                      strb sl, [r4, #0x9c]
00596648  5c 50 84 e5                                      str r5, [r4, #0x5c]
0059664c  70 50 84 e5                                      str r5, [r4, #0x70]
00596650  84 50 84 e5                                      str r5, [r4, #0x84]
00596654  00 30 97 e5                                      ldr r3, [r7]
00596658  03 00 a0 e1                                      mov r0, r3
0059665c  00 30 93 e5                                      ldr r3, [r3]
00596660  0f e0 a0 e1                                      mov lr, pc
00596664  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00596668  00 80 50 e2                                      subs r8, r0, #0
0059666c  77 01 00 0a                                      beq #0x596c50
00596670  06 50 a0 e1                                      mov r5, r6
00596674  5c a0 8d e2                                      add sl, sp, #0x5c
00596678  00 30 97 e5                                      ldr r3, [r7]
0059667c  05 20 a0 e1                                      mov r2, r5
00596680  0a 00 a0 e1                                      mov r0, sl
00596684  03 10 a0 e1                                      mov r1, r3
00596688  00 30 93 e5                                      ldr r3, [r3]
0059668c  0f e0 a0 e1                                      mov lr, pc
00596690  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00596694  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00596698  01 50 85 e2                                      add r5, r5, #1
0059669c  20 30 90 e5                                      ldr r3, [r0, #0x20]
005966a0  03 60 86 e0                                      add r6, r6, r3
005966a4  b6 1b f6 eb                                      bl #0x31d584
005966a8  08 00 55 e1                                      cmp r5, r8
005966ac  f1 ff ff 1a                                      bne #0x596678
005966b0  ab 3a 0a e3                                      movw r3, #0xaaab
005966b4  aa 3a 4a e3                                      movt r3, #0xaaaa
005966b8  93 26 86 e0                                      umull r2, r6, r3, r6
005966bc  0c 30 84 e2                                      add r3, r4, #0xc
005966c0  a6 10 a0 e1                                      lsr r1, r6, #1
005966c4  03 00 a0 e1                                      mov r0, r3
005966c8  08 30 8d e5                                      str r3, [sp, #8]
005966cc  00 50 a0 e3                                      mov r5, #0
005966d0  62 ea ff eb                                      bl #0x591060
005966d4  54 20 8d e2                                      add r2, sp, #0x54
005966d8  10 30 8d e2                                      add r3, sp, #0x10
005966dc  58 a0 8d e2                                      add sl, sp, #0x58
005966e0  04 20 8d e5                                      str r2, [sp, #4]
005966e4  05 60 a0 e1                                      mov r6, r5
005966e8  0c 30 8d e5                                      str r3, [sp, #0xc]
005966ec  02 00 00 ea                                      b #0x5966fc
005966f0  01 50 85 e2                                      add r5, r5, #1
005966f4  08 00 55 e1                                      cmp r5, r8
005966f8  42 00 00 0a                                      beq #0x596808
005966fc  00 30 97 e5                                      ldr r3, [r7]
00596700  0a 00 a0 e1                                      mov r0, sl
00596704  05 20 a0 e1                                      mov r2, r5
00596708  03 10 a0 e1                                      mov r1, r3
0059670c  00 30 93 e5                                      ldr r3, [r3]
00596710  0f e0 a0 e1                                      mov lr, pc
00596714  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00596718  58 90 9d e5                                      ldr sb, [sp, #0x58]
0059671c  00 00 59 e3                                      cmp sb, #0
00596720  01 00 00 0a                                      beq #0x59672c
00596724  09 00 a0 e1                                      mov r0, sb
00596728  95 1b f6 eb                                      bl #0x31d584
0059672c  14 b0 99 e5                                      ldr fp, [sb, #0x14]
00596730  00 00 5b e3                                      cmp fp, #0
00596734  54 b0 8d e5                                      str fp, [sp, #0x54]
00596738  00 30 9b 15                                      ldrne r3, [fp]
0059673c  01 30 83 12                                      addne r3, r3, #1
00596740  00 30 8b 15                                      strne r3, [fp]
00596744  04 00 9d e5                                      ldr r0, [sp, #4]
00596748  54 b0 9d 15                                      ldrne fp, [sp, #0x54]
0059674c  0f 21 f7 eb                                      bl #0x35eb90
00596750  10 60 8d e5                                      str r6, [sp, #0x10]
00596754  14 60 8d e5                                      str r6, [sp, #0x14]
00596758  be 32 d9 e1                                      ldrh r3, [sb, #0x2e]
0059675c  06 00 53 e3                                      cmp r3, #6
00596760  e2 ff ff 1a                                      bne #0x5966f0
00596764  18 30 99 e5                                      ldr r3, [sb, #0x18]
00596768  00 00 53 e3                                      cmp r3, #0
0059676c  06 00 a0 01                                      moveq r0, r6
00596770  03 00 00 0a                                      beq #0x596784
00596774  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00596778  18 10 89 e2                                      add r1, sb, #0x18
0059677c  87 ea ff eb                                      bl #0x5911a0
00596780  14 00 9d e5                                      ldr r0, [sp, #0x14]
00596784  14 20 8b e2                                      add r2, fp, #0x14
00596788  ba 30 d2 e1                                      ldrh r3, [r2, #0xa]
0059678c  20 10 99 e5                                      ldr r1, [sb, #0x20]
00596790  06 00 53 e3                                      cmp r3, #6
00596794  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00596798  08 00 00 ea                                      b #0x5967c0
0059679c  05 00 00 ea                                      b #0x5967b8
005967a0  35 00 00 ea                                      b #0x59687c
005967a4  31 00 00 ea                                      b #0x596870
005967a8  2d 00 00 ea                                      b #0x596864
005967ac  29 00 00 ea                                      b #0x596858
005967b0  25 00 00 ea                                      b #0x59684c
005967b4  21 00 00 ea                                      b #0x596840
005967b8  08 30 9d e5                                      ldr r3, [sp, #8]
005967bc  a5 f1 ff eb                                      bl #0x592e58
005967c0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005967c4  00 00 53 e3                                      cmp r3, #0
005967c8  c8 ff ff 0a                                      beq #0x5966f0
005967cc  10 30 9d e5                                      ldr r3, [sp, #0x10]
005967d0  00 90 93 e5                                      ldr sb, [r3]
005967d4  13 30 d9 e5                                      ldrb r3, [sb, #0x13]
005967d8  1f 20 03 e2                                      and r2, r3, #0x1f
005967dc  01 00 52 e3                                      cmp r2, #1
005967e0  11 00 00 9a                                      bls #0x59682c
005967e4  01 20 42 e2                                      sub r2, r2, #1
005967e8  1f 30 c3 e3                                      bic r3, r3, #0x1f
005967ec  03 30 82 e1                                      orr r3, r2, r3
005967f0  13 30 c9 e5                                      strb r3, [sb, #0x13]
005967f4  01 50 85 e2                                      add r5, r5, #1
005967f8  08 00 55 e1                                      cmp r5, r8
005967fc  10 60 8d e5                                      str r6, [sp, #0x10]
00596800  14 60 8d e5                                      str r6, [sp, #0x14]
00596804  bc ff ff 1a                                      bne #0x5966fc
00596808  08 30 94 e5                                      ldr r3, [r4, #8]
0059680c  00 00 53 e3                                      cmp r3, #0
00596810  02 00 00 0a                                      beq #0x596820
00596814  18 20 d4 e5                                      ldrb r2, [r4, #0x18]
00596818  00 00 52 e3                                      cmp r2, #0
0059681c  1f 00 00 1a                                      bne #0x5968a0
00596820  04 00 a0 e1                                      mov r0, r4
00596824  64 d0 8d e2                                      add sp, sp, #0x64
00596828  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0059682c  12 30 d9 e5                                      ldrb r3, [sb, #0x12]
00596830  20 00 13 e3                                      tst r3, #0x20
00596834  13 00 00 1a                                      bne #0x596888
00596838  13 60 c9 e5                                      strb r6, [sb, #0x13]
0059683c  ec ff ff ea                                      b #0x5967f4
00596840  08 30 9d e5                                      ldr r3, [sp, #8]
00596844  3b ed ff eb                                      bl #0x591d38
00596848  dc ff ff ea                                      b #0x5967c0
0059684c  08 30 9d e5                                      ldr r3, [sp, #8]
00596850  14 ef ff eb                                      bl #0x5924a8
00596854  d9 ff ff ea                                      b #0x5967c0
00596858  08 30 9d e5                                      ldr r3, [sp, #8]
0059685c  2d fb ff eb                                      bl #0x595518
00596860  d6 ff ff ea                                      b #0x5967c0
00596864  08 30 9d e5                                      ldr r3, [sp, #8]
00596868  be f8 ff eb                                      bl #0x594b68
0059686c  d3 ff ff ea                                      b #0x5967c0
00596870  08 30 9d e5                                      ldr r3, [sp, #8]
00596874  4f f6 ff eb                                      bl #0x5941b8
00596878  d0 ff ff ea                                      b #0x5967c0
0059687c  08 30 9d e5                                      ldr r3, [sp, #8]
00596880  e0 f3 ff eb                                      bl #0x593808
00596884  cd ff ff ea                                      b #0x5967c0
00596888  00 30 99 e5                                      ldr r3, [sb]
0059688c  09 00 a0 e1                                      mov r0, sb
00596890  0f e0 a0 e1                                      mov lr, pc
00596894  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00596898  13 60 c9 e5                                      strb r6, [sb, #0x13]
0059689c  d4 ff ff ea                                      b #0x5967f4
005968a0  03 00 a0 e1                                      mov r0, r3
005968a4  00 30 93 e5                                      ldr r3, [r3]
005968a8  0f e0 a0 e1                                      mov lr, pc
005968ac  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005968b0  00 10 a0 e1                                      mov r1, r0
005968b4  10 00 8d e2                                      add r0, sp, #0x10
005968b8  e1 ea ff eb                                      bl #0x591444
005968bc  0c 70 94 e5                                      ldr r7, [r4, #0xc]
005968c0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005968c4  03 30 67 e0                                      rsb r3, r7, r3
005968c8  43 31 a0 e1                                      asr r3, r3, #2
005968cc  83 21 a0 e1                                      lsl r2, r3, #3
005968d0  02 20 63 e0                                      rsb r2, r3, r2
005968d4  02 23 82 e0                                      add r2, r2, r2, lsl #6
005968d8  82 21 83 e0                                      add r2, r3, r2, lsl #3
005968dc  82 17 a0 e1                                      lsl r1, r2, #0xf
005968e0  01 20 62 e0                                      rsb r2, r2, r1
005968e4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005968e8  00 00 52 e3                                      cmp r2, #0
005968ec  08 20 8d e5                                      str r2, [sp, #8]
005968f0  ca ff ff da                                      ble #0x596820
005968f4  00 50 a0 e3                                      mov r5, #0
005968f8  04 50 8d e5                                      str r5, [sp, #4]
005968fc  00 00 00 ea                                      b #0x596904
00596900  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00596904  05 90 97 e7                                      ldr sb, [r7, r5]
00596908  14 10 9d e5                                      ldr r1, [sp, #0x14]
0059690c  05 60 87 e0                                      add r6, r7, r5
00596910  09 00 a0 e1                                      mov r0, sb
00596914  14 e1 f5 eb                                      bl #0x30ed6c
00596918  04 a0 96 e5                                      ldr sl, [r6, #4]
0059691c  00 b0 a0 e1                                      mov fp, r0
00596920  24 10 9d e5                                      ldr r1, [sp, #0x24]
00596924  0a 00 a0 e1                                      mov r0, sl
00596928  0f e1 f5 eb                                      bl #0x30ed6c
0059692c  00 10 a0 e1                                      mov r1, r0
00596930  0b 00 a0 e1                                      mov r0, fp
00596934  9a e0 f5 eb                                      bl #0x30eba4
00596938  08 80 96 e5                                      ldr r8, [r6, #8]
0059693c  00 b0 a0 e1                                      mov fp, r0
00596940  34 10 9d e5                                      ldr r1, [sp, #0x34]
00596944  08 00 a0 e1                                      mov r0, r8
00596948  07 e1 f5 eb                                      bl #0x30ed6c
0059694c  00 10 a0 e1                                      mov r1, r0
00596950  0b 00 a0 e1                                      mov r0, fp
00596954  92 e0 f5 eb                                      bl #0x30eba4
00596958  44 10 9d e5                                      ldr r1, [sp, #0x44]
0059695c  90 e0 f5 eb                                      bl #0x30eba4
00596960  18 10 9d e5                                      ldr r1, [sp, #0x18]
00596964  00 30 a0 e1                                      mov r3, r0
00596968  09 00 a0 e1                                      mov r0, sb
0059696c  00 30 8d e5                                      str r3, [sp]
00596970  fd e0 f5 eb                                      bl #0x30ed6c
00596974  28 10 9d e5                                      ldr r1, [sp, #0x28]
00596978  00 b0 a0 e1                                      mov fp, r0
0059697c  0a 00 a0 e1                                      mov r0, sl
00596980  f9 e0 f5 eb                                      bl #0x30ed6c
00596984  00 10 a0 e1                                      mov r1, r0
00596988  0b 00 a0 e1                                      mov r0, fp
0059698c  84 e0 f5 eb                                      bl #0x30eba4
00596990  38 10 9d e5                                      ldr r1, [sp, #0x38]
00596994  00 b0 a0 e1                                      mov fp, r0
00596998  08 00 a0 e1                                      mov r0, r8
0059699c  f2 e0 f5 eb                                      bl #0x30ed6c
005969a0  00 10 a0 e1                                      mov r1, r0
005969a4  0b 00 a0 e1                                      mov r0, fp
005969a8  7d e0 f5 eb                                      bl #0x30eba4
005969ac  48 10 9d e5                                      ldr r1, [sp, #0x48]
005969b0  7b e0 f5 eb                                      bl #0x30eba4
005969b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
005969b8  00 b0 a0 e1                                      mov fp, r0
005969bc  09 00 a0 e1                                      mov r0, sb
005969c0  e9 e0 f5 eb                                      bl #0x30ed6c
005969c4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005969c8  00 90 a0 e1                                      mov sb, r0
005969cc  0a 00 a0 e1                                      mov r0, sl
005969d0  e5 e0 f5 eb                                      bl #0x30ed6c
005969d4  00 10 a0 e1                                      mov r1, r0
005969d8  09 00 a0 e1                                      mov r0, sb
005969dc  70 e0 f5 eb                                      bl #0x30eba4
005969e0  30 10 9d e5                                      ldr r1, [sp, #0x30]
005969e4  00 a0 a0 e1                                      mov sl, r0
005969e8  08 00 a0 e1                                      mov r0, r8
005969ec  de e0 f5 eb                                      bl #0x30ed6c
005969f0  00 10 a0 e1                                      mov r1, r0
005969f4  0a 00 a0 e1                                      mov r0, sl
005969f8  69 e0 f5 eb                                      bl #0x30eba4
005969fc  40 10 9d e5                                      ldr r1, [sp, #0x40]
00596a00  67 e0 f5 eb                                      bl #0x30eba4
00596a04  05 00 87 e7                                      str r0, [r7, r5]
00596a08  08 b0 86 e5                                      str fp, [r6, #8]
00596a0c  00 30 9d e5                                      ldr r3, [sp]
00596a10  04 30 86 e5                                      str r3, [r6, #4]
00596a14  04 20 9d e5                                      ldr r2, [sp, #4]
00596a18  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00596a1c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00596a20  01 20 82 e2                                      add r2, r2, #1
00596a24  04 20 8d e5                                      str r2, [sp, #4]
00596a28  05 60 86 e0                                      add r6, r6, r5
00596a2c  0c a0 96 e5                                      ldr sl, [r6, #0xc]
00596a30  10 80 96 e5                                      ldr r8, [r6, #0x10]
00596a34  14 70 96 e5                                      ldr r7, [r6, #0x14]
00596a38  0a 00 a0 e1                                      mov r0, sl
00596a3c  ca e0 f5 eb                                      bl #0x30ed6c
00596a40  24 10 9d e5                                      ldr r1, [sp, #0x24]
00596a44  00 90 a0 e1                                      mov sb, r0
00596a48  08 00 a0 e1                                      mov r0, r8
00596a4c  c6 e0 f5 eb                                      bl #0x30ed6c
00596a50  00 10 a0 e1                                      mov r1, r0
00596a54  09 00 a0 e1                                      mov r0, sb
00596a58  51 e0 f5 eb                                      bl #0x30eba4
00596a5c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00596a60  00 90 a0 e1                                      mov sb, r0
00596a64  07 00 a0 e1                                      mov r0, r7
00596a68  bf e0 f5 eb                                      bl #0x30ed6c
00596a6c  00 10 a0 e1                                      mov r1, r0
00596a70  09 00 a0 e1                                      mov r0, sb
00596a74  4a e0 f5 eb                                      bl #0x30eba4
00596a78  44 10 9d e5                                      ldr r1, [sp, #0x44]
00596a7c  48 e0 f5 eb                                      bl #0x30eba4
00596a80  18 10 9d e5                                      ldr r1, [sp, #0x18]
00596a84  00 90 a0 e1                                      mov sb, r0
00596a88  0a 00 a0 e1                                      mov r0, sl
00596a8c  b6 e0 f5 eb                                      bl #0x30ed6c
00596a90  28 10 9d e5                                      ldr r1, [sp, #0x28]
00596a94  00 b0 a0 e1                                      mov fp, r0
00596a98  08 00 a0 e1                                      mov r0, r8
00596a9c  b2 e0 f5 eb                                      bl #0x30ed6c
00596aa0  00 10 a0 e1                                      mov r1, r0
00596aa4  0b 00 a0 e1                                      mov r0, fp
00596aa8  3d e0 f5 eb                                      bl #0x30eba4
00596aac  38 10 9d e5                                      ldr r1, [sp, #0x38]
00596ab0  00 b0 a0 e1                                      mov fp, r0
00596ab4  07 00 a0 e1                                      mov r0, r7
00596ab8  ab e0 f5 eb                                      bl #0x30ed6c
00596abc  00 10 a0 e1                                      mov r1, r0
00596ac0  0b 00 a0 e1                                      mov r0, fp
00596ac4  36 e0 f5 eb                                      bl #0x30eba4
00596ac8  48 10 9d e5                                      ldr r1, [sp, #0x48]
00596acc  34 e0 f5 eb                                      bl #0x30eba4
00596ad0  10 10 9d e5                                      ldr r1, [sp, #0x10]
00596ad4  00 b0 a0 e1                                      mov fp, r0
00596ad8  0a 00 a0 e1                                      mov r0, sl
00596adc  a2 e0 f5 eb                                      bl #0x30ed6c
00596ae0  20 10 9d e5                                      ldr r1, [sp, #0x20]
00596ae4  00 a0 a0 e1                                      mov sl, r0
00596ae8  08 00 a0 e1                                      mov r0, r8
00596aec  9e e0 f5 eb                                      bl #0x30ed6c
00596af0  00 10 a0 e1                                      mov r1, r0
00596af4  0a 00 a0 e1                                      mov r0, sl
00596af8  29 e0 f5 eb                                      bl #0x30eba4
00596afc  30 10 9d e5                                      ldr r1, [sp, #0x30]
00596b00  00 80 a0 e1                                      mov r8, r0
00596b04  07 00 a0 e1                                      mov r0, r7
00596b08  97 e0 f5 eb                                      bl #0x30ed6c
00596b0c  00 10 a0 e1                                      mov r1, r0
00596b10  08 00 a0 e1                                      mov r0, r8
00596b14  22 e0 f5 eb                                      bl #0x30eba4
00596b18  40 10 9d e5                                      ldr r1, [sp, #0x40]
00596b1c  20 e0 f5 eb                                      bl #0x30eba4
00596b20  0c 00 86 e5                                      str r0, [r6, #0xc]
00596b24  14 b0 86 e5                                      str fp, [r6, #0x14]
00596b28  10 90 86 e5                                      str sb, [r6, #0x10]
00596b2c  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00596b30  14 10 9d e5                                      ldr r1, [sp, #0x14]
00596b34  05 60 86 e0                                      add r6, r6, r5
00596b38  18 a0 96 e5                                      ldr sl, [r6, #0x18]
00596b3c  1c 80 96 e5                                      ldr r8, [r6, #0x1c]
00596b40  20 70 96 e5                                      ldr r7, [r6, #0x20]
00596b44  0a 00 a0 e1                                      mov r0, sl
00596b48  87 e0 f5 eb                                      bl #0x30ed6c
00596b4c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00596b50  00 90 a0 e1                                      mov sb, r0
00596b54  08 00 a0 e1                                      mov r0, r8
00596b58  83 e0 f5 eb                                      bl #0x30ed6c
00596b5c  00 10 a0 e1                                      mov r1, r0
00596b60  09 00 a0 e1                                      mov r0, sb
00596b64  0e e0 f5 eb                                      bl #0x30eba4
00596b68  34 10 9d e5                                      ldr r1, [sp, #0x34]
00596b6c  00 90 a0 e1                                      mov sb, r0
00596b70  07 00 a0 e1                                      mov r0, r7
00596b74  7c e0 f5 eb                                      bl #0x30ed6c
00596b78  00 10 a0 e1                                      mov r1, r0
00596b7c  09 00 a0 e1                                      mov r0, sb
00596b80  07 e0 f5 eb                                      bl #0x30eba4
00596b84  44 10 9d e5                                      ldr r1, [sp, #0x44]
00596b88  05 e0 f5 eb                                      bl #0x30eba4
00596b8c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00596b90  00 90 a0 e1                                      mov sb, r0
00596b94  0a 00 a0 e1                                      mov r0, sl
00596b98  73 e0 f5 eb                                      bl #0x30ed6c
00596b9c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00596ba0  00 b0 a0 e1                                      mov fp, r0
00596ba4  08 00 a0 e1                                      mov r0, r8
00596ba8  6f e0 f5 eb                                      bl #0x30ed6c
00596bac  00 10 a0 e1                                      mov r1, r0
00596bb0  0b 00 a0 e1                                      mov r0, fp
00596bb4  fa df f5 eb                                      bl #0x30eba4
00596bb8  38 10 9d e5                                      ldr r1, [sp, #0x38]
00596bbc  00 b0 a0 e1                                      mov fp, r0
00596bc0  07 00 a0 e1                                      mov r0, r7
00596bc4  68 e0 f5 eb                                      bl #0x30ed6c
00596bc8  00 10 a0 e1                                      mov r1, r0
00596bcc  0b 00 a0 e1                                      mov r0, fp
00596bd0  f3 df f5 eb                                      bl #0x30eba4
00596bd4  48 10 9d e5                                      ldr r1, [sp, #0x48]
00596bd8  f1 df f5 eb                                      bl #0x30eba4
00596bdc  10 10 9d e5                                      ldr r1, [sp, #0x10]
00596be0  00 b0 a0 e1                                      mov fp, r0
00596be4  0a 00 a0 e1                                      mov r0, sl
00596be8  5f e0 f5 eb                                      bl #0x30ed6c
00596bec  20 10 9d e5                                      ldr r1, [sp, #0x20]
00596bf0  00 a0 a0 e1                                      mov sl, r0
00596bf4  08 00 a0 e1                                      mov r0, r8
00596bf8  5b e0 f5 eb                                      bl #0x30ed6c
00596bfc  00 10 a0 e1                                      mov r1, r0
00596c00  0a 00 a0 e1                                      mov r0, sl
00596c04  e6 df f5 eb                                      bl #0x30eba4
00596c08  30 10 9d e5                                      ldr r1, [sp, #0x30]
00596c0c  00 80 a0 e1                                      mov r8, r0
00596c10  07 00 a0 e1                                      mov r0, r7
00596c14  54 e0 f5 eb                                      bl #0x30ed6c
00596c18  00 10 a0 e1                                      mov r1, r0
00596c1c  08 00 a0 e1                                      mov r0, r8
00596c20  df df f5 eb                                      bl #0x30eba4
00596c24  40 10 9d e5                                      ldr r1, [sp, #0x40]
00596c28  dd df f5 eb                                      bl #0x30eba4
00596c2c  04 30 9d e5                                      ldr r3, [sp, #4]
00596c30  08 20 9d e5                                      ldr r2, [sp, #8]
00596c34  24 50 85 e2                                      add r5, r5, #0x24
00596c38  18 00 86 e5                                      str r0, [r6, #0x18]
00596c3c  02 00 53 e1                                      cmp r3, r2
00596c40  20 b0 86 e5                                      str fp, [r6, #0x20]
00596c44  1c 90 86 e5                                      str sb, [r6, #0x1c]
00596c48  2c ff ff 1a                                      bne #0x596900
00596c4c  f3 fe ff ea                                      b #0x596820
00596c50  08 10 a0 e1                                      mov r1, r8
00596c54  0c 00 84 e2                                      add r0, r4, #0xc
00596c58  00 e9 ff eb                                      bl #0x591060
00596c5c  e9 fe ff ea                                      b #0x596808
; mapping-symbol data/literal pool
00596c60  e8 e4 3f 00 c0 05 00 00                          .byte 0xe8, 0xe4, 0x3f, 0x00, 0xc0, 0x05, 0x00, 0x00
