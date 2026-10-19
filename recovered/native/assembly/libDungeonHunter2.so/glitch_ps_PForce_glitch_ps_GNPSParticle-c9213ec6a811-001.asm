; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062ff44, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PForce<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps6PForceINS0_12GNPSParticleEED1Ev
; demangled: glitch::ps::PForce<glitch::ps::GNPSParticle>::~PForce()
; decoder-mode: arm
0062ff44  1e ff 2f e1                                      bx lr

; FUNCTION 0x006306c0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PForce<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps6PForceINS0_12GNPSParticleEED0Ev
; demangled: glitch::ps::PForce<glitch::ps::GNPSParticle>::~PForce()
; decoder-mode: arm
006306c0  10 40 2d e9                                      push {r4, lr}
006306c4  00 40 a0 e1                                      mov r4, r0
006306c8  f8 76 f3 eb                                      bl #0x30e2b0
006306cc  04 00 a0 e1                                      mov r0, r4
006306d0  10 80 bd e8                                      pop {r4, pc}
