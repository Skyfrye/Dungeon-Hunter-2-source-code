; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fc3c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZNK6glitch5scene20IParticleRingEmitter7getTypeEv
; demangled: glitch::scene::IParticleRingEmitter::getType() const
; decoder-mode: arm
006fc3c4  05 00 a0 e3                                      mov r0, #5
006fc3c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc4a4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZN6glitch5scene20IParticleRingEmitterD1Ev
; demangled: glitch::scene::IParticleRingEmitter::~IParticleRingEmitter()
; decoder-mode: arm
006fc4a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc4a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZTv0_n24_N6glitch5scene20IParticleRingEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleRingEmitter::~IParticleRingEmitter()
; decoder-mode: arm
006fc4a8  00 30 90 e5                                      ldr r3, [r0]
006fc4ac  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fc4b0  03 00 80 e0                                      add r0, r0, r3
006fc4b4  fa ff ff ea                                      b #0x6fc4a4

; FUNCTION 0x006fc4b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZTv0_n12_N6glitch5scene20IParticleRingEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleRingEmitter::~IParticleRingEmitter()
; decoder-mode: arm
006fc4b8  00 30 90 e5                                      ldr r3, [r0]
006fc4bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fc4c0  03 00 80 e0                                      add r0, r0, r3
006fc4c4  f6 ff ff ea                                      b #0x6fc4a4

; FUNCTION 0x006fcc8c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZN6glitch5scene20IParticleRingEmitterD0Ev
; demangled: glitch::scene::IParticleRingEmitter::~IParticleRingEmitter()
; decoder-mode: arm
006fcc8c  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fcc90  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fcc94  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fcc98  03 30 8f e0                                      add r3, pc, r3
006fcc9c  01 10 93 e7                                      ldr r1, [r3, r1]
006fcca0  10 40 2d e9                                      push {r4, lr}
006fcca4  02 20 93 e7                                      ldr r2, [r3, r2]
006fcca8  04 c0 91 e5                                      ldr ip, [r1, #4]
006fccac  08 10 91 e5                                      ldr r1, [r1, #8]
006fccb0  88 20 82 e2                                      add r2, r2, #0x88
006fccb4  00 c0 80 e5                                      str ip, [r0]
006fccb8  04 20 80 e5                                      str r2, [r0, #4]
006fccbc  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fccc0  00 40 a0 e1                                      mov r4, r0
006fccc4  02 10 80 e7                                      str r1, [r0, r2]
006fccc8  78 45 f0 eb                                      bl #0x30e2b0
006fcccc  04 00 a0 e1                                      mov r0, r4
006fccd0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fccd4  f8 7d 29 00 00 31 00 00 60 39 00 00              .byte 0xf8, 0x7d, 0x29, 0x00, 0x00, 0x31, 0x00, 0x00, 0x60, 0x39, 0x00, 0x00

; FUNCTION 0x006fcce0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZTv0_n24_N6glitch5scene20IParticleRingEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleRingEmitter::~IParticleRingEmitter()
; decoder-mode: arm
006fcce0  00 30 90 e5                                      ldr r3, [r0]
006fcce4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fcce8  03 00 80 e0                                      add r0, r0, r3
006fccec  e6 ff ff ea                                      b #0x6fcc8c

; FUNCTION 0x006fccf0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleRingEmitter
; alias: _ZTv0_n12_N6glitch5scene20IParticleRingEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleRingEmitter::~IParticleRingEmitter()
; decoder-mode: arm
006fccf0  00 30 90 e5                                      ldr r3, [r0]
006fccf4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fccf8  03 00 80 e0                                      add r0, r0, r3
006fccfc  e2 ff ff ea                                      b #0x6fcc8c
