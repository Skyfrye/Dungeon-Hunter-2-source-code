; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514640, declared_size=40, range_size=40, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute4NextEv
; demangled: TiXmlAttribute::Next() const
; decoder-mode: arm
00514640  48 00 90 e5                                      ldr r0, [r0, #0x48]
00514644  40 20 90 e5                                      ldr r2, [r0, #0x40]
00514648  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
0051464c  03 00 52 e1                                      cmp r2, r3
00514650  1e ff 2f 11                                      bxne lr
00514654  28 20 90 e5                                      ldr r2, [r0, #0x28]
00514658  24 30 90 e5                                      ldr r3, [r0, #0x24]
0051465c  03 00 52 e1                                      cmp r2, r3
00514660  00 00 a0 03                                      moveq r0, #0
00514664  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514668, declared_size=40, range_size=40, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute8PreviousEv
; demangled: TiXmlAttribute::Previous() const
; decoder-mode: arm
00514668  44 00 90 e5                                      ldr r0, [r0, #0x44]
0051466c  40 20 90 e5                                      ldr r2, [r0, #0x40]
00514670  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00514674  03 00 52 e1                                      cmp r2, r3
00514678  1e ff 2f 11                                      bxne lr
0051467c  28 20 90 e5                                      ldr r2, [r0, #0x28]
00514680  24 30 90 e5                                      ldr r3, [r0, #0x24]
00514684  03 00 52 e1                                      cmp r2, r3
00514688  00 00 a0 03                                      moveq r0, #0
0051468c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005153b0, declared_size=12, range_size=12, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute11DoubleValueEv
; demangled: TiXmlAttribute::DoubleValue() const
; decoder-mode: arm
005153b0  40 00 90 e5                                      ldr r0, [r0, #0x40]
005153b4  00 10 a0 e3                                      mov r1, #0
005153b8  bb e4 f7 ea                                      b #0x30e6ac

; FUNCTION 0x00515450, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute8IntValueEv
; demangled: TiXmlAttribute::IntValue() const
; decoder-mode: arm
00515450  40 00 90 e5                                      ldr r0, [r0, #0x40]
00515454  0e e3 f7 ea                                      b #0x30e094

; FUNCTION 0x00515714, declared_size=44, range_size=44, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute16QueryDoubleValueEPd
; demangled: TiXmlAttribute::QueryDoubleValue(double*) const
; decoder-mode: arm
00515714  10 40 2d e9                                      push {r4, lr}
00515718  01 20 a0 e1                                      mov r2, r1
0051571c  18 10 9f e5                                      ldr r1, [pc, #0x18]
00515720  40 00 90 e5                                      ldr r0, [r0, #0x40]
00515724  01 10 8f e0                                      add r1, pc, r1
00515728  d1 e2 f7 eb                                      bl #0x30e274
0051572c  01 00 50 e3                                      cmp r0, #1
00515730  02 00 a0 13                                      movne r0, #2
00515734  00 00 a0 03                                      moveq r0, #0
00515738  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0051573c  d4 69 3c 00                                      .byte 0xd4, 0x69, 0x3c, 0x00

; FUNCTION 0x00515798, declared_size=44, range_size=44, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute13QueryIntValueEPi
; demangled: TiXmlAttribute::QueryIntValue(int*) const
; decoder-mode: arm
00515798  10 40 2d e9                                      push {r4, lr}
0051579c  01 20 a0 e1                                      mov r2, r1
005157a0  18 10 9f e5                                      ldr r1, [pc, #0x18]
005157a4  40 00 90 e5                                      ldr r0, [r0, #0x40]
005157a8  01 10 8f e0                                      add r1, pc, r1
005157ac  b0 e2 f7 eb                                      bl #0x30e274
005157b0  01 00 50 e3                                      cmp r0, #1
005157b4  02 00 a0 13                                      movne r0, #2
005157b8  00 00 a0 03                                      moveq r0, #0
005157bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005157c0  08 c7 3a 00                                      .byte 0x08, 0xc7, 0x3a, 0x00

; FUNCTION 0x00515cd0, declared_size=144, range_size=144, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttributeC1Ev
; demangled: TiXmlAttribute::TiXmlAttribute()
; decoder-mode: arm
00515cd0  80 30 9f e5                                      ldr r3, [pc, #0x80]
00515cd4  80 10 9f e5                                      ldr r1, [pc, #0x80]
00515cd8  70 40 2d e9                                      push {r4, r5, r6, lr}
00515cdc  03 30 8f e0                                      add r3, pc, r3
00515ce0  01 10 93 e7                                      ldr r1, [r3, r1]
00515ce4  00 40 a0 e1                                      mov r4, r0
00515ce8  00 50 a0 e3                                      mov r5, #0
00515cec  00 20 a0 e1                                      mov r2, r0
00515cf0  08 10 81 e2                                      add r1, r1, #8
00515cf4  00 00 e0 e3                                      mvn r0, #0
00515cf8  04 00 84 e5                                      str r0, [r4, #4]
00515cfc  08 00 84 e5                                      str r0, [r4, #8]
00515d00  0c 50 84 e5                                      str r5, [r4, #0xc]
00515d04  14 10 82 e4                                      str r1, [r2], #0x14
00515d08  02 00 a0 e1                                      mov r0, r2
00515d0c  24 20 84 e5                                      str r2, [r4, #0x24]
00515d10  28 20 84 e5                                      str r2, [r4, #0x28]
00515d14  10 10 a0 e3                                      mov r1, #0x10
00515d18  57 ee f7 eb                                      bl #0x31167c
00515d1c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00515d20  2c 30 84 e2                                      add r3, r4, #0x2c
00515d24  03 00 a0 e1                                      mov r0, r3
00515d28  00 50 c2 e5                                      strb r5, [r2]
00515d2c  10 10 a0 e3                                      mov r1, #0x10
00515d30  3c 30 84 e5                                      str r3, [r4, #0x3c]
00515d34  40 30 84 e5                                      str r3, [r4, #0x40]
00515d38  4f ee f7 eb                                      bl #0x31167c
00515d3c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00515d40  04 00 a0 e1                                      mov r0, r4
00515d44  00 50 c3 e5                                      strb r5, [r3]
00515d48  44 50 84 e5                                      str r5, [r4, #0x44]
00515d4c  10 50 84 e5                                      str r5, [r4, #0x10]
00515d50  48 50 84 e5                                      str r5, [r4, #0x48]
00515d54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515d58  b4 ed 47 00 08 06 00 00                          .byte 0xb4, 0xed, 0x47, 0x00, 0x08, 0x06, 0x00, 0x00

; FUNCTION 0x00516334, declared_size=204, range_size=204, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttributeC1ERKSsS1_
; demangled: TiXmlAttribute::TiXmlAttribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00516334  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00516338  bc c0 9f e5                                      ldr ip, [pc, #0xbc]
0051633c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00516340  03 30 8f e0                                      add r3, pc, r3
00516344  0c c0 93 e7                                      ldr ip, [r3, ip]
00516348  00 40 a0 e1                                      mov r4, r0
0051634c  00 50 a0 e1                                      mov r5, r0
00516350  00 70 a0 e3                                      mov r7, #0
00516354  08 c0 8c e2                                      add ip, ip, #8
00516358  00 00 e0 e3                                      mvn r0, #0
0051635c  04 00 84 e5                                      str r0, [r4, #4]
00516360  08 00 84 e5                                      str r0, [r4, #8]
00516364  0c 70 84 e5                                      str r7, [r4, #0xc]
00516368  14 c0 85 e4                                      str ip, [r5], #0x14
0051636c  01 a0 a0 e1                                      mov sl, r1
00516370  05 00 a0 e1                                      mov r0, r5
00516374  10 10 a0 e3                                      mov r1, #0x10
00516378  24 50 84 e5                                      str r5, [r4, #0x24]
0051637c  28 50 84 e5                                      str r5, [r4, #0x28]
00516380  02 80 a0 e1                                      mov r8, r2
00516384  bc ec f7 eb                                      bl #0x31167c
00516388  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051638c  2c 60 84 e2                                      add r6, r4, #0x2c
00516390  06 00 a0 e1                                      mov r0, r6
00516394  00 70 c3 e5                                      strb r7, [r3]
00516398  10 10 a0 e3                                      mov r1, #0x10
0051639c  3c 60 84 e5                                      str r6, [r4, #0x3c]
005163a0  40 60 84 e5                                      str r6, [r4, #0x40]
005163a4  b4 ec f7 eb                                      bl #0x31167c
005163a8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005163ac  0a 00 55 e1                                      cmp r5, sl
005163b0  00 70 c3 e5                                      strb r7, [r3]
005163b4  03 00 00 0a                                      beq #0x5163c8
005163b8  05 00 a0 e1                                      mov r0, r5
005163bc  10 20 9a e5                                      ldr r2, [sl, #0x10]
005163c0  14 10 9a e5                                      ldr r1, [sl, #0x14]
005163c4  85 e9 f7 eb                                      bl #0x3109e0
005163c8  08 00 56 e1                                      cmp r6, r8
005163cc  03 00 00 0a                                      beq #0x5163e0
005163d0  06 00 a0 e1                                      mov r0, r6
005163d4  10 20 98 e5                                      ldr r2, [r8, #0x10]
005163d8  14 10 98 e5                                      ldr r1, [r8, #0x14]
005163dc  7f e9 f7 eb                                      bl #0x3109e0
005163e0  00 30 a0 e3                                      mov r3, #0
005163e4  44 30 84 e5                                      str r3, [r4, #0x44]
005163e8  10 30 84 e5                                      str r3, [r4, #0x10]
005163ec  48 30 84 e5                                      str r3, [r4, #0x48]
005163f0  04 00 a0 e1                                      mov r0, r4
005163f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005163f8  50 e7 47 00 08 06 00 00                          .byte 0x50, 0xe7, 0x47, 0x00, 0x08, 0x06, 0x00, 0x00

; FUNCTION 0x00516854, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttribute14SetDoubleValueEd
; demangled: TiXmlAttribute::SetDoubleValue(double)
; decoder-mode: arm
00516854  70 40 2d e9                                      push {r4, r5, r6, lr}
00516858  68 10 9f e5                                      ldr r1, [pc, #0x68]
0051685c  68 c0 9f e5                                      ldr ip, [pc, #0x68]
00516860  11 de 4d e2                                      sub sp, sp, #0x110
00516864  01 10 8f e0                                      add r1, pc, r1
00516868  0c 50 91 e7                                      ldr r5, [r1, ip]
0051686c  f0 20 cd e1                                      strd r2, r3, [sp]
00516870  58 20 9f e5                                      ldr r2, [pc, #0x58]
00516874  00 30 95 e5                                      ldr r3, [r5]
00516878  0c 40 8d e2                                      add r4, sp, #0xc
0051687c  02 20 8f e0                                      add r2, pc, r2
00516880  01 1c a0 e3                                      mov r1, #0x100
00516884  00 60 a0 e1                                      mov r6, r0
00516888  04 00 a0 e1                                      mov r0, r4
0051688c  0c 31 8d e5                                      str r3, [sp, #0x10c]
00516890  6b de f7 eb                                      bl #0x30e244
00516894  04 00 a0 e1                                      mov r0, r4
00516898  6d dd f7 eb                                      bl #0x30de54
0051689c  04 10 a0 e1                                      mov r1, r4
005168a0  00 20 84 e0                                      add r2, r4, r0
005168a4  2c 00 86 e2                                      add r0, r6, #0x2c
005168a8  4c e8 f7 eb                                      bl #0x3109e0
005168ac  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
005168b0  00 30 95 e5                                      ldr r3, [r5]
005168b4  03 00 52 e1                                      cmp r2, r3
005168b8  01 00 00 1a                                      bne #0x5168c4
005168bc  11 de 8d e2                                      add sp, sp, #0x110
005168c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005168c4  91 de f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005168c8  2c e2 47 00 ac 40 00 00 7c 58 3c 00              .byte 0x2c, 0xe2, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x7c, 0x58, 0x3c, 0x00

; FUNCTION 0x005168d4, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttribute11SetIntValueEi
; demangled: TiXmlAttribute::SetIntValue(int)
; decoder-mode: arm
005168d4  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
005168d8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005168dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005168e0  0c c0 8f e0                                      add ip, pc, ip
005168e4  03 50 9c e7                                      ldr r5, [ip, r3]
005168e8  60 20 9f e5                                      ldr r2, [pc, #0x60]
005168ec  48 d0 4d e2                                      sub sp, sp, #0x48
005168f0  00 e0 95 e5                                      ldr lr, [r5]
005168f4  04 40 8d e2                                      add r4, sp, #4
005168f8  01 30 a0 e1                                      mov r3, r1
005168fc  02 20 8f e0                                      add r2, pc, r2
00516900  40 10 a0 e3                                      mov r1, #0x40
00516904  00 60 a0 e1                                      mov r6, r0
00516908  04 00 a0 e1                                      mov r0, r4
0051690c  44 e0 8d e5                                      str lr, [sp, #0x44]
00516910  4b de f7 eb                                      bl #0x30e244
00516914  04 00 a0 e1                                      mov r0, r4
00516918  4d dd f7 eb                                      bl #0x30de54
0051691c  04 10 a0 e1                                      mov r1, r4
00516920  00 20 84 e0                                      add r2, r4, r0
00516924  2c 00 86 e2                                      add r0, r6, #0x2c
00516928  2c e8 f7 eb                                      bl #0x3109e0
0051692c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00516930  00 30 95 e5                                      ldr r3, [r5]
00516934  03 00 52 e1                                      cmp r2, r3
00516938  01 00 00 1a                                      bne #0x516944
0051693c  48 d0 8d e2                                      add sp, sp, #0x48
00516940  70 80 bd e8                                      pop {r4, r5, r6, pc}
00516944  71 de f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00516948  b0 e1 47 00 ac 40 00 00 b4 b5 3a 00              .byte 0xb0, 0xe1, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0xb5, 0x3a, 0x00

; FUNCTION 0x00517034, declared_size=200, range_size=200, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttributeC1EPKcS1_
; demangled: TiXmlAttribute::TiXmlAttribute(char const*, char const*)
; decoder-mode: arm
00517034  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00517038  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
0051703c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00517040  03 30 8f e0                                      add r3, pc, r3
00517044  0c c0 93 e7                                      ldr ip, [r3, ip]
00517048  00 40 a0 e1                                      mov r4, r0
0051704c  00 50 a0 e3                                      mov r5, #0
00517050  08 c0 8c e2                                      add ip, ip, #8
00517054  00 60 a0 e1                                      mov r6, r0
00517058  00 00 e0 e3                                      mvn r0, #0
0051705c  04 00 84 e5                                      str r0, [r4, #4]
00517060  08 00 84 e5                                      str r0, [r4, #8]
00517064  0c 50 84 e5                                      str r5, [r4, #0xc]
00517068  14 c0 86 e4                                      str ip, [r6], #0x14
0051706c  01 a0 a0 e1                                      mov sl, r1
00517070  06 00 a0 e1                                      mov r0, r6
00517074  24 60 84 e5                                      str r6, [r4, #0x24]
00517078  28 60 84 e5                                      str r6, [r4, #0x28]
0051707c  10 10 a0 e3                                      mov r1, #0x10
00517080  02 80 a0 e1                                      mov r8, r2
00517084  7c e9 f7 eb                                      bl #0x31167c
00517088  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051708c  2c 70 84 e2                                      add r7, r4, #0x2c
00517090  10 10 a0 e3                                      mov r1, #0x10
00517094  00 50 c3 e5                                      strb r5, [r3]
00517098  07 00 a0 e1                                      mov r0, r7
0051709c  3c 70 84 e5                                      str r7, [r4, #0x3c]
005170a0  40 70 84 e5                                      str r7, [r4, #0x40]
005170a4  74 e9 f7 eb                                      bl #0x31167c
005170a8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005170ac  0a 00 a0 e1                                      mov r0, sl
005170b0  00 50 c3 e5                                      strb r5, [r3]
005170b4  66 db f7 eb                                      bl #0x30de54
005170b8  0a 10 a0 e1                                      mov r1, sl
005170bc  00 20 8a e0                                      add r2, sl, r0
005170c0  06 00 a0 e1                                      mov r0, r6
005170c4  45 e6 f7 eb                                      bl #0x3109e0
005170c8  08 00 a0 e1                                      mov r0, r8
005170cc  60 db f7 eb                                      bl #0x30de54
005170d0  08 10 a0 e1                                      mov r1, r8
005170d4  00 20 88 e0                                      add r2, r8, r0
005170d8  07 00 a0 e1                                      mov r0, r7
005170dc  3f e6 f7 eb                                      bl #0x3109e0
005170e0  44 50 84 e5                                      str r5, [r4, #0x44]
005170e4  10 50 84 e5                                      str r5, [r4, #0x10]
005170e8  48 50 84 e5                                      str r5, [r4, #0x48]
005170ec  04 00 a0 e1                                      mov r0, r4
005170f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005170f4  50 da 47 00 08 06 00 00                          .byte 0x50, 0xda, 0x47, 0x00, 0x08, 0x06, 0x00, 0x00

; FUNCTION 0x00517f14, declared_size=508, range_size=508, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute5PrintEP7__sFILEiPSs
; demangled: TiXmlAttribute::Print(__sFILE*, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*) const
; decoder-mode: arm
00517f14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00517f18  d0 51 9f e5                                      ldr r5, [pc, #0x1d0]
00517f1c  d0 a1 9f e5                                      ldr sl, [pc, #0x1d0]
00517f20  44 d0 4d e2                                      sub sp, sp, #0x44
00517f24  05 50 8f e0                                      add r5, pc, r5
00517f28  0a 20 95 e7                                      ldr r2, [r5, sl]
00517f2c  24 60 8d e2                                      add r6, sp, #0x24
00517f30  00 40 a0 e1                                      mov r4, r0
00517f34  00 20 92 e5                                      ldr r2, [r2]
00517f38  06 00 a0 e1                                      mov r0, r6
00517f3c  01 90 a0 e1                                      mov sb, r1
00517f40  10 10 a0 e3                                      mov r1, #0x10
00517f44  3c 20 8d e5                                      str r2, [sp, #0x3c]
00517f48  03 80 a0 e1                                      mov r8, r3
00517f4c  34 60 8d e5                                      str r6, [sp, #0x34]
00517f50  38 60 8d e5                                      str r6, [sp, #0x38]
00517f54  c8 e5 f7 eb                                      bl #0x31167c
00517f58  34 30 9d e5                                      ldr r3, [sp, #0x34]
00517f5c  0c 70 8d e2                                      add r7, sp, #0xc
00517f60  00 b0 a0 e3                                      mov fp, #0
00517f64  00 b0 c3 e5                                      strb fp, [r3]
00517f68  07 00 a0 e1                                      mov r0, r7
00517f6c  10 10 a0 e3                                      mov r1, #0x10
00517f70  1c 70 8d e5                                      str r7, [sp, #0x1c]
00517f74  20 70 8d e5                                      str r7, [sp, #0x20]
00517f78  bf e5 f7 eb                                      bl #0x31167c
00517f7c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00517f80  14 00 84 e2                                      add r0, r4, #0x14
00517f84  06 10 a0 e1                                      mov r1, r6
00517f88  00 b0 c3 e5                                      strb fp, [r3]
00517f8c  4c f5 ff eb                                      bl #0x5154c4
00517f90  2c 00 84 e2                                      add r0, r4, #0x2c
00517f94  07 10 a0 e1                                      mov r1, r7
00517f98  49 f5 ff eb                                      bl #0x5154c4
00517f9c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00517fa0  40 00 94 e5                                      ldr r0, [r4, #0x40]
00517fa4  00 00 51 e1                                      cmp r1, r0
00517fa8  32 00 00 0a                                      beq #0x518078
00517fac  40 20 8d e2                                      add r2, sp, #0x40
00517fb0  22 30 a0 e3                                      mov r3, #0x22
00517fb4  3c 30 62 e5                                      strb r3, [r2, #-0x3c]!
00517fb8  08 30 8d e2                                      add r3, sp, #8
00517fbc  10 db f8 eb                                      bl #0x34ec04
00517fc0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00517fc4  03 00 50 e1                                      cmp r0, r3
00517fc8  2a 00 00 0a                                      beq #0x518078
00517fcc  40 30 94 e5                                      ldr r3, [r4, #0x40]
00517fd0  00 00 63 e0                                      rsb r0, r3, r0
00517fd4  01 00 70 e3                                      cmn r0, #1
00517fd8  26 00 00 0a                                      beq #0x518078
00517fdc  00 00 59 e3                                      cmp sb, #0
00517fe0  05 00 00 0a                                      beq #0x517ffc
00517fe4  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00517fe8  09 00 a0 e1                                      mov r0, sb
00517fec  38 20 9d e5                                      ldr r2, [sp, #0x38]
00517ff0  01 10 8f e0                                      add r1, pc, r1
00517ff4  20 30 9d e5                                      ldr r3, [sp, #0x20]
00517ff8  01 d8 f7 eb                                      bl #0x30e004
00517ffc  00 00 58 e3                                      cmp r8, #0
00518000  11 00 00 0a                                      beq #0x51804c
00518004  38 10 9d e5                                      ldr r1, [sp, #0x38]
00518008  34 20 9d e5                                      ldr r2, [sp, #0x34]
0051800c  08 00 a0 e1                                      mov r0, r8
00518010  fb e1 f7 eb                                      bl #0x310804
00518014  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
00518018  08 00 a0 e1                                      mov r0, r8
0051801c  01 10 8f e0                                      add r1, pc, r1
00518020  02 20 81 e2                                      add r2, r1, #2
00518024  f6 e1 f7 eb                                      bl #0x310804
00518028  20 10 9d e5                                      ldr r1, [sp, #0x20]
0051802c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00518030  08 00 a0 e1                                      mov r0, r8
00518034  f2 e1 f7 eb                                      bl #0x310804
00518038  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0051803c  08 00 a0 e1                                      mov r0, r8
00518040  01 10 8f e0                                      add r1, pc, r1
00518044  01 20 81 e2                                      add r2, r1, #1
00518048  ed e1 f7 eb                                      bl #0x310804
0051804c  07 00 a0 e1                                      mov r0, r7
00518050  55 ee f7 eb                                      bl #0x3139ac
00518054  06 00 a0 e1                                      mov r0, r6
00518058  53 ee f7 eb                                      bl #0x3139ac
0051805c  0a 30 95 e7                                      ldr r3, [r5, sl]
00518060  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00518064  00 30 93 e5                                      ldr r3, [r3]
00518068  03 00 52 e1                                      cmp r2, r3
0051806c  1e 00 00 1a                                      bne #0x5180ec
00518070  44 d0 8d e2                                      add sp, sp, #0x44
00518074  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00518078  00 00 59 e3                                      cmp sb, #0
0051807c  05 00 00 0a                                      beq #0x518098
00518080  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00518084  09 00 a0 e1                                      mov r0, sb
00518088  38 20 9d e5                                      ldr r2, [sp, #0x38]
0051808c  01 10 8f e0                                      add r1, pc, r1
00518090  20 30 9d e5                                      ldr r3, [sp, #0x20]
00518094  da d7 f7 eb                                      bl #0x30e004
00518098  00 00 58 e3                                      cmp r8, #0
0051809c  ea ff ff 0a                                      beq #0x51804c
005180a0  38 10 9d e5                                      ldr r1, [sp, #0x38]
005180a4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005180a8  08 00 a0 e1                                      mov r0, r8
005180ac  d4 e1 f7 eb                                      bl #0x310804
005180b0  50 10 9f e5                                      ldr r1, [pc, #0x50]
005180b4  08 00 a0 e1                                      mov r0, r8
005180b8  01 10 8f e0                                      add r1, pc, r1
005180bc  02 20 81 e2                                      add r2, r1, #2
005180c0  cf e1 f7 eb                                      bl #0x310804
005180c4  20 10 9d e5                                      ldr r1, [sp, #0x20]
005180c8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005180cc  08 00 a0 e1                                      mov r0, r8
005180d0  cb e1 f7 eb                                      bl #0x310804
005180d4  30 10 9f e5                                      ldr r1, [pc, #0x30]
005180d8  08 00 a0 e1                                      mov r0, r8
005180dc  01 10 8f e0                                      add r1, pc, r1
005180e0  01 20 81 e2                                      add r2, r1, #1
005180e4  c6 e1 f7 eb                                      bl #0x310804
005180e8  d7 ff ff ea                                      b #0x51804c
005180ec  87 d8 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005180f0  6c cb 47 00 ac 40 00 00 e0 41 3c 00 bc 41 3c 00  .byte 0x6c, 0xcb, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe0, 0x41, 0x3c, 0x00, 0xbc, 0x41, 0x3c, 0x00
00518100  b0 96 3f 00 3c 41 3c 00 c0 40 3c 00 bc 80 3f 00  .byte 0xb0, 0x96, 0x3f, 0x00, 0x3c, 0x41, 0x3c, 0x00, 0xc0, 0x40, 0x3c, 0x00, 0xbc, 0x80, 0x3f, 0x00

; FUNCTION 0x00518a2c, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlAttribute
; alias: _ZNK14TiXmlAttribute5PrintEP7__sFILEi
; demangled: TiXmlAttribute::Print(__sFILE*, int) const
; decoder-mode: arm
00518a2c  00 30 a0 e3                                      mov r3, #0
00518a30  37 fd ff ea                                      b #0x517f14

; FUNCTION 0x00518a34, declared_size=60, range_size=60, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttributeD1Ev
; demangled: TiXmlAttribute::~TiXmlAttribute()
; decoder-mode: arm
00518a34  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00518a38  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00518a3c  10 40 2d e9                                      push {r4, lr}
00518a40  03 30 8f e0                                      add r3, pc, r3
00518a44  02 20 93 e7                                      ldr r2, [r3, r2]
00518a48  00 40 a0 e1                                      mov r4, r0
00518a4c  08 20 82 e2                                      add r2, r2, #8
00518a50  2c 20 80 e4                                      str r2, [r0], #0x2c
00518a54  d4 eb f7 eb                                      bl #0x3139ac
00518a58  14 00 84 e2                                      add r0, r4, #0x14
00518a5c  d2 eb f7 eb                                      bl #0x3139ac
00518a60  04 00 a0 e1                                      mov r0, r4
00518a64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00518a68  50 c0 47 00 08 06 00 00                          .byte 0x50, 0xc0, 0x47, 0x00, 0x08, 0x06, 0x00, 0x00

; FUNCTION 0x00518e6c, declared_size=88, range_size=88, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttributeD0Ev
; demangled: TiXmlAttribute::~TiXmlAttribute()
; decoder-mode: arm
00518e6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00518e70  40 50 9f e5                                      ldr r5, [pc, #0x40]
00518e74  40 30 9f e5                                      ldr r3, [pc, #0x40]
00518e78  00 40 a0 e1                                      mov r4, r0
00518e7c  05 50 8f e0                                      add r5, pc, r5
00518e80  03 30 95 e7                                      ldr r3, [r5, r3]
00518e84  08 30 83 e2                                      add r3, r3, #8
00518e88  2c 30 80 e4                                      str r3, [r0], #0x2c
00518e8c  c6 ea f7 eb                                      bl #0x3139ac
00518e90  14 00 84 e2                                      add r0, r4, #0x14
00518e94  c4 ea f7 eb                                      bl #0x3139ac
00518e98  20 30 9f e5                                      ldr r3, [pc, #0x20]
00518e9c  04 00 a0 e1                                      mov r0, r4
00518ea0  03 30 95 e7                                      ldr r3, [r5, r3]
00518ea4  08 30 83 e2                                      add r3, r3, #8
00518ea8  00 30 84 e5                                      str r3, [r4]
00518eac  63 dd f7 eb                                      bl #0x310440
00518eb0  04 00 a0 e1                                      mov r0, r4
00518eb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00518eb8  14 bc 47 00 08 06 00 00 d0 21 00 00              .byte 0x14, 0xbc, 0x47, 0x00, 0x08, 0x06, 0x00, 0x00, 0xd0, 0x21, 0x00, 0x00

; FUNCTION 0x0051ad38, declared_size=596, range_size=596, mode=arm
; class-group: TiXmlAttribute
; alias: _ZN14TiXmlAttribute5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlAttribute::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
0051ad38  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051ad3c  00 70 a0 e1                                      mov r7, r0
0051ad40  08 d0 4d e2                                      sub sp, sp, #8
0051ad44  01 00 a0 e1                                      mov r0, r1
0051ad48  03 10 a0 e1                                      mov r1, r3
0051ad4c  03 40 a0 e1                                      mov r4, r3
0051ad50  02 80 a0 e1                                      mov r8, r2
0051ad54  8b f6 ff eb                                      bl #0x518788
0051ad58  18 52 9f e5                                      ldr r5, [pc, #0x218]
0051ad5c  00 60 50 e2                                      subs r6, r0, #0
0051ad60  05 50 8f e0                                      add r5, pc, r5
0051ad64  02 00 00 1a                                      bne #0x51ad74
0051ad68  06 00 a0 e1                                      mov r0, r6
0051ad6c  08 d0 8d e2                                      add sp, sp, #8
0051ad70  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051ad74  d0 30 d6 e1                                      ldrsb r3, [r6]
0051ad78  00 00 53 e3                                      cmp r3, #0
0051ad7c  5a 00 00 0a                                      beq #0x51aeec
0051ad80  00 00 58 e3                                      cmp r8, #0
0051ad84  07 00 00 0a                                      beq #0x51ada8
0051ad88  08 00 a0 e1                                      mov r0, r8
0051ad8c  06 10 a0 e1                                      mov r1, r6
0051ad90  04 20 a0 e1                                      mov r2, r4
0051ad94  1f f6 ff eb                                      bl #0x518618
0051ad98  00 30 98 e5                                      ldr r3, [r8]
0051ad9c  04 30 87 e5                                      str r3, [r7, #4]
0051ada0  04 30 98 e5                                      ldr r3, [r8, #4]
0051ada4  08 30 87 e5                                      str r3, [r7, #8]
0051ada8  06 00 a0 e1                                      mov r0, r6
0051adac  14 10 87 e2                                      add r1, r7, #0x14
0051adb0  04 20 a0 e1                                      mov r2, r4
0051adb4  72 f8 ff eb                                      bl #0x518f84
0051adb8  00 30 50 e2                                      subs r3, r0, #0
0051adbc  47 00 00 0a                                      beq #0x51aee0
0051adc0  d0 30 d3 e1                                      ldrsb r3, [r3]
0051adc4  00 00 53 e3                                      cmp r3, #0
0051adc8  44 00 00 0a                                      beq #0x51aee0
0051adcc  04 10 a0 e1                                      mov r1, r4
0051add0  6c f6 ff eb                                      bl #0x518788
0051add4  00 20 50 e2                                      subs r2, r0, #0
0051add8  45 00 00 0a                                      beq #0x51aef4
0051addc  00 30 d2 e5                                      ldrb r3, [r2]
0051ade0  00 00 53 e3                                      cmp r3, #0
0051ade4  42 00 00 0a                                      beq #0x51aef4
0051ade8  3d 00 53 e3                                      cmp r3, #0x3d
0051adec  40 00 00 1a                                      bne #0x51aef4
0051adf0  01 00 82 e2                                      add r0, r2, #1
0051adf4  04 10 a0 e1                                      mov r1, r4
0051adf8  62 f6 ff eb                                      bl #0x518788
0051adfc  00 60 50 e2                                      subs r6, r0, #0
0051ae00  36 00 00 0a                                      beq #0x51aee0
0051ae04  00 30 d6 e5                                      ldrb r3, [r6]
0051ae08  00 00 53 e3                                      cmp r3, #0
0051ae0c  33 00 00 0a                                      beq #0x51aee0
0051ae10  73 30 af e6                                      sxtb r3, r3
0051ae14  27 00 53 e3                                      cmp r3, #0x27
0051ae18  4b 00 00 0a                                      beq #0x51af4c
0051ae1c  22 00 53 e3                                      cmp r3, #0x22
0051ae20  3c 00 00 0a                                      beq #0x51af18
0051ae24  50 11 9f e5                                      ldr r1, [pc, #0x150]
0051ae28  2c a0 87 e2                                      add sl, r7, #0x2c
0051ae2c  0a 00 a0 e1                                      mov r0, sl
0051ae30  01 10 8f e0                                      add r1, pc, r1
0051ae34  4c 56 f8 eb                                      bl #0x33076c
0051ae38  00 20 d6 e5                                      ldrb r2, [r6]
0051ae3c  00 00 52 e3                                      cmp r2, #0
0051ae40  c8 ff ff 0a                                      beq #0x51ad68
0051ae44  34 31 9f e5                                      ldr r3, [pc, #0x134]
0051ae48  03 90 95 e7                                      ldr sb, [r5, r3]
0051ae4c  05 00 00 ea                                      b #0x51ae68
0051ae50  01 3d f8 eb                                      bl #0x32a25c
0051ae54  01 60 96 e2                                      adds r6, r6, #1
0051ae58  c2 ff ff 0a                                      beq #0x51ad68
0051ae5c  00 20 d6 e5                                      ldrb r2, [r6]
0051ae60  00 00 52 e3                                      cmp r2, #0
0051ae64  bf ff ff 0a                                      beq #0x51ad68
0051ae68  00 10 99 e5                                      ldr r1, [sb]
0051ae6c  72 30 af e6                                      sxtb r3, r2
0051ae70  02 20 81 e0                                      add r2, r1, r2
0051ae74  01 50 d2 e5                                      ldrb r5, [r2, #1]
0051ae78  d5 51 e0 e7                                      ubfx r5, r5, #3, #1
0051ae7c  0a 00 53 e3                                      cmp r3, #0xa
0051ae80  01 50 85 03                                      orreq r5, r5, #1
0051ae84  00 00 55 e3                                      cmp r5, #0
0051ae88  b6 ff ff 1a                                      bne #0x51ad68
0051ae8c  0d 00 53 e3                                      cmp r3, #0xd
0051ae90  b4 ff ff 0a                                      beq #0x51ad68
0051ae94  2f 00 53 e3                                      cmp r3, #0x2f
0051ae98  03 10 a0 e1                                      mov r1, r3
0051ae9c  0a 00 a0 e1                                      mov r0, sl
0051aea0  b0 ff ff 0a                                      beq #0x51ad68
0051aea4  3e 00 53 e3                                      cmp r3, #0x3e
0051aea8  ae ff ff 0a                                      beq #0x51ad68
0051aeac  27 00 53 e3                                      cmp r3, #0x27
0051aeb0  22 00 53 13                                      cmpne r3, #0x22
0051aeb4  e5 ff ff 1a                                      bne #0x51ae50
0051aeb8  10 00 97 e5                                      ldr r0, [r7, #0x10]
0051aebc  00 00 50 e3                                      cmp r0, #0
0051aec0  09 00 00 0a                                      beq #0x51aeec
0051aec4  06 20 a0 e1                                      mov r2, r6
0051aec8  08 30 a0 e1                                      mov r3, r8
0051aecc  07 10 a0 e3                                      mov r1, #7
0051aed0  00 40 8d e5                                      str r4, [sp]
0051aed4  05 60 a0 e1                                      mov r6, r5
0051aed8  82 f9 ff eb                                      bl #0x5194e8
0051aedc  a1 ff ff ea                                      b #0x51ad68
0051aee0  10 00 97 e5                                      ldr r0, [r7, #0x10]
0051aee4  00 00 50 e3                                      cmp r0, #0
0051aee8  15 00 00 1a                                      bne #0x51af44
0051aeec  00 60 a0 e3                                      mov r6, #0
0051aef0  9c ff ff ea                                      b #0x51ad68
0051aef4  10 00 97 e5                                      ldr r0, [r7, #0x10]
0051aef8  00 00 50 e3                                      cmp r0, #0
0051aefc  fa ff ff 0a                                      beq #0x51aeec
0051af00  08 30 a0 e1                                      mov r3, r8
0051af04  07 10 a0 e3                                      mov r1, #7
0051af08  00 40 8d e5                                      str r4, [sp]
0051af0c  00 60 a0 e3                                      mov r6, #0
0051af10  74 f9 ff eb                                      bl #0x5194e8
0051af14  93 ff ff ea                                      b #0x51ad68
0051af18  64 30 9f e5                                      ldr r3, [pc, #0x64]
0051af1c  00 c0 a0 e3                                      mov ip, #0
0051af20  01 00 86 e2                                      add r0, r6, #1
0051af24  2c 10 87 e2                                      add r1, r7, #0x2c
0051af28  0c 20 a0 e1                                      mov r2, ip
0051af2c  03 30 8f e0                                      add r3, pc, r3
0051af30  04 40 8d e5                                      str r4, [sp, #4]
0051af34  00 c0 8d e5                                      str ip, [sp]
0051af38  66 f8 ff eb                                      bl #0x5190d8
0051af3c  00 60 a0 e1                                      mov r6, r0
0051af40  88 ff ff ea                                      b #0x51ad68
0051af44  06 20 a0 e1                                      mov r2, r6
0051af48  ec ff ff ea                                      b #0x51af00
0051af4c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0051af50  00 c0 a0 e3                                      mov ip, #0
0051af54  01 00 86 e2                                      add r0, r6, #1
0051af58  2c 10 87 e2                                      add r1, r7, #0x2c
0051af5c  0c 20 a0 e1                                      mov r2, ip
0051af60  03 30 8f e0                                      add r3, pc, r3
0051af64  04 40 8d e5                                      str r4, [sp, #4]
0051af68  00 c0 8d e5                                      str ip, [sp]
0051af6c  59 f8 ff eb                                      bl #0x5190d8
0051af70  00 60 a0 e1                                      mov r6, r0
0051af74  7b ff ff ea                                      b #0x51ad68
; mapping-symbol data/literal pool
0051af78  30 9d 47 00 d8 09 3b 00 dc 1d 00 00 6c 52 3f 00  .byte 0x30, 0x9d, 0x47, 0x00, 0xd8, 0x09, 0x3b, 0x00, 0xdc, 0x1d, 0x00, 0x00, 0x6c, 0x52, 0x3f, 0x00
0051af88  90 67 3f 00                                      .byte 0x90, 0x67, 0x3f, 0x00
