; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f76f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37IParticleAnimatedMeshSceneNodeEmitter7getTypeEv
; demangled: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::getType() const
; decoder-mode: arm
006f76f4  01 00 a0 e3                                      mov r0, #1
006f76f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD1Ev
; demangled: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f77fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7800, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n24_N6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7800  00 30 90 e5                                      ldr r3, [r0]
006f7804  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f7808  03 00 80 e0                                      add r0, r0, r3
006f780c  fa ff ff ea                                      b #0x6f77fc

; FUNCTION 0x006f7810, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n12_N6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD1Ev
; demangled: virtual thunk to glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7810  00 30 90 e5                                      ldr r3, [r0]
006f7814  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f7818  03 00 80 e0                                      add r0, r0, r3
006f781c  f6 ff ff ea                                      b #0x6f77fc

; FUNCTION 0x006f7a20, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD0Ev
; demangled: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7a20  40 30 9f e5                                      ldr r3, [pc, #0x40]
006f7a24  40 10 9f e5                                      ldr r1, [pc, #0x40]
006f7a28  40 20 9f e5                                      ldr r2, [pc, #0x40]
006f7a2c  03 30 8f e0                                      add r3, pc, r3
006f7a30  01 10 93 e7                                      ldr r1, [r3, r1]
006f7a34  10 40 2d e9                                      push {r4, lr}
006f7a38  02 20 93 e7                                      ldr r2, [r3, r2]
006f7a3c  04 c0 91 e5                                      ldr ip, [r1, #4]
006f7a40  08 10 91 e5                                      ldr r1, [r1, #8]
006f7a44  90 20 82 e2                                      add r2, r2, #0x90
006f7a48  00 c0 80 e5                                      str ip, [r0]
006f7a4c  04 20 80 e5                                      str r2, [r0, #4]
006f7a50  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006f7a54  00 40 a0 e1                                      mov r4, r0
006f7a58  02 10 80 e7                                      str r1, [r0, r2]
006f7a5c  13 5a f0 eb                                      bl #0x30e2b0
006f7a60  04 00 a0 e1                                      mov r0, r4
006f7a64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f7a68  64 d0 29 00 f4 19 00 00 1c 1e 00 00              .byte 0x64, 0xd0, 0x29, 0x00, 0xf4, 0x19, 0x00, 0x00, 0x1c, 0x1e, 0x00, 0x00

; FUNCTION 0x006f7a74, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n24_N6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7a74  00 30 90 e5                                      ldr r3, [r0]
006f7a78  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f7a7c  03 00 80 e0                                      add r0, r0, r3
006f7a80  e6 ff ff ea                                      b #0x6f7a20

; FUNCTION 0x006f7a84, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n12_N6glitch5scene37IParticleAnimatedMeshSceneNodeEmitterD0Ev
; demangled: virtual thunk to glitch::scene::IParticleAnimatedMeshSceneNodeEmitter::~IParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7a84  00 30 90 e5                                      ldr r3, [r0]
006f7a88  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f7a8c  03 00 80 e0                                      add r0, r0, r3
006f7a90  e2 ff ff ea                                      b #0x6f7a20
