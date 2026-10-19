; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00571afc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttributesWriter
; alias: _ZN6glitch2io17IAttributesWriterD1Ev
; demangled: glitch::io::IAttributesWriter::~IAttributesWriter()
; decoder-mode: arm
00571afc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00571c3c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttributesWriter
; alias: _ZN6glitch2io17IAttributesWriterD0Ev
; demangled: glitch::io::IAttributesWriter::~IAttributesWriter()
; decoder-mode: arm
00571c3c  10 40 2d e9                                      push {r4, lr}
00571c40  00 40 a0 e1                                      mov r4, r0
00571c44  99 71 f6 eb                                      bl #0x30e2b0
00571c48  04 00 a0 e1                                      mov r0, r4
00571c4c  10 80 bd e8                                      pop {r4, pc}
