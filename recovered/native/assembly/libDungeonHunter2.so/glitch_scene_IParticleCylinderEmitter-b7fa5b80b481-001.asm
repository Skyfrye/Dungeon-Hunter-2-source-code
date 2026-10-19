; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f9a00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZNK6glitch5scene24IParticleCylinderEmitter7getTypeEv
; demangled: glitch::scene::IParticleCylinderEmitter::getType() const
; decoder-mode: arm
006f9a00  03 00 a0 e3                                      mov r0, #3
006f9a04  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9b14, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZN6glitch5scene24IParticleCylinderEmitterD1Ev
; demangled: glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter()
; decoder-mode: arm
006f9b14  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9b18, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZTv0_n24_N6glitch5scene24IParticleCylinderEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter()
; decoder-mode: arm
006f9b18  00 30 90 e5                                      ldr r3, [r0]
006f9b1c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f9b20  03 00 80 e0                                      add r0, r0, r3
006f9b24  fa ff ff ea                                      b #0x6f9b14

; FUNCTION 0x006f9b28, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZTv0_n12_N6glitch5scene24IParticleCylinderEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter()
; decoder-mode: arm
006f9b28  00 30 90 e5                                      ldr r3, [r0]
006f9b2c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f9b30  03 00 80 e0                                      add r0, r0, r3
006f9b34  f6 ff ff ea                                      b #0x6f9b14

; FUNCTION 0x006fa408, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZN6glitch5scene24IParticleCylinderEmitterD0Ev
; demangled: glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter()
; decoder-mode: arm
006fa408  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fa40c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fa410  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fa414  03 30 8f e0                                      add r3, pc, r3
006fa418  01 10 93 e7                                      ldr r1, [r3, r1]
006fa41c  10 40 2d e9                                      push {r4, lr}
006fa420  02 20 93 e7                                      ldr r2, [r3, r2]
006fa424  04 c0 91 e5                                      ldr ip, [r1, #4]
006fa428  08 10 91 e5                                      ldr r1, [r1, #8]
006fa42c  98 20 82 e2                                      add r2, r2, #0x98
006fa430  00 c0 80 e5                                      str ip, [r0]
006fa434  04 20 80 e5                                      str r2, [r0, #4]
006fa438  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fa43c  00 40 a0 e1                                      mov r4, r0
006fa440  02 10 80 e7                                      str r1, [r0, r2]
006fa444  99 4f f0 eb                                      bl #0x30e2b0
006fa448  04 00 a0 e1                                      mov r0, r4
006fa44c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fa450  7c a6 29 00 8c 11 00 00 d8 3a 00 00              .byte 0x7c, 0xa6, 0x29, 0x00, 0x8c, 0x11, 0x00, 0x00, 0xd8, 0x3a, 0x00, 0x00

; FUNCTION 0x006fa45c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZTv0_n24_N6glitch5scene24IParticleCylinderEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter()
; decoder-mode: arm
006fa45c  00 30 90 e5                                      ldr r3, [r0]
006fa460  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fa464  03 00 80 e0                                      add r0, r0, r3
006fa468  e6 ff ff ea                                      b #0x6fa408

; FUNCTION 0x006fa46c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleCylinderEmitter
; alias: _ZTv0_n12_N6glitch5scene24IParticleCylinderEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleCylinderEmitter::~IParticleCylinderEmitter()
; decoder-mode: arm
006fa46c  00 30 90 e5                                      ldr r3, [r0]
006fa470  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa474  03 00 80 e0                                      add r0, r0, r3
006fa478  e2 ff ff ea                                      b #0x6fa408
