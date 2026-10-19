; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069ac8c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDomain
; alias: _ZN6glitch2ps7PDomainD1Ev
; demangled: glitch::ps::PDomain::~PDomain()
; decoder-mode: arm
0069ac8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069bfb8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDomain
; alias: _ZN6glitch2ps7PDomainD0Ev
; demangled: glitch::ps::PDomain::~PDomain()
; decoder-mode: arm
0069bfb8  10 40 2d e9                                      push {r4, lr}
0069bfbc  00 40 a0 e1                                      mov r4, r0
0069bfc0  ba c8 f1 eb                                      bl #0x30e2b0
0069bfc4  04 00 a0 e1                                      mov r0, r4
0069bfc8  10 80 bd e8                                      pop {r4, pc}
