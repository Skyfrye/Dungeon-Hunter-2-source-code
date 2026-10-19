; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560748, declared_size=4, range_size=4, mode=arm
; class-group: glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributesD1Ev
; demangled: glitch::io::IAttributes::~IAttributes()
; decoder-mode: arm
00560748  1e ff 2f e1                                      bx lr

; FUNCTION 0x00561b54, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::IAttributes
; alias: _ZN6glitch2io11IAttributesD0Ev
; demangled: glitch::io::IAttributes::~IAttributes()
; decoder-mode: arm
00561b54  10 40 2d e9                                      push {r4, lr}
00561b58  00 40 a0 e1                                      mov r4, r0
00561b5c  d3 b1 f6 eb                                      bl #0x30e2b0
00561b60  04 00 a0 e1                                      mov r0, r4
00561b64  10 80 bd e8                                      pop {r4, pc}
