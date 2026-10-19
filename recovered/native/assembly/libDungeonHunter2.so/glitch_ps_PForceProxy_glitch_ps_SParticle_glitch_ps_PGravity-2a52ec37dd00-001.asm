; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062ff50, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PGravity>
; alias: _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_8PGravityEED1Ev
; demangled: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PGravity>::~PForceProxy()
; decoder-mode: arm
0062ff50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00630738, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PGravity>
; alias: _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_8PGravityEED0Ev
; demangled: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PGravity>::~PForceProxy()
; decoder-mode: arm
00630738  10 40 2d e9                                      push {r4, lr}
0063073c  00 40 a0 e1                                      mov r4, r0
00630740  da 76 f3 eb                                      bl #0x30e2b0
00630744  04 00 a0 e1                                      mov r0, r4
00630748  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006338d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PGravity>
; alias: _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_8PGravityEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
; demangled: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PGravity>::apply(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::IParticleContext<glitch::ps::SParticle>*)
; decoder-mode: arm
006338d8  0c 00 80 e2                                      add r0, r0, #0xc
006338dc  50 ff ff ea                                      b #0x633624
