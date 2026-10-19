; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fafcc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZNK6glitch5scene20IParticleMeshEmitter7getTypeEv
; demangled: glitch::scene::IParticleMeshEmitter::getType() const
; decoder-mode: arm
006fafcc  04 00 a0 e3                                      mov r0, #4
006fafd0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb0b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZN6glitch5scene20IParticleMeshEmitterD1Ev
; demangled: glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter()
; decoder-mode: arm
006fb0b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb0b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZTv0_n24_N6glitch5scene20IParticleMeshEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter()
; decoder-mode: arm
006fb0b4  00 30 90 e5                                      ldr r3, [r0]
006fb0b8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fb0bc  03 00 80 e0                                      add r0, r0, r3
006fb0c0  fa ff ff ea                                      b #0x6fb0b0

; FUNCTION 0x006fb0c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZTv0_n12_N6glitch5scene20IParticleMeshEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter()
; decoder-mode: arm
006fb0c4  00 30 90 e5                                      ldr r3, [r0]
006fb0c8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fb0cc  03 00 80 e0                                      add r0, r0, r3
006fb0d0  f6 ff ff ea                                      b #0x6fb0b0

; FUNCTION 0x006fb270, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZN6glitch5scene20IParticleMeshEmitterD0Ev
; demangled: glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter()
; decoder-mode: arm
006fb270  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fb274  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fb278  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fb27c  03 30 8f e0                                      add r3, pc, r3
006fb280  01 10 93 e7                                      ldr r1, [r3, r1]
006fb284  10 40 2d e9                                      push {r4, lr}
006fb288  02 20 93 e7                                      ldr r2, [r3, r2]
006fb28c  04 c0 91 e5                                      ldr ip, [r1, #4]
006fb290  08 10 91 e5                                      ldr r1, [r1, #8]
006fb294  90 20 82 e2                                      add r2, r2, #0x90
006fb298  00 c0 80 e5                                      str ip, [r0]
006fb29c  04 20 80 e5                                      str r2, [r0, #4]
006fb2a0  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fb2a4  00 40 a0 e1                                      mov r4, r0
006fb2a8  02 10 80 e7                                      str r1, [r0, r2]
006fb2ac  ff 4b f0 eb                                      bl #0x30e2b0
006fb2b0  04 00 a0 e1                                      mov r0, r4
006fb2b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fb2b8  14 98 29 00 18 48 00 00 d0 43 00 00              .byte 0x14, 0x98, 0x29, 0x00, 0x18, 0x48, 0x00, 0x00, 0xd0, 0x43, 0x00, 0x00

; FUNCTION 0x006fb2c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZTv0_n24_N6glitch5scene20IParticleMeshEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter()
; decoder-mode: arm
006fb2c4  00 30 90 e5                                      ldr r3, [r0]
006fb2c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fb2cc  03 00 80 e0                                      add r0, r0, r3
006fb2d0  e6 ff ff ea                                      b #0x6fb270

; FUNCTION 0x006fb2d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleMeshEmitter
; alias: _ZTv0_n12_N6glitch5scene20IParticleMeshEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleMeshEmitter::~IParticleMeshEmitter()
; decoder-mode: arm
006fb2d4  00 30 90 e5                                      ldr r3, [r0]
006fb2d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fb2dc  03 00 80 e0                                      add r0, r0, r3
006fb2e0  e2 ff ff ea                                      b #0x6fb270
