; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005763a0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IXMLWriter
; alias: _ZN6glitch2io10IXMLWriterD1Ev
; demangled: glitch::io::IXMLWriter::~IXMLWriter()
; decoder-mode: arm
005763a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00576ba4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IXMLWriter
; alias: _ZN6glitch2io10IXMLWriterD0Ev
; demangled: glitch::io::IXMLWriter::~IXMLWriter()
; decoder-mode: arm
00576ba4  10 40 2d e9                                      push {r4, lr}
00576ba8  00 40 a0 e1                                      mov r4, r0
00576bac  bf 5d f6 eb                                      bl #0x30e2b0
00576bb0  04 00 a0 e1                                      mov r0, r4
00576bb4  10 80 bd e8                                      pop {r4, pc}
