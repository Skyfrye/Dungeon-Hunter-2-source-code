; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00483a04, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitorD1Ev
; demangled: TiXmlVisitor::~TiXmlVisitor()
; decoder-mode: arm
00483a04  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a08, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor10VisitEnterERK13TiXmlDocument
; demangled: TiXmlVisitor::VisitEnter(TiXmlDocument const&)
; decoder-mode: arm
00483a08  01 00 a0 e3                                      mov r0, #1
00483a0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a10, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor9VisitExitERK13TiXmlDocument
; demangled: TiXmlVisitor::VisitExit(TiXmlDocument const&)
; decoder-mode: arm
00483a10  01 00 a0 e3                                      mov r0, #1
00483a14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a18, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor10VisitEnterERK12TiXmlElementPK14TiXmlAttribute
; demangled: TiXmlVisitor::VisitEnter(TiXmlElement const&, TiXmlAttribute const*)
; decoder-mode: arm
00483a18  01 00 a0 e3                                      mov r0, #1
00483a1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a20, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor9VisitExitERK12TiXmlElement
; demangled: TiXmlVisitor::VisitExit(TiXmlElement const&)
; decoder-mode: arm
00483a20  01 00 a0 e3                                      mov r0, #1
00483a24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a28, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor5VisitERK16TiXmlDeclaration
; demangled: TiXmlVisitor::Visit(TiXmlDeclaration const&)
; decoder-mode: arm
00483a28  01 00 a0 e3                                      mov r0, #1
00483a2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a30, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor5VisitERK9TiXmlText
; demangled: TiXmlVisitor::Visit(TiXmlText const&)
; decoder-mode: arm
00483a30  01 00 a0 e3                                      mov r0, #1
00483a34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a38, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor5VisitERK12TiXmlComment
; demangled: TiXmlVisitor::Visit(TiXmlComment const&)
; decoder-mode: arm
00483a38  01 00 a0 e3                                      mov r0, #1
00483a3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00483a40, declared_size=8, range_size=8, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitor5VisitERK12TiXmlUnknown
; demangled: TiXmlVisitor::Visit(TiXmlUnknown const&)
; decoder-mode: arm
00483a40  01 00 a0 e3                                      mov r0, #1
00483a44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048436c, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlVisitor
; alias: _ZN12TiXmlVisitorD0Ev
; demangled: TiXmlVisitor::~TiXmlVisitor()
; decoder-mode: arm
0048436c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00484370  24 20 9f e5                                      ldr r2, [pc, #0x24]
00484374  10 40 2d e9                                      push {r4, lr}
00484378  03 30 8f e0                                      add r3, pc, r3
0048437c  02 20 93 e7                                      ldr r2, [r3, r2]
00484380  00 40 a0 e1                                      mov r4, r0
00484384  08 20 82 e2                                      add r2, r2, #8
00484388  00 20 80 e5                                      str r2, [r0]
0048438c  2b 30 fa eb                                      bl #0x310440
00484390  04 00 a0 e1                                      mov r0, r4
00484394  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00484398  18 07 51 00 98 27 00 00                          .byte 0x18, 0x07, 0x51, 0x00, 0x98, 0x27, 0x00, 0x00
