; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064d290, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps
; alias: _ZN6glitch2ps6PS_NEWEj
; demangled: glitch::ps::PS_NEW(unsigned int)
; decoder-mode: arm
0064d290  00 10 a0 e3                                      mov r1, #0
0064d294  b3 0c f3 ea                                      b #0x310568

; FUNCTION 0x0064d778, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps
; alias: _ZN6glitch2ps7PS_FREEEPv
; demangled: glitch::ps::PS_FREE(void*)
; decoder-mode: arm
0064d778  34 0b f3 ea                                      b #0x310450
