; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060698c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::IImageWriter
; alias: _ZN6glitch5video12IImageWriterD1Ev
; demangled: glitch::video::IImageWriter::~IImageWriter()
; decoder-mode: arm
0060698c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00606a20, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::IImageWriter
; alias: _ZN6glitch5video12IImageWriterD0Ev
; demangled: glitch::video::IImageWriter::~IImageWriter()
; decoder-mode: arm
00606a20  10 40 2d e9                                      push {r4, lr}
00606a24  00 40 a0 e1                                      mov r4, r0
00606a28  20 1e f4 eb                                      bl #0x30e2b0
00606a2c  04 00 a0 e1                                      mov r0, r4
00606a30  10 80 bd e8                                      pop {r4, pc}
