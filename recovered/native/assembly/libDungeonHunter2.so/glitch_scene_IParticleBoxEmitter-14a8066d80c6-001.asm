; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f894c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZNK6glitch5scene19IParticleBoxEmitter7getTypeEv
; demangled: glitch::scene::IParticleBoxEmitter::getType() const
; decoder-mode: arm
006f894c  02 00 a0 e3                                      mov r0, #2
006f8950  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZN6glitch5scene19IParticleBoxEmitterD1Ev
; demangled: glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter()
; decoder-mode: arm
006f8a24  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a28, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZTv0_n24_N6glitch5scene19IParticleBoxEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter()
; decoder-mode: arm
006f8a28  00 30 90 e5                                      ldr r3, [r0]
006f8a2c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8a30  03 00 80 e0                                      add r0, r0, r3
006f8a34  fa ff ff ea                                      b #0x6f8a24

; FUNCTION 0x006f8a38, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZTv0_n12_N6glitch5scene19IParticleBoxEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter()
; decoder-mode: arm
006f8a38  00 30 90 e5                                      ldr r3, [r0]
006f8a3c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8a40  03 00 80 e0                                      add r0, r0, r3
006f8a44  f6 ff ff ea                                      b #0x6f8a24

; FUNCTION 0x006f997c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZN6glitch5scene19IParticleBoxEmitterD0Ev
; demangled: glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter()
; decoder-mode: arm
006f997c  40 30 9f e5                                      ldr r3, [pc, #0x40]
006f9980  40 10 9f e5                                      ldr r1, [pc, #0x40]
006f9984  40 20 9f e5                                      ldr r2, [pc, #0x40]
006f9988  03 30 8f e0                                      add r3, pc, r3
006f998c  01 10 93 e7                                      ldr r1, [r3, r1]
006f9990  10 40 2d e9                                      push {r4, lr}
006f9994  02 20 93 e7                                      ldr r2, [r3, r2]
006f9998  04 c0 91 e5                                      ldr ip, [r1, #4]
006f999c  08 10 91 e5                                      ldr r1, [r1, #8]
006f99a0  78 20 82 e2                                      add r2, r2, #0x78
006f99a4  00 c0 80 e5                                      str ip, [r0]
006f99a8  04 20 80 e5                                      str r2, [r0, #4]
006f99ac  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006f99b0  00 40 a0 e1                                      mov r4, r0
006f99b4  02 10 80 e7                                      str r1, [r0, r2]
006f99b8  3c 52 f0 eb                                      bl #0x30e2b0
006f99bc  04 00 a0 e1                                      mov r0, r4
006f99c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f99c4  08 b1 29 00 94 1d 00 00 f8 0f 00 00              .byte 0x08, 0xb1, 0x29, 0x00, 0x94, 0x1d, 0x00, 0x00, 0xf8, 0x0f, 0x00, 0x00

; FUNCTION 0x006f99d0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZTv0_n24_N6glitch5scene19IParticleBoxEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter()
; decoder-mode: arm
006f99d0  00 30 90 e5                                      ldr r3, [r0]
006f99d4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f99d8  03 00 80 e0                                      add r0, r0, r3
006f99dc  e6 ff ff ea                                      b #0x6f997c

; FUNCTION 0x006f99e0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleBoxEmitter
; alias: _ZTv0_n12_N6glitch5scene19IParticleBoxEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleBoxEmitter::~IParticleBoxEmitter()
; decoder-mode: arm
006f99e0  00 30 90 e5                                      ldr r3, [r0]
006f99e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f99e8  03 00 80 e0                                      add r0, r0, r3
006f99ec  e2 ff ff ea                                      b #0x6f997c
