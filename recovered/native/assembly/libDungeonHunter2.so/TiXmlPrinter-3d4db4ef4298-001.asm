; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00485aa0, declared_size=148, range_size=148, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinterC2Ev
; demangled: TiXmlPrinter::TiXmlPrinter()
; decoder-mode: arm
00485aa0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00485aa4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00485aa8  30 40 2d e9                                      push {r4, r5, lr}
00485aac  03 30 8f e0                                      add r3, pc, r3
00485ab0  01 10 93 e7                                      ldr r1, [r3, r1]
00485ab4  00 40 a0 e1                                      mov r4, r0
00485ab8  0c 20 80 e2                                      add r2, r0, #0xc
00485abc  00 50 a0 e3                                      mov r5, #0
00485ac0  08 10 81 e2                                      add r1, r1, #8
00485ac4  00 10 80 e5                                      str r1, [r0]
00485ac8  0c d0 4d e2                                      sub sp, sp, #0xc
00485acc  02 00 a0 e1                                      mov r0, r2
00485ad0  1c 20 84 e5                                      str r2, [r4, #0x1c]
00485ad4  20 20 84 e5                                      str r2, [r4, #0x20]
00485ad8  04 50 84 e5                                      str r5, [r4, #4]
00485adc  08 50 c4 e5                                      strb r5, [r4, #8]
00485ae0  10 10 a0 e3                                      mov r1, #0x10
00485ae4  e4 2e fa eb                                      bl #0x31167c
00485ae8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00485aec  38 10 9f e5                                      ldr r1, [pc, #0x38]
00485af0  04 20 8d e2                                      add r2, sp, #4
00485af4  00 50 c3 e5                                      strb r5, [r3]
00485af8  01 10 8f e0                                      add r1, pc, r1
00485afc  24 00 84 e2                                      add r0, r4, #0x24
00485b00  79 39 fa eb                                      bl #0x3140ec
00485b04  24 10 9f e5                                      ldr r1, [pc, #0x24]
00485b08  3c 00 84 e2                                      add r0, r4, #0x3c
00485b0c  0d 20 a0 e1                                      mov r2, sp
00485b10  01 10 8f e0                                      add r1, pc, r1
00485b14  74 39 fa eb                                      bl #0x3140ec
00485b18  04 00 a0 e1                                      mov r0, r4
00485b1c  0c d0 8d e2                                      add sp, sp, #0xc
00485b20  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00485b24  e4 ef 50 00 44 3c 00 00 e0 f0 44 00 e0 5e 44 00  .byte 0xe4, 0xef, 0x50, 0x00, 0x44, 0x3c, 0x00, 0x00, 0xe0, 0xf0, 0x44, 0x00, 0xe0, 0x5e, 0x44, 0x00

; FUNCTION 0x00488434, declared_size=208, range_size=208, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinterD2Ev
; demangled: TiXmlPrinter::~TiXmlPrinter()
; decoder-mode: arm
00488434  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00488438  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0048843c  10 40 2d e9                                      push {r4, lr}
00488440  03 30 8f e0                                      add r3, pc, r3
00488444  02 20 93 e7                                      ldr r2, [r3, r2]
00488448  00 10 a0 e1                                      mov r1, r0
0048844c  00 40 a0 e1                                      mov r4, r0
00488450  08 20 82 e2                                      add r2, r2, #8
00488454  3c 20 81 e4                                      str r2, [r1], #0x3c
00488458  14 00 91 e5                                      ldr r0, [r1, #0x14]
0048845c  01 00 50 e1                                      cmp r0, r1
00488460  06 00 00 0a                                      beq #0x488480
00488464  00 00 50 e3                                      cmp r0, #0
00488468  04 00 00 0a                                      beq #0x488480
0048846c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00488470  01 10 60 e0                                      rsb r1, r0, r1
00488474  80 00 51 e3                                      cmp r1, #0x80
00488478  18 00 00 8a                                      bhi #0x4884e0
0048847c  9f 02 0a eb                                      bl #0x708f00
00488480  24 30 84 e2                                      add r3, r4, #0x24
00488484  14 00 93 e5                                      ldr r0, [r3, #0x14]
00488488  03 00 50 e1                                      cmp r0, r3
0048848c  06 00 00 0a                                      beq #0x4884ac
00488490  00 00 50 e3                                      cmp r0, #0
00488494  04 00 00 0a                                      beq #0x4884ac
00488498  24 10 94 e5                                      ldr r1, [r4, #0x24]
0048849c  01 10 60 e0                                      rsb r1, r0, r1
004884a0  80 00 51 e3                                      cmp r1, #0x80
004884a4  0f 00 00 8a                                      bhi #0x4884e8
004884a8  94 02 0a eb                                      bl #0x708f00
004884ac  0c 30 84 e2                                      add r3, r4, #0xc
004884b0  14 00 93 e5                                      ldr r0, [r3, #0x14]
004884b4  03 00 50 e1                                      cmp r0, r3
004884b8  06 00 00 0a                                      beq #0x4884d8
004884bc  00 00 50 e3                                      cmp r0, #0
004884c0  04 00 00 0a                                      beq #0x4884d8
004884c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004884c8  01 10 60 e0                                      rsb r1, r0, r1
004884cc  80 00 51 e3                                      cmp r1, #0x80
004884d0  06 00 00 8a                                      bhi #0x4884f0
004884d4  89 02 0a eb                                      bl #0x708f00
004884d8  04 00 a0 e1                                      mov r0, r4
004884dc  10 80 bd e8                                      pop {r4, pc}
004884e0  d6 1f fa eb                                      bl #0x310440
004884e4  e5 ff ff ea                                      b #0x488480
004884e8  d4 1f fa eb                                      bl #0x310440
004884ec  ee ff ff ea                                      b #0x4884ac
004884f0  d2 1f fa eb                                      bl #0x310440
004884f4  04 00 a0 e1                                      mov r0, r4
004884f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004884fc  50 c6 50 00 44 3c 00 00                          .byte 0x50, 0xc6, 0x50, 0x00, 0x44, 0x3c, 0x00, 0x00

; FUNCTION 0x005148e8, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter10VisitEnterERK13TiXmlDocument
; demangled: TiXmlPrinter::VisitEnter(TiXmlDocument const&)
; decoder-mode: arm
005148e8  01 00 a0 e3                                      mov r0, #1
005148ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005148f0, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter9VisitExitERK13TiXmlDocument
; demangled: TiXmlPrinter::VisitExit(TiXmlDocument const&)
; decoder-mode: arm
005148f0  01 00 a0 e3                                      mov r0, #1
005148f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051494c, declared_size=68, range_size=68, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinterD1Ev
; demangled: TiXmlPrinter::~TiXmlPrinter()
; decoder-mode: arm
0051494c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00514950  34 20 9f e5                                      ldr r2, [pc, #0x34]
00514954  10 40 2d e9                                      push {r4, lr}
00514958  03 30 8f e0                                      add r3, pc, r3
0051495c  02 20 93 e7                                      ldr r2, [r3, r2]
00514960  00 40 a0 e1                                      mov r4, r0
00514964  08 20 82 e2                                      add r2, r2, #8
00514968  3c 20 80 e4                                      str r2, [r0], #0x3c
0051496c  0e fc f7 eb                                      bl #0x3139ac
00514970  24 00 84 e2                                      add r0, r4, #0x24
00514974  0c fc f7 eb                                      bl #0x3139ac
00514978  0c 00 84 e2                                      add r0, r4, #0xc
0051497c  0a fc f7 eb                                      bl #0x3139ac
00514980  04 00 a0 e1                                      mov r0, r4
00514984  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00514988  38 01 48 00 44 3c 00 00                          .byte 0x38, 0x01, 0x48, 0x00, 0x44, 0x3c, 0x00, 0x00

; FUNCTION 0x00514990, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinterD0Ev
; demangled: TiXmlPrinter::~TiXmlPrinter()
; decoder-mode: arm
00514990  10 40 2d e9                                      push {r4, lr}
00514994  00 40 a0 e1                                      mov r4, r0
00514998  eb ff ff eb                                      bl #0x51494c
0051499c  04 00 a0 e1                                      mov r0, r4
005149a0  a6 ee f7 eb                                      bl #0x310440
005149a4  04 00 a0 e1                                      mov r0, r4
005149a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00515b5c, declared_size=120, range_size=120, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter5VisitERK16TiXmlDeclaration
; demangled: TiXmlPrinter::Visit(TiXmlDeclaration const&)
; decoder-mode: arm
00515b5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00515b60  04 30 90 e5                                      ldr r3, [r0, #4]
00515b64  00 40 a0 e1                                      mov r4, r0
00515b68  01 60 a0 e1                                      mov r6, r1
00515b6c  00 00 53 e3                                      cmp r3, #0
00515b70  0c 50 80 d2                                      addle r5, r0, #0xc
00515b74  09 00 00 da                                      ble #0x515ba0
00515b78  0c 50 80 e2                                      add r5, r0, #0xc
00515b7c  00 70 a0 e3                                      mov r7, #0
00515b80  05 00 a0 e1                                      mov r0, r5
00515b84  38 10 94 e5                                      ldr r1, [r4, #0x38]
00515b88  34 20 94 e5                                      ldr r2, [r4, #0x34]
00515b8c  1c eb f7 eb                                      bl #0x310804
00515b90  04 30 94 e5                                      ldr r3, [r4, #4]
00515b94  01 70 87 e2                                      add r7, r7, #1
00515b98  03 00 57 e1                                      cmp r7, r3
00515b9c  f7 ff ff ba                                      blt #0x515b80
00515ba0  00 10 a0 e3                                      mov r1, #0
00515ba4  06 00 a0 e1                                      mov r0, r6
00515ba8  01 20 a0 e1                                      mov r2, r1
00515bac  05 30 a0 e1                                      mov r3, r5
00515bb0  00 c0 96 e5                                      ldr ip, [r6]
00515bb4  0f e0 a0 e1                                      mov lr, pc
00515bb8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00515bbc  05 00 a0 e1                                      mov r0, r5
00515bc0  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00515bc4  50 10 94 e5                                      ldr r1, [r4, #0x50]
00515bc8  0d eb f7 eb                                      bl #0x310804
00515bcc  01 00 a0 e3                                      mov r0, #1
00515bd0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005160c0, declared_size=148, range_size=148, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinterC1Ev
; demangled: TiXmlPrinter::TiXmlPrinter()
; decoder-mode: arm
005160c0  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
005160c4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
005160c8  30 40 2d e9                                      push {r4, r5, lr}
005160cc  03 30 8f e0                                      add r3, pc, r3
005160d0  01 10 93 e7                                      ldr r1, [r3, r1]
005160d4  00 40 a0 e1                                      mov r4, r0
005160d8  0c 20 80 e2                                      add r2, r0, #0xc
005160dc  00 50 a0 e3                                      mov r5, #0
005160e0  08 10 81 e2                                      add r1, r1, #8
005160e4  00 10 80 e5                                      str r1, [r0]
005160e8  0c d0 4d e2                                      sub sp, sp, #0xc
005160ec  02 00 a0 e1                                      mov r0, r2
005160f0  1c 20 84 e5                                      str r2, [r4, #0x1c]
005160f4  20 20 84 e5                                      str r2, [r4, #0x20]
005160f8  04 50 84 e5                                      str r5, [r4, #4]
005160fc  08 50 c4 e5                                      strb r5, [r4, #8]
00516100  10 10 a0 e3                                      mov r1, #0x10
00516104  5c ed f7 eb                                      bl #0x31167c
00516108  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0051610c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00516110  04 20 8d e2                                      add r2, sp, #4
00516114  00 50 c3 e5                                      strb r5, [r3]
00516118  01 10 8f e0                                      add r1, pc, r1
0051611c  24 00 84 e2                                      add r0, r4, #0x24
00516120  f1 f7 f7 eb                                      bl #0x3140ec
00516124  24 10 9f e5                                      ldr r1, [pc, #0x24]
00516128  3c 00 84 e2                                      add r0, r4, #0x3c
0051612c  0d 20 a0 e1                                      mov r2, sp
00516130  01 10 8f e0                                      add r1, pc, r1
00516134  ec f7 f7 eb                                      bl #0x3140ec
00516138  04 00 a0 e1                                      mov r0, r4
0051613c  0c d0 8d e2                                      add sp, sp, #0xc
00516140  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00516144  c4 e9 47 00 44 3c 00 00 c0 ea 3b 00 c0 58 3b 00  .byte 0xc4, 0xe9, 0x47, 0x00, 0x44, 0x3c, 0x00, 0x00, 0xc0, 0xea, 0x3b, 0x00, 0xc0, 0x58, 0x3b, 0x00

; FUNCTION 0x00517924, declared_size=168, range_size=168, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter5VisitERK12TiXmlUnknown
; demangled: TiXmlPrinter::Visit(TiXmlUnknown const&)
; decoder-mode: arm
00517924  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00517928  04 30 90 e5                                      ldr r3, [r0, #4]
0051792c  00 40 a0 e1                                      mov r4, r0
00517930  01 70 a0 e1                                      mov r7, r1
00517934  00 00 53 e3                                      cmp r3, #0
00517938  0c 60 80 d2                                      addle r6, r0, #0xc
0051793c  09 00 00 da                                      ble #0x517968
00517940  0c 60 80 e2                                      add r6, r0, #0xc
00517944  00 50 a0 e3                                      mov r5, #0
00517948  06 00 a0 e1                                      mov r0, r6
0051794c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00517950  34 20 94 e5                                      ldr r2, [r4, #0x34]
00517954  aa e3 f7 eb                                      bl #0x310804
00517958  04 30 94 e5                                      ldr r3, [r4, #4]
0051795c  01 50 85 e2                                      add r5, r5, #1
00517960  03 00 55 e1                                      cmp r5, r3
00517964  f7 ff ff ba                                      blt #0x517948
00517968  54 10 9f e5                                      ldr r1, [pc, #0x54]
0051796c  06 00 a0 e1                                      mov r0, r6
00517970  01 10 8f e0                                      add r1, pc, r1
00517974  01 20 81 e2                                      add r2, r1, #1
00517978  a1 e3 f7 eb                                      bl #0x310804
0051797c  34 50 97 e5                                      ldr r5, [r7, #0x34]
00517980  05 00 a0 e1                                      mov r0, r5
00517984  32 d9 f7 eb                                      bl #0x30de54
00517988  05 10 a0 e1                                      mov r1, r5
0051798c  00 20 85 e0                                      add r2, r5, r0
00517990  06 00 a0 e1                                      mov r0, r6
00517994  9a e3 f7 eb                                      bl #0x310804
00517998  28 10 9f e5                                      ldr r1, [pc, #0x28]
0051799c  06 00 a0 e1                                      mov r0, r6
005179a0  01 10 8f e0                                      add r1, pc, r1
005179a4  01 20 81 e2                                      add r2, r1, #1
005179a8  95 e3 f7 eb                                      bl #0x310804
005179ac  06 00 a0 e1                                      mov r0, r6
005179b0  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
005179b4  50 10 94 e5                                      ldr r1, [r4, #0x50]
005179b8  91 e3 f7 eb                                      bl #0x310804
005179bc  01 00 a0 e3                                      mov r0, #1
005179c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005179c4  a0 47 3c 00 28 47 3c 00                          .byte 0xa0, 0x47, 0x3c, 0x00, 0x28, 0x47, 0x3c, 0x00

; FUNCTION 0x005179cc, declared_size=168, range_size=168, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter5VisitERK12TiXmlComment
; demangled: TiXmlPrinter::Visit(TiXmlComment const&)
; decoder-mode: arm
005179cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005179d0  04 30 90 e5                                      ldr r3, [r0, #4]
005179d4  00 40 a0 e1                                      mov r4, r0
005179d8  01 70 a0 e1                                      mov r7, r1
005179dc  00 00 53 e3                                      cmp r3, #0
005179e0  0c 60 80 d2                                      addle r6, r0, #0xc
005179e4  09 00 00 da                                      ble #0x517a10
005179e8  0c 60 80 e2                                      add r6, r0, #0xc
005179ec  00 50 a0 e3                                      mov r5, #0
005179f0  06 00 a0 e1                                      mov r0, r6
005179f4  38 10 94 e5                                      ldr r1, [r4, #0x38]
005179f8  34 20 94 e5                                      ldr r2, [r4, #0x34]
005179fc  80 e3 f7 eb                                      bl #0x310804
00517a00  04 30 94 e5                                      ldr r3, [r4, #4]
00517a04  01 50 85 e2                                      add r5, r5, #1
00517a08  03 00 55 e1                                      cmp r5, r3
00517a0c  f7 ff ff ba                                      blt #0x5179f0
00517a10  54 10 9f e5                                      ldr r1, [pc, #0x54]
00517a14  06 00 a0 e1                                      mov r0, r6
00517a18  01 10 8f e0                                      add r1, pc, r1
00517a1c  04 20 81 e2                                      add r2, r1, #4
00517a20  77 e3 f7 eb                                      bl #0x310804
00517a24  34 50 97 e5                                      ldr r5, [r7, #0x34]
00517a28  05 00 a0 e1                                      mov r0, r5
00517a2c  08 d9 f7 eb                                      bl #0x30de54
00517a30  05 10 a0 e1                                      mov r1, r5
00517a34  00 20 85 e0                                      add r2, r5, r0
00517a38  06 00 a0 e1                                      mov r0, r6
00517a3c  70 e3 f7 eb                                      bl #0x310804
00517a40  28 10 9f e5                                      ldr r1, [pc, #0x28]
00517a44  06 00 a0 e1                                      mov r0, r6
00517a48  01 10 8f e0                                      add r1, pc, r1
00517a4c  03 20 81 e2                                      add r2, r1, #3
00517a50  6b e3 f7 eb                                      bl #0x310804
00517a54  06 00 a0 e1                                      mov r0, r6
00517a58  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00517a5c  50 10 94 e5                                      ldr r1, [r4, #0x50]
00517a60  67 e3 f7 eb                                      bl #0x310804
00517a64  01 00 a0 e3                                      mov r0, #1
00517a68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00517a6c  00 47 3c 00 d8 46 3c 00                          .byte 0x00, 0x47, 0x3c, 0x00, 0xd8, 0x46, 0x3c, 0x00

; FUNCTION 0x00517a74, declared_size=208, range_size=208, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter9VisitExitERK12TiXmlElement
; demangled: TiXmlPrinter::VisitExit(TiXmlElement const&)
; decoder-mode: arm
00517a74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00517a78  04 30 90 e5                                      ldr r3, [r0, #4]
00517a7c  00 40 a0 e1                                      mov r4, r0
00517a80  01 70 a0 e1                                      mov r7, r1
00517a84  01 30 43 e2                                      sub r3, r3, #1
00517a88  04 30 80 e5                                      str r3, [r0, #4]
00517a8c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00517a90  00 00 52 e3                                      cmp r2, #0
00517a94  1a 00 00 0a                                      beq #0x517b04
00517a98  08 50 d0 e5                                      ldrb r5, [r0, #8]
00517a9c  00 00 55 e3                                      cmp r5, #0
00517aa0  00 30 a0 13                                      movne r3, #0
00517aa4  08 30 c0 15                                      strbne r3, [r0, #8]
00517aa8  17 00 00 0a                                      beq #0x517b0c
00517aac  0c 60 84 e2                                      add r6, r4, #0xc
00517ab0  84 10 9f e5                                      ldr r1, [pc, #0x84]
00517ab4  06 00 a0 e1                                      mov r0, r6
00517ab8  01 10 8f e0                                      add r1, pc, r1
00517abc  02 20 81 e2                                      add r2, r1, #2
00517ac0  4f e3 f7 eb                                      bl #0x310804
00517ac4  34 50 97 e5                                      ldr r5, [r7, #0x34]
00517ac8  05 00 a0 e1                                      mov r0, r5
00517acc  e0 d8 f7 eb                                      bl #0x30de54
00517ad0  05 10 a0 e1                                      mov r1, r5
00517ad4  00 20 85 e0                                      add r2, r5, r0
00517ad8  06 00 a0 e1                                      mov r0, r6
00517adc  48 e3 f7 eb                                      bl #0x310804
00517ae0  58 10 9f e5                                      ldr r1, [pc, #0x58]
00517ae4  06 00 a0 e1                                      mov r0, r6
00517ae8  01 10 8f e0                                      add r1, pc, r1
00517aec  01 20 81 e2                                      add r2, r1, #1
00517af0  43 e3 f7 eb                                      bl #0x310804
00517af4  06 00 a0 e1                                      mov r0, r6
00517af8  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00517afc  50 10 94 e5                                      ldr r1, [r4, #0x50]
00517b00  3f e3 f7 eb                                      bl #0x310804
00517b04  01 00 a0 e3                                      mov r0, #1
00517b08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00517b0c  00 00 53 e3                                      cmp r3, #0
00517b10  0c 60 80 c2                                      addgt r6, r0, #0xc
00517b14  e4 ff ff da                                      ble #0x517aac
00517b18  06 00 a0 e1                                      mov r0, r6
00517b1c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00517b20  34 20 94 e5                                      ldr r2, [r4, #0x34]
00517b24  36 e3 f7 eb                                      bl #0x310804
00517b28  04 30 94 e5                                      ldr r3, [r4, #4]
00517b2c  01 50 85 e2                                      add r5, r5, #1
00517b30  03 00 55 e1                                      cmp r5, r3
00517b34  f7 ff ff ba                                      blt #0x517b18
00517b38  dc ff ff ea                                      b #0x517ab0
; mapping-symbol data/literal pool
00517b3c  70 46 3c 00 e0 45 3c 00                          .byte 0x70, 0x46, 0x3c, 0x00, 0xe0, 0x45, 0x3c, 0x00

; FUNCTION 0x00517d3c, declared_size=472, range_size=472, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter5VisitERK9TiXmlText
; demangled: TiXmlPrinter::Visit(TiXmlText const&)
; decoder-mode: arm
00517d3c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00517d40  bc 71 9f e5                                      ldr r7, [pc, #0x1bc]
00517d44  bc 81 9f e5                                      ldr r8, [pc, #0x1bc]
00517d48  40 60 d1 e5                                      ldrb r6, [r1, #0x40]
00517d4c  07 70 8f e0                                      add r7, pc, r7
00517d50  08 30 97 e7                                      ldr r3, [r7, r8]
00517d54  3c d0 4d e2                                      sub sp, sp, #0x3c
00517d58  00 00 56 e3                                      cmp r6, #0
00517d5c  00 30 93 e5                                      ldr r3, [r3]
00517d60  01 a0 a0 e1                                      mov sl, r1
00517d64  00 40 a0 e1                                      mov r4, r0
00517d68  34 30 8d e5                                      str r3, [sp, #0x34]
00517d6c  3f 00 00 1a                                      bne #0x517e70
00517d70  08 50 d0 e5                                      ldrb r5, [r0, #8]
00517d74  00 00 55 e3                                      cmp r5, #0
00517d78  18 00 00 0a                                      beq #0x517de0
00517d7c  1c 50 8d e2                                      add r5, sp, #0x1c
00517d80  05 00 a0 e1                                      mov r0, r5
00517d84  10 10 a0 e3                                      mov r1, #0x10
00517d88  2c 50 8d e5                                      str r5, [sp, #0x2c]
00517d8c  30 50 8d e5                                      str r5, [sp, #0x30]
00517d90  39 e6 f7 eb                                      bl #0x31167c
00517d94  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00517d98  20 00 8a e2                                      add r0, sl, #0x20
00517d9c  05 10 a0 e1                                      mov r1, r5
00517da0  00 60 c3 e5                                      strb r6, [r3]
00517da4  c6 f5 ff eb                                      bl #0x5154c4
00517da8  0c 00 84 e2                                      add r0, r4, #0xc
00517dac  30 10 9d e5                                      ldr r1, [sp, #0x30]
00517db0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00517db4  92 e2 f7 eb                                      bl #0x310804
00517db8  05 00 a0 e1                                      mov r0, r5
00517dbc  fa ee f7 eb                                      bl #0x3139ac
00517dc0  08 30 97 e7                                      ldr r3, [r7, r8]
00517dc4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00517dc8  01 00 a0 e3                                      mov r0, #1
00517dcc  00 30 93 e5                                      ldr r3, [r3]
00517dd0  03 00 52 e1                                      cmp r2, r3
00517dd4  49 00 00 1a                                      bne #0x517f00
00517dd8  3c d0 8d e2                                      add sp, sp, #0x3c
00517ddc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00517de0  04 30 90 e5                                      ldr r3, [r0, #4]
00517de4  00 00 53 e3                                      cmp r3, #0
00517de8  0c 60 80 d2                                      addle r6, r0, #0xc
00517dec  08 00 00 da                                      ble #0x517e14
00517df0  0c 60 80 e2                                      add r6, r0, #0xc
00517df4  06 00 a0 e1                                      mov r0, r6
00517df8  38 10 94 e5                                      ldr r1, [r4, #0x38]
00517dfc  34 20 94 e5                                      ldr r2, [r4, #0x34]
00517e00  7f e2 f7 eb                                      bl #0x310804
00517e04  04 30 94 e5                                      ldr r3, [r4, #4]
00517e08  01 50 85 e2                                      add r5, r5, #1
00517e0c  03 00 55 e1                                      cmp r5, r3
00517e10  f7 ff ff ba                                      blt #0x517df4
00517e14  04 50 8d e2                                      add r5, sp, #4
00517e18  05 00 a0 e1                                      mov r0, r5
00517e1c  10 10 a0 e3                                      mov r1, #0x10
00517e20  14 50 8d e5                                      str r5, [sp, #0x14]
00517e24  18 50 8d e5                                      str r5, [sp, #0x18]
00517e28  13 e6 f7 eb                                      bl #0x31167c
00517e2c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00517e30  00 20 a0 e3                                      mov r2, #0
00517e34  20 00 8a e2                                      add r0, sl, #0x20
00517e38  00 20 c3 e5                                      strb r2, [r3]
00517e3c  05 10 a0 e1                                      mov r1, r5
00517e40  9f f5 ff eb                                      bl #0x5154c4
00517e44  18 10 9d e5                                      ldr r1, [sp, #0x18]
00517e48  14 20 9d e5                                      ldr r2, [sp, #0x14]
00517e4c  06 00 a0 e1                                      mov r0, r6
00517e50  6b e2 f7 eb                                      bl #0x310804
00517e54  06 00 a0 e1                                      mov r0, r6
00517e58  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00517e5c  50 10 94 e5                                      ldr r1, [r4, #0x50]
00517e60  67 e2 f7 eb                                      bl #0x310804
00517e64  05 00 a0 e1                                      mov r0, r5
00517e68  cf ee f7 eb                                      bl #0x3139ac
00517e6c  d3 ff ff ea                                      b #0x517dc0
00517e70  04 30 90 e5                                      ldr r3, [r0, #4]
00517e74  00 00 53 e3                                      cmp r3, #0
00517e78  0c 60 80 d2                                      addle r6, r0, #0xc
00517e7c  09 00 00 da                                      ble #0x517ea8
00517e80  0c 60 80 e2                                      add r6, r0, #0xc
00517e84  00 50 a0 e3                                      mov r5, #0
00517e88  06 00 a0 e1                                      mov r0, r6
00517e8c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00517e90  34 20 94 e5                                      ldr r2, [r4, #0x34]
00517e94  5a e2 f7 eb                                      bl #0x310804
00517e98  04 30 94 e5                                      ldr r3, [r4, #4]
00517e9c  01 50 85 e2                                      add r5, r5, #1
00517ea0  03 00 55 e1                                      cmp r5, r3
00517ea4  f7 ff ff ba                                      blt #0x517e88
00517ea8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00517eac  06 00 a0 e1                                      mov r0, r6
00517eb0  01 10 8f e0                                      add r1, pc, r1
00517eb4  09 20 81 e2                                      add r2, r1, #9
00517eb8  51 e2 f7 eb                                      bl #0x310804
00517ebc  34 50 9a e5                                      ldr r5, [sl, #0x34]
00517ec0  05 00 a0 e1                                      mov r0, r5
00517ec4  e2 d7 f7 eb                                      bl #0x30de54
00517ec8  05 10 a0 e1                                      mov r1, r5
00517ecc  00 20 85 e0                                      add r2, r5, r0
00517ed0  06 00 a0 e1                                      mov r0, r6
00517ed4  4a e2 f7 eb                                      bl #0x310804
00517ed8  30 10 9f e5                                      ldr r1, [pc, #0x30]
00517edc  06 00 a0 e1                                      mov r0, r6
00517ee0  01 10 8f e0                                      add r1, pc, r1
00517ee4  03 20 81 e2                                      add r2, r1, #3
00517ee8  45 e2 f7 eb                                      bl #0x310804
00517eec  06 00 a0 e1                                      mov r0, r6
00517ef0  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00517ef4  50 10 94 e5                                      ldr r1, [r4, #0x50]
00517ef8  41 e2 f7 eb                                      bl #0x310804
00517efc  af ff ff ea                                      b #0x517dc0
00517f00  02 d9 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00517f04  44 cd 47 00 ac 40 00 00 00 43 3c 00 e0 42 3c 00  .byte 0x44, 0xcd, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x43, 0x3c, 0x00, 0xe0, 0x42, 0x3c, 0x00

; FUNCTION 0x005182e8, declared_size=416, range_size=416, mode=arm
; class-group: TiXmlPrinter
; alias: _ZN12TiXmlPrinter10VisitEnterERK12TiXmlElementPK14TiXmlAttribute
; demangled: TiXmlPrinter::VisitEnter(TiXmlElement const&, TiXmlAttribute const*)
; decoder-mode: arm
005182e8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005182ec  04 30 90 e5                                      ldr r3, [r0, #4]
005182f0  00 40 a0 e1                                      mov r4, r0
005182f4  01 a0 a0 e1                                      mov sl, r1
005182f8  00 00 53 e3                                      cmp r3, #0
005182fc  02 60 a0 e1                                      mov r6, r2
00518300  0c 50 80 d2                                      addle r5, r0, #0xc
00518304  09 00 00 da                                      ble #0x518330
00518308  0c 50 80 e2                                      add r5, r0, #0xc
0051830c  00 70 a0 e3                                      mov r7, #0
00518310  05 00 a0 e1                                      mov r0, r5
00518314  38 10 94 e5                                      ldr r1, [r4, #0x38]
00518318  34 20 94 e5                                      ldr r2, [r4, #0x34]
0051831c  38 e1 f7 eb                                      bl #0x310804
00518320  04 30 94 e5                                      ldr r3, [r4, #4]
00518324  01 70 87 e2                                      add r7, r7, #1
00518328  03 00 57 e1                                      cmp r7, r3
0051832c  f7 ff ff ba                                      blt #0x518310
00518330  40 11 9f e5                                      ldr r1, [pc, #0x140]
00518334  05 00 a0 e1                                      mov r0, r5
00518338  01 10 8f e0                                      add r1, pc, r1
0051833c  01 20 81 e2                                      add r2, r1, #1
00518340  2f e1 f7 eb                                      bl #0x310804
00518344  34 70 9a e5                                      ldr r7, [sl, #0x34]
00518348  07 00 a0 e1                                      mov r0, r7
0051834c  c0 d6 f7 eb                                      bl #0x30de54
00518350  07 10 a0 e1                                      mov r1, r7
00518354  00 20 87 e0                                      add r2, r7, r0
00518358  05 00 a0 e1                                      mov r0, r5
0051835c  28 e1 f7 eb                                      bl #0x310804
00518360  00 00 56 e3                                      cmp r6, #0
00518364  0f 00 00 0a                                      beq #0x5183a8
00518368  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
0051836c  07 70 8f e0                                      add r7, pc, r7
00518370  01 80 87 e2                                      add r8, r7, #1
00518374  07 10 a0 e1                                      mov r1, r7
00518378  08 20 a0 e1                                      mov r2, r8
0051837c  05 00 a0 e1                                      mov r0, r5
00518380  1f e1 f7 eb                                      bl #0x310804
00518384  00 10 a0 e3                                      mov r1, #0
00518388  06 00 a0 e1                                      mov r0, r6
0051838c  01 20 a0 e1                                      mov r2, r1
00518390  05 30 a0 e1                                      mov r3, r5
00518394  de fe ff eb                                      bl #0x517f14
00518398  06 00 a0 e1                                      mov r0, r6
0051839c  a7 f0 ff eb                                      bl #0x514640
005183a0  00 60 50 e2                                      subs r6, r0, #0
005183a4  f2 ff ff 1a                                      bne #0x518374
005183a8  18 30 9a e5                                      ldr r3, [sl, #0x18]
005183ac  00 00 53 e3                                      cmp r3, #0
005183b0  18 00 00 0a                                      beq #0x518418
005183b4  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
005183b8  05 00 a0 e1                                      mov r0, r5
005183bc  01 10 8f e0                                      add r1, pc, r1
005183c0  01 20 81 e2                                      add r2, r1, #1
005183c4  0e e1 f7 eb                                      bl #0x310804
005183c8  18 30 9a e5                                      ldr r3, [sl, #0x18]
005183cc  03 00 a0 e1                                      mov r0, r3
005183d0  00 30 93 e5                                      ldr r3, [r3]
005183d4  0f e0 a0 e1                                      mov lr, pc
005183d8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005183dc  00 00 50 e3                                      cmp r0, #0
005183e0  03 00 00 0a                                      beq #0x5183f4
005183e4  18 20 9a e5                                      ldr r2, [sl, #0x18]
005183e8  1c 30 9a e5                                      ldr r3, [sl, #0x1c]
005183ec  02 00 53 e1                                      cmp r3, r2
005183f0  16 00 00 0a                                      beq #0x518450
005183f4  05 00 a0 e1                                      mov r0, r5
005183f8  50 10 94 e5                                      ldr r1, [r4, #0x50]
005183fc  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00518400  ff e0 f7 eb                                      bl #0x310804
00518404  04 30 94 e5                                      ldr r3, [r4, #4]
00518408  01 00 a0 e3                                      mov r0, #1
0051840c  00 30 83 e0                                      add r3, r3, r0
00518410  04 30 84 e5                                      str r3, [r4, #4]
00518414  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00518418  64 10 9f e5                                      ldr r1, [pc, #0x64]
0051841c  05 00 a0 e1                                      mov r0, r5
00518420  01 10 8f e0                                      add r1, pc, r1
00518424  03 20 81 e2                                      add r2, r1, #3
00518428  f5 e0 f7 eb                                      bl #0x310804
0051842c  05 00 a0 e1                                      mov r0, r5
00518430  50 10 94 e5                                      ldr r1, [r4, #0x50]
00518434  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
00518438  f1 e0 f7 eb                                      bl #0x310804
0051843c  04 30 94 e5                                      ldr r3, [r4, #4]
00518440  01 00 a0 e3                                      mov r0, #1
00518444  00 30 83 e0                                      add r3, r3, r0
00518448  04 30 84 e5                                      str r3, [r4, #4]
0051844c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00518450  03 00 a0 e1                                      mov r0, r3
00518454  00 30 93 e5                                      ldr r3, [r3]
00518458  0f e0 a0 e1                                      mov lr, pc
0051845c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00518460  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00518464  00 00 53 e3                                      cmp r3, #0
00518468  e1 ff ff 1a                                      bne #0x5183f4
0051846c  01 30 a0 e3                                      mov r3, #1
00518470  08 30 c4 e5                                      strb r3, [r4, #8]
00518474  e2 ff ff ea                                      b #0x518404
; mapping-symbol data/literal pool
00518478  d8 3d 3c 00 c4 90 3a 00 0c 3d 3c 00 b8 3c 3c 00  .byte 0xd8, 0x3d, 0x3c, 0x00, 0xc4, 0x90, 0x3a, 0x00, 0x0c, 0x3d, 0x3c, 0x00, 0xb8, 0x3c, 0x3c, 0x00
