; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f76fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter21setUseNormalDirectionEb
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setUseNormalDirection(bool)
; decoder-mode: arm
006f76fc  29 10 c0 e5                                      strb r1, [r0, #0x29]
006f7700  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7704, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f7704  00 30 91 e5                                      ldr r3, [r1]
006f7708  3c 30 80 e5                                      str r3, [r0, #0x3c]
006f770c  04 30 91 e5                                      ldr r3, [r1, #4]
006f7710  40 30 80 e5                                      str r3, [r0, #0x40]
006f7714  08 30 91 e5                                      ldr r3, [r1, #8]
006f7718  44 30 80 e5                                      str r3, [r0, #0x44]
006f771c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7720, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter26setNormalDirectionModifierEf
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setNormalDirectionModifier(float)
; decoder-mode: arm
006f7720  2c 10 80 e5                                      str r1, [r0, #0x2c]
006f7724  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7728, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter18setEveryMeshVertexEb
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setEveryMeshVertex(bool)
; decoder-mode: arm
006f7728  28 10 c0 e5                                      strb r1, [r0, #0x28]
006f772c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7730, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006f7730  48 10 80 e5                                      str r1, [r0, #0x48]
006f7734  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7738, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006f7738  4c 10 80 e5                                      str r1, [r0, #0x4c]
006f773c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7740, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006f7740  10 40 2d e9                                      push {r4, lr}
006f7744  04 20 a0 e3                                      mov r2, #4
006f7748  50 00 80 e2                                      add r0, r0, #0x50
006f774c  45 5c f0 eb                                      bl #0x30e868
006f7750  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f7754, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006f7754  10 40 2d e9                                      push {r4, lr}
006f7758  04 20 a0 e3                                      mov r2, #4
006f775c  54 00 80 e2                                      add r0, r0, #0x54
006f7760  40 5c f0 eb                                      bl #0x30e868
006f7764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f7768, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24getAnimatedMeshSceneNodeEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getAnimatedMeshSceneNode() const
; decoder-mode: arm
006f7768  04 00 90 e5                                      ldr r0, [r0, #4]
006f776c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7770, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter22isUsingNormalDirectionEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::isUsingNormalDirection() const
; decoder-mode: arm
006f7770  29 00 d0 e5                                      ldrb r0, [r0, #0x29]
006f7774  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7778, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter12getDirectionEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getDirection() const
; decoder-mode: arm
006f7778  3c 00 80 e2                                      add r0, r0, #0x3c
006f777c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7780, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter26getNormalDirectionModifierEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getNormalDirectionModifier() const
; decoder-mode: arm
006f7780  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
006f7784  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7788, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter18getEveryMeshVertexEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getEveryMeshVertex() const
; decoder-mode: arm
006f7788  28 00 d0 e5                                      ldrb r0, [r0, #0x28]
006f778c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7790, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006f7790  48 00 90 e5                                      ldr r0, [r0, #0x48]
006f7794  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7798, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006f7798  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006f779c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinStartColor() const
; decoder-mode: arm
006f77a0  50 00 80 e2                                      add r0, r0, #0x50
006f77a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxStartColor() const
; decoder-mode: arm
006f77a8  54 00 80 e2                                      add r0, r0, #0x54
006f77ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter21getUseNormalDirectionEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getUseNormalDirection() const
; decoder-mode: arm
006f77b0  29 00 d0 e5                                      ldrb r0, [r0, #0x29]
006f77b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter11getMBNumberEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMBNumber() const
; decoder-mode: arm
006f77b8  18 00 90 e5                                      ldr r0, [r0, #0x18]
006f77bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMinLifeTime() const
; decoder-mode: arm
006f77c0  58 00 90 e5                                      ldr r0, [r0, #0x58]
006f77c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxLifeTime() const
; decoder-mode: arm
006f77c8  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
006f77cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f77d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006f77d0  68 00 90 e5                                      ldr r0, [r0, #0x68]
006f77d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f7820, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006f7820  00 00 a0 e3                                      mov r0, #0
006f7824  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f789c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD1Ev
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f789c  10 40 2d e9                                      push {r4, lr}
006f78a0  64 20 9f e5                                      ldr r2, [pc, #0x64]
006f78a4  64 30 9f e5                                      ldr r3, [pc, #0x64]
006f78a8  00 40 a0 e1                                      mov r4, r0
006f78ac  02 20 8f e0                                      add r2, pc, r2
006f78b0  30 00 90 e5                                      ldr r0, [r0, #0x30]
006f78b4  03 30 92 e7                                      ldr r3, [r2, r3]
006f78b8  00 00 50 e3                                      cmp r0, #0
006f78bc  a4 20 83 e2                                      add r2, r3, #0xa4
006f78c0  1c 30 83 e2                                      add r3, r3, #0x1c
006f78c4  00 30 84 e5                                      str r3, [r4]
006f78c8  6c 20 84 e5                                      str r2, [r4, #0x6c]
006f78cc  00 00 00 0a                                      beq #0x6f78d4
006f78d0  de 62 f0 eb                                      bl #0x310450
006f78d4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006f78d8  00 00 50 e3                                      cmp r0, #0
006f78dc  00 00 00 0a                                      beq #0x6f78e4
006f78e0  da 62 f0 eb                                      bl #0x310450
006f78e4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006f78e8  00 00 50 e3                                      cmp r0, #0
006f78ec  00 00 00 0a                                      beq #0x6f78f4
006f78f0  23 97 f0 eb                                      bl #0x31d584
006f78f4  08 00 94 e5                                      ldr r0, [r4, #8]
006f78f8  00 00 50 e3                                      cmp r0, #0
006f78fc  00 00 00 0a                                      beq #0x6f7904
006f7900  1f 97 f0 eb                                      bl #0x31d584
006f7904  04 00 a0 e1                                      mov r0, r4
006f7908  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f790c  e4 d1 29 00 5c 30 00 00                          .byte 0xe4, 0xd1, 0x29, 0x00, 0x5c, 0x30, 0x00, 0x00

; FUNCTION 0x006f7914, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n24_N6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7914  00 30 90 e5                                      ldr r3, [r0]
006f7918  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f791c  03 00 80 e0                                      add r0, r0, r3
006f7920  dd ff ff ea                                      b #0x6f789c

; FUNCTION 0x006f7924, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n12_N6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7924  00 30 90 e5                                      ldr r3, [r0]
006f7928  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f792c  03 00 80 e0                                      add r0, r0, r3
006f7930  d9 ff ff ea                                      b #0x6f789c

; FUNCTION 0x006f7934, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD0Ev
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7934  10 40 2d e9                                      push {r4, lr}
006f7938  00 40 a0 e1                                      mov r4, r0
006f793c  d6 ff ff eb                                      bl #0x6f789c
006f7940  04 00 a0 e1                                      mov r0, r4
006f7944  59 5a f0 eb                                      bl #0x30e2b0
006f7948  04 00 a0 e1                                      mov r0, r4
006f794c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f7950, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n24_N6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7950  00 30 90 e5                                      ldr r3, [r0]
006f7954  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f7958  03 00 80 e0                                      add r0, r0, r3
006f795c  f4 ff ff ea                                      b #0x6f7934

; FUNCTION 0x006f7960, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZTv0_n12_N6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter()
; decoder-mode: arm
006f7960  00 30 90 e5                                      ldr r3, [r0]
006f7964  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f7968  03 00 80 e0                                      add r0, r0, r3
006f796c  f0 ff ff ea                                      b #0x6f7934

; FUNCTION 0x006f7a94, declared_size=840, range_size=840, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterC2EPNS0_22IAnimatedMeshSceneNodeEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESC_jji
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(glitch::scene::IAnimatedMeshSceneNode*, bool, glitch::core::vector3d<float> const&, float, int, bool, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006f7a94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f7a98  04 e0 81 e2                                      add lr, r1, #4
006f7a9c  04 c0 9e e5                                      ldr ip, [lr, #4]
006f7aa0  00 40 a0 e1                                      mov r4, r0
006f7aa4  04 00 8e e2                                      add r0, lr, #4
006f7aa8  00 c0 84 e5                                      str ip, [r4]
006f7aac  04 50 90 e5                                      ldr r5, [r0, #4]
006f7ab0  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006f7ab4  34 d0 4d e2                                      sub sp, sp, #0x34
006f7ab8  02 60 a0 e1                                      mov r6, r2
006f7abc  0c 50 84 e7                                      str r5, [r4, ip]
006f7ac0  00 c0 94 e5                                      ldr ip, [r4]
006f7ac4  08 50 90 e5                                      ldr r5, [r0, #8]
006f7ac8  64 70 dd e5                                      ldrb r7, [sp, #0x64]
006f7acc  0c 00 1c e5                                      ldr r0, [ip, #-0xc]
006f7ad0  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006f7ad4  00 50 84 e7                                      str r5, [r4, r0]
006f7ad8  04 20 91 e5                                      ldr r2, [r1, #4]
006f7adc  00 50 a0 e3                                      mov r5, #0
006f7ae0  00 20 84 e5                                      str r2, [r4]
006f7ae4  10 00 9e e5                                      ldr r0, [lr, #0x10]
006f7ae8  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
006f7aec  02 00 84 e7                                      str r0, [r4, r2]
006f7af0  00 20 94 e5                                      ldr r2, [r4]
006f7af4  14 00 9e e5                                      ldr r0, [lr, #0x14]
006f7af8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006f7afc  02 00 84 e7                                      str r0, [r4, r2]
006f7b00  00 e0 91 e5                                      ldr lr, [r1]
006f7b04  04 20 a0 e3                                      mov r2, #4
006f7b08  50 00 84 e2                                      add r0, r4, #0x50
006f7b0c  00 e0 84 e5                                      str lr, [r4]
006f7b10  1c 80 91 e5                                      ldr r8, [r1, #0x1c]
006f7b14  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
006f7b18  0e 80 84 e7                                      str r8, [r4, lr]
006f7b1c  00 80 94 e5                                      ldr r8, [r4]
006f7b20  20 e0 91 e5                                      ldr lr, [r1, #0x20]
006f7b24  0c 10 18 e5                                      ldr r1, [r8, #-0xc]
006f7b28  01 e0 84 e7                                      str lr, [r4, r1]
006f7b2c  29 30 c4 e5                                      strb r3, [r4, #0x29]
006f7b30  60 30 9d e5                                      ldr r3, [sp, #0x60]
006f7b34  18 30 84 e5                                      str r3, [r4, #0x18]
006f7b38  28 70 c4 e5                                      strb r7, [r4, #0x28]
006f7b3c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006f7b40  04 60 84 e5                                      str r6, [r4, #4]
006f7b44  08 50 84 e5                                      str r5, [r4, #8]
006f7b48  2c 30 84 e5                                      str r3, [r4, #0x2c]
006f7b4c  0c 50 84 e5                                      str r5, [r4, #0xc]
006f7b50  10 50 84 e5                                      str r5, [r4, #0x10]
006f7b54  14 50 84 e5                                      str r5, [r4, #0x14]
006f7b58  1c 50 84 e5                                      str r5, [r4, #0x1c]
006f7b5c  20 50 84 e5                                      str r5, [r4, #0x20]
006f7b60  24 50 84 e5                                      str r5, [r4, #0x24]
006f7b64  30 50 84 e5                                      str r5, [r4, #0x30]
006f7b68  34 50 84 e5                                      str r5, [r4, #0x34]
006f7b6c  38 50 84 e5                                      str r5, [r4, #0x38]
006f7b70  00 30 9c e5                                      ldr r3, [ip]
006f7b74  70 10 9d e5                                      ldr r1, [sp, #0x70]
006f7b78  3c 30 84 e5                                      str r3, [r4, #0x3c]
006f7b7c  04 30 9c e5                                      ldr r3, [ip, #4]
006f7b80  40 30 84 e5                                      str r3, [r4, #0x40]
006f7b84  08 30 9c e5                                      ldr r3, [ip, #8]
006f7b88  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006f7b8c  48 c0 84 e5                                      str ip, [r4, #0x48]
006f7b90  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
006f7b94  44 30 84 e5                                      str r3, [r4, #0x44]
006f7b98  4c c0 84 e5                                      str ip, [r4, #0x4c]
006f7b9c  31 5b f0 eb                                      bl #0x30e868
006f7ba0  04 20 a0 e3                                      mov r2, #4
006f7ba4  74 10 9d e5                                      ldr r1, [sp, #0x74]
006f7ba8  54 00 84 e2                                      add r0, r4, #0x54
006f7bac  2d 5b f0 eb                                      bl #0x30e868
006f7bb0  78 30 9d e5                                      ldr r3, [sp, #0x78]
006f7bb4  2c 00 8d e2                                      add r0, sp, #0x2c
006f7bb8  06 10 a0 e1                                      mov r1, r6
006f7bbc  58 30 84 e5                                      str r3, [r4, #0x58]
006f7bc0  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006f7bc4  64 50 84 e5                                      str r5, [r4, #0x64]
006f7bc8  5c 30 84 e5                                      str r3, [r4, #0x5c]
006f7bcc  80 30 9d e5                                      ldr r3, [sp, #0x80]
006f7bd0  60 50 84 e5                                      str r5, [r4, #0x60]
006f7bd4  68 30 84 e5                                      str r3, [r4, #0x68]
006f7bd8  00 30 96 e5                                      ldr r3, [r6]
006f7bdc  0f e0 a0 e1                                      mov lr, pc
006f7be0  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
006f7be4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006f7be8  05 00 53 e1                                      cmp r3, r5
006f7bec  04 20 93 15                                      ldrne r2, [r3, #4]
006f7bf0  01 20 82 12                                      addne r2, r2, #1
006f7bf4  04 20 83 15                                      strne r2, [r3, #4]
006f7bf8  08 00 94 e5                                      ldr r0, [r4, #8]
006f7bfc  08 30 84 e5                                      str r3, [r4, #8]
006f7c00  00 00 50 e3                                      cmp r0, #0
006f7c04  00 00 00 0a                                      beq #0x6f7c0c
006f7c08  5d 96 f0 eb                                      bl #0x31d584
006f7c0c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006f7c10  00 00 50 e3                                      cmp r0, #0
006f7c14  00 00 00 0a                                      beq #0x6f7c1c
006f7c18  59 96 f0 eb                                      bl #0x31d584
006f7c1c  08 20 94 e5                                      ldr r2, [r4, #8]
006f7c20  00 30 e0 e3                                      mvn r3, #0
006f7c24  28 00 8d e2                                      add r0, sp, #0x28
006f7c28  00 c0 92 e5                                      ldr ip, [r2]
006f7c2c  02 10 a0 e1                                      mov r1, r2
006f7c30  04 30 8d e5                                      str r3, [sp, #4]
006f7c34  00 20 a0 e3                                      mov r2, #0
006f7c38  00 30 8d e5                                      str r3, [sp]
006f7c3c  ff 30 a0 e3                                      mov r3, #0xff
006f7c40  0f e0 a0 e1                                      mov lr, pc
006f7c44  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006f7c48  28 30 9d e5                                      ldr r3, [sp, #0x28]
006f7c4c  00 00 53 e3                                      cmp r3, #0
006f7c50  04 20 93 15                                      ldrne r2, [r3, #4]
006f7c54  01 20 82 12                                      addne r2, r2, #1
006f7c58  04 20 83 15                                      strne r2, [r3, #4]
006f7c5c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006f7c60  0c 30 84 e5                                      str r3, [r4, #0xc]
006f7c64  00 00 50 e3                                      cmp r0, #0
006f7c68  00 00 00 0a                                      beq #0x6f7c70
006f7c6c  44 96 f0 eb                                      bl #0x31d584
006f7c70  28 00 9d e5                                      ldr r0, [sp, #0x28]
006f7c74  00 00 50 e3                                      cmp r0, #0
006f7c78  00 00 00 0a                                      beq #0x6f7c80
006f7c7c  40 96 f0 eb                                      bl #0x31d584
006f7c80  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f7c84  00 50 a0 e3                                      mov r5, #0
006f7c88  10 50 84 e5                                      str r5, [r4, #0x10]
006f7c8c  03 00 a0 e1                                      mov r0, r3
006f7c90  00 30 93 e5                                      ldr r3, [r3]
006f7c94  0f e0 a0 e1                                      mov lr, pc
006f7c98  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006f7c9c  05 00 50 e1                                      cmp r0, r5
006f7ca0  14 00 84 e5                                      str r0, [r4, #0x14]
006f7ca4  49 00 00 0a                                      beq #0x6f7dd0
006f7ca8  20 30 8d e2                                      add r3, sp, #0x20
006f7cac  1c b0 84 e2                                      add fp, r4, #0x1c
006f7cb0  24 80 8d e2                                      add r8, sp, #0x24
006f7cb4  18 70 8d e2                                      add r7, sp, #0x18
006f7cb8  1c a0 8d e2                                      add sl, sp, #0x1c
006f7cbc  14 90 8d e2                                      add sb, sp, #0x14
006f7cc0  0c 30 8d e5                                      str r3, [sp, #0xc]
006f7cc4  26 00 00 ea                                      b #0x6f7d64
006f7cc8  00 60 81 e5                                      str r6, [r1]
006f7ccc  20 30 94 e5                                      ldr r3, [r4, #0x20]
006f7cd0  04 30 83 e2                                      add r3, r3, #4
006f7cd4  20 30 84 e5                                      str r3, [r4, #0x20]
006f7cd8  24 00 9d e5                                      ldr r0, [sp, #0x24]
006f7cdc  00 00 50 e3                                      cmp r0, #0
006f7ce0  00 00 00 0a                                      beq #0x6f7ce8
006f7ce4  26 96 f0 eb                                      bl #0x31d584
006f7ce8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f7cec  05 20 a0 e1                                      mov r2, r5
006f7cf0  0a 00 a0 e1                                      mov r0, sl
006f7cf4  03 10 a0 e1                                      mov r1, r3
006f7cf8  00 30 93 e5                                      ldr r3, [r3]
006f7cfc  10 60 94 e5                                      ldr r6, [r4, #0x10]
006f7d00  0f e0 a0 e1                                      mov lr, pc
006f7d04  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f7d08  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006f7d0c  09 00 a0 e1                                      mov r0, sb
006f7d10  14 30 93 e5                                      ldr r3, [r3, #0x14]
006f7d14  00 00 53 e3                                      cmp r3, #0
006f7d18  14 30 8d e5                                      str r3, [sp, #0x14]
006f7d1c  00 20 93 15                                      ldrne r2, [r3]
006f7d20  01 20 82 12                                      addne r2, r2, #1
006f7d24  00 20 83 15                                      strne r2, [r3]
006f7d28  14 30 9d 15                                      ldrne r3, [sp, #0x14]
006f7d2c  08 30 93 e5                                      ldr r3, [r3, #8]
006f7d30  08 30 8d e5                                      str r3, [sp, #8]
006f7d34  95 9b f1 eb                                      bl #0x35eb90
006f7d38  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006f7d3c  08 30 9d e5                                      ldr r3, [sp, #8]
006f7d40  00 00 50 e3                                      cmp r0, #0
006f7d44  03 60 86 e0                                      add r6, r6, r3
006f7d48  10 60 84 e5                                      str r6, [r4, #0x10]
006f7d4c  00 00 00 0a                                      beq #0x6f7d54
006f7d50  0b 96 f0 eb                                      bl #0x31d584
006f7d54  14 30 94 e5                                      ldr r3, [r4, #0x14]
006f7d58  01 50 85 e2                                      add r5, r5, #1
006f7d5c  05 00 53 e1                                      cmp r3, r5
006f7d60  1a 00 00 9a                                      bls #0x6f7dd0
006f7d64  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f7d68  05 20 a0 e1                                      mov r2, r5
006f7d6c  08 00 a0 e1                                      mov r0, r8
006f7d70  03 10 a0 e1                                      mov r1, r3
006f7d74  00 30 93 e5                                      ldr r3, [r3]
006f7d78  0f e0 a0 e1                                      mov lr, pc
006f7d7c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f7d80  24 30 9d e5                                      ldr r3, [sp, #0x24]
006f7d84  07 00 a0 e1                                      mov r0, r7
006f7d88  14 30 93 e5                                      ldr r3, [r3, #0x14]
006f7d8c  00 00 53 e3                                      cmp r3, #0
006f7d90  18 30 8d e5                                      str r3, [sp, #0x18]
006f7d94  00 20 93 15                                      ldrne r2, [r3]
006f7d98  01 20 82 12                                      addne r2, r2, #1
006f7d9c  00 20 83 15                                      strne r2, [r3]
006f7da0  18 30 9d 15                                      ldrne r3, [sp, #0x18]
006f7da4  08 60 93 e5                                      ldr r6, [r3, #8]
006f7da8  78 9b f1 eb                                      bl #0x35eb90
006f7dac  20 10 94 e5                                      ldr r1, [r4, #0x20]
006f7db0  24 30 94 e5                                      ldr r3, [r4, #0x24]
006f7db4  20 60 8d e5                                      str r6, [sp, #0x20]
006f7db8  03 00 51 e1                                      cmp r1, r3
006f7dbc  c1 ff ff 1a                                      bne #0x6f7cc8
006f7dc0  0b 00 a0 e1                                      mov r0, fp
006f7dc4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006f7dc8  e8 fe ff eb                                      bl #0x6f7970
006f7dcc  c1 ff ff ea                                      b #0x6f7cd8
006f7dd0  04 00 a0 e1                                      mov r0, r4
006f7dd4  34 d0 8d e2                                      add sp, sp, #0x34
006f7dd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006f7ddc, declared_size=532, range_size=532, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24setAnimatedMeshSceneNodeEPNS0_22IAnimatedMeshSceneNodeE
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::setAnimatedMeshSceneNode(glitch::scene::IAnimatedMeshSceneNode*)
; decoder-mode: arm
006f7ddc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f7de0  00 40 a0 e1                                      mov r4, r0
006f7de4  34 d0 4d e2                                      sub sp, sp, #0x34
006f7de8  04 10 84 e5                                      str r1, [r4, #4]
006f7dec  00 30 91 e5                                      ldr r3, [r1]
006f7df0  2c 00 8d e2                                      add r0, sp, #0x2c
006f7df4  0f e0 a0 e1                                      mov lr, pc
006f7df8  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
006f7dfc  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006f7e00  00 00 53 e3                                      cmp r3, #0
006f7e04  04 20 93 15                                      ldrne r2, [r3, #4]
006f7e08  01 20 82 12                                      addne r2, r2, #1
006f7e0c  04 20 83 15                                      strne r2, [r3, #4]
006f7e10  08 00 94 e5                                      ldr r0, [r4, #8]
006f7e14  08 30 84 e5                                      str r3, [r4, #8]
006f7e18  00 00 50 e3                                      cmp r0, #0
006f7e1c  00 00 00 0a                                      beq #0x6f7e24
006f7e20  d7 95 f0 eb                                      bl #0x31d584
006f7e24  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006f7e28  00 00 50 e3                                      cmp r0, #0
006f7e2c  00 00 00 0a                                      beq #0x6f7e34
006f7e30  d3 95 f0 eb                                      bl #0x31d584
006f7e34  08 20 94 e5                                      ldr r2, [r4, #8]
006f7e38  00 30 e0 e3                                      mvn r3, #0
006f7e3c  28 00 8d e2                                      add r0, sp, #0x28
006f7e40  00 c0 92 e5                                      ldr ip, [r2]
006f7e44  02 10 a0 e1                                      mov r1, r2
006f7e48  04 30 8d e5                                      str r3, [sp, #4]
006f7e4c  00 20 a0 e3                                      mov r2, #0
006f7e50  00 30 8d e5                                      str r3, [sp]
006f7e54  ff 30 a0 e3                                      mov r3, #0xff
006f7e58  0f e0 a0 e1                                      mov lr, pc
006f7e5c  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006f7e60  28 30 9d e5                                      ldr r3, [sp, #0x28]
006f7e64  00 00 53 e3                                      cmp r3, #0
006f7e68  04 20 93 15                                      ldrne r2, [r3, #4]
006f7e6c  01 20 82 12                                      addne r2, r2, #1
006f7e70  04 20 83 15                                      strne r2, [r3, #4]
006f7e74  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006f7e78  0c 30 84 e5                                      str r3, [r4, #0xc]
006f7e7c  00 00 50 e3                                      cmp r0, #0
006f7e80  00 00 00 0a                                      beq #0x6f7e88
006f7e84  be 95 f0 eb                                      bl #0x31d584
006f7e88  28 00 9d e5                                      ldr r0, [sp, #0x28]
006f7e8c  00 00 50 e3                                      cmp r0, #0
006f7e90  00 00 00 0a                                      beq #0x6f7e98
006f7e94  ba 95 f0 eb                                      bl #0x31d584
006f7e98  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f7e9c  00 50 a0 e3                                      mov r5, #0
006f7ea0  10 50 84 e5                                      str r5, [r4, #0x10]
006f7ea4  03 00 a0 e1                                      mov r0, r3
006f7ea8  00 30 93 e5                                      ldr r3, [r3]
006f7eac  0f e0 a0 e1                                      mov lr, pc
006f7eb0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006f7eb4  05 00 50 e1                                      cmp r0, r5
006f7eb8  14 00 84 e5                                      str r0, [r4, #0x14]
006f7ebc  49 00 00 0a                                      beq #0x6f7fe8
006f7ec0  20 30 8d e2                                      add r3, sp, #0x20
006f7ec4  1c b0 84 e2                                      add fp, r4, #0x1c
006f7ec8  24 80 8d e2                                      add r8, sp, #0x24
006f7ecc  18 70 8d e2                                      add r7, sp, #0x18
006f7ed0  1c a0 8d e2                                      add sl, sp, #0x1c
006f7ed4  14 90 8d e2                                      add sb, sp, #0x14
006f7ed8  0c 30 8d e5                                      str r3, [sp, #0xc]
006f7edc  26 00 00 ea                                      b #0x6f7f7c
006f7ee0  00 60 81 e5                                      str r6, [r1]
006f7ee4  20 30 94 e5                                      ldr r3, [r4, #0x20]
006f7ee8  04 30 83 e2                                      add r3, r3, #4
006f7eec  20 30 84 e5                                      str r3, [r4, #0x20]
006f7ef0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006f7ef4  00 00 50 e3                                      cmp r0, #0
006f7ef8  00 00 00 0a                                      beq #0x6f7f00
006f7efc  a0 95 f0 eb                                      bl #0x31d584
006f7f00  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f7f04  05 20 a0 e1                                      mov r2, r5
006f7f08  0a 00 a0 e1                                      mov r0, sl
006f7f0c  03 10 a0 e1                                      mov r1, r3
006f7f10  00 30 93 e5                                      ldr r3, [r3]
006f7f14  10 60 94 e5                                      ldr r6, [r4, #0x10]
006f7f18  0f e0 a0 e1                                      mov lr, pc
006f7f1c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f7f20  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006f7f24  09 00 a0 e1                                      mov r0, sb
006f7f28  14 30 93 e5                                      ldr r3, [r3, #0x14]
006f7f2c  00 00 53 e3                                      cmp r3, #0
006f7f30  14 30 8d e5                                      str r3, [sp, #0x14]
006f7f34  00 20 93 15                                      ldrne r2, [r3]
006f7f38  01 20 82 12                                      addne r2, r2, #1
006f7f3c  00 20 83 15                                      strne r2, [r3]
006f7f40  14 30 9d 15                                      ldrne r3, [sp, #0x14]
006f7f44  08 30 93 e5                                      ldr r3, [r3, #8]
006f7f48  08 30 8d e5                                      str r3, [sp, #8]
006f7f4c  0f 9b f1 eb                                      bl #0x35eb90
006f7f50  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006f7f54  08 30 9d e5                                      ldr r3, [sp, #8]
006f7f58  00 00 50 e3                                      cmp r0, #0
006f7f5c  03 60 86 e0                                      add r6, r6, r3
006f7f60  10 60 84 e5                                      str r6, [r4, #0x10]
006f7f64  00 00 00 0a                                      beq #0x6f7f6c
006f7f68  85 95 f0 eb                                      bl #0x31d584
006f7f6c  14 30 94 e5                                      ldr r3, [r4, #0x14]
006f7f70  01 50 85 e2                                      add r5, r5, #1
006f7f74  05 00 53 e1                                      cmp r3, r5
006f7f78  1a 00 00 9a                                      bls #0x6f7fe8
006f7f7c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f7f80  05 20 a0 e1                                      mov r2, r5
006f7f84  08 00 a0 e1                                      mov r0, r8
006f7f88  03 10 a0 e1                                      mov r1, r3
006f7f8c  00 30 93 e5                                      ldr r3, [r3]
006f7f90  0f e0 a0 e1                                      mov lr, pc
006f7f94  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f7f98  24 30 9d e5                                      ldr r3, [sp, #0x24]
006f7f9c  07 00 a0 e1                                      mov r0, r7
006f7fa0  14 30 93 e5                                      ldr r3, [r3, #0x14]
006f7fa4  00 00 53 e3                                      cmp r3, #0
006f7fa8  18 30 8d e5                                      str r3, [sp, #0x18]
006f7fac  00 20 93 15                                      ldrne r2, [r3]
006f7fb0  01 20 82 12                                      addne r2, r2, #1
006f7fb4  00 20 83 15                                      strne r2, [r3]
006f7fb8  18 30 9d 15                                      ldrne r3, [sp, #0x18]
006f7fbc  08 60 93 e5                                      ldr r6, [r3, #8]
006f7fc0  f2 9a f1 eb                                      bl #0x35eb90
006f7fc4  20 10 94 e5                                      ldr r1, [r4, #0x20]
006f7fc8  24 30 94 e5                                      ldr r3, [r4, #0x24]
006f7fcc  20 60 8d e5                                      str r6, [sp, #0x20]
006f7fd0  03 00 51 e1                                      cmp r1, r3
006f7fd4  c1 ff ff 1a                                      bne #0x6f7ee0
006f7fd8  0b 00 a0 e1                                      mov r0, fp
006f7fdc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006f7fe0  62 fe ff eb                                      bl #0x6f7970
006f7fe4  c1 ff ff ea                                      b #0x6f7ef0
006f7fe8  34 d0 8d e2                                      add sp, sp, #0x34
006f7fec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006f7ff0, declared_size=892, range_size=892, mode=arm
; class-group: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter
; alias: _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterC1EPNS0_22IAnimatedMeshSceneNodeEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESC_jji
; demangled: glitch::scene::CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(glitch::scene::IAnimatedMeshSceneNode*, bool, glitch::core::vector3d<float> const&, float, int, bool, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006f7ff0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f7ff4  60 e3 9f e5                                      ldr lr, [pc, #0x360]
006f7ff8  60 c3 9f e5                                      ldr ip, [pc, #0x360]
006f7ffc  60 53 9f e5                                      ldr r5, [pc, #0x360]
006f8000  0e e0 8f e0                                      add lr, pc, lr
006f8004  0c c0 9e e7                                      ldr ip, [lr, ip]
006f8008  05 50 9e e7                                      ldr r5, [lr, r5]
006f800c  00 40 a0 e1                                      mov r4, r0
006f8010  24 00 9c e5                                      ldr r0, [ip, #0x24]
006f8014  08 50 85 e2                                      add r5, r5, #8
006f8018  01 60 a0 e3                                      mov r6, #1
006f801c  00 00 84 e5                                      str r0, [r4]
006f8020  6c 50 84 e5                                      str r5, [r4, #0x6c]
006f8024  70 60 84 e5                                      str r6, [r4, #0x70]
006f8028  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
006f802c  28 70 9c e5                                      ldr r7, [ip, #0x28]
006f8030  08 00 9c e5                                      ldr r0, [ip, #8]
006f8034  0c 80 9c e5                                      ldr r8, [ip, #0xc]
006f8038  06 70 84 e7                                      str r7, [r4, r6]
006f803c  00 00 84 e5                                      str r0, [r4]
006f8040  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006f8044  04 50 9c e5                                      ldr r5, [ip, #4]
006f8048  10 70 9c e5                                      ldr r7, [ip, #0x10]
006f804c  00 80 84 e7                                      str r8, [r4, r0]
006f8050  00 80 94 e5                                      ldr r8, [r4]
006f8054  14 60 9c e5                                      ldr r6, [ip, #0x14]
006f8058  08 03 9f e5                                      ldr r0, [pc, #0x308]
006f805c  0c 80 18 e5                                      ldr r8, [r8, #-0xc]
006f8060  18 c0 9c e5                                      ldr ip, [ip, #0x18]
006f8064  00 00 9e e7                                      ldr r0, [lr, r0]
006f8068  08 70 84 e7                                      str r7, [r4, r8]
006f806c  00 50 84 e5                                      str r5, [r4]
006f8070  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006f8074  34 d0 4d e2                                      sub sp, sp, #0x34
006f8078  05 60 84 e7                                      str r6, [r4, r5]
006f807c  00 50 94 e5                                      ldr r5, [r4]
006f8080  01 60 a0 e1                                      mov r6, r1
006f8084  a4 10 80 e2                                      add r1, r0, #0xa4
006f8088  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
006f808c  1c 00 80 e2                                      add r0, r0, #0x1c
006f8090  60 70 dd e5                                      ldrb r7, [sp, #0x60]
006f8094  05 c0 84 e7                                      str ip, [r4, r5]
006f8098  00 00 84 e5                                      str r0, [r4]
006f809c  6c 10 84 e5                                      str r1, [r4, #0x6c]
006f80a0  29 20 c4 e5                                      strb r2, [r4, #0x29]
006f80a4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006f80a8  00 50 a0 e3                                      mov r5, #0
006f80ac  18 20 84 e5                                      str r2, [r4, #0x18]
006f80b0  28 70 c4 e5                                      strb r7, [r4, #0x28]
006f80b4  58 20 9d e5                                      ldr r2, [sp, #0x58]
006f80b8  04 60 84 e5                                      str r6, [r4, #4]
006f80bc  08 50 84 e5                                      str r5, [r4, #8]
006f80c0  2c 20 84 e5                                      str r2, [r4, #0x2c]
006f80c4  0c 50 84 e5                                      str r5, [r4, #0xc]
006f80c8  10 50 84 e5                                      str r5, [r4, #0x10]
006f80cc  14 50 84 e5                                      str r5, [r4, #0x14]
006f80d0  1c 50 84 e5                                      str r5, [r4, #0x1c]
006f80d4  20 50 84 e5                                      str r5, [r4, #0x20]
006f80d8  24 50 84 e5                                      str r5, [r4, #0x24]
006f80dc  30 50 84 e5                                      str r5, [r4, #0x30]
006f80e0  34 50 84 e5                                      str r5, [r4, #0x34]
006f80e4  38 50 84 e5                                      str r5, [r4, #0x38]
006f80e8  00 00 93 e5                                      ldr r0, [r3]
006f80ec  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006f80f0  04 20 a0 e3                                      mov r2, #4
006f80f4  3c 00 84 e5                                      str r0, [r4, #0x3c]
006f80f8  04 c0 93 e5                                      ldr ip, [r3, #4]
006f80fc  50 00 84 e2                                      add r0, r4, #0x50
006f8100  40 c0 84 e5                                      str ip, [r4, #0x40]
006f8104  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006f8108  08 30 93 e5                                      ldr r3, [r3, #8]
006f810c  48 c0 84 e5                                      str ip, [r4, #0x48]
006f8110  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006f8114  44 30 84 e5                                      str r3, [r4, #0x44]
006f8118  4c c0 84 e5                                      str ip, [r4, #0x4c]
006f811c  d1 59 f0 eb                                      bl #0x30e868
006f8120  04 20 a0 e3                                      mov r2, #4
006f8124  70 10 9d e5                                      ldr r1, [sp, #0x70]
006f8128  54 00 84 e2                                      add r0, r4, #0x54
006f812c  cd 59 f0 eb                                      bl #0x30e868
006f8130  74 30 9d e5                                      ldr r3, [sp, #0x74]
006f8134  2c 00 8d e2                                      add r0, sp, #0x2c
006f8138  06 10 a0 e1                                      mov r1, r6
006f813c  58 30 84 e5                                      str r3, [r4, #0x58]
006f8140  78 30 9d e5                                      ldr r3, [sp, #0x78]
006f8144  64 50 84 e5                                      str r5, [r4, #0x64]
006f8148  5c 30 84 e5                                      str r3, [r4, #0x5c]
006f814c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006f8150  60 50 84 e5                                      str r5, [r4, #0x60]
006f8154  68 30 84 e5                                      str r3, [r4, #0x68]
006f8158  00 30 96 e5                                      ldr r3, [r6]
006f815c  0f e0 a0 e1                                      mov lr, pc
006f8160  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
006f8164  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006f8168  05 00 53 e1                                      cmp r3, r5
006f816c  04 20 93 15                                      ldrne r2, [r3, #4]
006f8170  01 20 82 12                                      addne r2, r2, #1
006f8174  04 20 83 15                                      strne r2, [r3, #4]
006f8178  08 00 94 e5                                      ldr r0, [r4, #8]
006f817c  08 30 84 e5                                      str r3, [r4, #8]
006f8180  00 00 50 e3                                      cmp r0, #0
006f8184  00 00 00 0a                                      beq #0x6f818c
006f8188  fd 94 f0 eb                                      bl #0x31d584
006f818c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006f8190  00 00 50 e3                                      cmp r0, #0
006f8194  00 00 00 0a                                      beq #0x6f819c
006f8198  f9 94 f0 eb                                      bl #0x31d584
006f819c  08 20 94 e5                                      ldr r2, [r4, #8]
006f81a0  00 30 e0 e3                                      mvn r3, #0
006f81a4  28 00 8d e2                                      add r0, sp, #0x28
006f81a8  00 c0 92 e5                                      ldr ip, [r2]
006f81ac  02 10 a0 e1                                      mov r1, r2
006f81b0  04 30 8d e5                                      str r3, [sp, #4]
006f81b4  00 20 a0 e3                                      mov r2, #0
006f81b8  00 30 8d e5                                      str r3, [sp]
006f81bc  ff 30 a0 e3                                      mov r3, #0xff
006f81c0  0f e0 a0 e1                                      mov lr, pc
006f81c4  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006f81c8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006f81cc  00 00 53 e3                                      cmp r3, #0
006f81d0  04 20 93 15                                      ldrne r2, [r3, #4]
006f81d4  01 20 82 12                                      addne r2, r2, #1
006f81d8  04 20 83 15                                      strne r2, [r3, #4]
006f81dc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006f81e0  0c 30 84 e5                                      str r3, [r4, #0xc]
006f81e4  00 00 50 e3                                      cmp r0, #0
006f81e8  00 00 00 0a                                      beq #0x6f81f0
006f81ec  e4 94 f0 eb                                      bl #0x31d584
006f81f0  28 00 9d e5                                      ldr r0, [sp, #0x28]
006f81f4  00 00 50 e3                                      cmp r0, #0
006f81f8  00 00 00 0a                                      beq #0x6f8200
006f81fc  e0 94 f0 eb                                      bl #0x31d584
006f8200  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f8204  00 50 a0 e3                                      mov r5, #0
006f8208  10 50 84 e5                                      str r5, [r4, #0x10]
006f820c  03 00 a0 e1                                      mov r0, r3
006f8210  00 30 93 e5                                      ldr r3, [r3]
006f8214  0f e0 a0 e1                                      mov lr, pc
006f8218  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006f821c  05 00 50 e1                                      cmp r0, r5
006f8220  14 00 84 e5                                      str r0, [r4, #0x14]
006f8224  49 00 00 0a                                      beq #0x6f8350
006f8228  20 30 8d e2                                      add r3, sp, #0x20
006f822c  1c b0 84 e2                                      add fp, r4, #0x1c
006f8230  24 80 8d e2                                      add r8, sp, #0x24
006f8234  18 70 8d e2                                      add r7, sp, #0x18
006f8238  1c a0 8d e2                                      add sl, sp, #0x1c
006f823c  14 90 8d e2                                      add sb, sp, #0x14
006f8240  0c 30 8d e5                                      str r3, [sp, #0xc]
006f8244  26 00 00 ea                                      b #0x6f82e4
006f8248  00 60 81 e5                                      str r6, [r1]
006f824c  20 30 94 e5                                      ldr r3, [r4, #0x20]
006f8250  04 30 83 e2                                      add r3, r3, #4
006f8254  20 30 84 e5                                      str r3, [r4, #0x20]
006f8258  24 00 9d e5                                      ldr r0, [sp, #0x24]
006f825c  00 00 50 e3                                      cmp r0, #0
006f8260  00 00 00 0a                                      beq #0x6f8268
006f8264  c6 94 f0 eb                                      bl #0x31d584
006f8268  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f826c  05 20 a0 e1                                      mov r2, r5
006f8270  0a 00 a0 e1                                      mov r0, sl
006f8274  03 10 a0 e1                                      mov r1, r3
006f8278  00 30 93 e5                                      ldr r3, [r3]
006f827c  10 60 94 e5                                      ldr r6, [r4, #0x10]
006f8280  0f e0 a0 e1                                      mov lr, pc
006f8284  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f8288  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006f828c  09 00 a0 e1                                      mov r0, sb
006f8290  14 30 93 e5                                      ldr r3, [r3, #0x14]
006f8294  00 00 53 e3                                      cmp r3, #0
006f8298  14 30 8d e5                                      str r3, [sp, #0x14]
006f829c  00 20 93 15                                      ldrne r2, [r3]
006f82a0  01 20 82 12                                      addne r2, r2, #1
006f82a4  00 20 83 15                                      strne r2, [r3]
006f82a8  14 30 9d 15                                      ldrne r3, [sp, #0x14]
006f82ac  08 30 93 e5                                      ldr r3, [r3, #8]
006f82b0  08 30 8d e5                                      str r3, [sp, #8]
006f82b4  35 9a f1 eb                                      bl #0x35eb90
006f82b8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006f82bc  08 30 9d e5                                      ldr r3, [sp, #8]
006f82c0  00 00 50 e3                                      cmp r0, #0
006f82c4  03 60 86 e0                                      add r6, r6, r3
006f82c8  10 60 84 e5                                      str r6, [r4, #0x10]
006f82cc  00 00 00 0a                                      beq #0x6f82d4
006f82d0  ab 94 f0 eb                                      bl #0x31d584
006f82d4  14 30 94 e5                                      ldr r3, [r4, #0x14]
006f82d8  01 50 85 e2                                      add r5, r5, #1
006f82dc  05 00 53 e1                                      cmp r3, r5
006f82e0  1a 00 00 9a                                      bls #0x6f8350
006f82e4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006f82e8  05 20 a0 e1                                      mov r2, r5
006f82ec  08 00 a0 e1                                      mov r0, r8
006f82f0  03 10 a0 e1                                      mov r1, r3
006f82f4  00 30 93 e5                                      ldr r3, [r3]
006f82f8  0f e0 a0 e1                                      mov lr, pc
006f82fc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f8300  24 30 9d e5                                      ldr r3, [sp, #0x24]
006f8304  07 00 a0 e1                                      mov r0, r7
006f8308  14 30 93 e5                                      ldr r3, [r3, #0x14]
006f830c  00 00 53 e3                                      cmp r3, #0
006f8310  18 30 8d e5                                      str r3, [sp, #0x18]
006f8314  00 20 93 15                                      ldrne r2, [r3]
006f8318  01 20 82 12                                      addne r2, r2, #1
006f831c  00 20 83 15                                      strne r2, [r3]
006f8320  18 30 9d 15                                      ldrne r3, [sp, #0x18]
006f8324  08 60 93 e5                                      ldr r6, [r3, #8]
006f8328  18 9a f1 eb                                      bl #0x35eb90
006f832c  20 10 94 e5                                      ldr r1, [r4, #0x20]
006f8330  24 30 94 e5                                      ldr r3, [r4, #0x24]
006f8334  20 60 8d e5                                      str r6, [sp, #0x20]
006f8338  03 00 51 e1                                      cmp r1, r3
006f833c  c1 ff ff 1a                                      bne #0x6f8248
006f8340  0b 00 a0 e1                                      mov r0, fp
006f8344  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006f8348  88 fd ff eb                                      bl #0x6f7970
006f834c  c1 ff ff ea                                      b #0x6f8258
006f8350  04 00 a0 e1                                      mov r0, r4
006f8354  34 d0 8d e2                                      add sp, sp, #0x34
006f8358  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006f835c  90 ca 29 00 a4 1a 00 00 44 2b 00 00 5c 30 00 00  .byte 0x90, 0xca, 0x29, 0x00, 0xa4, 0x1a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x5c, 0x30, 0x00, 0x00
