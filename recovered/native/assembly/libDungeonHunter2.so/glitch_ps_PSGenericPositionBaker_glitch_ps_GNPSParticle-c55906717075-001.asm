; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00638954, declared_size=1024, range_size=1024, mode=arm
; class-group: glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps22PSGenericPositionBakerINS0_12GNPSParticleEE21convertVertexPositionEPKS2_jjRKNS_5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEEE
; demangled: glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::convertVertexPosition(glitch::ps::GNPSParticle const*, unsigned int, unsigned int, glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> > const&)
; decoder-mode: arm
00638954  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00638958  00 20 93 e5                                      ldr r2, [r3]
0063895c  e0 83 9f e5                                      ldr r8, [pc, #0x3e0]
00638960  04 70 93 e5                                      ldr r7, [r3, #4]
00638964  be 60 d2 e1                                      ldrh r6, [r2, #0xe]
00638968  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
0063896c  08 80 8f e0                                      add r8, pc, r8
00638970  96 01 06 e0                                      mul r6, r6, r1
00638974  03 b0 98 e7                                      ldr fp, [r8, r3]
00638978  06 90 97 e7                                      ldr sb, [r7, r6]
0063897c  1c d0 4d e2                                      sub sp, sp, #0x1c
00638980  00 50 9b e5                                      ldr r5, [fp]
00638984  14 00 8d e5                                      str r0, [sp, #0x14]
00638988  09 00 a0 e1                                      mov r0, sb
0063898c  00 10 95 e5                                      ldr r1, [r5]
00638990  f5 58 f3 eb                                      bl #0x30ed6c
00638994  06 40 87 e0                                      add r4, r7, r6
00638998  04 a0 94 e5                                      ldr sl, [r4, #4]
0063899c  10 10 95 e5                                      ldr r1, [r5, #0x10]
006389a0  00 30 a0 e1                                      mov r3, r0
006389a4  0a 00 a0 e1                                      mov r0, sl
006389a8  04 30 8d e5                                      str r3, [sp, #4]
006389ac  ee 58 f3 eb                                      bl #0x30ed6c
006389b0  04 30 9d e5                                      ldr r3, [sp, #4]
006389b4  00 10 a0 e1                                      mov r1, r0
006389b8  03 00 a0 e1                                      mov r0, r3
006389bc  78 58 f3 eb                                      bl #0x30eba4
006389c0  20 10 95 e5                                      ldr r1, [r5, #0x20]
006389c4  00 30 a0 e1                                      mov r3, r0
006389c8  08 00 94 e5                                      ldr r0, [r4, #8]
006389cc  04 30 8d e5                                      str r3, [sp, #4]
006389d0  e5 58 f3 eb                                      bl #0x30ed6c
006389d4  04 30 9d e5                                      ldr r3, [sp, #4]
006389d8  00 10 a0 e1                                      mov r1, r0
006389dc  03 00 a0 e1                                      mov r0, r3
006389e0  6f 58 f3 eb                                      bl #0x30eba4
006389e4  30 10 95 e5                                      ldr r1, [r5, #0x30]
006389e8  6d 58 f3 eb                                      bl #0x30eba4
006389ec  04 10 95 e5                                      ldr r1, [r5, #4]
006389f0  00 30 a0 e1                                      mov r3, r0
006389f4  09 00 a0 e1                                      mov r0, sb
006389f8  04 30 8d e5                                      str r3, [sp, #4]
006389fc  da 58 f3 eb                                      bl #0x30ed6c
00638a00  14 10 95 e5                                      ldr r1, [r5, #0x14]
00638a04  00 20 a0 e1                                      mov r2, r0
00638a08  0a 00 a0 e1                                      mov r0, sl
00638a0c  08 20 8d e5                                      str r2, [sp, #8]
00638a10  d5 58 f3 eb                                      bl #0x30ed6c
00638a14  08 20 9d e5                                      ldr r2, [sp, #8]
00638a18  00 10 a0 e1                                      mov r1, r0
00638a1c  02 00 a0 e1                                      mov r0, r2
00638a20  5f 58 f3 eb                                      bl #0x30eba4
00638a24  24 10 95 e5                                      ldr r1, [r5, #0x24]
00638a28  00 20 a0 e1                                      mov r2, r0
00638a2c  08 00 94 e5                                      ldr r0, [r4, #8]
00638a30  08 20 8d e5                                      str r2, [sp, #8]
00638a34  cc 58 f3 eb                                      bl #0x30ed6c
00638a38  08 20 9d e5                                      ldr r2, [sp, #8]
00638a3c  00 10 a0 e1                                      mov r1, r0
00638a40  02 00 a0 e1                                      mov r0, r2
00638a44  56 58 f3 eb                                      bl #0x30eba4
00638a48  34 10 95 e5                                      ldr r1, [r5, #0x34]
00638a4c  54 58 f3 eb                                      bl #0x30eba4
00638a50  10 00 8d e5                                      str r0, [sp, #0x10]
00638a54  08 10 95 e5                                      ldr r1, [r5, #8]
00638a58  09 00 a0 e1                                      mov r0, sb
00638a5c  c2 58 f3 eb                                      bl #0x30ed6c
00638a60  18 10 95 e5                                      ldr r1, [r5, #0x18]
00638a64  00 90 a0 e1                                      mov sb, r0
00638a68  0a 00 a0 e1                                      mov r0, sl
00638a6c  be 58 f3 eb                                      bl #0x30ed6c
00638a70  00 10 a0 e1                                      mov r1, r0
00638a74  09 00 a0 e1                                      mov r0, sb
00638a78  49 58 f3 eb                                      bl #0x30eba4
00638a7c  28 10 95 e5                                      ldr r1, [r5, #0x28]
00638a80  00 a0 a0 e1                                      mov sl, r0
00638a84  08 00 94 e5                                      ldr r0, [r4, #8]
00638a88  b7 58 f3 eb                                      bl #0x30ed6c
00638a8c  00 10 a0 e1                                      mov r1, r0
00638a90  0a 00 a0 e1                                      mov r0, sl
00638a94  42 58 f3 eb                                      bl #0x30eba4
00638a98  38 10 95 e5                                      ldr r1, [r5, #0x38]
00638a9c  40 58 f3 eb                                      bl #0x30eba4
00638aa0  04 30 9d e5                                      ldr r3, [sp, #4]
00638aa4  00 50 a0 e1                                      mov r5, r0
00638aa8  06 30 87 e7                                      str r3, [r7, r6]
00638aac  10 20 9d e5                                      ldr r2, [sp, #0x10]
00638ab0  08 00 84 e5                                      str r0, [r4, #8]
00638ab4  03 00 a0 e1                                      mov r0, r3
00638ab8  04 20 84 e5                                      str r2, [r4, #4]
00638abc  00 20 9b e5                                      ldr r2, [fp]
00638ac0  38 30 92 e5                                      ldr r3, [r2, #0x38]
00638ac4  30 10 92 e5                                      ldr r1, [r2, #0x30]
00638ac8  34 a0 92 e5                                      ldr sl, [r2, #0x34]
00638acc  04 30 8d e5                                      str r3, [sp, #4]
00638ad0  35 56 f3 eb                                      bl #0x30e3ac
00638ad4  06 00 87 e7                                      str r0, [r7, r6]
00638ad8  00 b0 a0 e1                                      mov fp, r0
00638adc  0a 10 a0 e1                                      mov r1, sl
00638ae0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00638ae4  30 56 f3 eb                                      bl #0x30e3ac
00638ae8  04 30 9d e5                                      ldr r3, [sp, #4]
00638aec  00 90 a0 e1                                      mov sb, r0
00638af0  04 00 84 e5                                      str r0, [r4, #4]
00638af4  03 10 a0 e1                                      mov r1, r3
00638af8  05 00 a0 e1                                      mov r0, r5
00638afc  2a 56 f3 eb                                      bl #0x30e3ac
00638b00  44 32 9f e5                                      ldr r3, [pc, #0x244]
00638b04  08 00 84 e5                                      str r0, [r4, #8]
00638b08  00 a0 a0 e1                                      mov sl, r0
00638b0c  03 50 98 e7                                      ldr r5, [r8, r3]
00638b10  0b 00 a0 e1                                      mov r0, fp
00638b14  00 10 95 e5                                      ldr r1, [r5]
00638b18  93 58 f3 eb                                      bl #0x30ed6c
00638b1c  10 10 95 e5                                      ldr r1, [r5, #0x10]
00638b20  00 30 a0 e1                                      mov r3, r0
00638b24  09 00 a0 e1                                      mov r0, sb
00638b28  04 30 8d e5                                      str r3, [sp, #4]
00638b2c  8e 58 f3 eb                                      bl #0x30ed6c
00638b30  04 30 9d e5                                      ldr r3, [sp, #4]
00638b34  00 10 a0 e1                                      mov r1, r0
00638b38  03 00 a0 e1                                      mov r0, r3
00638b3c  18 58 f3 eb                                      bl #0x30eba4
00638b40  20 10 95 e5                                      ldr r1, [r5, #0x20]
00638b44  00 30 a0 e1                                      mov r3, r0
00638b48  0a 00 a0 e1                                      mov r0, sl
00638b4c  04 30 8d e5                                      str r3, [sp, #4]
00638b50  85 58 f3 eb                                      bl #0x30ed6c
00638b54  04 30 9d e5                                      ldr r3, [sp, #4]
00638b58  00 10 a0 e1                                      mov r1, r0
00638b5c  03 00 a0 e1                                      mov r0, r3
00638b60  0f 58 f3 eb                                      bl #0x30eba4
00638b64  0c 00 8d e5                                      str r0, [sp, #0xc]
00638b68  06 00 87 e7                                      str r0, [r7, r6]
00638b6c  04 10 95 e5                                      ldr r1, [r5, #4]
00638b70  0b 00 a0 e1                                      mov r0, fp
00638b74  7c 58 f3 eb                                      bl #0x30ed6c
00638b78  14 10 95 e5                                      ldr r1, [r5, #0x14]
00638b7c  00 30 a0 e1                                      mov r3, r0
00638b80  09 00 a0 e1                                      mov r0, sb
00638b84  04 30 8d e5                                      str r3, [sp, #4]
00638b88  77 58 f3 eb                                      bl #0x30ed6c
00638b8c  04 30 9d e5                                      ldr r3, [sp, #4]
00638b90  00 10 a0 e1                                      mov r1, r0
00638b94  03 00 a0 e1                                      mov r0, r3
00638b98  01 58 f3 eb                                      bl #0x30eba4
00638b9c  24 10 95 e5                                      ldr r1, [r5, #0x24]
00638ba0  00 30 a0 e1                                      mov r3, r0
00638ba4  0a 00 a0 e1                                      mov r0, sl
00638ba8  04 30 8d e5                                      str r3, [sp, #4]
00638bac  6e 58 f3 eb                                      bl #0x30ed6c
00638bb0  04 30 9d e5                                      ldr r3, [sp, #4]
00638bb4  00 10 a0 e1                                      mov r1, r0
00638bb8  03 00 a0 e1                                      mov r0, r3
00638bbc  f8 57 f3 eb                                      bl #0x30eba4
00638bc0  10 00 8d e5                                      str r0, [sp, #0x10]
00638bc4  04 00 84 e5                                      str r0, [r4, #4]
00638bc8  08 10 95 e5                                      ldr r1, [r5, #8]
00638bcc  0b 00 a0 e1                                      mov r0, fp
00638bd0  65 58 f3 eb                                      bl #0x30ed6c
00638bd4  18 10 95 e5                                      ldr r1, [r5, #0x18]
00638bd8  00 b0 a0 e1                                      mov fp, r0
00638bdc  09 00 a0 e1                                      mov r0, sb
00638be0  61 58 f3 eb                                      bl #0x30ed6c
00638be4  00 10 a0 e1                                      mov r1, r0
00638be8  0b 00 a0 e1                                      mov r0, fp
00638bec  ec 57 f3 eb                                      bl #0x30eba4
00638bf0  28 10 95 e5                                      ldr r1, [r5, #0x28]
00638bf4  00 90 a0 e1                                      mov sb, r0
00638bf8  0a 00 a0 e1                                      mov r0, sl
00638bfc  5a 58 f3 eb                                      bl #0x30ed6c
00638c00  00 10 a0 e1                                      mov r1, r0
00638c04  09 00 a0 e1                                      mov r0, sb
00638c08  e5 57 f3 eb                                      bl #0x30eba4
00638c0c  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00638c10  08 00 84 e5                                      str r0, [r4, #8]
00638c14  00 a0 a0 e1                                      mov sl, r0
00638c18  03 50 98 e7                                      ldr r5, [r8, r3]
00638c1c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00638c20  00 10 95 e5                                      ldr r1, [r5]
00638c24  50 58 f3 eb                                      bl #0x30ed6c
00638c28  10 10 95 e5                                      ldr r1, [r5, #0x10]
00638c2c  00 80 a0 e1                                      mov r8, r0
00638c30  10 00 9d e5                                      ldr r0, [sp, #0x10]
00638c34  4c 58 f3 eb                                      bl #0x30ed6c
00638c38  00 10 a0 e1                                      mov r1, r0
00638c3c  08 00 a0 e1                                      mov r0, r8
00638c40  d7 57 f3 eb                                      bl #0x30eba4
00638c44  20 10 95 e5                                      ldr r1, [r5, #0x20]
00638c48  00 80 a0 e1                                      mov r8, r0
00638c4c  0a 00 a0 e1                                      mov r0, sl
00638c50  45 58 f3 eb                                      bl #0x30ed6c
00638c54  00 10 a0 e1                                      mov r1, r0
00638c58  08 00 a0 e1                                      mov r0, r8
00638c5c  d0 57 f3 eb                                      bl #0x30eba4
00638c60  06 00 87 e7                                      str r0, [r7, r6]
00638c64  04 10 95 e5                                      ldr r1, [r5, #4]
00638c68  00 80 a0 e1                                      mov r8, r0
00638c6c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00638c70  3d 58 f3 eb                                      bl #0x30ed6c
00638c74  14 10 95 e5                                      ldr r1, [r5, #0x14]
00638c78  00 90 a0 e1                                      mov sb, r0
00638c7c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00638c80  39 58 f3 eb                                      bl #0x30ed6c
00638c84  00 10 a0 e1                                      mov r1, r0
00638c88  09 00 a0 e1                                      mov r0, sb
00638c8c  c4 57 f3 eb                                      bl #0x30eba4
00638c90  24 10 95 e5                                      ldr r1, [r5, #0x24]
00638c94  00 90 a0 e1                                      mov sb, r0
00638c98  0a 00 a0 e1                                      mov r0, sl
00638c9c  32 58 f3 eb                                      bl #0x30ed6c
00638ca0  00 10 a0 e1                                      mov r1, r0
00638ca4  09 00 a0 e1                                      mov r0, sb
00638ca8  bd 57 f3 eb                                      bl #0x30eba4
00638cac  04 00 84 e5                                      str r0, [r4, #4]
00638cb0  00 90 a0 e1                                      mov sb, r0
00638cb4  08 10 95 e5                                      ldr r1, [r5, #8]
00638cb8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00638cbc  2a 58 f3 eb                                      bl #0x30ed6c
00638cc0  18 10 95 e5                                      ldr r1, [r5, #0x18]
00638cc4  00 b0 a0 e1                                      mov fp, r0
00638cc8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00638ccc  26 58 f3 eb                                      bl #0x30ed6c
00638cd0  00 10 a0 e1                                      mov r1, r0
00638cd4  0b 00 a0 e1                                      mov r0, fp
00638cd8  b1 57 f3 eb                                      bl #0x30eba4
00638cdc  28 10 95 e5                                      ldr r1, [r5, #0x28]
00638ce0  00 b0 a0 e1                                      mov fp, r0
00638ce4  0a 00 a0 e1                                      mov r0, sl
00638ce8  1f 58 f3 eb                                      bl #0x30ed6c
00638cec  00 10 a0 e1                                      mov r1, r0
00638cf0  0b 00 a0 e1                                      mov r0, fp
00638cf4  aa 57 f3 eb                                      bl #0x30eba4
00638cf8  08 00 84 e5                                      str r0, [r4, #8]
00638cfc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00638d00  00 50 a0 e1                                      mov r5, r0
00638d04  08 00 a0 e1                                      mov r0, r8
00638d08  00 10 93 e5                                      ldr r1, [r3]
00638d0c  a4 57 f3 eb                                      bl #0x30eba4
00638d10  06 00 87 e7                                      str r0, [r7, r6]
00638d14  14 20 9d e5                                      ldr r2, [sp, #0x14]
00638d18  09 00 a0 e1                                      mov r0, sb
00638d1c  04 10 92 e5                                      ldr r1, [r2, #4]
00638d20  9f 57 f3 eb                                      bl #0x30eba4
00638d24  04 00 84 e5                                      str r0, [r4, #4]
00638d28  14 30 9d e5                                      ldr r3, [sp, #0x14]
00638d2c  05 00 a0 e1                                      mov r0, r5
00638d30  08 10 93 e5                                      ldr r1, [r3, #8]
00638d34  9a 57 f3 eb                                      bl #0x30eba4
00638d38  08 00 84 e5                                      str r0, [r4, #8]
00638d3c  1c d0 8d e2                                      add sp, sp, #0x1c
00638d40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00638d44  24 c1 35 00 a8 3c 00 00 9c 13 00 00 10 2e 00 00  .byte 0x24, 0xc1, 0x35, 0x00, 0xa8, 0x3c, 0x00, 0x00, 0x9c, 0x13, 0x00, 0x00, 0x10, 0x2e, 0x00, 0x00

; FUNCTION 0x0063c800, declared_size=552, range_size=552, mode=arm
; class-group: glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps22PSGenericPositionBakerINS0_12GNPSParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_
; demangled: glitch::ps::PSGenericPositionBaker<glitch::ps::GNPSParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*, glitch::ps::GNPSParticle const*)
; decoder-mode: arm
0063c800  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063c804  14 70 91 e5                                      ldr r7, [r1, #0x14]
0063c808  10 60 91 e5                                      ldr r6, [r1, #0x10]
0063c80c  64 d0 4d e2                                      sub sp, sp, #0x64
0063c810  01 40 a0 e1                                      mov r4, r1
0063c814  07 00 a0 e1                                      mov r0, r7
0063c818  02 11 a0 e3                                      mov r1, #0x80000000
0063c81c  52 49 f3 eb                                      bl #0x30ed6c
0063c820  06 10 a0 e1                                      mov r1, r6
0063c824  de 48 f3 eb                                      bl #0x30eba4
0063c828  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0063c82c  00 10 a0 e3                                      mov r1, #0
0063c830  54 00 8d e5                                      str r0, [sp, #0x54]
0063c834  07 00 a0 e1                                      mov r0, r7
0063c838  4b 49 f3 eb                                      bl #0x30ed6c
0063c83c  02 71 85 e2                                      add r7, r5, #0x80000000
0063c840  00 10 a0 e1                                      mov r1, r0
0063c844  07 00 a0 e1                                      mov r0, r7
0063c848  d5 48 f3 eb                                      bl #0x30eba4
0063c84c  02 11 a0 e3                                      mov r1, #0x80000000
0063c850  58 00 8d e5                                      str r0, [sp, #0x58]
0063c854  06 00 a0 e1                                      mov r0, r6
0063c858  43 49 f3 eb                                      bl #0x30ed6c
0063c85c  00 10 a0 e3                                      mov r1, #0
0063c860  00 60 a0 e1                                      mov r6, r0
0063c864  05 00 a0 e1                                      mov r0, r5
0063c868  3f 49 f3 eb                                      bl #0x30ed6c
0063c86c  00 10 a0 e1                                      mov r1, r0
0063c870  06 00 a0 e1                                      mov r0, r6
0063c874  ca 48 f3 eb                                      bl #0x30eba4
0063c878  5c 00 8d e5                                      str r0, [sp, #0x5c]
0063c87c  54 00 8d e2                                      add r0, sp, #0x54
0063c880  16 88 f4 eb                                      bl #0x35e8e0
0063c884  00 20 a0 e1                                      mov r2, r0
0063c888  08 c0 92 e5                                      ldr ip, [r2, #8]
0063c88c  00 30 92 e5                                      ldr r3, [r2]
0063c890  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0063c894  04 20 92 e5                                      ldr r2, [r2, #4]
0063c898  10 e0 94 e5                                      ldr lr, [r4, #0x10]
0063c89c  14 10 94 e5                                      ldr r1, [r4, #0x14]
0063c8a0  48 00 8d e2                                      add r0, sp, #0x48
0063c8a4  08 20 8d e5                                      str r2, [sp, #8]
0063c8a8  0c 30 8d e5                                      str r3, [sp, #0xc]
0063c8ac  04 c0 8d e5                                      str ip, [sp, #4]
0063c8b0  48 50 8d e5                                      str r5, [sp, #0x48]
0063c8b4  4c e0 8d e5                                      str lr, [sp, #0x4c]
0063c8b8  50 10 8d e5                                      str r1, [sp, #0x50]
0063c8bc  07 88 f4 eb                                      bl #0x35e8e0
0063c8c0  00 e0 a0 e1                                      mov lr, r0
0063c8c4  00 00 90 e5                                      ldr r0, [r0]
0063c8c8  00 10 a0 e3                                      mov r1, #0
0063c8cc  01 50 a0 e1                                      mov r5, r1
0063c8d0  48 00 8d e5                                      str r0, [sp, #0x48]
0063c8d4  04 90 9e e5                                      ldr sb, [lr, #4]
0063c8d8  20 80 8d e2                                      add r8, sp, #0x20
0063c8dc  fe 75 a0 e3                                      mov r7, #0x3f800000
0063c8e0  4c 90 8d e5                                      str sb, [sp, #0x4c]
0063c8e4  08 a0 9e e5                                      ldr sl, [lr, #8]
0063c8e8  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
0063c8ec  50 a0 8d e5                                      str sl, [sp, #0x50]
0063c8f0  1d 49 f3 eb                                      bl #0x30ed6c
0063c8f4  05 10 a0 e1                                      mov r1, r5
0063c8f8  00 b0 a0 e1                                      mov fp, r0
0063c8fc  09 00 a0 e1                                      mov r0, sb
0063c900  19 49 f3 eb                                      bl #0x30ed6c
0063c904  00 10 a0 e1                                      mov r1, r0
0063c908  0b 00 a0 e1                                      mov r0, fp
0063c90c  a4 48 f3 eb                                      bl #0x30eba4
0063c910  00 10 a0 e1                                      mov r1, r0
0063c914  0a 00 a0 e1                                      mov r0, sl
0063c918  a1 48 f3 eb                                      bl #0x30eba4
0063c91c  ae 46 f3 eb                                      bl #0x30e3dc
0063c920  08 20 9d e5                                      ldr r2, [sp, #8]
0063c924  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0063c928  04 c0 9d e5                                      ldr ip, [sp, #4]
0063c92c  02 e1 82 e2                                      add lr, r2, #0x80000000
0063c930  00 10 a0 e1                                      mov r1, r0
0063c934  02 c1 8c e2                                      add ip, ip, #0x80000000
0063c938  02 31 83 e2                                      add r3, r3, #0x80000000
0063c93c  3c 20 8d e2                                      add r2, sp, #0x3c
0063c940  08 00 a0 e1                                      mov r0, r8
0063c944  40 e0 8d e5                                      str lr, [sp, #0x40]
0063c948  44 c0 8d e5                                      str ip, [sp, #0x44]
0063c94c  3c 30 8d e5                                      str r3, [sp, #0x3c]
0063c950  20 50 8d e5                                      str r5, [sp, #0x20]
0063c954  24 50 8d e5                                      str r5, [sp, #0x24]
0063c958  28 50 8d e5                                      str r5, [sp, #0x28]
0063c95c  2c 70 8d e5                                      str r7, [sp, #0x2c]
0063c960  15 41 ff eb                                      bl #0x60cdbc
0063c964  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0063c968  06 60 8f e0                                      add r6, pc, r6
0063c96c  08 00 a0 e1                                      mov r0, r8
0063c970  03 10 96 e7                                      ldr r1, [r6, r3]
0063c974  02 d8 f7 eb                                      bl #0x432984
0063c978  70 80 94 e5                                      ldr r8, [r4, #0x70]
0063c97c  05 10 a0 e1                                      mov r1, r5
0063c980  1c 70 8d e5                                      str r7, [sp, #0x1c]
0063c984  08 00 a0 e1                                      mov r0, r8
0063c988  10 50 8d e5                                      str r5, [sp, #0x10]
0063c98c  14 50 8d e5                                      str r5, [sp, #0x14]
0063c990  18 50 8d e5                                      str r5, [sp, #0x18]
0063c994  57 46 f3 eb                                      bl #0x30e2f8
0063c998  00 00 50 e3                                      cmp r0, #0
0063c99c  13 00 00 0a                                      beq #0x63c9f0
0063c9a0  74 70 94 e5                                      ldr r7, [r4, #0x74]
0063c9a4  05 10 a0 e1                                      mov r1, r5
0063c9a8  07 00 a0 e1                                      mov r0, r7
0063c9ac  51 46 f3 eb                                      bl #0x30e2f8
0063c9b0  00 00 50 e3                                      cmp r0, #0
0063c9b4  0f 00 00 1a                                      bne #0x63c9f8
0063c9b8  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
0063c9bc  78 30 94 e5                                      ldr r3, [r4, #0x78]
0063c9c0  30 70 8d e5                                      str r7, [sp, #0x30]
0063c9c4  38 20 8d e5                                      str r2, [sp, #0x38]
0063c9c8  34 30 8d e5                                      str r3, [sp, #0x34]
0063c9cc  10 40 8d e2                                      add r4, sp, #0x10
0063c9d0  08 10 a0 e1                                      mov r1, r8
0063c9d4  04 00 a0 e1                                      mov r0, r4
0063c9d8  30 20 8d e2                                      add r2, sp, #0x30
0063c9dc  f6 40 ff eb                                      bl #0x60cdbc
0063c9e0  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0063c9e4  04 00 a0 e1                                      mov r0, r4
0063c9e8  03 10 96 e7                                      ldr r1, [r6, r3]
0063c9ec  e4 d7 f7 eb                                      bl #0x432984
0063c9f0  64 d0 8d e2                                      add sp, sp, #0x64
0063c9f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063c9f8  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
0063c9fc  78 20 94 e5                                      ldr r2, [r4, #0x78]
0063ca00  02 71 87 e2                                      add r7, r7, #0x80000000
0063ca04  02 31 83 e2                                      add r3, r3, #0x80000000
0063ca08  02 21 82 e2                                      add r2, r2, #0x80000000
0063ca0c  30 70 8d e5                                      str r7, [sp, #0x30]
0063ca10  34 20 8d e5                                      str r2, [sp, #0x34]
0063ca14  38 30 8d e5                                      str r3, [sp, #0x38]
0063ca18  eb ff ff ea                                      b #0x63c9cc
; mapping-symbol data/literal pool
0063ca1c  28 81 35 00 10 2e 00 00 9c 13 00 00              .byte 0x28, 0x81, 0x35, 0x00, 0x10, 0x2e, 0x00, 0x00, 0x9c, 0x13, 0x00, 0x00
