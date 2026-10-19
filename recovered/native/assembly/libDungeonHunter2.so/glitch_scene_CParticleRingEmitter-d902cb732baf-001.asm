; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fc3cc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleRingEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fc3cc  00 30 91 e5                                      ldr r3, [r1]
006fc3d0  24 30 80 e5                                      str r3, [r0, #0x24]
006fc3d4  04 30 91 e5                                      ldr r3, [r1, #4]
006fc3d8  28 30 80 e5                                      str r3, [r0, #0x28]
006fc3dc  08 30 91 e5                                      ldr r3, [r1, #8]
006fc3e0  2c 30 80 e5                                      str r3, [r0, #0x2c]
006fc3e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc3e8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticleRingEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fc3e8  30 10 80 e5                                      str r1, [r0, #0x30]
006fc3ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc3f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticleRingEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fc3f0  34 10 80 e5                                      str r1, [r0, #0x34]
006fc3f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc3f8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleRingEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fc3f8  10 40 2d e9                                      push {r4, lr}
006fc3fc  04 20 a0 e3                                      mov r2, #4
006fc400  38 00 80 e2                                      add r0, r0, #0x38
006fc404  17 49 f0 eb                                      bl #0x30e868
006fc408  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fc40c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleRingEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fc40c  10 40 2d e9                                      push {r4, lr}
006fc410  04 20 a0 e3                                      mov r2, #4
006fc414  3c 00 80 e2                                      add r0, r0, #0x3c
006fc418  12 49 f0 eb                                      bl #0x30e868
006fc41c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fc420, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter9setCenterERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleRingEmitter::setCenter(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fc420  00 30 91 e5                                      ldr r3, [r1]
006fc424  10 30 80 e5                                      str r3, [r0, #0x10]
006fc428  04 30 91 e5                                      ldr r3, [r1, #4]
006fc42c  14 30 80 e5                                      str r3, [r0, #0x14]
006fc430  08 30 91 e5                                      ldr r3, [r1, #8]
006fc434  18 30 80 e5                                      str r3, [r0, #0x18]
006fc438  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc43c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter9setRadiusEf
; demangled: glitch::scene::CParticleRingEmitter::setRadius(float)
; decoder-mode: arm
006fc43c  1c 10 80 e5                                      str r1, [r0, #0x1c]
006fc440  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc444, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter16setRingThicknessEf
; demangled: glitch::scene::CParticleRingEmitter::setRingThickness(float)
; decoder-mode: arm
006fc444  20 10 80 e5                                      str r1, [r0, #0x20]
006fc448  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc44c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter12getDirectionEv
; demangled: glitch::scene::CParticleRingEmitter::getDirection() const
; decoder-mode: arm
006fc44c  24 00 80 e2                                      add r0, r0, #0x24
006fc450  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc454, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticleRingEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006fc454  30 00 90 e5                                      ldr r0, [r0, #0x30]
006fc458  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc45c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticleRingEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006fc45c  34 00 90 e5                                      ldr r0, [r0, #0x34]
006fc460  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc464, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticleRingEmitter::getMinStartColor() const
; decoder-mode: arm
006fc464  38 00 80 e2                                      add r0, r0, #0x38
006fc468  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc46c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticleRingEmitter::getMaxStartColor() const
; decoder-mode: arm
006fc46c  3c 00 80 e2                                      add r0, r0, #0x3c
006fc470  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc474, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter9getCenterEv
; demangled: glitch::scene::CParticleRingEmitter::getCenter() const
; decoder-mode: arm
006fc474  10 00 80 e2                                      add r0, r0, #0x10
006fc478  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc47c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter9getRadiusEv
; demangled: glitch::scene::CParticleRingEmitter::getRadius() const
; decoder-mode: arm
006fc47c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006fc480  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc484, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter16getRingThicknessEv
; demangled: glitch::scene::CParticleRingEmitter::getRingThickness() const
; decoder-mode: arm
006fc484  20 00 90 e5                                      ldr r0, [r0, #0x20]
006fc488  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc48c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticleRingEmitter::getMinLifeTime() const
; decoder-mode: arm
006fc48c  40 00 90 e5                                      ldr r0, [r0, #0x40]
006fc490  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc494, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticleRingEmitter::getMaxLifeTime() const
; decoder-mode: arm
006fc494  44 00 90 e5                                      ldr r0, [r0, #0x44]
006fc498  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc49c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZNK6glitch5scene20CParticleRingEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticleRingEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006fc49c  50 00 90 e5                                      ldr r0, [r0, #0x50]
006fc4a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fc4c8, declared_size=300, range_size=300, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitterC2ERKNS_4core8vector3dIfEEffS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleRingEmitter::CParticleRingEmitter(glitch::core::vector3d<float> const&, float, float, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006fc4c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006fc4cc  04 60 81 e2                                      add r6, r1, #4
006fc4d0  04 c0 96 e5                                      ldr ip, [r6, #4]
006fc4d4  00 40 a0 e1                                      mov r4, r0
006fc4d8  04 00 86 e2                                      add r0, r6, #4
006fc4dc  00 c0 84 e5                                      str ip, [r4]
006fc4e0  04 70 90 e5                                      ldr r7, [r0, #4]
006fc4e4  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006fc4e8  02 e0 a0 e1                                      mov lr, r2
006fc4ec  00 50 a0 e3                                      mov r5, #0
006fc4f0  0c 70 84 e7                                      str r7, [r4, ip]
006fc4f4  00 20 94 e5                                      ldr r2, [r4]
006fc4f8  08 00 90 e5                                      ldr r0, [r0, #8]
006fc4fc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006fc500  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006fc504  02 00 84 e7                                      str r0, [r4, r2]
006fc508  04 20 91 e5                                      ldr r2, [r1, #4]
006fc50c  00 20 84 e5                                      str r2, [r4]
006fc510  10 00 96 e5                                      ldr r0, [r6, #0x10]
006fc514  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
006fc518  02 00 84 e7                                      str r0, [r4, r2]
006fc51c  00 20 94 e5                                      ldr r2, [r4]
006fc520  14 70 96 e5                                      ldr r7, [r6, #0x14]
006fc524  04 60 a0 e3                                      mov r6, #4
006fc528  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006fc52c  06 20 a0 e1                                      mov r2, r6
006fc530  00 70 84 e7                                      str r7, [r4, r0]
006fc534  00 70 91 e5                                      ldr r7, [r1]
006fc538  38 00 84 e2                                      add r0, r4, #0x38
006fc53c  00 70 84 e5                                      str r7, [r4]
006fc540  1c 80 91 e5                                      ldr r8, [r1, #0x1c]
006fc544  1c 70 17 e5                                      ldr r7, [r7, #-0x1c]
006fc548  07 80 84 e7                                      str r8, [r4, r7]
006fc54c  00 80 94 e5                                      ldr r8, [r4]
006fc550  20 70 91 e5                                      ldr r7, [r1, #0x20]
006fc554  0c 10 18 e5                                      ldr r1, [r8, #-0xc]
006fc558  01 70 84 e7                                      str r7, [r4, r1]
006fc55c  04 50 84 e5                                      str r5, [r4, #4]
006fc560  08 50 84 e5                                      str r5, [r4, #8]
006fc564  0c 50 84 e5                                      str r5, [r4, #0xc]
006fc568  00 70 9e e5                                      ldr r7, [lr]
006fc56c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006fc570  10 70 84 e5                                      str r7, [r4, #0x10]
006fc574  04 70 9e e5                                      ldr r7, [lr, #4]
006fc578  14 70 84 e5                                      str r7, [r4, #0x14]
006fc57c  08 e0 9e e5                                      ldr lr, [lr, #8]
006fc580  1c 30 84 e5                                      str r3, [r4, #0x1c]
006fc584  18 30 9d e5                                      ldr r3, [sp, #0x18]
006fc588  18 e0 84 e5                                      str lr, [r4, #0x18]
006fc58c  20 30 84 e5                                      str r3, [r4, #0x20]
006fc590  00 30 9c e5                                      ldr r3, [ip]
006fc594  24 30 84 e5                                      str r3, [r4, #0x24]
006fc598  04 30 9c e5                                      ldr r3, [ip, #4]
006fc59c  28 30 84 e5                                      str r3, [r4, #0x28]
006fc5a0  08 30 9c e5                                      ldr r3, [ip, #8]
006fc5a4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006fc5a8  30 c0 84 e5                                      str ip, [r4, #0x30]
006fc5ac  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006fc5b0  2c 30 84 e5                                      str r3, [r4, #0x2c]
006fc5b4  34 c0 84 e5                                      str ip, [r4, #0x34]
006fc5b8  aa 48 f0 eb                                      bl #0x30e868
006fc5bc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006fc5c0  06 20 a0 e1                                      mov r2, r6
006fc5c4  3c 00 84 e2                                      add r0, r4, #0x3c
006fc5c8  a6 48 f0 eb                                      bl #0x30e868
006fc5cc  30 30 9d e5                                      ldr r3, [sp, #0x30]
006fc5d0  04 00 a0 e1                                      mov r0, r4
006fc5d4  40 30 84 e5                                      str r3, [r4, #0x40]
006fc5d8  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fc5dc  4c 50 84 e5                                      str r5, [r4, #0x4c]
006fc5e0  44 30 84 e5                                      str r3, [r4, #0x44]
006fc5e4  38 30 9d e5                                      ldr r3, [sp, #0x38]
006fc5e8  48 50 84 e5                                      str r5, [r4, #0x48]
006fc5ec  50 30 84 e5                                      str r3, [r4, #0x50]
006fc5f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006fc5f4, declared_size=348, range_size=348, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitterC1ERKNS_4core8vector3dIfEEffS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleRingEmitter::CParticleRingEmitter(glitch::core::vector3d<float> const&, float, float, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006fc5f4  44 c1 9f e5                                      ldr ip, [pc, #0x144]
006fc5f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006fc5fc  40 e1 9f e5                                      ldr lr, [pc, #0x140]
006fc600  0c c0 8f e0                                      add ip, pc, ip
006fc604  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
006fc608  0e e0 9c e7                                      ldr lr, [ip, lr]
006fc60c  00 40 a0 e1                                      mov r4, r0
006fc610  05 50 9c e7                                      ldr r5, [ip, r5]
006fc614  24 00 9e e5                                      ldr r0, [lr, #0x24]
006fc618  01 60 a0 e3                                      mov r6, #1
006fc61c  08 50 85 e2                                      add r5, r5, #8
006fc620  00 00 84 e5                                      str r0, [r4]
006fc624  5c 50 84 e5                                      str r5, [r4, #0x5c]
006fc628  60 60 84 e5                                      str r6, [r4, #0x60]
006fc62c  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
006fc630  28 80 9e e5                                      ldr r8, [lr, #0x28]
006fc634  08 00 9e e5                                      ldr r0, [lr, #8]
006fc638  0c 70 9e e5                                      ldr r7, [lr, #0xc]
006fc63c  06 80 84 e7                                      str r8, [r4, r6]
006fc640  00 00 84 e5                                      str r0, [r4]
006fc644  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006fc648  04 50 9e e5                                      ldr r5, [lr, #4]
006fc64c  10 80 9e e5                                      ldr r8, [lr, #0x10]
006fc650  00 70 84 e7                                      str r7, [r4, r0]
006fc654  00 70 94 e5                                      ldr r7, [r4]
006fc658  14 60 9e e5                                      ldr r6, [lr, #0x14]
006fc65c  18 a0 9e e5                                      ldr sl, [lr, #0x18]
006fc660  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fc664  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006fc668  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
006fc66c  07 80 84 e7                                      str r8, [r4, r7]
006fc670  00 50 84 e5                                      str r5, [r4]
006fc674  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006fc678  00 00 9c e7                                      ldr r0, [ip, r0]
006fc67c  01 70 a0 e1                                      mov r7, r1
006fc680  05 60 84 e7                                      str r6, [r4, r5]
006fc684  00 50 94 e5                                      ldr r5, [r4]
006fc688  0c 60 15 e5                                      ldr r6, [r5, #-0xc]
006fc68c  00 50 a0 e3                                      mov r5, #0
006fc690  06 a0 84 e7                                      str sl, [r4, r6]
006fc694  94 60 80 e2                                      add r6, r0, #0x94
006fc698  1c 00 80 e2                                      add r0, r0, #0x1c
006fc69c  21 00 84 e8                                      stm r4, {r0, r5}
006fc6a0  08 50 84 e5                                      str r5, [r4, #8]
006fc6a4  5c 60 84 e5                                      str r6, [r4, #0x5c]
006fc6a8  0c 50 84 e5                                      str r5, [r4, #0xc]
006fc6ac  00 00 91 e5                                      ldr r0, [r1]
006fc6b0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006fc6b4  04 60 a0 e3                                      mov r6, #4
006fc6b8  10 00 84 e5                                      str r0, [r4, #0x10]
006fc6bc  04 80 97 e5                                      ldr r8, [r7, #4]
006fc6c0  38 00 84 e2                                      add r0, r4, #0x38
006fc6c4  14 80 84 e5                                      str r8, [r4, #0x14]
006fc6c8  08 c0 97 e5                                      ldr ip, [r7, #8]
006fc6cc  1c 20 84 e5                                      str r2, [r4, #0x1c]
006fc6d0  20 30 84 e5                                      str r3, [r4, #0x20]
006fc6d4  18 c0 84 e5                                      str ip, [r4, #0x18]
006fc6d8  00 30 9e e5                                      ldr r3, [lr]
006fc6dc  06 20 a0 e1                                      mov r2, r6
006fc6e0  24 30 84 e5                                      str r3, [r4, #0x24]
006fc6e4  04 30 9e e5                                      ldr r3, [lr, #4]
006fc6e8  28 30 84 e5                                      str r3, [r4, #0x28]
006fc6ec  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006fc6f0  08 30 9e e5                                      ldr r3, [lr, #8]
006fc6f4  30 c0 84 e5                                      str ip, [r4, #0x30]
006fc6f8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006fc6fc  2c 30 84 e5                                      str r3, [r4, #0x2c]
006fc700  34 c0 84 e5                                      str ip, [r4, #0x34]
006fc704  57 48 f0 eb                                      bl #0x30e868
006fc708  30 10 9d e5                                      ldr r1, [sp, #0x30]
006fc70c  06 20 a0 e1                                      mov r2, r6
006fc710  3c 00 84 e2                                      add r0, r4, #0x3c
006fc714  53 48 f0 eb                                      bl #0x30e868
006fc718  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fc71c  04 00 a0 e1                                      mov r0, r4
006fc720  40 30 84 e5                                      str r3, [r4, #0x40]
006fc724  38 30 9d e5                                      ldr r3, [sp, #0x38]
006fc728  4c 50 84 e5                                      str r5, [r4, #0x4c]
006fc72c  44 30 84 e5                                      str r3, [r4, #0x44]
006fc730  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006fc734  48 50 84 e5                                      str r5, [r4, #0x48]
006fc738  50 30 84 e5                                      str r3, [r4, #0x50]
006fc73c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006fc740  90 84 29 00 98 45 00 00 44 2b 00 00 94 0e 00 00  .byte 0x90, 0x84, 0x29, 0x00, 0x98, 0x45, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x94, 0x0e, 0x00, 0x00

; FUNCTION 0x006fc770, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitterD1Ev
; demangled: glitch::scene::CParticleRingEmitter::~CParticleRingEmitter()
; decoder-mode: arm
006fc770  10 40 2d e9                                      push {r4, lr}
006fc774  34 20 9f e5                                      ldr r2, [pc, #0x34]
006fc778  34 30 9f e5                                      ldr r3, [pc, #0x34]
006fc77c  00 40 a0 e1                                      mov r4, r0
006fc780  02 20 8f e0                                      add r2, pc, r2
006fc784  04 00 90 e5                                      ldr r0, [r0, #4]
006fc788  03 30 92 e7                                      ldr r3, [r2, r3]
006fc78c  00 00 50 e3                                      cmp r0, #0
006fc790  94 20 83 e2                                      add r2, r3, #0x94
006fc794  1c 30 83 e2                                      add r3, r3, #0x1c
006fc798  00 30 84 e5                                      str r3, [r4]
006fc79c  5c 20 84 e5                                      str r2, [r4, #0x5c]
006fc7a0  00 00 00 0a                                      beq #0x6fc7a8
006fc7a4  29 4f f0 eb                                      bl #0x310450
006fc7a8  04 00 a0 e1                                      mov r0, r4
006fc7ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fc7b0  10 83 29 00 94 0e 00 00                          .byte 0x10, 0x83, 0x29, 0x00, 0x94, 0x0e, 0x00, 0x00

; FUNCTION 0x006fc7b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZTv0_n24_N6glitch5scene20CParticleRingEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleRingEmitter::~CParticleRingEmitter()
; decoder-mode: arm
006fc7b8  00 30 90 e5                                      ldr r3, [r0]
006fc7bc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fc7c0  03 00 80 e0                                      add r0, r0, r3
006fc7c4  e9 ff ff ea                                      b #0x6fc770

; FUNCTION 0x006fc7c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZTv0_n12_N6glitch5scene20CParticleRingEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleRingEmitter::~CParticleRingEmitter()
; decoder-mode: arm
006fc7c8  00 30 90 e5                                      ldr r3, [r0]
006fc7cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fc7d0  03 00 80 e0                                      add r0, r0, r3
006fc7d4  e5 ff ff ea                                      b #0x6fc770

; FUNCTION 0x006fc7d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitterD0Ev
; demangled: glitch::scene::CParticleRingEmitter::~CParticleRingEmitter()
; decoder-mode: arm
006fc7d8  10 40 2d e9                                      push {r4, lr}
006fc7dc  00 40 a0 e1                                      mov r4, r0
006fc7e0  e2 ff ff eb                                      bl #0x6fc770
006fc7e4  04 00 a0 e1                                      mov r0, r4
006fc7e8  b0 46 f0 eb                                      bl #0x30e2b0
006fc7ec  04 00 a0 e1                                      mov r0, r4
006fc7f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fc7f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZTv0_n24_N6glitch5scene20CParticleRingEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleRingEmitter::~CParticleRingEmitter()
; decoder-mode: arm
006fc7f4  00 30 90 e5                                      ldr r3, [r0]
006fc7f8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fc7fc  03 00 80 e0                                      add r0, r0, r3
006fc800  f4 ff ff ea                                      b #0x6fc7d8

; FUNCTION 0x006fc804, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZTv0_n12_N6glitch5scene20CParticleRingEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleRingEmitter::~CParticleRingEmitter()
; decoder-mode: arm
006fc804  00 30 90 e5                                      ldr r3, [r0]
006fc808  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fc80c  03 00 80 e0                                      add r0, r0, r3
006fc810  f0 ff ff ea                                      b #0x6fc7d8

; FUNCTION 0x006fc814, declared_size=1144, range_size=1144, mode=arm
; class-group: glitch::scene::CParticleRingEmitter
; alias: _ZN6glitch5scene20CParticleRingEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticleRingEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006fc814  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fc818  00 40 a0 e1                                      mov r4, r0
006fc81c  48 60 90 e5                                      ldr r6, [r0, #0x48]
006fc820  30 50 90 e5                                      ldr r5, [r0, #0x30]
006fc824  34 00 90 e5                                      ldr r0, [r0, #0x34]
006fc828  c4 d0 4d e2                                      sub sp, sp, #0xc4
006fc82c  06 60 82 e0                                      add r6, r2, r6
006fc830  05 80 50 e0                                      subs r8, r0, r5
006fc834  24 30 8d e5                                      str r3, [sp, #0x24]
006fc838  01 70 a0 e1                                      mov r7, r1
006fc83c  48 60 84 e5                                      str r6, [r4, #0x48]
006fc840  fb 00 00 1a                                      bne #0x6fcc34
006fc844  05 00 a0 e1                                      mov r0, r5
006fc848  a4 46 f0 eb                                      bl #0x30e2e0
006fc84c  00 10 a0 e1                                      mov r1, r0
006fc850  11 03 a0 e3                                      mov r0, #0x44000000
006fc854  7a 08 80 e2                                      add r0, r0, #0x7a0000
006fc858  0d 49 f0 eb                                      bl #0x30ec94
006fc85c  00 50 a0 e1                                      mov r5, r0
006fc860  06 00 a0 e1                                      mov r0, r6
006fc864  9d 46 f0 eb                                      bl #0x30e2e0
006fc868  05 10 a0 e1                                      mov r1, r5
006fc86c  a1 46 f0 eb                                      bl #0x30e2f8
006fc870  00 00 50 e3                                      cmp r0, #0
006fc874  ec 00 00 0a                                      beq #0x6fcc2c
006fc878  08 00 94 e5                                      ldr r0, [r4, #8]
006fc87c  04 20 94 e5                                      ldr r2, [r4, #4]
006fc880  04 30 84 e2                                      add r3, r4, #4
006fc884  18 30 8d e5                                      str r3, [sp, #0x18]
006fc888  00 e0 62 e0                                      rsb lr, r2, r0
006fc88c  4e e1 a0 e1                                      asr lr, lr, #2
006fc890  00 c0 a0 e3                                      mov ip, #0
006fc894  0e 32 a0 e1                                      lsl r3, lr, #4
006fc898  03 30 6e e0                                      rsb r3, lr, r3
006fc89c  03 34 83 e0                                      add r3, r3, r3, lsl #8
006fc8a0  9c c0 8d e5                                      str ip, [sp, #0x9c]
006fc8a4  03 38 83 e0                                      add r3, r3, r3, lsl #16
006fc8a8  6c c0 8d e5                                      str ip, [sp, #0x6c]
006fc8ac  03 32 9e e0                                      adds r3, lr, r3, lsl #4
006fc8b0  70 c0 8d e5                                      str ip, [sp, #0x70]
006fc8b4  74 c0 8d e5                                      str ip, [sp, #0x74]
006fc8b8  78 c0 8d e5                                      str ip, [sp, #0x78]
006fc8bc  7c c0 8d e5                                      str ip, [sp, #0x7c]
006fc8c0  80 c0 8d e5                                      str ip, [sp, #0x80]
006fc8c4  94 c0 8d e5                                      str ip, [sp, #0x94]
006fc8c8  98 c0 8d e5                                      str ip, [sp, #0x98]
006fc8cc  e8 00 00 0a                                      beq #0x6fcc74
006fc8d0  02 00 50 e1                                      cmp r0, r2
006fc8d4  05 00 00 0a                                      beq #0x6fc8f0
006fc8d8  00 c0 a0 e3                                      mov ip, #0
006fc8dc  00 10 a0 e1                                      mov r1, r0
006fc8e0  bc 30 8d e2                                      add r3, sp, #0xbc
006fc8e4  00 c0 8d e5                                      str ip, [sp]
006fc8e8  89 11 ff eb                                      bl #0x6c0f14
006fc8ec  08 00 84 e5                                      str r0, [r4, #8]
006fc8f0  48 00 94 e5                                      ldr r0, [r4, #0x48]
006fc8f4  79 46 f0 eb                                      bl #0x30e2e0
006fc8f8  05 10 a0 e1                                      mov r1, r5
006fc8fc  e4 48 f0 eb                                      bl #0x30ec94
006fc900  3f 14 a0 e3                                      mov r1, #0x3f000000
006fc904  a6 48 f0 eb                                      bl #0x30eba4
006fc908  64 06 07 eb                                      bl #0x8be2a0
006fc90c  34 20 94 e5                                      ldr r2, [r4, #0x34]
006fc910  00 50 a0 e3                                      mov r5, #0
006fc914  00 30 a0 e3                                      mov r3, #0
006fc918  82 20 a0 e1                                      lsl r2, r2, #1
006fc91c  02 00 50 e1                                      cmp r0, r2
006fc920  02 00 a0 21                                      movhs r0, r2
006fc924  05 00 50 e1                                      cmp r0, r5
006fc928  14 00 8d e5                                      str r0, [sp, #0x14]
006fc92c  58 30 8d e5                                      str r3, [sp, #0x58]
006fc930  48 50 84 e5                                      str r5, [r4, #0x48]
006fc934  28 30 8d e5                                      str r3, [sp, #0x28]
006fc938  2c 30 8d e5                                      str r3, [sp, #0x2c]
006fc93c  30 30 8d e5                                      str r3, [sp, #0x30]
006fc940  34 30 8d e5                                      str r3, [sp, #0x34]
006fc944  38 30 8d e5                                      str r3, [sp, #0x38]
006fc948  3c 30 8d e5                                      str r3, [sp, #0x3c]
006fc94c  50 30 8d e5                                      str r3, [sp, #0x50]
006fc950  54 30 8d e5                                      str r3, [sp, #0x54]
006fc954  a8 00 00 0a                                      beq #0x6fcbfc
006fc958  c5 23 0b e3                                      movw r2, #0xb3c5
006fc95c  1f 35 08 e3                                      movw r3, #0x851f
006fc960  a2 21 49 e3                                      movt r2, #0x91a2
006fc964  eb 31 45 e3                                      movt r3, #0x51eb
006fc968  0c 20 8d e5                                      str r2, [sp, #0xc]
006fc96c  10 30 8d e5                                      str r3, [sp, #0x10]
006fc970  38 20 84 e2                                      add r2, r4, #0x38
006fc974  3c 30 84 e2                                      add r3, r4, #0x3c
006fc978  10 60 84 e2                                      add r6, r4, #0x10
006fc97c  20 20 8d e5                                      str r2, [sp, #0x20]
006fc980  1c 30 8d e5                                      str r3, [sp, #0x1c]
006fc984  28 80 8d e2                                      add r8, sp, #0x28
006fc988  b0 a0 8d e2                                      add sl, sp, #0xb0
006fc98c  1c 39 fc eb                                      bl #0x60ae04
006fc990  f3 47 f0 eb                                      bl #0x30e964
006fc994  3f 14 a0 e3                                      mov r1, #0x3f000000
006fc998  00 90 a0 e1                                      mov sb, r0
006fc99c  20 00 94 e5                                      ldr r0, [r4, #0x20]
006fc9a0  f1 48 f0 eb                                      bl #0x30ed6c
006fc9a4  11 13 a0 e3                                      mov r1, #0x44000000
006fc9a8  7a 18 81 e2                                      add r1, r1, #0x7a0000
006fc9ac  ee 48 f0 eb                                      bl #0x30ed6c
006fc9b0  00 10 a0 e1                                      mov r1, r0
006fc9b4  09 00 a0 e1                                      mov r0, sb
006fc9b8  8c 47 f0 eb                                      bl #0x30e7f0
006fc9bc  6f 12 01 e3                                      movw r1, #0x126f
006fc9c0  83 1a 43 e3                                      movt r1, #0x3a83
006fc9c4  e8 48 f0 eb                                      bl #0x30ed6c
006fc9c8  00 90 a0 e1                                      mov sb, r0
006fc9cc  0c 39 fc eb                                      bl #0x60ae04
006fc9d0  a0 3f 80 e0                                      add r3, r0, r0, lsr #31
006fc9d4  01 30 03 e2                                      and r3, r3, #1
006fc9d8  a0 0f 53 e1                                      cmp r3, r0, lsr #31
006fc9dc  02 91 89 12                                      addne sb, sb, #0x80000000
006fc9e0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006fc9e4  09 00 a0 e1                                      mov r0, sb
006fc9e8  6d 48 f0 eb                                      bl #0x30eba4
006fc9ec  18 10 94 e5                                      ldr r1, [r4, #0x18]
006fc9f0  00 b0 a0 e1                                      mov fp, r0
006fc9f4  6a 48 f0 eb                                      bl #0x30eba4
006fc9f8  0b 10 a0 e1                                      mov r1, fp
006fc9fc  00 90 a0 e1                                      mov sb, r0
006fca00  10 00 94 e5                                      ldr r0, [r4, #0x10]
006fca04  66 48 f0 eb                                      bl #0x30eba4
006fca08  14 30 94 e5                                      ldr r3, [r4, #0x14]
006fca0c  28 00 8d e5                                      str r0, [sp, #0x28]
006fca10  30 90 8d e5                                      str sb, [sp, #0x30]
006fca14  2c 30 8d e5                                      str r3, [sp, #0x2c]
006fca18  f9 38 fc eb                                      bl #0x60ae04
006fca1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006fca20  93 30 c2 e0                                      smull r3, r2, r3, r0
006fca24  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fca28  00 20 82 e0                                      add r2, r2, r0
006fca2c  c2 35 63 e0                                      rsb r3, r3, r2, asr #11
006fca30  e1 2e a0 e3                                      mov r2, #0xe10
006fca34  92 03 60 e0                                      mls r0, r2, r3, r0
006fca38  c9 47 f0 eb                                      bl #0x30e964
006fca3c  cd 1c 0c e3                                      movw r1, #0xcccd
006fca40  cc 1d 43 e3                                      movt r1, #0x3dcc
006fca44  c8 48 f0 eb                                      bl #0x30ed6c
006fca48  95 47 f0 eb                                      bl #0x30e8a4
006fca4c  00 20 a0 e1                                      mov r2, r0
006fca50  01 30 a0 e1                                      mov r3, r1
006fca54  08 00 a0 e1                                      mov r0, r8
006fca58  00 60 8d e5                                      str r6, [sp]
006fca5c  e1 d0 fc eb                                      bl #0x630de8
006fca60  50 00 94 e5                                      ldr r0, [r4, #0x50]
006fca64  24 10 94 e5                                      ldr r1, [r4, #0x24]
006fca68  28 20 94 e5                                      ldr r2, [r4, #0x28]
006fca6c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
006fca70  00 00 50 e3                                      cmp r0, #0
006fca74  40 70 8d e5                                      str r7, [sp, #0x40]
006fca78  34 10 8d e5                                      str r1, [sp, #0x34]
006fca7c  38 20 8d e5                                      str r2, [sp, #0x38]
006fca80  3c 30 8d e5                                      str r3, [sp, #0x3c]
006fca84  29 00 00 0a                                      beq #0x6fcb30
006fca88  b4 20 8d e5                                      str r2, [sp, #0xb4]
006fca8c  b8 30 8d e5                                      str r3, [sp, #0xb8]
006fca90  b0 10 8d e5                                      str r1, [sp, #0xb0]
006fca94  da 38 fc eb                                      bl #0x60ae04
006fca98  50 90 94 e5                                      ldr sb, [r4, #0x50]
006fca9c  89 10 a0 e1                                      lsl r1, sb, #1
006fcaa0  97 47 f0 eb                                      bl #0x30e904
006fcaa4  01 00 69 e0                                      rsb r0, sb, r1
006fcaa8  a0 48 f0 eb                                      bl #0x30ed30
006fcaac  00 20 a0 e1                                      mov r2, r0
006fcab0  01 30 a0 e1                                      mov r3, r1
006fcab4  0a 00 a0 e1                                      mov r0, sl
006fcab8  00 60 8d e5                                      str r6, [sp]
006fcabc  4e d0 fc eb                                      bl #0x630bfc
006fcac0  cf 38 fc eb                                      bl #0x60ae04
006fcac4  50 90 94 e5                                      ldr sb, [r4, #0x50]
006fcac8  89 10 a0 e1                                      lsl r1, sb, #1
006fcacc  8c 47 f0 eb                                      bl #0x30e904
006fcad0  01 00 69 e0                                      rsb r0, sb, r1
006fcad4  95 48 f0 eb                                      bl #0x30ed30
006fcad8  00 20 a0 e1                                      mov r2, r0
006fcadc  01 30 a0 e1                                      mov r3, r1
006fcae0  0a 00 a0 e1                                      mov r0, sl
006fcae4  00 60 8d e5                                      str r6, [sp]
006fcae8  82 d0 fc eb                                      bl #0x630cf8
006fcaec  c4 38 fc eb                                      bl #0x60ae04
006fcaf0  50 90 94 e5                                      ldr sb, [r4, #0x50]
006fcaf4  89 10 a0 e1                                      lsl r1, sb, #1
006fcaf8  81 47 f0 eb                                      bl #0x30e904
006fcafc  01 00 69 e0                                      rsb r0, sb, r1
006fcb00  8a 48 f0 eb                                      bl #0x30ed30
006fcb04  00 20 a0 e1                                      mov r2, r0
006fcb08  01 30 a0 e1                                      mov r3, r1
006fcb0c  0a 00 a0 e1                                      mov r0, sl
006fcb10  00 60 8d e5                                      str r6, [sp]
006fcb14  b3 d0 fc eb                                      bl #0x630de8
006fcb18  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006fcb1c  34 30 8d e5                                      str r3, [sp, #0x34]
006fcb20  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
006fcb24  38 30 8d e5                                      str r3, [sp, #0x38]
006fcb28  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
006fcb2c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006fcb30  44 30 94 e5                                      ldr r3, [r4, #0x44]
006fcb34  40 90 94 e5                                      ldr sb, [r4, #0x40]
006fcb38  09 00 53 e1                                      cmp r3, sb
006fcb3c  03 30 87 00                                      addeq r3, r7, r3
006fcb40  44 30 8d 05                                      streq r3, [sp, #0x44]
006fcb44  07 00 00 0a                                      beq #0x6fcb68
006fcb48  ad 38 fc eb                                      bl #0x60ae04
006fcb4c  40 30 94 e5                                      ldr r3, [r4, #0x40]
006fcb50  44 10 94 e5                                      ldr r1, [r4, #0x44]
006fcb54  09 90 87 e0                                      add sb, r7, sb
006fcb58  01 10 63 e0                                      rsb r1, r3, r1
006fcb5c  f2 47 f0 eb                                      bl #0x30eb2c
006fcb60  01 10 89 e0                                      add r1, sb, r1
006fcb64  44 10 8d e5                                      str r1, [sp, #0x44]
006fcb68  a5 38 fc eb                                      bl #0x60ae04
006fcb6c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006fcb70  01 50 85 e2                                      add r5, r5, #1
006fcb74  93 30 c2 e0                                      smull r3, r2, r3, r0
006fcb78  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fcb7c  c2 32 63 e0                                      rsb r3, r3, r2, asr #5
006fcb80  64 20 a0 e3                                      mov r2, #0x64
006fcb84  92 03 60 e0                                      mls r0, r2, r3, r0
006fcb88  75 47 f0 eb                                      bl #0x30e964
006fcb8c  42 14 a0 e3                                      mov r1, #0x42000000
006fcb90  32 17 81 e2                                      add r1, r1, #0xc80000
006fcb94  3e 48 f0 eb                                      bl #0x30ec94
006fcb98  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006fcb9c  00 20 a0 e1                                      mov r2, r0
006fcba0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006fcba4  f8 10 f9 eb                                      bl #0x540f8c
006fcba8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fcbac  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fcbb0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fcbb4  49 10 cd e5                                      strb r1, [sp, #0x49]
006fcbb8  48 00 cd e5                                      strb r0, [sp, #0x48]
006fcbbc  4a 20 cd e5                                      strb r2, [sp, #0x4a]
006fcbc0  4b 30 cd e5                                      strb r3, [sp, #0x4b]
006fcbc4  48 30 9d e5                                      ldr r3, [sp, #0x48]
006fcbc8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fcbcc  08 10 a0 e1                                      mov r1, r8
006fcbd0  4c 30 8d e5                                      str r3, [sp, #0x4c]
006fcbd4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fcbd8  50 30 8d e5                                      str r3, [sp, #0x50]
006fcbdc  38 30 9d e5                                      ldr r3, [sp, #0x38]
006fcbe0  54 30 8d e5                                      str r3, [sp, #0x54]
006fcbe4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006fcbe8  58 30 8d e5                                      str r3, [sp, #0x58]
006fcbec  11 f2 ff eb                                      bl #0x6f9438
006fcbf0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006fcbf4  03 00 55 e1                                      cmp r5, r3
006fcbf8  63 ff ff 1a                                      bne #0x6fc98c
006fcbfc  04 30 94 e5                                      ldr r3, [r4, #4]
006fcc00  24 20 9d e5                                      ldr r2, [sp, #0x24]
006fcc04  00 30 82 e5                                      str r3, [r2]
006fcc08  04 30 94 e5                                      ldr r3, [r4, #4]
006fcc0c  08 20 94 e5                                      ldr r2, [r4, #8]
006fcc10  02 30 63 e0                                      rsb r3, r3, r2
006fcc14  43 31 a0 e1                                      asr r3, r3, #2
006fcc18  03 02 a0 e1                                      lsl r0, r3, #4
006fcc1c  00 00 63 e0                                      rsb r0, r3, r0
006fcc20  00 04 80 e0                                      add r0, r0, r0, lsl #8
006fcc24  00 08 80 e0                                      add r0, r0, r0, lsl #16
006fcc28  00 02 83 e0                                      add r0, r3, r0, lsl #4
006fcc2c  c4 d0 8d e2                                      add sp, sp, #0xc4
006fcc30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006fcc34  72 38 fc eb                                      bl #0x60ae04
006fcc38  00 60 a0 e1                                      mov r6, r0
006fcc3c  05 00 a0 e1                                      mov r0, r5
006fcc40  a6 45 f0 eb                                      bl #0x30e2e0
006fcc44  08 10 a0 e1                                      mov r1, r8
006fcc48  00 50 a0 e1                                      mov r5, r0
006fcc4c  06 00 a0 e1                                      mov r0, r6
006fcc50  b5 47 f0 eb                                      bl #0x30eb2c
006fcc54  01 00 a0 e1                                      mov r0, r1
006fcc58  a0 45 f0 eb                                      bl #0x30e2e0
006fcc5c  00 10 a0 e1                                      mov r1, r0
006fcc60  05 00 a0 e1                                      mov r0, r5
006fcc64  ce 47 f0 eb                                      bl #0x30eba4
006fcc68  48 60 94 e5                                      ldr r6, [r4, #0x48]
006fcc6c  00 10 a0 e1                                      mov r1, r0
006fcc70  f6 fe ff ea                                      b #0x6fc850
006fcc74  00 10 a0 e1                                      mov r1, r0
006fcc78  03 20 a0 e1                                      mov r2, r3
006fcc7c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fcc80  6c 30 8d e2                                      add r3, sp, #0x6c
006fcc84  7f 16 ff eb                                      bl #0x6c2688
006fcc88  18 ff ff ea                                      b #0x6fc8f0
