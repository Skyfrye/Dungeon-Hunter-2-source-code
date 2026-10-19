; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c01dc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>
; alias: _ZN6glitch2ps25PSBillboardTexCoordsBakerINS0_12GNPSParticleEE23getPerParticleTexCoordsEPKNS0_16IParticleContextIS2_EEPKS2_
; demangled: glitch::ps::PSBillboardTexCoordsBaker<glitch::ps::GNPSParticle>::getPerParticleTexCoords(glitch::ps::IParticleContext<glitch::ps::GNPSParticle> const*, glitch::ps::GNPSParticle const*)
; decoder-mode: arm
006c01dc  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
006c01e0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
006c01e4  40 00 91 e5                                      ldr r0, [r1, #0x40]
006c01e8  03 30 8f e0                                      add r3, pc, r3
006c01ec  02 20 93 e7                                      ldr r2, [r3, r2]
006c01f0  00 00 82 e5                                      str r0, [r2]
006c01f4  44 30 91 e5                                      ldr r3, [r1, #0x44]
006c01f8  04 30 82 e5                                      str r3, [r2, #4]
006c01fc  40 00 91 e5                                      ldr r0, [r1, #0x40]
006c0200  4c 30 91 e5                                      ldr r3, [r1, #0x4c]
006c0204  08 00 82 e5                                      str r0, [r2, #8]
006c0208  0c 30 82 e5                                      str r3, [r2, #0xc]
006c020c  48 30 91 e5                                      ldr r3, [r1, #0x48]
006c0210  10 30 82 e5                                      str r3, [r2, #0x10]
006c0214  4c 30 91 e5                                      ldr r3, [r1, #0x4c]
006c0218  14 30 82 e5                                      str r3, [r2, #0x14]
006c021c  44 00 91 e5                                      ldr r0, [r1, #0x44]
006c0220  48 30 91 e5                                      ldr r3, [r1, #0x48]
006c0224  1c 00 82 e5                                      str r0, [r2, #0x1c]
006c0228  18 30 82 e5                                      str r3, [r2, #0x18]
006c022c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006c0230  a8 48 2d 00 24 4b 00 00                          .byte 0xa8, 0x48, 0x2d, 0x00, 0x24, 0x4b, 0x00, 0x00
