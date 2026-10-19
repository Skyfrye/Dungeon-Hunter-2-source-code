; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d5838, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IText
; alias: _ZN6glitch5scene5ITextD1Ev
; demangled: glitch::scene::IText::~IText()
; decoder-mode: arm
006d5838  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d5a68, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::IText
; alias: _ZN6glitch5scene5ITextD0Ev
; demangled: glitch::scene::IText::~IText()
; decoder-mode: arm
006d5a68  10 40 2d e9                                      push {r4, lr}
006d5a6c  00 40 a0 e1                                      mov r4, r0
006d5a70  0e e2 f0 eb                                      bl #0x30e2b0
006d5a74  04 00 a0 e1                                      mov r0, r4
006d5a78  10 80 bd e8                                      pop {r4, pc}
