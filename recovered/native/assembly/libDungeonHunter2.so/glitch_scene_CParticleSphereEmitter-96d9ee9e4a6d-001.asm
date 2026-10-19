; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fd8fc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleSphereEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fd8fc  00 30 91 e5                                      ldr r3, [r1]
006fd900  20 30 80 e5                                      str r3, [r0, #0x20]
006fd904  04 30 91 e5                                      ldr r3, [r1, #4]
006fd908  24 30 80 e5                                      str r3, [r0, #0x24]
006fd90c  08 30 91 e5                                      ldr r3, [r1, #8]
006fd910  28 30 80 e5                                      str r3, [r0, #0x28]
006fd914  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd918, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticleSphereEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fd918  2c 10 80 e5                                      str r1, [r0, #0x2c]
006fd91c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd920, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticleSphereEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fd920  30 10 80 e5                                      str r1, [r0, #0x30]
006fd924  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd928, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleSphereEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fd928  10 40 2d e9                                      push {r4, lr}
006fd92c  04 20 a0 e3                                      mov r2, #4
006fd930  34 00 80 e2                                      add r0, r0, #0x34
006fd934  cb 43 f0 eb                                      bl #0x30e868
006fd938  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fd93c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleSphereEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fd93c  10 40 2d e9                                      push {r4, lr}
006fd940  04 20 a0 e3                                      mov r2, #4
006fd944  38 00 80 e2                                      add r0, r0, #0x38
006fd948  c6 43 f0 eb                                      bl #0x30e868
006fd94c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fd950, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter9setCenterERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleSphereEmitter::setCenter(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fd950  00 30 91 e5                                      ldr r3, [r1]
006fd954  10 30 80 e5                                      str r3, [r0, #0x10]
006fd958  04 30 91 e5                                      ldr r3, [r1, #4]
006fd95c  14 30 80 e5                                      str r3, [r0, #0x14]
006fd960  08 30 91 e5                                      ldr r3, [r1, #8]
006fd964  18 30 80 e5                                      str r3, [r0, #0x18]
006fd968  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd96c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter9setRadiusEf
; demangled: glitch::scene::CParticleSphereEmitter::setRadius(float)
; decoder-mode: arm
006fd96c  1c 10 80 e5                                      str r1, [r0, #0x1c]
006fd970  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd974, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter12getDirectionEv
; demangled: glitch::scene::CParticleSphereEmitter::getDirection() const
; decoder-mode: arm
006fd974  20 00 80 e2                                      add r0, r0, #0x20
006fd978  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd97c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticleSphereEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006fd97c  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
006fd980  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd984, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticleSphereEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006fd984  30 00 90 e5                                      ldr r0, [r0, #0x30]
006fd988  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd98c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticleSphereEmitter::getMinStartColor() const
; decoder-mode: arm
006fd98c  34 00 80 e2                                      add r0, r0, #0x34
006fd990  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd994, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticleSphereEmitter::getMaxStartColor() const
; decoder-mode: arm
006fd994  38 00 80 e2                                      add r0, r0, #0x38
006fd998  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd99c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter9getCenterEv
; demangled: glitch::scene::CParticleSphereEmitter::getCenter() const
; decoder-mode: arm
006fd99c  10 00 80 e2                                      add r0, r0, #0x10
006fd9a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter9getRadiusEv
; demangled: glitch::scene::CParticleSphereEmitter::getRadius() const
; decoder-mode: arm
006fd9a4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
006fd9a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticleSphereEmitter::getMinLifeTime() const
; decoder-mode: arm
006fd9ac  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
006fd9b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticleSphereEmitter::getMaxLifeTime() const
; decoder-mode: arm
006fd9b4  40 00 90 e5                                      ldr r0, [r0, #0x40]
006fd9b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZNK6glitch5scene22CParticleSphereEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticleSphereEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006fd9bc  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
006fd9c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fd9e8, declared_size=292, range_size=292, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitterC2ERKNS_4core8vector3dIfEEfS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter(glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006fd9e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006fd9ec  04 60 81 e2                                      add r6, r1, #4
006fd9f0  04 c0 96 e5                                      ldr ip, [r6, #4]
006fd9f4  00 40 a0 e1                                      mov r4, r0
006fd9f8  04 00 86 e2                                      add r0, r6, #4
006fd9fc  00 c0 84 e5                                      str ip, [r4]
006fda00  04 70 90 e5                                      ldr r7, [r0, #4]
006fda04  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006fda08  02 e0 a0 e1                                      mov lr, r2
006fda0c  00 50 a0 e3                                      mov r5, #0
006fda10  0c 70 84 e7                                      str r7, [r4, ip]
006fda14  00 20 94 e5                                      ldr r2, [r4]
006fda18  08 00 90 e5                                      ldr r0, [r0, #8]
006fda1c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006fda20  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006fda24  02 00 84 e7                                      str r0, [r4, r2]
006fda28  04 20 91 e5                                      ldr r2, [r1, #4]
006fda2c  00 20 84 e5                                      str r2, [r4]
006fda30  10 00 96 e5                                      ldr r0, [r6, #0x10]
006fda34  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
006fda38  02 00 84 e7                                      str r0, [r4, r2]
006fda3c  00 20 94 e5                                      ldr r2, [r4]
006fda40  14 80 96 e5                                      ldr r8, [r6, #0x14]
006fda44  04 60 a0 e3                                      mov r6, #4
006fda48  0c 70 12 e5                                      ldr r7, [r2, #-0xc]
006fda4c  34 00 84 e2                                      add r0, r4, #0x34
006fda50  06 20 a0 e1                                      mov r2, r6
006fda54  07 80 84 e7                                      str r8, [r4, r7]
006fda58  00 70 91 e5                                      ldr r7, [r1]
006fda5c  00 70 84 e5                                      str r7, [r4]
006fda60  1c 80 91 e5                                      ldr r8, [r1, #0x1c]
006fda64  1c 70 17 e5                                      ldr r7, [r7, #-0x1c]
006fda68  07 80 84 e7                                      str r8, [r4, r7]
006fda6c  00 80 94 e5                                      ldr r8, [r4]
006fda70  20 70 91 e5                                      ldr r7, [r1, #0x20]
006fda74  0c 10 18 e5                                      ldr r1, [r8, #-0xc]
006fda78  01 70 84 e7                                      str r7, [r4, r1]
006fda7c  04 50 84 e5                                      str r5, [r4, #4]
006fda80  08 50 84 e5                                      str r5, [r4, #8]
006fda84  0c 50 84 e5                                      str r5, [r4, #0xc]
006fda88  00 70 9e e5                                      ldr r7, [lr]
006fda8c  24 10 9d e5                                      ldr r1, [sp, #0x24]
006fda90  10 70 84 e5                                      str r7, [r4, #0x10]
006fda94  04 70 9e e5                                      ldr r7, [lr, #4]
006fda98  14 70 84 e5                                      str r7, [r4, #0x14]
006fda9c  08 e0 9e e5                                      ldr lr, [lr, #8]
006fdaa0  1c 30 84 e5                                      str r3, [r4, #0x1c]
006fdaa4  18 e0 84 e5                                      str lr, [r4, #0x18]
006fdaa8  00 30 9c e5                                      ldr r3, [ip]
006fdaac  20 30 84 e5                                      str r3, [r4, #0x20]
006fdab0  04 30 9c e5                                      ldr r3, [ip, #4]
006fdab4  24 30 84 e5                                      str r3, [r4, #0x24]
006fdab8  08 30 9c e5                                      ldr r3, [ip, #8]
006fdabc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006fdac0  2c c0 84 e5                                      str ip, [r4, #0x2c]
006fdac4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006fdac8  28 30 84 e5                                      str r3, [r4, #0x28]
006fdacc  30 c0 84 e5                                      str ip, [r4, #0x30]
006fdad0  64 43 f0 eb                                      bl #0x30e868
006fdad4  28 10 9d e5                                      ldr r1, [sp, #0x28]
006fdad8  06 20 a0 e1                                      mov r2, r6
006fdadc  38 00 84 e2                                      add r0, r4, #0x38
006fdae0  60 43 f0 eb                                      bl #0x30e868
006fdae4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006fdae8  04 00 a0 e1                                      mov r0, r4
006fdaec  3c 30 84 e5                                      str r3, [r4, #0x3c]
006fdaf0  30 30 9d e5                                      ldr r3, [sp, #0x30]
006fdaf4  48 50 84 e5                                      str r5, [r4, #0x48]
006fdaf8  40 30 84 e5                                      str r3, [r4, #0x40]
006fdafc  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fdb00  44 50 84 e5                                      str r5, [r4, #0x44]
006fdb04  4c 30 84 e5                                      str r3, [r4, #0x4c]
006fdb08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006fdb0c, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitterC1ERKNS_4core8vector3dIfEEfS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleSphereEmitter::CParticleSphereEmitter(glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006fdb0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006fdb10  3c e1 9f e5                                      ldr lr, [pc, #0x13c]
006fdb14  3c c1 9f e5                                      ldr ip, [pc, #0x13c]
006fdb18  3c 51 9f e5                                      ldr r5, [pc, #0x13c]
006fdb1c  0e e0 8f e0                                      add lr, pc, lr
006fdb20  0c c0 9e e7                                      ldr ip, [lr, ip]
006fdb24  05 50 9e e7                                      ldr r5, [lr, r5]
006fdb28  00 40 a0 e1                                      mov r4, r0
006fdb2c  24 00 9c e5                                      ldr r0, [ip, #0x24]
006fdb30  08 50 85 e2                                      add r5, r5, #8
006fdb34  01 60 a0 e3                                      mov r6, #1
006fdb38  00 00 84 e5                                      str r0, [r4]
006fdb3c  50 50 84 e5                                      str r5, [r4, #0x50]
006fdb40  54 60 84 e5                                      str r6, [r4, #0x54]
006fdb44  0c 70 10 e5                                      ldr r7, [r0, #-0xc]
006fdb48  28 80 9c e5                                      ldr r8, [ip, #0x28]
006fdb4c  08 00 9c e5                                      ldr r0, [ip, #8]
006fdb50  0c 50 9c e5                                      ldr r5, [ip, #0xc]
006fdb54  07 80 84 e7                                      str r8, [r4, r7]
006fdb58  00 00 84 e5                                      str r0, [r4]
006fdb5c  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006fdb60  04 60 9c e5                                      ldr r6, [ip, #4]
006fdb64  10 80 9c e5                                      ldr r8, [ip, #0x10]
006fdb68  00 50 84 e7                                      str r5, [r4, r0]
006fdb6c  00 50 94 e5                                      ldr r5, [r4]
006fdb70  14 70 9c e5                                      ldr r7, [ip, #0x14]
006fdb74  18 a0 9c e5                                      ldr sl, [ip, #0x18]
006fdb78  0c c0 15 e5                                      ldr ip, [r5, #-0xc]
006fdb7c  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
006fdb80  00 50 a0 e3                                      mov r5, #0
006fdb84  0c 80 84 e7                                      str r8, [r4, ip]
006fdb88  00 60 84 e5                                      str r6, [r4]
006fdb8c  1c c0 16 e5                                      ldr ip, [r6, #-0x1c]
006fdb90  00 00 9e e7                                      ldr r0, [lr, r0]
006fdb94  0c 70 84 e7                                      str r7, [r4, ip]
006fdb98  00 70 94 e5                                      ldr r7, [r4]
006fdb9c  01 c0 a0 e1                                      mov ip, r1
006fdba0  8c 60 80 e2                                      add r6, r0, #0x8c
006fdba4  0c 10 17 e5                                      ldr r1, [r7, #-0xc]
006fdba8  1c 00 80 e2                                      add r0, r0, #0x1c
006fdbac  01 a0 84 e7                                      str sl, [r4, r1]
006fdbb0  00 00 84 e5                                      str r0, [r4]
006fdbb4  50 60 84 e5                                      str r6, [r4, #0x50]
006fdbb8  04 50 84 e5                                      str r5, [r4, #4]
006fdbbc  08 50 84 e5                                      str r5, [r4, #8]
006fdbc0  0c 50 84 e5                                      str r5, [r4, #0xc]
006fdbc4  00 10 9c e5                                      ldr r1, [ip]
006fdbc8  04 60 a0 e3                                      mov r6, #4
006fdbcc  34 00 84 e2                                      add r0, r4, #0x34
006fdbd0  10 10 84 e5                                      str r1, [r4, #0x10]
006fdbd4  04 70 9c e5                                      ldr r7, [ip, #4]
006fdbd8  28 10 9d e5                                      ldr r1, [sp, #0x28]
006fdbdc  14 70 84 e5                                      str r7, [r4, #0x14]
006fdbe0  08 c0 9c e5                                      ldr ip, [ip, #8]
006fdbe4  1c 20 84 e5                                      str r2, [r4, #0x1c]
006fdbe8  06 20 a0 e1                                      mov r2, r6
006fdbec  18 c0 84 e5                                      str ip, [r4, #0x18]
006fdbf0  00 c0 93 e5                                      ldr ip, [r3]
006fdbf4  20 c0 84 e5                                      str ip, [r4, #0x20]
006fdbf8  04 c0 93 e5                                      ldr ip, [r3, #4]
006fdbfc  24 c0 84 e5                                      str ip, [r4, #0x24]
006fdc00  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006fdc04  08 30 93 e5                                      ldr r3, [r3, #8]
006fdc08  2c c0 84 e5                                      str ip, [r4, #0x2c]
006fdc0c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006fdc10  28 30 84 e5                                      str r3, [r4, #0x28]
006fdc14  30 c0 84 e5                                      str ip, [r4, #0x30]
006fdc18  12 43 f0 eb                                      bl #0x30e868
006fdc1c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006fdc20  06 20 a0 e1                                      mov r2, r6
006fdc24  38 00 84 e2                                      add r0, r4, #0x38
006fdc28  0e 43 f0 eb                                      bl #0x30e868
006fdc2c  30 30 9d e5                                      ldr r3, [sp, #0x30]
006fdc30  04 00 a0 e1                                      mov r0, r4
006fdc34  3c 30 84 e5                                      str r3, [r4, #0x3c]
006fdc38  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fdc3c  48 50 84 e5                                      str r5, [r4, #0x48]
006fdc40  40 30 84 e5                                      str r3, [r4, #0x40]
006fdc44  38 30 9d e5                                      ldr r3, [sp, #0x38]
006fdc48  44 50 84 e5                                      str r5, [r4, #0x44]
006fdc4c  4c 30 84 e5                                      str r3, [r4, #0x4c]
006fdc50  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006fdc54  74 6f 29 00 bc 34 00 00 44 2b 00 00 d0 44 00 00  .byte 0x74, 0x6f, 0x29, 0x00, 0xbc, 0x34, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xd0, 0x44, 0x00, 0x00

; FUNCTION 0x006fdc84, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitterD1Ev
; demangled: glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter()
; decoder-mode: arm
006fdc84  10 40 2d e9                                      push {r4, lr}
006fdc88  34 20 9f e5                                      ldr r2, [pc, #0x34]
006fdc8c  34 30 9f e5                                      ldr r3, [pc, #0x34]
006fdc90  00 40 a0 e1                                      mov r4, r0
006fdc94  02 20 8f e0                                      add r2, pc, r2
006fdc98  04 00 90 e5                                      ldr r0, [r0, #4]
006fdc9c  03 30 92 e7                                      ldr r3, [r2, r3]
006fdca0  00 00 50 e3                                      cmp r0, #0
006fdca4  8c 20 83 e2                                      add r2, r3, #0x8c
006fdca8  1c 30 83 e2                                      add r3, r3, #0x1c
006fdcac  00 30 84 e5                                      str r3, [r4]
006fdcb0  50 20 84 e5                                      str r2, [r4, #0x50]
006fdcb4  00 00 00 0a                                      beq #0x6fdcbc
006fdcb8  e4 49 f0 eb                                      bl #0x310450
006fdcbc  04 00 a0 e1                                      mov r0, r4
006fdcc0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fdcc4  fc 6d 29 00 d0 44 00 00                          .byte 0xfc, 0x6d, 0x29, 0x00, 0xd0, 0x44, 0x00, 0x00

; FUNCTION 0x006fdccc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZTv0_n24_N6glitch5scene22CParticleSphereEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter()
; decoder-mode: arm
006fdccc  00 30 90 e5                                      ldr r3, [r0]
006fdcd0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fdcd4  03 00 80 e0                                      add r0, r0, r3
006fdcd8  e9 ff ff ea                                      b #0x6fdc84

; FUNCTION 0x006fdcdc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZTv0_n12_N6glitch5scene22CParticleSphereEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter()
; decoder-mode: arm
006fdcdc  00 30 90 e5                                      ldr r3, [r0]
006fdce0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fdce4  03 00 80 e0                                      add r0, r0, r3
006fdce8  e5 ff ff ea                                      b #0x6fdc84

; FUNCTION 0x006fdcec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitterD0Ev
; demangled: glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter()
; decoder-mode: arm
006fdcec  10 40 2d e9                                      push {r4, lr}
006fdcf0  00 40 a0 e1                                      mov r4, r0
006fdcf4  e2 ff ff eb                                      bl #0x6fdc84
006fdcf8  04 00 a0 e1                                      mov r0, r4
006fdcfc  6b 41 f0 eb                                      bl #0x30e2b0
006fdd00  04 00 a0 e1                                      mov r0, r4
006fdd04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fdd08, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZTv0_n24_N6glitch5scene22CParticleSphereEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter()
; decoder-mode: arm
006fdd08  00 30 90 e5                                      ldr r3, [r0]
006fdd0c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fdd10  03 00 80 e0                                      add r0, r0, r3
006fdd14  f4 ff ff ea                                      b #0x6fdcec

; FUNCTION 0x006fdd18, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZTv0_n12_N6glitch5scene22CParticleSphereEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSphereEmitter::~CParticleSphereEmitter()
; decoder-mode: arm
006fdd18  00 30 90 e5                                      ldr r3, [r0]
006fdd1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fdd20  03 00 80 e0                                      add r0, r0, r3
006fdd24  f0 ff ff ea                                      b #0x6fdcec

; FUNCTION 0x006fdd28, declared_size=1296, range_size=1296, mode=arm
; class-group: glitch::scene::CParticleSphereEmitter
; alias: _ZN6glitch5scene22CParticleSphereEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticleSphereEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006fdd28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fdd2c  00 40 a0 e1                                      mov r4, r0
006fdd30  44 60 90 e5                                      ldr r6, [r0, #0x44]
006fdd34  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
006fdd38  30 00 90 e5                                      ldr r0, [r0, #0x30]
006fdd3c  41 df 4d e2                                      sub sp, sp, #0x104
006fdd40  06 60 82 e0                                      add r6, r2, r6
006fdd44  05 70 50 e0                                      subs r7, r0, r5
006fdd48  14 10 8d e5                                      str r1, [sp, #0x14]
006fdd4c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006fdd50  44 60 84 e5                                      str r6, [r4, #0x44]
006fdd54  21 01 00 1a                                      bne #0x6fe1e0
006fdd58  05 00 a0 e1                                      mov r0, r5
006fdd5c  5f 41 f0 eb                                      bl #0x30e2e0
006fdd60  00 10 a0 e1                                      mov r1, r0
006fdd64  11 03 a0 e3                                      mov r0, #0x44000000
006fdd68  7a 08 80 e2                                      add r0, r0, #0x7a0000
006fdd6c  c8 43 f0 eb                                      bl #0x30ec94
006fdd70  00 50 a0 e1                                      mov r5, r0
006fdd74  06 00 a0 e1                                      mov r0, r6
006fdd78  58 41 f0 eb                                      bl #0x30e2e0
006fdd7c  05 10 a0 e1                                      mov r1, r5
006fdd80  5c 41 f0 eb                                      bl #0x30e2f8
006fdd84  00 00 50 e3                                      cmp r0, #0
006fdd88  12 01 00 0a                                      beq #0x6fe1d8
006fdd8c  08 00 94 e5                                      ldr r0, [r4, #8]
006fdd90  04 20 94 e5                                      ldr r2, [r4, #4]
006fdd94  00 c0 a0 e3                                      mov ip, #0
006fdd98  04 10 84 e2                                      add r1, r4, #4
006fdd9c  00 e0 62 e0                                      rsb lr, r2, r0
006fdda0  4e e1 a0 e1                                      asr lr, lr, #2
006fdda4  24 10 8d e5                                      str r1, [sp, #0x24]
006fdda8  0e 32 a0 e1                                      lsl r3, lr, #4
006fddac  03 30 6e e0                                      rsb r3, lr, r3
006fddb0  03 34 83 e0                                      add r3, r3, r3, lsl #8
006fddb4  b8 c0 8d e5                                      str ip, [sp, #0xb8]
006fddb8  03 38 83 e0                                      add r3, r3, r3, lsl #16
006fddbc  88 c0 8d e5                                      str ip, [sp, #0x88]
006fddc0  03 32 9e e0                                      adds r3, lr, r3, lsl #4
006fddc4  8c c0 8d e5                                      str ip, [sp, #0x8c]
006fddc8  90 c0 8d e5                                      str ip, [sp, #0x90]
006fddcc  94 c0 8d e5                                      str ip, [sp, #0x94]
006fddd0  98 c0 8d e5                                      str ip, [sp, #0x98]
006fddd4  9c c0 8d e5                                      str ip, [sp, #0x9c]
006fddd8  b0 c0 8d e5                                      str ip, [sp, #0xb0]
006fdddc  b4 c0 8d e5                                      str ip, [sp, #0xb4]
006fdde0  0e 01 00 0a                                      beq #0x6fe220
006fdde4  02 00 50 e1                                      cmp r0, r2
006fdde8  05 00 00 0a                                      beq #0x6fde04
006fddec  00 c0 a0 e3                                      mov ip, #0
006fddf0  00 10 a0 e1                                      mov r1, r0
006fddf4  fc 30 8d e2                                      add r3, sp, #0xfc
006fddf8  00 c0 8d e5                                      str ip, [sp]
006fddfc  44 0c ff eb                                      bl #0x6c0f14
006fde00  08 00 84 e5                                      str r0, [r4, #8]
006fde04  44 00 94 e5                                      ldr r0, [r4, #0x44]
006fde08  34 41 f0 eb                                      bl #0x30e2e0
006fde0c  05 10 a0 e1                                      mov r1, r5
006fde10  9f 43 f0 eb                                      bl #0x30ec94
006fde14  3f 14 a0 e3                                      mov r1, #0x3f000000
006fde18  61 43 f0 eb                                      bl #0x30eba4
006fde1c  1f 01 07 eb                                      bl #0x8be2a0
006fde20  30 30 94 e5                                      ldr r3, [r4, #0x30]
006fde24  00 80 a0 e3                                      mov r8, #0
006fde28  00 50 a0 e3                                      mov r5, #0
006fde2c  83 30 a0 e1                                      lsl r3, r3, #1
006fde30  03 00 50 e1                                      cmp r0, r3
006fde34  03 00 a0 21                                      movhs r0, r3
006fde38  08 00 50 e1                                      cmp r0, r8
006fde3c  20 00 8d e5                                      str r0, [sp, #0x20]
006fde40  44 80 84 e5                                      str r8, [r4, #0x44]
006fde44  44 50 8d e5                                      str r5, [sp, #0x44]
006fde48  48 50 8d e5                                      str r5, [sp, #0x48]
006fde4c  4c 50 8d e5                                      str r5, [sp, #0x4c]
006fde50  50 50 8d e5                                      str r5, [sp, #0x50]
006fde54  54 50 8d e5                                      str r5, [sp, #0x54]
006fde58  58 50 8d e5                                      str r5, [sp, #0x58]
006fde5c  6c 50 8d e5                                      str r5, [sp, #0x6c]
006fde60  70 50 8d e5                                      str r5, [sp, #0x70]
006fde64  74 50 8d e5                                      str r5, [sp, #0x74]
006fde68  ce 00 00 0a                                      beq #0x6fe1a8
006fde6c  1f 25 08 e3                                      movw r2, #0x851f
006fde70  eb 21 45 e3                                      movt r2, #0x51eb
006fde74  34 30 84 e2                                      add r3, r4, #0x34
006fde78  38 00 84 e2                                      add r0, r4, #0x38
006fde7c  b7 70 06 e3                                      movw r7, #0x60b7
006fde80  1c 20 8d e5                                      str r2, [sp, #0x1c]
006fde84  2c 30 8d e5                                      str r3, [sp, #0x2c]
006fde88  28 00 8d e5                                      str r0, [sp, #0x28]
006fde8c  f0 10 8d e2                                      add r1, sp, #0xf0
006fde90  e4 20 8d e2                                      add r2, sp, #0xe4
006fde94  d8 30 8d e2                                      add r3, sp, #0xd8
006fde98  cc 00 8d e2                                      add r0, sp, #0xcc
006fde9c  0b 76 4b e3                                      movt r7, #0xb60b
006fdea0  10 a0 84 e2                                      add sl, r4, #0x10
006fdea4  44 60 8d e2                                      add r6, sp, #0x44
006fdea8  5a 9f a0 e3                                      mov sb, #0x168
006fdeac  18 10 8d e5                                      str r1, [sp, #0x18]
006fdeb0  30 20 8d e5                                      str r2, [sp, #0x30]
006fdeb4  34 30 8d e5                                      str r3, [sp, #0x34]
006fdeb8  38 00 8d e5                                      str r0, [sp, #0x38]
006fdebc  27 00 00 ea                                      b #0x6fdf60
006fdec0  14 20 9d e5                                      ldr r2, [sp, #0x14]
006fdec4  03 30 82 e0                                      add r3, r2, r3
006fdec8  60 30 8d e5                                      str r3, [sp, #0x60]
006fdecc  cc 33 fc eb                                      bl #0x60ae04
006fded0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006fded4  64 10 a0 e3                                      mov r1, #0x64
006fded8  01 80 88 e2                                      add r8, r8, #1
006fdedc  93 30 c2 e0                                      smull r3, r2, r3, r0
006fdee0  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fdee4  c2 32 63 e0                                      rsb r3, r3, r2, asr #5
006fdee8  91 03 60 e0                                      mls r0, r1, r3, r0
006fdeec  9c 42 f0 eb                                      bl #0x30e964
006fdef0  42 14 a0 e3                                      mov r1, #0x42000000
006fdef4  32 17 81 e2                                      add r1, r1, #0xc80000
006fdef8  65 43 f0 eb                                      bl #0x30ec94
006fdefc  28 10 9d e5                                      ldr r1, [sp, #0x28]
006fdf00  00 20 a0 e1                                      mov r2, r0
006fdf04  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006fdf08  1f 0c f9 eb                                      bl #0x540f8c
006fdf0c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fdf10  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fdf14  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fdf18  65 10 cd e5                                      strb r1, [sp, #0x65]
006fdf1c  66 20 cd e5                                      strb r2, [sp, #0x66]
006fdf20  64 00 cd e5                                      strb r0, [sp, #0x64]
006fdf24  67 30 cd e5                                      strb r3, [sp, #0x67]
006fdf28  64 30 9d e5                                      ldr r3, [sp, #0x64]
006fdf2c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006fdf30  06 10 a0 e1                                      mov r1, r6
006fdf34  68 30 8d e5                                      str r3, [sp, #0x68]
006fdf38  50 30 9d e5                                      ldr r3, [sp, #0x50]
006fdf3c  6c 30 8d e5                                      str r3, [sp, #0x6c]
006fdf40  54 30 9d e5                                      ldr r3, [sp, #0x54]
006fdf44  70 30 8d e5                                      str r3, [sp, #0x70]
006fdf48  58 30 9d e5                                      ldr r3, [sp, #0x58]
006fdf4c  74 30 8d e5                                      str r3, [sp, #0x74]
006fdf50  38 ed ff eb                                      bl #0x6f9438
006fdf54  20 20 9d e5                                      ldr r2, [sp, #0x20]
006fdf58  02 00 58 e1                                      cmp r8, r2
006fdf5c  91 00 00 0a                                      beq #0x6fe1a8
006fdf60  a7 33 fc eb                                      bl #0x60ae04
006fdf64  7e 42 f0 eb                                      bl #0x30e964
006fdf68  11 13 a0 e3                                      mov r1, #0x44000000
006fdf6c  00 b0 a0 e1                                      mov fp, r0
006fdf70  7a 18 81 e2                                      add r1, r1, #0x7a0000
006fdf74  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006fdf78  7b 43 f0 eb                                      bl #0x30ed6c
006fdf7c  00 10 a0 e1                                      mov r1, r0
006fdf80  0b 00 a0 e1                                      mov r0, fp
006fdf84  19 42 f0 eb                                      bl #0x30e7f0
006fdf88  6f 12 01 e3                                      movw r1, #0x126f
006fdf8c  83 1a 43 e3                                      movt r1, #0x3a83
006fdf90  75 43 f0 eb                                      bl #0x30ed6c
006fdf94  14 10 94 e5                                      ldr r1, [r4, #0x14]
006fdf98  00 b0 a0 e1                                      mov fp, r0
006fdf9c  00 43 f0 eb                                      bl #0x30eba4
006fdfa0  18 10 94 e5                                      ldr r1, [r4, #0x18]
006fdfa4  00 30 a0 e1                                      mov r3, r0
006fdfa8  0b 00 a0 e1                                      mov r0, fp
006fdfac  0c 30 8d e5                                      str r3, [sp, #0xc]
006fdfb0  fb 42 f0 eb                                      bl #0x30eba4
006fdfb4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006fdfb8  00 20 a0 e1                                      mov r2, r0
006fdfbc  0b 00 a0 e1                                      mov r0, fp
006fdfc0  10 20 8d e5                                      str r2, [sp, #0x10]
006fdfc4  f6 42 f0 eb                                      bl #0x30eba4
006fdfc8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006fdfcc  10 20 9d e5                                      ldr r2, [sp, #0x10]
006fdfd0  44 00 8d e5                                      str r0, [sp, #0x44]
006fdfd4  48 30 8d e5                                      str r3, [sp, #0x48]
006fdfd8  4c 20 8d e5                                      str r2, [sp, #0x4c]
006fdfdc  88 33 fc eb                                      bl #0x60ae04
006fdfe0  97 10 c2 e0                                      smull r1, r2, r7, r0
006fdfe4  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fdfe8  00 20 82 e0                                      add r2, r2, r0
006fdfec  42 34 63 e0                                      rsb r3, r3, r2, asr #8
006fdff0  99 03 60 e0                                      mls r0, sb, r3, r0
006fdff4  4d 43 f0 eb                                      bl #0x30ed30
006fdff8  01 30 a0 e1                                      mov r3, r1
006fdffc  00 20 a0 e1                                      mov r2, r0
006fe000  06 00 a0 e1                                      mov r0, r6
006fe004  00 a0 8d e5                                      str sl, [sp]
006fe008  fb ca fc eb                                      bl #0x630bfc
006fe00c  7c 33 fc eb                                      bl #0x60ae04
006fe010  97 30 c2 e0                                      smull r3, r2, r7, r0
006fe014  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fe018  00 20 82 e0                                      add r2, r2, r0
006fe01c  42 34 63 e0                                      rsb r3, r3, r2, asr #8
006fe020  99 03 60 e0                                      mls r0, sb, r3, r0
006fe024  41 43 f0 eb                                      bl #0x30ed30
006fe028  01 30 a0 e1                                      mov r3, r1
006fe02c  00 20 a0 e1                                      mov r2, r0
006fe030  06 00 a0 e1                                      mov r0, r6
006fe034  00 a0 8d e5                                      str sl, [sp]
006fe038  2e cb fc eb                                      bl #0x630cf8
006fe03c  70 33 fc eb                                      bl #0x60ae04
006fe040  97 10 c2 e0                                      smull r1, r2, r7, r0
006fe044  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fe048  00 20 82 e0                                      add r2, r2, r0
006fe04c  42 34 63 e0                                      rsb r3, r3, r2, asr #8
006fe050  99 03 60 e0                                      mls r0, sb, r3, r0
006fe054  35 43 f0 eb                                      bl #0x30ed30
006fe058  00 20 a0 e1                                      mov r2, r0
006fe05c  01 30 a0 e1                                      mov r3, r1
006fe060  06 00 a0 e1                                      mov r0, r6
006fe064  00 a0 8d e5                                      str sl, [sp]
006fe068  5e cb fc eb                                      bl #0x630de8
006fe06c  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006fe070  20 10 94 e5                                      ldr r1, [r4, #0x20]
006fe074  24 20 94 e5                                      ldr r2, [r4, #0x24]
006fe078  28 30 94 e5                                      ldr r3, [r4, #0x28]
006fe07c  00 00 50 e3                                      cmp r0, #0
006fe080  14 00 9d e5                                      ldr r0, [sp, #0x14]
006fe084  50 10 8d e5                                      str r1, [sp, #0x50]
006fe088  54 20 8d e5                                      str r2, [sp, #0x54]
006fe08c  5c 00 8d e5                                      str r0, [sp, #0x5c]
006fe090  58 30 8d e5                                      str r3, [sp, #0x58]
006fe094  35 00 00 0a                                      beq #0x6fe170
006fe098  f4 20 8d e5                                      str r2, [sp, #0xf4]
006fe09c  f8 30 8d e5                                      str r3, [sp, #0xf8]
006fe0a0  f0 10 8d e5                                      str r1, [sp, #0xf0]
006fe0a4  56 33 fc eb                                      bl #0x60ae04
006fe0a8  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
006fe0ac  8b 10 a0 e1                                      lsl r1, fp, #1
006fe0b0  13 42 f0 eb                                      bl #0x30e904
006fe0b4  01 00 6b e0                                      rsb r0, fp, r1
006fe0b8  1c 43 f0 eb                                      bl #0x30ed30
006fe0bc  01 30 a0 e1                                      mov r3, r1
006fe0c0  30 10 9d e5                                      ldr r1, [sp, #0x30]
006fe0c4  00 20 a0 e1                                      mov r2, r0
006fe0c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fe0cc  00 10 8d e5                                      str r1, [sp]
006fe0d0  e4 50 8d e5                                      str r5, [sp, #0xe4]
006fe0d4  e8 50 8d e5                                      str r5, [sp, #0xe8]
006fe0d8  ec 50 8d e5                                      str r5, [sp, #0xec]
006fe0dc  c6 ca fc eb                                      bl #0x630bfc
006fe0e0  47 33 fc eb                                      bl #0x60ae04
006fe0e4  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
006fe0e8  8b 10 a0 e1                                      lsl r1, fp, #1
006fe0ec  04 42 f0 eb                                      bl #0x30e904
006fe0f0  01 00 6b e0                                      rsb r0, fp, r1
006fe0f4  0d 43 f0 eb                                      bl #0x30ed30
006fe0f8  01 30 a0 e1                                      mov r3, r1
006fe0fc  34 10 9d e5                                      ldr r1, [sp, #0x34]
006fe100  00 20 a0 e1                                      mov r2, r0
006fe104  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fe108  00 10 8d e5                                      str r1, [sp]
006fe10c  d8 50 8d e5                                      str r5, [sp, #0xd8]
006fe110  dc 50 8d e5                                      str r5, [sp, #0xdc]
006fe114  e0 50 8d e5                                      str r5, [sp, #0xe0]
006fe118  f6 ca fc eb                                      bl #0x630cf8
006fe11c  38 33 fc eb                                      bl #0x60ae04
006fe120  4c b0 94 e5                                      ldr fp, [r4, #0x4c]
006fe124  8b 10 a0 e1                                      lsl r1, fp, #1
006fe128  f5 41 f0 eb                                      bl #0x30e904
006fe12c  01 00 6b e0                                      rsb r0, fp, r1
006fe130  fe 42 f0 eb                                      bl #0x30ed30
006fe134  01 30 a0 e1                                      mov r3, r1
006fe138  38 10 9d e5                                      ldr r1, [sp, #0x38]
006fe13c  00 20 a0 e1                                      mov r2, r0
006fe140  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fe144  cc 50 8d e5                                      str r5, [sp, #0xcc]
006fe148  d0 50 8d e5                                      str r5, [sp, #0xd0]
006fe14c  d4 50 8d e5                                      str r5, [sp, #0xd4]
006fe150  00 10 8d e5                                      str r1, [sp]
006fe154  23 cb fc eb                                      bl #0x630de8
006fe158  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
006fe15c  50 30 8d e5                                      str r3, [sp, #0x50]
006fe160  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
006fe164  54 30 8d e5                                      str r3, [sp, #0x54]
006fe168  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
006fe16c  58 30 8d e5                                      str r3, [sp, #0x58]
006fe170  40 30 94 e5                                      ldr r3, [r4, #0x40]
006fe174  3c b0 94 e5                                      ldr fp, [r4, #0x3c]
006fe178  0b 00 53 e1                                      cmp r3, fp
006fe17c  4f ff ff 0a                                      beq #0x6fdec0
006fe180  1f 33 fc eb                                      bl #0x60ae04
006fe184  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006fe188  40 10 94 e5                                      ldr r1, [r4, #0x40]
006fe18c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006fe190  01 10 63 e0                                      rsb r1, r3, r1
006fe194  0b b0 82 e0                                      add fp, r2, fp
006fe198  63 42 f0 eb                                      bl #0x30eb2c
006fe19c  01 10 8b e0                                      add r1, fp, r1
006fe1a0  60 10 8d e5                                      str r1, [sp, #0x60]
006fe1a4  48 ff ff ea                                      b #0x6fdecc
006fe1a8  04 30 94 e5                                      ldr r3, [r4, #4]
006fe1ac  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006fe1b0  00 30 80 e5                                      str r3, [r0]
006fe1b4  04 30 94 e5                                      ldr r3, [r4, #4]
006fe1b8  08 20 94 e5                                      ldr r2, [r4, #8]
006fe1bc  02 30 63 e0                                      rsb r3, r3, r2
006fe1c0  43 31 a0 e1                                      asr r3, r3, #2
006fe1c4  03 02 a0 e1                                      lsl r0, r3, #4
006fe1c8  00 00 63 e0                                      rsb r0, r3, r0
006fe1cc  00 04 80 e0                                      add r0, r0, r0, lsl #8
006fe1d0  00 08 80 e0                                      add r0, r0, r0, lsl #16
006fe1d4  00 02 83 e0                                      add r0, r3, r0, lsl #4
006fe1d8  41 df 8d e2                                      add sp, sp, #0x104
006fe1dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006fe1e0  07 33 fc eb                                      bl #0x60ae04
006fe1e4  00 60 a0 e1                                      mov r6, r0
006fe1e8  05 00 a0 e1                                      mov r0, r5
006fe1ec  3b 40 f0 eb                                      bl #0x30e2e0
006fe1f0  07 10 a0 e1                                      mov r1, r7
006fe1f4  00 50 a0 e1                                      mov r5, r0
006fe1f8  06 00 a0 e1                                      mov r0, r6
006fe1fc  4a 42 f0 eb                                      bl #0x30eb2c
006fe200  01 00 a0 e1                                      mov r0, r1
006fe204  35 40 f0 eb                                      bl #0x30e2e0
006fe208  00 10 a0 e1                                      mov r1, r0
006fe20c  05 00 a0 e1                                      mov r0, r5
006fe210  63 42 f0 eb                                      bl #0x30eba4
006fe214  44 60 94 e5                                      ldr r6, [r4, #0x44]
006fe218  00 10 a0 e1                                      mov r1, r0
006fe21c  d0 fe ff ea                                      b #0x6fdd64
006fe220  00 10 a0 e1                                      mov r1, r0
006fe224  03 20 a0 e1                                      mov r2, r3
006fe228  24 00 9d e5                                      ldr r0, [sp, #0x24]
006fe22c  88 30 8d e2                                      add r3, sp, #0x88
006fe230  14 11 ff eb                                      bl #0x6c2688
006fe234  f2 fe ff ea                                      b #0x6fde04
