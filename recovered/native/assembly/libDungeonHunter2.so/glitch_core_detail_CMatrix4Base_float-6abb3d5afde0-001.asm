; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035e118, declared_size=1992, range_size=1992, mode=arm
; class-group: glitch::core::detail::CMatrix4Base<float>
; alias: _ZNK6glitch4core6detail12CMatrix4BaseIfE4multERKS3_
; demangled: glitch::core::detail::CMatrix4Base<float>::mult(glitch::core::detail::CMatrix4Base<float> const&) const
; decoder-mode: arm
0035e118  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035e11c  40 c0 d1 e5                                      ldrb ip, [r1, #0x40]
0035e120  74 d0 4d e2                                      sub sp, sp, #0x74
0035e124  01 30 a0 e1                                      mov r3, r1
0035e128  00 00 5c e3                                      cmp ip, #0
0035e12c  00 40 a0 e1                                      mov r4, r0
0035e130  e6 01 00 1a                                      bne #0x35e8d0
0035e134  40 c0 d2 e5                                      ldrb ip, [r2, #0x40]
0035e138  00 00 5c e3                                      cmp ip, #0
0035e13c  e0 01 00 1a                                      bne #0x35e8c4
0035e140  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0035e144  2c 10 8d e5                                      str r1, [sp, #0x2c]
0035e148  1c e0 93 e5                                      ldr lr, [r3, #0x1c]
0035e14c  30 b0 92 e5                                      ldr fp, [r2, #0x30]
0035e150  01 00 a0 e1                                      mov r0, r1
0035e154  28 e0 8d e5                                      str lr, [sp, #0x28]
0035e158  3c e0 93 e5                                      ldr lr, [r3, #0x3c]
0035e15c  34 90 92 e5                                      ldr sb, [r2, #0x34]
0035e160  0b 10 a0 e1                                      mov r1, fp
0035e164  20 e0 8d e5                                      str lr, [sp, #0x20]
0035e168  00 e0 93 e5                                      ldr lr, [r3]
0035e16c  3c 80 92 e5                                      ldr r8, [r2, #0x3c]
0035e170  6c e0 8d e5                                      str lr, [sp, #0x6c]
0035e174  00 e0 92 e5                                      ldr lr, [r2]
0035e178  68 e0 8d e5                                      str lr, [sp, #0x68]
0035e17c  10 e0 93 e5                                      ldr lr, [r3, #0x10]
0035e180  64 e0 8d e5                                      str lr, [sp, #0x64]
0035e184  04 e0 92 e5                                      ldr lr, [r2, #4]
0035e188  60 e0 8d e5                                      str lr, [sp, #0x60]
0035e18c  20 e0 93 e5                                      ldr lr, [r3, #0x20]
0035e190  5c e0 8d e5                                      str lr, [sp, #0x5c]
0035e194  08 e0 92 e5                                      ldr lr, [r2, #8]
0035e198  58 e0 8d e5                                      str lr, [sp, #0x58]
0035e19c  30 e0 93 e5                                      ldr lr, [r3, #0x30]
0035e1a0  54 e0 8d e5                                      str lr, [sp, #0x54]
0035e1a4  0c e0 92 e5                                      ldr lr, [r2, #0xc]
0035e1a8  50 e0 8d e5                                      str lr, [sp, #0x50]
0035e1ac  04 e0 93 e5                                      ldr lr, [r3, #4]
0035e1b0  4c e0 8d e5                                      str lr, [sp, #0x4c]
0035e1b4  14 e0 93 e5                                      ldr lr, [r3, #0x14]
0035e1b8  48 e0 8d e5                                      str lr, [sp, #0x48]
0035e1bc  24 e0 93 e5                                      ldr lr, [r3, #0x24]
0035e1c0  44 e0 8d e5                                      str lr, [sp, #0x44]
0035e1c4  34 e0 93 e5                                      ldr lr, [r3, #0x34]
0035e1c8  40 e0 8d e5                                      str lr, [sp, #0x40]
0035e1cc  08 e0 93 e5                                      ldr lr, [r3, #8]
0035e1d0  3c e0 8d e5                                      str lr, [sp, #0x3c]
0035e1d4  18 e0 93 e5                                      ldr lr, [r3, #0x18]
0035e1d8  38 e0 8d e5                                      str lr, [sp, #0x38]
0035e1dc  28 e0 93 e5                                      ldr lr, [r3, #0x28]
0035e1e0  34 e0 8d e5                                      str lr, [sp, #0x34]
0035e1e4  38 e0 93 e5                                      ldr lr, [r3, #0x38]
0035e1e8  30 e0 8d e5                                      str lr, [sp, #0x30]
0035e1ec  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
0035e1f0  24 30 8d e5                                      str r3, [sp, #0x24]
0035e1f4  10 30 92 e5                                      ldr r3, [r2, #0x10]
0035e1f8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0035e1fc  14 e0 92 e5                                      ldr lr, [r2, #0x14]
0035e200  18 e0 8d e5                                      str lr, [sp, #0x18]
0035e204  18 30 92 e5                                      ldr r3, [r2, #0x18]
0035e208  14 30 8d e5                                      str r3, [sp, #0x14]
0035e20c  1c e0 92 e5                                      ldr lr, [r2, #0x1c]
0035e210  10 e0 8d e5                                      str lr, [sp, #0x10]
0035e214  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
0035e218  20 70 92 e5                                      ldr r7, [r2, #0x20]
0035e21c  24 60 92 e5                                      ldr r6, [r2, #0x24]
0035e220  28 50 92 e5                                      ldr r5, [r2, #0x28]
0035e224  0c 30 8d e5                                      str r3, [sp, #0xc]
0035e228  38 a0 92 e5                                      ldr sl, [r2, #0x38]
0035e22c  04 c0 8d e5                                      str ip, [sp, #4]
0035e230  cd c2 fe eb                                      bl #0x30ed6c
0035e234  09 10 a0 e1                                      mov r1, sb
0035e238  00 30 a0 e1                                      mov r3, r0
0035e23c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0035e240  08 30 8d e5                                      str r3, [sp, #8]
0035e244  c8 c2 fe eb                                      bl #0x30ed6c
0035e248  08 30 9d e5                                      ldr r3, [sp, #8]
0035e24c  00 10 a0 e1                                      mov r1, r0
0035e250  03 00 a0 e1                                      mov r0, r3
0035e254  52 c2 fe eb                                      bl #0x30eba4
0035e258  0a 10 a0 e1                                      mov r1, sl
0035e25c  00 30 a0 e1                                      mov r3, r0
0035e260  24 00 9d e5                                      ldr r0, [sp, #0x24]
0035e264  08 30 8d e5                                      str r3, [sp, #8]
0035e268  bf c2 fe eb                                      bl #0x30ed6c
0035e26c  08 30 9d e5                                      ldr r3, [sp, #8]
0035e270  00 10 a0 e1                                      mov r1, r0
0035e274  03 00 a0 e1                                      mov r0, r3
0035e278  49 c2 fe eb                                      bl #0x30eba4
0035e27c  08 10 a0 e1                                      mov r1, r8
0035e280  00 30 a0 e1                                      mov r3, r0
0035e284  20 00 9d e5                                      ldr r0, [sp, #0x20]
0035e288  08 30 8d e5                                      str r3, [sp, #8]
0035e28c  b6 c2 fe eb                                      bl #0x30ed6c
0035e290  08 30 9d e5                                      ldr r3, [sp, #8]
0035e294  00 10 a0 e1                                      mov r1, r0
0035e298  03 00 a0 e1                                      mov r0, r3
0035e29c  40 c2 fe eb                                      bl #0x30eba4
0035e2a0  3c 00 84 e5                                      str r0, [r4, #0x3c]
0035e2a4  0b 10 a0 e1                                      mov r1, fp
0035e2a8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0035e2ac  ae c2 fe eb                                      bl #0x30ed6c
0035e2b0  09 10 a0 e1                                      mov r1, sb
0035e2b4  00 30 a0 e1                                      mov r3, r0
0035e2b8  38 00 9d e5                                      ldr r0, [sp, #0x38]
0035e2bc  08 30 8d e5                                      str r3, [sp, #8]
0035e2c0  a9 c2 fe eb                                      bl #0x30ed6c
0035e2c4  08 30 9d e5                                      ldr r3, [sp, #8]
0035e2c8  00 10 a0 e1                                      mov r1, r0
0035e2cc  03 00 a0 e1                                      mov r0, r3
0035e2d0  33 c2 fe eb                                      bl #0x30eba4
0035e2d4  0a 10 a0 e1                                      mov r1, sl
0035e2d8  00 30 a0 e1                                      mov r3, r0
0035e2dc  34 00 9d e5                                      ldr r0, [sp, #0x34]
0035e2e0  08 30 8d e5                                      str r3, [sp, #8]
0035e2e4  a0 c2 fe eb                                      bl #0x30ed6c
0035e2e8  08 30 9d e5                                      ldr r3, [sp, #8]
0035e2ec  00 10 a0 e1                                      mov r1, r0
0035e2f0  03 00 a0 e1                                      mov r0, r3
0035e2f4  2a c2 fe eb                                      bl #0x30eba4
0035e2f8  08 10 a0 e1                                      mov r1, r8
0035e2fc  00 30 a0 e1                                      mov r3, r0
0035e300  30 00 9d e5                                      ldr r0, [sp, #0x30]
0035e304  08 30 8d e5                                      str r3, [sp, #8]
0035e308  97 c2 fe eb                                      bl #0x30ed6c
0035e30c  08 30 9d e5                                      ldr r3, [sp, #8]
0035e310  00 10 a0 e1                                      mov r1, r0
0035e314  03 00 a0 e1                                      mov r0, r3
0035e318  21 c2 fe eb                                      bl #0x30eba4
0035e31c  38 00 84 e5                                      str r0, [r4, #0x38]
0035e320  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0035e324  0b 10 a0 e1                                      mov r1, fp
0035e328  8f c2 fe eb                                      bl #0x30ed6c
0035e32c  09 10 a0 e1                                      mov r1, sb
0035e330  00 30 a0 e1                                      mov r3, r0
0035e334  48 00 9d e5                                      ldr r0, [sp, #0x48]
0035e338  08 30 8d e5                                      str r3, [sp, #8]
0035e33c  8a c2 fe eb                                      bl #0x30ed6c
0035e340  08 30 9d e5                                      ldr r3, [sp, #8]
0035e344  00 10 a0 e1                                      mov r1, r0
0035e348  03 00 a0 e1                                      mov r0, r3
0035e34c  14 c2 fe eb                                      bl #0x30eba4
0035e350  0a 10 a0 e1                                      mov r1, sl
0035e354  00 30 a0 e1                                      mov r3, r0
0035e358  44 00 9d e5                                      ldr r0, [sp, #0x44]
0035e35c  08 30 8d e5                                      str r3, [sp, #8]
0035e360  81 c2 fe eb                                      bl #0x30ed6c
0035e364  08 30 9d e5                                      ldr r3, [sp, #8]
0035e368  00 10 a0 e1                                      mov r1, r0
0035e36c  03 00 a0 e1                                      mov r0, r3
0035e370  0b c2 fe eb                                      bl #0x30eba4
0035e374  08 10 a0 e1                                      mov r1, r8
0035e378  00 30 a0 e1                                      mov r3, r0
0035e37c  40 00 9d e5                                      ldr r0, [sp, #0x40]
0035e380  08 30 8d e5                                      str r3, [sp, #8]
0035e384  78 c2 fe eb                                      bl #0x30ed6c
0035e388  08 30 9d e5                                      ldr r3, [sp, #8]
0035e38c  00 10 a0 e1                                      mov r1, r0
0035e390  03 00 a0 e1                                      mov r0, r3
0035e394  02 c2 fe eb                                      bl #0x30eba4
0035e398  34 00 84 e5                                      str r0, [r4, #0x34]
0035e39c  0b 10 a0 e1                                      mov r1, fp
0035e3a0  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0035e3a4  70 c2 fe eb                                      bl #0x30ed6c
0035e3a8  09 10 a0 e1                                      mov r1, sb
0035e3ac  00 b0 a0 e1                                      mov fp, r0
0035e3b0  64 00 9d e5                                      ldr r0, [sp, #0x64]
0035e3b4  6c c2 fe eb                                      bl #0x30ed6c
0035e3b8  00 10 a0 e1                                      mov r1, r0
0035e3bc  0b 00 a0 e1                                      mov r0, fp
0035e3c0  f7 c1 fe eb                                      bl #0x30eba4
0035e3c4  0a 10 a0 e1                                      mov r1, sl
0035e3c8  00 90 a0 e1                                      mov sb, r0
0035e3cc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0035e3d0  65 c2 fe eb                                      bl #0x30ed6c
0035e3d4  00 10 a0 e1                                      mov r1, r0
0035e3d8  09 00 a0 e1                                      mov r0, sb
0035e3dc  f0 c1 fe eb                                      bl #0x30eba4
0035e3e0  08 10 a0 e1                                      mov r1, r8
0035e3e4  00 a0 a0 e1                                      mov sl, r0
0035e3e8  54 00 9d e5                                      ldr r0, [sp, #0x54]
0035e3ec  5e c2 fe eb                                      bl #0x30ed6c
0035e3f0  00 10 a0 e1                                      mov r1, r0
0035e3f4  0a 00 a0 e1                                      mov r0, sl
0035e3f8  e9 c1 fe eb                                      bl #0x30eba4
0035e3fc  30 00 84 e5                                      str r0, [r4, #0x30]
0035e400  07 10 a0 e1                                      mov r1, r7
0035e404  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0035e408  57 c2 fe eb                                      bl #0x30ed6c
0035e40c  06 10 a0 e1                                      mov r1, r6
0035e410  00 80 a0 e1                                      mov r8, r0
0035e414  28 00 9d e5                                      ldr r0, [sp, #0x28]
0035e418  53 c2 fe eb                                      bl #0x30ed6c
0035e41c  00 10 a0 e1                                      mov r1, r0
0035e420  08 00 a0 e1                                      mov r0, r8
0035e424  de c1 fe eb                                      bl #0x30eba4
0035e428  05 10 a0 e1                                      mov r1, r5
0035e42c  00 80 a0 e1                                      mov r8, r0
0035e430  24 00 9d e5                                      ldr r0, [sp, #0x24]
0035e434  4c c2 fe eb                                      bl #0x30ed6c
0035e438  00 10 a0 e1                                      mov r1, r0
0035e43c  08 00 a0 e1                                      mov r0, r8
0035e440  d7 c1 fe eb                                      bl #0x30eba4
0035e444  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0035e448  00 80 a0 e1                                      mov r8, r0
0035e44c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0035e450  45 c2 fe eb                                      bl #0x30ed6c
0035e454  00 10 a0 e1                                      mov r1, r0
0035e458  08 00 a0 e1                                      mov r0, r8
0035e45c  d0 c1 fe eb                                      bl #0x30eba4
0035e460  07 10 a0 e1                                      mov r1, r7
0035e464  2c 00 84 e5                                      str r0, [r4, #0x2c]
0035e468  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0035e46c  3e c2 fe eb                                      bl #0x30ed6c
0035e470  06 10 a0 e1                                      mov r1, r6
0035e474  00 80 a0 e1                                      mov r8, r0
0035e478  38 00 9d e5                                      ldr r0, [sp, #0x38]
0035e47c  3a c2 fe eb                                      bl #0x30ed6c
0035e480  00 10 a0 e1                                      mov r1, r0
0035e484  08 00 a0 e1                                      mov r0, r8
0035e488  c5 c1 fe eb                                      bl #0x30eba4
0035e48c  05 10 a0 e1                                      mov r1, r5
0035e490  00 80 a0 e1                                      mov r8, r0
0035e494  34 00 9d e5                                      ldr r0, [sp, #0x34]
0035e498  33 c2 fe eb                                      bl #0x30ed6c
0035e49c  00 10 a0 e1                                      mov r1, r0
0035e4a0  08 00 a0 e1                                      mov r0, r8
0035e4a4  be c1 fe eb                                      bl #0x30eba4
0035e4a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0035e4ac  00 80 a0 e1                                      mov r8, r0
0035e4b0  30 00 9d e5                                      ldr r0, [sp, #0x30]
0035e4b4  2c c2 fe eb                                      bl #0x30ed6c
0035e4b8  00 10 a0 e1                                      mov r1, r0
0035e4bc  08 00 a0 e1                                      mov r0, r8
0035e4c0  b7 c1 fe eb                                      bl #0x30eba4
0035e4c4  28 00 84 e5                                      str r0, [r4, #0x28]
0035e4c8  07 10 a0 e1                                      mov r1, r7
0035e4cc  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0035e4d0  25 c2 fe eb                                      bl #0x30ed6c
0035e4d4  06 10 a0 e1                                      mov r1, r6
0035e4d8  00 80 a0 e1                                      mov r8, r0
0035e4dc  48 00 9d e5                                      ldr r0, [sp, #0x48]
0035e4e0  21 c2 fe eb                                      bl #0x30ed6c
0035e4e4  00 10 a0 e1                                      mov r1, r0
0035e4e8  08 00 a0 e1                                      mov r0, r8
0035e4ec  ac c1 fe eb                                      bl #0x30eba4
0035e4f0  05 10 a0 e1                                      mov r1, r5
0035e4f4  00 80 a0 e1                                      mov r8, r0
0035e4f8  44 00 9d e5                                      ldr r0, [sp, #0x44]
0035e4fc  1a c2 fe eb                                      bl #0x30ed6c
0035e500  00 10 a0 e1                                      mov r1, r0
0035e504  08 00 a0 e1                                      mov r0, r8
0035e508  a5 c1 fe eb                                      bl #0x30eba4
0035e50c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0035e510  00 80 a0 e1                                      mov r8, r0
0035e514  40 00 9d e5                                      ldr r0, [sp, #0x40]
0035e518  13 c2 fe eb                                      bl #0x30ed6c
0035e51c  00 10 a0 e1                                      mov r1, r0
0035e520  08 00 a0 e1                                      mov r0, r8
0035e524  9e c1 fe eb                                      bl #0x30eba4
0035e528  24 00 84 e5                                      str r0, [r4, #0x24]
0035e52c  07 10 a0 e1                                      mov r1, r7
0035e530  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0035e534  0c c2 fe eb                                      bl #0x30ed6c
0035e538  06 10 a0 e1                                      mov r1, r6
0035e53c  00 70 a0 e1                                      mov r7, r0
0035e540  64 00 9d e5                                      ldr r0, [sp, #0x64]
0035e544  08 c2 fe eb                                      bl #0x30ed6c
0035e548  00 10 a0 e1                                      mov r1, r0
0035e54c  07 00 a0 e1                                      mov r0, r7
0035e550  93 c1 fe eb                                      bl #0x30eba4
0035e554  05 10 a0 e1                                      mov r1, r5
0035e558  00 60 a0 e1                                      mov r6, r0
0035e55c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0035e560  01 c2 fe eb                                      bl #0x30ed6c
0035e564  00 10 a0 e1                                      mov r1, r0
0035e568  06 00 a0 e1                                      mov r0, r6
0035e56c  8c c1 fe eb                                      bl #0x30eba4
0035e570  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0035e574  00 50 a0 e1                                      mov r5, r0
0035e578  54 00 9d e5                                      ldr r0, [sp, #0x54]
0035e57c  fa c1 fe eb                                      bl #0x30ed6c
0035e580  00 10 a0 e1                                      mov r1, r0
0035e584  05 00 a0 e1                                      mov r0, r5
0035e588  85 c1 fe eb                                      bl #0x30eba4
0035e58c  20 00 84 e5                                      str r0, [r4, #0x20]
0035e590  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0035e594  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0035e598  f3 c1 fe eb                                      bl #0x30ed6c
0035e59c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0035e5a0  00 50 a0 e1                                      mov r5, r0
0035e5a4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0035e5a8  ef c1 fe eb                                      bl #0x30ed6c
0035e5ac  00 10 a0 e1                                      mov r1, r0
0035e5b0  05 00 a0 e1                                      mov r0, r5
0035e5b4  7a c1 fe eb                                      bl #0x30eba4
0035e5b8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035e5bc  00 50 a0 e1                                      mov r5, r0
0035e5c0  24 00 9d e5                                      ldr r0, [sp, #0x24]
0035e5c4  e8 c1 fe eb                                      bl #0x30ed6c
0035e5c8  00 10 a0 e1                                      mov r1, r0
0035e5cc  05 00 a0 e1                                      mov r0, r5
0035e5d0  73 c1 fe eb                                      bl #0x30eba4
0035e5d4  10 10 9d e5                                      ldr r1, [sp, #0x10]
0035e5d8  00 50 a0 e1                                      mov r5, r0
0035e5dc  20 00 9d e5                                      ldr r0, [sp, #0x20]
0035e5e0  e1 c1 fe eb                                      bl #0x30ed6c
0035e5e4  00 10 a0 e1                                      mov r1, r0
0035e5e8  05 00 a0 e1                                      mov r0, r5
0035e5ec  6c c1 fe eb                                      bl #0x30eba4
0035e5f0  1c 00 84 e5                                      str r0, [r4, #0x1c]
0035e5f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0035e5f8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0035e5fc  da c1 fe eb                                      bl #0x30ed6c
0035e600  18 10 9d e5                                      ldr r1, [sp, #0x18]
0035e604  00 50 a0 e1                                      mov r5, r0
0035e608  38 00 9d e5                                      ldr r0, [sp, #0x38]
0035e60c  d6 c1 fe eb                                      bl #0x30ed6c
0035e610  00 10 a0 e1                                      mov r1, r0
0035e614  05 00 a0 e1                                      mov r0, r5
0035e618  61 c1 fe eb                                      bl #0x30eba4
0035e61c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035e620  00 50 a0 e1                                      mov r5, r0
0035e624  34 00 9d e5                                      ldr r0, [sp, #0x34]
0035e628  cf c1 fe eb                                      bl #0x30ed6c
0035e62c  00 10 a0 e1                                      mov r1, r0
0035e630  05 00 a0 e1                                      mov r0, r5
0035e634  5a c1 fe eb                                      bl #0x30eba4
0035e638  10 10 9d e5                                      ldr r1, [sp, #0x10]
0035e63c  00 50 a0 e1                                      mov r5, r0
0035e640  30 00 9d e5                                      ldr r0, [sp, #0x30]
0035e644  c8 c1 fe eb                                      bl #0x30ed6c
0035e648  00 10 a0 e1                                      mov r1, r0
0035e64c  05 00 a0 e1                                      mov r0, r5
0035e650  53 c1 fe eb                                      bl #0x30eba4
0035e654  18 00 84 e5                                      str r0, [r4, #0x18]
0035e658  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0035e65c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0035e660  c1 c1 fe eb                                      bl #0x30ed6c
0035e664  18 10 9d e5                                      ldr r1, [sp, #0x18]
0035e668  00 50 a0 e1                                      mov r5, r0
0035e66c  48 00 9d e5                                      ldr r0, [sp, #0x48]
0035e670  bd c1 fe eb                                      bl #0x30ed6c
0035e674  00 10 a0 e1                                      mov r1, r0
0035e678  05 00 a0 e1                                      mov r0, r5
0035e67c  48 c1 fe eb                                      bl #0x30eba4
0035e680  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035e684  00 50 a0 e1                                      mov r5, r0
0035e688  44 00 9d e5                                      ldr r0, [sp, #0x44]
0035e68c  b6 c1 fe eb                                      bl #0x30ed6c
0035e690  00 10 a0 e1                                      mov r1, r0
0035e694  05 00 a0 e1                                      mov r0, r5
0035e698  41 c1 fe eb                                      bl #0x30eba4
0035e69c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0035e6a0  00 50 a0 e1                                      mov r5, r0
0035e6a4  40 00 9d e5                                      ldr r0, [sp, #0x40]
0035e6a8  af c1 fe eb                                      bl #0x30ed6c
0035e6ac  00 10 a0 e1                                      mov r1, r0
0035e6b0  05 00 a0 e1                                      mov r0, r5
0035e6b4  3a c1 fe eb                                      bl #0x30eba4
0035e6b8  14 00 84 e5                                      str r0, [r4, #0x14]
0035e6bc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0035e6c0  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0035e6c4  a8 c1 fe eb                                      bl #0x30ed6c
0035e6c8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0035e6cc  00 50 a0 e1                                      mov r5, r0
0035e6d0  64 00 9d e5                                      ldr r0, [sp, #0x64]
0035e6d4  a4 c1 fe eb                                      bl #0x30ed6c
0035e6d8  00 10 a0 e1                                      mov r1, r0
0035e6dc  05 00 a0 e1                                      mov r0, r5
0035e6e0  2f c1 fe eb                                      bl #0x30eba4
0035e6e4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0035e6e8  00 50 a0 e1                                      mov r5, r0
0035e6ec  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0035e6f0  9d c1 fe eb                                      bl #0x30ed6c
0035e6f4  00 10 a0 e1                                      mov r1, r0
0035e6f8  05 00 a0 e1                                      mov r0, r5
0035e6fc  28 c1 fe eb                                      bl #0x30eba4
0035e700  10 10 9d e5                                      ldr r1, [sp, #0x10]
0035e704  00 50 a0 e1                                      mov r5, r0
0035e708  54 00 9d e5                                      ldr r0, [sp, #0x54]
0035e70c  96 c1 fe eb                                      bl #0x30ed6c
0035e710  00 10 a0 e1                                      mov r1, r0
0035e714  05 00 a0 e1                                      mov r0, r5
0035e718  21 c1 fe eb                                      bl #0x30eba4
0035e71c  10 00 84 e5                                      str r0, [r4, #0x10]
0035e720  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0035e724  68 00 9d e5                                      ldr r0, [sp, #0x68]
0035e728  8f c1 fe eb                                      bl #0x30ed6c
0035e72c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0035e730  00 50 a0 e1                                      mov r5, r0
0035e734  60 00 9d e5                                      ldr r0, [sp, #0x60]
0035e738  8b c1 fe eb                                      bl #0x30ed6c
0035e73c  00 10 a0 e1                                      mov r1, r0
0035e740  05 00 a0 e1                                      mov r0, r5
0035e744  16 c1 fe eb                                      bl #0x30eba4
0035e748  24 10 9d e5                                      ldr r1, [sp, #0x24]
0035e74c  00 50 a0 e1                                      mov r5, r0
0035e750  58 00 9d e5                                      ldr r0, [sp, #0x58]
0035e754  84 c1 fe eb                                      bl #0x30ed6c
0035e758  00 10 a0 e1                                      mov r1, r0
0035e75c  05 00 a0 e1                                      mov r0, r5
0035e760  0f c1 fe eb                                      bl #0x30eba4
0035e764  20 10 9d e5                                      ldr r1, [sp, #0x20]
0035e768  00 50 a0 e1                                      mov r5, r0
0035e76c  50 00 9d e5                                      ldr r0, [sp, #0x50]
0035e770  7d c1 fe eb                                      bl #0x30ed6c
0035e774  00 10 a0 e1                                      mov r1, r0
0035e778  05 00 a0 e1                                      mov r0, r5
0035e77c  08 c1 fe eb                                      bl #0x30eba4
0035e780  0c 00 84 e5                                      str r0, [r4, #0xc]
0035e784  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0035e788  68 00 9d e5                                      ldr r0, [sp, #0x68]
0035e78c  76 c1 fe eb                                      bl #0x30ed6c
0035e790  38 10 9d e5                                      ldr r1, [sp, #0x38]
0035e794  00 50 a0 e1                                      mov r5, r0
0035e798  60 00 9d e5                                      ldr r0, [sp, #0x60]
0035e79c  72 c1 fe eb                                      bl #0x30ed6c
0035e7a0  00 10 a0 e1                                      mov r1, r0
0035e7a4  05 00 a0 e1                                      mov r0, r5
0035e7a8  fd c0 fe eb                                      bl #0x30eba4
0035e7ac  34 10 9d e5                                      ldr r1, [sp, #0x34]
0035e7b0  00 50 a0 e1                                      mov r5, r0
0035e7b4  58 00 9d e5                                      ldr r0, [sp, #0x58]
0035e7b8  6b c1 fe eb                                      bl #0x30ed6c
0035e7bc  00 10 a0 e1                                      mov r1, r0
0035e7c0  05 00 a0 e1                                      mov r0, r5
0035e7c4  f6 c0 fe eb                                      bl #0x30eba4
0035e7c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
0035e7cc  00 50 a0 e1                                      mov r5, r0
0035e7d0  50 00 9d e5                                      ldr r0, [sp, #0x50]
0035e7d4  64 c1 fe eb                                      bl #0x30ed6c
0035e7d8  00 10 a0 e1                                      mov r1, r0
0035e7dc  05 00 a0 e1                                      mov r0, r5
0035e7e0  ef c0 fe eb                                      bl #0x30eba4
0035e7e4  08 00 84 e5                                      str r0, [r4, #8]
0035e7e8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0035e7ec  68 00 9d e5                                      ldr r0, [sp, #0x68]
0035e7f0  5d c1 fe eb                                      bl #0x30ed6c
0035e7f4  48 10 9d e5                                      ldr r1, [sp, #0x48]
0035e7f8  00 50 a0 e1                                      mov r5, r0
0035e7fc  60 00 9d e5                                      ldr r0, [sp, #0x60]
0035e800  59 c1 fe eb                                      bl #0x30ed6c
0035e804  00 10 a0 e1                                      mov r1, r0
0035e808  05 00 a0 e1                                      mov r0, r5
0035e80c  e4 c0 fe eb                                      bl #0x30eba4
0035e810  44 10 9d e5                                      ldr r1, [sp, #0x44]
0035e814  00 50 a0 e1                                      mov r5, r0
0035e818  58 00 9d e5                                      ldr r0, [sp, #0x58]
0035e81c  52 c1 fe eb                                      bl #0x30ed6c
0035e820  00 10 a0 e1                                      mov r1, r0
0035e824  05 00 a0 e1                                      mov r0, r5
0035e828  dd c0 fe eb                                      bl #0x30eba4
0035e82c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0035e830  00 50 a0 e1                                      mov r5, r0
0035e834  50 00 9d e5                                      ldr r0, [sp, #0x50]
0035e838  4b c1 fe eb                                      bl #0x30ed6c
0035e83c  00 10 a0 e1                                      mov r1, r0
0035e840  05 00 a0 e1                                      mov r0, r5
0035e844  d6 c0 fe eb                                      bl #0x30eba4
0035e848  04 00 84 e5                                      str r0, [r4, #4]
0035e84c  68 10 9d e5                                      ldr r1, [sp, #0x68]
0035e850  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0035e854  44 c1 fe eb                                      bl #0x30ed6c
0035e858  60 10 9d e5                                      ldr r1, [sp, #0x60]
0035e85c  00 50 a0 e1                                      mov r5, r0
0035e860  64 00 9d e5                                      ldr r0, [sp, #0x64]
0035e864  40 c1 fe eb                                      bl #0x30ed6c
0035e868  00 10 a0 e1                                      mov r1, r0
0035e86c  05 00 a0 e1                                      mov r0, r5
0035e870  cb c0 fe eb                                      bl #0x30eba4
0035e874  58 10 9d e5                                      ldr r1, [sp, #0x58]
0035e878  00 50 a0 e1                                      mov r5, r0
0035e87c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0035e880  39 c1 fe eb                                      bl #0x30ed6c
0035e884  00 10 a0 e1                                      mov r1, r0
0035e888  05 00 a0 e1                                      mov r0, r5
0035e88c  c4 c0 fe eb                                      bl #0x30eba4
0035e890  50 10 9d e5                                      ldr r1, [sp, #0x50]
0035e894  00 50 a0 e1                                      mov r5, r0
0035e898  54 00 9d e5                                      ldr r0, [sp, #0x54]
0035e89c  32 c1 fe eb                                      bl #0x30ed6c
0035e8a0  00 10 a0 e1                                      mov r1, r0
0035e8a4  05 00 a0 e1                                      mov r0, r5
0035e8a8  bd c0 fe eb                                      bl #0x30eba4
0035e8ac  00 00 84 e5                                      str r0, [r4]
0035e8b0  04 c0 9d e5                                      ldr ip, [sp, #4]
0035e8b4  40 c0 c4 e5                                      strb ip, [r4, #0x40]
0035e8b8  04 00 a0 e1                                      mov r0, r4
0035e8bc  74 d0 8d e2                                      add sp, sp, #0x74
0035e8c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035e8c4  41 20 a0 e3                                      mov r2, #0x41
0035e8c8  9a bd fe eb                                      bl #0x30df38
0035e8cc  f9 ff ff ea                                      b #0x35e8b8
0035e8d0  02 10 a0 e1                                      mov r1, r2
0035e8d4  41 20 a0 e3                                      mov r2, #0x41
0035e8d8  96 bd fe eb                                      bl #0x30df38
0035e8dc  f5 ff ff ea                                      b #0x35e8b8

; FUNCTION 0x0040ea54, declared_size=1632, range_size=1632, mode=arm
; class-group: glitch::core::detail::CMatrix4Base<float>
; alias: _ZN6glitch4core6detail12CMatrix4BaseIfE20setbyproduct_nocheckERKS3_S5_
; demangled: glitch::core::detail::CMatrix4Base<float>::setbyproduct_nocheck(glitch::core::detail::CMatrix4Base<float> const&, glitch::core::detail::CMatrix4Base<float> const&)
; decoder-mode: arm
0040ea54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040ea58  01 40 a0 e1                                      mov r4, r1
0040ea5c  00 60 a0 e1                                      mov r6, r0
0040ea60  00 10 92 e5                                      ldr r1, [r2]
0040ea64  00 00 94 e5                                      ldr r0, [r4]
0040ea68  02 50 a0 e1                                      mov r5, r2
0040ea6c  be 00 fc eb                                      bl #0x30ed6c
0040ea70  04 10 95 e5                                      ldr r1, [r5, #4]
0040ea74  00 70 a0 e1                                      mov r7, r0
0040ea78  10 00 94 e5                                      ldr r0, [r4, #0x10]
0040ea7c  ba 00 fc eb                                      bl #0x30ed6c
0040ea80  00 10 a0 e1                                      mov r1, r0
0040ea84  07 00 a0 e1                                      mov r0, r7
0040ea88  45 00 fc eb                                      bl #0x30eba4
0040ea8c  08 10 95 e5                                      ldr r1, [r5, #8]
0040ea90  00 70 a0 e1                                      mov r7, r0
0040ea94  20 00 94 e5                                      ldr r0, [r4, #0x20]
0040ea98  b3 00 fc eb                                      bl #0x30ed6c
0040ea9c  00 10 a0 e1                                      mov r1, r0
0040eaa0  07 00 a0 e1                                      mov r0, r7
0040eaa4  3e 00 fc eb                                      bl #0x30eba4
0040eaa8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0040eaac  00 70 a0 e1                                      mov r7, r0
0040eab0  30 00 94 e5                                      ldr r0, [r4, #0x30]
0040eab4  ac 00 fc eb                                      bl #0x30ed6c
0040eab8  00 10 a0 e1                                      mov r1, r0
0040eabc  07 00 a0 e1                                      mov r0, r7
0040eac0  37 00 fc eb                                      bl #0x30eba4
0040eac4  00 00 86 e5                                      str r0, [r6]
0040eac8  00 10 95 e5                                      ldr r1, [r5]
0040eacc  04 00 94 e5                                      ldr r0, [r4, #4]
0040ead0  a5 00 fc eb                                      bl #0x30ed6c
0040ead4  04 10 95 e5                                      ldr r1, [r5, #4]
0040ead8  00 70 a0 e1                                      mov r7, r0
0040eadc  14 00 94 e5                                      ldr r0, [r4, #0x14]
0040eae0  a1 00 fc eb                                      bl #0x30ed6c
0040eae4  00 10 a0 e1                                      mov r1, r0
0040eae8  07 00 a0 e1                                      mov r0, r7
0040eaec  2c 00 fc eb                                      bl #0x30eba4
0040eaf0  08 10 95 e5                                      ldr r1, [r5, #8]
0040eaf4  00 70 a0 e1                                      mov r7, r0
0040eaf8  24 00 94 e5                                      ldr r0, [r4, #0x24]
0040eafc  9a 00 fc eb                                      bl #0x30ed6c
0040eb00  00 10 a0 e1                                      mov r1, r0
0040eb04  07 00 a0 e1                                      mov r0, r7
0040eb08  25 00 fc eb                                      bl #0x30eba4
0040eb0c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0040eb10  00 70 a0 e1                                      mov r7, r0
0040eb14  34 00 94 e5                                      ldr r0, [r4, #0x34]
0040eb18  93 00 fc eb                                      bl #0x30ed6c
0040eb1c  00 10 a0 e1                                      mov r1, r0
0040eb20  07 00 a0 e1                                      mov r0, r7
0040eb24  1e 00 fc eb                                      bl #0x30eba4
0040eb28  04 00 86 e5                                      str r0, [r6, #4]
0040eb2c  00 10 95 e5                                      ldr r1, [r5]
0040eb30  08 00 94 e5                                      ldr r0, [r4, #8]
0040eb34  8c 00 fc eb                                      bl #0x30ed6c
0040eb38  04 10 95 e5                                      ldr r1, [r5, #4]
0040eb3c  00 70 a0 e1                                      mov r7, r0
0040eb40  18 00 94 e5                                      ldr r0, [r4, #0x18]
0040eb44  88 00 fc eb                                      bl #0x30ed6c
0040eb48  00 10 a0 e1                                      mov r1, r0
0040eb4c  07 00 a0 e1                                      mov r0, r7
0040eb50  13 00 fc eb                                      bl #0x30eba4
0040eb54  08 10 95 e5                                      ldr r1, [r5, #8]
0040eb58  00 70 a0 e1                                      mov r7, r0
0040eb5c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0040eb60  81 00 fc eb                                      bl #0x30ed6c
0040eb64  00 10 a0 e1                                      mov r1, r0
0040eb68  07 00 a0 e1                                      mov r0, r7
0040eb6c  0c 00 fc eb                                      bl #0x30eba4
0040eb70  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0040eb74  00 70 a0 e1                                      mov r7, r0
0040eb78  38 00 94 e5                                      ldr r0, [r4, #0x38]
0040eb7c  7a 00 fc eb                                      bl #0x30ed6c
0040eb80  00 10 a0 e1                                      mov r1, r0
0040eb84  07 00 a0 e1                                      mov r0, r7
0040eb88  05 00 fc eb                                      bl #0x30eba4
0040eb8c  08 00 86 e5                                      str r0, [r6, #8]
0040eb90  00 10 95 e5                                      ldr r1, [r5]
0040eb94  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0040eb98  73 00 fc eb                                      bl #0x30ed6c
0040eb9c  04 10 95 e5                                      ldr r1, [r5, #4]
0040eba0  00 70 a0 e1                                      mov r7, r0
0040eba4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0040eba8  6f 00 fc eb                                      bl #0x30ed6c
0040ebac  00 10 a0 e1                                      mov r1, r0
0040ebb0  07 00 a0 e1                                      mov r0, r7
0040ebb4  fa ff fb eb                                      bl #0x30eba4
0040ebb8  08 10 95 e5                                      ldr r1, [r5, #8]
0040ebbc  00 70 a0 e1                                      mov r7, r0
0040ebc0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0040ebc4  68 00 fc eb                                      bl #0x30ed6c
0040ebc8  00 10 a0 e1                                      mov r1, r0
0040ebcc  07 00 a0 e1                                      mov r0, r7
0040ebd0  f3 ff fb eb                                      bl #0x30eba4
0040ebd4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0040ebd8  00 70 a0 e1                                      mov r7, r0
0040ebdc  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0040ebe0  61 00 fc eb                                      bl #0x30ed6c
0040ebe4  00 10 a0 e1                                      mov r1, r0
0040ebe8  07 00 a0 e1                                      mov r0, r7
0040ebec  ec ff fb eb                                      bl #0x30eba4
0040ebf0  0c 00 86 e5                                      str r0, [r6, #0xc]
0040ebf4  10 10 95 e5                                      ldr r1, [r5, #0x10]
0040ebf8  00 00 94 e5                                      ldr r0, [r4]
0040ebfc  5a 00 fc eb                                      bl #0x30ed6c
0040ec00  14 10 95 e5                                      ldr r1, [r5, #0x14]
0040ec04  00 70 a0 e1                                      mov r7, r0
0040ec08  10 00 94 e5                                      ldr r0, [r4, #0x10]
0040ec0c  56 00 fc eb                                      bl #0x30ed6c
0040ec10  00 10 a0 e1                                      mov r1, r0
0040ec14  07 00 a0 e1                                      mov r0, r7
0040ec18  e1 ff fb eb                                      bl #0x30eba4
0040ec1c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0040ec20  00 70 a0 e1                                      mov r7, r0
0040ec24  20 00 94 e5                                      ldr r0, [r4, #0x20]
0040ec28  4f 00 fc eb                                      bl #0x30ed6c
0040ec2c  00 10 a0 e1                                      mov r1, r0
0040ec30  07 00 a0 e1                                      mov r0, r7
0040ec34  da ff fb eb                                      bl #0x30eba4
0040ec38  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0040ec3c  00 70 a0 e1                                      mov r7, r0
0040ec40  30 00 94 e5                                      ldr r0, [r4, #0x30]
0040ec44  48 00 fc eb                                      bl #0x30ed6c
0040ec48  00 10 a0 e1                                      mov r1, r0
0040ec4c  07 00 a0 e1                                      mov r0, r7
0040ec50  d3 ff fb eb                                      bl #0x30eba4
0040ec54  10 00 86 e5                                      str r0, [r6, #0x10]
0040ec58  10 10 95 e5                                      ldr r1, [r5, #0x10]
0040ec5c  04 00 94 e5                                      ldr r0, [r4, #4]
0040ec60  41 00 fc eb                                      bl #0x30ed6c
0040ec64  14 10 95 e5                                      ldr r1, [r5, #0x14]
0040ec68  00 70 a0 e1                                      mov r7, r0
0040ec6c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0040ec70  3d 00 fc eb                                      bl #0x30ed6c
0040ec74  00 10 a0 e1                                      mov r1, r0
0040ec78  07 00 a0 e1                                      mov r0, r7
0040ec7c  c8 ff fb eb                                      bl #0x30eba4
0040ec80  18 10 95 e5                                      ldr r1, [r5, #0x18]
0040ec84  00 70 a0 e1                                      mov r7, r0
0040ec88  24 00 94 e5                                      ldr r0, [r4, #0x24]
0040ec8c  36 00 fc eb                                      bl #0x30ed6c
0040ec90  00 10 a0 e1                                      mov r1, r0
0040ec94  07 00 a0 e1                                      mov r0, r7
0040ec98  c1 ff fb eb                                      bl #0x30eba4
0040ec9c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0040eca0  00 70 a0 e1                                      mov r7, r0
0040eca4  34 00 94 e5                                      ldr r0, [r4, #0x34]
0040eca8  2f 00 fc eb                                      bl #0x30ed6c
0040ecac  00 10 a0 e1                                      mov r1, r0
0040ecb0  07 00 a0 e1                                      mov r0, r7
0040ecb4  ba ff fb eb                                      bl #0x30eba4
0040ecb8  14 00 86 e5                                      str r0, [r6, #0x14]
0040ecbc  10 10 95 e5                                      ldr r1, [r5, #0x10]
0040ecc0  08 00 94 e5                                      ldr r0, [r4, #8]
0040ecc4  28 00 fc eb                                      bl #0x30ed6c
0040ecc8  14 10 95 e5                                      ldr r1, [r5, #0x14]
0040eccc  00 70 a0 e1                                      mov r7, r0
0040ecd0  18 00 94 e5                                      ldr r0, [r4, #0x18]
0040ecd4  24 00 fc eb                                      bl #0x30ed6c
0040ecd8  00 10 a0 e1                                      mov r1, r0
0040ecdc  07 00 a0 e1                                      mov r0, r7
0040ece0  af ff fb eb                                      bl #0x30eba4
0040ece4  18 10 95 e5                                      ldr r1, [r5, #0x18]
0040ece8  00 70 a0 e1                                      mov r7, r0
0040ecec  28 00 94 e5                                      ldr r0, [r4, #0x28]
0040ecf0  1d 00 fc eb                                      bl #0x30ed6c
0040ecf4  00 10 a0 e1                                      mov r1, r0
0040ecf8  07 00 a0 e1                                      mov r0, r7
0040ecfc  a8 ff fb eb                                      bl #0x30eba4
0040ed00  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0040ed04  00 70 a0 e1                                      mov r7, r0
0040ed08  38 00 94 e5                                      ldr r0, [r4, #0x38]
0040ed0c  16 00 fc eb                                      bl #0x30ed6c
0040ed10  00 10 a0 e1                                      mov r1, r0
0040ed14  07 00 a0 e1                                      mov r0, r7
0040ed18  a1 ff fb eb                                      bl #0x30eba4
0040ed1c  18 00 86 e5                                      str r0, [r6, #0x18]
0040ed20  10 10 95 e5                                      ldr r1, [r5, #0x10]
0040ed24  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0040ed28  0f 00 fc eb                                      bl #0x30ed6c
0040ed2c  14 10 95 e5                                      ldr r1, [r5, #0x14]
0040ed30  00 70 a0 e1                                      mov r7, r0
0040ed34  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0040ed38  0b 00 fc eb                                      bl #0x30ed6c
0040ed3c  00 10 a0 e1                                      mov r1, r0
0040ed40  07 00 a0 e1                                      mov r0, r7
0040ed44  96 ff fb eb                                      bl #0x30eba4
0040ed48  18 10 95 e5                                      ldr r1, [r5, #0x18]
0040ed4c  00 70 a0 e1                                      mov r7, r0
0040ed50  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0040ed54  04 00 fc eb                                      bl #0x30ed6c
0040ed58  00 10 a0 e1                                      mov r1, r0
0040ed5c  07 00 a0 e1                                      mov r0, r7
0040ed60  8f ff fb eb                                      bl #0x30eba4
0040ed64  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0040ed68  00 70 a0 e1                                      mov r7, r0
0040ed6c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0040ed70  fd ff fb eb                                      bl #0x30ed6c
0040ed74  00 10 a0 e1                                      mov r1, r0
0040ed78  07 00 a0 e1                                      mov r0, r7
0040ed7c  88 ff fb eb                                      bl #0x30eba4
0040ed80  1c 00 86 e5                                      str r0, [r6, #0x1c]
0040ed84  20 10 95 e5                                      ldr r1, [r5, #0x20]
0040ed88  00 00 94 e5                                      ldr r0, [r4]
0040ed8c  f6 ff fb eb                                      bl #0x30ed6c
0040ed90  24 10 95 e5                                      ldr r1, [r5, #0x24]
0040ed94  00 70 a0 e1                                      mov r7, r0
0040ed98  10 00 94 e5                                      ldr r0, [r4, #0x10]
0040ed9c  f2 ff fb eb                                      bl #0x30ed6c
0040eda0  00 10 a0 e1                                      mov r1, r0
0040eda4  07 00 a0 e1                                      mov r0, r7
0040eda8  7d ff fb eb                                      bl #0x30eba4
0040edac  28 10 95 e5                                      ldr r1, [r5, #0x28]
0040edb0  00 70 a0 e1                                      mov r7, r0
0040edb4  20 00 94 e5                                      ldr r0, [r4, #0x20]
0040edb8  eb ff fb eb                                      bl #0x30ed6c
0040edbc  00 10 a0 e1                                      mov r1, r0
0040edc0  07 00 a0 e1                                      mov r0, r7
0040edc4  76 ff fb eb                                      bl #0x30eba4
0040edc8  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0040edcc  00 70 a0 e1                                      mov r7, r0
0040edd0  30 00 94 e5                                      ldr r0, [r4, #0x30]
0040edd4  e4 ff fb eb                                      bl #0x30ed6c
0040edd8  00 10 a0 e1                                      mov r1, r0
0040eddc  07 00 a0 e1                                      mov r0, r7
0040ede0  6f ff fb eb                                      bl #0x30eba4
0040ede4  20 00 86 e5                                      str r0, [r6, #0x20]
0040ede8  20 10 95 e5                                      ldr r1, [r5, #0x20]
0040edec  04 00 94 e5                                      ldr r0, [r4, #4]
0040edf0  dd ff fb eb                                      bl #0x30ed6c
0040edf4  24 10 95 e5                                      ldr r1, [r5, #0x24]
0040edf8  00 70 a0 e1                                      mov r7, r0
0040edfc  14 00 94 e5                                      ldr r0, [r4, #0x14]
0040ee00  d9 ff fb eb                                      bl #0x30ed6c
0040ee04  00 10 a0 e1                                      mov r1, r0
0040ee08  07 00 a0 e1                                      mov r0, r7
0040ee0c  64 ff fb eb                                      bl #0x30eba4
0040ee10  28 10 95 e5                                      ldr r1, [r5, #0x28]
0040ee14  00 70 a0 e1                                      mov r7, r0
0040ee18  24 00 94 e5                                      ldr r0, [r4, #0x24]
0040ee1c  d2 ff fb eb                                      bl #0x30ed6c
0040ee20  00 10 a0 e1                                      mov r1, r0
0040ee24  07 00 a0 e1                                      mov r0, r7
0040ee28  5d ff fb eb                                      bl #0x30eba4
0040ee2c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0040ee30  00 70 a0 e1                                      mov r7, r0
0040ee34  34 00 94 e5                                      ldr r0, [r4, #0x34]
0040ee38  cb ff fb eb                                      bl #0x30ed6c
0040ee3c  00 10 a0 e1                                      mov r1, r0
0040ee40  07 00 a0 e1                                      mov r0, r7
0040ee44  56 ff fb eb                                      bl #0x30eba4
0040ee48  24 00 86 e5                                      str r0, [r6, #0x24]
0040ee4c  20 10 95 e5                                      ldr r1, [r5, #0x20]
0040ee50  08 00 94 e5                                      ldr r0, [r4, #8]
0040ee54  c4 ff fb eb                                      bl #0x30ed6c
0040ee58  24 10 95 e5                                      ldr r1, [r5, #0x24]
0040ee5c  00 70 a0 e1                                      mov r7, r0
0040ee60  18 00 94 e5                                      ldr r0, [r4, #0x18]
0040ee64  c0 ff fb eb                                      bl #0x30ed6c
0040ee68  00 10 a0 e1                                      mov r1, r0
0040ee6c  07 00 a0 e1                                      mov r0, r7
0040ee70  4b ff fb eb                                      bl #0x30eba4
0040ee74  28 10 95 e5                                      ldr r1, [r5, #0x28]
0040ee78  00 70 a0 e1                                      mov r7, r0
0040ee7c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0040ee80  b9 ff fb eb                                      bl #0x30ed6c
0040ee84  00 10 a0 e1                                      mov r1, r0
0040ee88  07 00 a0 e1                                      mov r0, r7
0040ee8c  44 ff fb eb                                      bl #0x30eba4
0040ee90  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0040ee94  00 70 a0 e1                                      mov r7, r0
0040ee98  38 00 94 e5                                      ldr r0, [r4, #0x38]
0040ee9c  b2 ff fb eb                                      bl #0x30ed6c
0040eea0  00 10 a0 e1                                      mov r1, r0
0040eea4  07 00 a0 e1                                      mov r0, r7
0040eea8  3d ff fb eb                                      bl #0x30eba4
0040eeac  28 00 86 e5                                      str r0, [r6, #0x28]
0040eeb0  20 10 95 e5                                      ldr r1, [r5, #0x20]
0040eeb4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0040eeb8  ab ff fb eb                                      bl #0x30ed6c
0040eebc  24 10 95 e5                                      ldr r1, [r5, #0x24]
0040eec0  00 70 a0 e1                                      mov r7, r0
0040eec4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0040eec8  a7 ff fb eb                                      bl #0x30ed6c
0040eecc  00 10 a0 e1                                      mov r1, r0
0040eed0  07 00 a0 e1                                      mov r0, r7
0040eed4  32 ff fb eb                                      bl #0x30eba4
0040eed8  28 10 95 e5                                      ldr r1, [r5, #0x28]
0040eedc  00 70 a0 e1                                      mov r7, r0
0040eee0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0040eee4  a0 ff fb eb                                      bl #0x30ed6c
0040eee8  00 10 a0 e1                                      mov r1, r0
0040eeec  07 00 a0 e1                                      mov r0, r7
0040eef0  2b ff fb eb                                      bl #0x30eba4
0040eef4  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
0040eef8  00 70 a0 e1                                      mov r7, r0
0040eefc  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0040ef00  99 ff fb eb                                      bl #0x30ed6c
0040ef04  00 10 a0 e1                                      mov r1, r0
0040ef08  07 00 a0 e1                                      mov r0, r7
0040ef0c  24 ff fb eb                                      bl #0x30eba4
0040ef10  2c 00 86 e5                                      str r0, [r6, #0x2c]
0040ef14  30 10 95 e5                                      ldr r1, [r5, #0x30]
0040ef18  00 00 94 e5                                      ldr r0, [r4]
0040ef1c  92 ff fb eb                                      bl #0x30ed6c
0040ef20  34 10 95 e5                                      ldr r1, [r5, #0x34]
0040ef24  00 70 a0 e1                                      mov r7, r0
0040ef28  10 00 94 e5                                      ldr r0, [r4, #0x10]
0040ef2c  8e ff fb eb                                      bl #0x30ed6c
0040ef30  00 10 a0 e1                                      mov r1, r0
0040ef34  07 00 a0 e1                                      mov r0, r7
0040ef38  19 ff fb eb                                      bl #0x30eba4
0040ef3c  38 10 95 e5                                      ldr r1, [r5, #0x38]
0040ef40  00 70 a0 e1                                      mov r7, r0
0040ef44  20 00 94 e5                                      ldr r0, [r4, #0x20]
0040ef48  87 ff fb eb                                      bl #0x30ed6c
0040ef4c  00 10 a0 e1                                      mov r1, r0
0040ef50  07 00 a0 e1                                      mov r0, r7
0040ef54  12 ff fb eb                                      bl #0x30eba4
0040ef58  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
0040ef5c  00 70 a0 e1                                      mov r7, r0
0040ef60  30 00 94 e5                                      ldr r0, [r4, #0x30]
0040ef64  80 ff fb eb                                      bl #0x30ed6c
0040ef68  00 10 a0 e1                                      mov r1, r0
0040ef6c  07 00 a0 e1                                      mov r0, r7
0040ef70  0b ff fb eb                                      bl #0x30eba4
0040ef74  30 00 86 e5                                      str r0, [r6, #0x30]
0040ef78  30 10 95 e5                                      ldr r1, [r5, #0x30]
0040ef7c  04 00 94 e5                                      ldr r0, [r4, #4]
0040ef80  79 ff fb eb                                      bl #0x30ed6c
0040ef84  34 10 95 e5                                      ldr r1, [r5, #0x34]
0040ef88  00 70 a0 e1                                      mov r7, r0
0040ef8c  14 00 94 e5                                      ldr r0, [r4, #0x14]
0040ef90  75 ff fb eb                                      bl #0x30ed6c
0040ef94  00 10 a0 e1                                      mov r1, r0
0040ef98  07 00 a0 e1                                      mov r0, r7
0040ef9c  00 ff fb eb                                      bl #0x30eba4
0040efa0  38 10 95 e5                                      ldr r1, [r5, #0x38]
0040efa4  00 70 a0 e1                                      mov r7, r0
0040efa8  24 00 94 e5                                      ldr r0, [r4, #0x24]
0040efac  6e ff fb eb                                      bl #0x30ed6c
0040efb0  00 10 a0 e1                                      mov r1, r0
0040efb4  07 00 a0 e1                                      mov r0, r7
0040efb8  f9 fe fb eb                                      bl #0x30eba4
0040efbc  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
0040efc0  00 70 a0 e1                                      mov r7, r0
0040efc4  34 00 94 e5                                      ldr r0, [r4, #0x34]
0040efc8  67 ff fb eb                                      bl #0x30ed6c
0040efcc  00 10 a0 e1                                      mov r1, r0
0040efd0  07 00 a0 e1                                      mov r0, r7
0040efd4  f2 fe fb eb                                      bl #0x30eba4
0040efd8  34 00 86 e5                                      str r0, [r6, #0x34]
0040efdc  30 10 95 e5                                      ldr r1, [r5, #0x30]
0040efe0  08 00 94 e5                                      ldr r0, [r4, #8]
0040efe4  60 ff fb eb                                      bl #0x30ed6c
0040efe8  34 10 95 e5                                      ldr r1, [r5, #0x34]
0040efec  00 70 a0 e1                                      mov r7, r0
0040eff0  18 00 94 e5                                      ldr r0, [r4, #0x18]
0040eff4  5c ff fb eb                                      bl #0x30ed6c
0040eff8  00 10 a0 e1                                      mov r1, r0
0040effc  07 00 a0 e1                                      mov r0, r7
0040f000  e7 fe fb eb                                      bl #0x30eba4
0040f004  38 10 95 e5                                      ldr r1, [r5, #0x38]
0040f008  00 70 a0 e1                                      mov r7, r0
0040f00c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0040f010  55 ff fb eb                                      bl #0x30ed6c
0040f014  00 10 a0 e1                                      mov r1, r0
0040f018  07 00 a0 e1                                      mov r0, r7
0040f01c  e0 fe fb eb                                      bl #0x30eba4
0040f020  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
0040f024  00 70 a0 e1                                      mov r7, r0
0040f028  38 00 94 e5                                      ldr r0, [r4, #0x38]
0040f02c  4e ff fb eb                                      bl #0x30ed6c
0040f030  00 10 a0 e1                                      mov r1, r0
0040f034  07 00 a0 e1                                      mov r0, r7
0040f038  d9 fe fb eb                                      bl #0x30eba4
0040f03c  38 00 86 e5                                      str r0, [r6, #0x38]
0040f040  30 10 95 e5                                      ldr r1, [r5, #0x30]
0040f044  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0040f048  47 ff fb eb                                      bl #0x30ed6c
0040f04c  34 10 95 e5                                      ldr r1, [r5, #0x34]
0040f050  00 70 a0 e1                                      mov r7, r0
0040f054  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0040f058  43 ff fb eb                                      bl #0x30ed6c
0040f05c  00 10 a0 e1                                      mov r1, r0
0040f060  07 00 a0 e1                                      mov r0, r7
0040f064  ce fe fb eb                                      bl #0x30eba4
0040f068  38 10 95 e5                                      ldr r1, [r5, #0x38]
0040f06c  00 70 a0 e1                                      mov r7, r0
0040f070  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0040f074  3c ff fb eb                                      bl #0x30ed6c
0040f078  00 10 a0 e1                                      mov r1, r0
0040f07c  07 00 a0 e1                                      mov r0, r7
0040f080  c7 fe fb eb                                      bl #0x30eba4
0040f084  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
0040f088  00 70 a0 e1                                      mov r7, r0
0040f08c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0040f090  35 ff fb eb                                      bl #0x30ed6c
0040f094  00 10 a0 e1                                      mov r1, r0
0040f098  07 00 a0 e1                                      mov r0, r7
0040f09c  c0 fe fb eb                                      bl #0x30eba4
0040f0a0  00 30 a0 e3                                      mov r3, #0
0040f0a4  3c 00 86 e5                                      str r0, [r6, #0x3c]
0040f0a8  40 30 c6 e5                                      strb r3, [r6, #0x40]
0040f0ac  06 00 a0 e1                                      mov r0, r6
0040f0b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0050f6d8, declared_size=108, range_size=108, mode=arm
; class-group: glitch::core::detail::CMatrix4Base<float>
; alias: _ZN6glitch4core6detail12CMatrix4BaseIfE6multEqERKS3_
; demangled: glitch::core::detail::CMatrix4Base<float>::multEq(glitch::core::detail::CMatrix4Base<float> const&)
; decoder-mode: arm
0050f6d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0050f6dc  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
0050f6e0  48 d0 4d e2                                      sub sp, sp, #0x48
0050f6e4  01 50 a0 e1                                      mov r5, r1
0050f6e8  00 00 53 e3                                      cmp r3, #0
0050f6ec  00 40 a0 e1                                      mov r4, r0
0050f6f0  0c 00 00 1a                                      bne #0x50f728
0050f6f4  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0050f6f8  00 00 53 e3                                      cmp r3, #0
0050f6fc  0c 00 00 1a                                      bne #0x50f734
0050f700  04 60 8d e2                                      add r6, sp, #4
0050f704  00 10 a0 e1                                      mov r1, r0
0050f708  41 20 a0 e3                                      mov r2, #0x41
0050f70c  06 00 a0 e1                                      mov r0, r6
0050f710  54 fc f7 eb                                      bl #0x30e868
0050f714  04 00 a0 e1                                      mov r0, r4
0050f718  06 10 a0 e1                                      mov r1, r6
0050f71c  05 20 a0 e1                                      mov r2, r5
0050f720  cb fc fb eb                                      bl #0x40ea54
0050f724  00 40 a0 e1                                      mov r4, r0
0050f728  04 00 a0 e1                                      mov r0, r4
0050f72c  48 d0 8d e2                                      add sp, sp, #0x48
0050f730  70 80 bd e8                                      pop {r4, r5, r6, pc}
0050f734  41 20 a0 e3                                      mov r2, #0x41
0050f738  4a fc f7 eb                                      bl #0x30e868
0050f73c  00 40 a0 e1                                      mov r4, r0
0050f740  f8 ff ff ea                                      b #0x50f728

; FUNCTION 0x005822c8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::core::detail::CMatrix4Base<float>
; alias: _ZN6glitch4core6detail12CMatrix4BaseIfE12setbyproductERKS3_S5_
; demangled: glitch::core::detail::CMatrix4Base<float>::setbyproduct(glitch::core::detail::CMatrix4Base<float> const&, glitch::core::detail::CMatrix4Base<float> const&)
; decoder-mode: arm
005822c8  40 30 d1 e5                                      ldrb r3, [r1, #0x40]
005822cc  00 00 53 e3                                      cmp r3, #0
005822d0  05 00 00 1a                                      bne #0x5822ec
005822d4  40 30 d2 e5                                      ldrb r3, [r2, #0x40]
005822d8  00 00 53 e3                                      cmp r3, #0
005822dc  00 00 00 1a                                      bne #0x5822e4
005822e0  db 31 fa ea                                      b #0x40ea54
005822e4  41 20 a0 e3                                      mov r2, #0x41
005822e8  5e 31 f6 ea                                      b #0x30e868
005822ec  02 10 a0 e1                                      mov r1, r2
005822f0  41 20 a0 e3                                      mov r2, #0x41
005822f4  5b 31 f6 ea                                      b #0x30e868

; FUNCTION 0x00597884, declared_size=988, range_size=988, mode=arm
; class-group: glitch::core::detail::CMatrix4Base<float>
; alias: _ZNK6glitch4core6detail12CMatrix4BaseIfE6mult34ERKS3_RS3_
; demangled: glitch::core::detail::CMatrix4Base<float>::mult34(glitch::core::detail::CMatrix4Base<float> const&, glitch::core::detail::CMatrix4Base<float>&) const
; decoder-mode: arm
00597884  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00597888  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0059788c  00 40 a0 e1                                      mov r4, r0
00597890  02 50 a0 e1                                      mov r5, r2
00597894  00 00 53 e3                                      cmp r3, #0
00597898  01 60 a0 e1                                      mov r6, r1
0059789c  ea 00 00 1a                                      bne #0x597c4c
005978a0  40 80 d1 e5                                      ldrb r8, [r1, #0x40]
005978a4  00 00 58 e3                                      cmp r8, #0
005978a8  e6 00 00 1a                                      bne #0x597c48
005978ac  00 10 91 e5                                      ldr r1, [r1]
005978b0  00 00 90 e5                                      ldr r0, [r0]
005978b4  2c dd f5 eb                                      bl #0x30ed6c
005978b8  04 10 96 e5                                      ldr r1, [r6, #4]
005978bc  00 70 a0 e1                                      mov r7, r0
005978c0  10 00 94 e5                                      ldr r0, [r4, #0x10]
005978c4  28 dd f5 eb                                      bl #0x30ed6c
005978c8  00 10 a0 e1                                      mov r1, r0
005978cc  07 00 a0 e1                                      mov r0, r7
005978d0  b3 dc f5 eb                                      bl #0x30eba4
005978d4  08 10 96 e5                                      ldr r1, [r6, #8]
005978d8  00 70 a0 e1                                      mov r7, r0
005978dc  20 00 94 e5                                      ldr r0, [r4, #0x20]
005978e0  21 dd f5 eb                                      bl #0x30ed6c
005978e4  00 10 a0 e1                                      mov r1, r0
005978e8  07 00 a0 e1                                      mov r0, r7
005978ec  ac dc f5 eb                                      bl #0x30eba4
005978f0  00 00 85 e5                                      str r0, [r5]
005978f4  00 10 96 e5                                      ldr r1, [r6]
005978f8  04 00 94 e5                                      ldr r0, [r4, #4]
005978fc  1a dd f5 eb                                      bl #0x30ed6c
00597900  04 10 96 e5                                      ldr r1, [r6, #4]
00597904  00 70 a0 e1                                      mov r7, r0
00597908  14 00 94 e5                                      ldr r0, [r4, #0x14]
0059790c  16 dd f5 eb                                      bl #0x30ed6c
00597910  00 10 a0 e1                                      mov r1, r0
00597914  07 00 a0 e1                                      mov r0, r7
00597918  a1 dc f5 eb                                      bl #0x30eba4
0059791c  08 10 96 e5                                      ldr r1, [r6, #8]
00597920  00 70 a0 e1                                      mov r7, r0
00597924  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597928  0f dd f5 eb                                      bl #0x30ed6c
0059792c  00 10 a0 e1                                      mov r1, r0
00597930  07 00 a0 e1                                      mov r0, r7
00597934  9a dc f5 eb                                      bl #0x30eba4
00597938  04 00 85 e5                                      str r0, [r5, #4]
0059793c  00 10 96 e5                                      ldr r1, [r6]
00597940  08 00 94 e5                                      ldr r0, [r4, #8]
00597944  08 dd f5 eb                                      bl #0x30ed6c
00597948  04 10 96 e5                                      ldr r1, [r6, #4]
0059794c  00 70 a0 e1                                      mov r7, r0
00597950  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597954  04 dd f5 eb                                      bl #0x30ed6c
00597958  00 10 a0 e1                                      mov r1, r0
0059795c  07 00 a0 e1                                      mov r0, r7
00597960  8f dc f5 eb                                      bl #0x30eba4
00597964  08 10 96 e5                                      ldr r1, [r6, #8]
00597968  00 70 a0 e1                                      mov r7, r0
0059796c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597970  fd dc f5 eb                                      bl #0x30ed6c
00597974  00 10 a0 e1                                      mov r1, r0
00597978  07 00 a0 e1                                      mov r0, r7
0059797c  88 dc f5 eb                                      bl #0x30eba4
00597980  00 70 a0 e3                                      mov r7, #0
00597984  08 00 85 e5                                      str r0, [r5, #8]
00597988  0c 70 85 e5                                      str r7, [r5, #0xc]
0059798c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00597990  00 00 94 e5                                      ldr r0, [r4]
00597994  f4 dc f5 eb                                      bl #0x30ed6c
00597998  14 10 96 e5                                      ldr r1, [r6, #0x14]
0059799c  00 a0 a0 e1                                      mov sl, r0
005979a0  10 00 94 e5                                      ldr r0, [r4, #0x10]
005979a4  f0 dc f5 eb                                      bl #0x30ed6c
005979a8  00 10 a0 e1                                      mov r1, r0
005979ac  0a 00 a0 e1                                      mov r0, sl
005979b0  7b dc f5 eb                                      bl #0x30eba4
005979b4  18 10 96 e5                                      ldr r1, [r6, #0x18]
005979b8  00 a0 a0 e1                                      mov sl, r0
005979bc  20 00 94 e5                                      ldr r0, [r4, #0x20]
005979c0  e9 dc f5 eb                                      bl #0x30ed6c
005979c4  00 10 a0 e1                                      mov r1, r0
005979c8  0a 00 a0 e1                                      mov r0, sl
005979cc  74 dc f5 eb                                      bl #0x30eba4
005979d0  10 00 85 e5                                      str r0, [r5, #0x10]
005979d4  10 10 96 e5                                      ldr r1, [r6, #0x10]
005979d8  04 00 94 e5                                      ldr r0, [r4, #4]
005979dc  e2 dc f5 eb                                      bl #0x30ed6c
005979e0  14 10 96 e5                                      ldr r1, [r6, #0x14]
005979e4  00 a0 a0 e1                                      mov sl, r0
005979e8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005979ec  de dc f5 eb                                      bl #0x30ed6c
005979f0  00 10 a0 e1                                      mov r1, r0
005979f4  0a 00 a0 e1                                      mov r0, sl
005979f8  69 dc f5 eb                                      bl #0x30eba4
005979fc  18 10 96 e5                                      ldr r1, [r6, #0x18]
00597a00  00 a0 a0 e1                                      mov sl, r0
00597a04  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597a08  d7 dc f5 eb                                      bl #0x30ed6c
00597a0c  00 10 a0 e1                                      mov r1, r0
00597a10  0a 00 a0 e1                                      mov r0, sl
00597a14  62 dc f5 eb                                      bl #0x30eba4
00597a18  14 00 85 e5                                      str r0, [r5, #0x14]
00597a1c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00597a20  08 00 94 e5                                      ldr r0, [r4, #8]
00597a24  d0 dc f5 eb                                      bl #0x30ed6c
00597a28  14 10 96 e5                                      ldr r1, [r6, #0x14]
00597a2c  00 a0 a0 e1                                      mov sl, r0
00597a30  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597a34  cc dc f5 eb                                      bl #0x30ed6c
00597a38  00 10 a0 e1                                      mov r1, r0
00597a3c  0a 00 a0 e1                                      mov r0, sl
00597a40  57 dc f5 eb                                      bl #0x30eba4
00597a44  18 10 96 e5                                      ldr r1, [r6, #0x18]
00597a48  00 a0 a0 e1                                      mov sl, r0
00597a4c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597a50  c5 dc f5 eb                                      bl #0x30ed6c
00597a54  00 10 a0 e1                                      mov r1, r0
00597a58  0a 00 a0 e1                                      mov r0, sl
00597a5c  50 dc f5 eb                                      bl #0x30eba4
00597a60  18 00 85 e5                                      str r0, [r5, #0x18]
00597a64  1c 70 85 e5                                      str r7, [r5, #0x1c]
00597a68  20 10 96 e5                                      ldr r1, [r6, #0x20]
00597a6c  00 00 94 e5                                      ldr r0, [r4]
00597a70  bd dc f5 eb                                      bl #0x30ed6c
00597a74  24 10 96 e5                                      ldr r1, [r6, #0x24]
00597a78  00 a0 a0 e1                                      mov sl, r0
00597a7c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00597a80  b9 dc f5 eb                                      bl #0x30ed6c
00597a84  00 10 a0 e1                                      mov r1, r0
00597a88  0a 00 a0 e1                                      mov r0, sl
00597a8c  44 dc f5 eb                                      bl #0x30eba4
00597a90  28 10 96 e5                                      ldr r1, [r6, #0x28]
00597a94  00 a0 a0 e1                                      mov sl, r0
00597a98  20 00 94 e5                                      ldr r0, [r4, #0x20]
00597a9c  b2 dc f5 eb                                      bl #0x30ed6c
00597aa0  00 10 a0 e1                                      mov r1, r0
00597aa4  0a 00 a0 e1                                      mov r0, sl
00597aa8  3d dc f5 eb                                      bl #0x30eba4
00597aac  20 00 85 e5                                      str r0, [r5, #0x20]
00597ab0  20 10 96 e5                                      ldr r1, [r6, #0x20]
00597ab4  04 00 94 e5                                      ldr r0, [r4, #4]
00597ab8  ab dc f5 eb                                      bl #0x30ed6c
00597abc  24 10 96 e5                                      ldr r1, [r6, #0x24]
00597ac0  00 a0 a0 e1                                      mov sl, r0
00597ac4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00597ac8  a7 dc f5 eb                                      bl #0x30ed6c
00597acc  00 10 a0 e1                                      mov r1, r0
00597ad0  0a 00 a0 e1                                      mov r0, sl
00597ad4  32 dc f5 eb                                      bl #0x30eba4
00597ad8  28 10 96 e5                                      ldr r1, [r6, #0x28]
00597adc  00 a0 a0 e1                                      mov sl, r0
00597ae0  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597ae4  a0 dc f5 eb                                      bl #0x30ed6c
00597ae8  00 10 a0 e1                                      mov r1, r0
00597aec  0a 00 a0 e1                                      mov r0, sl
00597af0  2b dc f5 eb                                      bl #0x30eba4
00597af4  24 00 85 e5                                      str r0, [r5, #0x24]
00597af8  20 10 96 e5                                      ldr r1, [r6, #0x20]
00597afc  08 00 94 e5                                      ldr r0, [r4, #8]
00597b00  99 dc f5 eb                                      bl #0x30ed6c
00597b04  24 10 96 e5                                      ldr r1, [r6, #0x24]
00597b08  00 a0 a0 e1                                      mov sl, r0
00597b0c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597b10  95 dc f5 eb                                      bl #0x30ed6c
00597b14  00 10 a0 e1                                      mov r1, r0
00597b18  0a 00 a0 e1                                      mov r0, sl
00597b1c  20 dc f5 eb                                      bl #0x30eba4
00597b20  28 10 96 e5                                      ldr r1, [r6, #0x28]
00597b24  00 a0 a0 e1                                      mov sl, r0
00597b28  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597b2c  8e dc f5 eb                                      bl #0x30ed6c
00597b30  00 10 a0 e1                                      mov r1, r0
00597b34  0a 00 a0 e1                                      mov r0, sl
00597b38  19 dc f5 eb                                      bl #0x30eba4
00597b3c  28 00 85 e5                                      str r0, [r5, #0x28]
00597b40  2c 70 85 e5                                      str r7, [r5, #0x2c]
00597b44  30 10 96 e5                                      ldr r1, [r6, #0x30]
00597b48  00 00 94 e5                                      ldr r0, [r4]
00597b4c  86 dc f5 eb                                      bl #0x30ed6c
00597b50  34 10 96 e5                                      ldr r1, [r6, #0x34]
00597b54  00 70 a0 e1                                      mov r7, r0
00597b58  10 00 94 e5                                      ldr r0, [r4, #0x10]
00597b5c  82 dc f5 eb                                      bl #0x30ed6c
00597b60  00 10 a0 e1                                      mov r1, r0
00597b64  07 00 a0 e1                                      mov r0, r7
00597b68  0d dc f5 eb                                      bl #0x30eba4
00597b6c  38 10 96 e5                                      ldr r1, [r6, #0x38]
00597b70  00 70 a0 e1                                      mov r7, r0
00597b74  20 00 94 e5                                      ldr r0, [r4, #0x20]
00597b78  7b dc f5 eb                                      bl #0x30ed6c
00597b7c  00 10 a0 e1                                      mov r1, r0
00597b80  07 00 a0 e1                                      mov r0, r7
00597b84  06 dc f5 eb                                      bl #0x30eba4
00597b88  30 10 94 e5                                      ldr r1, [r4, #0x30]
00597b8c  04 dc f5 eb                                      bl #0x30eba4
00597b90  30 00 85 e5                                      str r0, [r5, #0x30]
00597b94  30 10 96 e5                                      ldr r1, [r6, #0x30]
00597b98  04 00 94 e5                                      ldr r0, [r4, #4]
00597b9c  72 dc f5 eb                                      bl #0x30ed6c
00597ba0  34 10 96 e5                                      ldr r1, [r6, #0x34]
00597ba4  00 70 a0 e1                                      mov r7, r0
00597ba8  14 00 94 e5                                      ldr r0, [r4, #0x14]
00597bac  6e dc f5 eb                                      bl #0x30ed6c
00597bb0  00 10 a0 e1                                      mov r1, r0
00597bb4  07 00 a0 e1                                      mov r0, r7
00597bb8  f9 db f5 eb                                      bl #0x30eba4
00597bbc  38 10 96 e5                                      ldr r1, [r6, #0x38]
00597bc0  00 70 a0 e1                                      mov r7, r0
00597bc4  24 00 94 e5                                      ldr r0, [r4, #0x24]
00597bc8  67 dc f5 eb                                      bl #0x30ed6c
00597bcc  00 10 a0 e1                                      mov r1, r0
00597bd0  07 00 a0 e1                                      mov r0, r7
00597bd4  f2 db f5 eb                                      bl #0x30eba4
00597bd8  34 10 94 e5                                      ldr r1, [r4, #0x34]
00597bdc  f0 db f5 eb                                      bl #0x30eba4
00597be0  34 00 85 e5                                      str r0, [r5, #0x34]
00597be4  30 10 96 e5                                      ldr r1, [r6, #0x30]
00597be8  08 00 94 e5                                      ldr r0, [r4, #8]
00597bec  5e dc f5 eb                                      bl #0x30ed6c
00597bf0  34 10 96 e5                                      ldr r1, [r6, #0x34]
00597bf4  00 70 a0 e1                                      mov r7, r0
00597bf8  18 00 94 e5                                      ldr r0, [r4, #0x18]
00597bfc  5a dc f5 eb                                      bl #0x30ed6c
00597c00  00 10 a0 e1                                      mov r1, r0
00597c04  07 00 a0 e1                                      mov r0, r7
00597c08  e5 db f5 eb                                      bl #0x30eba4
00597c0c  38 10 96 e5                                      ldr r1, [r6, #0x38]
00597c10  00 70 a0 e1                                      mov r7, r0
00597c14  28 00 94 e5                                      ldr r0, [r4, #0x28]
00597c18  53 dc f5 eb                                      bl #0x30ed6c
00597c1c  00 10 a0 e1                                      mov r1, r0
00597c20  07 00 a0 e1                                      mov r0, r7
00597c24  de db f5 eb                                      bl #0x30eba4
00597c28  38 10 94 e5                                      ldr r1, [r4, #0x38]
00597c2c  dc db f5 eb                                      bl #0x30eba4
00597c30  fe 35 a0 e3                                      mov r3, #0x3f800000
00597c34  38 00 85 e5                                      str r0, [r5, #0x38]
00597c38  40 80 c5 e5                                      strb r8, [r5, #0x40]
00597c3c  3c 30 85 e5                                      str r3, [r5, #0x3c]
00597c40  05 00 a0 e1                                      mov r0, r5
00597c44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00597c48  00 10 a0 e1                                      mov r1, r0
00597c4c  05 00 a0 e1                                      mov r0, r5
00597c50  41 20 a0 e3                                      mov r2, #0x41
00597c54  03 db f5 eb                                      bl #0x30e868
00597c58  05 00 a0 e1                                      mov r0, r5
00597c5c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
