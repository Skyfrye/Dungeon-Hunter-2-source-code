; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006338e0, declared_size=3128, range_size=3128, mode=arm
; class-group: void glitch::ps::PDeflector
; alias: _ZN6glitch2ps10PDeflector5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
; demangled: void glitch::ps::PDeflector::apply<glitch::ps::SParticle>(glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::SParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::SParticle>*)
; decoder-mode: arm
006338e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006338e4  fc d0 4d e2                                      sub sp, sp, #0xfc
006338e8  18 00 8d e5                                      str r0, [sp, #0x18]
006338ec  00 40 90 e5                                      ldr r4, [r0]
006338f0  00 50 a0 e3                                      mov r5, #0
006338f4  ec 00 8d e2                                      add r0, sp, #0xec
006338f8  00 60 94 e5                                      ldr r6, [r4]
006338fc  1c 60 8d e5                                      str r6, [sp, #0x1c]
00633900  14 70 94 e5                                      ldr r7, [r4, #0x14]
00633904  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00633908  60 70 8d e5                                      str r7, [sp, #0x60]
0063390c  04 c0 94 e5                                      ldr ip, [r4, #4]
00633910  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00633914  58 c0 8d e5                                      str ip, [sp, #0x58]
00633918  10 60 96 e5                                      ldr r6, [r6, #0x10]
0063391c  24 c0 9e e5                                      ldr ip, [lr, #0x24]
00633920  14 80 9e e5                                      ldr r8, [lr, #0x14]
00633924  02 61 86 e2                                      add r6, r6, #0x80000000
00633928  18 a0 9e e5                                      ldr sl, [lr, #0x18]
0063392c  20 90 97 e5                                      ldr sb, [r7, #0x20]
00633930  28 e0 9e e5                                      ldr lr, [lr, #0x28]
00633934  40 60 8d e5                                      str r6, [sp, #0x40]
00633938  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0063393c  08 70 94 e5                                      ldr r7, [r4, #8]
00633940  02 81 88 e2                                      add r8, r8, #0x80000000
00633944  68 60 8d e5                                      str r6, [sp, #0x68]
00633948  10 40 94 e5                                      ldr r4, [r4, #0x10]
0063394c  02 a1 8a e2                                      add sl, sl, #0x80000000
00633950  6c 40 8d e5                                      str r4, [sp, #0x6c]
00633954  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00633958  40 50 c4 e5                                      strb r5, [r4, #0x40]
0063395c  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00633960  20 20 8d e5                                      str r2, [sp, #0x20]
00633964  54 30 8d e5                                      str r3, [sp, #0x54]
00633968  3c 80 8d e5                                      str r8, [sp, #0x3c]
0063396c  38 a0 8d e5                                      str sl, [sp, #0x38]
00633970  00 60 96 e5                                      ldr r6, [r6]
00633974  01 40 a0 e1                                      mov r4, r1
00633978  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0063397c  4c 60 8d e5                                      str r6, [sp, #0x4c]
00633980  04 10 91 e5                                      ldr r1, [r1, #4]
00633984  48 10 8d e5                                      str r1, [sp, #0x48]
00633988  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0063398c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00633990  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00633994  08 20 92 e5                                      ldr r2, [r2, #8]
00633998  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0063399c  44 20 8d e5                                      str r2, [sp, #0x44]
006339a0  30 30 93 e5                                      ldr r3, [r3, #0x30]
006339a4  2c 30 8d e5                                      str r3, [sp, #0x2c]
006339a8  34 60 96 e5                                      ldr r6, [r6, #0x34]
006339ac  30 60 8d e5                                      str r6, [sp, #0x30]
006339b0  38 10 91 e5                                      ldr r1, [r1, #0x38]
006339b4  f4 e0 8d e5                                      str lr, [sp, #0xf4]
006339b8  f0 c0 8d e5                                      str ip, [sp, #0xf0]
006339bc  34 10 8d e5                                      str r1, [sp, #0x34]
006339c0  ec 90 8d e5                                      str sb, [sp, #0xec]
006339c4  c5 ab f4 eb                                      bl #0x35e8e0
006339c8  40 00 9d e5                                      ldr r0, [sp, #0x40]
006339cc  00 10 a0 e1                                      mov r1, r0
006339d0  e5 6c f3 eb                                      bl #0x30ed6c
006339d4  00 60 a0 e1                                      mov r6, r0
006339d8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006339dc  00 10 a0 e1                                      mov r1, r0
006339e0  e1 6c f3 eb                                      bl #0x30ed6c
006339e4  00 10 a0 e1                                      mov r1, r0
006339e8  06 00 a0 e1                                      mov r0, r6
006339ec  6c 6c f3 eb                                      bl #0x30eba4
006339f0  00 60 a0 e1                                      mov r6, r0
006339f4  38 00 9d e5                                      ldr r0, [sp, #0x38]
006339f8  00 10 a0 e1                                      mov r1, r0
006339fc  da 6c f3 eb                                      bl #0x30ed6c
00633a00  00 10 a0 e1                                      mov r1, r0
00633a04  06 00 a0 e1                                      mov r0, r6
00633a08  65 6c f3 eb                                      bl #0x30eba4
00633a0c  a4 6b f3 eb                                      bl #0x30e8a4
00633a10  ea 69 f3 eb                                      bl #0x30e1c0
00633a14  18 20 9d e5                                      ldr r2, [sp, #0x18]
00633a18  00 60 92 e5                                      ldr r6, [r2]
00633a1c  1f 6b f3 eb                                      bl #0x30e6a0
00633a20  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00633a24  d0 6c f3 eb                                      bl #0x30ed6c
00633a28  3f 14 a0 e3                                      mov r1, #0x3f000000
00633a2c  ce 6c f3 eb                                      bl #0x30ed6c
00633a30  50 00 8d e5                                      str r0, [sp, #0x50]
00633a34  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00633a38  00 10 a0 e1                                      mov r1, r0
00633a3c  ca 6c f3 eb                                      bl #0x30ed6c
00633a40  00 60 a0 e1                                      mov r6, r0
00633a44  48 00 9d e5                                      ldr r0, [sp, #0x48]
00633a48  00 10 a0 e1                                      mov r1, r0
00633a4c  c6 6c f3 eb                                      bl #0x30ed6c
00633a50  00 10 a0 e1                                      mov r1, r0
00633a54  06 00 a0 e1                                      mov r0, r6
00633a58  51 6c f3 eb                                      bl #0x30eba4
00633a5c  00 60 a0 e1                                      mov r6, r0
00633a60  44 00 9d e5                                      ldr r0, [sp, #0x44]
00633a64  00 10 a0 e1                                      mov r1, r0
00633a68  bf 6c f3 eb                                      bl #0x30ed6c
00633a6c  00 10 a0 e1                                      mov r1, r0
00633a70  06 00 a0 e1                                      mov r0, r6
00633a74  4a 6c f3 eb                                      bl #0x30eba4
00633a78  89 6b f3 eb                                      bl #0x30e8a4
00633a7c  cf 69 f3 eb                                      bl #0x30e1c0
00633a80  18 30 9d e5                                      ldr r3, [sp, #0x18]
00633a84  00 60 93 e5                                      ldr r6, [r3]
00633a88  04 6b f3 eb                                      bl #0x30e6a0
00633a8c  18 10 96 e5                                      ldr r1, [r6, #0x18]
00633a90  b5 6c f3 eb                                      bl #0x30ed6c
00633a94  3f 14 a0 e3                                      mov r1, #0x3f000000
00633a98  b3 6c f3 eb                                      bl #0x30ed6c
00633a9c  18 60 9d e5                                      ldr r6, [sp, #0x18]
00633aa0  5c 00 8d e5                                      str r0, [sp, #0x5c]
00633aa4  07 10 a0 e1                                      mov r1, r7
00633aa8  14 30 96 e5                                      ldr r3, [r6, #0x14]
00633aac  18 20 96 e5                                      ldr r2, [r6, #0x18]
00633ab0  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
00633ab4  44 50 c6 e5                                      strb r5, [r6, #0x44]
00633ab8  02 31 83 e2                                      add r3, r3, #0x80000000
00633abc  02 21 82 e2                                      add r2, r2, #0x80000000
00633ac0  02 c1 8c e2                                      add ip, ip, #0x80000000
00633ac4  58 00 9d e5                                      ldr r0, [sp, #0x58]
00633ac8  90 30 8d e5                                      str r3, [sp, #0x90]
00633acc  8c 20 8d e5                                      str r2, [sp, #0x8c]
00633ad0  88 c0 8d e5                                      str ip, [sp, #0x88]
00633ad4  a4 6c f3 eb                                      bl #0x30ed6c
00633ad8  64 00 8d e5                                      str r0, [sp, #0x64]
00633adc  34 c0 96 e5                                      ldr ip, [r6, #0x34]
00633ae0  00 30 a0 e3                                      mov r3, #0
00633ae4  e0 30 8d e5                                      str r3, [sp, #0xe0]
00633ae8  70 c0 8d e5                                      str ip, [sp, #0x70]
00633aec  e4 30 8d e5                                      str r3, [sp, #0xe4]
00633af0  e8 30 8d e5                                      str r3, [sp, #0xe8]
00633af4  38 e0 96 e5                                      ldr lr, [r6, #0x38]
00633af8  20 70 9d e5                                      ldr r7, [sp, #0x20]
00633afc  74 e0 8d e5                                      str lr, [sp, #0x74]
00633b00  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
00633b04  07 00 54 e1                                      cmp r4, r7
00633b08  54 70 9d e5                                      ldr r7, [sp, #0x54]
00633b0c  78 00 8d e5                                      str r0, [sp, #0x78]
00633b10  04 10 96 e5                                      ldr r1, [r6, #4]
00633b14  84 10 8d e5                                      str r1, [sp, #0x84]
00633b18  08 20 96 e5                                      ldr r2, [r6, #8]
00633b1c  80 20 8d e5                                      str r2, [sp, #0x80]
00633b20  0c 60 96 e5                                      ldr r6, [r6, #0xc]
00633b24  7c 60 8d e5                                      str r6, [sp, #0x7c]
00633b28  50 50 97 e5                                      ldr r5, [r7, #0x50]
00633b2c  9c 00 00 0a                                      beq #0x633da4
00633b30  e0 c0 8d e2                                      add ip, sp, #0xe0
00633b34  d4 e0 8d e2                                      add lr, sp, #0xd4
00633b38  c8 00 8d e2                                      add r0, sp, #0xc8
00633b3c  bc 10 8d e2                                      add r1, sp, #0xbc
00633b40  94 c0 8d e5                                      str ip, [sp, #0x94]
00633b44  98 e0 8d e5                                      str lr, [sp, #0x98]
00633b48  9c 00 8d e5                                      str r0, [sp, #0x9c]
00633b4c  a0 10 8d e5                                      str r1, [sp, #0xa0]
00633b50  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00633b54  10 70 94 e5                                      ldr r7, [r4, #0x10]
00633b58  14 60 94 e5                                      ldr r6, [r4, #0x14]
00633b5c  03 10 a0 e1                                      mov r1, r3
00633b60  05 00 a0 e1                                      mov r0, r5
00633b64  e0 30 8d e5                                      str r3, [sp, #0xe0]
00633b68  e4 70 8d e5                                      str r7, [sp, #0xe4]
00633b6c  e8 60 8d e5                                      str r6, [sp, #0xe8]
00633b70  7d 6c f3 eb                                      bl #0x30ed6c
00633b74  07 10 a0 e1                                      mov r1, r7
00633b78  00 b0 a0 e1                                      mov fp, r0
00633b7c  05 00 a0 e1                                      mov r0, r5
00633b80  79 6c f3 eb                                      bl #0x30ed6c
00633b84  06 10 a0 e1                                      mov r1, r6
00633b88  00 90 a0 e1                                      mov sb, r0
00633b8c  05 00 a0 e1                                      mov r0, r5
00633b90  75 6c f3 eb                                      bl #0x30ed6c
00633b94  ec 80 9d e5                                      ldr r8, [sp, #0xec]
00633b98  00 a0 a0 e1                                      mov sl, r0
00633b9c  0b 00 a0 e1                                      mov r0, fp
00633ba0  08 10 a0 e1                                      mov r1, r8
00633ba4  70 6c f3 eb                                      bl #0x30ed6c
00633ba8  f0 70 9d e5                                      ldr r7, [sp, #0xf0]
00633bac  00 60 a0 e1                                      mov r6, r0
00633bb0  09 00 a0 e1                                      mov r0, sb
00633bb4  07 10 a0 e1                                      mov r1, r7
00633bb8  6b 6c f3 eb                                      bl #0x30ed6c
00633bbc  00 10 a0 e1                                      mov r1, r0
00633bc0  06 00 a0 e1                                      mov r0, r6
00633bc4  f6 6b f3 eb                                      bl #0x30eba4
00633bc8  f4 60 9d e5                                      ldr r6, [sp, #0xf4]
00633bcc  00 30 a0 e1                                      mov r3, r0
00633bd0  0a 00 a0 e1                                      mov r0, sl
00633bd4  06 10 a0 e1                                      mov r1, r6
00633bd8  08 30 8d e5                                      str r3, [sp, #8]
00633bdc  62 6c f3 eb                                      bl #0x30ed6c
00633be0  08 30 9d e5                                      ldr r3, [sp, #8]
00633be4  00 10 a0 e1                                      mov r1, r0
00633be8  03 00 a0 e1                                      mov r0, r3
00633bec  ec 6b f3 eb                                      bl #0x30eba4
00633bf0  00 10 a0 e3                                      mov r1, #0
00633bf4  14 00 8d e5                                      str r0, [sp, #0x14]
00633bf8  e3 68 f3 eb                                      bl #0x30df8c
00633bfc  00 00 50 e3                                      cmp r0, #0
00633c00  63 00 00 1a                                      bne #0x633d94
00633c04  00 20 94 e5                                      ldr r2, [r4]
00633c08  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00633c0c  24 20 8d e5                                      str r2, [sp, #0x24]
00633c10  04 30 94 e5                                      ldr r3, [r4, #4]
00633c14  02 10 a0 e1                                      mov r1, r2
00633c18  28 30 8d e5                                      str r3, [sp, #0x28]
00633c1c  e2 69 f3 eb                                      bl #0x30e3ac
00633c20  00 10 a0 e1                                      mov r1, r0
00633c24  08 00 a0 e1                                      mov r0, r8
00633c28  4f 6c f3 eb                                      bl #0x30ed6c
00633c2c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00633c30  00 80 a0 e1                                      mov r8, r0
00633c34  30 00 9d e5                                      ldr r0, [sp, #0x30]
00633c38  db 69 f3 eb                                      bl #0x30e3ac
00633c3c  00 10 a0 e1                                      mov r1, r0
00633c40  07 00 a0 e1                                      mov r0, r7
00633c44  48 6c f3 eb                                      bl #0x30ed6c
00633c48  00 10 a0 e1                                      mov r1, r0
00633c4c  08 00 a0 e1                                      mov r0, r8
00633c50  d3 6b f3 eb                                      bl #0x30eba4
00633c54  08 70 94 e5                                      ldr r7, [r4, #8]
00633c58  00 80 a0 e1                                      mov r8, r0
00633c5c  34 00 9d e5                                      ldr r0, [sp, #0x34]
00633c60  07 10 a0 e1                                      mov r1, r7
00633c64  d0 69 f3 eb                                      bl #0x30e3ac
00633c68  00 10 a0 e1                                      mov r1, r0
00633c6c  06 00 a0 e1                                      mov r0, r6
00633c70  3d 6c f3 eb                                      bl #0x30ed6c
00633c74  00 10 a0 e1                                      mov r1, r0
00633c78  08 00 a0 e1                                      mov r0, r8
00633c7c  c8 6b f3 eb                                      bl #0x30eba4
00633c80  14 10 9d e5                                      ldr r1, [sp, #0x14]
00633c84  02 6c f3 eb                                      bl #0x30ec94
00633c88  00 10 a0 e3                                      mov r1, #0
00633c8c  00 60 a0 e1                                      mov r6, r0
00633c90  45 6b f3 eb                                      bl #0x30e9ac
00633c94  00 00 50 e3                                      cmp r0, #0
00633c98  3d 00 00 1a                                      bne #0x633d94
00633c9c  06 00 a0 e1                                      mov r0, r6
00633ca0  fe 15 a0 e3                                      mov r1, #0x3f800000
00633ca4  93 69 f3 eb                                      bl #0x30e2f8
00633ca8  00 00 50 e3                                      cmp r0, #0
00633cac  38 00 00 1a                                      bne #0x633d94
00633cb0  0b 10 a0 e1                                      mov r1, fp
00633cb4  06 00 a0 e1                                      mov r0, r6
00633cb8  2b 6c f3 eb                                      bl #0x30ed6c
00633cbc  00 10 a0 e1                                      mov r1, r0
00633cc0  24 00 9d e5                                      ldr r0, [sp, #0x24]
00633cc4  b6 6b f3 eb                                      bl #0x30eba4
00633cc8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00633ccc  b6 69 f3 eb                                      bl #0x30e3ac
00633cd0  09 10 a0 e1                                      mov r1, sb
00633cd4  00 b0 a0 e1                                      mov fp, r0
00633cd8  06 00 a0 e1                                      mov r0, r6
00633cdc  22 6c f3 eb                                      bl #0x30ed6c
00633ce0  00 10 a0 e1                                      mov r1, r0
00633ce4  28 00 9d e5                                      ldr r0, [sp, #0x28]
00633ce8  ad 6b f3 eb                                      bl #0x30eba4
00633cec  30 10 9d e5                                      ldr r1, [sp, #0x30]
00633cf0  ad 69 f3 eb                                      bl #0x30e3ac
00633cf4  0a 10 a0 e1                                      mov r1, sl
00633cf8  00 80 a0 e1                                      mov r8, r0
00633cfc  06 00 a0 e1                                      mov r0, r6
00633d00  19 6c f3 eb                                      bl #0x30ed6c
00633d04  00 10 a0 e1                                      mov r1, r0
00633d08  07 00 a0 e1                                      mov r0, r7
00633d0c  a4 6b f3 eb                                      bl #0x30eba4
00633d10  34 10 9d e5                                      ldr r1, [sp, #0x34]
00633d14  a4 69 f3 eb                                      bl #0x30e3ac
00633d18  0b 10 a0 e1                                      mov r1, fp
00633d1c  00 70 a0 e1                                      mov r7, r0
00633d20  40 00 9d e5                                      ldr r0, [sp, #0x40]
00633d24  10 6c f3 eb                                      bl #0x30ed6c
00633d28  08 10 a0 e1                                      mov r1, r8
00633d2c  00 a0 a0 e1                                      mov sl, r0
00633d30  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00633d34  0c 6c f3 eb                                      bl #0x30ed6c
00633d38  00 10 a0 e1                                      mov r1, r0
00633d3c  0a 00 a0 e1                                      mov r0, sl
00633d40  97 6b f3 eb                                      bl #0x30eba4
00633d44  07 10 a0 e1                                      mov r1, r7
00633d48  00 a0 a0 e1                                      mov sl, r0
00633d4c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00633d50  05 6c f3 eb                                      bl #0x30ed6c
00633d54  00 10 a0 e1                                      mov r1, r0
00633d58  0a 00 a0 e1                                      mov r0, sl
00633d5c  90 6b f3 eb                                      bl #0x30eba4
00633d60  50 10 9d e5                                      ldr r1, [sp, #0x50]
00633d64  ca 6b f3 eb                                      bl #0x30ec94
00633d68  fe 15 a0 e3                                      mov r1, #0x3f800000
00633d6c  00 a0 a0 e1                                      mov sl, r0
00633d70  60 69 f3 eb                                      bl #0x30e2f8
00633d74  00 00 50 e3                                      cmp r0, #0
00633d78  05 00 00 1a                                      bne #0x633d94
00633d7c  bf 14 a0 e3                                      mov r1, #0xbf000000
00633d80  0a 00 a0 e1                                      mov r0, sl
00633d84  02 15 81 e2                                      add r1, r1, #0x800000
00633d88  5f 6a f3 eb                                      bl #0x30e70c
00633d8c  00 00 50 e3                                      cmp r0, #0
00633d90  0a 00 00 0a                                      beq #0x633dc0
00633d94  20 30 9d e5                                      ldr r3, [sp, #0x20]
00633d98  64 40 84 e2                                      add r4, r4, #0x64
00633d9c  04 00 53 e1                                      cmp r3, r4
00633da0  6a ff ff 1a                                      bne #0x633b50
00633da4  18 40 9d e5                                      ldr r4, [sp, #0x18]
00633da8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00633dac  41 20 a0 e3                                      mov r2, #0x41
00633db0  04 00 84 e2                                      add r0, r4, #4
00633db4  ab 6a f3 eb                                      bl #0x30e868
00633db8  fc d0 8d e2                                      add sp, sp, #0xfc
00633dbc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00633dc0  0b 10 a0 e1                                      mov r1, fp
00633dc4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00633dc8  e7 6b f3 eb                                      bl #0x30ed6c
00633dcc  08 10 a0 e1                                      mov r1, r8
00633dd0  00 90 a0 e1                                      mov sb, r0
00633dd4  48 00 9d e5                                      ldr r0, [sp, #0x48]
00633dd8  e3 6b f3 eb                                      bl #0x30ed6c
00633ddc  00 10 a0 e1                                      mov r1, r0
00633de0  09 00 a0 e1                                      mov r0, sb
00633de4  6e 6b f3 eb                                      bl #0x30eba4
00633de8  07 10 a0 e1                                      mov r1, r7
00633dec  00 90 a0 e1                                      mov sb, r0
00633df0  44 00 9d e5                                      ldr r0, [sp, #0x44]
00633df4  dc 6b f3 eb                                      bl #0x30ed6c
00633df8  00 10 a0 e1                                      mov r1, r0
00633dfc  09 00 a0 e1                                      mov r0, sb
00633e00  67 6b f3 eb                                      bl #0x30eba4
00633e04  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00633e08  a1 6b f3 eb                                      bl #0x30ec94
00633e0c  fe 15 a0 e3                                      mov r1, #0x3f800000
00633e10  00 90 a0 e1                                      mov sb, r0
00633e14  37 69 f3 eb                                      bl #0x30e2f8
00633e18  00 00 50 e3                                      cmp r0, #0
00633e1c  dc ff ff 1a                                      bne #0x633d94
00633e20  bf 14 a0 e3                                      mov r1, #0xbf000000
00633e24  09 00 a0 e1                                      mov r0, sb
00633e28  02 15 81 e2                                      add r1, r1, #0x800000
00633e2c  36 6a f3 eb                                      bl #0x30e70c
00633e30  00 00 50 e3                                      cmp r0, #0
00633e34  d6 ff ff 1a                                      bne #0x633d94
00633e38  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00633e3c  00 30 9c e5                                      ldr r3, [ip]
00633e40  0c 00 a0 e1                                      mov r0, ip
00633e44  0f e0 a0 e1                                      mov lr, pc
00633e48  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00633e4c  00 10 a0 e3                                      mov r1, #0
00633e50  b0 00 8d e5                                      str r0, [sp, #0xb0]
00633e54  64 00 9d e5                                      ldr r0, [sp, #0x64]
00633e58  4b 68 f3 eb                                      bl #0x30df8c
00633e5c  00 00 50 e3                                      cmp r0, #0
00633e60  00 e0 a0 13                                      movne lr, #0
00633e64  b4 e0 8d 15                                      strne lr, [sp, #0xb4]
00633e68  99 01 00 0a                                      beq #0x6344d4
00633e6c  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
00633e70  ec c0 9d e5                                      ldr ip, [sp, #0xec]
00633e74  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
00633e78  02 10 a0 e1                                      mov r1, r2
00633e7c  10 20 8d e5                                      str r2, [sp, #0x10]
00633e80  24 00 8d e5                                      str r0, [sp, #0x24]
00633e84  0c 00 a0 e1                                      mov r0, ip
00633e88  0c c0 8d e5                                      str ip, [sp, #0xc]
00633e8c  b6 6b f3 eb                                      bl #0x30ed6c
00633e90  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
00633e94  00 30 a0 e1                                      mov r3, r0
00633e98  24 00 9d e5                                      ldr r0, [sp, #0x24]
00633e9c  08 30 8d e5                                      str r3, [sp, #8]
00633ea0  b1 6b f3 eb                                      bl #0x30ed6c
00633ea4  08 30 9d e5                                      ldr r3, [sp, #8]
00633ea8  00 10 a0 e1                                      mov r1, r0
00633eac  03 00 a0 e1                                      mov r0, r3
00633eb0  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
00633eb4  28 30 8d e5                                      str r3, [sp, #0x28]
00633eb8  39 6b f3 eb                                      bl #0x30eba4
00633ebc  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
00633ec0  00 30 a0 e1                                      mov r3, r0
00633ec4  28 00 9d e5                                      ldr r0, [sp, #0x28]
00633ec8  08 30 8d e5                                      str r3, [sp, #8]
00633ecc  a6 6b f3 eb                                      bl #0x30ed6c
00633ed0  08 30 9d e5                                      ldr r3, [sp, #8]
00633ed4  00 10 a0 e1                                      mov r1, r0
00633ed8  03 00 a0 e1                                      mov r0, r3
00633edc  30 6b f3 eb                                      bl #0x30eba4
00633ee0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00633ee4  02 01 80 e2                                      add r0, r0, #0x80000000
00633ee8  14 00 8d e5                                      str r0, [sp, #0x14]
00633eec  0c 10 a0 e1                                      mov r1, ip
00633ef0  14 00 9d e5                                      ldr r0, [sp, #0x14]
00633ef4  9c 6b f3 eb                                      bl #0x30ed6c
00633ef8  10 20 9d e5                                      ldr r2, [sp, #0x10]
00633efc  00 10 a0 e1                                      mov r1, r0
00633f00  02 00 a0 e1                                      mov r0, r2
00633f04  26 6b f3 eb                                      bl #0x30eba4
00633f08  24 10 9d e5                                      ldr r1, [sp, #0x24]
00633f0c  ac 00 8d e5                                      str r0, [sp, #0xac]
00633f10  14 00 9d e5                                      ldr r0, [sp, #0x14]
00633f14  94 6b f3 eb                                      bl #0x30ed6c
00633f18  00 10 a0 e1                                      mov r1, r0
00633f1c  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
00633f20  1f 6b f3 eb                                      bl #0x30eba4
00633f24  28 10 9d e5                                      ldr r1, [sp, #0x28]
00633f28  a4 00 8d e5                                      str r0, [sp, #0xa4]
00633f2c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00633f30  8d 6b f3 eb                                      bl #0x30ed6c
00633f34  00 10 a0 e1                                      mov r1, r0
00633f38  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00633f3c  18 6b f3 eb                                      bl #0x30eba4
00633f40  58 10 9d e5                                      ldr r1, [sp, #0x58]
00633f44  a8 00 8d e5                                      str r0, [sp, #0xa8]
00633f48  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
00633f4c  14 6b f3 eb                                      bl #0x30eba4
00633f50  00 10 a0 e1                                      mov r1, r0
00633f54  14 00 9d e5                                      ldr r0, [sp, #0x14]
00633f58  83 6b f3 eb                                      bl #0x30ed6c
00633f5c  14 00 8d e5                                      str r0, [sp, #0x14]
00633f60  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00633f64  00 10 a0 e1                                      mov r1, r0
00633f68  7f 6b f3 eb                                      bl #0x30ed6c
00633f6c  00 30 a0 e1                                      mov r3, r0
00633f70  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00633f74  08 30 8d e5                                      str r3, [sp, #8]
00633f78  00 10 a0 e1                                      mov r1, r0
00633f7c  7a 6b f3 eb                                      bl #0x30ed6c
00633f80  08 30 9d e5                                      ldr r3, [sp, #8]
00633f84  00 10 a0 e1                                      mov r1, r0
00633f88  03 00 a0 e1                                      mov r0, r3
00633f8c  04 6b f3 eb                                      bl #0x30eba4
00633f90  00 30 a0 e1                                      mov r3, r0
00633f94  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00633f98  08 30 8d e5                                      str r3, [sp, #8]
00633f9c  00 10 a0 e1                                      mov r1, r0
00633fa0  71 6b f3 eb                                      bl #0x30ed6c
00633fa4  08 30 9d e5                                      ldr r3, [sp, #8]
00633fa8  00 10 a0 e1                                      mov r1, r0
00633fac  03 00 a0 e1                                      mov r0, r3
00633fb0  fb 6a f3 eb                                      bl #0x30eba4
00633fb4  3a 6a f3 eb                                      bl #0x30e8a4
00633fb8  80 68 f3 eb                                      bl #0x30e1c0
00633fbc  b7 69 f3 eb                                      bl #0x30e6a0
00633fc0  06 10 a0 e1                                      mov r1, r6
00633fc4  00 30 a0 e1                                      mov r3, r0
00633fc8  fe 05 a0 e3                                      mov r0, #0x3f800000
00633fcc  08 30 8d e5                                      str r3, [sp, #8]
00633fd0  f5 68 f3 eb                                      bl #0x30e3ac
00633fd4  05 10 a0 e1                                      mov r1, r5
00633fd8  63 6b f3 eb                                      bl #0x30ed6c
00633fdc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00633fe0  08 30 9d e5                                      ldr r3, [sp, #8]
00633fe4  00 00 8d e5                                      str r0, [sp]
00633fe8  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00633fec  18 00 9d e5                                      ldr r0, [sp, #0x18]
00633ff0  b1 f2 ff eb                                      bl #0x630abc
00633ff4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00633ff8  00 60 a0 e1                                      mov r6, r0
00633ffc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00634000  0c 10 a0 e1                                      mov r1, ip
00634004  58 6b f3 eb                                      bl #0x30ed6c
00634008  ac 10 9d e5                                      ldr r1, [sp, #0xac]
0063400c  00 30 a0 e1                                      mov r3, r0
00634010  06 00 a0 e1                                      mov r0, r6
00634014  08 30 8d e5                                      str r3, [sp, #8]
00634018  53 6b f3 eb                                      bl #0x30ed6c
0063401c  08 30 9d e5                                      ldr r3, [sp, #8]
00634020  00 10 a0 e1                                      mov r1, r0
00634024  03 00 a0 e1                                      mov r0, r3
00634028  dd 6a f3 eb                                      bl #0x30eba4
0063402c  24 10 9d e5                                      ldr r1, [sp, #0x24]
00634030  e0 00 8d e5                                      str r0, [sp, #0xe0]
00634034  14 00 9d e5                                      ldr r0, [sp, #0x14]
00634038  4b 6b f3 eb                                      bl #0x30ed6c
0063403c  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00634040  00 30 a0 e1                                      mov r3, r0
00634044  06 00 a0 e1                                      mov r0, r6
00634048  08 30 8d e5                                      str r3, [sp, #8]
0063404c  46 6b f3 eb                                      bl #0x30ed6c
00634050  08 30 9d e5                                      ldr r3, [sp, #8]
00634054  00 10 a0 e1                                      mov r1, r0
00634058  03 00 a0 e1                                      mov r0, r3
0063405c  d0 6a f3 eb                                      bl #0x30eba4
00634060  28 10 9d e5                                      ldr r1, [sp, #0x28]
00634064  e4 00 8d e5                                      str r0, [sp, #0xe4]
00634068  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063406c  3e 6b f3 eb                                      bl #0x30ed6c
00634070  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00634074  00 30 a0 e1                                      mov r3, r0
00634078  06 00 a0 e1                                      mov r0, r6
0063407c  08 30 8d e5                                      str r3, [sp, #8]
00634080  39 6b f3 eb                                      bl #0x30ed6c
00634084  08 30 9d e5                                      ldr r3, [sp, #8]
00634088  00 10 a0 e1                                      mov r1, r0
0063408c  03 00 a0 e1                                      mov r0, r3
00634090  c3 6a f3 eb                                      bl #0x30eba4
00634094  00 10 a0 e3                                      mov r1, #0
00634098  e8 00 8d e5                                      str r0, [sp, #0xe8]
0063409c  68 00 9d e5                                      ldr r0, [sp, #0x68]
006340a0  94 68 f3 eb                                      bl #0x30e2f8
006340a4  00 00 50 e3                                      cmp r0, #0
006340a8  7e 00 00 1a                                      bne #0x6342a8
006340ac  0b 10 a0 e1                                      mov r1, fp
006340b0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006340b4  ba 6a f3 eb                                      bl #0x30eba4
006340b8  08 10 a0 e1                                      mov r1, r8
006340bc  00 b0 a0 e1                                      mov fp, r0
006340c0  30 00 9d e5                                      ldr r0, [sp, #0x30]
006340c4  b6 6a f3 eb                                      bl #0x30eba4
006340c8  07 10 a0 e1                                      mov r1, r7
006340cc  00 60 a0 e1                                      mov r6, r0
006340d0  34 00 9d e5                                      ldr r0, [sp, #0x34]
006340d4  b2 6a f3 eb                                      bl #0x30eba4
006340d8  00 10 a0 e3                                      mov r1, #0
006340dc  00 70 a0 e1                                      mov r7, r0
006340e0  60 00 9d e5                                      ldr r0, [sp, #0x60]
006340e4  83 68 f3 eb                                      bl #0x30e2f8
006340e8  00 00 50 e3                                      cmp r0, #0
006340ec  4c 00 00 0a                                      beq #0x634224
006340f0  50 10 9d e5                                      ldr r1, [sp, #0x50]
006340f4  0a 00 a0 e1                                      mov r0, sl
006340f8  1b 6b f3 eb                                      bl #0x30ed6c
006340fc  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00634100  00 80 a0 e1                                      mov r8, r0
00634104  09 00 a0 e1                                      mov r0, sb
00634108  17 6b f3 eb                                      bl #0x30ed6c
0063410c  08 10 a0 e1                                      mov r1, r8
00634110  00 a0 a0 e1                                      mov sl, r0
00634114  90 00 9d e5                                      ldr r0, [sp, #0x90]
00634118  13 6b f3 eb                                      bl #0x30ed6c
0063411c  00 10 a0 e1                                      mov r1, r0
00634120  70 00 9d e5                                      ldr r0, [sp, #0x70]
00634124  9e 6a f3 eb                                      bl #0x30eba4
00634128  0a 10 a0 e1                                      mov r1, sl
0063412c  00 90 a0 e1                                      mov sb, r0
00634130  84 00 9d e5                                      ldr r0, [sp, #0x84]
00634134  0c 6b f3 eb                                      bl #0x30ed6c
00634138  00 10 a0 e1                                      mov r1, r0
0063413c  09 00 a0 e1                                      mov r0, sb
00634140  97 6a f3 eb                                      bl #0x30eba4
00634144  00 10 a0 e1                                      mov r1, r0
00634148  0b 00 a0 e1                                      mov r0, fp
0063414c  96 68 f3 eb                                      bl #0x30e3ac
00634150  00 10 a0 e1                                      mov r1, r0
00634154  60 00 9d e5                                      ldr r0, [sp, #0x60]
00634158  03 6b f3 eb                                      bl #0x30ed6c
0063415c  00 10 a0 e1                                      mov r1, r0
00634160  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
00634164  8e 6a f3 eb                                      bl #0x30eba4
00634168  08 10 a0 e1                                      mov r1, r8
0063416c  e0 00 8d e5                                      str r0, [sp, #0xe0]
00634170  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
00634174  fc 6a f3 eb                                      bl #0x30ed6c
00634178  00 10 a0 e1                                      mov r1, r0
0063417c  74 00 9d e5                                      ldr r0, [sp, #0x74]
00634180  87 6a f3 eb                                      bl #0x30eba4
00634184  0a 10 a0 e1                                      mov r1, sl
00634188  00 90 a0 e1                                      mov sb, r0
0063418c  80 00 9d e5                                      ldr r0, [sp, #0x80]
00634190  f5 6a f3 eb                                      bl #0x30ed6c
00634194  00 10 a0 e1                                      mov r1, r0
00634198  09 00 a0 e1                                      mov r0, sb
0063419c  80 6a f3 eb                                      bl #0x30eba4
006341a0  00 10 a0 e1                                      mov r1, r0
006341a4  06 00 a0 e1                                      mov r0, r6
006341a8  7f 68 f3 eb                                      bl #0x30e3ac
006341ac  00 10 a0 e1                                      mov r1, r0
006341b0  60 00 9d e5                                      ldr r0, [sp, #0x60]
006341b4  ec 6a f3 eb                                      bl #0x30ed6c
006341b8  00 10 a0 e1                                      mov r1, r0
006341bc  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
006341c0  77 6a f3 eb                                      bl #0x30eba4
006341c4  08 10 a0 e1                                      mov r1, r8
006341c8  e4 00 8d e5                                      str r0, [sp, #0xe4]
006341cc  88 00 9d e5                                      ldr r0, [sp, #0x88]
006341d0  e5 6a f3 eb                                      bl #0x30ed6c
006341d4  00 10 a0 e1                                      mov r1, r0
006341d8  78 00 9d e5                                      ldr r0, [sp, #0x78]
006341dc  70 6a f3 eb                                      bl #0x30eba4
006341e0  0a 10 a0 e1                                      mov r1, sl
006341e4  00 80 a0 e1                                      mov r8, r0
006341e8  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006341ec  de 6a f3 eb                                      bl #0x30ed6c
006341f0  00 10 a0 e1                                      mov r1, r0
006341f4  08 00 a0 e1                                      mov r0, r8
006341f8  69 6a f3 eb                                      bl #0x30eba4
006341fc  00 10 a0 e1                                      mov r1, r0
00634200  07 00 a0 e1                                      mov r0, r7
00634204  68 68 f3 eb                                      bl #0x30e3ac
00634208  00 10 a0 e1                                      mov r1, r0
0063420c  60 00 9d e5                                      ldr r0, [sp, #0x60]
00634210  d5 6a f3 eb                                      bl #0x30ed6c
00634214  00 10 a0 e1                                      mov r1, r0
00634218  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
0063421c  60 6a f3 eb                                      bl #0x30eba4
00634220  e8 00 8d e5                                      str r0, [sp, #0xe8]
00634224  9a 19 09 e3                                      movw r1, #0x999a
00634228  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
0063422c  99 1e 43 e3                                      movt r1, #0x3e99
00634230  cd 6a f3 eb                                      bl #0x30ed6c
00634234  00 10 a0 e1                                      mov r1, r0
00634238  06 00 a0 e1                                      mov r0, r6
0063423c  58 6a f3 eb                                      bl #0x30eba4
00634240  9a 19 09 e3                                      movw r1, #0x999a
00634244  00 60 a0 e1                                      mov r6, r0
00634248  99 1e 43 e3                                      movt r1, #0x3e99
0063424c  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
00634250  c5 6a f3 eb                                      bl #0x30ed6c
00634254  00 10 a0 e1                                      mov r1, r0
00634258  07 00 a0 e1                                      mov r0, r7
0063425c  50 6a f3 eb                                      bl #0x30eba4
00634260  9a 19 09 e3                                      movw r1, #0x999a
00634264  00 70 a0 e1                                      mov r7, r0
00634268  99 1e 43 e3                                      movt r1, #0x3e99
0063426c  ec 00 9d e5                                      ldr r0, [sp, #0xec]
00634270  bd 6a f3 eb                                      bl #0x30ed6c
00634274  00 10 a0 e1                                      mov r1, r0
00634278  0b 00 a0 e1                                      mov r0, fp
0063427c  48 6a f3 eb                                      bl #0x30eba4
00634280  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
00634284  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
00634288  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
0063428c  00 00 84 e5                                      str r0, [r4]
00634290  04 60 84 e5                                      str r6, [r4, #4]
00634294  08 70 84 e5                                      str r7, [r4, #8]
00634298  0c 10 84 e5                                      str r1, [r4, #0xc]
0063429c  10 20 84 e5                                      str r2, [r4, #0x10]
006342a0  14 30 84 e5                                      str r3, [r4, #0x14]
006342a4  ba fe ff ea                                      b #0x633d94
006342a8  43 14 a0 e3                                      mov r1, #0x43000000
006342ac  0d 17 81 e2                                      add r1, r1, #0x340000
006342b0  68 00 9d e5                                      ldr r0, [sp, #0x68]
006342b4  ac 6a f3 eb                                      bl #0x30ed6c
006342b8  00 60 a0 e1                                      mov r6, r0
006342bc  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006342c0  ec ee ff eb                                      bl #0x62fe78
006342c4  00 20 a0 e1                                      mov r2, r0
006342c8  01 30 a0 e1                                      mov r3, r1
006342cc  06 00 a0 e1                                      mov r0, r6
006342d0  bf 14 a0 e3                                      mov r1, #0xbf000000
006342d4  10 20 8d e5                                      str r2, [sp, #0x10]
006342d8  08 30 8d e5                                      str r3, [sp, #8]
006342dc  a2 6a f3 eb                                      bl #0x30ed6c
006342e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006342e4  08 30 9d e5                                      ldr r3, [sp, #8]
006342e8  14 00 8d e5                                      str r0, [sp, #0x14]
006342ec  02 00 a0 e1                                      mov r0, r2
006342f0  03 10 a0 e1                                      mov r1, r3
006342f4  e9 68 f3 eb                                      bl #0x30e6a0
006342f8  00 10 a0 e1                                      mov r1, r0
006342fc  06 00 a0 e1                                      mov r0, r6
00634300  99 6a f3 eb                                      bl #0x30ed6c
00634304  14 10 9d e5                                      ldr r1, [sp, #0x14]
00634308  25 6a f3 eb                                      bl #0x30eba4
0063430c  64 69 f3 eb                                      bl #0x30e8a4
00634310  98 e0 9d e5                                      ldr lr, [sp, #0x98]
00634314  00 c0 a0 e3                                      mov ip, #0
00634318  00 20 a0 e1                                      mov r2, r0
0063431c  01 30 a0 e1                                      mov r3, r1
00634320  94 00 9d e5                                      ldr r0, [sp, #0x94]
00634324  00 e0 8d e5                                      str lr, [sp]
00634328  d4 c0 8d e5                                      str ip, [sp, #0xd4]
0063432c  d8 c0 8d e5                                      str ip, [sp, #0xd8]
00634330  dc c0 8d e5                                      str ip, [sp, #0xdc]
00634334  30 f2 ff eb                                      bl #0x630bfc
00634338  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0063433c  cd ee ff eb                                      bl #0x62fe78
00634340  d6 68 f3 eb                                      bl #0x30e6a0
00634344  00 10 a0 e1                                      mov r1, r0
00634348  06 00 a0 e1                                      mov r0, r6
0063434c  86 6a f3 eb                                      bl #0x30ed6c
00634350  00 10 a0 e1                                      mov r1, r0
00634354  14 00 9d e5                                      ldr r0, [sp, #0x14]
00634358  11 6a f3 eb                                      bl #0x30eba4
0063435c  50 69 f3 eb                                      bl #0x30e8a4
00634360  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
00634364  00 20 a0 e1                                      mov r2, r0
00634368  01 30 a0 e1                                      mov r3, r1
0063436c  94 00 9d e5                                      ldr r0, [sp, #0x94]
00634370  00 10 a0 e3                                      mov r1, #0
00634374  00 c0 8d e5                                      str ip, [sp]
00634378  c8 10 8d e5                                      str r1, [sp, #0xc8]
0063437c  cc 10 8d e5                                      str r1, [sp, #0xcc]
00634380  d0 10 8d e5                                      str r1, [sp, #0xd0]
00634384  5b f2 ff eb                                      bl #0x630cf8
00634388  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0063438c  b9 ee ff eb                                      bl #0x62fe78
00634390  c2 68 f3 eb                                      bl #0x30e6a0
00634394  00 10 a0 e1                                      mov r1, r0
00634398  06 00 a0 e1                                      mov r0, r6
0063439c  72 6a f3 eb                                      bl #0x30ed6c
006343a0  00 10 a0 e1                                      mov r1, r0
006343a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006343a8  fd 69 f3 eb                                      bl #0x30eba4
006343ac  3c 69 f3 eb                                      bl #0x30e8a4
006343b0  01 30 a0 e1                                      mov r3, r1
006343b4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
006343b8  00 e0 a0 e3                                      mov lr, #0
006343bc  00 20 a0 e1                                      mov r2, r0
006343c0  94 00 9d e5                                      ldr r0, [sp, #0x94]
006343c4  bc e0 8d e5                                      str lr, [sp, #0xbc]
006343c8  c0 e0 8d e5                                      str lr, [sp, #0xc0]
006343cc  c4 e0 8d e5                                      str lr, [sp, #0xc4]
006343d0  00 10 8d e5                                      str r1, [sp]
006343d4  83 f2 ff eb                                      bl #0x630de8
006343d8  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
006343dc  ec 60 9d e5                                      ldr r6, [sp, #0xec]
006343e0  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
006343e4  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
006343e8  02 10 a0 e1                                      mov r1, r2
006343ec  06 00 a0 e1                                      mov r0, r6
006343f0  28 c0 8d e5                                      str ip, [sp, #0x28]
006343f4  14 20 8d e5                                      str r2, [sp, #0x14]
006343f8  24 30 8d e5                                      str r3, [sp, #0x24]
006343fc  5a 6a f3 eb                                      bl #0x30ed6c
00634400  28 10 9d e5                                      ldr r1, [sp, #0x28]
00634404  00 30 a0 e1                                      mov r3, r0
00634408  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063440c  08 30 8d e5                                      str r3, [sp, #8]
00634410  55 6a f3 eb                                      bl #0x30ed6c
00634414  08 30 9d e5                                      ldr r3, [sp, #8]
00634418  f4 e0 9d e5                                      ldr lr, [sp, #0xf4]
0063441c  e8 20 9d e5                                      ldr r2, [sp, #0xe8]
00634420  00 10 a0 e1                                      mov r1, r0
00634424  03 00 a0 e1                                      mov r0, r3
00634428  ac e0 8d e5                                      str lr, [sp, #0xac]
0063442c  a4 20 8d e5                                      str r2, [sp, #0xa4]
00634430  db 69 f3 eb                                      bl #0x30eba4
00634434  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00634438  00 30 a0 e1                                      mov r3, r0
0063443c  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00634440  08 30 8d e5                                      str r3, [sp, #8]
00634444  48 6a f3 eb                                      bl #0x30ed6c
00634448  08 30 9d e5                                      ldr r3, [sp, #8]
0063444c  00 10 a0 e1                                      mov r1, r0
00634450  03 00 a0 e1                                      mov r0, r3
00634454  d2 69 f3 eb                                      bl #0x30eba4
00634458  00 10 a0 e3                                      mov r1, #0
0063445c  08 00 8d e5                                      str r0, [sp, #8]
00634460  a9 68 f3 eb                                      bl #0x30e70c
00634464  00 00 50 e3                                      cmp r0, #0
00634468  08 30 9d e5                                      ldr r3, [sp, #8]
0063446c  0e ff ff 0a                                      beq #0x6340ac
00634470  03 00 a0 e1                                      mov r0, r3
00634474  03 11 a0 e3                                      mov r1, #0xc0000000
00634478  3b 6a f3 eb                                      bl #0x30ed6c
0063447c  06 10 a0 e1                                      mov r1, r6
00634480  a8 00 8d e5                                      str r0, [sp, #0xa8]
00634484  38 6a f3 eb                                      bl #0x30ed6c
00634488  00 10 a0 e1                                      mov r1, r0
0063448c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00634490  c3 69 f3 eb                                      bl #0x30eba4
00634494  24 10 9d e5                                      ldr r1, [sp, #0x24]
00634498  e0 00 8d e5                                      str r0, [sp, #0xe0]
0063449c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006344a0  31 6a f3 eb                                      bl #0x30ed6c
006344a4  00 10 a0 e1                                      mov r1, r0
006344a8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006344ac  bc 69 f3 eb                                      bl #0x30eba4
006344b0  ac 10 9d e5                                      ldr r1, [sp, #0xac]
006344b4  e4 00 8d e5                                      str r0, [sp, #0xe4]
006344b8  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006344bc  2a 6a f3 eb                                      bl #0x30ed6c
006344c0  00 10 a0 e1                                      mov r1, r0
006344c4  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
006344c8  b5 69 f3 eb                                      bl #0x30eba4
006344cc  e8 00 8d e5                                      str r0, [sp, #0xe8]
006344d0  f5 fe ff ea                                      b #0x6340ac
006344d4  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006344d8  66 ee ff eb                                      bl #0x62fe78
006344dc  6f 68 f3 eb                                      bl #0x30e6a0
006344e0  00 10 a0 e1                                      mov r1, r0
006344e4  64 00 9d e5                                      ldr r0, [sp, #0x64]
006344e8  1f 6a f3 eb                                      bl #0x30ed6c
006344ec  bf 14 a0 e3                                      mov r1, #0xbf000000
006344f0  00 30 a0 e1                                      mov r3, r0
006344f4  64 00 9d e5                                      ldr r0, [sp, #0x64]
006344f8  08 30 8d e5                                      str r3, [sp, #8]
006344fc  1a 6a f3 eb                                      bl #0x30ed6c
00634500  08 30 9d e5                                      ldr r3, [sp, #8]
00634504  00 10 a0 e1                                      mov r1, r0
00634508  03 00 a0 e1                                      mov r0, r3
0063450c  a4 69 f3 eb                                      bl #0x30eba4
00634510  b4 00 8d e5                                      str r0, [sp, #0xb4]
00634514  54 fe ff ea                                      b #0x633e6c

; FUNCTION 0x00636e28, declared_size=3128, range_size=3128, mode=arm
; class-group: void glitch::ps::PDeflector
; alias: _ZN6glitch2ps10PDeflector5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
; demangled: void glitch::ps::PDeflector::apply<glitch::ps::GNPSParticle>(glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::GNPSParticle>::ParticleItt, glitch::ps::IParticleContext<glitch::ps::GNPSParticle>*)
; decoder-mode: arm
00636e28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00636e2c  fc d0 4d e2                                      sub sp, sp, #0xfc
00636e30  18 00 8d e5                                      str r0, [sp, #0x18]
00636e34  00 40 90 e5                                      ldr r4, [r0]
00636e38  00 50 a0 e3                                      mov r5, #0
00636e3c  ec 00 8d e2                                      add r0, sp, #0xec
00636e40  00 60 94 e5                                      ldr r6, [r4]
00636e44  1c 60 8d e5                                      str r6, [sp, #0x1c]
00636e48  14 70 94 e5                                      ldr r7, [r4, #0x14]
00636e4c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00636e50  60 70 8d e5                                      str r7, [sp, #0x60]
00636e54  04 c0 94 e5                                      ldr ip, [r4, #4]
00636e58  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00636e5c  58 c0 8d e5                                      str ip, [sp, #0x58]
00636e60  10 60 96 e5                                      ldr r6, [r6, #0x10]
00636e64  24 c0 9e e5                                      ldr ip, [lr, #0x24]
00636e68  14 80 9e e5                                      ldr r8, [lr, #0x14]
00636e6c  02 61 86 e2                                      add r6, r6, #0x80000000
00636e70  18 a0 9e e5                                      ldr sl, [lr, #0x18]
00636e74  20 90 97 e5                                      ldr sb, [r7, #0x20]
00636e78  28 e0 9e e5                                      ldr lr, [lr, #0x28]
00636e7c  40 60 8d e5                                      str r6, [sp, #0x40]
00636e80  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00636e84  08 70 94 e5                                      ldr r7, [r4, #8]
00636e88  02 81 88 e2                                      add r8, r8, #0x80000000
00636e8c  68 60 8d e5                                      str r6, [sp, #0x68]
00636e90  10 40 94 e5                                      ldr r4, [r4, #0x10]
00636e94  02 a1 8a e2                                      add sl, sl, #0x80000000
00636e98  6c 40 8d e5                                      str r4, [sp, #0x6c]
00636e9c  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00636ea0  40 50 c4 e5                                      strb r5, [r4, #0x40]
00636ea4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00636ea8  20 20 8d e5                                      str r2, [sp, #0x20]
00636eac  54 30 8d e5                                      str r3, [sp, #0x54]
00636eb0  3c 80 8d e5                                      str r8, [sp, #0x3c]
00636eb4  38 a0 8d e5                                      str sl, [sp, #0x38]
00636eb8  00 60 96 e5                                      ldr r6, [r6]
00636ebc  01 40 a0 e1                                      mov r4, r1
00636ec0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00636ec4  4c 60 8d e5                                      str r6, [sp, #0x4c]
00636ec8  04 10 91 e5                                      ldr r1, [r1, #4]
00636ecc  48 10 8d e5                                      str r1, [sp, #0x48]
00636ed0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00636ed4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00636ed8  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
00636edc  08 20 92 e5                                      ldr r2, [r2, #8]
00636ee0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00636ee4  44 20 8d e5                                      str r2, [sp, #0x44]
00636ee8  30 30 93 e5                                      ldr r3, [r3, #0x30]
00636eec  2c 30 8d e5                                      str r3, [sp, #0x2c]
00636ef0  34 60 96 e5                                      ldr r6, [r6, #0x34]
00636ef4  30 60 8d e5                                      str r6, [sp, #0x30]
00636ef8  38 10 91 e5                                      ldr r1, [r1, #0x38]
00636efc  f4 e0 8d e5                                      str lr, [sp, #0xf4]
00636f00  f0 c0 8d e5                                      str ip, [sp, #0xf0]
00636f04  34 10 8d e5                                      str r1, [sp, #0x34]
00636f08  ec 90 8d e5                                      str sb, [sp, #0xec]
00636f0c  73 9e f4 eb                                      bl #0x35e8e0
00636f10  40 00 9d e5                                      ldr r0, [sp, #0x40]
00636f14  00 10 a0 e1                                      mov r1, r0
00636f18  93 5f f3 eb                                      bl #0x30ed6c
00636f1c  00 60 a0 e1                                      mov r6, r0
00636f20  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00636f24  00 10 a0 e1                                      mov r1, r0
00636f28  8f 5f f3 eb                                      bl #0x30ed6c
00636f2c  00 10 a0 e1                                      mov r1, r0
00636f30  06 00 a0 e1                                      mov r0, r6
00636f34  1a 5f f3 eb                                      bl #0x30eba4
00636f38  00 60 a0 e1                                      mov r6, r0
00636f3c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00636f40  00 10 a0 e1                                      mov r1, r0
00636f44  88 5f f3 eb                                      bl #0x30ed6c
00636f48  00 10 a0 e1                                      mov r1, r0
00636f4c  06 00 a0 e1                                      mov r0, r6
00636f50  13 5f f3 eb                                      bl #0x30eba4
00636f54  52 5e f3 eb                                      bl #0x30e8a4
00636f58  98 5c f3 eb                                      bl #0x30e1c0
00636f5c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00636f60  00 60 92 e5                                      ldr r6, [r2]
00636f64  cd 5d f3 eb                                      bl #0x30e6a0
00636f68  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00636f6c  7e 5f f3 eb                                      bl #0x30ed6c
00636f70  3f 14 a0 e3                                      mov r1, #0x3f000000
00636f74  7c 5f f3 eb                                      bl #0x30ed6c
00636f78  50 00 8d e5                                      str r0, [sp, #0x50]
00636f7c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00636f80  00 10 a0 e1                                      mov r1, r0
00636f84  78 5f f3 eb                                      bl #0x30ed6c
00636f88  00 60 a0 e1                                      mov r6, r0
00636f8c  48 00 9d e5                                      ldr r0, [sp, #0x48]
00636f90  00 10 a0 e1                                      mov r1, r0
00636f94  74 5f f3 eb                                      bl #0x30ed6c
00636f98  00 10 a0 e1                                      mov r1, r0
00636f9c  06 00 a0 e1                                      mov r0, r6
00636fa0  ff 5e f3 eb                                      bl #0x30eba4
00636fa4  00 60 a0 e1                                      mov r6, r0
00636fa8  44 00 9d e5                                      ldr r0, [sp, #0x44]
00636fac  00 10 a0 e1                                      mov r1, r0
00636fb0  6d 5f f3 eb                                      bl #0x30ed6c
00636fb4  00 10 a0 e1                                      mov r1, r0
00636fb8  06 00 a0 e1                                      mov r0, r6
00636fbc  f8 5e f3 eb                                      bl #0x30eba4
00636fc0  37 5e f3 eb                                      bl #0x30e8a4
00636fc4  7d 5c f3 eb                                      bl #0x30e1c0
00636fc8  18 30 9d e5                                      ldr r3, [sp, #0x18]
00636fcc  00 60 93 e5                                      ldr r6, [r3]
00636fd0  b2 5d f3 eb                                      bl #0x30e6a0
00636fd4  18 10 96 e5                                      ldr r1, [r6, #0x18]
00636fd8  63 5f f3 eb                                      bl #0x30ed6c
00636fdc  3f 14 a0 e3                                      mov r1, #0x3f000000
00636fe0  61 5f f3 eb                                      bl #0x30ed6c
00636fe4  18 60 9d e5                                      ldr r6, [sp, #0x18]
00636fe8  5c 00 8d e5                                      str r0, [sp, #0x5c]
00636fec  07 10 a0 e1                                      mov r1, r7
00636ff0  14 30 96 e5                                      ldr r3, [r6, #0x14]
00636ff4  18 20 96 e5                                      ldr r2, [r6, #0x18]
00636ff8  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
00636ffc  44 50 c6 e5                                      strb r5, [r6, #0x44]
00637000  02 31 83 e2                                      add r3, r3, #0x80000000
00637004  02 21 82 e2                                      add r2, r2, #0x80000000
00637008  02 c1 8c e2                                      add ip, ip, #0x80000000
0063700c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00637010  90 30 8d e5                                      str r3, [sp, #0x90]
00637014  8c 20 8d e5                                      str r2, [sp, #0x8c]
00637018  88 c0 8d e5                                      str ip, [sp, #0x88]
0063701c  52 5f f3 eb                                      bl #0x30ed6c
00637020  64 00 8d e5                                      str r0, [sp, #0x64]
00637024  34 c0 96 e5                                      ldr ip, [r6, #0x34]
00637028  00 30 a0 e3                                      mov r3, #0
0063702c  e0 30 8d e5                                      str r3, [sp, #0xe0]
00637030  70 c0 8d e5                                      str ip, [sp, #0x70]
00637034  e4 30 8d e5                                      str r3, [sp, #0xe4]
00637038  e8 30 8d e5                                      str r3, [sp, #0xe8]
0063703c  38 e0 96 e5                                      ldr lr, [r6, #0x38]
00637040  20 70 9d e5                                      ldr r7, [sp, #0x20]
00637044  74 e0 8d e5                                      str lr, [sp, #0x74]
00637048  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
0063704c  07 00 54 e1                                      cmp r4, r7
00637050  54 70 9d e5                                      ldr r7, [sp, #0x54]
00637054  78 00 8d e5                                      str r0, [sp, #0x78]
00637058  04 10 96 e5                                      ldr r1, [r6, #4]
0063705c  84 10 8d e5                                      str r1, [sp, #0x84]
00637060  08 20 96 e5                                      ldr r2, [r6, #8]
00637064  80 20 8d e5                                      str r2, [sp, #0x80]
00637068  0c 60 96 e5                                      ldr r6, [r6, #0xc]
0063706c  7c 60 8d e5                                      str r6, [sp, #0x7c]
00637070  50 50 97 e5                                      ldr r5, [r7, #0x50]
00637074  9c 00 00 0a                                      beq #0x6372ec
00637078  e0 c0 8d e2                                      add ip, sp, #0xe0
0063707c  d4 e0 8d e2                                      add lr, sp, #0xd4
00637080  c8 00 8d e2                                      add r0, sp, #0xc8
00637084  bc 10 8d e2                                      add r1, sp, #0xbc
00637088  94 c0 8d e5                                      str ip, [sp, #0x94]
0063708c  98 e0 8d e5                                      str lr, [sp, #0x98]
00637090  9c 00 8d e5                                      str r0, [sp, #0x9c]
00637094  a0 10 8d e5                                      str r1, [sp, #0xa0]
00637098  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0063709c  10 70 94 e5                                      ldr r7, [r4, #0x10]
006370a0  14 60 94 e5                                      ldr r6, [r4, #0x14]
006370a4  03 10 a0 e1                                      mov r1, r3
006370a8  05 00 a0 e1                                      mov r0, r5
006370ac  e0 30 8d e5                                      str r3, [sp, #0xe0]
006370b0  e4 70 8d e5                                      str r7, [sp, #0xe4]
006370b4  e8 60 8d e5                                      str r6, [sp, #0xe8]
006370b8  2b 5f f3 eb                                      bl #0x30ed6c
006370bc  07 10 a0 e1                                      mov r1, r7
006370c0  00 b0 a0 e1                                      mov fp, r0
006370c4  05 00 a0 e1                                      mov r0, r5
006370c8  27 5f f3 eb                                      bl #0x30ed6c
006370cc  06 10 a0 e1                                      mov r1, r6
006370d0  00 90 a0 e1                                      mov sb, r0
006370d4  05 00 a0 e1                                      mov r0, r5
006370d8  23 5f f3 eb                                      bl #0x30ed6c
006370dc  ec 80 9d e5                                      ldr r8, [sp, #0xec]
006370e0  00 a0 a0 e1                                      mov sl, r0
006370e4  0b 00 a0 e1                                      mov r0, fp
006370e8  08 10 a0 e1                                      mov r1, r8
006370ec  1e 5f f3 eb                                      bl #0x30ed6c
006370f0  f0 70 9d e5                                      ldr r7, [sp, #0xf0]
006370f4  00 60 a0 e1                                      mov r6, r0
006370f8  09 00 a0 e1                                      mov r0, sb
006370fc  07 10 a0 e1                                      mov r1, r7
00637100  19 5f f3 eb                                      bl #0x30ed6c
00637104  00 10 a0 e1                                      mov r1, r0
00637108  06 00 a0 e1                                      mov r0, r6
0063710c  a4 5e f3 eb                                      bl #0x30eba4
00637110  f4 60 9d e5                                      ldr r6, [sp, #0xf4]
00637114  00 30 a0 e1                                      mov r3, r0
00637118  0a 00 a0 e1                                      mov r0, sl
0063711c  06 10 a0 e1                                      mov r1, r6
00637120  08 30 8d e5                                      str r3, [sp, #8]
00637124  10 5f f3 eb                                      bl #0x30ed6c
00637128  08 30 9d e5                                      ldr r3, [sp, #8]
0063712c  00 10 a0 e1                                      mov r1, r0
00637130  03 00 a0 e1                                      mov r0, r3
00637134  9a 5e f3 eb                                      bl #0x30eba4
00637138  00 10 a0 e3                                      mov r1, #0
0063713c  14 00 8d e5                                      str r0, [sp, #0x14]
00637140  91 5b f3 eb                                      bl #0x30df8c
00637144  00 00 50 e3                                      cmp r0, #0
00637148  63 00 00 1a                                      bne #0x6372dc
0063714c  00 20 94 e5                                      ldr r2, [r4]
00637150  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00637154  24 20 8d e5                                      str r2, [sp, #0x24]
00637158  04 30 94 e5                                      ldr r3, [r4, #4]
0063715c  02 10 a0 e1                                      mov r1, r2
00637160  28 30 8d e5                                      str r3, [sp, #0x28]
00637164  90 5c f3 eb                                      bl #0x30e3ac
00637168  00 10 a0 e1                                      mov r1, r0
0063716c  08 00 a0 e1                                      mov r0, r8
00637170  fd 5e f3 eb                                      bl #0x30ed6c
00637174  28 10 9d e5                                      ldr r1, [sp, #0x28]
00637178  00 80 a0 e1                                      mov r8, r0
0063717c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00637180  89 5c f3 eb                                      bl #0x30e3ac
00637184  00 10 a0 e1                                      mov r1, r0
00637188  07 00 a0 e1                                      mov r0, r7
0063718c  f6 5e f3 eb                                      bl #0x30ed6c
00637190  00 10 a0 e1                                      mov r1, r0
00637194  08 00 a0 e1                                      mov r0, r8
00637198  81 5e f3 eb                                      bl #0x30eba4
0063719c  08 70 94 e5                                      ldr r7, [r4, #8]
006371a0  00 80 a0 e1                                      mov r8, r0
006371a4  34 00 9d e5                                      ldr r0, [sp, #0x34]
006371a8  07 10 a0 e1                                      mov r1, r7
006371ac  7e 5c f3 eb                                      bl #0x30e3ac
006371b0  00 10 a0 e1                                      mov r1, r0
006371b4  06 00 a0 e1                                      mov r0, r6
006371b8  eb 5e f3 eb                                      bl #0x30ed6c
006371bc  00 10 a0 e1                                      mov r1, r0
006371c0  08 00 a0 e1                                      mov r0, r8
006371c4  76 5e f3 eb                                      bl #0x30eba4
006371c8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006371cc  b0 5e f3 eb                                      bl #0x30ec94
006371d0  00 10 a0 e3                                      mov r1, #0
006371d4  00 60 a0 e1                                      mov r6, r0
006371d8  f3 5d f3 eb                                      bl #0x30e9ac
006371dc  00 00 50 e3                                      cmp r0, #0
006371e0  3d 00 00 1a                                      bne #0x6372dc
006371e4  06 00 a0 e1                                      mov r0, r6
006371e8  fe 15 a0 e3                                      mov r1, #0x3f800000
006371ec  41 5c f3 eb                                      bl #0x30e2f8
006371f0  00 00 50 e3                                      cmp r0, #0
006371f4  38 00 00 1a                                      bne #0x6372dc
006371f8  0b 10 a0 e1                                      mov r1, fp
006371fc  06 00 a0 e1                                      mov r0, r6
00637200  d9 5e f3 eb                                      bl #0x30ed6c
00637204  00 10 a0 e1                                      mov r1, r0
00637208  24 00 9d e5                                      ldr r0, [sp, #0x24]
0063720c  64 5e f3 eb                                      bl #0x30eba4
00637210  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00637214  64 5c f3 eb                                      bl #0x30e3ac
00637218  09 10 a0 e1                                      mov r1, sb
0063721c  00 b0 a0 e1                                      mov fp, r0
00637220  06 00 a0 e1                                      mov r0, r6
00637224  d0 5e f3 eb                                      bl #0x30ed6c
00637228  00 10 a0 e1                                      mov r1, r0
0063722c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00637230  5b 5e f3 eb                                      bl #0x30eba4
00637234  30 10 9d e5                                      ldr r1, [sp, #0x30]
00637238  5b 5c f3 eb                                      bl #0x30e3ac
0063723c  0a 10 a0 e1                                      mov r1, sl
00637240  00 80 a0 e1                                      mov r8, r0
00637244  06 00 a0 e1                                      mov r0, r6
00637248  c7 5e f3 eb                                      bl #0x30ed6c
0063724c  00 10 a0 e1                                      mov r1, r0
00637250  07 00 a0 e1                                      mov r0, r7
00637254  52 5e f3 eb                                      bl #0x30eba4
00637258  34 10 9d e5                                      ldr r1, [sp, #0x34]
0063725c  52 5c f3 eb                                      bl #0x30e3ac
00637260  0b 10 a0 e1                                      mov r1, fp
00637264  00 70 a0 e1                                      mov r7, r0
00637268  40 00 9d e5                                      ldr r0, [sp, #0x40]
0063726c  be 5e f3 eb                                      bl #0x30ed6c
00637270  08 10 a0 e1                                      mov r1, r8
00637274  00 a0 a0 e1                                      mov sl, r0
00637278  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0063727c  ba 5e f3 eb                                      bl #0x30ed6c
00637280  00 10 a0 e1                                      mov r1, r0
00637284  0a 00 a0 e1                                      mov r0, sl
00637288  45 5e f3 eb                                      bl #0x30eba4
0063728c  07 10 a0 e1                                      mov r1, r7
00637290  00 a0 a0 e1                                      mov sl, r0
00637294  38 00 9d e5                                      ldr r0, [sp, #0x38]
00637298  b3 5e f3 eb                                      bl #0x30ed6c
0063729c  00 10 a0 e1                                      mov r1, r0
006372a0  0a 00 a0 e1                                      mov r0, sl
006372a4  3e 5e f3 eb                                      bl #0x30eba4
006372a8  50 10 9d e5                                      ldr r1, [sp, #0x50]
006372ac  78 5e f3 eb                                      bl #0x30ec94
006372b0  fe 15 a0 e3                                      mov r1, #0x3f800000
006372b4  00 a0 a0 e1                                      mov sl, r0
006372b8  0e 5c f3 eb                                      bl #0x30e2f8
006372bc  00 00 50 e3                                      cmp r0, #0
006372c0  05 00 00 1a                                      bne #0x6372dc
006372c4  bf 14 a0 e3                                      mov r1, #0xbf000000
006372c8  0a 00 a0 e1                                      mov r0, sl
006372cc  02 15 81 e2                                      add r1, r1, #0x800000
006372d0  0d 5d f3 eb                                      bl #0x30e70c
006372d4  00 00 50 e3                                      cmp r0, #0
006372d8  0a 00 00 0a                                      beq #0x637308
006372dc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006372e0  9c 40 84 e2                                      add r4, r4, #0x9c
006372e4  04 00 53 e1                                      cmp r3, r4
006372e8  6a ff ff 1a                                      bne #0x637098
006372ec  18 40 9d e5                                      ldr r4, [sp, #0x18]
006372f0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006372f4  41 20 a0 e3                                      mov r2, #0x41
006372f8  04 00 84 e2                                      add r0, r4, #4
006372fc  59 5d f3 eb                                      bl #0x30e868
00637300  fc d0 8d e2                                      add sp, sp, #0xfc
00637304  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00637308  0b 10 a0 e1                                      mov r1, fp
0063730c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00637310  95 5e f3 eb                                      bl #0x30ed6c
00637314  08 10 a0 e1                                      mov r1, r8
00637318  00 90 a0 e1                                      mov sb, r0
0063731c  48 00 9d e5                                      ldr r0, [sp, #0x48]
00637320  91 5e f3 eb                                      bl #0x30ed6c
00637324  00 10 a0 e1                                      mov r1, r0
00637328  09 00 a0 e1                                      mov r0, sb
0063732c  1c 5e f3 eb                                      bl #0x30eba4
00637330  07 10 a0 e1                                      mov r1, r7
00637334  00 90 a0 e1                                      mov sb, r0
00637338  44 00 9d e5                                      ldr r0, [sp, #0x44]
0063733c  8a 5e f3 eb                                      bl #0x30ed6c
00637340  00 10 a0 e1                                      mov r1, r0
00637344  09 00 a0 e1                                      mov r0, sb
00637348  15 5e f3 eb                                      bl #0x30eba4
0063734c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00637350  4f 5e f3 eb                                      bl #0x30ec94
00637354  fe 15 a0 e3                                      mov r1, #0x3f800000
00637358  00 90 a0 e1                                      mov sb, r0
0063735c  e5 5b f3 eb                                      bl #0x30e2f8
00637360  00 00 50 e3                                      cmp r0, #0
00637364  dc ff ff 1a                                      bne #0x6372dc
00637368  bf 14 a0 e3                                      mov r1, #0xbf000000
0063736c  09 00 a0 e1                                      mov r0, sb
00637370  02 15 81 e2                                      add r1, r1, #0x800000
00637374  e4 5c f3 eb                                      bl #0x30e70c
00637378  00 00 50 e3                                      cmp r0, #0
0063737c  d6 ff ff 1a                                      bne #0x6372dc
00637380  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00637384  00 30 9c e5                                      ldr r3, [ip]
00637388  0c 00 a0 e1                                      mov r0, ip
0063738c  0f e0 a0 e1                                      mov lr, pc
00637390  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00637394  00 10 a0 e3                                      mov r1, #0
00637398  b0 00 8d e5                                      str r0, [sp, #0xb0]
0063739c  64 00 9d e5                                      ldr r0, [sp, #0x64]
006373a0  f9 5a f3 eb                                      bl #0x30df8c
006373a4  00 00 50 e3                                      cmp r0, #0
006373a8  00 e0 a0 13                                      movne lr, #0
006373ac  b4 e0 8d 15                                      strne lr, [sp, #0xb4]
006373b0  99 01 00 0a                                      beq #0x637a1c
006373b4  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
006373b8  ec c0 9d e5                                      ldr ip, [sp, #0xec]
006373bc  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
006373c0  02 10 a0 e1                                      mov r1, r2
006373c4  10 20 8d e5                                      str r2, [sp, #0x10]
006373c8  24 00 8d e5                                      str r0, [sp, #0x24]
006373cc  0c 00 a0 e1                                      mov r0, ip
006373d0  0c c0 8d e5                                      str ip, [sp, #0xc]
006373d4  64 5e f3 eb                                      bl #0x30ed6c
006373d8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
006373dc  00 30 a0 e1                                      mov r3, r0
006373e0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006373e4  08 30 8d e5                                      str r3, [sp, #8]
006373e8  5f 5e f3 eb                                      bl #0x30ed6c
006373ec  08 30 9d e5                                      ldr r3, [sp, #8]
006373f0  00 10 a0 e1                                      mov r1, r0
006373f4  03 00 a0 e1                                      mov r0, r3
006373f8  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
006373fc  28 30 8d e5                                      str r3, [sp, #0x28]
00637400  e7 5d f3 eb                                      bl #0x30eba4
00637404  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
00637408  00 30 a0 e1                                      mov r3, r0
0063740c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00637410  08 30 8d e5                                      str r3, [sp, #8]
00637414  54 5e f3 eb                                      bl #0x30ed6c
00637418  08 30 9d e5                                      ldr r3, [sp, #8]
0063741c  00 10 a0 e1                                      mov r1, r0
00637420  03 00 a0 e1                                      mov r0, r3
00637424  de 5d f3 eb                                      bl #0x30eba4
00637428  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0063742c  02 01 80 e2                                      add r0, r0, #0x80000000
00637430  14 00 8d e5                                      str r0, [sp, #0x14]
00637434  0c 10 a0 e1                                      mov r1, ip
00637438  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063743c  4a 5e f3 eb                                      bl #0x30ed6c
00637440  10 20 9d e5                                      ldr r2, [sp, #0x10]
00637444  00 10 a0 e1                                      mov r1, r0
00637448  02 00 a0 e1                                      mov r0, r2
0063744c  d4 5d f3 eb                                      bl #0x30eba4
00637450  24 10 9d e5                                      ldr r1, [sp, #0x24]
00637454  ac 00 8d e5                                      str r0, [sp, #0xac]
00637458  14 00 9d e5                                      ldr r0, [sp, #0x14]
0063745c  42 5e f3 eb                                      bl #0x30ed6c
00637460  00 10 a0 e1                                      mov r1, r0
00637464  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
00637468  cd 5d f3 eb                                      bl #0x30eba4
0063746c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00637470  a4 00 8d e5                                      str r0, [sp, #0xa4]
00637474  14 00 9d e5                                      ldr r0, [sp, #0x14]
00637478  3b 5e f3 eb                                      bl #0x30ed6c
0063747c  00 10 a0 e1                                      mov r1, r0
00637480  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00637484  c6 5d f3 eb                                      bl #0x30eba4
00637488  58 10 9d e5                                      ldr r1, [sp, #0x58]
0063748c  a8 00 8d e5                                      str r0, [sp, #0xa8]
00637490  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
00637494  c2 5d f3 eb                                      bl #0x30eba4
00637498  00 10 a0 e1                                      mov r1, r0
0063749c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006374a0  31 5e f3 eb                                      bl #0x30ed6c
006374a4  14 00 8d e5                                      str r0, [sp, #0x14]
006374a8  ac 00 9d e5                                      ldr r0, [sp, #0xac]
006374ac  00 10 a0 e1                                      mov r1, r0
006374b0  2d 5e f3 eb                                      bl #0x30ed6c
006374b4  00 30 a0 e1                                      mov r3, r0
006374b8  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
006374bc  08 30 8d e5                                      str r3, [sp, #8]
006374c0  00 10 a0 e1                                      mov r1, r0
006374c4  28 5e f3 eb                                      bl #0x30ed6c
006374c8  08 30 9d e5                                      ldr r3, [sp, #8]
006374cc  00 10 a0 e1                                      mov r1, r0
006374d0  03 00 a0 e1                                      mov r0, r3
006374d4  b2 5d f3 eb                                      bl #0x30eba4
006374d8  00 30 a0 e1                                      mov r3, r0
006374dc  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006374e0  08 30 8d e5                                      str r3, [sp, #8]
006374e4  00 10 a0 e1                                      mov r1, r0
006374e8  1f 5e f3 eb                                      bl #0x30ed6c
006374ec  08 30 9d e5                                      ldr r3, [sp, #8]
006374f0  00 10 a0 e1                                      mov r1, r0
006374f4  03 00 a0 e1                                      mov r0, r3
006374f8  a9 5d f3 eb                                      bl #0x30eba4
006374fc  e8 5c f3 eb                                      bl #0x30e8a4
00637500  2e 5b f3 eb                                      bl #0x30e1c0
00637504  65 5c f3 eb                                      bl #0x30e6a0
00637508  06 10 a0 e1                                      mov r1, r6
0063750c  00 30 a0 e1                                      mov r3, r0
00637510  fe 05 a0 e3                                      mov r0, #0x3f800000
00637514  08 30 8d e5                                      str r3, [sp, #8]
00637518  a3 5b f3 eb                                      bl #0x30e3ac
0063751c  05 10 a0 e1                                      mov r1, r5
00637520  11 5e f3 eb                                      bl #0x30ed6c
00637524  14 20 9d e5                                      ldr r2, [sp, #0x14]
00637528  08 30 9d e5                                      ldr r3, [sp, #8]
0063752c  00 00 8d e5                                      str r0, [sp]
00637530  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00637534  18 00 9d e5                                      ldr r0, [sp, #0x18]
00637538  5f e5 ff eb                                      bl #0x630abc
0063753c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00637540  00 60 a0 e1                                      mov r6, r0
00637544  14 00 9d e5                                      ldr r0, [sp, #0x14]
00637548  0c 10 a0 e1                                      mov r1, ip
0063754c  06 5e f3 eb                                      bl #0x30ed6c
00637550  ac 10 9d e5                                      ldr r1, [sp, #0xac]
00637554  00 30 a0 e1                                      mov r3, r0
00637558  06 00 a0 e1                                      mov r0, r6
0063755c  08 30 8d e5                                      str r3, [sp, #8]
00637560  01 5e f3 eb                                      bl #0x30ed6c
00637564  08 30 9d e5                                      ldr r3, [sp, #8]
00637568  00 10 a0 e1                                      mov r1, r0
0063756c  03 00 a0 e1                                      mov r0, r3
00637570  8b 5d f3 eb                                      bl #0x30eba4
00637574  24 10 9d e5                                      ldr r1, [sp, #0x24]
00637578  e0 00 8d e5                                      str r0, [sp, #0xe0]
0063757c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00637580  f9 5d f3 eb                                      bl #0x30ed6c
00637584  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00637588  00 30 a0 e1                                      mov r3, r0
0063758c  06 00 a0 e1                                      mov r0, r6
00637590  08 30 8d e5                                      str r3, [sp, #8]
00637594  f4 5d f3 eb                                      bl #0x30ed6c
00637598  08 30 9d e5                                      ldr r3, [sp, #8]
0063759c  00 10 a0 e1                                      mov r1, r0
006375a0  03 00 a0 e1                                      mov r0, r3
006375a4  7e 5d f3 eb                                      bl #0x30eba4
006375a8  28 10 9d e5                                      ldr r1, [sp, #0x28]
006375ac  e4 00 8d e5                                      str r0, [sp, #0xe4]
006375b0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006375b4  ec 5d f3 eb                                      bl #0x30ed6c
006375b8  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
006375bc  00 30 a0 e1                                      mov r3, r0
006375c0  06 00 a0 e1                                      mov r0, r6
006375c4  08 30 8d e5                                      str r3, [sp, #8]
006375c8  e7 5d f3 eb                                      bl #0x30ed6c
006375cc  08 30 9d e5                                      ldr r3, [sp, #8]
006375d0  00 10 a0 e1                                      mov r1, r0
006375d4  03 00 a0 e1                                      mov r0, r3
006375d8  71 5d f3 eb                                      bl #0x30eba4
006375dc  00 10 a0 e3                                      mov r1, #0
006375e0  e8 00 8d e5                                      str r0, [sp, #0xe8]
006375e4  68 00 9d e5                                      ldr r0, [sp, #0x68]
006375e8  42 5b f3 eb                                      bl #0x30e2f8
006375ec  00 00 50 e3                                      cmp r0, #0
006375f0  7e 00 00 1a                                      bne #0x6377f0
006375f4  0b 10 a0 e1                                      mov r1, fp
006375f8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006375fc  68 5d f3 eb                                      bl #0x30eba4
00637600  08 10 a0 e1                                      mov r1, r8
00637604  00 b0 a0 e1                                      mov fp, r0
00637608  30 00 9d e5                                      ldr r0, [sp, #0x30]
0063760c  64 5d f3 eb                                      bl #0x30eba4
00637610  07 10 a0 e1                                      mov r1, r7
00637614  00 60 a0 e1                                      mov r6, r0
00637618  34 00 9d e5                                      ldr r0, [sp, #0x34]
0063761c  60 5d f3 eb                                      bl #0x30eba4
00637620  00 10 a0 e3                                      mov r1, #0
00637624  00 70 a0 e1                                      mov r7, r0
00637628  60 00 9d e5                                      ldr r0, [sp, #0x60]
0063762c  31 5b f3 eb                                      bl #0x30e2f8
00637630  00 00 50 e3                                      cmp r0, #0
00637634  4c 00 00 0a                                      beq #0x63776c
00637638  50 10 9d e5                                      ldr r1, [sp, #0x50]
0063763c  0a 00 a0 e1                                      mov r0, sl
00637640  c9 5d f3 eb                                      bl #0x30ed6c
00637644  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00637648  00 80 a0 e1                                      mov r8, r0
0063764c  09 00 a0 e1                                      mov r0, sb
00637650  c5 5d f3 eb                                      bl #0x30ed6c
00637654  08 10 a0 e1                                      mov r1, r8
00637658  00 a0 a0 e1                                      mov sl, r0
0063765c  90 00 9d e5                                      ldr r0, [sp, #0x90]
00637660  c1 5d f3 eb                                      bl #0x30ed6c
00637664  00 10 a0 e1                                      mov r1, r0
00637668  70 00 9d e5                                      ldr r0, [sp, #0x70]
0063766c  4c 5d f3 eb                                      bl #0x30eba4
00637670  0a 10 a0 e1                                      mov r1, sl
00637674  00 90 a0 e1                                      mov sb, r0
00637678  84 00 9d e5                                      ldr r0, [sp, #0x84]
0063767c  ba 5d f3 eb                                      bl #0x30ed6c
00637680  00 10 a0 e1                                      mov r1, r0
00637684  09 00 a0 e1                                      mov r0, sb
00637688  45 5d f3 eb                                      bl #0x30eba4
0063768c  00 10 a0 e1                                      mov r1, r0
00637690  0b 00 a0 e1                                      mov r0, fp
00637694  44 5b f3 eb                                      bl #0x30e3ac
00637698  00 10 a0 e1                                      mov r1, r0
0063769c  60 00 9d e5                                      ldr r0, [sp, #0x60]
006376a0  b1 5d f3 eb                                      bl #0x30ed6c
006376a4  00 10 a0 e1                                      mov r1, r0
006376a8  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
006376ac  3c 5d f3 eb                                      bl #0x30eba4
006376b0  08 10 a0 e1                                      mov r1, r8
006376b4  e0 00 8d e5                                      str r0, [sp, #0xe0]
006376b8  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
006376bc  aa 5d f3 eb                                      bl #0x30ed6c
006376c0  00 10 a0 e1                                      mov r1, r0
006376c4  74 00 9d e5                                      ldr r0, [sp, #0x74]
006376c8  35 5d f3 eb                                      bl #0x30eba4
006376cc  0a 10 a0 e1                                      mov r1, sl
006376d0  00 90 a0 e1                                      mov sb, r0
006376d4  80 00 9d e5                                      ldr r0, [sp, #0x80]
006376d8  a3 5d f3 eb                                      bl #0x30ed6c
006376dc  00 10 a0 e1                                      mov r1, r0
006376e0  09 00 a0 e1                                      mov r0, sb
006376e4  2e 5d f3 eb                                      bl #0x30eba4
006376e8  00 10 a0 e1                                      mov r1, r0
006376ec  06 00 a0 e1                                      mov r0, r6
006376f0  2d 5b f3 eb                                      bl #0x30e3ac
006376f4  00 10 a0 e1                                      mov r1, r0
006376f8  60 00 9d e5                                      ldr r0, [sp, #0x60]
006376fc  9a 5d f3 eb                                      bl #0x30ed6c
00637700  00 10 a0 e1                                      mov r1, r0
00637704  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
00637708  25 5d f3 eb                                      bl #0x30eba4
0063770c  08 10 a0 e1                                      mov r1, r8
00637710  e4 00 8d e5                                      str r0, [sp, #0xe4]
00637714  88 00 9d e5                                      ldr r0, [sp, #0x88]
00637718  93 5d f3 eb                                      bl #0x30ed6c
0063771c  00 10 a0 e1                                      mov r1, r0
00637720  78 00 9d e5                                      ldr r0, [sp, #0x78]
00637724  1e 5d f3 eb                                      bl #0x30eba4
00637728  0a 10 a0 e1                                      mov r1, sl
0063772c  00 80 a0 e1                                      mov r8, r0
00637730  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
00637734  8c 5d f3 eb                                      bl #0x30ed6c
00637738  00 10 a0 e1                                      mov r1, r0
0063773c  08 00 a0 e1                                      mov r0, r8
00637740  17 5d f3 eb                                      bl #0x30eba4
00637744  00 10 a0 e1                                      mov r1, r0
00637748  07 00 a0 e1                                      mov r0, r7
0063774c  16 5b f3 eb                                      bl #0x30e3ac
00637750  00 10 a0 e1                                      mov r1, r0
00637754  60 00 9d e5                                      ldr r0, [sp, #0x60]
00637758  83 5d f3 eb                                      bl #0x30ed6c
0063775c  00 10 a0 e1                                      mov r1, r0
00637760  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00637764  0e 5d f3 eb                                      bl #0x30eba4
00637768  e8 00 8d e5                                      str r0, [sp, #0xe8]
0063776c  9a 19 09 e3                                      movw r1, #0x999a
00637770  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
00637774  99 1e 43 e3                                      movt r1, #0x3e99
00637778  7b 5d f3 eb                                      bl #0x30ed6c
0063777c  00 10 a0 e1                                      mov r1, r0
00637780  06 00 a0 e1                                      mov r0, r6
00637784  06 5d f3 eb                                      bl #0x30eba4
00637788  9a 19 09 e3                                      movw r1, #0x999a
0063778c  00 60 a0 e1                                      mov r6, r0
00637790  99 1e 43 e3                                      movt r1, #0x3e99
00637794  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
00637798  73 5d f3 eb                                      bl #0x30ed6c
0063779c  00 10 a0 e1                                      mov r1, r0
006377a0  07 00 a0 e1                                      mov r0, r7
006377a4  fe 5c f3 eb                                      bl #0x30eba4
006377a8  9a 19 09 e3                                      movw r1, #0x999a
006377ac  00 70 a0 e1                                      mov r7, r0
006377b0  99 1e 43 e3                                      movt r1, #0x3e99
006377b4  ec 00 9d e5                                      ldr r0, [sp, #0xec]
006377b8  6b 5d f3 eb                                      bl #0x30ed6c
006377bc  00 10 a0 e1                                      mov r1, r0
006377c0  0b 00 a0 e1                                      mov r0, fp
006377c4  f6 5c f3 eb                                      bl #0x30eba4
006377c8  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006377cc  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
006377d0  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
006377d4  00 00 84 e5                                      str r0, [r4]
006377d8  04 60 84 e5                                      str r6, [r4, #4]
006377dc  08 70 84 e5                                      str r7, [r4, #8]
006377e0  0c 10 84 e5                                      str r1, [r4, #0xc]
006377e4  10 20 84 e5                                      str r2, [r4, #0x10]
006377e8  14 30 84 e5                                      str r3, [r4, #0x14]
006377ec  ba fe ff ea                                      b #0x6372dc
006377f0  43 14 a0 e3                                      mov r1, #0x43000000
006377f4  0d 17 81 e2                                      add r1, r1, #0x340000
006377f8  68 00 9d e5                                      ldr r0, [sp, #0x68]
006377fc  5a 5d f3 eb                                      bl #0x30ed6c
00637800  00 60 a0 e1                                      mov r6, r0
00637804  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00637808  9a e1 ff eb                                      bl #0x62fe78
0063780c  00 20 a0 e1                                      mov r2, r0
00637810  01 30 a0 e1                                      mov r3, r1
00637814  06 00 a0 e1                                      mov r0, r6
00637818  bf 14 a0 e3                                      mov r1, #0xbf000000
0063781c  10 20 8d e5                                      str r2, [sp, #0x10]
00637820  08 30 8d e5                                      str r3, [sp, #8]
00637824  50 5d f3 eb                                      bl #0x30ed6c
00637828  10 20 9d e5                                      ldr r2, [sp, #0x10]
0063782c  08 30 9d e5                                      ldr r3, [sp, #8]
00637830  14 00 8d e5                                      str r0, [sp, #0x14]
00637834  02 00 a0 e1                                      mov r0, r2
00637838  03 10 a0 e1                                      mov r1, r3
0063783c  97 5b f3 eb                                      bl #0x30e6a0
00637840  00 10 a0 e1                                      mov r1, r0
00637844  06 00 a0 e1                                      mov r0, r6
00637848  47 5d f3 eb                                      bl #0x30ed6c
0063784c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00637850  d3 5c f3 eb                                      bl #0x30eba4
00637854  12 5c f3 eb                                      bl #0x30e8a4
00637858  98 e0 9d e5                                      ldr lr, [sp, #0x98]
0063785c  00 c0 a0 e3                                      mov ip, #0
00637860  00 20 a0 e1                                      mov r2, r0
00637864  01 30 a0 e1                                      mov r3, r1
00637868  94 00 9d e5                                      ldr r0, [sp, #0x94]
0063786c  00 e0 8d e5                                      str lr, [sp]
00637870  d4 c0 8d e5                                      str ip, [sp, #0xd4]
00637874  d8 c0 8d e5                                      str ip, [sp, #0xd8]
00637878  dc c0 8d e5                                      str ip, [sp, #0xdc]
0063787c  de e4 ff eb                                      bl #0x630bfc
00637880  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00637884  7b e1 ff eb                                      bl #0x62fe78
00637888  84 5b f3 eb                                      bl #0x30e6a0
0063788c  00 10 a0 e1                                      mov r1, r0
00637890  06 00 a0 e1                                      mov r0, r6
00637894  34 5d f3 eb                                      bl #0x30ed6c
00637898  00 10 a0 e1                                      mov r1, r0
0063789c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006378a0  bf 5c f3 eb                                      bl #0x30eba4
006378a4  fe 5b f3 eb                                      bl #0x30e8a4
006378a8  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
006378ac  00 20 a0 e1                                      mov r2, r0
006378b0  01 30 a0 e1                                      mov r3, r1
006378b4  94 00 9d e5                                      ldr r0, [sp, #0x94]
006378b8  00 10 a0 e3                                      mov r1, #0
006378bc  00 c0 8d e5                                      str ip, [sp]
006378c0  c8 10 8d e5                                      str r1, [sp, #0xc8]
006378c4  cc 10 8d e5                                      str r1, [sp, #0xcc]
006378c8  d0 10 8d e5                                      str r1, [sp, #0xd0]
006378cc  09 e5 ff eb                                      bl #0x630cf8
006378d0  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006378d4  67 e1 ff eb                                      bl #0x62fe78
006378d8  70 5b f3 eb                                      bl #0x30e6a0
006378dc  00 10 a0 e1                                      mov r1, r0
006378e0  06 00 a0 e1                                      mov r0, r6
006378e4  20 5d f3 eb                                      bl #0x30ed6c
006378e8  00 10 a0 e1                                      mov r1, r0
006378ec  14 00 9d e5                                      ldr r0, [sp, #0x14]
006378f0  ab 5c f3 eb                                      bl #0x30eba4
006378f4  ea 5b f3 eb                                      bl #0x30e8a4
006378f8  01 30 a0 e1                                      mov r3, r1
006378fc  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00637900  00 e0 a0 e3                                      mov lr, #0
00637904  00 20 a0 e1                                      mov r2, r0
00637908  94 00 9d e5                                      ldr r0, [sp, #0x94]
0063790c  bc e0 8d e5                                      str lr, [sp, #0xbc]
00637910  c0 e0 8d e5                                      str lr, [sp, #0xc0]
00637914  c4 e0 8d e5                                      str lr, [sp, #0xc4]
00637918  00 10 8d e5                                      str r1, [sp]
0063791c  31 e5 ff eb                                      bl #0x630de8
00637920  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
00637924  ec 60 9d e5                                      ldr r6, [sp, #0xec]
00637928  e4 c0 9d e5                                      ldr ip, [sp, #0xe4]
0063792c  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
00637930  02 10 a0 e1                                      mov r1, r2
00637934  06 00 a0 e1                                      mov r0, r6
00637938  28 c0 8d e5                                      str ip, [sp, #0x28]
0063793c  14 20 8d e5                                      str r2, [sp, #0x14]
00637940  24 30 8d e5                                      str r3, [sp, #0x24]
00637944  08 5d f3 eb                                      bl #0x30ed6c
00637948  28 10 9d e5                                      ldr r1, [sp, #0x28]
0063794c  00 30 a0 e1                                      mov r3, r0
00637950  24 00 9d e5                                      ldr r0, [sp, #0x24]
00637954  08 30 8d e5                                      str r3, [sp, #8]
00637958  03 5d f3 eb                                      bl #0x30ed6c
0063795c  08 30 9d e5                                      ldr r3, [sp, #8]
00637960  f4 e0 9d e5                                      ldr lr, [sp, #0xf4]
00637964  e8 20 9d e5                                      ldr r2, [sp, #0xe8]
00637968  00 10 a0 e1                                      mov r1, r0
0063796c  03 00 a0 e1                                      mov r0, r3
00637970  ac e0 8d e5                                      str lr, [sp, #0xac]
00637974  a4 20 8d e5                                      str r2, [sp, #0xa4]
00637978  89 5c f3 eb                                      bl #0x30eba4
0063797c  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00637980  00 30 a0 e1                                      mov r3, r0
00637984  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00637988  08 30 8d e5                                      str r3, [sp, #8]
0063798c  f6 5c f3 eb                                      bl #0x30ed6c
00637990  08 30 9d e5                                      ldr r3, [sp, #8]
00637994  00 10 a0 e1                                      mov r1, r0
00637998  03 00 a0 e1                                      mov r0, r3
0063799c  80 5c f3 eb                                      bl #0x30eba4
006379a0  00 10 a0 e3                                      mov r1, #0
006379a4  08 00 8d e5                                      str r0, [sp, #8]
006379a8  57 5b f3 eb                                      bl #0x30e70c
006379ac  00 00 50 e3                                      cmp r0, #0
006379b0  08 30 9d e5                                      ldr r3, [sp, #8]
006379b4  0e ff ff 0a                                      beq #0x6375f4
006379b8  03 00 a0 e1                                      mov r0, r3
006379bc  03 11 a0 e3                                      mov r1, #0xc0000000
006379c0  e9 5c f3 eb                                      bl #0x30ed6c
006379c4  06 10 a0 e1                                      mov r1, r6
006379c8  a8 00 8d e5                                      str r0, [sp, #0xa8]
006379cc  e6 5c f3 eb                                      bl #0x30ed6c
006379d0  00 10 a0 e1                                      mov r1, r0
006379d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
006379d8  71 5c f3 eb                                      bl #0x30eba4
006379dc  24 10 9d e5                                      ldr r1, [sp, #0x24]
006379e0  e0 00 8d e5                                      str r0, [sp, #0xe0]
006379e4  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006379e8  df 5c f3 eb                                      bl #0x30ed6c
006379ec  00 10 a0 e1                                      mov r1, r0
006379f0  28 00 9d e5                                      ldr r0, [sp, #0x28]
006379f4  6a 5c f3 eb                                      bl #0x30eba4
006379f8  ac 10 9d e5                                      ldr r1, [sp, #0xac]
006379fc  e4 00 8d e5                                      str r0, [sp, #0xe4]
00637a00  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00637a04  d8 5c f3 eb                                      bl #0x30ed6c
00637a08  00 10 a0 e1                                      mov r1, r0
00637a0c  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00637a10  63 5c f3 eb                                      bl #0x30eba4
00637a14  e8 00 8d e5                                      str r0, [sp, #0xe8]
00637a18  f5 fe ff ea                                      b #0x6375f4
00637a1c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00637a20  14 e1 ff eb                                      bl #0x62fe78
00637a24  1d 5b f3 eb                                      bl #0x30e6a0
00637a28  00 10 a0 e1                                      mov r1, r0
00637a2c  64 00 9d e5                                      ldr r0, [sp, #0x64]
00637a30  cd 5c f3 eb                                      bl #0x30ed6c
00637a34  bf 14 a0 e3                                      mov r1, #0xbf000000
00637a38  00 30 a0 e1                                      mov r3, r0
00637a3c  64 00 9d e5                                      ldr r0, [sp, #0x64]
00637a40  08 30 8d e5                                      str r3, [sp, #8]
00637a44  c8 5c f3 eb                                      bl #0x30ed6c
00637a48  08 30 9d e5                                      ldr r3, [sp, #8]
00637a4c  00 10 a0 e1                                      mov r1, r0
00637a50  03 00 a0 e1                                      mov r0, r3
00637a54  52 5c f3 eb                                      bl #0x30eba4
00637a58  b4 00 8d e5                                      str r0, [sp, #0xb4]
00637a5c  54 fe ff ea                                      b #0x6373b4
