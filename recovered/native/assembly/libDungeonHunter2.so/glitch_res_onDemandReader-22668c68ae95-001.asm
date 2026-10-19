; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060b2b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::res::onDemandReader
; alias: _ZN6glitch3res14onDemandReaderD1Ev
; demangled: glitch::res::onDemandReader::~onDemandReader()
; decoder-mode: arm
0060b2b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060b658, declared_size=20, range_size=20, mode=arm
; class-group: glitch::res::onDemandReader
; alias: _ZN6glitch3res14onDemandReaderD0Ev
; demangled: glitch::res::onDemandReader::~onDemandReader()
; decoder-mode: arm
0060b658  10 40 2d e9                                      push {r4, lr}
0060b65c  00 40 a0 e1                                      mov r4, r0
0060b660  12 0b f4 eb                                      bl #0x30e2b0
0060b664  04 00 a0 e1                                      mov r0, r4
0060b668  10 80 bd e8                                      pop {r4, pc}
