; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00570ccc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttributesReader
; alias: _ZN6glitch2io17IAttributesReaderD1Ev
; demangled: glitch::io::IAttributesReader::~IAttributesReader()
; decoder-mode: arm
00570ccc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00570f68, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttributesReader
; alias: _ZN6glitch2io17IAttributesReaderD0Ev
; demangled: glitch::io::IAttributesReader::~IAttributesReader()
; decoder-mode: arm
00570f68  10 40 2d e9                                      push {r4, lr}
00570f6c  00 40 a0 e1                                      mov r4, r0
00570f70  ce 74 f6 eb                                      bl #0x30e2b0
00570f74  04 00 a0 e1                                      mov r0, r4
00570f78  10 80 bd e8                                      pop {r4, pc}
