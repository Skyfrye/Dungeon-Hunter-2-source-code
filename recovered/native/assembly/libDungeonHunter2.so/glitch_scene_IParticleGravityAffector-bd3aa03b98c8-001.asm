; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fa9f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZNK6glitch5scene24IParticleGravityAffector7getTypeEv
; demangled: glitch::scene::IParticleGravityAffector::getType() const
; decoder-mode: arm
006fa9f4  03 00 a0 e3                                      mov r0, #3
006fa9f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faa30, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZN6glitch5scene24IParticleGravityAffectorD1Ev
; demangled: glitch::scene::IParticleGravityAffector::~IParticleGravityAffector()
; decoder-mode: arm
006faa30  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faa34, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZTv0_n24_N6glitch5scene24IParticleGravityAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleGravityAffector::~IParticleGravityAffector()
; decoder-mode: arm
006faa34  00 30 90 e5                                      ldr r3, [r0]
006faa38  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006faa3c  03 00 80 e0                                      add r0, r0, r3
006faa40  fa ff ff ea                                      b #0x6faa30

; FUNCTION 0x006faa44, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZTv0_n12_N6glitch5scene24IParticleGravityAffectorD1Ev
; demangled: virtual thunk to glitch::scene::IParticleGravityAffector::~IParticleGravityAffector()
; decoder-mode: arm
006faa44  00 30 90 e5                                      ldr r3, [r0]
006faa48  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006faa4c  03 00 80 e0                                      add r0, r0, r3
006faa50  f6 ff ff ea                                      b #0x6faa30

; FUNCTION 0x006faeb0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZN6glitch5scene24IParticleGravityAffectorD0Ev
; demangled: glitch::scene::IParticleGravityAffector::~IParticleGravityAffector()
; decoder-mode: arm
006faeb0  40 30 9f e5                                      ldr r3, [pc, #0x40]
006faeb4  40 10 9f e5                                      ldr r1, [pc, #0x40]
006faeb8  40 20 9f e5                                      ldr r2, [pc, #0x40]
006faebc  03 30 8f e0                                      add r3, pc, r3
006faec0  01 10 93 e7                                      ldr r1, [r3, r1]
006faec4  10 40 2d e9                                      push {r4, lr}
006faec8  02 20 93 e7                                      ldr r2, [r3, r2]
006faecc  04 c0 91 e5                                      ldr ip, [r1, #4]
006faed0  08 10 91 e5                                      ldr r1, [r1, #8]
006faed4  60 20 82 e2                                      add r2, r2, #0x60
006faed8  00 c0 80 e5                                      str ip, [r0]
006faedc  08 20 80 e5                                      str r2, [r0, #8]
006faee0  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006faee4  00 40 a0 e1                                      mov r4, r0
006faee8  02 10 80 e7                                      str r1, [r0, r2]
006faeec  ef 4c f0 eb                                      bl #0x30e2b0
006faef0  04 00 a0 e1                                      mov r0, r4
006faef4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006faef8  d4 9b 29 00 74 48 00 00 7c 40 00 00              .byte 0xd4, 0x9b, 0x29, 0x00, 0x74, 0x48, 0x00, 0x00, 0x7c, 0x40, 0x00, 0x00

; FUNCTION 0x006faf04, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZTv0_n24_N6glitch5scene24IParticleGravityAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleGravityAffector::~IParticleGravityAffector()
; decoder-mode: arm
006faf04  00 30 90 e5                                      ldr r3, [r0]
006faf08  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006faf0c  03 00 80 e0                                      add r0, r0, r3
006faf10  e6 ff ff ea                                      b #0x6faeb0

; FUNCTION 0x006faf14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleGravityAffector
; alias: _ZTv0_n12_N6glitch5scene24IParticleGravityAffectorD0Ev
; demangled: virtual thunk to glitch::scene::IParticleGravityAffector::~IParticleGravityAffector()
; decoder-mode: arm
006faf14  00 30 90 e5                                      ldr r3, [r0]
006faf18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006faf1c  03 00 80 e0                                      add r0, r0, r3
006faf20  e2 ff ff ea                                      b #0x6faeb0
