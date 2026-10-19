; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00657814, declared_size=4, range_size=4, mode=arm
; class-group: glitch::res::FileReader
; alias: _ZN6glitch3res10FileReaderD1Ev
; demangled: glitch::res::FileReader::~FileReader()
; decoder-mode: arm
00657814  1e ff 2f e1                                      bx lr

; FUNCTION 0x006579f4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::res::FileReader
; alias: _ZN6glitch3res10FileReaderD0Ev
; demangled: glitch::res::FileReader::~FileReader()
; decoder-mode: arm
006579f4  10 40 2d e9                                      push {r4, lr}
006579f8  00 40 a0 e1                                      mov r4, r0
006579fc  2b da f2 eb                                      bl #0x30e2b0
00657a00  04 00 a0 e1                                      mov r0, r4
00657a04  10 80 bd e8                                      pop {r4, pc}
