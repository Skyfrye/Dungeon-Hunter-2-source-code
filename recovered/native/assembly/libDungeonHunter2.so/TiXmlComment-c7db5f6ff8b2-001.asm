; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514290, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlComment
; alias: _ZNK12TiXmlComment9ToCommentEv
; demangled: TiXmlComment::ToComment() const
; decoder-mode: arm
00514290  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514294, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlComment9ToCommentEv
; demangled: TiXmlComment::ToComment()
; decoder-mode: arm
00514294  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514690, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlComment
; alias: _ZNK12TiXmlComment6AcceptEP12TiXmlVisitor
; demangled: TiXmlComment::Accept(TiXmlVisitor*) const
; decoder-mode: arm
00514690  10 40 2d e9                                      push {r4, lr}
00514694  01 30 a0 e1                                      mov r3, r1
00514698  00 10 a0 e1                                      mov r1, r0
0051469c  03 00 a0 e1                                      mov r0, r3
005146a0  00 30 93 e5                                      ldr r3, [r3]
005146a4  0f e0 a0 e1                                      mov lr, pc
005146a8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005146ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514b1c, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlCommentD1Ev
; demangled: TiXmlComment::~TiXmlComment()
; decoder-mode: arm
00514b1c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00514b20  24 20 9f e5                                      ldr r2, [pc, #0x24]
00514b24  10 40 2d e9                                      push {r4, lr}
00514b28  03 30 8f e0                                      add r3, pc, r3
00514b2c  02 20 93 e7                                      ldr r2, [r3, r2]
00514b30  00 40 a0 e1                                      mov r4, r0
00514b34  08 20 82 e2                                      add r2, r2, #8
00514b38  00 20 80 e5                                      str r2, [r0]
00514b3c  dc ff ff eb                                      bl #0x514ab4
00514b40  04 00 a0 e1                                      mov r0, r4
00514b44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00514b48  68 ff 47 00 84 0e 00 00                          .byte 0x68, 0xff, 0x47, 0x00, 0x84, 0x0e, 0x00, 0x00

; FUNCTION 0x00515164, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlComment
; alias: _ZNK12TiXmlComment5PrintEP7__sFILEi
; demangled: TiXmlComment::Print(__sFILE*, int) const
; decoder-mode: arm
00515164  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00515168  00 60 52 e2                                      subs r6, r2, #0
0051516c  00 70 a0 e1                                      mov r7, r0
00515170  01 50 a0 e1                                      mov r5, r1
00515174  06 00 00 da                                      ble #0x515194
00515178  00 40 a0 e3                                      mov r4, #0
0051517c  01 40 84 e2                                      add r4, r4, #1
00515180  09 00 a0 e3                                      mov r0, #9
00515184  05 10 a0 e1                                      mov r1, r5
00515188  8b e6 f7 eb                                      bl #0x30ebbc
0051518c  06 00 54 e1                                      cmp r4, r6
00515190  f9 ff ff 1a                                      bne #0x51517c
00515194  10 10 9f e5                                      ldr r1, [pc, #0x10]
00515198  34 20 97 e5                                      ldr r2, [r7, #0x34]
0051519c  05 00 a0 e1                                      mov r0, r5
005151a0  01 10 8f e0                                      add r1, pc, r1
005151a4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005151a8  95 e3 f7 ea                                      b #0x30e004
; mapping-symbol data/literal pool
005151ac  20 6f 3c 00                                      .byte 0x20, 0x6f, 0x3c, 0x00

; FUNCTION 0x00515aa8, declared_size=60, range_size=60, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlCommentD0Ev
; demangled: TiXmlComment::~TiXmlComment()
; decoder-mode: arm
00515aa8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00515aac  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00515ab0  10 40 2d e9                                      push {r4, lr}
00515ab4  03 30 8f e0                                      add r3, pc, r3
00515ab8  02 20 93 e7                                      ldr r2, [r3, r2]
00515abc  00 40 a0 e1                                      mov r4, r0
00515ac0  08 20 82 e2                                      add r2, r2, #8
00515ac4  00 20 80 e5                                      str r2, [r0]
00515ac8  f9 fb ff eb                                      bl #0x514ab4
00515acc  04 00 a0 e1                                      mov r0, r4
00515ad0  5a ea f7 eb                                      bl #0x310440
00515ad4  04 00 a0 e1                                      mov r0, r4
00515ad8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00515adc  dc ef 47 00 84 0e 00 00                          .byte 0xdc, 0xef, 0x47, 0x00, 0x84, 0x0e, 0x00, 0x00

; FUNCTION 0x005169fc, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlComment
; alias: _ZNK12TiXmlComment6CopyToEPS_
; demangled: TiXmlComment::CopyTo(TiXmlComment*) const
; decoder-mode: arm
005169fc  d4 ff ff ea                                      b #0x516954

; FUNCTION 0x00516a00, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlCommentaSERKS_
; demangled: TiXmlComment::operator=(TiXmlComment const&)
; decoder-mode: arm
00516a00  70 40 2d e9                                      push {r4, r5, r6, lr}
00516a04  01 50 a0 e1                                      mov r5, r1
00516a08  00 40 a0 e1                                      mov r4, r0
00516a0c  2d f6 ff eb                                      bl #0x5142c8
00516a10  05 00 a0 e1                                      mov r0, r5
00516a14  04 10 a0 e1                                      mov r1, r4
00516a18  70 40 bd e8                                      pop {r4, r5, r6, lr}
00516a1c  f6 ff ff ea                                      b #0x5169fc

; FUNCTION 0x00516a20, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlCommentC1ERKS_
; demangled: TiXmlComment::TiXmlComment(TiXmlComment const&)
; decoder-mode: arm
00516a20  70 40 2d e9                                      push {r4, r5, r6, lr}
00516a24  01 60 a0 e1                                      mov r6, r1
00516a28  30 40 9f e5                                      ldr r4, [pc, #0x30]
00516a2c  02 10 a0 e3                                      mov r1, #2
00516a30  00 50 a0 e1                                      mov r5, r0
00516a34  f7 fc ff eb                                      bl #0x515e18
00516a38  24 30 9f e5                                      ldr r3, [pc, #0x24]
00516a3c  04 40 8f e0                                      add r4, pc, r4
00516a40  06 00 a0 e1                                      mov r0, r6
00516a44  03 30 94 e7                                      ldr r3, [r4, r3]
00516a48  05 10 a0 e1                                      mov r1, r5
00516a4c  08 30 83 e2                                      add r3, r3, #8
00516a50  00 30 85 e5                                      str r3, [r5]
00516a54  e8 ff ff eb                                      bl #0x5169fc
00516a58  05 00 a0 e1                                      mov r0, r5
00516a5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00516a60  54 e0 47 00 84 0e 00 00                          .byte 0x54, 0xe0, 0x47, 0x00, 0x84, 0x0e, 0x00, 0x00

; FUNCTION 0x00516a68, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlCommentC2ERKS_
; demangled: TiXmlComment::TiXmlComment(TiXmlComment const&)
; decoder-mode: arm
00516a68  70 40 2d e9                                      push {r4, r5, r6, lr}
00516a6c  01 60 a0 e1                                      mov r6, r1
00516a70  30 40 9f e5                                      ldr r4, [pc, #0x30]
00516a74  02 10 a0 e3                                      mov r1, #2
00516a78  00 50 a0 e1                                      mov r5, r0
00516a7c  e5 fc ff eb                                      bl #0x515e18
00516a80  24 30 9f e5                                      ldr r3, [pc, #0x24]
00516a84  04 40 8f e0                                      add r4, pc, r4
00516a88  06 00 a0 e1                                      mov r0, r6
00516a8c  03 30 94 e7                                      ldr r3, [r4, r3]
00516a90  05 10 a0 e1                                      mov r1, r5
00516a94  08 30 83 e2                                      add r3, r3, #8
00516a98  00 30 85 e5                                      str r3, [r5]
00516a9c  d6 ff ff eb                                      bl #0x5169fc
00516aa0  05 00 a0 e1                                      mov r0, r5
00516aa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00516aa8  0c e0 47 00 84 0e 00 00                          .byte 0x0c, 0xe0, 0x47, 0x00, 0x84, 0x0e, 0x00, 0x00

; FUNCTION 0x00516ab0, declared_size=84, range_size=84, mode=arm
; class-group: TiXmlComment
; alias: _ZNK12TiXmlComment5CloneEv
; demangled: TiXmlComment::Clone() const
; decoder-mode: arm
00516ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
00516ab4  00 10 a0 e3                                      mov r1, #0
00516ab8  00 60 a0 e1                                      mov r6, r0
00516abc  40 00 a0 e3                                      mov r0, #0x40
00516ac0  aa e6 f7 eb                                      bl #0x310570
00516ac4  30 40 9f e5                                      ldr r4, [pc, #0x30]
00516ac8  02 10 a0 e3                                      mov r1, #2
00516acc  00 50 a0 e1                                      mov r5, r0
00516ad0  d0 fc ff eb                                      bl #0x515e18
00516ad4  24 30 9f e5                                      ldr r3, [pc, #0x24]
00516ad8  04 40 8f e0                                      add r4, pc, r4
00516adc  06 00 a0 e1                                      mov r0, r6
00516ae0  03 30 94 e7                                      ldr r3, [r4, r3]
00516ae4  05 10 a0 e1                                      mov r1, r5
00516ae8  08 30 83 e2                                      add r3, r3, #8
00516aec  00 30 85 e5                                      str r3, [r5]
00516af0  c1 ff ff eb                                      bl #0x5169fc
00516af4  05 00 a0 e1                                      mov r0, r5
00516af8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00516afc  b8 df 47 00 84 0e 00 00                          .byte 0xb8, 0xdf, 0x47, 0x00, 0x84, 0x0e, 0x00, 0x00

; FUNCTION 0x00519584, declared_size=328, range_size=328, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlComment5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlComment::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
00519584  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00519588  08 d0 4d e2                                      sub sp, sp, #8
0051958c  03 40 a0 e1                                      mov r4, r3
00519590  01 70 a0 e1                                      mov r7, r1
00519594  02 60 a0 e1                                      mov r6, r2
00519598  00 a0 a0 e1                                      mov sl, r0
0051959c  c5 eb ff eb                                      bl #0x5144b8
005195a0  14 11 9f e5                                      ldr r1, [pc, #0x114]
005195a4  20 50 8a e2                                      add r5, sl, #0x20
005195a8  00 90 a0 e1                                      mov sb, r0
005195ac  01 10 8f e0                                      add r1, pc, r1
005195b0  01 20 a0 e1                                      mov r2, r1
005195b4  05 00 a0 e1                                      mov r0, r5
005195b8  08 dd f7 eb                                      bl #0x3109e0
005195bc  07 00 a0 e1                                      mov r0, r7
005195c0  04 10 a0 e1                                      mov r1, r4
005195c4  6f fc ff eb                                      bl #0x518788
005195c8  00 00 56 e3                                      cmp r6, #0
005195cc  00 80 a0 e1                                      mov r8, r0
005195d0  07 00 00 0a                                      beq #0x5195f4
005195d4  06 00 a0 e1                                      mov r0, r6
005195d8  08 10 a0 e1                                      mov r1, r8
005195dc  04 20 a0 e1                                      mov r2, r4
005195e0  0c fc ff eb                                      bl #0x518618
005195e4  00 30 96 e5                                      ldr r3, [r6]
005195e8  04 30 8a e5                                      str r3, [sl, #4]
005195ec  04 30 96 e5                                      ldr r3, [r6, #4]
005195f0  08 30 8a e5                                      str r3, [sl, #8]
005195f4  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
005195f8  08 00 a0 e1                                      mov r0, r8
005195fc  00 20 a0 e3                                      mov r2, #0
00519600  01 10 8f e0                                      add r1, pc, r1
00519604  04 30 a0 e1                                      mov r3, r4
00519608  a3 fc ff eb                                      bl #0x51889c
0051960c  00 70 50 e2                                      subs r7, r0, #0
00519610  22 00 00 0a                                      beq #0x5196a0
00519614  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00519618  04 70 88 e2                                      add r7, r8, #4
0051961c  05 00 a0 e1                                      mov r0, r5
00519620  01 10 8f e0                                      add r1, pc, r1
00519624  01 20 a0 e1                                      mov r2, r1
00519628  ec dc f7 eb                                      bl #0x3109e0
0051962c  00 00 57 e3                                      cmp r7, #0
00519630  03 00 00 0a                                      beq #0x519644
00519634  d4 30 d8 e1                                      ldrsb r3, [r8, #4]
00519638  00 00 53 e3                                      cmp r3, #0
0051963c  03 00 00 1a                                      bne #0x519650
00519640  03 70 87 e2                                      add r7, r7, #3
00519644  07 00 a0 e1                                      mov r0, r7
00519648  08 d0 8d e2                                      add sp, sp, #8
0051964c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00519650  70 60 9f e5                                      ldr r6, [pc, #0x70]
00519654  06 60 8f e0                                      add r6, pc, r6
00519658  06 10 a0 e1                                      mov r1, r6
0051965c  07 00 a0 e1                                      mov r0, r7
00519660  00 20 a0 e3                                      mov r2, #0
00519664  04 30 a0 e1                                      mov r3, r4
00519668  8b fc ff eb                                      bl #0x51889c
0051966c  00 00 50 e3                                      cmp r0, #0
00519670  07 10 a0 e1                                      mov r1, r7
00519674  05 00 a0 e1                                      mov r0, r5
00519678  f0 ff ff 1a                                      bne #0x519640
0051967c  01 70 87 e2                                      add r7, r7, #1
00519680  07 20 a0 e1                                      mov r2, r7
00519684  5e dc f7 eb                                      bl #0x310804
00519688  00 00 57 e3                                      cmp r7, #0
0051968c  ec ff ff 0a                                      beq #0x519644
00519690  d0 30 d7 e1                                      ldrsb r3, [r7]
00519694  00 00 53 e3                                      cmp r3, #0
00519698  e8 ff ff 0a                                      beq #0x519640
0051969c  ed ff ff ea                                      b #0x519658
005196a0  09 00 a0 e1                                      mov r0, sb
005196a4  08 20 a0 e1                                      mov r2, r8
005196a8  06 30 a0 e1                                      mov r3, r6
005196ac  0b 10 a0 e3                                      mov r1, #0xb
005196b0  00 40 8d e5                                      str r4, [sp]
005196b4  8b ff ff eb                                      bl #0x5194e8
005196b8  e1 ff ff ea                                      b #0x519644
; mapping-symbol data/literal pool
005196bc  5c 22 3b 00 18 2b 3c 00 e8 21 3b 00 cc 2a 3c 00  .byte 0x5c, 0x22, 0x3b, 0x00, 0x18, 0x2b, 0x3c, 0x00, 0xe8, 0x21, 0x3b, 0x00, 0xcc, 0x2a, 0x3c, 0x00

; FUNCTION 0x00519a1c, declared_size=244, range_size=244, mode=arm
; class-group: TiXmlComment
; alias: _ZN12TiXmlComment8StreamInEPSiPSs
; demangled: TiXmlComment::StreamIn(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
00519a1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00519a20  e0 90 9f e5                                      ldr sb, [pc, #0xe0]
00519a24  e0 a0 9f e5                                      ldr sl, [pc, #0xe0]
00519a28  08 d0 4d e2                                      sub sp, sp, #8
00519a2c  00 60 a0 e1                                      mov r6, r0
00519a30  01 50 a0 e1                                      mov r5, r1
00519a34  02 80 a0 e1                                      mov r8, r2
00519a38  09 90 8f e0                                      add sb, pc, sb
00519a3c  0a a0 8f e0                                      add sl, pc, sl
00519a40  00 30 95 e5                                      ldr r3, [r5]
00519a44  05 00 a0 e1                                      mov r0, r5
00519a48  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00519a4c  03 30 85 e0                                      add r3, r5, r3
00519a50  08 40 93 e5                                      ldr r4, [r3, #8]
00519a54  00 00 54 e3                                      cmp r4, #0
00519a58  16 00 00 1a                                      bne #0x519ab8
00519a5c  18 fd ff eb                                      bl #0x518ec4
00519a60  00 70 50 e2                                      subs r7, r0, #0
00519a64  77 10 af e6                                      sxtb r1, r7
00519a68  08 00 a0 e1                                      mov r0, r8
00519a6c  17 00 00 da                                      ble #0x519ad0
00519a70  f9 41 f8 eb                                      bl #0x32a25c
00519a74  3e 00 57 e3                                      cmp r7, #0x3e
00519a78  f0 ff ff 1a                                      bne #0x519a40
00519a7c  14 30 98 e5                                      ldr r3, [r8, #0x14]
00519a80  10 40 98 e5                                      ldr r4, [r8, #0x10]
00519a84  04 40 63 e0                                      rsb r4, r3, r4
00519a88  02 40 54 e2                                      subs r4, r4, #2
00519a8c  0b 00 00 3a                                      blo #0x519ac0
00519a90  d4 20 93 e1                                      ldrsb r2, [r3, r4]
00519a94  2d 00 52 e3                                      cmp r2, #0x2d
00519a98  e8 ff ff 1a                                      bne #0x519a40
00519a9c  10 40 98 e5                                      ldr r4, [r8, #0x10]
00519aa0  04 40 63 e0                                      rsb r4, r3, r4
00519aa4  03 40 54 e2                                      subs r4, r4, #3
00519aa8  12 00 00 3a                                      blo #0x519af8
00519aac  d4 30 93 e1                                      ldrsb r3, [r3, r4]
00519ab0  2d 00 53 e3                                      cmp r3, #0x2d
00519ab4  e1 ff ff 1a                                      bne #0x519a40
00519ab8  08 d0 8d e2                                      add sp, sp, #8
00519abc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00519ac0  0a 00 a0 e1                                      mov r0, sl
00519ac4  f9 bc 07 eb                                      bl #0x708eb0
00519ac8  14 30 98 e5                                      ldr r3, [r8, #0x14]
00519acc  ef ff ff ea                                      b #0x519a90
00519ad0  06 00 a0 e1                                      mov r0, r6
00519ad4  77 ea ff eb                                      bl #0x5144b8
00519ad8  00 00 50 e3                                      cmp r0, #0
00519adc  f5 ff ff 0a                                      beq #0x519ab8
00519ae0  04 20 a0 e1                                      mov r2, r4
00519ae4  0e 10 a0 e3                                      mov r1, #0xe
00519ae8  04 30 a0 e1                                      mov r3, r4
00519aec  00 40 8d e5                                      str r4, [sp]
00519af0  7c fe ff eb                                      bl #0x5194e8
00519af4  ef ff ff ea                                      b #0x519ab8
00519af8  09 00 a0 e1                                      mov r0, sb
00519afc  eb bc 07 eb                                      bl #0x708eb0
00519b00  14 30 98 e5                                      ldr r3, [r8, #0x14]
00519b04  e8 ff ff ea                                      b #0x519aac
; mapping-symbol data/literal pool
00519b08  20 4a 3a 00 1c 4a 3a 00                          .byte 0x20, 0x4a, 0x3a, 0x00, 0x1c, 0x4a, 0x3a, 0x00
