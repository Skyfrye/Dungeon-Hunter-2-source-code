; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fd8f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZNK6glitch5scene22IParticleSphereEmitter7getTypeEv
; demangled: glitch::scene::IParticleSphereEmitter::getType() const
; decoder-mode: arm
006fd8f4  06 00 a0 e3                                      mov r0, #6
006fd8f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9c4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZN6glitch5scene22IParticleSphereEmitterD1Ev
; demangled: glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter()
; decoder-mode: arm
006fd9c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZTv0_n24_N6glitch5scene22IParticleSphereEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter()
; decoder-mode: arm
006fd9c8  00 30 90 e5                                      ldr r3, [r0]
006fd9cc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd9d0  03 00 80 e0                                      add r0, r0, r3
006fd9d4  fa ff ff ea                                      b #0x6fd9c4

; FUNCTION 0x006fd9d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZTv0_n12_N6glitch5scene22IParticleSphereEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter()
; decoder-mode: arm
006fd9d8  00 30 90 e5                                      ldr r3, [r0]
006fd9dc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd9e0  03 00 80 e0                                      add r0, r0, r3
006fd9e4  f6 ff ff ea                                      b #0x6fd9c4

; FUNCTION 0x006fe238, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZN6glitch5scene22IParticleSphereEmitterD0Ev
; demangled: glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter()
; decoder-mode: arm
006fe238  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fe23c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fe240  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fe244  03 30 8f e0                                      add r3, pc, r3
006fe248  01 10 93 e7                                      ldr r1, [r3, r1]
006fe24c  10 40 2d e9                                      push {r4, lr}
006fe250  02 20 93 e7                                      ldr r2, [r3, r2]
006fe254  04 c0 91 e5                                      ldr ip, [r1, #4]
006fe258  08 10 91 e5                                      ldr r1, [r1, #8]
006fe25c  80 20 82 e2                                      add r2, r2, #0x80
006fe260  00 c0 80 e5                                      str ip, [r0]
006fe264  04 20 80 e5                                      str r2, [r0, #4]
006fe268  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fe26c  00 40 a0 e1                                      mov r4, r0
006fe270  02 10 80 e7                                      str r1, [r0, r2]
006fe274  0d 40 f0 eb                                      bl #0x30e2b0
006fe278  04 00 a0 e1                                      mov r0, r4
006fe27c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fe280  4c 68 29 00 04 15 00 00 b8 32 00 00              .byte 0x4c, 0x68, 0x29, 0x00, 0x04, 0x15, 0x00, 0x00, 0xb8, 0x32, 0x00, 0x00

; FUNCTION 0x006fe28c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZTv0_n24_N6glitch5scene22IParticleSphereEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter()
; decoder-mode: arm
006fe28c  00 30 90 e5                                      ldr r3, [r0]
006fe290  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fe294  03 00 80 e0                                      add r0, r0, r3
006fe298  e6 ff ff ea                                      b #0x6fe238

; FUNCTION 0x006fe29c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSphereEmitter
; alias: _ZTv0_n12_N6glitch5scene22IParticleSphereEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSphereEmitter::~IParticleSphereEmitter()
; decoder-mode: arm
006fe29c  00 30 90 e5                                      ldr r3, [r0]
006fe2a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fe2a4  03 00 80 e0                                      add r0, r0, r3
006fe2a8  e2 ff ff ea                                      b #0x6fe238
