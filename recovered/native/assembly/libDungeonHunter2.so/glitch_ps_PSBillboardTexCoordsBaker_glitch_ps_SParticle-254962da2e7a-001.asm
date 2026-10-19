; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c01d8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>
; alias: _ZN6glitch2ps25PSBillboardTexCoordsBakerINS0_9SParticleEE23getPerParticleTexCoordsEPKNS0_16IParticleContextIS2_EEPKS2_
; demangled: glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::SParticle>::getPerParticleTexCoords(glitch::ps::IParticleContext<glitch::ps::SParticle> const*, glitch::ps::SParticle const*)
; decoder-mode: arm
006c01d8  1e ff 2f e1                                      bx lr
