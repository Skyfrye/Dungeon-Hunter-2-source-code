; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062ff5c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PDeflector>
; alias: _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_10PDeflectorEED1Ev
; demangled: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PDeflector>::~PForceProxy()
; decoder-mode: arm
0062ff5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006306d4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PDeflector>
; alias: _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_10PDeflectorEED0Ev
; demangled: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PDeflector>::~PForceProxy()
; decoder-mode: arm
006306d4  10 40 2d e9                                      push {r4, lr}
006306d8  00 40 a0 e1                                      mov r4, r0
006306dc  f3 76 f3 eb                                      bl #0x30e2b0
006306e0  04 00 a0 e1                                      mov r0, r4
006306e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00634518, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PDeflector>
; alias: _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_10PDeflectorEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
; demangled: glitch::ps::PForceProxy<glitch::ps::SParticle, glitch::ps::PDeflector>::apply(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::IParticleContext<glitch::ps::SParticle>*)
; decoder-mode: arm
00634518  0c 00 80 e2                                      add r0, r0, #0xc
0063451c  ef fc ff ea                                      b #0x6338e0
