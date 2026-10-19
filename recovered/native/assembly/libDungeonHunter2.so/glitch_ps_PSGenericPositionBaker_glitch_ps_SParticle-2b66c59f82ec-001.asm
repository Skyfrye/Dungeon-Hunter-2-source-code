; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064c674, declared_size=1024, range_size=1024, mode=arm
; class-group: glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>
; alias: _ZN6glitch2ps22PSGenericPositionBakerINS0_9SParticleEE21convertVertexPositionEPKS2_jjRKNS_5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEEE
; demangled: glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::convertVertexPosition(glitch::ps::SParticle const*, unsigned int, unsigned int, glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> > const&)
; decoder-mode: arm
0064c674  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064c678  00 20 93 e5                                      ldr r2, [r3]
0064c67c  e0 83 9f e5                                      ldr r8, [pc, #0x3e0]
0064c680  04 70 93 e5                                      ldr r7, [r3, #4]
0064c684  be 60 d2 e1                                      ldrh r6, [r2, #0xe]
0064c688  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
0064c68c  08 80 8f e0                                      add r8, pc, r8
0064c690  96 01 06 e0                                      mul r6, r6, r1
0064c694  03 b0 98 e7                                      ldr fp, [r8, r3]
0064c698  06 90 97 e7                                      ldr sb, [r7, r6]
0064c69c  1c d0 4d e2                                      sub sp, sp, #0x1c
0064c6a0  00 50 9b e5                                      ldr r5, [fp]
0064c6a4  14 00 8d e5                                      str r0, [sp, #0x14]
0064c6a8  09 00 a0 e1                                      mov r0, sb
0064c6ac  00 10 95 e5                                      ldr r1, [r5]
0064c6b0  ad 09 f3 eb                                      bl #0x30ed6c
0064c6b4  06 40 87 e0                                      add r4, r7, r6
0064c6b8  04 a0 94 e5                                      ldr sl, [r4, #4]
0064c6bc  10 10 95 e5                                      ldr r1, [r5, #0x10]
0064c6c0  00 30 a0 e1                                      mov r3, r0
0064c6c4  0a 00 a0 e1                                      mov r0, sl
0064c6c8  04 30 8d e5                                      str r3, [sp, #4]
0064c6cc  a6 09 f3 eb                                      bl #0x30ed6c
0064c6d0  04 30 9d e5                                      ldr r3, [sp, #4]
0064c6d4  00 10 a0 e1                                      mov r1, r0
0064c6d8  03 00 a0 e1                                      mov r0, r3
0064c6dc  30 09 f3 eb                                      bl #0x30eba4
0064c6e0  20 10 95 e5                                      ldr r1, [r5, #0x20]
0064c6e4  00 30 a0 e1                                      mov r3, r0
0064c6e8  08 00 94 e5                                      ldr r0, [r4, #8]
0064c6ec  04 30 8d e5                                      str r3, [sp, #4]
0064c6f0  9d 09 f3 eb                                      bl #0x30ed6c
0064c6f4  04 30 9d e5                                      ldr r3, [sp, #4]
0064c6f8  00 10 a0 e1                                      mov r1, r0
0064c6fc  03 00 a0 e1                                      mov r0, r3
0064c700  27 09 f3 eb                                      bl #0x30eba4
0064c704  30 10 95 e5                                      ldr r1, [r5, #0x30]
0064c708  25 09 f3 eb                                      bl #0x30eba4
0064c70c  04 10 95 e5                                      ldr r1, [r5, #4]
0064c710  00 30 a0 e1                                      mov r3, r0
0064c714  09 00 a0 e1                                      mov r0, sb
0064c718  04 30 8d e5                                      str r3, [sp, #4]
0064c71c  92 09 f3 eb                                      bl #0x30ed6c
0064c720  14 10 95 e5                                      ldr r1, [r5, #0x14]
0064c724  00 20 a0 e1                                      mov r2, r0
0064c728  0a 00 a0 e1                                      mov r0, sl
0064c72c  08 20 8d e5                                      str r2, [sp, #8]
0064c730  8d 09 f3 eb                                      bl #0x30ed6c
0064c734  08 20 9d e5                                      ldr r2, [sp, #8]
0064c738  00 10 a0 e1                                      mov r1, r0
0064c73c  02 00 a0 e1                                      mov r0, r2
0064c740  17 09 f3 eb                                      bl #0x30eba4
0064c744  24 10 95 e5                                      ldr r1, [r5, #0x24]
0064c748  00 20 a0 e1                                      mov r2, r0
0064c74c  08 00 94 e5                                      ldr r0, [r4, #8]
0064c750  08 20 8d e5                                      str r2, [sp, #8]
0064c754  84 09 f3 eb                                      bl #0x30ed6c
0064c758  08 20 9d e5                                      ldr r2, [sp, #8]
0064c75c  00 10 a0 e1                                      mov r1, r0
0064c760  02 00 a0 e1                                      mov r0, r2
0064c764  0e 09 f3 eb                                      bl #0x30eba4
0064c768  34 10 95 e5                                      ldr r1, [r5, #0x34]
0064c76c  0c 09 f3 eb                                      bl #0x30eba4
0064c770  10 00 8d e5                                      str r0, [sp, #0x10]
0064c774  08 10 95 e5                                      ldr r1, [r5, #8]
0064c778  09 00 a0 e1                                      mov r0, sb
0064c77c  7a 09 f3 eb                                      bl #0x30ed6c
0064c780  18 10 95 e5                                      ldr r1, [r5, #0x18]
0064c784  00 90 a0 e1                                      mov sb, r0
0064c788  0a 00 a0 e1                                      mov r0, sl
0064c78c  76 09 f3 eb                                      bl #0x30ed6c
0064c790  00 10 a0 e1                                      mov r1, r0
0064c794  09 00 a0 e1                                      mov r0, sb
0064c798  01 09 f3 eb                                      bl #0x30eba4
0064c79c  28 10 95 e5                                      ldr r1, [r5, #0x28]
0064c7a0  00 a0 a0 e1                                      mov sl, r0
0064c7a4  08 00 94 e5                                      ldr r0, [r4, #8]
0064c7a8  6f 09 f3 eb                                      bl #0x30ed6c
0064c7ac  00 10 a0 e1                                      mov r1, r0
0064c7b0  0a 00 a0 e1                                      mov r0, sl
0064c7b4  fa 08 f3 eb                                      bl #0x30eba4
0064c7b8  38 10 95 e5                                      ldr r1, [r5, #0x38]
0064c7bc  f8 08 f3 eb                                      bl #0x30eba4
0064c7c0  04 30 9d e5                                      ldr r3, [sp, #4]
0064c7c4  00 50 a0 e1                                      mov r5, r0
0064c7c8  06 30 87 e7                                      str r3, [r7, r6]
0064c7cc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064c7d0  08 00 84 e5                                      str r0, [r4, #8]
0064c7d4  03 00 a0 e1                                      mov r0, r3
0064c7d8  04 20 84 e5                                      str r2, [r4, #4]
0064c7dc  00 20 9b e5                                      ldr r2, [fp]
0064c7e0  38 30 92 e5                                      ldr r3, [r2, #0x38]
0064c7e4  30 10 92 e5                                      ldr r1, [r2, #0x30]
0064c7e8  34 a0 92 e5                                      ldr sl, [r2, #0x34]
0064c7ec  04 30 8d e5                                      str r3, [sp, #4]
0064c7f0  ed 06 f3 eb                                      bl #0x30e3ac
0064c7f4  06 00 87 e7                                      str r0, [r7, r6]
0064c7f8  00 b0 a0 e1                                      mov fp, r0
0064c7fc  0a 10 a0 e1                                      mov r1, sl
0064c800  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064c804  e8 06 f3 eb                                      bl #0x30e3ac
0064c808  04 30 9d e5                                      ldr r3, [sp, #4]
0064c80c  00 90 a0 e1                                      mov sb, r0
0064c810  04 00 84 e5                                      str r0, [r4, #4]
0064c814  03 10 a0 e1                                      mov r1, r3
0064c818  05 00 a0 e1                                      mov r0, r5
0064c81c  e2 06 f3 eb                                      bl #0x30e3ac
0064c820  44 32 9f e5                                      ldr r3, [pc, #0x244]
0064c824  08 00 84 e5                                      str r0, [r4, #8]
0064c828  00 a0 a0 e1                                      mov sl, r0
0064c82c  03 50 98 e7                                      ldr r5, [r8, r3]
0064c830  0b 00 a0 e1                                      mov r0, fp
0064c834  00 10 95 e5                                      ldr r1, [r5]
0064c838  4b 09 f3 eb                                      bl #0x30ed6c
0064c83c  10 10 95 e5                                      ldr r1, [r5, #0x10]
0064c840  00 30 a0 e1                                      mov r3, r0
0064c844  09 00 a0 e1                                      mov r0, sb
0064c848  04 30 8d e5                                      str r3, [sp, #4]
0064c84c  46 09 f3 eb                                      bl #0x30ed6c
0064c850  04 30 9d e5                                      ldr r3, [sp, #4]
0064c854  00 10 a0 e1                                      mov r1, r0
0064c858  03 00 a0 e1                                      mov r0, r3
0064c85c  d0 08 f3 eb                                      bl #0x30eba4
0064c860  20 10 95 e5                                      ldr r1, [r5, #0x20]
0064c864  00 30 a0 e1                                      mov r3, r0
0064c868  0a 00 a0 e1                                      mov r0, sl
0064c86c  04 30 8d e5                                      str r3, [sp, #4]
0064c870  3d 09 f3 eb                                      bl #0x30ed6c
0064c874  04 30 9d e5                                      ldr r3, [sp, #4]
0064c878  00 10 a0 e1                                      mov r1, r0
0064c87c  03 00 a0 e1                                      mov r0, r3
0064c880  c7 08 f3 eb                                      bl #0x30eba4
0064c884  0c 00 8d e5                                      str r0, [sp, #0xc]
0064c888  06 00 87 e7                                      str r0, [r7, r6]
0064c88c  04 10 95 e5                                      ldr r1, [r5, #4]
0064c890  0b 00 a0 e1                                      mov r0, fp
0064c894  34 09 f3 eb                                      bl #0x30ed6c
0064c898  14 10 95 e5                                      ldr r1, [r5, #0x14]
0064c89c  00 30 a0 e1                                      mov r3, r0
0064c8a0  09 00 a0 e1                                      mov r0, sb
0064c8a4  04 30 8d e5                                      str r3, [sp, #4]
0064c8a8  2f 09 f3 eb                                      bl #0x30ed6c
0064c8ac  04 30 9d e5                                      ldr r3, [sp, #4]
0064c8b0  00 10 a0 e1                                      mov r1, r0
0064c8b4  03 00 a0 e1                                      mov r0, r3
0064c8b8  b9 08 f3 eb                                      bl #0x30eba4
0064c8bc  24 10 95 e5                                      ldr r1, [r5, #0x24]
0064c8c0  00 30 a0 e1                                      mov r3, r0
0064c8c4  0a 00 a0 e1                                      mov r0, sl
0064c8c8  04 30 8d e5                                      str r3, [sp, #4]
0064c8cc  26 09 f3 eb                                      bl #0x30ed6c
0064c8d0  04 30 9d e5                                      ldr r3, [sp, #4]
0064c8d4  00 10 a0 e1                                      mov r1, r0
0064c8d8  03 00 a0 e1                                      mov r0, r3
0064c8dc  b0 08 f3 eb                                      bl #0x30eba4
0064c8e0  10 00 8d e5                                      str r0, [sp, #0x10]
0064c8e4  04 00 84 e5                                      str r0, [r4, #4]
0064c8e8  08 10 95 e5                                      ldr r1, [r5, #8]
0064c8ec  0b 00 a0 e1                                      mov r0, fp
0064c8f0  1d 09 f3 eb                                      bl #0x30ed6c
0064c8f4  18 10 95 e5                                      ldr r1, [r5, #0x18]
0064c8f8  00 b0 a0 e1                                      mov fp, r0
0064c8fc  09 00 a0 e1                                      mov r0, sb
0064c900  19 09 f3 eb                                      bl #0x30ed6c
0064c904  00 10 a0 e1                                      mov r1, r0
0064c908  0b 00 a0 e1                                      mov r0, fp
0064c90c  a4 08 f3 eb                                      bl #0x30eba4
0064c910  28 10 95 e5                                      ldr r1, [r5, #0x28]
0064c914  00 90 a0 e1                                      mov sb, r0
0064c918  0a 00 a0 e1                                      mov r0, sl
0064c91c  12 09 f3 eb                                      bl #0x30ed6c
0064c920  00 10 a0 e1                                      mov r1, r0
0064c924  09 00 a0 e1                                      mov r0, sb
0064c928  9d 08 f3 eb                                      bl #0x30eba4
0064c92c  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
0064c930  08 00 84 e5                                      str r0, [r4, #8]
0064c934  00 a0 a0 e1                                      mov sl, r0
0064c938  03 50 98 e7                                      ldr r5, [r8, r3]
0064c93c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064c940  00 10 95 e5                                      ldr r1, [r5]
0064c944  08 09 f3 eb                                      bl #0x30ed6c
0064c948  10 10 95 e5                                      ldr r1, [r5, #0x10]
0064c94c  00 80 a0 e1                                      mov r8, r0
0064c950  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064c954  04 09 f3 eb                                      bl #0x30ed6c
0064c958  00 10 a0 e1                                      mov r1, r0
0064c95c  08 00 a0 e1                                      mov r0, r8
0064c960  8f 08 f3 eb                                      bl #0x30eba4
0064c964  20 10 95 e5                                      ldr r1, [r5, #0x20]
0064c968  00 80 a0 e1                                      mov r8, r0
0064c96c  0a 00 a0 e1                                      mov r0, sl
0064c970  fd 08 f3 eb                                      bl #0x30ed6c
0064c974  00 10 a0 e1                                      mov r1, r0
0064c978  08 00 a0 e1                                      mov r0, r8
0064c97c  88 08 f3 eb                                      bl #0x30eba4
0064c980  06 00 87 e7                                      str r0, [r7, r6]
0064c984  04 10 95 e5                                      ldr r1, [r5, #4]
0064c988  00 80 a0 e1                                      mov r8, r0
0064c98c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064c990  f5 08 f3 eb                                      bl #0x30ed6c
0064c994  14 10 95 e5                                      ldr r1, [r5, #0x14]
0064c998  00 90 a0 e1                                      mov sb, r0
0064c99c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064c9a0  f1 08 f3 eb                                      bl #0x30ed6c
0064c9a4  00 10 a0 e1                                      mov r1, r0
0064c9a8  09 00 a0 e1                                      mov r0, sb
0064c9ac  7c 08 f3 eb                                      bl #0x30eba4
0064c9b0  24 10 95 e5                                      ldr r1, [r5, #0x24]
0064c9b4  00 90 a0 e1                                      mov sb, r0
0064c9b8  0a 00 a0 e1                                      mov r0, sl
0064c9bc  ea 08 f3 eb                                      bl #0x30ed6c
0064c9c0  00 10 a0 e1                                      mov r1, r0
0064c9c4  09 00 a0 e1                                      mov r0, sb
0064c9c8  75 08 f3 eb                                      bl #0x30eba4
0064c9cc  04 00 84 e5                                      str r0, [r4, #4]
0064c9d0  00 90 a0 e1                                      mov sb, r0
0064c9d4  08 10 95 e5                                      ldr r1, [r5, #8]
0064c9d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064c9dc  e2 08 f3 eb                                      bl #0x30ed6c
0064c9e0  18 10 95 e5                                      ldr r1, [r5, #0x18]
0064c9e4  00 b0 a0 e1                                      mov fp, r0
0064c9e8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064c9ec  de 08 f3 eb                                      bl #0x30ed6c
0064c9f0  00 10 a0 e1                                      mov r1, r0
0064c9f4  0b 00 a0 e1                                      mov r0, fp
0064c9f8  69 08 f3 eb                                      bl #0x30eba4
0064c9fc  28 10 95 e5                                      ldr r1, [r5, #0x28]
0064ca00  00 b0 a0 e1                                      mov fp, r0
0064ca04  0a 00 a0 e1                                      mov r0, sl
0064ca08  d7 08 f3 eb                                      bl #0x30ed6c
0064ca0c  00 10 a0 e1                                      mov r1, r0
0064ca10  0b 00 a0 e1                                      mov r0, fp
0064ca14  62 08 f3 eb                                      bl #0x30eba4
0064ca18  08 00 84 e5                                      str r0, [r4, #8]
0064ca1c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0064ca20  00 50 a0 e1                                      mov r5, r0
0064ca24  08 00 a0 e1                                      mov r0, r8
0064ca28  00 10 93 e5                                      ldr r1, [r3]
0064ca2c  5c 08 f3 eb                                      bl #0x30eba4
0064ca30  06 00 87 e7                                      str r0, [r7, r6]
0064ca34  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064ca38  09 00 a0 e1                                      mov r0, sb
0064ca3c  04 10 92 e5                                      ldr r1, [r2, #4]
0064ca40  57 08 f3 eb                                      bl #0x30eba4
0064ca44  04 00 84 e5                                      str r0, [r4, #4]
0064ca48  14 30 9d e5                                      ldr r3, [sp, #0x14]
0064ca4c  05 00 a0 e1                                      mov r0, r5
0064ca50  08 10 93 e5                                      ldr r1, [r3, #8]
0064ca54  52 08 f3 eb                                      bl #0x30eba4
0064ca58  08 00 84 e5                                      str r0, [r4, #8]
0064ca5c  1c d0 8d e2                                      add sp, sp, #0x1c
0064ca60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0064ca64  04 84 34 00 58 0f 00 00 78 0b 00 00 2c 0f 00 00  .byte 0x04, 0x84, 0x34, 0x00, 0x58, 0x0f, 0x00, 0x00, 0x78, 0x0b, 0x00, 0x00, 0x2c, 0x0f, 0x00, 0x00

; FUNCTION 0x0064ea84, declared_size=552, range_size=552, mode=arm
; class-group: glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>
; alias: _ZN6glitch2ps22PSGenericPositionBakerINS0_9SParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_
; demangled: glitch::ps::PSGenericPositionBaker<glitch::ps::SParticle>::getPerParticlePosition(glitch::ps::IParticleContext<glitch::ps::SParticle> const*, glitch::ps::SParticle const*)
; decoder-mode: arm
0064ea84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064ea88  14 70 91 e5                                      ldr r7, [r1, #0x14]
0064ea8c  10 60 91 e5                                      ldr r6, [r1, #0x10]
0064ea90  64 d0 4d e2                                      sub sp, sp, #0x64
0064ea94  01 40 a0 e1                                      mov r4, r1
0064ea98  07 00 a0 e1                                      mov r0, r7
0064ea9c  02 11 a0 e3                                      mov r1, #0x80000000
0064eaa0  b1 00 f3 eb                                      bl #0x30ed6c
0064eaa4  06 10 a0 e1                                      mov r1, r6
0064eaa8  3d 00 f3 eb                                      bl #0x30eba4
0064eaac  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0064eab0  00 10 a0 e3                                      mov r1, #0
0064eab4  54 00 8d e5                                      str r0, [sp, #0x54]
0064eab8  07 00 a0 e1                                      mov r0, r7
0064eabc  aa 00 f3 eb                                      bl #0x30ed6c
0064eac0  02 71 85 e2                                      add r7, r5, #0x80000000
0064eac4  00 10 a0 e1                                      mov r1, r0
0064eac8  07 00 a0 e1                                      mov r0, r7
0064eacc  34 00 f3 eb                                      bl #0x30eba4
0064ead0  02 11 a0 e3                                      mov r1, #0x80000000
0064ead4  58 00 8d e5                                      str r0, [sp, #0x58]
0064ead8  06 00 a0 e1                                      mov r0, r6
0064eadc  a2 00 f3 eb                                      bl #0x30ed6c
0064eae0  00 10 a0 e3                                      mov r1, #0
0064eae4  00 60 a0 e1                                      mov r6, r0
0064eae8  05 00 a0 e1                                      mov r0, r5
0064eaec  9e 00 f3 eb                                      bl #0x30ed6c
0064eaf0  00 10 a0 e1                                      mov r1, r0
0064eaf4  06 00 a0 e1                                      mov r0, r6
0064eaf8  29 00 f3 eb                                      bl #0x30eba4
0064eafc  5c 00 8d e5                                      str r0, [sp, #0x5c]
0064eb00  54 00 8d e2                                      add r0, sp, #0x54
0064eb04  75 3f f4 eb                                      bl #0x35e8e0
0064eb08  00 20 a0 e1                                      mov r2, r0
0064eb0c  08 c0 92 e5                                      ldr ip, [r2, #8]
0064eb10  00 30 92 e5                                      ldr r3, [r2]
0064eb14  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0064eb18  04 20 92 e5                                      ldr r2, [r2, #4]
0064eb1c  10 e0 94 e5                                      ldr lr, [r4, #0x10]
0064eb20  14 10 94 e5                                      ldr r1, [r4, #0x14]
0064eb24  48 00 8d e2                                      add r0, sp, #0x48
0064eb28  08 20 8d e5                                      str r2, [sp, #8]
0064eb2c  0c 30 8d e5                                      str r3, [sp, #0xc]
0064eb30  04 c0 8d e5                                      str ip, [sp, #4]
0064eb34  48 50 8d e5                                      str r5, [sp, #0x48]
0064eb38  4c e0 8d e5                                      str lr, [sp, #0x4c]
0064eb3c  50 10 8d e5                                      str r1, [sp, #0x50]
0064eb40  66 3f f4 eb                                      bl #0x35e8e0
0064eb44  00 e0 a0 e1                                      mov lr, r0
0064eb48  00 00 90 e5                                      ldr r0, [r0]
0064eb4c  00 10 a0 e3                                      mov r1, #0
0064eb50  01 50 a0 e1                                      mov r5, r1
0064eb54  48 00 8d e5                                      str r0, [sp, #0x48]
0064eb58  04 90 9e e5                                      ldr sb, [lr, #4]
0064eb5c  20 80 8d e2                                      add r8, sp, #0x20
0064eb60  fe 75 a0 e3                                      mov r7, #0x3f800000
0064eb64  4c 90 8d e5                                      str sb, [sp, #0x4c]
0064eb68  08 a0 9e e5                                      ldr sl, [lr, #8]
0064eb6c  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
0064eb70  50 a0 8d e5                                      str sl, [sp, #0x50]
0064eb74  7c 00 f3 eb                                      bl #0x30ed6c
0064eb78  05 10 a0 e1                                      mov r1, r5
0064eb7c  00 b0 a0 e1                                      mov fp, r0
0064eb80  09 00 a0 e1                                      mov r0, sb
0064eb84  78 00 f3 eb                                      bl #0x30ed6c
0064eb88  00 10 a0 e1                                      mov r1, r0
0064eb8c  0b 00 a0 e1                                      mov r0, fp
0064eb90  03 00 f3 eb                                      bl #0x30eba4
0064eb94  00 10 a0 e1                                      mov r1, r0
0064eb98  0a 00 a0 e1                                      mov r0, sl
0064eb9c  00 00 f3 eb                                      bl #0x30eba4
0064eba0  0d fe f2 eb                                      bl #0x30e3dc
0064eba4  08 20 9d e5                                      ldr r2, [sp, #8]
0064eba8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064ebac  04 c0 9d e5                                      ldr ip, [sp, #4]
0064ebb0  02 e1 82 e2                                      add lr, r2, #0x80000000
0064ebb4  00 10 a0 e1                                      mov r1, r0
0064ebb8  02 c1 8c e2                                      add ip, ip, #0x80000000
0064ebbc  02 31 83 e2                                      add r3, r3, #0x80000000
0064ebc0  3c 20 8d e2                                      add r2, sp, #0x3c
0064ebc4  08 00 a0 e1                                      mov r0, r8
0064ebc8  40 e0 8d e5                                      str lr, [sp, #0x40]
0064ebcc  44 c0 8d e5                                      str ip, [sp, #0x44]
0064ebd0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0064ebd4  20 50 8d e5                                      str r5, [sp, #0x20]
0064ebd8  24 50 8d e5                                      str r5, [sp, #0x24]
0064ebdc  28 50 8d e5                                      str r5, [sp, #0x28]
0064ebe0  2c 70 8d e5                                      str r7, [sp, #0x2c]
0064ebe4  74 f8 fe eb                                      bl #0x60cdbc
0064ebe8  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0064ebec  06 60 8f e0                                      add r6, pc, r6
0064ebf0  08 00 a0 e1                                      mov r0, r8
0064ebf4  03 10 96 e7                                      ldr r1, [r6, r3]
0064ebf8  61 8f f7 eb                                      bl #0x432984
0064ebfc  50 80 94 e5                                      ldr r8, [r4, #0x50]
0064ec00  05 10 a0 e1                                      mov r1, r5
0064ec04  1c 70 8d e5                                      str r7, [sp, #0x1c]
0064ec08  08 00 a0 e1                                      mov r0, r8
0064ec0c  10 50 8d e5                                      str r5, [sp, #0x10]
0064ec10  14 50 8d e5                                      str r5, [sp, #0x14]
0064ec14  18 50 8d e5                                      str r5, [sp, #0x18]
0064ec18  b6 fd f2 eb                                      bl #0x30e2f8
0064ec1c  00 00 50 e3                                      cmp r0, #0
0064ec20  13 00 00 0a                                      beq #0x64ec74
0064ec24  54 70 94 e5                                      ldr r7, [r4, #0x54]
0064ec28  05 10 a0 e1                                      mov r1, r5
0064ec2c  07 00 a0 e1                                      mov r0, r7
0064ec30  b0 fd f2 eb                                      bl #0x30e2f8
0064ec34  00 00 50 e3                                      cmp r0, #0
0064ec38  0f 00 00 1a                                      bne #0x64ec7c
0064ec3c  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0064ec40  58 30 94 e5                                      ldr r3, [r4, #0x58]
0064ec44  30 70 8d e5                                      str r7, [sp, #0x30]
0064ec48  38 20 8d e5                                      str r2, [sp, #0x38]
0064ec4c  34 30 8d e5                                      str r3, [sp, #0x34]
0064ec50  10 40 8d e2                                      add r4, sp, #0x10
0064ec54  08 10 a0 e1                                      mov r1, r8
0064ec58  04 00 a0 e1                                      mov r0, r4
0064ec5c  30 20 8d e2                                      add r2, sp, #0x30
0064ec60  55 f8 fe eb                                      bl #0x60cdbc
0064ec64  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0064ec68  04 00 a0 e1                                      mov r0, r4
0064ec6c  03 10 96 e7                                      ldr r1, [r6, r3]
0064ec70  43 8f f7 eb                                      bl #0x432984
0064ec74  64 d0 8d e2                                      add sp, sp, #0x64
0064ec78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064ec7c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0064ec80  58 20 94 e5                                      ldr r2, [r4, #0x58]
0064ec84  02 71 87 e2                                      add r7, r7, #0x80000000
0064ec88  02 31 83 e2                                      add r3, r3, #0x80000000
0064ec8c  02 21 82 e2                                      add r2, r2, #0x80000000
0064ec90  30 70 8d e5                                      str r7, [sp, #0x30]
0064ec94  34 20 8d e5                                      str r2, [sp, #0x34]
0064ec98  38 30 8d e5                                      str r3, [sp, #0x38]
0064ec9c  eb ff ff ea                                      b #0x64ec50
; mapping-symbol data/literal pool
0064eca0  a4 5e 34 00 2c 0f 00 00 78 0b 00 00              .byte 0xa4, 0x5e, 0x34, 0x00, 0x2c, 0x0f, 0x00, 0x00, 0x78, 0x0b, 0x00, 0x00
