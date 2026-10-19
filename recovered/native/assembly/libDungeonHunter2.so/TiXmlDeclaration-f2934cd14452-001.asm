; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005142a0, declared_size=24, range_size=24, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZNK16TiXmlDeclaration5PrintEP7__sFILEi
; demangled: TiXmlDeclaration::Print(__sFILE*, int) const
; decoder-mode: arm
005142a0  10 40 2d e9                                      push {r4, lr}
005142a4  00 c0 90 e5                                      ldr ip, [r0]
005142a8  00 30 a0 e3                                      mov r3, #0
005142ac  0f e0 a0 e1                                      mov lr, pc
005142b0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005142b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005142b8, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZNK16TiXmlDeclaration13ToDeclarationEv
; demangled: TiXmlDeclaration::ToDeclaration() const
; decoder-mode: arm
005142b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005142bc, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclaration13ToDeclarationEv
; demangled: TiXmlDeclaration::ToDeclaration()
; decoder-mode: arm
005142bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005146d0, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZNK16TiXmlDeclaration6AcceptEP12TiXmlVisitor
; demangled: TiXmlDeclaration::Accept(TiXmlVisitor*) const
; decoder-mode: arm
005146d0  10 40 2d e9                                      push {r4, lr}
005146d4  01 30 a0 e1                                      mov r3, r1
005146d8  00 10 a0 e1                                      mov r1, r0
005146dc  03 00 a0 e1                                      mov r0, r3
005146e0  00 30 93 e5                                      ldr r3, [r3]
005146e4  0f e0 a0 e1                                      mov lr, pc
005146e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005146ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514bb8, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationD1Ev
; demangled: TiXmlDeclaration::~TiXmlDeclaration()
; decoder-mode: arm
00514bb8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00514bbc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00514bc0  10 40 2d e9                                      push {r4, lr}
00514bc4  03 30 8f e0                                      add r3, pc, r3
00514bc8  02 20 93 e7                                      ldr r2, [r3, r2]
00514bcc  00 40 a0 e1                                      mov r4, r0
00514bd0  08 20 82 e2                                      add r2, r2, #8
00514bd4  70 20 80 e4                                      str r2, [r0], #0x70
00514bd8  73 fb f7 eb                                      bl #0x3139ac
00514bdc  58 00 84 e2                                      add r0, r4, #0x58
00514be0  71 fb f7 eb                                      bl #0x3139ac
00514be4  40 00 84 e2                                      add r0, r4, #0x40
00514be8  6f fb f7 eb                                      bl #0x3139ac
00514bec  04 00 a0 e1                                      mov r0, r4
00514bf0  af ff ff eb                                      bl #0x514ab4
00514bf4  04 00 a0 e1                                      mov r0, r4
00514bf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00514bfc  cc fe 47 00 44 27 00 00                          .byte 0xcc, 0xfe, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00514c04, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationD0Ev
; demangled: TiXmlDeclaration::~TiXmlDeclaration()
; decoder-mode: arm
00514c04  10 40 2d e9                                      push {r4, lr}
00514c08  00 40 a0 e1                                      mov r4, r0
00514c0c  e9 ff ff eb                                      bl #0x514bb8
00514c10  04 00 a0 e1                                      mov r0, r4
00514c14  09 ee f7 eb                                      bl #0x310440
00514c18  04 00 a0 e1                                      mov r0, r4
00514c1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00515f68, declared_size=156, range_size=156, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC1Ev
; demangled: TiXmlDeclaration::TiXmlDeclaration()
; decoder-mode: arm
00515f68  70 40 2d e9                                      push {r4, r5, r6, lr}
00515f6c  05 10 a0 e3                                      mov r1, #5
00515f70  84 50 9f e5                                      ldr r5, [pc, #0x84]
00515f74  00 40 a0 e1                                      mov r4, r0
00515f78  a6 ff ff eb                                      bl #0x515e18
00515f7c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00515f80  05 50 8f e0                                      add r5, pc, r5
00515f84  04 30 a0 e1                                      mov r3, r4
00515f88  02 20 95 e7                                      ldr r2, [r5, r2]
00515f8c  10 10 a0 e3                                      mov r1, #0x10
00515f90  00 60 a0 e3                                      mov r6, #0
00515f94  08 20 82 e2                                      add r2, r2, #8
00515f98  40 20 83 e4                                      str r2, [r3], #0x40
00515f9c  03 00 a0 e1                                      mov r0, r3
00515fa0  50 30 84 e5                                      str r3, [r4, #0x50]
00515fa4  54 30 84 e5                                      str r3, [r4, #0x54]
00515fa8  b3 ed f7 eb                                      bl #0x31167c
00515fac  50 20 94 e5                                      ldr r2, [r4, #0x50]
00515fb0  58 30 84 e2                                      add r3, r4, #0x58
00515fb4  03 00 a0 e1                                      mov r0, r3
00515fb8  00 60 c2 e5                                      strb r6, [r2]
00515fbc  10 10 a0 e3                                      mov r1, #0x10
00515fc0  68 30 84 e5                                      str r3, [r4, #0x68]
00515fc4  6c 30 84 e5                                      str r3, [r4, #0x6c]
00515fc8  ab ed f7 eb                                      bl #0x31167c
00515fcc  68 20 94 e5                                      ldr r2, [r4, #0x68]
00515fd0  70 30 84 e2                                      add r3, r4, #0x70
00515fd4  03 00 a0 e1                                      mov r0, r3
00515fd8  00 60 c2 e5                                      strb r6, [r2]
00515fdc  10 10 a0 e3                                      mov r1, #0x10
00515fe0  80 30 84 e5                                      str r3, [r4, #0x80]
00515fe4  84 30 84 e5                                      str r3, [r4, #0x84]
00515fe8  a3 ed f7 eb                                      bl #0x31167c
00515fec  80 30 94 e5                                      ldr r3, [r4, #0x80]
00515ff0  04 00 a0 e1                                      mov r0, r4
00515ff4  00 60 c3 e5                                      strb r6, [r3]
00515ff8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515ffc  10 eb 47 00 44 27 00 00                          .byte 0x10, 0xeb, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00516154, declared_size=240, range_size=240, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC1ERKSsS1_S1_
; demangled: TiXmlDeclaration::TiXmlDeclaration(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00516154  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00516158  01 50 a0 e1                                      mov r5, r1
0051615c  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00516160  05 10 a0 e3                                      mov r1, #5
00516164  00 60 a0 e1                                      mov r6, r0
00516168  02 b0 a0 e1                                      mov fp, r2
0051616c  03 80 a0 e1                                      mov r8, r3
00516170  28 ff ff eb                                      bl #0x515e18
00516174  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00516178  04 40 8f e0                                      add r4, pc, r4
0051617c  06 a0 a0 e1                                      mov sl, r6
00516180  03 30 94 e7                                      ldr r3, [r4, r3]
00516184  10 10 a0 e3                                      mov r1, #0x10
00516188  00 90 a0 e3                                      mov sb, #0
0051618c  08 30 83 e2                                      add r3, r3, #8
00516190  40 30 8a e4                                      str r3, [sl], #0x40
00516194  0a 00 a0 e1                                      mov r0, sl
00516198  50 a0 86 e5                                      str sl, [r6, #0x50]
0051619c  54 a0 86 e5                                      str sl, [r6, #0x54]
005161a0  35 ed f7 eb                                      bl #0x31167c
005161a4  50 30 96 e5                                      ldr r3, [r6, #0x50]
005161a8  58 70 86 e2                                      add r7, r6, #0x58
005161ac  07 00 a0 e1                                      mov r0, r7
005161b0  00 90 c3 e5                                      strb sb, [r3]
005161b4  10 10 a0 e3                                      mov r1, #0x10
005161b8  68 70 86 e5                                      str r7, [r6, #0x68]
005161bc  6c 70 86 e5                                      str r7, [r6, #0x6c]
005161c0  2d ed f7 eb                                      bl #0x31167c
005161c4  68 30 96 e5                                      ldr r3, [r6, #0x68]
005161c8  70 40 86 e2                                      add r4, r6, #0x70
005161cc  04 00 a0 e1                                      mov r0, r4
005161d0  00 90 c3 e5                                      strb sb, [r3]
005161d4  10 10 a0 e3                                      mov r1, #0x10
005161d8  80 40 86 e5                                      str r4, [r6, #0x80]
005161dc  84 40 86 e5                                      str r4, [r6, #0x84]
005161e0  25 ed f7 eb                                      bl #0x31167c
005161e4  80 30 96 e5                                      ldr r3, [r6, #0x80]
005161e8  05 00 5a e1                                      cmp sl, r5
005161ec  00 90 c3 e5                                      strb sb, [r3]
005161f0  03 00 00 0a                                      beq #0x516204
005161f4  0a 00 a0 e1                                      mov r0, sl
005161f8  10 20 95 e5                                      ldr r2, [r5, #0x10]
005161fc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00516200  f6 e9 f7 eb                                      bl #0x3109e0
00516204  0b 00 57 e1                                      cmp r7, fp
00516208  03 00 00 0a                                      beq #0x51621c
0051620c  07 00 a0 e1                                      mov r0, r7
00516210  10 20 9b e5                                      ldr r2, [fp, #0x10]
00516214  14 10 9b e5                                      ldr r1, [fp, #0x14]
00516218  f0 e9 f7 eb                                      bl #0x3109e0
0051621c  08 00 54 e1                                      cmp r4, r8
00516220  03 00 00 0a                                      beq #0x516234
00516224  04 00 a0 e1                                      mov r0, r4
00516228  10 20 98 e5                                      ldr r2, [r8, #0x10]
0051622c  14 10 98 e5                                      ldr r1, [r8, #0x14]
00516230  ea e9 f7 eb                                      bl #0x3109e0
00516234  06 00 a0 e1                                      mov r0, r6
00516238  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0051623c  18 e9 47 00 44 27 00 00                          .byte 0x18, 0xe9, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00516244, declared_size=240, range_size=240, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC2ERKSsS1_S1_
; demangled: TiXmlDeclaration::TiXmlDeclaration(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00516244  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00516248  01 50 a0 e1                                      mov r5, r1
0051624c  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00516250  05 10 a0 e3                                      mov r1, #5
00516254  00 60 a0 e1                                      mov r6, r0
00516258  02 b0 a0 e1                                      mov fp, r2
0051625c  03 80 a0 e1                                      mov r8, r3
00516260  ec fe ff eb                                      bl #0x515e18
00516264  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00516268  04 40 8f e0                                      add r4, pc, r4
0051626c  06 a0 a0 e1                                      mov sl, r6
00516270  03 30 94 e7                                      ldr r3, [r4, r3]
00516274  10 10 a0 e3                                      mov r1, #0x10
00516278  00 90 a0 e3                                      mov sb, #0
0051627c  08 30 83 e2                                      add r3, r3, #8
00516280  40 30 8a e4                                      str r3, [sl], #0x40
00516284  0a 00 a0 e1                                      mov r0, sl
00516288  50 a0 86 e5                                      str sl, [r6, #0x50]
0051628c  54 a0 86 e5                                      str sl, [r6, #0x54]
00516290  f9 ec f7 eb                                      bl #0x31167c
00516294  50 30 96 e5                                      ldr r3, [r6, #0x50]
00516298  58 70 86 e2                                      add r7, r6, #0x58
0051629c  07 00 a0 e1                                      mov r0, r7
005162a0  00 90 c3 e5                                      strb sb, [r3]
005162a4  10 10 a0 e3                                      mov r1, #0x10
005162a8  68 70 86 e5                                      str r7, [r6, #0x68]
005162ac  6c 70 86 e5                                      str r7, [r6, #0x6c]
005162b0  f1 ec f7 eb                                      bl #0x31167c
005162b4  68 30 96 e5                                      ldr r3, [r6, #0x68]
005162b8  70 40 86 e2                                      add r4, r6, #0x70
005162bc  04 00 a0 e1                                      mov r0, r4
005162c0  00 90 c3 e5                                      strb sb, [r3]
005162c4  10 10 a0 e3                                      mov r1, #0x10
005162c8  80 40 86 e5                                      str r4, [r6, #0x80]
005162cc  84 40 86 e5                                      str r4, [r6, #0x84]
005162d0  e9 ec f7 eb                                      bl #0x31167c
005162d4  80 30 96 e5                                      ldr r3, [r6, #0x80]
005162d8  05 00 5a e1                                      cmp sl, r5
005162dc  00 90 c3 e5                                      strb sb, [r3]
005162e0  03 00 00 0a                                      beq #0x5162f4
005162e4  0a 00 a0 e1                                      mov r0, sl
005162e8  10 20 95 e5                                      ldr r2, [r5, #0x10]
005162ec  14 10 95 e5                                      ldr r1, [r5, #0x14]
005162f0  ba e9 f7 eb                                      bl #0x3109e0
005162f4  0b 00 57 e1                                      cmp r7, fp
005162f8  03 00 00 0a                                      beq #0x51630c
005162fc  07 00 a0 e1                                      mov r0, r7
00516300  10 20 9b e5                                      ldr r2, [fp, #0x10]
00516304  14 10 9b e5                                      ldr r1, [fp, #0x14]
00516308  b4 e9 f7 eb                                      bl #0x3109e0
0051630c  08 00 54 e1                                      cmp r4, r8
00516310  03 00 00 0a                                      beq #0x516324
00516314  04 00 a0 e1                                      mov r0, r4
00516318  10 20 98 e5                                      ldr r2, [r8, #0x10]
0051631c  14 10 98 e5                                      ldr r1, [r8, #0x14]
00516320  ae e9 f7 eb                                      bl #0x3109e0
00516324  06 00 a0 e1                                      mov r0, r6
00516328  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0051632c  28 e8 47 00 44 27 00 00                          .byte 0x28, 0xe8, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00516b04, declared_size=108, range_size=108, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZNK16TiXmlDeclaration6CopyToEPS_
; demangled: TiXmlDeclaration::CopyTo(TiXmlDeclaration*) const
; decoder-mode: arm
00516b04  70 40 2d e9                                      push {r4, r5, r6, lr}
00516b08  00 40 a0 e1                                      mov r4, r0
00516b0c  01 50 a0 e1                                      mov r5, r1
00516b10  8f ff ff eb                                      bl #0x516954
00516b14  40 00 85 e2                                      add r0, r5, #0x40
00516b18  40 30 84 e2                                      add r3, r4, #0x40
00516b1c  03 00 50 e1                                      cmp r0, r3
00516b20  02 00 00 0a                                      beq #0x516b30
00516b24  54 10 94 e5                                      ldr r1, [r4, #0x54]
00516b28  50 20 94 e5                                      ldr r2, [r4, #0x50]
00516b2c  ab e7 f7 eb                                      bl #0x3109e0
00516b30  58 00 85 e2                                      add r0, r5, #0x58
00516b34  58 30 84 e2                                      add r3, r4, #0x58
00516b38  03 00 50 e1                                      cmp r0, r3
00516b3c  02 00 00 0a                                      beq #0x516b4c
00516b40  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
00516b44  68 20 94 e5                                      ldr r2, [r4, #0x68]
00516b48  a4 e7 f7 eb                                      bl #0x3109e0
00516b4c  70 00 85 e2                                      add r0, r5, #0x70
00516b50  70 30 84 e2                                      add r3, r4, #0x70
00516b54  03 00 50 e1                                      cmp r0, r3
00516b58  03 00 00 0a                                      beq #0x516b6c
00516b5c  80 20 94 e5                                      ldr r2, [r4, #0x80]
00516b60  84 10 94 e5                                      ldr r1, [r4, #0x84]
00516b64  70 40 bd e8                                      pop {r4, r5, r6, lr}
00516b68  9c e7 f7 ea                                      b #0x3109e0
00516b6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00516b70, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationaSERKS_
; demangled: TiXmlDeclaration::operator=(TiXmlDeclaration const&)
; decoder-mode: arm
00516b70  70 40 2d e9                                      push {r4, r5, r6, lr}
00516b74  01 50 a0 e1                                      mov r5, r1
00516b78  00 40 a0 e1                                      mov r4, r0
00516b7c  d1 f5 ff eb                                      bl #0x5142c8
00516b80  05 00 a0 e1                                      mov r0, r5
00516b84  04 10 a0 e1                                      mov r1, r4
00516b88  70 40 bd e8                                      pop {r4, r5, r6, lr}
00516b8c  dc ff ff ea                                      b #0x516b04

; FUNCTION 0x00516b90, declared_size=172, range_size=172, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC1ERKS_
; demangled: TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration const&)
; decoder-mode: arm
00516b90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00516b94  01 70 a0 e1                                      mov r7, r1
00516b98  94 50 9f e5                                      ldr r5, [pc, #0x94]
00516b9c  05 10 a0 e3                                      mov r1, #5
00516ba0  00 40 a0 e1                                      mov r4, r0
00516ba4  9b fc ff eb                                      bl #0x515e18
00516ba8  88 20 9f e5                                      ldr r2, [pc, #0x88]
00516bac  05 50 8f e0                                      add r5, pc, r5
00516bb0  04 30 a0 e1                                      mov r3, r4
00516bb4  02 20 95 e7                                      ldr r2, [r5, r2]
00516bb8  10 10 a0 e3                                      mov r1, #0x10
00516bbc  00 60 a0 e3                                      mov r6, #0
00516bc0  08 20 82 e2                                      add r2, r2, #8
00516bc4  40 20 83 e4                                      str r2, [r3], #0x40
00516bc8  03 00 a0 e1                                      mov r0, r3
00516bcc  50 30 84 e5                                      str r3, [r4, #0x50]
00516bd0  54 30 84 e5                                      str r3, [r4, #0x54]
00516bd4  a8 ea f7 eb                                      bl #0x31167c
00516bd8  50 20 94 e5                                      ldr r2, [r4, #0x50]
00516bdc  58 30 84 e2                                      add r3, r4, #0x58
00516be0  03 00 a0 e1                                      mov r0, r3
00516be4  00 60 c2 e5                                      strb r6, [r2]
00516be8  10 10 a0 e3                                      mov r1, #0x10
00516bec  68 30 84 e5                                      str r3, [r4, #0x68]
00516bf0  6c 30 84 e5                                      str r3, [r4, #0x6c]
00516bf4  a0 ea f7 eb                                      bl #0x31167c
00516bf8  68 20 94 e5                                      ldr r2, [r4, #0x68]
00516bfc  70 30 84 e2                                      add r3, r4, #0x70
00516c00  03 00 a0 e1                                      mov r0, r3
00516c04  00 60 c2 e5                                      strb r6, [r2]
00516c08  10 10 a0 e3                                      mov r1, #0x10
00516c0c  80 30 84 e5                                      str r3, [r4, #0x80]
00516c10  84 30 84 e5                                      str r3, [r4, #0x84]
00516c14  98 ea f7 eb                                      bl #0x31167c
00516c18  80 30 94 e5                                      ldr r3, [r4, #0x80]
00516c1c  07 00 a0 e1                                      mov r0, r7
00516c20  04 10 a0 e1                                      mov r1, r4
00516c24  00 60 c3 e5                                      strb r6, [r3]
00516c28  b5 ff ff eb                                      bl #0x516b04
00516c2c  04 00 a0 e1                                      mov r0, r4
00516c30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00516c34  e4 de 47 00 44 27 00 00                          .byte 0xe4, 0xde, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00516c3c, declared_size=172, range_size=172, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC2ERKS_
; demangled: TiXmlDeclaration::TiXmlDeclaration(TiXmlDeclaration const&)
; decoder-mode: arm
00516c3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00516c40  01 70 a0 e1                                      mov r7, r1
00516c44  94 50 9f e5                                      ldr r5, [pc, #0x94]
00516c48  05 10 a0 e3                                      mov r1, #5
00516c4c  00 40 a0 e1                                      mov r4, r0
00516c50  70 fc ff eb                                      bl #0x515e18
00516c54  88 20 9f e5                                      ldr r2, [pc, #0x88]
00516c58  05 50 8f e0                                      add r5, pc, r5
00516c5c  04 30 a0 e1                                      mov r3, r4
00516c60  02 20 95 e7                                      ldr r2, [r5, r2]
00516c64  10 10 a0 e3                                      mov r1, #0x10
00516c68  00 60 a0 e3                                      mov r6, #0
00516c6c  08 20 82 e2                                      add r2, r2, #8
00516c70  40 20 83 e4                                      str r2, [r3], #0x40
00516c74  03 00 a0 e1                                      mov r0, r3
00516c78  50 30 84 e5                                      str r3, [r4, #0x50]
00516c7c  54 30 84 e5                                      str r3, [r4, #0x54]
00516c80  7d ea f7 eb                                      bl #0x31167c
00516c84  50 20 94 e5                                      ldr r2, [r4, #0x50]
00516c88  58 30 84 e2                                      add r3, r4, #0x58
00516c8c  03 00 a0 e1                                      mov r0, r3
00516c90  00 60 c2 e5                                      strb r6, [r2]
00516c94  10 10 a0 e3                                      mov r1, #0x10
00516c98  68 30 84 e5                                      str r3, [r4, #0x68]
00516c9c  6c 30 84 e5                                      str r3, [r4, #0x6c]
00516ca0  75 ea f7 eb                                      bl #0x31167c
00516ca4  68 20 94 e5                                      ldr r2, [r4, #0x68]
00516ca8  70 30 84 e2                                      add r3, r4, #0x70
00516cac  03 00 a0 e1                                      mov r0, r3
00516cb0  00 60 c2 e5                                      strb r6, [r2]
00516cb4  10 10 a0 e3                                      mov r1, #0x10
00516cb8  80 30 84 e5                                      str r3, [r4, #0x80]
00516cbc  84 30 84 e5                                      str r3, [r4, #0x84]
00516cc0  6d ea f7 eb                                      bl #0x31167c
00516cc4  80 30 94 e5                                      ldr r3, [r4, #0x80]
00516cc8  07 00 a0 e1                                      mov r0, r7
00516ccc  04 10 a0 e1                                      mov r1, r4
00516cd0  00 60 c3 e5                                      strb r6, [r3]
00516cd4  8a ff ff eb                                      bl #0x516b04
00516cd8  04 00 a0 e1                                      mov r0, r4
00516cdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00516ce0  38 de 47 00 44 27 00 00                          .byte 0x38, 0xde, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00516ce8, declared_size=56, range_size=56, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZNK16TiXmlDeclaration5CloneEv
; demangled: TiXmlDeclaration::Clone() const
; decoder-mode: arm
00516ce8  70 40 2d e9                                      push {r4, r5, r6, lr}
00516cec  00 10 a0 e3                                      mov r1, #0
00516cf0  00 50 a0 e1                                      mov r5, r0
00516cf4  88 00 a0 e3                                      mov r0, #0x88
00516cf8  1c e6 f7 eb                                      bl #0x310570
00516cfc  00 40 a0 e1                                      mov r4, r0
00516d00  98 fc ff eb                                      bl #0x515f68
00516d04  00 00 54 e3                                      cmp r4, #0
00516d08  02 00 00 0a                                      beq #0x516d18
00516d0c  05 00 a0 e1                                      mov r0, r5
00516d10  04 10 a0 e1                                      mov r1, r4
00516d14  7a ff ff eb                                      bl #0x516b04
00516d18  04 00 a0 e1                                      mov r0, r4
00516d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00517690, declared_size=240, range_size=240, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC1EPKcS1_S1_
; demangled: TiXmlDeclaration::TiXmlDeclaration(char const*, char const*, char const*)
; decoder-mode: arm
00517690  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00517694  01 90 a0 e1                                      mov sb, r1
00517698  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0051769c  05 10 a0 e3                                      mov r1, #5
005176a0  00 50 a0 e1                                      mov r5, r0
005176a4  02 a0 a0 e1                                      mov sl, r2
005176a8  03 80 a0 e1                                      mov r8, r3
005176ac  d9 f9 ff eb                                      bl #0x515e18
005176b0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
005176b4  04 40 8f e0                                      add r4, pc, r4
005176b8  05 60 a0 e1                                      mov r6, r5
005176bc  03 30 94 e7                                      ldr r3, [r4, r3]
005176c0  10 10 a0 e3                                      mov r1, #0x10
005176c4  58 70 85 e2                                      add r7, r5, #0x58
005176c8  08 30 83 e2                                      add r3, r3, #8
005176cc  40 30 86 e4                                      str r3, [r6], #0x40
005176d0  06 00 a0 e1                                      mov r0, r6
005176d4  50 60 85 e5                                      str r6, [r5, #0x50]
005176d8  54 60 85 e5                                      str r6, [r5, #0x54]
005176dc  e6 e7 f7 eb                                      bl #0x31167c
005176e0  50 30 95 e5                                      ldr r3, [r5, #0x50]
005176e4  00 b0 a0 e3                                      mov fp, #0
005176e8  07 00 a0 e1                                      mov r0, r7
005176ec  00 b0 c3 e5                                      strb fp, [r3]
005176f0  10 10 a0 e3                                      mov r1, #0x10
005176f4  68 70 85 e5                                      str r7, [r5, #0x68]
005176f8  6c 70 85 e5                                      str r7, [r5, #0x6c]
005176fc  de e7 f7 eb                                      bl #0x31167c
00517700  68 30 95 e5                                      ldr r3, [r5, #0x68]
00517704  70 40 85 e2                                      add r4, r5, #0x70
00517708  10 10 a0 e3                                      mov r1, #0x10
0051770c  00 b0 c3 e5                                      strb fp, [r3]
00517710  04 00 a0 e1                                      mov r0, r4
00517714  80 40 85 e5                                      str r4, [r5, #0x80]
00517718  84 40 85 e5                                      str r4, [r5, #0x84]
0051771c  d6 e7 f7 eb                                      bl #0x31167c
00517720  80 30 95 e5                                      ldr r3, [r5, #0x80]
00517724  09 00 a0 e1                                      mov r0, sb
00517728  00 b0 c3 e5                                      strb fp, [r3]
0051772c  c8 d9 f7 eb                                      bl #0x30de54
00517730  09 10 a0 e1                                      mov r1, sb
00517734  00 20 89 e0                                      add r2, sb, r0
00517738  06 00 a0 e1                                      mov r0, r6
0051773c  a7 e4 f7 eb                                      bl #0x3109e0
00517740  0a 00 a0 e1                                      mov r0, sl
00517744  c2 d9 f7 eb                                      bl #0x30de54
00517748  0a 10 a0 e1                                      mov r1, sl
0051774c  00 20 8a e0                                      add r2, sl, r0
00517750  07 00 a0 e1                                      mov r0, r7
00517754  a1 e4 f7 eb                                      bl #0x3109e0
00517758  08 00 a0 e1                                      mov r0, r8
0051775c  bc d9 f7 eb                                      bl #0x30de54
00517760  08 10 a0 e1                                      mov r1, r8
00517764  00 20 88 e0                                      add r2, r8, r0
00517768  04 00 a0 e1                                      mov r0, r4
0051776c  9b e4 f7 eb                                      bl #0x3109e0
00517770  05 00 a0 e1                                      mov r0, r5
00517774  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00517778  dc d3 47 00 44 27 00 00                          .byte 0xdc, 0xd3, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00517780, declared_size=240, range_size=240, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclarationC2EPKcS1_S1_
; demangled: TiXmlDeclaration::TiXmlDeclaration(char const*, char const*, char const*)
; decoder-mode: arm
00517780  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00517784  01 90 a0 e1                                      mov sb, r1
00517788  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0051778c  05 10 a0 e3                                      mov r1, #5
00517790  00 50 a0 e1                                      mov r5, r0
00517794  02 a0 a0 e1                                      mov sl, r2
00517798  03 80 a0 e1                                      mov r8, r3
0051779c  9d f9 ff eb                                      bl #0x515e18
005177a0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
005177a4  04 40 8f e0                                      add r4, pc, r4
005177a8  05 60 a0 e1                                      mov r6, r5
005177ac  03 30 94 e7                                      ldr r3, [r4, r3]
005177b0  10 10 a0 e3                                      mov r1, #0x10
005177b4  58 70 85 e2                                      add r7, r5, #0x58
005177b8  08 30 83 e2                                      add r3, r3, #8
005177bc  40 30 86 e4                                      str r3, [r6], #0x40
005177c0  06 00 a0 e1                                      mov r0, r6
005177c4  50 60 85 e5                                      str r6, [r5, #0x50]
005177c8  54 60 85 e5                                      str r6, [r5, #0x54]
005177cc  aa e7 f7 eb                                      bl #0x31167c
005177d0  50 30 95 e5                                      ldr r3, [r5, #0x50]
005177d4  00 b0 a0 e3                                      mov fp, #0
005177d8  07 00 a0 e1                                      mov r0, r7
005177dc  00 b0 c3 e5                                      strb fp, [r3]
005177e0  10 10 a0 e3                                      mov r1, #0x10
005177e4  68 70 85 e5                                      str r7, [r5, #0x68]
005177e8  6c 70 85 e5                                      str r7, [r5, #0x6c]
005177ec  a2 e7 f7 eb                                      bl #0x31167c
005177f0  68 30 95 e5                                      ldr r3, [r5, #0x68]
005177f4  70 40 85 e2                                      add r4, r5, #0x70
005177f8  10 10 a0 e3                                      mov r1, #0x10
005177fc  00 b0 c3 e5                                      strb fp, [r3]
00517800  04 00 a0 e1                                      mov r0, r4
00517804  80 40 85 e5                                      str r4, [r5, #0x80]
00517808  84 40 85 e5                                      str r4, [r5, #0x84]
0051780c  9a e7 f7 eb                                      bl #0x31167c
00517810  80 30 95 e5                                      ldr r3, [r5, #0x80]
00517814  09 00 a0 e1                                      mov r0, sb
00517818  00 b0 c3 e5                                      strb fp, [r3]
0051781c  8c d9 f7 eb                                      bl #0x30de54
00517820  09 10 a0 e1                                      mov r1, sb
00517824  00 20 89 e0                                      add r2, sb, r0
00517828  06 00 a0 e1                                      mov r0, r6
0051782c  6b e4 f7 eb                                      bl #0x3109e0
00517830  0a 00 a0 e1                                      mov r0, sl
00517834  86 d9 f7 eb                                      bl #0x30de54
00517838  0a 10 a0 e1                                      mov r1, sl
0051783c  00 20 8a e0                                      add r2, sl, r0
00517840  07 00 a0 e1                                      mov r0, r7
00517844  65 e4 f7 eb                                      bl #0x3109e0
00517848  08 00 a0 e1                                      mov r0, r8
0051784c  80 d9 f7 eb                                      bl #0x30de54
00517850  08 10 a0 e1                                      mov r1, r8
00517854  00 20 88 e0                                      add r2, r8, r0
00517858  04 00 a0 e1                                      mov r0, r4
0051785c  5f e4 f7 eb                                      bl #0x3109e0
00517860  05 00 a0 e1                                      mov r0, r5
00517864  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00517868  ec d2 47 00 44 27 00 00                          .byte 0xec, 0xd2, 0x47, 0x00, 0x44, 0x27, 0x00, 0x00

; FUNCTION 0x00517b44, declared_size=504, range_size=504, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZNK16TiXmlDeclaration5PrintEP7__sFILEiPSs
; demangled: TiXmlDeclaration::Print(__sFILE*, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*) const
; decoder-mode: arm
00517b44  70 40 2d e9                                      push {r4, r5, r6, lr}
00517b48  00 60 51 e2                                      subs r6, r1, #0
00517b4c  00 50 a0 e1                                      mov r5, r0
00517b50  03 40 a0 e1                                      mov r4, r3
00517b54  05 00 00 0a                                      beq #0x517b70
00517b58  a8 01 9f e5                                      ldr r0, [pc, #0x1a8]
00517b5c  01 10 a0 e3                                      mov r1, #1
00517b60  06 20 a0 e3                                      mov r2, #6
00517b64  00 00 8f e0                                      add r0, pc, r0
00517b68  06 30 a0 e1                                      mov r3, r6
00517b6c  89 da f7 eb                                      bl #0x30e598
00517b70  00 00 54 e3                                      cmp r4, #0
00517b74  04 00 00 0a                                      beq #0x517b8c
00517b78  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
00517b7c  04 00 a0 e1                                      mov r0, r4
00517b80  01 10 8f e0                                      add r1, pc, r1
00517b84  06 20 81 e2                                      add r2, r1, #6
00517b88  1d e3 f7 eb                                      bl #0x310804
00517b8c  54 20 95 e5                                      ldr r2, [r5, #0x54]
00517b90  50 30 95 e5                                      ldr r3, [r5, #0x50]
00517b94  03 00 52 e1                                      cmp r2, r3
00517b98  15 00 00 0a                                      beq #0x517bf4
00517b9c  00 00 56 e3                                      cmp r6, #0
00517ba0  03 00 00 0a                                      beq #0x517bb4
00517ba4  64 11 9f e5                                      ldr r1, [pc, #0x164]
00517ba8  06 00 a0 e1                                      mov r0, r6
00517bac  01 10 8f e0                                      add r1, pc, r1
00517bb0  13 d9 f7 eb                                      bl #0x30e004
00517bb4  00 00 54 e3                                      cmp r4, #0
00517bb8  0d 00 00 0a                                      beq #0x517bf4
00517bbc  50 11 9f e5                                      ldr r1, [pc, #0x150]
00517bc0  04 00 a0 e1                                      mov r0, r4
00517bc4  01 10 8f e0                                      add r1, pc, r1
00517bc8  09 20 81 e2                                      add r2, r1, #9
00517bcc  0c e3 f7 eb                                      bl #0x310804
00517bd0  54 10 95 e5                                      ldr r1, [r5, #0x54]
00517bd4  50 20 95 e5                                      ldr r2, [r5, #0x50]
00517bd8  04 00 a0 e1                                      mov r0, r4
00517bdc  08 e3 f7 eb                                      bl #0x310804
00517be0  30 11 9f e5                                      ldr r1, [pc, #0x130]
00517be4  04 00 a0 e1                                      mov r0, r4
00517be8  01 10 8f e0                                      add r1, pc, r1
00517bec  02 20 81 e2                                      add r2, r1, #2
00517bf0  03 e3 f7 eb                                      bl #0x310804
00517bf4  6c 20 95 e5                                      ldr r2, [r5, #0x6c]
00517bf8  68 30 95 e5                                      ldr r3, [r5, #0x68]
00517bfc  03 00 52 e1                                      cmp r2, r3
00517c00  15 00 00 0a                                      beq #0x517c5c
00517c04  00 00 56 e3                                      cmp r6, #0
00517c08  03 00 00 0a                                      beq #0x517c1c
00517c0c  08 11 9f e5                                      ldr r1, [pc, #0x108]
00517c10  06 00 a0 e1                                      mov r0, r6
00517c14  01 10 8f e0                                      add r1, pc, r1
00517c18  f9 d8 f7 eb                                      bl #0x30e004
00517c1c  00 00 54 e3                                      cmp r4, #0
00517c20  0d 00 00 0a                                      beq #0x517c5c
00517c24  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00517c28  04 00 a0 e1                                      mov r0, r4
00517c2c  01 10 8f e0                                      add r1, pc, r1
00517c30  0a 20 81 e2                                      add r2, r1, #0xa
00517c34  f2 e2 f7 eb                                      bl #0x310804
00517c38  6c 10 95 e5                                      ldr r1, [r5, #0x6c]
00517c3c  68 20 95 e5                                      ldr r2, [r5, #0x68]
00517c40  04 00 a0 e1                                      mov r0, r4
00517c44  ee e2 f7 eb                                      bl #0x310804
00517c48  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00517c4c  04 00 a0 e1                                      mov r0, r4
00517c50  01 10 8f e0                                      add r1, pc, r1
00517c54  02 20 81 e2                                      add r2, r1, #2
00517c58  e9 e2 f7 eb                                      bl #0x310804
00517c5c  84 20 95 e5                                      ldr r2, [r5, #0x84]
00517c60  80 30 95 e5                                      ldr r3, [r5, #0x80]
00517c64  03 00 52 e1                                      cmp r2, r3
00517c68  15 00 00 0a                                      beq #0x517cc4
00517c6c  00 00 56 e3                                      cmp r6, #0
00517c70  03 00 00 0a                                      beq #0x517c84
00517c74  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00517c78  06 00 a0 e1                                      mov r0, r6
00517c7c  01 10 8f e0                                      add r1, pc, r1
00517c80  df d8 f7 eb                                      bl #0x30e004
00517c84  00 00 54 e3                                      cmp r4, #0
00517c88  0d 00 00 0a                                      beq #0x517cc4
00517c8c  98 10 9f e5                                      ldr r1, [pc, #0x98]
00517c90  04 00 a0 e1                                      mov r0, r4
00517c94  01 10 8f e0                                      add r1, pc, r1
00517c98  0c 20 81 e2                                      add r2, r1, #0xc
00517c9c  d8 e2 f7 eb                                      bl #0x310804
00517ca0  80 20 95 e5                                      ldr r2, [r5, #0x80]
00517ca4  84 10 95 e5                                      ldr r1, [r5, #0x84]
00517ca8  04 00 a0 e1                                      mov r0, r4
00517cac  d4 e2 f7 eb                                      bl #0x310804
00517cb0  78 10 9f e5                                      ldr r1, [pc, #0x78]
00517cb4  04 00 a0 e1                                      mov r0, r4
00517cb8  01 10 8f e0                                      add r1, pc, r1
00517cbc  02 20 81 e2                                      add r2, r1, #2
00517cc0  cf e2 f7 eb                                      bl #0x310804
00517cc4  00 00 56 e3                                      cmp r6, #0
00517cc8  05 00 00 0a                                      beq #0x517ce4
00517ccc  60 00 9f e5                                      ldr r0, [pc, #0x60]
00517cd0  06 30 a0 e1                                      mov r3, r6
00517cd4  01 10 a0 e3                                      mov r1, #1
00517cd8  00 00 8f e0                                      add r0, pc, r0
00517cdc  02 20 a0 e3                                      mov r2, #2
00517ce0  2c da f7 eb                                      bl #0x30e598
00517ce4  00 00 54 e3                                      cmp r4, #0
00517ce8  05 00 00 0a                                      beq #0x517d04
00517cec  44 10 9f e5                                      ldr r1, [pc, #0x44]
00517cf0  04 00 a0 e1                                      mov r0, r4
00517cf4  01 10 8f e0                                      add r1, pc, r1
00517cf8  02 20 81 e2                                      add r2, r1, #2
00517cfc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00517d00  bf e2 f7 ea                                      b #0x310804
00517d04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00517d08  cc 45 3c 00 b0 45 3c 00 8c 45 3c 00 84 45 3c 00  .byte 0xcc, 0x45, 0x3c, 0x00, 0xb0, 0x45, 0x3c, 0x00, 0x8c, 0x45, 0x3c, 0x00, 0x84, 0x45, 0x3c, 0x00
00517d18  70 45 3c 00 4c 45 3c 00 44 45 3c 00 08 45 3c 00  .byte 0x70, 0x45, 0x3c, 0x00, 0x4c, 0x45, 0x3c, 0x00, 0x44, 0x45, 0x3c, 0x00, 0x08, 0x45, 0x3c, 0x00
00517d28  04 45 3c 00 04 45 3c 00 a0 44 3c 00 d0 44 3c 00  .byte 0x04, 0x45, 0x3c, 0x00, 0x04, 0x45, 0x3c, 0x00, 0xa0, 0x44, 0x3c, 0x00, 0xd0, 0x44, 0x3c, 0x00
00517d38  b4 44 3c 00                                      .byte 0xb4, 0x44, 0x3c, 0x00

; FUNCTION 0x0051983c, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclaration8StreamInEPSiPSs
; demangled: TiXmlDeclaration::StreamIn(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
0051983c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00519840  00 60 a0 e1                                      mov r6, r0
00519844  08 d0 4d e2                                      sub sp, sp, #8
00519848  01 50 a0 e1                                      mov r5, r1
0051984c  02 80 a0 e1                                      mov r8, r2
00519850  00 30 95 e5                                      ldr r3, [r5]
00519854  05 00 a0 e1                                      mov r0, r5
00519858  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051985c  03 30 85 e0                                      add r3, r5, r3
00519860  08 40 93 e5                                      ldr r4, [r3, #8]
00519864  00 00 54 e3                                      cmp r4, #0
00519868  07 00 00 1a                                      bne #0x51988c
0051986c  94 fd ff eb                                      bl #0x518ec4
00519870  00 70 50 e2                                      subs r7, r0, #0
00519874  77 10 af e6                                      sxtb r1, r7
00519878  08 00 a0 e1                                      mov r0, r8
0051987c  04 00 00 da                                      ble #0x519894
00519880  75 42 f8 eb                                      bl #0x32a25c
00519884  3e 00 57 e3                                      cmp r7, #0x3e
00519888  f0 ff ff 1a                                      bne #0x519850
0051988c  08 d0 8d e2                                      add sp, sp, #8
00519890  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00519894  06 00 a0 e1                                      mov r0, r6
00519898  06 eb ff eb                                      bl #0x5144b8
0051989c  00 00 50 e3                                      cmp r0, #0
005198a0  f9 ff ff 0a                                      beq #0x51988c
005198a4  04 20 a0 e1                                      mov r2, r4
005198a8  0e 10 a0 e3                                      mov r1, #0xe
005198ac  04 30 a0 e1                                      mov r3, r4
005198b0  00 40 8d e5                                      str r4, [sp]
005198b4  0b ff ff eb                                      bl #0x5194e8
005198b8  f3 ff ff ea                                      b #0x51988c

; FUNCTION 0x0051af8c, declared_size=1048, range_size=1048, mode=arm
; class-group: TiXmlDeclaration
; alias: _ZN16TiXmlDeclaration5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlDeclaration::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
0051af8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051af90  e4 63 9f e5                                      ldr r6, [pc, #0x3e4]
0051af94  e4 c3 9f e5                                      ldr ip, [pc, #0x3e4]
0051af98  03 50 a0 e1                                      mov r5, r3
0051af9c  06 60 8f e0                                      add r6, pc, r6
0051afa0  0c 30 96 e7                                      ldr r3, [r6, ip]
0051afa4  47 df 4d e2                                      sub sp, sp, #0x11c
0051afa8  00 40 a0 e1                                      mov r4, r0
0051afac  00 30 93 e5                                      ldr r3, [r3]
0051afb0  01 00 a0 e1                                      mov r0, r1
0051afb4  05 10 a0 e1                                      mov r1, r5
0051afb8  10 c0 8d e5                                      str ip, [sp, #0x10]
0051afbc  02 80 a0 e1                                      mov r8, r2
0051afc0  14 31 8d e5                                      str r3, [sp, #0x114]
0051afc4  ef f5 ff eb                                      bl #0x518788
0051afc8  00 70 a0 e1                                      mov r7, r0
0051afcc  04 00 a0 e1                                      mov r0, r4
0051afd0  38 e5 ff eb                                      bl #0x5144b8
0051afd4  00 00 57 e3                                      cmp r7, #0
0051afd8  00 a0 a0 e1                                      mov sl, r0
0051afdc  02 00 00 0a                                      beq #0x51afec
0051afe0  d0 30 d7 e1                                      ldrsb r3, [r7]
0051afe4  00 00 53 e3                                      cmp r3, #0
0051afe8  0b 00 00 1a                                      bne #0x51b01c
0051afec  00 00 5a e3                                      cmp sl, #0
0051aff0  70 00 00 1a                                      bne #0x51b1b8
0051aff4  00 40 a0 e3                                      mov r4, #0
0051aff8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0051affc  14 21 9d e5                                      ldr r2, [sp, #0x114]
0051b000  00 30 96 e7                                      ldr r3, [r6, r0]
0051b004  04 00 a0 e1                                      mov r0, r4
0051b008  00 30 93 e5                                      ldr r3, [r3]
0051b00c  03 00 52 e1                                      cmp r2, r3
0051b010  d8 00 00 1a                                      bne #0x51b378
0051b014  47 df 8d e2                                      add sp, sp, #0x11c
0051b018  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051b01c  60 13 9f e5                                      ldr r1, [pc, #0x360]
0051b020  07 00 a0 e1                                      mov r0, r7
0051b024  01 20 a0 e3                                      mov r2, #1
0051b028  01 10 8f e0                                      add r1, pc, r1
0051b02c  05 30 a0 e1                                      mov r3, r5
0051b030  19 f6 ff eb                                      bl #0x51889c
0051b034  00 00 50 e3                                      cmp r0, #0
0051b038  eb ff ff 0a                                      beq #0x51afec
0051b03c  00 00 58 e3                                      cmp r8, #0
0051b040  07 00 00 0a                                      beq #0x51b064
0051b044  08 00 a0 e1                                      mov r0, r8
0051b048  07 10 a0 e1                                      mov r1, r7
0051b04c  05 20 a0 e1                                      mov r2, r5
0051b050  70 f5 ff eb                                      bl #0x518618
0051b054  00 30 98 e5                                      ldr r3, [r8]
0051b058  04 30 84 e5                                      str r3, [r4, #4]
0051b05c  04 30 98 e5                                      ldr r3, [r8, #4]
0051b060  08 30 84 e5                                      str r3, [r4, #8]
0051b064  1c a3 9f e5                                      ldr sl, [pc, #0x31c]
0051b068  58 30 84 e2                                      add r3, r4, #0x58
0051b06c  40 00 84 e2                                      add r0, r4, #0x40
0051b070  0a a0 8f e0                                      add sl, pc, sl
0051b074  0a 10 a0 e1                                      mov r1, sl
0051b078  0a 20 a0 e1                                      mov r2, sl
0051b07c  18 30 8d e5                                      str r3, [sp, #0x18]
0051b080  70 40 84 e2                                      add r4, r4, #0x70
0051b084  0c 00 8d e5                                      str r0, [sp, #0xc]
0051b088  54 d6 f7 eb                                      bl #0x3109e0
0051b08c  0a 10 a0 e1                                      mov r1, sl
0051b090  0a 20 a0 e1                                      mov r2, sl
0051b094  18 00 9d e5                                      ldr r0, [sp, #0x18]
0051b098  50 d6 f7 eb                                      bl #0x3109e0
0051b09c  24 40 8d e5                                      str r4, [sp, #0x24]
0051b0a0  0a 10 a0 e1                                      mov r1, sl
0051b0a4  05 40 87 e2                                      add r4, r7, #5
0051b0a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
0051b0ac  0a 20 a0 e1                                      mov r2, sl
0051b0b0  4a d6 f7 eb                                      bl #0x3109e0
0051b0b4  00 00 54 e3                                      cmp r4, #0
0051b0b8  ce ff ff 0a                                      beq #0x51aff8
0051b0bc  05 30 d7 e5                                      ldrb r3, [r7, #5]
0051b0c0  00 00 53 e3                                      cmp r3, #0
0051b0c4  ca ff ff 0a                                      beq #0x51aff4
0051b0c8  3e 00 53 e3                                      cmp r3, #0x3e
0051b0cc  8c 00 00 0a                                      beq #0x51b304
0051b0d0  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
0051b0d4  b4 22 9f e5                                      ldr r2, [pc, #0x2b4]
0051b0d8  30 c0 8d e2                                      add ip, sp, #0x30
0051b0dc  03 30 8f e0                                      add r3, pc, r3
0051b0e0  14 30 8d e5                                      str r3, [sp, #0x14]
0051b0e4  a8 32 9f e5                                      ldr r3, [pc, #0x2a8]
0051b0e8  a8 a2 9f e5                                      ldr sl, [pc, #0x2a8]
0051b0ec  a8 92 9f e5                                      ldr sb, [pc, #0x2a8]
0051b0f0  a8 b2 9f e5                                      ldr fp, [pc, #0x2a8]
0051b0f4  03 30 8f e0                                      add r3, pc, r3
0051b0f8  2c 00 8c e2                                      add r0, ip, #0x2c
0051b0fc  1c c0 8d e5                                      str ip, [sp, #0x1c]
0051b100  20 30 8d e5                                      str r3, [sp, #0x20]
0051b104  28 00 8d e5                                      str r0, [sp, #0x28]
0051b108  2c 20 8d e5                                      str r2, [sp, #0x2c]
0051b10c  04 00 a0 e1                                      mov r0, r4
0051b110  05 10 a0 e1                                      mov r1, r5
0051b114  9b f5 ff eb                                      bl #0x518788
0051b118  0a 10 8f e0                                      add r1, pc, sl
0051b11c  01 20 a0 e3                                      mov r2, #1
0051b120  05 30 a0 e1                                      mov r3, r5
0051b124  00 40 a0 e1                                      mov r4, r0
0051b128  db f5 ff eb                                      bl #0x51889c
0051b12c  00 00 50 e3                                      cmp r0, #0
0051b130  28 00 00 0a                                      beq #0x51b1d8
0051b134  c8 70 8d e2                                      add r7, sp, #0xc8
0051b138  07 00 a0 e1                                      mov r0, r7
0051b13c  e3 ea ff eb                                      bl #0x515cd0
0051b140  05 30 a0 e1                                      mov r3, r5
0051b144  04 10 a0 e1                                      mov r1, r4
0051b148  08 20 a0 e1                                      mov r2, r8
0051b14c  07 00 a0 e1                                      mov r0, r7
0051b150  f8 fe ff eb                                      bl #0x51ad38
0051b154  08 11 9d e5                                      ldr r1, [sp, #0x108]
0051b158  00 40 a0 e1                                      mov r4, r0
0051b15c  01 00 a0 e1                                      mov r0, r1
0051b160  08 10 8d e5                                      str r1, [sp, #8]
0051b164  3a cb f7 eb                                      bl #0x30de54
0051b168  08 10 9d e5                                      ldr r1, [sp, #8]
0051b16c  00 20 81 e0                                      add r2, r1, r0
0051b170  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0051b174  19 d6 f7 eb                                      bl #0x3109e0
0051b178  09 30 96 e7                                      ldr r3, [r6, sb]
0051b17c  2c 00 87 e2                                      add r0, r7, #0x2c
0051b180  08 30 83 e2                                      add r3, r3, #8
0051b184  c8 30 8d e5                                      str r3, [sp, #0xc8]
0051b188  07 e2 f7 eb                                      bl #0x3139ac
0051b18c  14 00 87 e2                                      add r0, r7, #0x14
0051b190  05 e2 f7 eb                                      bl #0x3139ac
0051b194  0b 30 96 e7                                      ldr r3, [r6, fp]
0051b198  08 30 83 e2                                      add r3, r3, #8
0051b19c  c8 30 8d e5                                      str r3, [sp, #0xc8]
0051b1a0  00 00 54 e3                                      cmp r4, #0
0051b1a4  93 ff ff 0a                                      beq #0x51aff8
0051b1a8  00 30 d4 e5                                      ldrb r3, [r4]
0051b1ac  00 00 53 e3                                      cmp r3, #0
0051b1b0  8f ff ff 0a                                      beq #0x51aff4
0051b1b4  50 00 00 ea                                      b #0x51b2fc
0051b1b8  00 20 a0 e3                                      mov r2, #0
0051b1bc  0a 00 a0 e1                                      mov r0, sl
0051b1c0  0c 10 a0 e3                                      mov r1, #0xc
0051b1c4  02 30 a0 e1                                      mov r3, r2
0051b1c8  00 50 8d e5                                      str r5, [sp]
0051b1cc  00 40 a0 e3                                      mov r4, #0
0051b1d0  c4 f8 ff eb                                      bl #0x5194e8
0051b1d4  87 ff ff ea                                      b #0x51aff8
0051b1d8  04 00 a0 e1                                      mov r0, r4
0051b1dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
0051b1e0  01 20 a0 e3                                      mov r2, #1
0051b1e4  05 30 a0 e1                                      mov r3, r5
0051b1e8  ab f5 ff eb                                      bl #0x51889c
0051b1ec  00 00 50 e3                                      cmp r0, #0
0051b1f0  1b 00 00 0a                                      beq #0x51b264
0051b1f4  7c 70 8d e2                                      add r7, sp, #0x7c
0051b1f8  07 00 a0 e1                                      mov r0, r7
0051b1fc  b3 ea ff eb                                      bl #0x515cd0
0051b200  05 30 a0 e1                                      mov r3, r5
0051b204  04 10 a0 e1                                      mov r1, r4
0051b208  08 20 a0 e1                                      mov r2, r8
0051b20c  07 00 a0 e1                                      mov r0, r7
0051b210  c8 fe ff eb                                      bl #0x51ad38
0051b214  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
0051b218  00 40 a0 e1                                      mov r4, r0
0051b21c  01 00 a0 e1                                      mov r0, r1
0051b220  08 10 8d e5                                      str r1, [sp, #8]
0051b224  0a cb f7 eb                                      bl #0x30de54
0051b228  08 10 9d e5                                      ldr r1, [sp, #8]
0051b22c  00 20 81 e0                                      add r2, r1, r0
0051b230  18 00 9d e5                                      ldr r0, [sp, #0x18]
0051b234  e9 d5 f7 eb                                      bl #0x3109e0
0051b238  09 30 96 e7                                      ldr r3, [r6, sb]
0051b23c  2c 00 87 e2                                      add r0, r7, #0x2c
0051b240  08 30 83 e2                                      add r3, r3, #8
0051b244  7c 30 8d e5                                      str r3, [sp, #0x7c]
0051b248  d7 e1 f7 eb                                      bl #0x3139ac
0051b24c  14 00 87 e2                                      add r0, r7, #0x14
0051b250  d5 e1 f7 eb                                      bl #0x3139ac
0051b254  0b 30 96 e7                                      ldr r3, [r6, fp]
0051b258  08 30 83 e2                                      add r3, r3, #8
0051b25c  7c 30 8d e5                                      str r3, [sp, #0x7c]
0051b260  ce ff ff ea                                      b #0x51b1a0
0051b264  04 00 a0 e1                                      mov r0, r4
0051b268  20 10 9d e5                                      ldr r1, [sp, #0x20]
0051b26c  01 20 a0 e3                                      mov r2, #1
0051b270  05 30 a0 e1                                      mov r3, r5
0051b274  88 f5 ff eb                                      bl #0x51889c
0051b278  00 00 50 e3                                      cmp r0, #0
0051b27c  22 00 00 1a                                      bne #0x51b30c
0051b280  00 00 54 e3                                      cmp r4, #0
0051b284  5b ff ff 0a                                      beq #0x51aff8
0051b288  00 30 d4 e5                                      ldrb r3, [r4]
0051b28c  00 00 53 e3                                      cmp r3, #0
0051b290  57 ff ff 0a                                      beq #0x51aff4
0051b294  73 20 af e6                                      sxtb r2, r3
0051b298  3e 00 52 e3                                      cmp r2, #0x3e
0051b29c  15 00 00 0a                                      beq #0x51b2f8
0051b2a0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0051b2a4  0c 10 96 e7                                      ldr r1, [r6, ip]
0051b2a8  00 10 91 e5                                      ldr r1, [r1]
0051b2ac  02 00 00 ea                                      b #0x51b2bc
0051b2b0  73 20 af e6                                      sxtb r2, r3
0051b2b4  3e 00 52 e3                                      cmp r2, #0x3e
0051b2b8  0e 00 00 0a                                      beq #0x51b2f8
0051b2bc  03 30 81 e0                                      add r3, r1, r3
0051b2c0  01 30 d3 e5                                      ldrb r3, [r3, #1]
0051b2c4  d3 31 e0 e7                                      ubfx r3, r3, #3, #1
0051b2c8  0a 00 52 e3                                      cmp r2, #0xa
0051b2cc  01 30 83 03                                      orreq r3, r3, #1
0051b2d0  00 00 53 e3                                      cmp r3, #0
0051b2d4  b1 ff ff 1a                                      bne #0x51b1a0
0051b2d8  0d 00 52 e3                                      cmp r2, #0xd
0051b2dc  af ff ff 0a                                      beq #0x51b1a0
0051b2e0  01 40 94 e2                                      adds r4, r4, #1
0051b2e4  43 ff ff 0a                                      beq #0x51aff8
0051b2e8  00 30 d4 e5                                      ldrb r3, [r4]
0051b2ec  00 00 53 e3                                      cmp r3, #0
0051b2f0  3f ff ff 0a                                      beq #0x51aff4
0051b2f4  ed ff ff ea                                      b #0x51b2b0
0051b2f8  3e 30 a0 e3                                      mov r3, #0x3e
0051b2fc  3e 00 53 e3                                      cmp r3, #0x3e
0051b300  81 ff ff 1a                                      bne #0x51b10c
0051b304  01 40 84 e2                                      add r4, r4, #1
0051b308  3a ff ff ea                                      b #0x51aff8
0051b30c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0051b310  6e ea ff eb                                      bl #0x515cd0
0051b314  04 10 a0 e1                                      mov r1, r4
0051b318  05 30 a0 e1                                      mov r3, r5
0051b31c  08 20 a0 e1                                      mov r2, r8
0051b320  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0051b324  83 fe ff eb                                      bl #0x51ad38
0051b328  70 70 9d e5                                      ldr r7, [sp, #0x70]
0051b32c  00 40 a0 e1                                      mov r4, r0
0051b330  07 00 a0 e1                                      mov r0, r7
0051b334  c6 ca f7 eb                                      bl #0x30de54
0051b338  07 10 a0 e1                                      mov r1, r7
0051b33c  00 20 87 e0                                      add r2, r7, r0
0051b340  24 00 9d e5                                      ldr r0, [sp, #0x24]
0051b344  a5 d5 f7 eb                                      bl #0x3109e0
0051b348  09 30 96 e7                                      ldr r3, [r6, sb]
0051b34c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0051b350  08 30 83 e2                                      add r3, r3, #8
0051b354  30 30 8d e5                                      str r3, [sp, #0x30]
0051b358  93 e1 f7 eb                                      bl #0x3139ac
0051b35c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0051b360  14 00 83 e2                                      add r0, r3, #0x14
0051b364  90 e1 f7 eb                                      bl #0x3139ac
0051b368  0b 30 96 e7                                      ldr r3, [r6, fp]
0051b36c  08 30 83 e2                                      add r3, r3, #8
0051b370  30 30 8d e5                                      str r3, [sp, #0x30]
0051b374  89 ff ff ea                                      b #0x51b1a0
0051b378  e4 cb f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051b37c  f4 9a 47 00 ac 40 00 00 d8 17 3c 00 98 07 3b 00  .byte 0xf4, 0x9a, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0x17, 0x3c, 0x00, 0x98, 0x07, 0x3b, 0x00
0051b38c  4c 17 3c 00 dc 1d 00 00 44 17 3c 00 08 17 3c 00  .byte 0x4c, 0x17, 0x3c, 0x00, 0xdc, 0x1d, 0x00, 0x00, 0x44, 0x17, 0x3c, 0x00, 0x08, 0x17, 0x3c, 0x00
0051b39c  08 06 00 00 d0 21 00 00                          .byte 0x08, 0x06, 0x00, 0x00, 0xd0, 0x21, 0x00, 0x00
