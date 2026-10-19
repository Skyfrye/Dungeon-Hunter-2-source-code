; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f76d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZNK6glitch5scene16IParticleEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::IParticleEmitter::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f76d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f76d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZTv0_n16_NK6glitch5scene16IParticleEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::IParticleEmitter::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f76d4  00 30 90 e5                                      ldr r3, [r0]
006f76d8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006f76dc  03 00 80 e0                                      add r0, r0, r3
006f76e0  fa ff ff ea                                      b #0x6f76d0

; FUNCTION 0x006f76e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZN6glitch5scene16IParticleEmitter21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::IParticleEmitter::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006f76e4  00 00 a0 e3                                      mov r0, #0
006f76e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f76ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZNK6glitch5scene16IParticleEmitter7getTypeEv
; demangled: glitch::scene::IParticleEmitter::getType() const
; decoder-mode: arm
006f76ec  00 00 a0 e3                                      mov r0, #0
006f76f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77d8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZN6glitch5scene16IParticleEmitterD1Ev
; demangled: glitch::scene::IParticleEmitter::~IParticleEmitter()
; decoder-mode: arm
006f77d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZTv0_n24_N6glitch5scene16IParticleEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleEmitter::~IParticleEmitter()
; decoder-mode: arm
006f77dc  00 30 90 e5                                      ldr r3, [r0]
006f77e0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f77e4  03 00 80 e0                                      add r0, r0, r3
006f77e8  fa ff ff ea                                      b #0x6f77d8

; FUNCTION 0x006f77ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZTv0_n12_N6glitch5scene16IParticleEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleEmitter::~IParticleEmitter()
; decoder-mode: arm
006f77ec  00 30 90 e5                                      ldr r3, [r0]
006f77f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f77f4  03 00 80 e0                                      add r0, r0, r3
006f77f8  f6 ff ff ea                                      b #0x6f77d8

; FUNCTION 0x006f7848, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZN6glitch5scene16IParticleEmitterD0Ev
; demangled: glitch::scene::IParticleEmitter::~IParticleEmitter()
; decoder-mode: arm
006f7848  24 30 9f e5                                      ldr r3, [pc, #0x24]
006f784c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006f7850  10 40 2d e9                                      push {r4, lr}
006f7854  03 30 8f e0                                      add r3, pc, r3
006f7858  02 20 93 e7                                      ldr r2, [r3, r2]
006f785c  00 40 a0 e1                                      mov r4, r0
006f7860  1c 20 82 e2                                      add r2, r2, #0x1c
006f7864  00 20 80 e5                                      str r2, [r0]
006f7868  90 5a f0 eb                                      bl #0x30e2b0
006f786c  04 00 a0 e1                                      mov r0, r4
006f7870  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f7874  3c d2 29 00 0c 3b 00 00                          .byte 0x3c, 0xd2, 0x29, 0x00, 0x0c, 0x3b, 0x00, 0x00

; FUNCTION 0x006f787c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZTv0_n24_N6glitch5scene16IParticleEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleEmitter::~IParticleEmitter()
; decoder-mode: arm
006f787c  00 30 90 e5                                      ldr r3, [r0]
006f7880  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f7884  03 00 80 e0                                      add r0, r0, r3
006f7888  ee ff ff ea                                      b #0x6f7848

; FUNCTION 0x006f788c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleEmitter
; alias: _ZTv0_n12_N6glitch5scene16IParticleEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleEmitter::~IParticleEmitter()
; decoder-mode: arm
006f788c  00 30 90 e5                                      ldr r3, [r0]
006f7890  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f7894  03 00 80 e0                                      add r0, r0, r3
006f7898  ea ff ff ea                                      b #0x6f7848
