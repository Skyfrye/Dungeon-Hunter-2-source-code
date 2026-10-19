; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00312bf8, declared_size=432, range_size=432, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE21multiplyWith1x4MatrixEPf
; demangled: glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(float*) const
; decoder-mode: arm
00312bf8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00312bfc  00 a0 91 e5                                      ldr sl, [r1]
00312c00  00 40 a0 e1                                      mov r4, r0
00312c04  04 80 91 e5                                      ldr r8, [r1, #4]
00312c08  01 50 a0 e1                                      mov r5, r1
00312c0c  00 10 90 e5                                      ldr r1, [r0]
00312c10  0a 00 a0 e1                                      mov r0, sl
00312c14  54 f0 ff eb                                      bl #0x30ed6c
00312c18  10 10 94 e5                                      ldr r1, [r4, #0x10]
00312c1c  00 60 a0 e1                                      mov r6, r0
00312c20  08 00 a0 e1                                      mov r0, r8
00312c24  50 f0 ff eb                                      bl #0x30ed6c
00312c28  00 10 a0 e1                                      mov r1, r0
00312c2c  06 00 a0 e1                                      mov r0, r6
00312c30  db ef ff eb                                      bl #0x30eba4
00312c34  08 70 95 e5                                      ldr r7, [r5, #8]
00312c38  20 10 94 e5                                      ldr r1, [r4, #0x20]
00312c3c  00 90 a0 e1                                      mov sb, r0
00312c40  07 00 a0 e1                                      mov r0, r7
00312c44  48 f0 ff eb                                      bl #0x30ed6c
00312c48  00 10 a0 e1                                      mov r1, r0
00312c4c  09 00 a0 e1                                      mov r0, sb
00312c50  d3 ef ff eb                                      bl #0x30eba4
00312c54  0c 60 95 e5                                      ldr r6, [r5, #0xc]
00312c58  30 10 94 e5                                      ldr r1, [r4, #0x30]
00312c5c  00 90 a0 e1                                      mov sb, r0
00312c60  06 00 a0 e1                                      mov r0, r6
00312c64  40 f0 ff eb                                      bl #0x30ed6c
00312c68  00 10 a0 e1                                      mov r1, r0
00312c6c  09 00 a0 e1                                      mov r0, sb
00312c70  cb ef ff eb                                      bl #0x30eba4
00312c74  00 00 85 e5                                      str r0, [r5]
00312c78  04 10 94 e5                                      ldr r1, [r4, #4]
00312c7c  0a 00 a0 e1                                      mov r0, sl
00312c80  39 f0 ff eb                                      bl #0x30ed6c
00312c84  14 10 94 e5                                      ldr r1, [r4, #0x14]
00312c88  00 90 a0 e1                                      mov sb, r0
00312c8c  08 00 a0 e1                                      mov r0, r8
00312c90  35 f0 ff eb                                      bl #0x30ed6c
00312c94  00 10 a0 e1                                      mov r1, r0
00312c98  09 00 a0 e1                                      mov r0, sb
00312c9c  c0 ef ff eb                                      bl #0x30eba4
00312ca0  24 10 94 e5                                      ldr r1, [r4, #0x24]
00312ca4  00 90 a0 e1                                      mov sb, r0
00312ca8  07 00 a0 e1                                      mov r0, r7
00312cac  2e f0 ff eb                                      bl #0x30ed6c
00312cb0  00 10 a0 e1                                      mov r1, r0
00312cb4  09 00 a0 e1                                      mov r0, sb
00312cb8  b9 ef ff eb                                      bl #0x30eba4
00312cbc  34 10 94 e5                                      ldr r1, [r4, #0x34]
00312cc0  00 90 a0 e1                                      mov sb, r0
00312cc4  06 00 a0 e1                                      mov r0, r6
00312cc8  27 f0 ff eb                                      bl #0x30ed6c
00312ccc  00 10 a0 e1                                      mov r1, r0
00312cd0  09 00 a0 e1                                      mov r0, sb
00312cd4  b2 ef ff eb                                      bl #0x30eba4
00312cd8  04 00 85 e5                                      str r0, [r5, #4]
00312cdc  08 10 94 e5                                      ldr r1, [r4, #8]
00312ce0  0a 00 a0 e1                                      mov r0, sl
00312ce4  20 f0 ff eb                                      bl #0x30ed6c
00312ce8  18 10 94 e5                                      ldr r1, [r4, #0x18]
00312cec  00 90 a0 e1                                      mov sb, r0
00312cf0  08 00 a0 e1                                      mov r0, r8
00312cf4  1c f0 ff eb                                      bl #0x30ed6c
00312cf8  00 10 a0 e1                                      mov r1, r0
00312cfc  09 00 a0 e1                                      mov r0, sb
00312d00  a7 ef ff eb                                      bl #0x30eba4
00312d04  28 10 94 e5                                      ldr r1, [r4, #0x28]
00312d08  00 90 a0 e1                                      mov sb, r0
00312d0c  07 00 a0 e1                                      mov r0, r7
00312d10  15 f0 ff eb                                      bl #0x30ed6c
00312d14  00 10 a0 e1                                      mov r1, r0
00312d18  09 00 a0 e1                                      mov r0, sb
00312d1c  a0 ef ff eb                                      bl #0x30eba4
00312d20  38 10 94 e5                                      ldr r1, [r4, #0x38]
00312d24  00 90 a0 e1                                      mov sb, r0
00312d28  06 00 a0 e1                                      mov r0, r6
00312d2c  0e f0 ff eb                                      bl #0x30ed6c
00312d30  00 10 a0 e1                                      mov r1, r0
00312d34  09 00 a0 e1                                      mov r0, sb
00312d38  99 ef ff eb                                      bl #0x30eba4
00312d3c  08 00 85 e5                                      str r0, [r5, #8]
00312d40  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00312d44  0a 00 a0 e1                                      mov r0, sl
00312d48  07 f0 ff eb                                      bl #0x30ed6c
00312d4c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00312d50  00 a0 a0 e1                                      mov sl, r0
00312d54  08 00 a0 e1                                      mov r0, r8
00312d58  03 f0 ff eb                                      bl #0x30ed6c
00312d5c  00 10 a0 e1                                      mov r1, r0
00312d60  0a 00 a0 e1                                      mov r0, sl
00312d64  8e ef ff eb                                      bl #0x30eba4
00312d68  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00312d6c  00 80 a0 e1                                      mov r8, r0
00312d70  07 00 a0 e1                                      mov r0, r7
00312d74  fc ef ff eb                                      bl #0x30ed6c
00312d78  00 10 a0 e1                                      mov r1, r0
00312d7c  08 00 a0 e1                                      mov r0, r8
00312d80  87 ef ff eb                                      bl #0x30eba4
00312d84  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00312d88  00 70 a0 e1                                      mov r7, r0
00312d8c  06 00 a0 e1                                      mov r0, r6
00312d90  f5 ef ff eb                                      bl #0x30ed6c
00312d94  00 10 a0 e1                                      mov r1, r0
00312d98  07 00 a0 e1                                      mov r0, r7
00312d9c  80 ef ff eb                                      bl #0x30eba4
00312da0  0c 00 85 e5                                      str r0, [r5, #0xc]
00312da4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0031f790, declared_size=148, range_size=148, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE13getTransposedERS2_
; demangled: glitch::core::CMatrix4<float>::getTransposed(glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
0031f790  00 30 a0 e3                                      mov r3, #0
0031f794  40 30 c1 e5                                      strb r3, [r1, #0x40]
0031f798  00 30 90 e5                                      ldr r3, [r0]
0031f79c  00 30 81 e5                                      str r3, [r1]
0031f7a0  10 30 90 e5                                      ldr r3, [r0, #0x10]
0031f7a4  04 30 81 e5                                      str r3, [r1, #4]
0031f7a8  20 30 90 e5                                      ldr r3, [r0, #0x20]
0031f7ac  08 30 81 e5                                      str r3, [r1, #8]
0031f7b0  30 30 90 e5                                      ldr r3, [r0, #0x30]
0031f7b4  0c 30 81 e5                                      str r3, [r1, #0xc]
0031f7b8  04 30 90 e5                                      ldr r3, [r0, #4]
0031f7bc  10 30 81 e5                                      str r3, [r1, #0x10]
0031f7c0  14 30 90 e5                                      ldr r3, [r0, #0x14]
0031f7c4  14 30 81 e5                                      str r3, [r1, #0x14]
0031f7c8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0031f7cc  18 30 81 e5                                      str r3, [r1, #0x18]
0031f7d0  34 30 90 e5                                      ldr r3, [r0, #0x34]
0031f7d4  1c 30 81 e5                                      str r3, [r1, #0x1c]
0031f7d8  08 30 90 e5                                      ldr r3, [r0, #8]
0031f7dc  20 30 81 e5                                      str r3, [r1, #0x20]
0031f7e0  18 30 90 e5                                      ldr r3, [r0, #0x18]
0031f7e4  24 30 81 e5                                      str r3, [r1, #0x24]
0031f7e8  28 30 90 e5                                      ldr r3, [r0, #0x28]
0031f7ec  28 30 81 e5                                      str r3, [r1, #0x28]
0031f7f0  38 30 90 e5                                      ldr r3, [r0, #0x38]
0031f7f4  2c 30 81 e5                                      str r3, [r1, #0x2c]
0031f7f8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0031f7fc  30 30 81 e5                                      str r3, [r1, #0x30]
0031f800  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0031f804  34 30 81 e5                                      str r3, [r1, #0x34]
0031f808  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0031f80c  38 30 81 e5                                      str r3, [r1, #0x38]
0031f810  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0031f814  3c 30 81 e5                                      str r3, [r1, #0x3c]
0031f818  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
0031f81c  40 30 c1 e5                                      strb r3, [r1, #0x40]
0031f820  1e ff 2f e1                                      bx lr

; FUNCTION 0x003232c0, declared_size=2080, range_size=2080, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE10getInverseERS2_
; demangled: glitch::core::CMatrix4<float>::getInverse(glitch::core::CMatrix4<float>&) const
; decoder-mode: arm
003232c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003232c4  40 20 d0 e5                                      ldrb r2, [r0, #0x40]
003232c8  2c d0 4d e2                                      sub sp, sp, #0x2c
003232cc  00 40 a0 e1                                      mov r4, r0
003232d0  00 00 52 e3                                      cmp r2, #0
003232d4  01 50 a0 e1                                      mov r5, r1
003232d8  fa 01 00 1a                                      bne #0x323ac8
003232dc  3c 60 90 e5                                      ldr r6, [r0, #0x3c]
003232e0  28 a0 90 e5                                      ldr sl, [r0, #0x28]
003232e4  2c 90 90 e5                                      ldr sb, [r0, #0x2c]
003232e8  38 b0 90 e5                                      ldr fp, [r0, #0x38]
003232ec  06 10 a0 e1                                      mov r1, r6
003232f0  0a 00 a0 e1                                      mov r0, sl
003232f4  00 20 8d e5                                      str r2, [sp]
003232f8  9b ae ff eb                                      bl #0x30ed6c
003232fc  0b 10 a0 e1                                      mov r1, fp
00323300  00 70 a0 e1                                      mov r7, r0
00323304  09 00 a0 e1                                      mov r0, sb
00323308  97 ae ff eb                                      bl #0x30ed6c
0032330c  00 10 a0 e1                                      mov r1, r0
00323310  07 00 a0 e1                                      mov r0, r7
00323314  24 ac ff eb                                      bl #0x30e3ac
00323318  10 00 8d e5                                      str r0, [sp, #0x10]
0032331c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00323320  06 00 a0 e1                                      mov r0, r6
00323324  90 ae ff eb                                      bl #0x30ed6c
00323328  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
0032332c  00 70 a0 e1                                      mov r7, r0
00323330  0b 00 a0 e1                                      mov r0, fp
00323334  08 10 a0 e1                                      mov r1, r8
00323338  8b ae ff eb                                      bl #0x30ed6c
0032333c  00 10 a0 e1                                      mov r1, r0
00323340  07 00 a0 e1                                      mov r0, r7
00323344  18 ac ff eb                                      bl #0x30e3ac
00323348  14 00 8d e5                                      str r0, [sp, #0x14]
0032334c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00323350  09 00 a0 e1                                      mov r0, sb
00323354  84 ae ff eb                                      bl #0x30ed6c
00323358  08 10 a0 e1                                      mov r1, r8
0032335c  00 70 a0 e1                                      mov r7, r0
00323360  0a 00 a0 e1                                      mov r0, sl
00323364  80 ae ff eb                                      bl #0x30ed6c
00323368  00 10 a0 e1                                      mov r1, r0
0032336c  07 00 a0 e1                                      mov r0, r7
00323370  0d ac ff eb                                      bl #0x30e3ac
00323374  18 00 8d e5                                      str r0, [sp, #0x18]
00323378  08 70 94 e5                                      ldr r7, [r4, #8]
0032337c  06 00 a0 e1                                      mov r0, r6
00323380  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00323384  07 10 a0 e1                                      mov r1, r7
00323388  77 ae ff eb                                      bl #0x30ed6c
0032338c  06 10 a0 e1                                      mov r1, r6
00323390  00 30 a0 e1                                      mov r3, r0
00323394  0b 00 a0 e1                                      mov r0, fp
00323398  04 30 8d e5                                      str r3, [sp, #4]
0032339c  72 ae ff eb                                      bl #0x30ed6c
003233a0  04 30 9d e5                                      ldr r3, [sp, #4]
003233a4  00 10 a0 e1                                      mov r1, r0
003233a8  03 00 a0 e1                                      mov r0, r3
003233ac  fe ab ff eb                                      bl #0x30e3ac
003233b0  07 10 a0 e1                                      mov r1, r7
003233b4  1c 00 8d e5                                      str r0, [sp, #0x1c]
003233b8  09 00 a0 e1                                      mov r0, sb
003233bc  6a ae ff eb                                      bl #0x30ed6c
003233c0  06 10 a0 e1                                      mov r1, r6
003233c4  00 90 a0 e1                                      mov sb, r0
003233c8  0a 00 a0 e1                                      mov r0, sl
003233cc  66 ae ff eb                                      bl #0x30ed6c
003233d0  00 10 a0 e1                                      mov r1, r0
003233d4  09 00 a0 e1                                      mov r0, sb
003233d8  f3 ab ff eb                                      bl #0x30e3ac
003233dc  07 10 a0 e1                                      mov r1, r7
003233e0  20 00 8d e5                                      str r0, [sp, #0x20]
003233e4  08 00 a0 e1                                      mov r0, r8
003233e8  5f ae ff eb                                      bl #0x30ed6c
003233ec  06 10 a0 e1                                      mov r1, r6
003233f0  00 70 a0 e1                                      mov r7, r0
003233f4  18 00 94 e5                                      ldr r0, [r4, #0x18]
003233f8  5b ae ff eb                                      bl #0x30ed6c
003233fc  00 10 a0 e1                                      mov r1, r0
00323400  07 00 a0 e1                                      mov r0, r7
00323404  e8 ab ff eb                                      bl #0x30e3ac
00323408  08 00 8d e5                                      str r0, [sp, #8]
0032340c  20 90 94 e5                                      ldr sb, [r4, #0x20]
00323410  34 a0 94 e5                                      ldr sl, [r4, #0x34]
00323414  24 b0 94 e5                                      ldr fp, [r4, #0x24]
00323418  09 00 a0 e1                                      mov r0, sb
0032341c  0a 10 a0 e1                                      mov r1, sl
00323420  51 ae ff eb                                      bl #0x30ed6c
00323424  30 80 94 e5                                      ldr r8, [r4, #0x30]
00323428  00 60 a0 e1                                      mov r6, r0
0032342c  0b 00 a0 e1                                      mov r0, fp
00323430  08 10 a0 e1                                      mov r1, r8
00323434  4c ae ff eb                                      bl #0x30ed6c
00323438  00 10 a0 e1                                      mov r1, r0
0032343c  06 00 a0 e1                                      mov r0, r6
00323440  d9 ab ff eb                                      bl #0x30e3ac
00323444  24 00 8d e5                                      str r0, [sp, #0x24]
00323448  10 10 94 e5                                      ldr r1, [r4, #0x10]
0032344c  0a 00 a0 e1                                      mov r0, sl
00323450  45 ae ff eb                                      bl #0x30ed6c
00323454  14 10 94 e5                                      ldr r1, [r4, #0x14]
00323458  00 60 a0 e1                                      mov r6, r0
0032345c  08 00 a0 e1                                      mov r0, r8
00323460  41 ae ff eb                                      bl #0x30ed6c
00323464  00 10 a0 e1                                      mov r1, r0
00323468  06 00 a0 e1                                      mov r0, r6
0032346c  ce ab ff eb                                      bl #0x30e3ac
00323470  10 10 94 e5                                      ldr r1, [r4, #0x10]
00323474  00 70 a0 e1                                      mov r7, r0
00323478  0b 00 a0 e1                                      mov r0, fp
0032347c  3a ae ff eb                                      bl #0x30ed6c
00323480  14 10 94 e5                                      ldr r1, [r4, #0x14]
00323484  00 60 a0 e1                                      mov r6, r0
00323488  09 00 a0 e1                                      mov r0, sb
0032348c  36 ae ff eb                                      bl #0x30ed6c
00323490  00 10 a0 e1                                      mov r1, r0
00323494  06 00 a0 e1                                      mov r0, r6
00323498  c3 ab ff eb                                      bl #0x30e3ac
0032349c  00 10 94 e5                                      ldr r1, [r4]
003234a0  00 60 a0 e1                                      mov r6, r0
003234a4  0a 00 a0 e1                                      mov r0, sl
003234a8  2f ae ff eb                                      bl #0x30ed6c
003234ac  04 a0 94 e5                                      ldr sl, [r4, #4]
003234b0  00 30 a0 e1                                      mov r3, r0
003234b4  08 00 a0 e1                                      mov r0, r8
003234b8  0a 10 a0 e1                                      mov r1, sl
003234bc  04 30 8d e5                                      str r3, [sp, #4]
003234c0  29 ae ff eb                                      bl #0x30ed6c
003234c4  04 30 9d e5                                      ldr r3, [sp, #4]
003234c8  00 10 a0 e1                                      mov r1, r0
003234cc  03 00 a0 e1                                      mov r0, r3
003234d0  b5 ab ff eb                                      bl #0x30e3ac
003234d4  00 10 94 e5                                      ldr r1, [r4]
003234d8  00 80 a0 e1                                      mov r8, r0
003234dc  0b 00 a0 e1                                      mov r0, fp
003234e0  21 ae ff eb                                      bl #0x30ed6c
003234e4  0a 10 a0 e1                                      mov r1, sl
003234e8  00 b0 a0 e1                                      mov fp, r0
003234ec  09 00 a0 e1                                      mov r0, sb
003234f0  1d ae ff eb                                      bl #0x30ed6c
003234f4  00 10 a0 e1                                      mov r1, r0
003234f8  0b 00 a0 e1                                      mov r0, fp
003234fc  aa ab ff eb                                      bl #0x30e3ac
00323500  00 10 94 e5                                      ldr r1, [r4]
00323504  00 90 a0 e1                                      mov sb, r0
00323508  14 00 94 e5                                      ldr r0, [r4, #0x14]
0032350c  16 ae ff eb                                      bl #0x30ed6c
00323510  0a 10 a0 e1                                      mov r1, sl
00323514  00 b0 a0 e1                                      mov fp, r0
00323518  10 00 94 e5                                      ldr r0, [r4, #0x10]
0032351c  12 ae ff eb                                      bl #0x30ed6c
00323520  00 10 a0 e1                                      mov r1, r0
00323524  0b 00 a0 e1                                      mov r0, fp
00323528  9f ab ff eb                                      bl #0x30e3ac
0032352c  00 a0 a0 e1                                      mov sl, r0
00323530  0a 10 a0 e1                                      mov r1, sl
00323534  10 00 9d e5                                      ldr r0, [sp, #0x10]
00323538  0b ae ff eb                                      bl #0x30ed6c
0032353c  09 10 a0 e1                                      mov r1, sb
00323540  00 b0 a0 e1                                      mov fp, r0
00323544  14 00 9d e5                                      ldr r0, [sp, #0x14]
00323548  07 ae ff eb                                      bl #0x30ed6c
0032354c  00 10 a0 e1                                      mov r1, r0
00323550  0b 00 a0 e1                                      mov r0, fp
00323554  94 ab ff eb                                      bl #0x30e3ac
00323558  08 10 a0 e1                                      mov r1, r8
0032355c  00 b0 a0 e1                                      mov fp, r0
00323560  18 00 9d e5                                      ldr r0, [sp, #0x18]
00323564  00 ae ff eb                                      bl #0x30ed6c
00323568  00 10 a0 e1                                      mov r1, r0
0032356c  0b 00 a0 e1                                      mov r0, fp
00323570  8b ad ff eb                                      bl #0x30eba4
00323574  06 10 a0 e1                                      mov r1, r6
00323578  00 b0 a0 e1                                      mov fp, r0
0032357c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00323580  f9 ad ff eb                                      bl #0x30ed6c
00323584  00 10 a0 e1                                      mov r1, r0
00323588  0b 00 a0 e1                                      mov r0, fp
0032358c  84 ad ff eb                                      bl #0x30eba4
00323590  07 10 a0 e1                                      mov r1, r7
00323594  00 b0 a0 e1                                      mov fp, r0
00323598  20 00 9d e5                                      ldr r0, [sp, #0x20]
0032359c  f2 ad ff eb                                      bl #0x30ed6c
003235a0  00 10 a0 e1                                      mov r1, r0
003235a4  0b 00 a0 e1                                      mov r0, fp
003235a8  7f ab ff eb                                      bl #0x30e3ac
003235ac  24 10 9d e5                                      ldr r1, [sp, #0x24]
003235b0  00 b0 a0 e1                                      mov fp, r0
003235b4  08 00 9d e5                                      ldr r0, [sp, #8]
003235b8  eb ad ff eb                                      bl #0x30ed6c
003235bc  00 10 a0 e1                                      mov r1, r0
003235c0  0b 00 a0 e1                                      mov r0, fp
003235c4  76 ad ff eb                                      bl #0x30eba4
003235c8  0c 00 8d e5                                      str r0, [sp, #0xc]
003235cc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003235d0  bd 17 03 e3                                      movw r1, #0x37bd
003235d4  86 15 43 e3                                      movt r1, #0x3586
003235d8  02 01 c3 e3                                      bic r0, r3, #0x80000000
003235dc  f2 ac ff eb                                      bl #0x30e9ac
003235e0  00 20 9d e5                                      ldr r2, [sp]
003235e4  00 00 50 e3                                      cmp r0, #0
003235e8  02 00 a0 11                                      movne r0, r2
003235ec  33 01 00 1a                                      bne #0x323ac0
003235f0  40 20 c5 e5                                      strb r2, [r5, #0x40]
003235f4  14 10 94 e5                                      ldr r1, [r4, #0x14]
003235f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
003235fc  00 20 8d e5                                      str r2, [sp]
00323600  d9 ad ff eb                                      bl #0x30ed6c
00323604  24 10 94 e5                                      ldr r1, [r4, #0x24]
00323608  00 b0 a0 e1                                      mov fp, r0
0032360c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00323610  d5 ad ff eb                                      bl #0x30ed6c
00323614  00 10 a0 e1                                      mov r1, r0
00323618  0b 00 a0 e1                                      mov r0, fp
0032361c  62 ab ff eb                                      bl #0x30e3ac
00323620  34 10 94 e5                                      ldr r1, [r4, #0x34]
00323624  00 b0 a0 e1                                      mov fp, r0
00323628  18 00 9d e5                                      ldr r0, [sp, #0x18]
0032362c  ce ad ff eb                                      bl #0x30ed6c
00323630  00 10 a0 e1                                      mov r1, r0
00323634  0b 00 a0 e1                                      mov r0, fp
00323638  59 ad ff eb                                      bl #0x30eba4
0032363c  00 00 85 e5                                      str r0, [r5]
00323640  24 10 94 e5                                      ldr r1, [r4, #0x24]
00323644  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00323648  c7 ad ff eb                                      bl #0x30ed6c
0032364c  04 10 94 e5                                      ldr r1, [r4, #4]
00323650  00 b0 a0 e1                                      mov fp, r0
00323654  10 00 9d e5                                      ldr r0, [sp, #0x10]
00323658  c3 ad ff eb                                      bl #0x30ed6c
0032365c  00 10 a0 e1                                      mov r1, r0
00323660  0b 00 a0 e1                                      mov r0, fp
00323664  50 ab ff eb                                      bl #0x30e3ac
00323668  34 10 94 e5                                      ldr r1, [r4, #0x34]
0032366c  00 b0 a0 e1                                      mov fp, r0
00323670  20 00 9d e5                                      ldr r0, [sp, #0x20]
00323674  bc ad ff eb                                      bl #0x30ed6c
00323678  00 10 a0 e1                                      mov r1, r0
0032367c  0b 00 a0 e1                                      mov r0, fp
00323680  49 ab ff eb                                      bl #0x30e3ac
00323684  04 00 85 e5                                      str r0, [r5, #4]
00323688  04 10 94 e5                                      ldr r1, [r4, #4]
0032368c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00323690  b5 ad ff eb                                      bl #0x30ed6c
00323694  14 10 94 e5                                      ldr r1, [r4, #0x14]
00323698  00 b0 a0 e1                                      mov fp, r0
0032369c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003236a0  b1 ad ff eb                                      bl #0x30ed6c
003236a4  00 10 a0 e1                                      mov r1, r0
003236a8  0b 00 a0 e1                                      mov r0, fp
003236ac  3e ab ff eb                                      bl #0x30e3ac
003236b0  34 10 94 e5                                      ldr r1, [r4, #0x34]
003236b4  00 b0 a0 e1                                      mov fp, r0
003236b8  08 00 9d e5                                      ldr r0, [sp, #8]
003236bc  aa ad ff eb                                      bl #0x30ed6c
003236c0  00 10 a0 e1                                      mov r1, r0
003236c4  0b 00 a0 e1                                      mov r0, fp
003236c8  35 ad ff eb                                      bl #0x30eba4
003236cc  08 00 85 e5                                      str r0, [r5, #8]
003236d0  14 10 94 e5                                      ldr r1, [r4, #0x14]
003236d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
003236d8  a3 ad ff eb                                      bl #0x30ed6c
003236dc  04 10 94 e5                                      ldr r1, [r4, #4]
003236e0  00 b0 a0 e1                                      mov fp, r0
003236e4  18 00 9d e5                                      ldr r0, [sp, #0x18]
003236e8  9f ad ff eb                                      bl #0x30ed6c
003236ec  00 10 a0 e1                                      mov r1, r0
003236f0  0b 00 a0 e1                                      mov r0, fp
003236f4  2c ab ff eb                                      bl #0x30e3ac
003236f8  24 10 94 e5                                      ldr r1, [r4, #0x24]
003236fc  00 b0 a0 e1                                      mov fp, r0
00323700  08 00 9d e5                                      ldr r0, [sp, #8]
00323704  98 ad ff eb                                      bl #0x30ed6c
00323708  00 10 a0 e1                                      mov r1, r0
0032370c  0b 00 a0 e1                                      mov r0, fp
00323710  25 ab ff eb                                      bl #0x30e3ac
00323714  0c 00 85 e5                                      str r0, [r5, #0xc]
00323718  20 10 94 e5                                      ldr r1, [r4, #0x20]
0032371c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00323720  91 ad ff eb                                      bl #0x30ed6c
00323724  10 10 94 e5                                      ldr r1, [r4, #0x10]
00323728  00 b0 a0 e1                                      mov fp, r0
0032372c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00323730  8d ad ff eb                                      bl #0x30ed6c
00323734  00 10 a0 e1                                      mov r1, r0
00323738  0b 00 a0 e1                                      mov r0, fp
0032373c  1a ab ff eb                                      bl #0x30e3ac
00323740  30 10 94 e5                                      ldr r1, [r4, #0x30]
00323744  00 b0 a0 e1                                      mov fp, r0
00323748  18 00 9d e5                                      ldr r0, [sp, #0x18]
0032374c  86 ad ff eb                                      bl #0x30ed6c
00323750  00 10 a0 e1                                      mov r1, r0
00323754  0b 00 a0 e1                                      mov r0, fp
00323758  13 ab ff eb                                      bl #0x30e3ac
0032375c  10 00 85 e5                                      str r0, [r5, #0x10]
00323760  00 10 94 e5                                      ldr r1, [r4]
00323764  10 00 9d e5                                      ldr r0, [sp, #0x10]
00323768  7f ad ff eb                                      bl #0x30ed6c
0032376c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00323770  00 b0 a0 e1                                      mov fp, r0
00323774  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00323778  7b ad ff eb                                      bl #0x30ed6c
0032377c  00 10 a0 e1                                      mov r1, r0
00323780  0b 00 a0 e1                                      mov r0, fp
00323784  08 ab ff eb                                      bl #0x30e3ac
00323788  30 10 94 e5                                      ldr r1, [r4, #0x30]
0032378c  00 b0 a0 e1                                      mov fp, r0
00323790  20 00 9d e5                                      ldr r0, [sp, #0x20]
00323794  74 ad ff eb                                      bl #0x30ed6c
00323798  00 10 a0 e1                                      mov r1, r0
0032379c  0b 00 a0 e1                                      mov r0, fp
003237a0  ff ac ff eb                                      bl #0x30eba4
003237a4  14 00 85 e5                                      str r0, [r5, #0x14]
003237a8  10 10 94 e5                                      ldr r1, [r4, #0x10]
003237ac  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003237b0  6d ad ff eb                                      bl #0x30ed6c
003237b4  00 10 94 e5                                      ldr r1, [r4]
003237b8  00 b0 a0 e1                                      mov fp, r0
003237bc  14 00 9d e5                                      ldr r0, [sp, #0x14]
003237c0  69 ad ff eb                                      bl #0x30ed6c
003237c4  00 10 a0 e1                                      mov r1, r0
003237c8  0b 00 a0 e1                                      mov r0, fp
003237cc  f6 aa ff eb                                      bl #0x30e3ac
003237d0  30 10 94 e5                                      ldr r1, [r4, #0x30]
003237d4  00 b0 a0 e1                                      mov fp, r0
003237d8  08 00 9d e5                                      ldr r0, [sp, #8]
003237dc  62 ad ff eb                                      bl #0x30ed6c
003237e0  00 10 a0 e1                                      mov r1, r0
003237e4  0b 00 a0 e1                                      mov r0, fp
003237e8  ef aa ff eb                                      bl #0x30e3ac
003237ec  18 00 85 e5                                      str r0, [r5, #0x18]
003237f0  00 10 94 e5                                      ldr r1, [r4]
003237f4  18 00 9d e5                                      ldr r0, [sp, #0x18]
003237f8  5b ad ff eb                                      bl #0x30ed6c
003237fc  10 10 94 e5                                      ldr r1, [r4, #0x10]
00323800  00 b0 a0 e1                                      mov fp, r0
00323804  20 00 9d e5                                      ldr r0, [sp, #0x20]
00323808  57 ad ff eb                                      bl #0x30ed6c
0032380c  00 10 a0 e1                                      mov r1, r0
00323810  0b 00 a0 e1                                      mov r0, fp
00323814  e4 aa ff eb                                      bl #0x30e3ac
00323818  20 10 94 e5                                      ldr r1, [r4, #0x20]
0032381c  00 b0 a0 e1                                      mov fp, r0
00323820  08 00 9d e5                                      ldr r0, [sp, #8]
00323824  50 ad ff eb                                      bl #0x30ed6c
00323828  00 10 a0 e1                                      mov r1, r0
0032382c  0b 00 a0 e1                                      mov r0, fp
00323830  db ac ff eb                                      bl #0x30eba4
00323834  1c 00 85 e5                                      str r0, [r5, #0x1c]
00323838  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0032383c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00323840  49 ad ff eb                                      bl #0x30ed6c
00323844  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00323848  00 b0 a0 e1                                      mov fp, r0
0032384c  07 00 a0 e1                                      mov r0, r7
00323850  45 ad ff eb                                      bl #0x30ed6c
00323854  00 10 a0 e1                                      mov r1, r0
00323858  0b 00 a0 e1                                      mov r0, fp
0032385c  d2 aa ff eb                                      bl #0x30e3ac
00323860  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00323864  00 b0 a0 e1                                      mov fp, r0
00323868  06 00 a0 e1                                      mov r0, r6
0032386c  3e ad ff eb                                      bl #0x30ed6c
00323870  00 10 a0 e1                                      mov r1, r0
00323874  0b 00 a0 e1                                      mov r0, fp
00323878  c9 ac ff eb                                      bl #0x30eba4
0032387c  20 00 85 e5                                      str r0, [r5, #0x20]
00323880  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00323884  08 00 a0 e1                                      mov r0, r8
00323888  37 ad ff eb                                      bl #0x30ed6c
0032388c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00323890  00 b0 a0 e1                                      mov fp, r0
00323894  24 00 9d e5                                      ldr r0, [sp, #0x24]
00323898  33 ad ff eb                                      bl #0x30ed6c
0032389c  00 10 a0 e1                                      mov r1, r0
003238a0  0b 00 a0 e1                                      mov r0, fp
003238a4  c0 aa ff eb                                      bl #0x30e3ac
003238a8  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003238ac  00 b0 a0 e1                                      mov fp, r0
003238b0  09 00 a0 e1                                      mov r0, sb
003238b4  2c ad ff eb                                      bl #0x30ed6c
003238b8  00 10 a0 e1                                      mov r1, r0
003238bc  0b 00 a0 e1                                      mov r0, fp
003238c0  b9 aa ff eb                                      bl #0x30e3ac
003238c4  24 00 85 e5                                      str r0, [r5, #0x24]
003238c8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003238cc  07 00 a0 e1                                      mov r0, r7
003238d0  25 ad ff eb                                      bl #0x30ed6c
003238d4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
003238d8  00 b0 a0 e1                                      mov fp, r0
003238dc  08 00 a0 e1                                      mov r0, r8
003238e0  21 ad ff eb                                      bl #0x30ed6c
003238e4  00 10 a0 e1                                      mov r1, r0
003238e8  0b 00 a0 e1                                      mov r0, fp
003238ec  ae aa ff eb                                      bl #0x30e3ac
003238f0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003238f4  00 b0 a0 e1                                      mov fp, r0
003238f8  0a 00 a0 e1                                      mov r0, sl
003238fc  1a ad ff eb                                      bl #0x30ed6c
00323900  00 10 a0 e1                                      mov r1, r0
00323904  0b 00 a0 e1                                      mov r0, fp
00323908  a5 ac ff eb                                      bl #0x30eba4
0032390c  28 00 85 e5                                      str r0, [r5, #0x28]
00323910  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00323914  09 00 a0 e1                                      mov r0, sb
00323918  13 ad ff eb                                      bl #0x30ed6c
0032391c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00323920  00 b0 a0 e1                                      mov fp, r0
00323924  06 00 a0 e1                                      mov r0, r6
00323928  0f ad ff eb                                      bl #0x30ed6c
0032392c  00 10 a0 e1                                      mov r1, r0
00323930  0b 00 a0 e1                                      mov r0, fp
00323934  9c aa ff eb                                      bl #0x30e3ac
00323938  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0032393c  00 b0 a0 e1                                      mov fp, r0
00323940  0a 00 a0 e1                                      mov r0, sl
00323944  08 ad ff eb                                      bl #0x30ed6c
00323948  00 10 a0 e1                                      mov r1, r0
0032394c  0b 00 a0 e1                                      mov r0, fp
00323950  95 aa ff eb                                      bl #0x30e3ac
00323954  2c 00 85 e5                                      str r0, [r5, #0x2c]
00323958  28 10 94 e5                                      ldr r1, [r4, #0x28]
0032395c  07 00 a0 e1                                      mov r0, r7
00323960  01 ad ff eb                                      bl #0x30ed6c
00323964  18 10 94 e5                                      ldr r1, [r4, #0x18]
00323968  00 b0 a0 e1                                      mov fp, r0
0032396c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00323970  fd ac ff eb                                      bl #0x30ed6c
00323974  00 10 a0 e1                                      mov r1, r0
00323978  0b 00 a0 e1                                      mov r0, fp
0032397c  8a aa ff eb                                      bl #0x30e3ac
00323980  38 10 94 e5                                      ldr r1, [r4, #0x38]
00323984  00 b0 a0 e1                                      mov fp, r0
00323988  06 00 a0 e1                                      mov r0, r6
0032398c  f6 ac ff eb                                      bl #0x30ed6c
00323990  00 10 a0 e1                                      mov r1, r0
00323994  0b 00 a0 e1                                      mov r0, fp
00323998  83 aa ff eb                                      bl #0x30e3ac
0032399c  30 00 85 e5                                      str r0, [r5, #0x30]
003239a0  08 10 94 e5                                      ldr r1, [r4, #8]
003239a4  24 00 9d e5                                      ldr r0, [sp, #0x24]
003239a8  ef ac ff eb                                      bl #0x30ed6c
003239ac  28 10 94 e5                                      ldr r1, [r4, #0x28]
003239b0  00 b0 a0 e1                                      mov fp, r0
003239b4  08 00 a0 e1                                      mov r0, r8
003239b8  eb ac ff eb                                      bl #0x30ed6c
003239bc  00 10 a0 e1                                      mov r1, r0
003239c0  0b 00 a0 e1                                      mov r0, fp
003239c4  78 aa ff eb                                      bl #0x30e3ac
003239c8  38 10 94 e5                                      ldr r1, [r4, #0x38]
003239cc  00 b0 a0 e1                                      mov fp, r0
003239d0  09 00 a0 e1                                      mov r0, sb
003239d4  e4 ac ff eb                                      bl #0x30ed6c
003239d8  00 10 a0 e1                                      mov r1, r0
003239dc  0b 00 a0 e1                                      mov r0, fp
003239e0  6f ac ff eb                                      bl #0x30eba4
003239e4  34 00 85 e5                                      str r0, [r5, #0x34]
003239e8  18 10 94 e5                                      ldr r1, [r4, #0x18]
003239ec  08 00 a0 e1                                      mov r0, r8
003239f0  dd ac ff eb                                      bl #0x30ed6c
003239f4  08 10 94 e5                                      ldr r1, [r4, #8]
003239f8  00 80 a0 e1                                      mov r8, r0
003239fc  07 00 a0 e1                                      mov r0, r7
00323a00  d9 ac ff eb                                      bl #0x30ed6c
00323a04  00 10 a0 e1                                      mov r1, r0
00323a08  08 00 a0 e1                                      mov r0, r8
00323a0c  66 aa ff eb                                      bl #0x30e3ac
00323a10  38 10 94 e5                                      ldr r1, [r4, #0x38]
00323a14  00 70 a0 e1                                      mov r7, r0
00323a18  0a 00 a0 e1                                      mov r0, sl
00323a1c  d2 ac ff eb                                      bl #0x30ed6c
00323a20  00 10 a0 e1                                      mov r1, r0
00323a24  07 00 a0 e1                                      mov r0, r7
00323a28  5f aa ff eb                                      bl #0x30e3ac
00323a2c  38 00 85 e5                                      str r0, [r5, #0x38]
00323a30  08 10 94 e5                                      ldr r1, [r4, #8]
00323a34  06 00 a0 e1                                      mov r0, r6
00323a38  cb ac ff eb                                      bl #0x30ed6c
00323a3c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00323a40  00 60 a0 e1                                      mov r6, r0
00323a44  09 00 a0 e1                                      mov r0, sb
00323a48  c7 ac ff eb                                      bl #0x30ed6c
00323a4c  00 10 a0 e1                                      mov r1, r0
00323a50  06 00 a0 e1                                      mov r0, r6
00323a54  54 aa ff eb                                      bl #0x30e3ac
00323a58  28 10 94 e5                                      ldr r1, [r4, #0x28]
00323a5c  00 60 a0 e1                                      mov r6, r0
00323a60  0a 00 a0 e1                                      mov r0, sl
00323a64  c0 ac ff eb                                      bl #0x30ed6c
00323a68  00 10 a0 e1                                      mov r1, r0
00323a6c  06 00 a0 e1                                      mov r0, r6
00323a70  4b ac ff eb                                      bl #0x30eba4
00323a74  3c 00 85 e5                                      str r0, [r5, #0x3c]
00323a78  00 20 9d e5                                      ldr r2, [sp]
00323a7c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00323a80  fe 05 a0 e3                                      mov r0, #0x3f800000
00323a84  02 60 a0 e1                                      mov r6, r2
00323a88  81 ac ff eb                                      bl #0x30ec94
00323a8c  00 70 a0 e1                                      mov r7, r0
00323a90  06 00 95 e7                                      ldr r0, [r5, r6]
00323a94  07 10 a0 e1                                      mov r1, r7
00323a98  b3 ac ff eb                                      bl #0x30ed6c
00323a9c  06 00 85 e7                                      str r0, [r5, r6]
00323aa0  04 60 86 e2                                      add r6, r6, #4
00323aa4  40 00 56 e3                                      cmp r6, #0x40
00323aa8  f8 ff ff 1a                                      bne #0x323a90
00323aac  00 30 a0 e3                                      mov r3, #0
00323ab0  40 30 c5 e5                                      strb r3, [r5, #0x40]
00323ab4  40 30 d4 e5                                      ldrb r3, [r4, #0x40]
00323ab8  01 00 a0 e3                                      mov r0, #1
00323abc  40 30 c5 e5                                      strb r3, [r5, #0x40]
00323ac0  2c d0 8d e2                                      add sp, sp, #0x2c
00323ac4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00323ac8  01 00 a0 e1                                      mov r0, r1
00323acc  41 20 a0 e3                                      mov r2, #0x41
00323ad0  04 10 a0 e1                                      mov r1, r4
00323ad4  63 ab ff eb                                      bl #0x30e868
00323ad8  01 00 a0 e3                                      mov r0, #1
00323adc  f7 ff ff ea                                      b #0x323ac0

; FUNCTION 0x0035dd08, declared_size=1040, range_size=1040, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE14transformPlaneERNS0_7plane3dIfEE
; demangled: glitch::core::CMatrix4<float>::transformPlane(glitch::core::plane3d<float>&) const
; decoder-mode: arm
0035dd08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035dd0c  0c a0 91 e5                                      ldr sl, [r1, #0xc]
0035dd10  00 80 91 e5                                      ldr r8, [r1]
0035dd14  1c d0 4d e2                                      sub sp, sp, #0x1c
0035dd18  02 a1 8a e2                                      add sl, sl, #0x80000000
0035dd1c  00 40 a0 e1                                      mov r4, r0
0035dd20  01 50 a0 e1                                      mov r5, r1
0035dd24  0a 00 a0 e1                                      mov r0, sl
0035dd28  08 10 a0 e1                                      mov r1, r8
0035dd2c  0e c4 fe eb                                      bl #0x30ed6c
0035dd30  04 70 95 e5                                      ldr r7, [r5, #4]
0035dd34  00 b0 a0 e1                                      mov fp, r0
0035dd38  0a 00 a0 e1                                      mov r0, sl
0035dd3c  07 10 a0 e1                                      mov r1, r7
0035dd40  09 c4 fe eb                                      bl #0x30ed6c
0035dd44  08 60 95 e5                                      ldr r6, [r5, #8]
0035dd48  00 90 a0 e1                                      mov sb, r0
0035dd4c  0a 00 a0 e1                                      mov r0, sl
0035dd50  06 10 a0 e1                                      mov r1, r6
0035dd54  04 c4 fe eb                                      bl #0x30ed6c
0035dd58  00 20 94 e5                                      ldr r2, [r4]
0035dd5c  00 a0 a0 e1                                      mov sl, r0
0035dd60  0b 00 a0 e1                                      mov r0, fp
0035dd64  02 10 a0 e1                                      mov r1, r2
0035dd68  08 20 8d e5                                      str r2, [sp, #8]
0035dd6c  fe c3 fe eb                                      bl #0x30ed6c
0035dd70  10 10 94 e5                                      ldr r1, [r4, #0x10]
0035dd74  00 30 a0 e1                                      mov r3, r0
0035dd78  09 00 a0 e1                                      mov r0, sb
0035dd7c  00 30 8d e5                                      str r3, [sp]
0035dd80  f9 c3 fe eb                                      bl #0x30ed6c
0035dd84  00 30 9d e5                                      ldr r3, [sp]
0035dd88  00 10 a0 e1                                      mov r1, r0
0035dd8c  03 00 a0 e1                                      mov r0, r3
0035dd90  83 c3 fe eb                                      bl #0x30eba4
0035dd94  20 10 94 e5                                      ldr r1, [r4, #0x20]
0035dd98  00 30 a0 e1                                      mov r3, r0
0035dd9c  0a 00 a0 e1                                      mov r0, sl
0035dda0  00 30 8d e5                                      str r3, [sp]
0035dda4  f0 c3 fe eb                                      bl #0x30ed6c
0035dda8  00 30 9d e5                                      ldr r3, [sp]
0035ddac  00 10 a0 e1                                      mov r1, r0
0035ddb0  03 00 a0 e1                                      mov r0, r3
0035ddb4  7a c3 fe eb                                      bl #0x30eba4
0035ddb8  30 10 94 e5                                      ldr r1, [r4, #0x30]
0035ddbc  78 c3 fe eb                                      bl #0x30eba4
0035ddc0  0c 00 8d e5                                      str r0, [sp, #0xc]
0035ddc4  04 c0 94 e5                                      ldr ip, [r4, #4]
0035ddc8  0b 00 a0 e1                                      mov r0, fp
0035ddcc  0c 10 a0 e1                                      mov r1, ip
0035ddd0  04 c0 8d e5                                      str ip, [sp, #4]
0035ddd4  e4 c3 fe eb                                      bl #0x30ed6c
0035ddd8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0035dddc  00 30 a0 e1                                      mov r3, r0
0035dde0  09 00 a0 e1                                      mov r0, sb
0035dde4  00 30 8d e5                                      str r3, [sp]
0035dde8  df c3 fe eb                                      bl #0x30ed6c
0035ddec  00 30 9d e5                                      ldr r3, [sp]
0035ddf0  00 10 a0 e1                                      mov r1, r0
0035ddf4  03 00 a0 e1                                      mov r0, r3
0035ddf8  69 c3 fe eb                                      bl #0x30eba4
0035ddfc  24 10 94 e5                                      ldr r1, [r4, #0x24]
0035de00  00 30 a0 e1                                      mov r3, r0
0035de04  0a 00 a0 e1                                      mov r0, sl
0035de08  00 30 8d e5                                      str r3, [sp]
0035de0c  d6 c3 fe eb                                      bl #0x30ed6c
0035de10  00 30 9d e5                                      ldr r3, [sp]
0035de14  00 10 a0 e1                                      mov r1, r0
0035de18  03 00 a0 e1                                      mov r0, r3
0035de1c  60 c3 fe eb                                      bl #0x30eba4
0035de20  34 10 94 e5                                      ldr r1, [r4, #0x34]
0035de24  5e c3 fe eb                                      bl #0x30eba4
0035de28  10 00 8d e5                                      str r0, [sp, #0x10]
0035de2c  08 30 94 e5                                      ldr r3, [r4, #8]
0035de30  0b 00 a0 e1                                      mov r0, fp
0035de34  03 10 a0 e1                                      mov r1, r3
0035de38  00 30 8d e5                                      str r3, [sp]
0035de3c  ca c3 fe eb                                      bl #0x30ed6c
0035de40  18 10 94 e5                                      ldr r1, [r4, #0x18]
0035de44  00 b0 a0 e1                                      mov fp, r0
0035de48  09 00 a0 e1                                      mov r0, sb
0035de4c  c6 c3 fe eb                                      bl #0x30ed6c
0035de50  00 10 a0 e1                                      mov r1, r0
0035de54  0b 00 a0 e1                                      mov r0, fp
0035de58  51 c3 fe eb                                      bl #0x30eba4
0035de5c  28 10 94 e5                                      ldr r1, [r4, #0x28]
0035de60  00 90 a0 e1                                      mov sb, r0
0035de64  0a 00 a0 e1                                      mov r0, sl
0035de68  bf c3 fe eb                                      bl #0x30ed6c
0035de6c  38 a0 94 e5                                      ldr sl, [r4, #0x38]
0035de70  00 10 a0 e1                                      mov r1, r0
0035de74  09 00 a0 e1                                      mov r0, sb
0035de78  49 c3 fe eb                                      bl #0x30eba4
0035de7c  0a 10 a0 e1                                      mov r1, sl
0035de80  47 c3 fe eb                                      bl #0x30eba4
0035de84  08 20 9d e5                                      ldr r2, [sp, #8]
0035de88  14 00 8d e5                                      str r0, [sp, #0x14]
0035de8c  08 00 a0 e1                                      mov r0, r8
0035de90  02 10 a0 e1                                      mov r1, r2
0035de94  b4 c3 fe eb                                      bl #0x30ed6c
0035de98  10 10 94 e5                                      ldr r1, [r4, #0x10]
0035de9c  00 90 a0 e1                                      mov sb, r0
0035dea0  07 00 a0 e1                                      mov r0, r7
0035dea4  b0 c3 fe eb                                      bl #0x30ed6c
0035dea8  00 10 a0 e1                                      mov r1, r0
0035deac  09 00 a0 e1                                      mov r0, sb
0035deb0  3b c3 fe eb                                      bl #0x30eba4
0035deb4  20 10 94 e5                                      ldr r1, [r4, #0x20]
0035deb8  00 90 a0 e1                                      mov sb, r0
0035debc  06 00 a0 e1                                      mov r0, r6
0035dec0  a9 c3 fe eb                                      bl #0x30ed6c
0035dec4  00 10 a0 e1                                      mov r1, r0
0035dec8  09 00 a0 e1                                      mov r0, sb
0035decc  34 c3 fe eb                                      bl #0x30eba4
0035ded0  00 10 a0 e1                                      mov r1, r0
0035ded4  30 00 94 e5                                      ldr r0, [r4, #0x30]
0035ded8  31 c3 fe eb                                      bl #0x30eba4
0035dedc  04 c0 9d e5                                      ldr ip, [sp, #4]
0035dee0  00 b0 a0 e1                                      mov fp, r0
0035dee4  08 00 a0 e1                                      mov r0, r8
0035dee8  0c 10 a0 e1                                      mov r1, ip
0035deec  9e c3 fe eb                                      bl #0x30ed6c
0035def0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0035def4  00 90 a0 e1                                      mov sb, r0
0035def8  07 00 a0 e1                                      mov r0, r7
0035defc  9a c3 fe eb                                      bl #0x30ed6c
0035df00  00 10 a0 e1                                      mov r1, r0
0035df04  09 00 a0 e1                                      mov r0, sb
0035df08  25 c3 fe eb                                      bl #0x30eba4
0035df0c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0035df10  00 90 a0 e1                                      mov sb, r0
0035df14  06 00 a0 e1                                      mov r0, r6
0035df18  93 c3 fe eb                                      bl #0x30ed6c
0035df1c  00 10 a0 e1                                      mov r1, r0
0035df20  09 00 a0 e1                                      mov r0, sb
0035df24  1e c3 fe eb                                      bl #0x30eba4
0035df28  00 10 a0 e1                                      mov r1, r0
0035df2c  34 00 94 e5                                      ldr r0, [r4, #0x34]
0035df30  1b c3 fe eb                                      bl #0x30eba4
0035df34  00 30 9d e5                                      ldr r3, [sp]
0035df38  00 90 a0 e1                                      mov sb, r0
0035df3c  08 00 a0 e1                                      mov r0, r8
0035df40  03 10 a0 e1                                      mov r1, r3
0035df44  88 c3 fe eb                                      bl #0x30ed6c
0035df48  18 10 94 e5                                      ldr r1, [r4, #0x18]
0035df4c  00 80 a0 e1                                      mov r8, r0
0035df50  07 00 a0 e1                                      mov r0, r7
0035df54  84 c3 fe eb                                      bl #0x30ed6c
0035df58  00 10 a0 e1                                      mov r1, r0
0035df5c  08 00 a0 e1                                      mov r0, r8
0035df60  0f c3 fe eb                                      bl #0x30eba4
0035df64  28 10 94 e5                                      ldr r1, [r4, #0x28]
0035df68  00 70 a0 e1                                      mov r7, r0
0035df6c  06 00 a0 e1                                      mov r0, r6
0035df70  7d c3 fe eb                                      bl #0x30ed6c
0035df74  00 10 a0 e1                                      mov r1, r0
0035df78  07 00 a0 e1                                      mov r0, r7
0035df7c  08 c3 fe eb                                      bl #0x30eba4
0035df80  00 10 a0 e1                                      mov r1, r0
0035df84  0a 00 a0 e1                                      mov r0, sl
0035df88  05 c3 fe eb                                      bl #0x30eba4
0035df8c  00 b0 85 e5                                      str fp, [r5]
0035df90  04 90 85 e5                                      str sb, [r5, #4]
0035df94  08 00 85 e5                                      str r0, [r5, #8]
0035df98  00 60 a0 e1                                      mov r6, r0
0035df9c  00 10 a0 e3                                      mov r1, #0
0035dfa0  04 00 94 e5                                      ldr r0, [r4, #4]
0035dfa4  70 c3 fe eb                                      bl #0x30ed6c
0035dfa8  00 10 a0 e3                                      mov r1, #0
0035dfac  00 70 a0 e1                                      mov r7, r0
0035dfb0  14 00 94 e5                                      ldr r0, [r4, #0x14]
0035dfb4  6c c3 fe eb                                      bl #0x30ed6c
0035dfb8  00 10 a0 e1                                      mov r1, r0
0035dfbc  07 00 a0 e1                                      mov r0, r7
0035dfc0  f7 c2 fe eb                                      bl #0x30eba4
0035dfc4  00 10 a0 e3                                      mov r1, #0
0035dfc8  00 70 a0 e1                                      mov r7, r0
0035dfcc  24 00 94 e5                                      ldr r0, [r4, #0x24]
0035dfd0  65 c3 fe eb                                      bl #0x30ed6c
0035dfd4  00 10 a0 e1                                      mov r1, r0
0035dfd8  07 00 a0 e1                                      mov r0, r7
0035dfdc  f0 c2 fe eb                                      bl #0x30eba4
0035dfe0  34 10 94 e5                                      ldr r1, [r4, #0x34]
0035dfe4  ee c2 fe eb                                      bl #0x30eba4
0035dfe8  00 10 a0 e3                                      mov r1, #0
0035dfec  00 80 a0 e1                                      mov r8, r0
0035dff0  08 00 94 e5                                      ldr r0, [r4, #8]
0035dff4  5c c3 fe eb                                      bl #0x30ed6c
0035dff8  00 10 a0 e3                                      mov r1, #0
0035dffc  00 70 a0 e1                                      mov r7, r0
0035e000  18 00 94 e5                                      ldr r0, [r4, #0x18]
0035e004  58 c3 fe eb                                      bl #0x30ed6c
0035e008  00 10 a0 e1                                      mov r1, r0
0035e00c  07 00 a0 e1                                      mov r0, r7
0035e010  e3 c2 fe eb                                      bl #0x30eba4
0035e014  00 10 a0 e3                                      mov r1, #0
0035e018  00 70 a0 e1                                      mov r7, r0
0035e01c  28 00 94 e5                                      ldr r0, [r4, #0x28]
0035e020  51 c3 fe eb                                      bl #0x30ed6c
0035e024  00 10 a0 e1                                      mov r1, r0
0035e028  07 00 a0 e1                                      mov r0, r7
0035e02c  dc c2 fe eb                                      bl #0x30eba4
0035e030  38 10 94 e5                                      ldr r1, [r4, #0x38]
0035e034  da c2 fe eb                                      bl #0x30eba4
0035e038  00 10 a0 e3                                      mov r1, #0
0035e03c  00 70 a0 e1                                      mov r7, r0
0035e040  00 00 94 e5                                      ldr r0, [r4]
0035e044  48 c3 fe eb                                      bl #0x30ed6c
0035e048  00 10 a0 e3                                      mov r1, #0
0035e04c  00 a0 a0 e1                                      mov sl, r0
0035e050  10 00 94 e5                                      ldr r0, [r4, #0x10]
0035e054  44 c3 fe eb                                      bl #0x30ed6c
0035e058  00 10 a0 e1                                      mov r1, r0
0035e05c  0a 00 a0 e1                                      mov r0, sl
0035e060  cf c2 fe eb                                      bl #0x30eba4
0035e064  00 10 a0 e3                                      mov r1, #0
0035e068  00 a0 a0 e1                                      mov sl, r0
0035e06c  20 00 94 e5                                      ldr r0, [r4, #0x20]
0035e070  3d c3 fe eb                                      bl #0x30ed6c
0035e074  00 10 a0 e1                                      mov r1, r0
0035e078  0a 00 a0 e1                                      mov r0, sl
0035e07c  c8 c2 fe eb                                      bl #0x30eba4
0035e080  30 10 94 e5                                      ldr r1, [r4, #0x30]
0035e084  c6 c2 fe eb                                      bl #0x30eba4
0035e088  00 10 a0 e1                                      mov r1, r0
0035e08c  0b 00 a0 e1                                      mov r0, fp
0035e090  c5 c0 fe eb                                      bl #0x30e3ac
0035e094  08 10 a0 e1                                      mov r1, r8
0035e098  00 40 a0 e1                                      mov r4, r0
0035e09c  00 00 85 e5                                      str r0, [r5]
0035e0a0  09 00 a0 e1                                      mov r0, sb
0035e0a4  c0 c0 fe eb                                      bl #0x30e3ac
0035e0a8  07 10 a0 e1                                      mov r1, r7
0035e0ac  00 80 a0 e1                                      mov r8, r0
0035e0b0  04 00 85 e5                                      str r0, [r5, #4]
0035e0b4  06 00 a0 e1                                      mov r0, r6
0035e0b8  bb c0 fe eb                                      bl #0x30e3ac
0035e0bc  04 10 a0 e1                                      mov r1, r4
0035e0c0  00 60 a0 e1                                      mov r6, r0
0035e0c4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0035e0c8  08 60 85 e5                                      str r6, [r5, #8]
0035e0cc  26 c3 fe eb                                      bl #0x30ed6c
0035e0d0  08 10 a0 e1                                      mov r1, r8
0035e0d4  00 40 a0 e1                                      mov r4, r0
0035e0d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0035e0dc  22 c3 fe eb                                      bl #0x30ed6c
0035e0e0  00 10 a0 e1                                      mov r1, r0
0035e0e4  04 00 a0 e1                                      mov r0, r4
0035e0e8  ad c2 fe eb                                      bl #0x30eba4
0035e0ec  06 10 a0 e1                                      mov r1, r6
0035e0f0  00 40 a0 e1                                      mov r4, r0
0035e0f4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0035e0f8  1b c3 fe eb                                      bl #0x30ed6c
0035e0fc  00 10 a0 e1                                      mov r1, r0
0035e100  04 00 a0 e1                                      mov r0, r4
0035e104  a6 c2 fe eb                                      bl #0x30eba4
0035e108  02 01 80 e2                                      add r0, r0, #0x80000000
0035e10c  0c 00 85 e5                                      str r0, [r5, #0xc]
0035e110  1c d0 8d e2                                      add sp, sp, #0x1c
0035e114  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0035e998, declared_size=88, range_size=88, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfEmlERKS2_
; demangled: glitch::core::CMatrix4<float>::operator*(glitch::core::CMatrix4<float> const&) const
; decoder-mode: arm
0035e998  70 40 2d e9                                      push {r4, r5, r6, lr}
0035e99c  48 d0 4d e2                                      sub sp, sp, #0x48
0035e9a0  04 40 8d e2                                      add r4, sp, #4
0035e9a4  00 50 a0 e1                                      mov r5, r0
0035e9a8  04 00 a0 e1                                      mov r0, r4
0035e9ac  d9 fd ff eb                                      bl #0x35e118
0035e9b0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0035e9b4  05 c0 a0 e1                                      mov ip, r5
0035e9b8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0035e9bc  00 60 a0 e3                                      mov r6, #0
0035e9c0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0035e9c4  40 60 c5 e5                                      strb r6, [r5, #0x40]
0035e9c8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0035e9cc  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0035e9d0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0035e9d4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0035e9d8  44 40 dd e5                                      ldrb r4, [sp, #0x44]
0035e9dc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0035e9e0  40 40 c5 e5                                      strb r4, [r5, #0x40]
0035e9e4  05 00 a0 e1                                      mov r0, r5
0035e9e8  48 d0 8d e2                                      add sp, sp, #0x48
0035e9ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00432bbc, declared_size=668, range_size=668, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE18getRotationDegreesEv
; demangled: glitch::core::CMatrix4<float>::getRotationDegrees() const
; decoder-mode: arm
00432bbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00432bc0  00 40 a0 e1                                      mov r4, r0
00432bc4  0c d0 4d e2                                      sub sp, sp, #0xc
00432bc8  08 00 91 e5                                      ldr r0, [r1, #8]
00432bcc  01 50 a0 e1                                      mov r5, r1
00432bd0  6c 6c fb eb                                      bl #0x30dd88
00432bd4  02 01 80 e2                                      add r0, r0, #0x80000000
00432bd8  31 6f fb eb                                      bl #0x30e8a4
00432bdc  00 80 a0 e1                                      mov r8, r0
00432be0  01 90 a0 e1                                      mov sb, r1
00432be4  57 6d fb eb                                      bl #0x30e148
00432be8  f8 21 0c e3                                      movw r2, #0xc1f8
00432bec  dc 35 0a e3                                      movw r3, #0xa5dc
00432bf0  00 70 a0 e1                                      mov r7, r0
00432bf4  01 60 a0 e1                                      mov r6, r1
00432bf8  63 2a 41 e3                                      movt r2, #0x1a63
00432bfc  4c 30 44 e3                                      movt r3, #0x404c
00432c00  08 00 a0 e1                                      mov r0, r8
00432c04  09 10 a0 e1                                      mov r1, sb
00432c08  a9 6f fb eb                                      bl #0x30eab4
00432c0c  3a 2c 08 e3                                      movw r2, #0x8c3a
00432c10  8e 39 07 e3                                      movw r3, #0x798e
00432c14  00 a0 a0 e1                                      mov sl, r0
00432c18  01 b0 a0 e1                                      mov fp, r1
00432c1c  07 00 a0 e1                                      mov r0, r7
00432c20  02 11 c6 e3                                      bic r1, r6, #0x80000000
00432c24  30 22 4e e3                                      movt r2, #0xe230
00432c28  45 3e 43 e3                                      movt r3, #0x3e45
00432c2c  8b 6c fb eb                                      bl #0x30de60
00432c30  00 00 50 e3                                      cmp r0, #0
00432c34  71 00 00 0a                                      beq #0x432e00
00432c38  ff 15 a0 e3                                      mov r1, #0x3fc00000
00432c3c  07 20 a0 e1                                      mov r2, r7
00432c40  06 30 a0 e1                                      mov r3, r6
00432c44  00 00 a0 e3                                      mov r0, #0
00432c48  03 16 81 e2                                      add r1, r1, #0x300000
00432c4c  bb 6d fb eb                                      bl #0x30e340
00432c50  00 60 a0 e1                                      mov r6, r0
00432c54  01 70 a0 e1                                      mov r7, r1
00432c58  18 00 95 e5                                      ldr r0, [r5, #0x18]
00432c5c  10 6f fb eb                                      bl #0x30e8a4
00432c60  06 20 a0 e1                                      mov r2, r6
00432c64  07 30 a0 e1                                      mov r3, r7
00432c68  91 6f fb eb                                      bl #0x30eab4
00432c6c  00 80 a0 e1                                      mov r8, r0
00432c70  28 00 95 e5                                      ldr r0, [r5, #0x28]
00432c74  01 90 a0 e1                                      mov sb, r1
00432c78  09 6f fb eb                                      bl #0x30e8a4
00432c7c  06 20 a0 e1                                      mov r2, r6
00432c80  07 30 a0 e1                                      mov r3, r7
00432c84  8a 6f fb eb                                      bl #0x30eab4
00432c88  00 20 a0 e1                                      mov r2, r0
00432c8c  01 30 a0 e1                                      mov r3, r1
00432c90  08 00 a0 e1                                      mov r0, r8
00432c94  09 10 a0 e1                                      mov r1, sb
00432c98  a0 6c fb eb                                      bl #0x30df20
00432c9c  f8 21 0c e3                                      movw r2, #0xc1f8
00432ca0  dc 35 0a e3                                      movw r3, #0xa5dc
00432ca4  63 2a 41 e3                                      movt r2, #0x1a63
00432ca8  4c 30 44 e3                                      movt r3, #0x404c
00432cac  80 6f fb eb                                      bl #0x30eab4
00432cb0  00 80 a0 e1                                      mov r8, r0
00432cb4  04 00 95 e5                                      ldr r0, [r5, #4]
00432cb8  01 90 a0 e1                                      mov sb, r1
00432cbc  f8 6e fb eb                                      bl #0x30e8a4
00432cc0  06 20 a0 e1                                      mov r2, r6
00432cc4  07 30 a0 e1                                      mov r3, r7
00432cc8  79 6f fb eb                                      bl #0x30eab4
00432ccc  f0 00 cd e1                                      strd r0, r1, [sp]
00432cd0  00 00 95 e5                                      ldr r0, [r5]
00432cd4  f2 6e fb eb                                      bl #0x30e8a4
00432cd8  06 20 a0 e1                                      mov r2, r6
00432cdc  07 30 a0 e1                                      mov r3, r7
00432ce0  73 6f fb eb                                      bl #0x30eab4
00432ce4  00 20 a0 e1                                      mov r2, r0
00432ce8  01 30 a0 e1                                      mov r3, r1
00432cec  d0 00 cd e1                                      ldrd r0, r1, [sp]
00432cf0  8a 6c fb eb                                      bl #0x30df20
00432cf4  f8 21 0c e3                                      movw r2, #0xc1f8
00432cf8  dc 35 0a e3                                      movw r3, #0xa5dc
00432cfc  63 2a 41 e3                                      movt r2, #0x1a63
00432d00  4c 30 44 e3                                      movt r3, #0x404c
00432d04  6a 6f fb eb                                      bl #0x30eab4
00432d08  00 20 a0 e3                                      mov r2, #0
00432d0c  00 60 a0 e1                                      mov r6, r0
00432d10  01 70 a0 e1                                      mov r7, r1
00432d14  08 00 a0 e1                                      mov r0, r8
00432d18  09 10 a0 e1                                      mov r1, sb
00432d1c  00 30 a0 e3                                      mov r3, #0
00432d20  8e 6e fb eb                                      bl #0x30e760
00432d24  00 00 50 e3                                      cmp r0, #0
00432d28  07 00 00 0a                                      beq #0x432d4c
00432d2c  00 30 08 e3                                      movw r3, #0x8000
00432d30  08 00 a0 e1                                      mov r0, r8
00432d34  09 10 a0 e1                                      mov r1, sb
00432d38  00 20 a0 e3                                      mov r2, #0
00432d3c  76 30 44 e3                                      movt r3, #0x4076
00432d40  7f 6f fb eb                                      bl #0x30eb44
00432d44  00 80 a0 e1                                      mov r8, r0
00432d48  01 90 a0 e1                                      mov sb, r1
00432d4c  0a 00 a0 e1                                      mov r0, sl
00432d50  0b 10 a0 e1                                      mov r1, fp
00432d54  00 20 a0 e3                                      mov r2, #0
00432d58  00 30 a0 e3                                      mov r3, #0
00432d5c  7f 6e fb eb                                      bl #0x30e760
00432d60  00 00 50 e3                                      cmp r0, #0
00432d64  07 00 00 0a                                      beq #0x432d88
00432d68  00 30 08 e3                                      movw r3, #0x8000
00432d6c  0a 00 a0 e1                                      mov r0, sl
00432d70  0b 10 a0 e1                                      mov r1, fp
00432d74  00 20 a0 e3                                      mov r2, #0
00432d78  76 30 44 e3                                      movt r3, #0x4076
00432d7c  70 6f fb eb                                      bl #0x30eb44
00432d80  00 a0 a0 e1                                      mov sl, r0
00432d84  01 b0 a0 e1                                      mov fp, r1
00432d88  06 00 a0 e1                                      mov r0, r6
00432d8c  07 10 a0 e1                                      mov r1, r7
00432d90  00 20 a0 e3                                      mov r2, #0
00432d94  00 30 a0 e3                                      mov r3, #0
00432d98  70 6e fb eb                                      bl #0x30e760
00432d9c  00 00 50 e3                                      cmp r0, #0
00432da0  07 00 00 0a                                      beq #0x432dc4
00432da4  00 30 08 e3                                      movw r3, #0x8000
00432da8  06 00 a0 e1                                      mov r0, r6
00432dac  07 10 a0 e1                                      mov r1, r7
00432db0  00 20 a0 e3                                      mov r2, #0
00432db4  76 30 44 e3                                      movt r3, #0x4076
00432db8  61 6f fb eb                                      bl #0x30eb44
00432dbc  00 60 a0 e1                                      mov r6, r0
00432dc0  01 70 a0 e1                                      mov r7, r1
00432dc4  09 10 a0 e1                                      mov r1, sb
00432dc8  08 00 a0 e1                                      mov r0, r8
00432dcc  33 6e fb eb                                      bl #0x30e6a0
00432dd0  0b 10 a0 e1                                      mov r1, fp
00432dd4  00 00 84 e5                                      str r0, [r4]
00432dd8  0a 00 a0 e1                                      mov r0, sl
00432ddc  2f 6e fb eb                                      bl #0x30e6a0
00432de0  07 10 a0 e1                                      mov r1, r7
00432de4  04 00 84 e5                                      str r0, [r4, #4]
00432de8  06 00 a0 e1                                      mov r0, r6
00432dec  2b 6e fb eb                                      bl #0x30e6a0
00432df0  08 00 84 e5                                      str r0, [r4, #8]
00432df4  04 00 a0 e1                                      mov r0, r4
00432df8  0c d0 8d e2                                      add sp, sp, #0xc
00432dfc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00432e00  10 00 95 e5                                      ldr r0, [r5, #0x10]
00432e04  00 80 a0 e3                                      mov r8, #0
00432e08  00 90 a0 e3                                      mov sb, #0
00432e0c  02 01 80 e2                                      add r0, r0, #0x80000000
00432e10  a3 6e fb eb                                      bl #0x30e8a4
00432e14  00 60 a0 e1                                      mov r6, r0
00432e18  14 00 95 e5                                      ldr r0, [r5, #0x14]
00432e1c  01 70 a0 e1                                      mov r7, r1
00432e20  9f 6e fb eb                                      bl #0x30e8a4
00432e24  00 20 a0 e1                                      mov r2, r0
00432e28  01 30 a0 e1                                      mov r3, r1
00432e2c  06 00 a0 e1                                      mov r0, r6
00432e30  07 10 a0 e1                                      mov r1, r7
00432e34  39 6c fb eb                                      bl #0x30df20
00432e38  f8 21 0c e3                                      movw r2, #0xc1f8
00432e3c  dc 35 0a e3                                      movw r3, #0xa5dc
00432e40  63 2a 41 e3                                      movt r2, #0x1a63
00432e44  4c 30 44 e3                                      movt r3, #0x404c
00432e48  19 6f fb eb                                      bl #0x30eab4
00432e4c  00 60 a0 e1                                      mov r6, r0
00432e50  01 70 a0 e1                                      mov r7, r1
00432e54  bc ff ff ea                                      b #0x432d4c

; FUNCTION 0x0050fbb0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.4
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.4]
; decoder-mode: arm
0050fbb0  00 30 a0 e3                                      mov r3, #0
0050fbb4  10 40 2d e9                                      push {r4, lr}
0050fbb8  41 20 a0 e3                                      mov r2, #0x41
0050fbbc  00 40 a0 e1                                      mov r4, r0
0050fbc0  40 30 c0 e5                                      strb r3, [r0, #0x40]
0050fbc4  27 fb f7 eb                                      bl #0x30e868
0050fbc8  04 00 a0 e1                                      mov r0, r4
0050fbcc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00563b54, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.1
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.1]
; decoder-mode: arm
00563b54  00 30 a0 e3                                      mov r3, #0
00563b58  10 40 2d e9                                      push {r4, lr}
00563b5c  41 20 a0 e3                                      mov r2, #0x41
00563b60  00 40 a0 e1                                      mov r4, r0
00563b64  40 30 c0 e5                                      strb r3, [r0, #0x40]
00563b68  3e ab f6 eb                                      bl #0x30e868
00563b6c  04 00 a0 e1                                      mov r0, r4
00563b70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005822f8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfE11makeInverseEv
; demangled: glitch::core::CMatrix4<float>::makeInverse()
; decoder-mode: arm
005822f8  30 40 2d e9                                      push {r4, r5, lr}
005822fc  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00582300  4c d0 4d e2                                      sub sp, sp, #0x4c
00582304  00 40 a0 e1                                      mov r4, r0
00582308  00 00 53 e3                                      cmp r3, #0
0058230c  02 00 00 0a                                      beq #0x58231c
00582310  01 00 a0 e3                                      mov r0, #1
00582314  4c d0 8d e2                                      add sp, sp, #0x4c
00582318  30 80 bd e8                                      pop {r4, r5, pc}
0058231c  04 50 8d e2                                      add r5, sp, #4
00582320  05 10 a0 e1                                      mov r1, r5
00582324  44 30 cd e5                                      strb r3, [sp, #0x44]
00582328  e4 83 f6 eb                                      bl #0x3232c0
0058232c  00 00 50 e3                                      cmp r0, #0
00582330  f7 ff ff 0a                                      beq #0x582314
00582334  04 00 a0 e1                                      mov r0, r4
00582338  05 10 a0 e1                                      mov r1, r5
0058233c  41 20 a0 e3                                      mov r2, #0x41
00582340  48 31 f6 eb                                      bl #0x30e868
00582344  f1 ff ff ea                                      b #0x582310

; FUNCTION 0x00586a14, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.0
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.0]
; decoder-mode: arm
00586a14  00 30 a0 e3                                      mov r3, #0
00586a18  10 40 2d e9                                      push {r4, lr}
00586a1c  41 20 a0 e3                                      mov r2, #0x41
00586a20  00 40 a0 e1                                      mov r4, r0
00586a24  40 30 c0 e5                                      strb r3, [r0, #0x40]
00586a28  8e 1f f6 eb                                      bl #0x30e868
00586a2c  04 00 a0 e1                                      mov r0, r4
00586a30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00587398, declared_size=620, range_size=620, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE12transformBoxERNS0_8aabbox3dIfEE
; demangled: glitch::core::CMatrix4<float>::transformBox(glitch::core::aabbox3d<float>&) const
; decoder-mode: arm
00587398  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0058739c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
005873a0  00 40 a0 e1                                      mov r4, r0
005873a4  01 50 a0 e1                                      mov r5, r1
005873a8  00 00 53 e3                                      cmp r3, #0
005873ac  93 00 00 1a                                      bne #0x587600
005873b0  00 a0 91 e5                                      ldr sl, [r1]
005873b4  04 70 91 e5                                      ldr r7, [r1, #4]
005873b8  00 10 90 e5                                      ldr r1, [r0]
005873bc  0a 00 a0 e1                                      mov r0, sl
005873c0  69 1e f6 eb                                      bl #0x30ed6c
005873c4  10 10 94 e5                                      ldr r1, [r4, #0x10]
005873c8  00 80 a0 e1                                      mov r8, r0
005873cc  07 00 a0 e1                                      mov r0, r7
005873d0  65 1e f6 eb                                      bl #0x30ed6c
005873d4  00 10 a0 e1                                      mov r1, r0
005873d8  08 00 a0 e1                                      mov r0, r8
005873dc  f0 1d f6 eb                                      bl #0x30eba4
005873e0  08 60 95 e5                                      ldr r6, [r5, #8]
005873e4  20 10 94 e5                                      ldr r1, [r4, #0x20]
005873e8  00 80 a0 e1                                      mov r8, r0
005873ec  06 00 a0 e1                                      mov r0, r6
005873f0  5d 1e f6 eb                                      bl #0x30ed6c
005873f4  00 10 a0 e1                                      mov r1, r0
005873f8  08 00 a0 e1                                      mov r0, r8
005873fc  e8 1d f6 eb                                      bl #0x30eba4
00587400  30 10 94 e5                                      ldr r1, [r4, #0x30]
00587404  e6 1d f6 eb                                      bl #0x30eba4
00587408  04 10 94 e5                                      ldr r1, [r4, #4]
0058740c  00 90 a0 e1                                      mov sb, r0
00587410  0a 00 a0 e1                                      mov r0, sl
00587414  54 1e f6 eb                                      bl #0x30ed6c
00587418  14 10 94 e5                                      ldr r1, [r4, #0x14]
0058741c  00 80 a0 e1                                      mov r8, r0
00587420  07 00 a0 e1                                      mov r0, r7
00587424  50 1e f6 eb                                      bl #0x30ed6c
00587428  00 10 a0 e1                                      mov r1, r0
0058742c  08 00 a0 e1                                      mov r0, r8
00587430  db 1d f6 eb                                      bl #0x30eba4
00587434  24 10 94 e5                                      ldr r1, [r4, #0x24]
00587438  00 80 a0 e1                                      mov r8, r0
0058743c  06 00 a0 e1                                      mov r0, r6
00587440  49 1e f6 eb                                      bl #0x30ed6c
00587444  00 10 a0 e1                                      mov r1, r0
00587448  08 00 a0 e1                                      mov r0, r8
0058744c  d4 1d f6 eb                                      bl #0x30eba4
00587450  34 10 94 e5                                      ldr r1, [r4, #0x34]
00587454  d2 1d f6 eb                                      bl #0x30eba4
00587458  08 10 94 e5                                      ldr r1, [r4, #8]
0058745c  00 80 a0 e1                                      mov r8, r0
00587460  0a 00 a0 e1                                      mov r0, sl
00587464  40 1e f6 eb                                      bl #0x30ed6c
00587468  18 10 94 e5                                      ldr r1, [r4, #0x18]
0058746c  00 a0 a0 e1                                      mov sl, r0
00587470  07 00 a0 e1                                      mov r0, r7
00587474  3c 1e f6 eb                                      bl #0x30ed6c
00587478  00 10 a0 e1                                      mov r1, r0
0058747c  0a 00 a0 e1                                      mov r0, sl
00587480  c7 1d f6 eb                                      bl #0x30eba4
00587484  28 10 94 e5                                      ldr r1, [r4, #0x28]
00587488  00 70 a0 e1                                      mov r7, r0
0058748c  06 00 a0 e1                                      mov r0, r6
00587490  35 1e f6 eb                                      bl #0x30ed6c
00587494  00 10 a0 e1                                      mov r1, r0
00587498  07 00 a0 e1                                      mov r0, r7
0058749c  c0 1d f6 eb                                      bl #0x30eba4
005874a0  38 10 94 e5                                      ldr r1, [r4, #0x38]
005874a4  be 1d f6 eb                                      bl #0x30eba4
005874a8  00 90 85 e5                                      str sb, [r5]
005874ac  0c 60 95 e5                                      ldr r6, [r5, #0xc]
005874b0  08 00 85 e5                                      str r0, [r5, #8]
005874b4  04 80 85 e5                                      str r8, [r5, #4]
005874b8  00 10 94 e5                                      ldr r1, [r4]
005874bc  00 70 a0 e1                                      mov r7, r0
005874c0  06 00 a0 e1                                      mov r0, r6
005874c4  28 1e f6 eb                                      bl #0x30ed6c
005874c8  10 10 94 e5                                      ldr r1, [r4, #0x10]
005874cc  00 a0 a0 e1                                      mov sl, r0
005874d0  10 00 95 e5                                      ldr r0, [r5, #0x10]
005874d4  24 1e f6 eb                                      bl #0x30ed6c
005874d8  00 10 a0 e1                                      mov r1, r0
005874dc  0a 00 a0 e1                                      mov r0, sl
005874e0  af 1d f6 eb                                      bl #0x30eba4
005874e4  20 10 94 e5                                      ldr r1, [r4, #0x20]
005874e8  00 a0 a0 e1                                      mov sl, r0
005874ec  14 00 95 e5                                      ldr r0, [r5, #0x14]
005874f0  1d 1e f6 eb                                      bl #0x30ed6c
005874f4  00 10 a0 e1                                      mov r1, r0
005874f8  0a 00 a0 e1                                      mov r0, sl
005874fc  a8 1d f6 eb                                      bl #0x30eba4
00587500  30 10 94 e5                                      ldr r1, [r4, #0x30]
00587504  a6 1d f6 eb                                      bl #0x30eba4
00587508  04 10 94 e5                                      ldr r1, [r4, #4]
0058750c  00 b0 a0 e1                                      mov fp, r0
00587510  06 00 a0 e1                                      mov r0, r6
00587514  14 1e f6 eb                                      bl #0x30ed6c
00587518  14 10 94 e5                                      ldr r1, [r4, #0x14]
0058751c  00 a0 a0 e1                                      mov sl, r0
00587520  10 00 95 e5                                      ldr r0, [r5, #0x10]
00587524  10 1e f6 eb                                      bl #0x30ed6c
00587528  00 10 a0 e1                                      mov r1, r0
0058752c  0a 00 a0 e1                                      mov r0, sl
00587530  9b 1d f6 eb                                      bl #0x30eba4
00587534  24 10 94 e5                                      ldr r1, [r4, #0x24]
00587538  00 a0 a0 e1                                      mov sl, r0
0058753c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00587540  09 1e f6 eb                                      bl #0x30ed6c
00587544  00 10 a0 e1                                      mov r1, r0
00587548  0a 00 a0 e1                                      mov r0, sl
0058754c  94 1d f6 eb                                      bl #0x30eba4
00587550  34 10 94 e5                                      ldr r1, [r4, #0x34]
00587554  92 1d f6 eb                                      bl #0x30eba4
00587558  08 10 94 e5                                      ldr r1, [r4, #8]
0058755c  00 a0 a0 e1                                      mov sl, r0
00587560  06 00 a0 e1                                      mov r0, r6
00587564  00 1e f6 eb                                      bl #0x30ed6c
00587568  18 10 94 e5                                      ldr r1, [r4, #0x18]
0058756c  00 60 a0 e1                                      mov r6, r0
00587570  10 00 95 e5                                      ldr r0, [r5, #0x10]
00587574  fc 1d f6 eb                                      bl #0x30ed6c
00587578  00 10 a0 e1                                      mov r1, r0
0058757c  06 00 a0 e1                                      mov r0, r6
00587580  87 1d f6 eb                                      bl #0x30eba4
00587584  28 10 94 e5                                      ldr r1, [r4, #0x28]
00587588  00 60 a0 e1                                      mov r6, r0
0058758c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00587590  f5 1d f6 eb                                      bl #0x30ed6c
00587594  00 10 a0 e1                                      mov r1, r0
00587598  06 00 a0 e1                                      mov r0, r6
0058759c  80 1d f6 eb                                      bl #0x30eba4
005875a0  38 10 94 e5                                      ldr r1, [r4, #0x38]
005875a4  7e 1d f6 eb                                      bl #0x30eba4
005875a8  0c b0 85 e5                                      str fp, [r5, #0xc]
005875ac  00 40 a0 e1                                      mov r4, r0
005875b0  14 00 85 e5                                      str r0, [r5, #0x14]
005875b4  0b 10 a0 e1                                      mov r1, fp
005875b8  10 a0 85 e5                                      str sl, [r5, #0x10]
005875bc  09 00 a0 e1                                      mov r0, sb
005875c0  4c 1b f6 eb                                      bl #0x30e2f8
005875c4  00 00 50 e3                                      cmp r0, #0
005875c8  00 b0 85 15                                      strne fp, [r5]
005875cc  0c 90 85 15                                      strne sb, [r5, #0xc]
005875d0  0a 10 a0 e1                                      mov r1, sl
005875d4  08 00 a0 e1                                      mov r0, r8
005875d8  46 1b f6 eb                                      bl #0x30e2f8
005875dc  00 00 50 e3                                      cmp r0, #0
005875e0  04 a0 85 15                                      strne sl, [r5, #4]
005875e4  10 80 85 15                                      strne r8, [r5, #0x10]
005875e8  07 00 a0 e1                                      mov r0, r7
005875ec  04 10 a0 e1                                      mov r1, r4
005875f0  40 1b f6 eb                                      bl #0x30e2f8
005875f4  00 00 50 e3                                      cmp r0, #0
005875f8  14 70 85 15                                      strne r7, [r5, #0x14]
005875fc  08 40 85 15                                      strne r4, [r5, #8]
00587600  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00591444, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.1
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.1]
; decoder-mode: arm
00591444  00 30 a0 e3                                      mov r3, #0
00591448  10 40 2d e9                                      push {r4, lr}
0059144c  41 20 a0 e3                                      mov r2, #0x41
00591450  00 40 a0 e1                                      mov r4, r0
00591454  40 30 c0 e5                                      strb r3, [r0, #0x40]
00591458  02 f5 f5 eb                                      bl #0x30e868
0059145c  04 00 a0 e1                                      mov r0, r4
00591460  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00597548, declared_size=452, range_size=452, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE14transformBoxExERNS0_8aabbox3dIfEE
; demangled: glitch::core::CMatrix4<float>::transformBoxEx(glitch::core::aabbox3d<float>&) const
; decoder-mode: arm
00597548  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059754c  54 d0 4d e2                                      sub sp, sp, #0x54
00597550  08 10 8d e5                                      str r1, [sp, #8]
00597554  14 00 8d e5                                      str r0, [sp, #0x14]
00597558  30 80 90 e5                                      ldr r8, [r0, #0x30]
0059755c  34 20 90 e5                                      ldr r2, [r0, #0x34]
00597560  38 30 90 e5                                      ldr r3, [r0, #0x38]
00597564  00 00 91 e5                                      ldr r0, [r1]
00597568  08 40 9d e5                                      ldr r4, [sp, #8]
0059756c  08 90 a0 e1                                      mov sb, r8
00597570  1c 00 8d e5                                      str r0, [sp, #0x1c]
00597574  08 c0 91 e5                                      ldr ip, [r1, #8]
00597578  04 e0 91 e5                                      ldr lr, [r1, #4]
0059757c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00597580  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00597584  18 10 8d e5                                      str r1, [sp, #0x18]
00597588  10 00 94 e5                                      ldr r0, [r4, #0x10]
0059758c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00597590  4c c0 8d e5                                      str ip, [sp, #0x4c]
00597594  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00597598  3c 00 8d e5                                      str r0, [sp, #0x3c]
0059759c  40 10 8d e5                                      str r1, [sp, #0x40]
005975a0  30 20 8d e5                                      str r2, [sp, #0x30]
005975a4  34 30 8d e5                                      str r3, [sp, #0x34]
005975a8  24 20 8d e5                                      str r2, [sp, #0x24]
005975ac  28 30 8d e5                                      str r3, [sp, #0x28]
005975b0  44 00 8d e2                                      add r0, sp, #0x44
005975b4  38 10 8d e2                                      add r1, sp, #0x38
005975b8  2c 20 8d e2                                      add r2, sp, #0x2c
005975bc  20 30 8d e2                                      add r3, sp, #0x20
005975c0  44 50 8d e5                                      str r5, [sp, #0x44]
005975c4  48 e0 8d e5                                      str lr, [sp, #0x48]
005975c8  38 c0 8d e5                                      str ip, [sp, #0x38]
005975cc  20 80 8d e5                                      str r8, [sp, #0x20]
005975d0  2c 80 8d e5                                      str r8, [sp, #0x2c]
005975d4  0c 00 8d e5                                      str r0, [sp, #0xc]
005975d8  10 10 8d e5                                      str r1, [sp, #0x10]
005975dc  00 50 a0 e3                                      mov r5, #0
005975e0  0c 00 8d e8                                      stm sp, {r2, r3}
005975e4  14 00 9d e5                                      ldr r0, [sp, #0x14]
005975e8  18 a0 9d e5                                      ldr sl, [sp, #0x18]
005975ec  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005975f0  00 40 a0 e3                                      mov r4, #0
005975f4  05 b0 80 e0                                      add fp, r0, r5
005975f8  04 71 9b e7                                      ldr r7, [fp, r4, lsl #2]
005975fc  07 00 a0 e1                                      mov r0, r7
00597600  d9 dd f5 eb                                      bl #0x30ed6c
00597604  0a 10 a0 e1                                      mov r1, sl
00597608  00 60 a0 e1                                      mov r6, r0
0059760c  07 00 a0 e1                                      mov r0, r7
00597610  d5 dd f5 eb                                      bl #0x30ed6c
00597614  00 70 a0 e1                                      mov r7, r0
00597618  07 10 a0 e1                                      mov r1, r7
0059761c  06 00 a0 e1                                      mov r0, r6
00597620  39 dc f5 eb                                      bl #0x30e70c
00597624  00 00 50 e3                                      cmp r0, #0
00597628  08 10 a0 e1                                      mov r1, r8
0059762c  06 00 a0 e1                                      mov r0, r6
00597630  12 00 00 0a                                      beq #0x597680
00597634  5a dd f5 eb                                      bl #0x30eba4
00597638  00 c0 9d e5                                      ldr ip, [sp]
0059763c  09 10 a0 e1                                      mov r1, sb
00597640  04 40 84 e2                                      add r4, r4, #4
00597644  05 00 8c e7                                      str r0, [ip, r5]
00597648  07 00 a0 e1                                      mov r0, r7
0059764c  54 dd f5 eb                                      bl #0x30eba4
00597650  04 10 9d e5                                      ldr r1, [sp, #4]
00597654  0c 00 54 e3                                      cmp r4, #0xc
00597658  05 00 81 e7                                      str r0, [r1, r5]
0059765c  14 00 00 0a                                      beq #0x5976b4
00597660  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00597664  10 00 9d e5                                      ldr r0, [sp, #0x10]
00597668  0c 00 9d e8                                      ldm sp, {r2, r3}
0059766c  04 10 9c e7                                      ldr r1, [ip, r4]
00597670  04 a0 90 e7                                      ldr sl, [r0, r4]
00597674  05 80 92 e7                                      ldr r8, [r2, r5]
00597678  05 90 93 e7                                      ldr sb, [r3, r5]
0059767c  dd ff ff ea                                      b #0x5975f8
00597680  08 10 a0 e1                                      mov r1, r8
00597684  07 00 a0 e1                                      mov r0, r7
00597688  45 dd f5 eb                                      bl #0x30eba4
0059768c  00 20 9d e5                                      ldr r2, [sp]
00597690  09 10 a0 e1                                      mov r1, sb
00597694  04 40 84 e2                                      add r4, r4, #4
00597698  05 00 82 e7                                      str r0, [r2, r5]
0059769c  06 00 a0 e1                                      mov r0, r6
005976a0  3f dd f5 eb                                      bl #0x30eba4
005976a4  04 30 9d e5                                      ldr r3, [sp, #4]
005976a8  0c 00 54 e3                                      cmp r4, #0xc
005976ac  05 00 83 e7                                      str r0, [r3, r5]
005976b0  ea ff ff 1a                                      bne #0x597660
005976b4  04 50 85 e2                                      add r5, r5, #4
005976b8  0c 00 55 e3                                      cmp r5, #0xc
005976bc  03 00 00 0a                                      beq #0x5976d0
005976c0  10 10 9d e8                                      ldm sp, {r4, ip}
005976c4  05 80 94 e7                                      ldr r8, [r4, r5]
005976c8  05 90 9c e7                                      ldr sb, [ip, r5]
005976cc  c4 ff ff ea                                      b #0x5975e4
005976d0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005976d4  34 10 9d e5                                      ldr r1, [sp, #0x34]
005976d8  20 20 9d e5                                      ldr r2, [sp, #0x20]
005976dc  24 30 9d e5                                      ldr r3, [sp, #0x24]
005976e0  28 00 9d e5                                      ldr r0, [sp, #0x28]
005976e4  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
005976e8  08 50 9d e5                                      ldr r5, [sp, #8]
005976ec  00 40 85 e5                                      str r4, [r5]
005976f0  04 c0 85 e5                                      str ip, [r5, #4]
005976f4  14 00 85 e5                                      str r0, [r5, #0x14]
005976f8  08 10 85 e5                                      str r1, [r5, #8]
005976fc  0c 20 85 e5                                      str r2, [r5, #0xc]
00597700  10 30 85 e5                                      str r3, [r5, #0x10]
00597704  54 d0 8d e2                                      add sp, sp, #0x54
00597708  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00597788, declared_size=220, range_size=220, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfE9postScaleERKNS0_8vector3dIfEE
; demangled: glitch::core::CMatrix4<float>::postScale(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00597788  70 40 2d e9                                      push {r4, r5, r6, lr}
0059778c  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00597790  00 40 a0 e1                                      mov r4, r0
00597794  01 50 a0 e1                                      mov r5, r1
00597798  00 00 53 e3                                      cmp r3, #0
0059779c  26 00 00 1a                                      bne #0x59783c
005977a0  40 30 c0 e5                                      strb r3, [r0, #0x40]
005977a4  00 10 91 e5                                      ldr r1, [r1]
005977a8  00 00 90 e5                                      ldr r0, [r0]
005977ac  6e dd f5 eb                                      bl #0x30ed6c
005977b0  00 00 84 e5                                      str r0, [r4]
005977b4  00 10 95 e5                                      ldr r1, [r5]
005977b8  04 00 94 e5                                      ldr r0, [r4, #4]
005977bc  6a dd f5 eb                                      bl #0x30ed6c
005977c0  04 00 84 e5                                      str r0, [r4, #4]
005977c4  00 10 95 e5                                      ldr r1, [r5]
005977c8  08 00 94 e5                                      ldr r0, [r4, #8]
005977cc  66 dd f5 eb                                      bl #0x30ed6c
005977d0  08 00 84 e5                                      str r0, [r4, #8]
005977d4  04 10 95 e5                                      ldr r1, [r5, #4]
005977d8  10 00 94 e5                                      ldr r0, [r4, #0x10]
005977dc  62 dd f5 eb                                      bl #0x30ed6c
005977e0  10 00 84 e5                                      str r0, [r4, #0x10]
005977e4  04 10 95 e5                                      ldr r1, [r5, #4]
005977e8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005977ec  5e dd f5 eb                                      bl #0x30ed6c
005977f0  14 00 84 e5                                      str r0, [r4, #0x14]
005977f4  04 10 95 e5                                      ldr r1, [r5, #4]
005977f8  18 00 94 e5                                      ldr r0, [r4, #0x18]
005977fc  5a dd f5 eb                                      bl #0x30ed6c
00597800  18 00 84 e5                                      str r0, [r4, #0x18]
00597804  08 10 95 e5                                      ldr r1, [r5, #8]
00597808  20 00 94 e5                                      ldr r0, [r4, #0x20]
0059780c  56 dd f5 eb                                      bl #0x30ed6c
00597810  20 00 84 e5                                      str r0, [r4, #0x20]
00597814  08 10 95 e5                                      ldr r1, [r5, #8]
00597818  24 00 94 e5                                      ldr r0, [r4, #0x24]
0059781c  52 dd f5 eb                                      bl #0x30ed6c
00597820  24 00 84 e5                                      str r0, [r4, #0x24]
00597824  08 10 95 e5                                      ldr r1, [r5, #8]
00597828  28 00 94 e5                                      ldr r0, [r4, #0x28]
0059782c  4e dd f5 eb                                      bl #0x30ed6c
00597830  28 00 84 e5                                      str r0, [r4, #0x28]
00597834  04 00 a0 e1                                      mov r0, r4
00597838  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059783c  00 30 a0 e3                                      mov r3, #0
00597840  40 30 c0 e5                                      strb r3, [r0, #0x40]
00597844  00 30 91 e5                                      ldr r3, [r1]
00597848  00 30 80 e5                                      str r3, [r0]
0059784c  04 30 91 e5                                      ldr r3, [r1, #4]
00597850  14 30 80 e5                                      str r3, [r0, #0x14]
00597854  08 30 91 e5                                      ldr r3, [r1, #8]
00597858  28 30 80 e5                                      str r3, [r0, #0x28]
0059785c  04 00 a0 e1                                      mov r0, r4
00597860  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00598ee4, declared_size=312, range_size=312, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE8getScaleEv
; demangled: glitch::core::CMatrix4<float>::getScale() const
; decoder-mode: arm
00598ee4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00598ee8  00 30 a0 e3                                      mov r3, #0
00598eec  08 30 80 e5                                      str r3, [r0, #8]
00598ef0  00 30 80 e5                                      str r3, [r0]
00598ef4  04 30 80 e5                                      str r3, [r0, #4]
00598ef8  00 50 a0 e1                                      mov r5, r0
00598efc  00 00 91 e5                                      ldr r0, [r1]
00598f00  01 40 a0 e1                                      mov r4, r1
00598f04  04 80 91 e5                                      ldr r8, [r1, #4]
00598f08  08 70 91 e5                                      ldr r7, [r1, #8]
00598f0c  00 10 a0 e1                                      mov r1, r0
00598f10  95 d7 f5 eb                                      bl #0x30ed6c
00598f14  08 10 a0 e1                                      mov r1, r8
00598f18  00 60 a0 e1                                      mov r6, r0
00598f1c  08 00 a0 e1                                      mov r0, r8
00598f20  91 d7 f5 eb                                      bl #0x30ed6c
00598f24  00 10 a0 e1                                      mov r1, r0
00598f28  06 00 a0 e1                                      mov r0, r6
00598f2c  1c d7 f5 eb                                      bl #0x30eba4
00598f30  07 10 a0 e1                                      mov r1, r7
00598f34  00 60 a0 e1                                      mov r6, r0
00598f38  07 00 a0 e1                                      mov r0, r7
00598f3c  8a d7 f5 eb                                      bl #0x30ed6c
00598f40  00 10 a0 e1                                      mov r1, r0
00598f44  06 00 a0 e1                                      mov r0, r6
00598f48  15 d7 f5 eb                                      bl #0x30eba4
00598f4c  54 d6 f5 eb                                      bl #0x30e8a4
00598f50  9a d4 f5 eb                                      bl #0x30e1c0
00598f54  d1 d5 f5 eb                                      bl #0x30e6a0
00598f58  00 00 85 e5                                      str r0, [r5]
00598f5c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00598f60  14 80 94 e5                                      ldr r8, [r4, #0x14]
00598f64  18 70 94 e5                                      ldr r7, [r4, #0x18]
00598f68  00 10 a0 e1                                      mov r1, r0
00598f6c  7e d7 f5 eb                                      bl #0x30ed6c
00598f70  08 10 a0 e1                                      mov r1, r8
00598f74  00 60 a0 e1                                      mov r6, r0
00598f78  08 00 a0 e1                                      mov r0, r8
00598f7c  7a d7 f5 eb                                      bl #0x30ed6c
00598f80  00 10 a0 e1                                      mov r1, r0
00598f84  06 00 a0 e1                                      mov r0, r6
00598f88  05 d7 f5 eb                                      bl #0x30eba4
00598f8c  07 10 a0 e1                                      mov r1, r7
00598f90  00 60 a0 e1                                      mov r6, r0
00598f94  07 00 a0 e1                                      mov r0, r7
00598f98  73 d7 f5 eb                                      bl #0x30ed6c
00598f9c  00 10 a0 e1                                      mov r1, r0
00598fa0  06 00 a0 e1                                      mov r0, r6
00598fa4  fe d6 f5 eb                                      bl #0x30eba4
00598fa8  3d d6 f5 eb                                      bl #0x30e8a4
00598fac  83 d4 f5 eb                                      bl #0x30e1c0
00598fb0  ba d5 f5 eb                                      bl #0x30e6a0
00598fb4  04 00 85 e5                                      str r0, [r5, #4]
00598fb8  20 00 94 e5                                      ldr r0, [r4, #0x20]
00598fbc  24 70 94 e5                                      ldr r7, [r4, #0x24]
00598fc0  28 60 94 e5                                      ldr r6, [r4, #0x28]
00598fc4  00 10 a0 e1                                      mov r1, r0
00598fc8  67 d7 f5 eb                                      bl #0x30ed6c
00598fcc  07 10 a0 e1                                      mov r1, r7
00598fd0  00 40 a0 e1                                      mov r4, r0
00598fd4  07 00 a0 e1                                      mov r0, r7
00598fd8  63 d7 f5 eb                                      bl #0x30ed6c
00598fdc  00 10 a0 e1                                      mov r1, r0
00598fe0  04 00 a0 e1                                      mov r0, r4
00598fe4  ee d6 f5 eb                                      bl #0x30eba4
00598fe8  06 10 a0 e1                                      mov r1, r6
00598fec  00 40 a0 e1                                      mov r4, r0
00598ff0  06 00 a0 e1                                      mov r0, r6
00598ff4  5c d7 f5 eb                                      bl #0x30ed6c
00598ff8  00 10 a0 e1                                      mov r1, r0
00598ffc  04 00 a0 e1                                      mov r0, r4
00599000  e7 d6 f5 eb                                      bl #0x30eba4
00599004  26 d6 f5 eb                                      bl #0x30e8a4
00599008  6c d4 f5 eb                                      bl #0x30e1c0
0059900c  a3 d5 f5 eb                                      bl #0x30e6a0
00599010  08 00 85 e5                                      str r0, [r5, #8]
00599014  05 00 a0 e1                                      mov r0, r5
00599018  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005aaef8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.6
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.6]
; decoder-mode: arm
005aaef8  00 30 a0 e3                                      mov r3, #0
005aaefc  10 40 2d e9                                      push {r4, lr}
005aaf00  41 20 a0 e3                                      mov r2, #0x41
005aaf04  00 40 a0 e1                                      mov r4, r0
005aaf08  40 30 c0 e5                                      strb r3, [r0, #0x40]
005aaf0c  55 8e f5 eb                                      bl #0x30e868
005aaf10  04 00 a0 e1                                      mov r0, r4
005aaf14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005ba19c, declared_size=392, range_size=392, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE10isIdentityEv
; demangled: glitch::core::CMatrix4<float>::isIdentity() const
; decoder-mode: arm
005ba19c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005ba1a0  40 50 d0 e5                                      ldrb r5, [r0, #0x40]
005ba1a4  00 70 a0 e1                                      mov r7, r0
005ba1a8  00 00 55 e3                                      cmp r5, #0
005ba1ac  5a 00 00 1a                                      bne #0x5ba31c
005ba1b0  00 40 90 e5                                      ldr r4, [r0]
005ba1b4  bd 17 03 e3                                      movw r1, #0x37bd
005ba1b8  86 15 43 e3                                      movt r1, #0x3586
005ba1bc  04 00 a0 e1                                      mov r0, r4
005ba1c0  77 52 f5 eb                                      bl #0x30eba4
005ba1c4  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba1c8  b9 50 f5 eb                                      bl #0x30e4b4
005ba1cc  00 00 50 e3                                      cmp r0, #0
005ba1d0  4f 00 00 0a                                      beq #0x5ba314
005ba1d4  bd 17 03 e3                                      movw r1, #0x37bd
005ba1d8  86 15 43 e3                                      movt r1, #0x3586
005ba1dc  04 00 a0 e1                                      mov r0, r4
005ba1e0  71 50 f5 eb                                      bl #0x30e3ac
005ba1e4  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba1e8  ef 51 f5 eb                                      bl #0x30e9ac
005ba1ec  00 00 50 e3                                      cmp r0, #0
005ba1f0  47 00 00 0a                                      beq #0x5ba314
005ba1f4  14 40 97 e5                                      ldr r4, [r7, #0x14]
005ba1f8  bd 17 03 e3                                      movw r1, #0x37bd
005ba1fc  86 15 43 e3                                      movt r1, #0x3586
005ba200  04 00 a0 e1                                      mov r0, r4
005ba204  66 52 f5 eb                                      bl #0x30eba4
005ba208  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba20c  a8 50 f5 eb                                      bl #0x30e4b4
005ba210  00 00 50 e3                                      cmp r0, #0
005ba214  3e 00 00 0a                                      beq #0x5ba314
005ba218  bd 17 03 e3                                      movw r1, #0x37bd
005ba21c  86 15 43 e3                                      movt r1, #0x3586
005ba220  04 00 a0 e1                                      mov r0, r4
005ba224  60 50 f5 eb                                      bl #0x30e3ac
005ba228  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba22c  de 51 f5 eb                                      bl #0x30e9ac
005ba230  00 00 50 e3                                      cmp r0, #0
005ba234  36 00 00 0a                                      beq #0x5ba314
005ba238  28 40 97 e5                                      ldr r4, [r7, #0x28]
005ba23c  bd 17 03 e3                                      movw r1, #0x37bd
005ba240  86 15 43 e3                                      movt r1, #0x3586
005ba244  04 00 a0 e1                                      mov r0, r4
005ba248  55 52 f5 eb                                      bl #0x30eba4
005ba24c  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba250  97 50 f5 eb                                      bl #0x30e4b4
005ba254  00 00 50 e3                                      cmp r0, #0
005ba258  2d 00 00 0a                                      beq #0x5ba314
005ba25c  bd 17 03 e3                                      movw r1, #0x37bd
005ba260  86 15 43 e3                                      movt r1, #0x3586
005ba264  04 00 a0 e1                                      mov r0, r4
005ba268  4f 50 f5 eb                                      bl #0x30e3ac
005ba26c  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba270  cd 51 f5 eb                                      bl #0x30e9ac
005ba274  00 00 50 e3                                      cmp r0, #0
005ba278  25 00 00 0a                                      beq #0x5ba314
005ba27c  3c 40 97 e5                                      ldr r4, [r7, #0x3c]
005ba280  bd 17 03 e3                                      movw r1, #0x37bd
005ba284  86 15 43 e3                                      movt r1, #0x3586
005ba288  04 00 a0 e1                                      mov r0, r4
005ba28c  44 52 f5 eb                                      bl #0x30eba4
005ba290  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba294  86 50 f5 eb                                      bl #0x30e4b4
005ba298  00 00 50 e3                                      cmp r0, #0
005ba29c  1c 00 00 0a                                      beq #0x5ba314
005ba2a0  bd 17 03 e3                                      movw r1, #0x37bd
005ba2a4  86 15 43 e3                                      movt r1, #0x3586
005ba2a8  04 00 a0 e1                                      mov r0, r4
005ba2ac  3e 50 f5 eb                                      bl #0x30e3ac
005ba2b0  fe 15 a0 e3                                      mov r1, #0x3f800000
005ba2b4  bc 51 f5 eb                                      bl #0x30e9ac
005ba2b8  00 00 50 e3                                      cmp r0, #0
005ba2bc  07 60 a0 11                                      movne r6, r7
005ba2c0  13 00 00 0a                                      beq #0x5ba314
005ba2c4  00 40 a0 e3                                      mov r4, #0
005ba2c8  bd 17 03 e3                                      movw r1, #0x37bd
005ba2cc  05 00 54 e1                                      cmp r4, r5
005ba2d0  86 15 43 e3                                      movt r1, #0x3586
005ba2d4  04 00 00 0a                                      beq #0x5ba2ec
005ba2d8  04 01 96 e7                                      ldr r0, [r6, r4, lsl #2]
005ba2dc  02 01 c0 e3                                      bic r0, r0, #0x80000000
005ba2e0  b1 51 f5 eb                                      bl #0x30e9ac
005ba2e4  00 00 50 e3                                      cmp r0, #0
005ba2e8  09 00 00 0a                                      beq #0x5ba314
005ba2ec  01 40 84 e2                                      add r4, r4, #1
005ba2f0  04 00 54 e3                                      cmp r4, #4
005ba2f4  f3 ff ff 1a                                      bne #0x5ba2c8
005ba2f8  01 50 85 e2                                      add r5, r5, #1
005ba2fc  04 00 55 e3                                      cmp r5, #4
005ba300  10 60 86 e2                                      add r6, r6, #0x10
005ba304  ee ff ff 1a                                      bne #0x5ba2c4
005ba308  01 00 a0 e3                                      mov r0, #1
005ba30c  40 00 c7 e5                                      strb r0, [r7, #0x40]
005ba310  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ba314  00 00 a0 e3                                      mov r0, #0
005ba318  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005ba31c  01 00 a0 e3                                      mov r0, #1
005ba320  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005baa94, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.1
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.1]
; decoder-mode: arm
005baa94  00 30 a0 e3                                      mov r3, #0
005baa98  10 40 2d e9                                      push {r4, lr}
005baa9c  41 20 a0 e3                                      mov r2, #0x41
005baaa0  00 40 a0 e1                                      mov r4, r0
005baaa4  40 30 c0 e5                                      strb r3, [r0, #0x40]
005baaa8  6e 4f f5 eb                                      bl #0x30e868
005baaac  04 00 a0 e1                                      mov r0, r4
005baab0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005caf48, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.3
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.3]
; decoder-mode: arm
005caf48  00 30 a0 e3                                      mov r3, #0
005caf4c  10 40 2d e9                                      push {r4, lr}
005caf50  41 20 a0 e3                                      mov r2, #0x41
005caf54  00 40 a0 e1                                      mov r4, r0
005caf58  40 30 c0 e5                                      strb r3, [r0, #0x40]
005caf5c  41 0e f5 eb                                      bl #0x30e868
005caf60  04 00 a0 e1                                      mov r0, r4
005caf64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005d402c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.1
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.1]
; decoder-mode: arm
005d402c  00 30 a0 e3                                      mov r3, #0
005d4030  10 40 2d e9                                      push {r4, lr}
005d4034  41 20 a0 e3                                      mov r2, #0x41
005d4038  00 40 a0 e1                                      mov r4, r0
005d403c  40 30 c0 e5                                      strb r3, [r0, #0x40]
005d4040  08 ea f4 eb                                      bl #0x30e868
005d4044  04 00 a0 e1                                      mov r0, r4
005d4048  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060a2cc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.3
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.3]
; decoder-mode: arm
0060a2cc  00 30 a0 e3                                      mov r3, #0
0060a2d0  10 40 2d e9                                      push {r4, lr}
0060a2d4  41 20 a0 e3                                      mov r2, #0x41
0060a2d8  00 40 a0 e1                                      mov r4, r0
0060a2dc  40 30 c0 e5                                      strb r3, [r0, #0x40]
0060a2e0  60 11 f4 eb                                      bl #0x30e868
0060a2e4  04 00 a0 e1                                      mov r0, r4
0060a2e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060ce24, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.0
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.0]
; decoder-mode: arm
0060ce24  00 30 a0 e3                                      mov r3, #0
0060ce28  10 40 2d e9                                      push {r4, lr}
0060ce2c  41 20 a0 e3                                      mov r2, #0x41
0060ce30  00 40 a0 e1                                      mov r4, r0
0060ce34  40 30 c0 e5                                      strb r3, [r0, #0x40]
0060ce38  8a 06 f4 eb                                      bl #0x30e868
0060ce3c  04 00 a0 e1                                      mov r0, r4
0060ce40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00631c14, declared_size=60, range_size=60, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ENS2_12eConstructorE.clone.0
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float>::eConstructor) [clone .clone.0]
; decoder-mode: arm
00631c14  00 10 a0 e3                                      mov r1, #0
00631c18  10 40 2d e9                                      push {r4, lr}
00631c1c  40 20 a0 e3                                      mov r2, #0x40
00631c20  40 10 c0 e5                                      strb r1, [r0, #0x40]
00631c24  00 40 a0 e1                                      mov r4, r0
00631c28  0c 72 f3 eb                                      bl #0x30e460
00631c2c  fe 35 a0 e3                                      mov r3, #0x3f800000
00631c30  01 20 a0 e3                                      mov r2, #1
00631c34  40 20 c4 e5                                      strb r2, [r4, #0x40]
00631c38  3c 30 84 e5                                      str r3, [r4, #0x3c]
00631c3c  00 30 84 e5                                      str r3, [r4]
00631c40  14 30 84 e5                                      str r3, [r4, #0x14]
00631c44  28 30 84 e5                                      str r3, [r4, #0x28]
00631c48  04 00 a0 e1                                      mov r0, r4
00631c4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063ccc8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.5
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.5]
; decoder-mode: arm
0063ccc8  00 30 a0 e3                                      mov r3, #0
0063cccc  10 40 2d e9                                      push {r4, lr}
0063ccd0  41 20 a0 e3                                      mov r2, #0x41
0063ccd4  00 40 a0 e1                                      mov r4, r0
0063ccd8  40 30 c0 e5                                      strb r3, [r0, #0x40]
0063ccdc  e1 46 f3 eb                                      bl #0x30e868
0063cce0  04 00 a0 e1                                      mov r0, r4
0063cce4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00663ce8, declared_size=2120, range_size=2120, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZNK6glitch4core8CMatrix4IfE10getInverseERS2_.clone.5
; demangled: glitch::core::CMatrix4<float>::getInverse(glitch::core::CMatrix4<float>&) const [clone .clone.5]
; decoder-mode: arm
00663ce8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00663cec  34 68 9f e5                                      ldr r6, [pc, #0x834]
00663cf0  34 28 9f e5                                      ldr r2, [pc, #0x834]
00663cf4  34 d0 4d e2                                      sub sp, sp, #0x34
00663cf8  06 60 8f e0                                      add r6, pc, r6
00663cfc  02 40 96 e7                                      ldr r4, [r6, r2]
00663d00  2c 20 8d e5                                      str r2, [sp, #0x2c]
00663d04  00 50 a0 e1                                      mov r5, r0
00663d08  40 20 d4 e5                                      ldrb r2, [r4, #0x40]
00663d0c  00 00 52 e3                                      cmp r2, #0
00663d10  ff 01 00 1a                                      bne #0x664514
00663d14  28 a0 94 e5                                      ldr sl, [r4, #0x28]
00663d18  3c 70 94 e5                                      ldr r7, [r4, #0x3c]
00663d1c  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
00663d20  0a 00 a0 e1                                      mov r0, sl
00663d24  07 10 a0 e1                                      mov r1, r7
00663d28  38 b0 94 e5                                      ldr fp, [r4, #0x38]
00663d2c  00 20 8d e5                                      str r2, [sp]
00663d30  0d ac f2 eb                                      bl #0x30ed6c
00663d34  0b 10 a0 e1                                      mov r1, fp
00663d38  00 80 a0 e1                                      mov r8, r0
00663d3c  09 00 a0 e1                                      mov r0, sb
00663d40  09 ac f2 eb                                      bl #0x30ed6c
00663d44  00 10 a0 e1                                      mov r1, r0
00663d48  08 00 a0 e1                                      mov r0, r8
00663d4c  96 a9 f2 eb                                      bl #0x30e3ac
00663d50  18 10 94 e5                                      ldr r1, [r4, #0x18]
00663d54  14 00 8d e5                                      str r0, [sp, #0x14]
00663d58  07 00 a0 e1                                      mov r0, r7
00663d5c  02 ac f2 eb                                      bl #0x30ed6c
00663d60  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
00663d64  00 30 a0 e1                                      mov r3, r0
00663d68  0b 00 a0 e1                                      mov r0, fp
00663d6c  08 10 a0 e1                                      mov r1, r8
00663d70  04 30 8d e5                                      str r3, [sp, #4]
00663d74  fc ab f2 eb                                      bl #0x30ed6c
00663d78  04 30 9d e5                                      ldr r3, [sp, #4]
00663d7c  00 10 a0 e1                                      mov r1, r0
00663d80  03 00 a0 e1                                      mov r0, r3
00663d84  88 a9 f2 eb                                      bl #0x30e3ac
00663d88  18 10 94 e5                                      ldr r1, [r4, #0x18]
00663d8c  18 00 8d e5                                      str r0, [sp, #0x18]
00663d90  09 00 a0 e1                                      mov r0, sb
00663d94  f4 ab f2 eb                                      bl #0x30ed6c
00663d98  08 10 a0 e1                                      mov r1, r8
00663d9c  00 30 a0 e1                                      mov r3, r0
00663da0  0a 00 a0 e1                                      mov r0, sl
00663da4  04 30 8d e5                                      str r3, [sp, #4]
00663da8  ef ab f2 eb                                      bl #0x30ed6c
00663dac  04 30 9d e5                                      ldr r3, [sp, #4]
00663db0  00 10 a0 e1                                      mov r1, r0
00663db4  03 00 a0 e1                                      mov r0, r3
00663db8  7b a9 f2 eb                                      bl #0x30e3ac
00663dbc  08 10 94 e5                                      ldr r1, [r4, #8]
00663dc0  1c 00 8d e5                                      str r0, [sp, #0x1c]
00663dc4  07 00 a0 e1                                      mov r0, r7
00663dc8  e7 ab f2 eb                                      bl #0x30ed6c
00663dcc  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00663dd0  00 30 a0 e1                                      mov r3, r0
00663dd4  0b 00 a0 e1                                      mov r0, fp
00663dd8  07 10 a0 e1                                      mov r1, r7
00663ddc  04 30 8d e5                                      str r3, [sp, #4]
00663de0  e1 ab f2 eb                                      bl #0x30ed6c
00663de4  04 30 9d e5                                      ldr r3, [sp, #4]
00663de8  00 10 a0 e1                                      mov r1, r0
00663dec  03 00 a0 e1                                      mov r0, r3
00663df0  6d a9 f2 eb                                      bl #0x30e3ac
00663df4  08 10 94 e5                                      ldr r1, [r4, #8]
00663df8  20 00 8d e5                                      str r0, [sp, #0x20]
00663dfc  09 00 a0 e1                                      mov r0, sb
00663e00  d9 ab f2 eb                                      bl #0x30ed6c
00663e04  07 10 a0 e1                                      mov r1, r7
00663e08  00 90 a0 e1                                      mov sb, r0
00663e0c  0a 00 a0 e1                                      mov r0, sl
00663e10  d5 ab f2 eb                                      bl #0x30ed6c
00663e14  00 10 a0 e1                                      mov r1, r0
00663e18  09 00 a0 e1                                      mov r0, sb
00663e1c  62 a9 f2 eb                                      bl #0x30e3ac
00663e20  08 10 94 e5                                      ldr r1, [r4, #8]
00663e24  24 00 8d e5                                      str r0, [sp, #0x24]
00663e28  08 00 a0 e1                                      mov r0, r8
00663e2c  ce ab f2 eb                                      bl #0x30ed6c
00663e30  07 10 a0 e1                                      mov r1, r7
00663e34  00 80 a0 e1                                      mov r8, r0
00663e38  18 00 94 e5                                      ldr r0, [r4, #0x18]
00663e3c  ca ab f2 eb                                      bl #0x30ed6c
00663e40  00 10 a0 e1                                      mov r1, r0
00663e44  08 00 a0 e1                                      mov r0, r8
00663e48  57 a9 f2 eb                                      bl #0x30e3ac
00663e4c  08 00 8d e5                                      str r0, [sp, #8]
00663e50  20 90 94 e5                                      ldr sb, [r4, #0x20]
00663e54  34 a0 94 e5                                      ldr sl, [r4, #0x34]
00663e58  24 b0 94 e5                                      ldr fp, [r4, #0x24]
00663e5c  09 00 a0 e1                                      mov r0, sb
00663e60  0a 10 a0 e1                                      mov r1, sl
00663e64  c0 ab f2 eb                                      bl #0x30ed6c
00663e68  30 80 94 e5                                      ldr r8, [r4, #0x30]
00663e6c  00 70 a0 e1                                      mov r7, r0
00663e70  0b 00 a0 e1                                      mov r0, fp
00663e74  08 10 a0 e1                                      mov r1, r8
00663e78  bb ab f2 eb                                      bl #0x30ed6c
00663e7c  00 10 a0 e1                                      mov r1, r0
00663e80  07 00 a0 e1                                      mov r0, r7
00663e84  48 a9 f2 eb                                      bl #0x30e3ac
00663e88  10 10 94 e5                                      ldr r1, [r4, #0x10]
00663e8c  0c 00 8d e5                                      str r0, [sp, #0xc]
00663e90  0a 00 a0 e1                                      mov r0, sl
00663e94  b4 ab f2 eb                                      bl #0x30ed6c
00663e98  14 10 94 e5                                      ldr r1, [r4, #0x14]
00663e9c  00 70 a0 e1                                      mov r7, r0
00663ea0  08 00 a0 e1                                      mov r0, r8
00663ea4  b0 ab f2 eb                                      bl #0x30ed6c
00663ea8  00 10 a0 e1                                      mov r1, r0
00663eac  07 00 a0 e1                                      mov r0, r7
00663eb0  3d a9 f2 eb                                      bl #0x30e3ac
00663eb4  10 10 94 e5                                      ldr r1, [r4, #0x10]
00663eb8  28 00 8d e5                                      str r0, [sp, #0x28]
00663ebc  0b 00 a0 e1                                      mov r0, fp
00663ec0  a9 ab f2 eb                                      bl #0x30ed6c
00663ec4  14 10 94 e5                                      ldr r1, [r4, #0x14]
00663ec8  00 70 a0 e1                                      mov r7, r0
00663ecc  09 00 a0 e1                                      mov r0, sb
00663ed0  a5 ab f2 eb                                      bl #0x30ed6c
00663ed4  00 10 a0 e1                                      mov r1, r0
00663ed8  07 00 a0 e1                                      mov r0, r7
00663edc  32 a9 f2 eb                                      bl #0x30e3ac
00663ee0  00 10 94 e5                                      ldr r1, [r4]
00663ee4  00 70 a0 e1                                      mov r7, r0
00663ee8  0a 00 a0 e1                                      mov r0, sl
00663eec  9e ab f2 eb                                      bl #0x30ed6c
00663ef0  04 a0 94 e5                                      ldr sl, [r4, #4]
00663ef4  00 30 a0 e1                                      mov r3, r0
00663ef8  08 00 a0 e1                                      mov r0, r8
00663efc  0a 10 a0 e1                                      mov r1, sl
00663f00  04 30 8d e5                                      str r3, [sp, #4]
00663f04  98 ab f2 eb                                      bl #0x30ed6c
00663f08  04 30 9d e5                                      ldr r3, [sp, #4]
00663f0c  00 10 a0 e1                                      mov r1, r0
00663f10  03 00 a0 e1                                      mov r0, r3
00663f14  24 a9 f2 eb                                      bl #0x30e3ac
00663f18  00 10 94 e5                                      ldr r1, [r4]
00663f1c  00 80 a0 e1                                      mov r8, r0
00663f20  0b 00 a0 e1                                      mov r0, fp
00663f24  90 ab f2 eb                                      bl #0x30ed6c
00663f28  0a 10 a0 e1                                      mov r1, sl
00663f2c  00 b0 a0 e1                                      mov fp, r0
00663f30  09 00 a0 e1                                      mov r0, sb
00663f34  8c ab f2 eb                                      bl #0x30ed6c
00663f38  00 10 a0 e1                                      mov r1, r0
00663f3c  0b 00 a0 e1                                      mov r0, fp
00663f40  19 a9 f2 eb                                      bl #0x30e3ac
00663f44  00 10 94 e5                                      ldr r1, [r4]
00663f48  00 90 a0 e1                                      mov sb, r0
00663f4c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00663f50  85 ab f2 eb                                      bl #0x30ed6c
00663f54  0a 10 a0 e1                                      mov r1, sl
00663f58  00 b0 a0 e1                                      mov fp, r0
00663f5c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00663f60  81 ab f2 eb                                      bl #0x30ed6c
00663f64  00 10 a0 e1                                      mov r1, r0
00663f68  0b 00 a0 e1                                      mov r0, fp
00663f6c  0e a9 f2 eb                                      bl #0x30e3ac
00663f70  00 a0 a0 e1                                      mov sl, r0
00663f74  0a 10 a0 e1                                      mov r1, sl
00663f78  14 00 9d e5                                      ldr r0, [sp, #0x14]
00663f7c  7a ab f2 eb                                      bl #0x30ed6c
00663f80  09 10 a0 e1                                      mov r1, sb
00663f84  00 b0 a0 e1                                      mov fp, r0
00663f88  18 00 9d e5                                      ldr r0, [sp, #0x18]
00663f8c  76 ab f2 eb                                      bl #0x30ed6c
00663f90  00 10 a0 e1                                      mov r1, r0
00663f94  0b 00 a0 e1                                      mov r0, fp
00663f98  03 a9 f2 eb                                      bl #0x30e3ac
00663f9c  08 10 a0 e1                                      mov r1, r8
00663fa0  00 b0 a0 e1                                      mov fp, r0
00663fa4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00663fa8  6f ab f2 eb                                      bl #0x30ed6c
00663fac  00 10 a0 e1                                      mov r1, r0
00663fb0  0b 00 a0 e1                                      mov r0, fp
00663fb4  fa aa f2 eb                                      bl #0x30eba4
00663fb8  07 10 a0 e1                                      mov r1, r7
00663fbc  00 b0 a0 e1                                      mov fp, r0
00663fc0  20 00 9d e5                                      ldr r0, [sp, #0x20]
00663fc4  68 ab f2 eb                                      bl #0x30ed6c
00663fc8  00 10 a0 e1                                      mov r1, r0
00663fcc  0b 00 a0 e1                                      mov r0, fp
00663fd0  f3 aa f2 eb                                      bl #0x30eba4
00663fd4  28 10 9d e5                                      ldr r1, [sp, #0x28]
00663fd8  00 b0 a0 e1                                      mov fp, r0
00663fdc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00663fe0  61 ab f2 eb                                      bl #0x30ed6c
00663fe4  00 10 a0 e1                                      mov r1, r0
00663fe8  0b 00 a0 e1                                      mov r0, fp
00663fec  ee a8 f2 eb                                      bl #0x30e3ac
00663ff0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00663ff4  00 b0 a0 e1                                      mov fp, r0
00663ff8  08 00 9d e5                                      ldr r0, [sp, #8]
00663ffc  5a ab f2 eb                                      bl #0x30ed6c
00664000  00 10 a0 e1                                      mov r1, r0
00664004  0b 00 a0 e1                                      mov r0, fp
00664008  e5 aa f2 eb                                      bl #0x30eba4
0066400c  10 00 8d e5                                      str r0, [sp, #0x10]
00664010  10 30 9d e5                                      ldr r3, [sp, #0x10]
00664014  bd 17 03 e3                                      movw r1, #0x37bd
00664018  86 15 43 e3                                      movt r1, #0x3586
0066401c  02 01 c3 e3                                      bic r0, r3, #0x80000000
00664020  61 aa f2 eb                                      bl #0x30e9ac
00664024  00 20 9d e5                                      ldr r2, [sp]
00664028  00 00 50 e3                                      cmp r0, #0
0066402c  02 00 a0 11                                      movne r0, r2
00664030  35 01 00 1a                                      bne #0x66450c
00664034  40 20 c5 e5                                      strb r2, [r5, #0x40]
00664038  14 10 94 e5                                      ldr r1, [r4, #0x14]
0066403c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00664040  00 20 8d e5                                      str r2, [sp]
00664044  48 ab f2 eb                                      bl #0x30ed6c
00664048  24 10 94 e5                                      ldr r1, [r4, #0x24]
0066404c  00 b0 a0 e1                                      mov fp, r0
00664050  18 00 9d e5                                      ldr r0, [sp, #0x18]
00664054  44 ab f2 eb                                      bl #0x30ed6c
00664058  00 10 a0 e1                                      mov r1, r0
0066405c  0b 00 a0 e1                                      mov r0, fp
00664060  d1 a8 f2 eb                                      bl #0x30e3ac
00664064  34 10 94 e5                                      ldr r1, [r4, #0x34]
00664068  00 b0 a0 e1                                      mov fp, r0
0066406c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00664070  3d ab f2 eb                                      bl #0x30ed6c
00664074  00 10 a0 e1                                      mov r1, r0
00664078  0b 00 a0 e1                                      mov r0, fp
0066407c  c8 aa f2 eb                                      bl #0x30eba4
00664080  00 00 85 e5                                      str r0, [r5]
00664084  24 10 94 e5                                      ldr r1, [r4, #0x24]
00664088  20 00 9d e5                                      ldr r0, [sp, #0x20]
0066408c  36 ab f2 eb                                      bl #0x30ed6c
00664090  04 10 94 e5                                      ldr r1, [r4, #4]
00664094  00 b0 a0 e1                                      mov fp, r0
00664098  14 00 9d e5                                      ldr r0, [sp, #0x14]
0066409c  32 ab f2 eb                                      bl #0x30ed6c
006640a0  00 10 a0 e1                                      mov r1, r0
006640a4  0b 00 a0 e1                                      mov r0, fp
006640a8  bf a8 f2 eb                                      bl #0x30e3ac
006640ac  34 10 94 e5                                      ldr r1, [r4, #0x34]
006640b0  00 b0 a0 e1                                      mov fp, r0
006640b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006640b8  2b ab f2 eb                                      bl #0x30ed6c
006640bc  00 10 a0 e1                                      mov r1, r0
006640c0  0b 00 a0 e1                                      mov r0, fp
006640c4  b8 a8 f2 eb                                      bl #0x30e3ac
006640c8  04 00 85 e5                                      str r0, [r5, #4]
006640cc  04 10 94 e5                                      ldr r1, [r4, #4]
006640d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006640d4  24 ab f2 eb                                      bl #0x30ed6c
006640d8  14 10 94 e5                                      ldr r1, [r4, #0x14]
006640dc  00 b0 a0 e1                                      mov fp, r0
006640e0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006640e4  20 ab f2 eb                                      bl #0x30ed6c
006640e8  00 10 a0 e1                                      mov r1, r0
006640ec  0b 00 a0 e1                                      mov r0, fp
006640f0  ad a8 f2 eb                                      bl #0x30e3ac
006640f4  34 10 94 e5                                      ldr r1, [r4, #0x34]
006640f8  00 b0 a0 e1                                      mov fp, r0
006640fc  08 00 9d e5                                      ldr r0, [sp, #8]
00664100  19 ab f2 eb                                      bl #0x30ed6c
00664104  00 10 a0 e1                                      mov r1, r0
00664108  0b 00 a0 e1                                      mov r0, fp
0066410c  a4 aa f2 eb                                      bl #0x30eba4
00664110  08 00 85 e5                                      str r0, [r5, #8]
00664114  14 10 94 e5                                      ldr r1, [r4, #0x14]
00664118  24 00 9d e5                                      ldr r0, [sp, #0x24]
0066411c  12 ab f2 eb                                      bl #0x30ed6c
00664120  04 10 94 e5                                      ldr r1, [r4, #4]
00664124  00 b0 a0 e1                                      mov fp, r0
00664128  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0066412c  0e ab f2 eb                                      bl #0x30ed6c
00664130  00 10 a0 e1                                      mov r1, r0
00664134  0b 00 a0 e1                                      mov r0, fp
00664138  9b a8 f2 eb                                      bl #0x30e3ac
0066413c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00664140  00 b0 a0 e1                                      mov fp, r0
00664144  08 00 9d e5                                      ldr r0, [sp, #8]
00664148  07 ab f2 eb                                      bl #0x30ed6c
0066414c  00 10 a0 e1                                      mov r1, r0
00664150  0b 00 a0 e1                                      mov r0, fp
00664154  94 a8 f2 eb                                      bl #0x30e3ac
00664158  0c 00 85 e5                                      str r0, [r5, #0xc]
0066415c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00664160  18 00 9d e5                                      ldr r0, [sp, #0x18]
00664164  00 ab f2 eb                                      bl #0x30ed6c
00664168  10 10 94 e5                                      ldr r1, [r4, #0x10]
0066416c  00 b0 a0 e1                                      mov fp, r0
00664170  14 00 9d e5                                      ldr r0, [sp, #0x14]
00664174  fc aa f2 eb                                      bl #0x30ed6c
00664178  00 10 a0 e1                                      mov r1, r0
0066417c  0b 00 a0 e1                                      mov r0, fp
00664180  89 a8 f2 eb                                      bl #0x30e3ac
00664184  30 10 94 e5                                      ldr r1, [r4, #0x30]
00664188  00 b0 a0 e1                                      mov fp, r0
0066418c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00664190  f5 aa f2 eb                                      bl #0x30ed6c
00664194  00 10 a0 e1                                      mov r1, r0
00664198  0b 00 a0 e1                                      mov r0, fp
0066419c  82 a8 f2 eb                                      bl #0x30e3ac
006641a0  10 00 85 e5                                      str r0, [r5, #0x10]
006641a4  00 10 94 e5                                      ldr r1, [r4]
006641a8  14 00 9d e5                                      ldr r0, [sp, #0x14]
006641ac  ee aa f2 eb                                      bl #0x30ed6c
006641b0  20 10 94 e5                                      ldr r1, [r4, #0x20]
006641b4  00 b0 a0 e1                                      mov fp, r0
006641b8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006641bc  ea aa f2 eb                                      bl #0x30ed6c
006641c0  00 10 a0 e1                                      mov r1, r0
006641c4  0b 00 a0 e1                                      mov r0, fp
006641c8  77 a8 f2 eb                                      bl #0x30e3ac
006641cc  30 10 94 e5                                      ldr r1, [r4, #0x30]
006641d0  00 b0 a0 e1                                      mov fp, r0
006641d4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006641d8  e3 aa f2 eb                                      bl #0x30ed6c
006641dc  00 10 a0 e1                                      mov r1, r0
006641e0  0b 00 a0 e1                                      mov r0, fp
006641e4  6e aa f2 eb                                      bl #0x30eba4
006641e8  14 00 85 e5                                      str r0, [r5, #0x14]
006641ec  10 10 94 e5                                      ldr r1, [r4, #0x10]
006641f0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006641f4  dc aa f2 eb                                      bl #0x30ed6c
006641f8  00 10 94 e5                                      ldr r1, [r4]
006641fc  00 b0 a0 e1                                      mov fp, r0
00664200  18 00 9d e5                                      ldr r0, [sp, #0x18]
00664204  d8 aa f2 eb                                      bl #0x30ed6c
00664208  00 10 a0 e1                                      mov r1, r0
0066420c  0b 00 a0 e1                                      mov r0, fp
00664210  65 a8 f2 eb                                      bl #0x30e3ac
00664214  30 10 94 e5                                      ldr r1, [r4, #0x30]
00664218  00 b0 a0 e1                                      mov fp, r0
0066421c  08 00 9d e5                                      ldr r0, [sp, #8]
00664220  d1 aa f2 eb                                      bl #0x30ed6c
00664224  00 10 a0 e1                                      mov r1, r0
00664228  0b 00 a0 e1                                      mov r0, fp
0066422c  5e a8 f2 eb                                      bl #0x30e3ac
00664230  18 00 85 e5                                      str r0, [r5, #0x18]
00664234  00 10 94 e5                                      ldr r1, [r4]
00664238  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0066423c  ca aa f2 eb                                      bl #0x30ed6c
00664240  10 10 94 e5                                      ldr r1, [r4, #0x10]
00664244  00 b0 a0 e1                                      mov fp, r0
00664248  24 00 9d e5                                      ldr r0, [sp, #0x24]
0066424c  c6 aa f2 eb                                      bl #0x30ed6c
00664250  00 10 a0 e1                                      mov r1, r0
00664254  0b 00 a0 e1                                      mov r0, fp
00664258  53 a8 f2 eb                                      bl #0x30e3ac
0066425c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00664260  00 b0 a0 e1                                      mov fp, r0
00664264  08 00 9d e5                                      ldr r0, [sp, #8]
00664268  bf aa f2 eb                                      bl #0x30ed6c
0066426c  00 10 a0 e1                                      mov r1, r0
00664270  0b 00 a0 e1                                      mov r0, fp
00664274  4a aa f2 eb                                      bl #0x30eba4
00664278  1c 00 85 e5                                      str r0, [r5, #0x1c]
0066427c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00664280  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00664284  b8 aa f2 eb                                      bl #0x30ed6c
00664288  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0066428c  00 b0 a0 e1                                      mov fp, r0
00664290  28 00 9d e5                                      ldr r0, [sp, #0x28]
00664294  b4 aa f2 eb                                      bl #0x30ed6c
00664298  00 10 a0 e1                                      mov r1, r0
0066429c  0b 00 a0 e1                                      mov r0, fp
006642a0  41 a8 f2 eb                                      bl #0x30e3ac
006642a4  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006642a8  00 b0 a0 e1                                      mov fp, r0
006642ac  07 00 a0 e1                                      mov r0, r7
006642b0  ad aa f2 eb                                      bl #0x30ed6c
006642b4  00 10 a0 e1                                      mov r1, r0
006642b8  0b 00 a0 e1                                      mov r0, fp
006642bc  38 aa f2 eb                                      bl #0x30eba4
006642c0  20 00 85 e5                                      str r0, [r5, #0x20]
006642c4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006642c8  08 00 a0 e1                                      mov r0, r8
006642cc  a6 aa f2 eb                                      bl #0x30ed6c
006642d0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006642d4  00 b0 a0 e1                                      mov fp, r0
006642d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006642dc  a2 aa f2 eb                                      bl #0x30ed6c
006642e0  00 10 a0 e1                                      mov r1, r0
006642e4  0b 00 a0 e1                                      mov r0, fp
006642e8  2f a8 f2 eb                                      bl #0x30e3ac
006642ec  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006642f0  00 b0 a0 e1                                      mov fp, r0
006642f4  09 00 a0 e1                                      mov r0, sb
006642f8  9b aa f2 eb                                      bl #0x30ed6c
006642fc  00 10 a0 e1                                      mov r1, r0
00664300  0b 00 a0 e1                                      mov r0, fp
00664304  28 a8 f2 eb                                      bl #0x30e3ac
00664308  24 00 85 e5                                      str r0, [r5, #0x24]
0066430c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00664310  28 00 9d e5                                      ldr r0, [sp, #0x28]
00664314  94 aa f2 eb                                      bl #0x30ed6c
00664318  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0066431c  00 b0 a0 e1                                      mov fp, r0
00664320  08 00 a0 e1                                      mov r0, r8
00664324  90 aa f2 eb                                      bl #0x30ed6c
00664328  00 10 a0 e1                                      mov r1, r0
0066432c  0b 00 a0 e1                                      mov r0, fp
00664330  1d a8 f2 eb                                      bl #0x30e3ac
00664334  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00664338  00 b0 a0 e1                                      mov fp, r0
0066433c  0a 00 a0 e1                                      mov r0, sl
00664340  89 aa f2 eb                                      bl #0x30ed6c
00664344  00 10 a0 e1                                      mov r1, r0
00664348  0b 00 a0 e1                                      mov r0, fp
0066434c  14 aa f2 eb                                      bl #0x30eba4
00664350  28 00 85 e5                                      str r0, [r5, #0x28]
00664354  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00664358  09 00 a0 e1                                      mov r0, sb
0066435c  82 aa f2 eb                                      bl #0x30ed6c
00664360  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00664364  00 b0 a0 e1                                      mov fp, r0
00664368  07 00 a0 e1                                      mov r0, r7
0066436c  7e aa f2 eb                                      bl #0x30ed6c
00664370  00 10 a0 e1                                      mov r1, r0
00664374  0b 00 a0 e1                                      mov r0, fp
00664378  0b a8 f2 eb                                      bl #0x30e3ac
0066437c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00664380  00 b0 a0 e1                                      mov fp, r0
00664384  0a 00 a0 e1                                      mov r0, sl
00664388  77 aa f2 eb                                      bl #0x30ed6c
0066438c  00 10 a0 e1                                      mov r1, r0
00664390  0b 00 a0 e1                                      mov r0, fp
00664394  04 a8 f2 eb                                      bl #0x30e3ac
00664398  2c 00 85 e5                                      str r0, [r5, #0x2c]
0066439c  28 10 94 e5                                      ldr r1, [r4, #0x28]
006643a0  28 00 9d e5                                      ldr r0, [sp, #0x28]
006643a4  70 aa f2 eb                                      bl #0x30ed6c
006643a8  18 10 94 e5                                      ldr r1, [r4, #0x18]
006643ac  00 b0 a0 e1                                      mov fp, r0
006643b0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006643b4  6c aa f2 eb                                      bl #0x30ed6c
006643b8  00 10 a0 e1                                      mov r1, r0
006643bc  0b 00 a0 e1                                      mov r0, fp
006643c0  f9 a7 f2 eb                                      bl #0x30e3ac
006643c4  38 10 94 e5                                      ldr r1, [r4, #0x38]
006643c8  00 b0 a0 e1                                      mov fp, r0
006643cc  07 00 a0 e1                                      mov r0, r7
006643d0  65 aa f2 eb                                      bl #0x30ed6c
006643d4  00 10 a0 e1                                      mov r1, r0
006643d8  0b 00 a0 e1                                      mov r0, fp
006643dc  f2 a7 f2 eb                                      bl #0x30e3ac
006643e0  30 00 85 e5                                      str r0, [r5, #0x30]
006643e4  08 10 94 e5                                      ldr r1, [r4, #8]
006643e8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006643ec  5e aa f2 eb                                      bl #0x30ed6c
006643f0  28 10 94 e5                                      ldr r1, [r4, #0x28]
006643f4  00 b0 a0 e1                                      mov fp, r0
006643f8  08 00 a0 e1                                      mov r0, r8
006643fc  5a aa f2 eb                                      bl #0x30ed6c
00664400  00 10 a0 e1                                      mov r1, r0
00664404  0b 00 a0 e1                                      mov r0, fp
00664408  e7 a7 f2 eb                                      bl #0x30e3ac
0066440c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00664410  00 b0 a0 e1                                      mov fp, r0
00664414  09 00 a0 e1                                      mov r0, sb
00664418  53 aa f2 eb                                      bl #0x30ed6c
0066441c  00 10 a0 e1                                      mov r1, r0
00664420  0b 00 a0 e1                                      mov r0, fp
00664424  de a9 f2 eb                                      bl #0x30eba4
00664428  34 00 85 e5                                      str r0, [r5, #0x34]
0066442c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00664430  08 00 a0 e1                                      mov r0, r8
00664434  4c aa f2 eb                                      bl #0x30ed6c
00664438  08 10 94 e5                                      ldr r1, [r4, #8]
0066443c  00 80 a0 e1                                      mov r8, r0
00664440  28 00 9d e5                                      ldr r0, [sp, #0x28]
00664444  48 aa f2 eb                                      bl #0x30ed6c
00664448  00 10 a0 e1                                      mov r1, r0
0066444c  08 00 a0 e1                                      mov r0, r8
00664450  d5 a7 f2 eb                                      bl #0x30e3ac
00664454  38 10 94 e5                                      ldr r1, [r4, #0x38]
00664458  00 80 a0 e1                                      mov r8, r0
0066445c  0a 00 a0 e1                                      mov r0, sl
00664460  41 aa f2 eb                                      bl #0x30ed6c
00664464  00 10 a0 e1                                      mov r1, r0
00664468  08 00 a0 e1                                      mov r0, r8
0066446c  ce a7 f2 eb                                      bl #0x30e3ac
00664470  38 00 85 e5                                      str r0, [r5, #0x38]
00664474  08 10 94 e5                                      ldr r1, [r4, #8]
00664478  07 00 a0 e1                                      mov r0, r7
0066447c  3a aa f2 eb                                      bl #0x30ed6c
00664480  18 10 94 e5                                      ldr r1, [r4, #0x18]
00664484  00 70 a0 e1                                      mov r7, r0
00664488  09 00 a0 e1                                      mov r0, sb
0066448c  36 aa f2 eb                                      bl #0x30ed6c
00664490  00 10 a0 e1                                      mov r1, r0
00664494  07 00 a0 e1                                      mov r0, r7
00664498  c3 a7 f2 eb                                      bl #0x30e3ac
0066449c  28 10 94 e5                                      ldr r1, [r4, #0x28]
006644a0  00 70 a0 e1                                      mov r7, r0
006644a4  0a 00 a0 e1                                      mov r0, sl
006644a8  2f aa f2 eb                                      bl #0x30ed6c
006644ac  00 10 a0 e1                                      mov r1, r0
006644b0  07 00 a0 e1                                      mov r0, r7
006644b4  ba a9 f2 eb                                      bl #0x30eba4
006644b8  3c 00 85 e5                                      str r0, [r5, #0x3c]
006644bc  00 20 9d e5                                      ldr r2, [sp]
006644c0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006644c4  fe 05 a0 e3                                      mov r0, #0x3f800000
006644c8  02 40 a0 e1                                      mov r4, r2
006644cc  f0 a9 f2 eb                                      bl #0x30ec94
006644d0  00 70 a0 e1                                      mov r7, r0
006644d4  04 00 95 e7                                      ldr r0, [r5, r4]
006644d8  07 10 a0 e1                                      mov r1, r7
006644dc  22 aa f2 eb                                      bl #0x30ed6c
006644e0  04 00 85 e7                                      str r0, [r5, r4]
006644e4  04 40 84 e2                                      add r4, r4, #4
006644e8  40 00 54 e3                                      cmp r4, #0x40
006644ec  f8 ff ff 1a                                      bne #0x6644d4
006644f0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006644f4  01 00 a0 e3                                      mov r0, #1
006644f8  02 30 96 e7                                      ldr r3, [r6, r2]
006644fc  00 20 a0 e3                                      mov r2, #0
00664500  40 20 c5 e5                                      strb r2, [r5, #0x40]
00664504  40 30 d3 e5                                      ldrb r3, [r3, #0x40]
00664508  40 30 c5 e5                                      strb r3, [r5, #0x40]
0066450c  34 d0 8d e2                                      add sp, sp, #0x34
00664510  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00664514  04 10 a0 e1                                      mov r1, r4
00664518  41 20 a0 e3                                      mov r2, #0x41
0066451c  d1 a8 f2 eb                                      bl #0x30e868
00664520  01 00 a0 e3                                      mov r0, #1
00664524  f8 ff ff ea                                      b #0x66450c
; mapping-symbol data/literal pool
00664528  98 0d 33 00 30 28 00 00                          .byte 0x98, 0x0d, 0x33, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x00669d4c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.0
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.0]
; decoder-mode: arm
00669d4c  00 30 a0 e3                                      mov r3, #0
00669d50  10 40 2d e9                                      push {r4, lr}
00669d54  41 20 a0 e3                                      mov r2, #0x41
00669d58  00 40 a0 e1                                      mov r4, r0
00669d5c  40 30 c0 e5                                      strb r3, [r0, #0x40]
00669d60  c0 92 f2 eb                                      bl #0x30e868
00669d64  04 00 a0 e1                                      mov r0, r4
00669d68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066bf24, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.2
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.2]
; decoder-mode: arm
0066bf24  00 30 a0 e3                                      mov r3, #0
0066bf28  10 40 2d e9                                      push {r4, lr}
0066bf2c  41 20 a0 e3                                      mov r2, #0x41
0066bf30  00 40 a0 e1                                      mov r4, r0
0066bf34  40 30 c0 e5                                      strb r3, [r0, #0x40]
0066bf38  4a 8a f2 eb                                      bl #0x30e868
0066bf3c  04 00 a0 e1                                      mov r0, r4
0066bf40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066fb64, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.3
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.3]
; decoder-mode: arm
0066fb64  00 30 a0 e3                                      mov r3, #0
0066fb68  10 40 2d e9                                      push {r4, lr}
0066fb6c  41 20 a0 e3                                      mov r2, #0x41
0066fb70  00 40 a0 e1                                      mov r4, r0
0066fb74  40 30 c0 e5                                      strb r3, [r0, #0x40]
0066fb78  3a 7b f2 eb                                      bl #0x30e868
0066fb7c  04 00 a0 e1                                      mov r0, r4
0066fb80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006c0ce4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ENS2_12eConstructorE.clone.1
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float>::eConstructor) [clone .clone.1]
; decoder-mode: arm
006c0ce4  00 10 a0 e3                                      mov r1, #0
006c0ce8  10 40 2d e9                                      push {r4, lr}
006c0cec  40 20 a0 e3                                      mov r2, #0x40
006c0cf0  40 10 c0 e5                                      strb r1, [r0, #0x40]
006c0cf4  00 40 a0 e1                                      mov r4, r0
006c0cf8  d8 35 f1 eb                                      bl #0x30e460
006c0cfc  fe 35 a0 e3                                      mov r3, #0x3f800000
006c0d00  01 20 a0 e3                                      mov r2, #1
006c0d04  40 20 c4 e5                                      strb r2, [r4, #0x40]
006c0d08  3c 30 84 e5                                      str r3, [r4, #0x3c]
006c0d0c  00 30 84 e5                                      str r3, [r4]
006c0d10  14 30 84 e5                                      str r3, [r4, #0x14]
006c0d14  28 30 84 e5                                      str r3, [r4, #0x28]
006c0d18  04 00 a0 e1                                      mov r0, r4
006c0d1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006c7cf0, declared_size=556, range_size=556, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfE18setRotationRadiansERKNS0_8vector3dIfEE
; demangled: glitch::core::CMatrix4<float>::setRotationRadians(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006c7cf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c7cf4  00 60 91 e5                                      ldr r6, [r1]
006c7cf8  34 d0 4d e2                                      sub sp, sp, #0x34
006c7cfc  00 40 a0 e1                                      mov r4, r0
006c7d00  06 00 a0 e1                                      mov r0, r6
006c7d04  01 50 a0 e1                                      mov r5, r1
006c7d08  91 1a f1 eb                                      bl #0x30e754
006c7d0c  e4 1a f1 eb                                      bl #0x30e8a4
006c7d10  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
006c7d14  06 00 a0 e1                                      mov r0, r6
006c7d18  7a 1b f1 eb                                      bl #0x30eb08
006c7d1c  e0 1a f1 eb                                      bl #0x30e8a4
006c7d20  04 60 95 e5                                      ldr r6, [r5, #4]
006c7d24  00 a0 a0 e1                                      mov sl, r0
006c7d28  01 b0 a0 e1                                      mov fp, r1
006c7d2c  06 00 a0 e1                                      mov r0, r6
006c7d30  87 1a f1 eb                                      bl #0x30e754
006c7d34  da 1a f1 eb                                      bl #0x30e8a4
006c7d38  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
006c7d3c  06 00 a0 e1                                      mov r0, r6
006c7d40  70 1b f1 eb                                      bl #0x30eb08
006c7d44  04 00 8d e5                                      str r0, [sp, #4]
006c7d48  d5 1a f1 eb                                      bl #0x30e8a4
006c7d4c  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
006c7d50  08 50 95 e5                                      ldr r5, [r5, #8]
006c7d54  05 00 a0 e1                                      mov r0, r5
006c7d58  7d 1a f1 eb                                      bl #0x30e754
006c7d5c  d0 1a f1 eb                                      bl #0x30e8a4
006c7d60  00 80 a0 e1                                      mov r8, r0
006c7d64  05 00 a0 e1                                      mov r0, r5
006c7d68  01 90 a0 e1                                      mov sb, r1
006c7d6c  65 1b f1 eb                                      bl #0x30eb08
006c7d70  cb 1a f1 eb                                      bl #0x30e8a4
006c7d74  00 30 a0 e3                                      mov r3, #0
006c7d78  40 30 c4 e5                                      strb r3, [r4, #0x40]
006c7d7c  00 60 a0 e1                                      mov r6, r0
006c7d80  01 70 a0 e1                                      mov r7, r1
006c7d84  08 20 a0 e1                                      mov r2, r8
006c7d88  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
006c7d8c  09 30 a0 e1                                      mov r3, sb
006c7d90  47 1b f1 eb                                      bl #0x30eab4
006c7d94  41 1a f1 eb                                      bl #0x30e6a0
006c7d98  00 00 84 e5                                      str r0, [r4]
006c7d9c  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
006c7da0  06 20 a0 e1                                      mov r2, r6
006c7da4  07 30 a0 e1                                      mov r3, r7
006c7da8  41 1b f1 eb                                      bl #0x30eab4
006c7dac  3b 1a f1 eb                                      bl #0x30e6a0
006c7db0  04 c0 9d e5                                      ldr ip, [sp, #4]
006c7db4  04 00 84 e5                                      str r0, [r4, #4]
006c7db8  0b 10 a0 e1                                      mov r1, fp
006c7dbc  02 c1 8c e2                                      add ip, ip, #0x80000000
006c7dc0  08 c0 84 e5                                      str ip, [r4, #8]
006c7dc4  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
006c7dc8  0a 00 a0 e1                                      mov r0, sl
006c7dcc  38 1b f1 eb                                      bl #0x30eab4
006c7dd0  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
006c7dd4  f8 00 cd e1                                      strd r0, r1, [sp, #8]
006c7dd8  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
006c7ddc  34 1b f1 eb                                      bl #0x30eab4
006c7de0  08 20 a0 e1                                      mov r2, r8
006c7de4  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
006c7de8  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
006c7dec  09 30 a0 e1                                      mov r3, sb
006c7df0  2f 1b f1 eb                                      bl #0x30eab4
006c7df4  06 20 a0 e1                                      mov r2, r6
006c7df8  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
006c7dfc  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
006c7e00  07 30 a0 e1                                      mov r3, r7
006c7e04  2a 1b f1 eb                                      bl #0x30eab4
006c7e08  00 20 a0 e1                                      mov r2, r0
006c7e0c  01 30 a0 e1                                      mov r3, r1
006c7e10  d8 02 cd e1                                      ldrd r0, r1, [sp, #0x28]
006c7e14  c4 19 f1 eb                                      bl #0x30e52c
006c7e18  20 1a f1 eb                                      bl #0x30e6a0
006c7e1c  06 20 a0 e1                                      mov r2, r6
006c7e20  10 00 84 e5                                      str r0, [r4, #0x10]
006c7e24  07 30 a0 e1                                      mov r3, r7
006c7e28  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
006c7e2c  20 1b f1 eb                                      bl #0x30eab4
006c7e30  08 20 a0 e1                                      mov r2, r8
006c7e34  f8 00 cd e1                                      strd r0, r1, [sp, #8]
006c7e38  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
006c7e3c  09 30 a0 e1                                      mov r3, sb
006c7e40  1b 1b f1 eb                                      bl #0x30eab4
006c7e44  00 20 a0 e1                                      mov r2, r0
006c7e48  01 30 a0 e1                                      mov r3, r1
006c7e4c  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
006c7e50  3b 1b f1 eb                                      bl #0x30eb44
006c7e54  11 1a f1 eb                                      bl #0x30e6a0
006c7e58  14 00 84 e5                                      str r0, [r4, #0x14]
006c7e5c  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
006c7e60  0a 00 a0 e1                                      mov r0, sl
006c7e64  0b 10 a0 e1                                      mov r1, fp
006c7e68  11 1b f1 eb                                      bl #0x30eab4
006c7e6c  0b 1a f1 eb                                      bl #0x30e6a0
006c7e70  18 00 84 e5                                      str r0, [r4, #0x18]
006c7e74  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
006c7e78  08 20 a0 e1                                      mov r2, r8
006c7e7c  09 30 a0 e1                                      mov r3, sb
006c7e80  0b 1b f1 eb                                      bl #0x30eab4
006c7e84  06 20 a0 e1                                      mov r2, r6
006c7e88  f8 00 cd e1                                      strd r0, r1, [sp, #8]
006c7e8c  07 30 a0 e1                                      mov r3, r7
006c7e90  0a 00 a0 e1                                      mov r0, sl
006c7e94  0b 10 a0 e1                                      mov r1, fp
006c7e98  05 1b f1 eb                                      bl #0x30eab4
006c7e9c  00 20 a0 e1                                      mov r2, r0
006c7ea0  01 30 a0 e1                                      mov r3, r1
006c7ea4  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
006c7ea8  25 1b f1 eb                                      bl #0x30eb44
006c7eac  fb 19 f1 eb                                      bl #0x30e6a0
006c7eb0  20 00 84 e5                                      str r0, [r4, #0x20]
006c7eb4  d0 01 cd e1                                      ldrd r0, r1, [sp, #0x10]
006c7eb8  06 20 a0 e1                                      mov r2, r6
006c7ebc  07 30 a0 e1                                      mov r3, r7
006c7ec0  fb 1a f1 eb                                      bl #0x30eab4
006c7ec4  08 20 a0 e1                                      mov r2, r8
006c7ec8  00 60 a0 e1                                      mov r6, r0
006c7ecc  01 70 a0 e1                                      mov r7, r1
006c7ed0  09 30 a0 e1                                      mov r3, sb
006c7ed4  0a 00 a0 e1                                      mov r0, sl
006c7ed8  0b 10 a0 e1                                      mov r1, fp
006c7edc  f4 1a f1 eb                                      bl #0x30eab4
006c7ee0  00 20 a0 e1                                      mov r2, r0
006c7ee4  01 30 a0 e1                                      mov r3, r1
006c7ee8  06 00 a0 e1                                      mov r0, r6
006c7eec  07 10 a0 e1                                      mov r1, r7
006c7ef0  8d 19 f1 eb                                      bl #0x30e52c
006c7ef4  e9 19 f1 eb                                      bl #0x30e6a0
006c7ef8  24 00 84 e5                                      str r0, [r4, #0x24]
006c7efc  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
006c7f00  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
006c7f04  ea 1a f1 eb                                      bl #0x30eab4
006c7f08  e4 19 f1 eb                                      bl #0x30e6a0
006c7f0c  28 00 84 e5                                      str r0, [r4, #0x28]
006c7f10  04 00 a0 e1                                      mov r0, r4
006c7f14  34 d0 8d e2                                      add sp, sp, #0x34
006c7f18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006f6f68, declared_size=32, range_size=32, mode=arm
; class-group: glitch::core::CMatrix4<float>
; alias: _ZN6glitch4core8CMatrix4IfEC1ERKS2_NS2_12eConstructorE.clone.1
; demangled: glitch::core::CMatrix4<float>::CMatrix4(glitch::core::CMatrix4<float> const&, glitch::core::CMatrix4<float>::eConstructor) [clone .clone.1]
; decoder-mode: arm
006f6f68  00 30 a0 e3                                      mov r3, #0
006f6f6c  10 40 2d e9                                      push {r4, lr}
006f6f70  41 20 a0 e3                                      mov r2, #0x41
006f6f74  00 40 a0 e1                                      mov r4, r0
006f6f78  40 30 c0 e5                                      strb r3, [r0, #0x40]
006f6f7c  39 5e f0 eb                                      bl #0x30e868
006f6f80  04 00 a0 e1                                      mov r0, r4
006f6f84  10 80 bd e8                                      pop {r4, pc}
