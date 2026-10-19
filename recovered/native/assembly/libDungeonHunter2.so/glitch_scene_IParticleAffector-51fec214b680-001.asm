; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f836c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZN6glitch5scene17IParticleAffector10setEnabledEb
; demangled: glitch::scene::IParticleAffector::setEnabled(bool)
; decoder-mode: arm
006f836c  04 10 c0 e5                                      strb r1, [r0, #4]
006f8370  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8374, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZNK6glitch5scene17IParticleAffector10getEnabledEv
; demangled: glitch::scene::IParticleAffector::getEnabled() const
; decoder-mode: arm
006f8374  04 00 d0 e5                                      ldrb r0, [r0, #4]
006f8378  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f837c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZNK6glitch5scene17IParticleAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::IParticleAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f837c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8380, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZTv0_n16_NK6glitch5scene17IParticleAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::IParticleAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f8380  00 30 90 e5                                      ldr r3, [r0]
006f8384  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006f8388  03 00 80 e0                                      add r0, r0, r3
006f838c  fa ff ff ea                                      b #0x6f837c

; FUNCTION 0x006f8390, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZN6glitch5scene17IParticleAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::IParticleAffector::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006f8390  00 00 a0 e3                                      mov r0, #0
006f8394  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8414, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZN6glitch5scene17IParticleAffectorD1Ev
; demangled: glitch::scene::IParticleAffector::~IParticleAffector()
; decoder-mode: arm
006f8414  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8418, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZTv0_n24_N6glitch5scene17IParticleAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleAffector::~IParticleAffector()
; decoder-mode: arm
006f8418  00 30 90 e5                                      ldr r3, [r0]
006f841c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8420  03 00 80 e0                                      add r0, r0, r3
006f8424  fa ff ff ea                                      b #0x6f8414

; FUNCTION 0x006f8428, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZTv0_n12_N6glitch5scene17IParticleAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleAffector::~IParticleAffector()
; decoder-mode: arm
006f8428  00 30 90 e5                                      ldr r3, [r0]
006f842c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8430  03 00 80 e0                                      add r0, r0, r3
006f8434  f6 ff ff ea                                      b #0x6f8414

; FUNCTION 0x006f8678, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZN6glitch5scene17IParticleAffectorD0Ev
; demangled: glitch::scene::IParticleAffector::~IParticleAffector()
; decoder-mode: arm
006f8678  24 30 9f e5                                      ldr r3, [pc, #0x24]
006f867c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006f8680  10 40 2d e9                                      push {r4, lr}
006f8684  03 30 8f e0                                      add r3, pc, r3
006f8688  02 20 93 e7                                      ldr r2, [r3, r2]
006f868c  00 40 a0 e1                                      mov r4, r0
006f8690  1c 20 82 e2                                      add r2, r2, #0x1c
006f8694  00 20 80 e5                                      str r2, [r0]
006f8698  04 57 f0 eb                                      bl #0x30e2b0
006f869c  04 00 a0 e1                                      mov r0, r4
006f86a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f86a4  0c c4 29 00 70 14 00 00                          .byte 0x0c, 0xc4, 0x29, 0x00, 0x70, 0x14, 0x00, 0x00

; FUNCTION 0x006f86ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZTv0_n24_N6glitch5scene17IParticleAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleAffector::~IParticleAffector()
; decoder-mode: arm
006f86ac  00 30 90 e5                                      ldr r3, [r0]
006f86b0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f86b4  03 00 80 e0                                      add r0, r0, r3
006f86b8  ee ff ff ea                                      b #0x6f8678

; FUNCTION 0x006f86bc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAffector
; alias: _ZTv0_n12_N6glitch5scene17IParticleAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleAffector::~IParticleAffector()
; decoder-mode: arm
006f86bc  00 30 90 e5                                      ldr r3, [r0]
006f86c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f86c4  03 00 80 e0                                      add r0, r0, r3
006f86c8  ea ff ff ea                                      b #0x6f8678
