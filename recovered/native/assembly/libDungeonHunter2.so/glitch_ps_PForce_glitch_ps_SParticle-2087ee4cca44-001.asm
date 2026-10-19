; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062ff40, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PForce<glitch::ps::SParticle>
; alias: _ZN6glitch2ps6PForceINS0_9SParticleEED1Ev
; demangled: glitch::ps::PForce<glitch::ps::SParticle>::~PForce()
; decoder-mode: arm
0062ff40  1e ff 2f e1                                      bx lr

; FUNCTION 0x006306e8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PForce<glitch::ps::SParticle>
; alias: _ZN6glitch2ps6PForceINS0_9SParticleEED0Ev
; demangled: glitch::ps::PForce<glitch::ps::SParticle>::~PForce()
; decoder-mode: arm
006306e8  10 40 2d e9                                      push {r4, lr}
006306ec  00 40 a0 e1                                      mov r4, r0
006306f0  ee 76 f3 eb                                      bl #0x30e2b0
006306f4  04 00 a0 e1                                      mov r0, r4
006306f8  10 80 bd e8                                      pop {r4, pc}
