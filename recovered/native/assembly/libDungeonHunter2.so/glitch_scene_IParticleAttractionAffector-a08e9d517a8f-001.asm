; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f8398, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZNK6glitch5scene27IParticleAttractionAffector7getTypeEv
; demangled: glitch::scene::IParticleAttractionAffector::getType() const
; decoder-mode: arm
006f8398  01 00 a0 e3                                      mov r0, #1
006f839c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8438, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZN6glitch5scene27IParticleAttractionAffectorD1Ev
; demangled: glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector()
; decoder-mode: arm
006f8438  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f843c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZTv0_n24_N6glitch5scene27IParticleAttractionAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector()
; decoder-mode: arm
006f843c  00 30 90 e5                                      ldr r3, [r0]
006f8440  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8444  03 00 80 e0                                      add r0, r0, r3
006f8448  fa ff ff ea                                      b #0x6f8438

; FUNCTION 0x006f844c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZTv0_n12_N6glitch5scene27IParticleAttractionAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector()
; decoder-mode: arm
006f844c  00 30 90 e5                                      ldr r3, [r0]
006f8450  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8454  03 00 80 e0                                      add r0, r0, r3
006f8458  f6 ff ff ea                                      b #0x6f8438

; FUNCTION 0x006f8840, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZN6glitch5scene27IParticleAttractionAffectorD0Ev
; demangled: glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector()
; decoder-mode: arm
006f8840  40 30 9f e5                                      ldr r3, [pc, #0x40]
006f8844  40 10 9f e5                                      ldr r1, [pc, #0x40]
006f8848  40 20 9f e5                                      ldr r2, [pc, #0x40]
006f884c  03 30 8f e0                                      add r3, pc, r3
006f8850  01 10 93 e7                                      ldr r1, [r3, r1]
006f8854  10 40 2d e9                                      push {r4, lr}
006f8858  02 20 93 e7                                      ldr r2, [r3, r2]
006f885c  04 c0 91 e5                                      ldr ip, [r1, #4]
006f8860  08 10 91 e5                                      ldr r1, [r1, #8]
006f8864  78 20 82 e2                                      add r2, r2, #0x78
006f8868  00 c0 80 e5                                      str ip, [r0]
006f886c  08 20 80 e5                                      str r2, [r0, #8]
006f8870  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006f8874  00 40 a0 e1                                      mov r4, r0
006f8878  02 10 80 e7                                      str r1, [r0, r2]
006f887c  8b 56 f0 eb                                      bl #0x30e2b0
006f8880  04 00 a0 e1                                      mov r0, r4
006f8884  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f8888  44 c2 29 00 d0 36 00 00 4c 3b 00 00              .byte 0x44, 0xc2, 0x29, 0x00, 0xd0, 0x36, 0x00, 0x00, 0x4c, 0x3b, 0x00, 0x00

; FUNCTION 0x006f8894, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZTv0_n24_N6glitch5scene27IParticleAttractionAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector()
; decoder-mode: arm
006f8894  00 30 90 e5                                      ldr r3, [r0]
006f8898  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f889c  03 00 80 e0                                      add r0, r0, r3
006f88a0  e6 ff ff ea                                      b #0x6f8840

; FUNCTION 0x006f88a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAttractionAffector
; alias: _ZTv0_n12_N6glitch5scene27IParticleAttractionAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleAttractionAffector::~IParticleAttractionAffector()
; decoder-mode: arm
006f88a4  00 30 90 e5                                      ldr r3, [r0]
006f88a8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f88ac  03 00 80 e0                                      add r0, r0, r3
006f88b0  e2 ff ff ea                                      b #0x6f8840
