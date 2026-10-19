; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f9a08, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter9setCenterERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleCylinderEmitter::setCenter(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f9a08  00 30 91 e5                                      ldr r3, [r1]
006f9a0c  10 30 80 e5                                      str r3, [r0, #0x10]
006f9a10  04 30 91 e5                                      ldr r3, [r1, #4]
006f9a14  14 30 80 e5                                      str r3, [r0, #0x14]
006f9a18  08 30 91 e5                                      ldr r3, [r1, #8]
006f9a1c  18 30 80 e5                                      str r3, [r0, #0x18]
006f9a20  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a24, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter9setNormalERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleCylinderEmitter::setNormal(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f9a24  00 30 91 e5                                      ldr r3, [r1]
006f9a28  1c 30 80 e5                                      str r3, [r0, #0x1c]
006f9a2c  04 30 91 e5                                      ldr r3, [r1, #4]
006f9a30  20 30 80 e5                                      str r3, [r0, #0x20]
006f9a34  08 30 91 e5                                      ldr r3, [r1, #8]
006f9a38  24 30 80 e5                                      str r3, [r0, #0x24]
006f9a3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter9setRadiusEf
; demangled: glitch::scene::CParticleCylinderEmitter::setRadius(float)
; decoder-mode: arm
006f9a40  28 10 80 e5                                      str r1, [r0, #0x28]
006f9a44  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a48, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter9setLengthEf
; demangled: glitch::scene::CParticleCylinderEmitter::setLength(float)
; decoder-mode: arm
006f9a48  2c 10 80 e5                                      str r1, [r0, #0x2c]
006f9a4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a50, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter14setOutlineOnlyEb
; demangled: glitch::scene::CParticleCylinderEmitter::setOutlineOnly(bool)
; decoder-mode: arm
006f9a50  30 10 c0 e5                                      strb r1, [r0, #0x30]
006f9a54  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a58, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleCylinderEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f9a58  00 30 91 e5                                      ldr r3, [r1]
006f9a5c  34 30 80 e5                                      str r3, [r0, #0x34]
006f9a60  04 30 91 e5                                      ldr r3, [r1, #4]
006f9a64  38 30 80 e5                                      str r3, [r0, #0x38]
006f9a68  08 30 91 e5                                      ldr r3, [r1, #8]
006f9a6c  3c 30 80 e5                                      str r3, [r0, #0x3c]
006f9a70  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a74, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticleCylinderEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006f9a74  40 10 80 e5                                      str r1, [r0, #0x40]
006f9a78  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a7c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticleCylinderEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006f9a7c  44 10 80 e5                                      str r1, [r0, #0x44]
006f9a80  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9a84, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleCylinderEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006f9a84  10 40 2d e9                                      push {r4, lr}
006f9a88  04 20 a0 e3                                      mov r2, #4
006f9a8c  48 00 80 e2                                      add r0, r0, #0x48
006f9a90  74 53 f0 eb                                      bl #0x30e868
006f9a94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f9a98, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleCylinderEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006f9a98  10 40 2d e9                                      push {r4, lr}
006f9a9c  04 20 a0 e3                                      mov r2, #4
006f9aa0  4c 00 80 e2                                      add r0, r0, #0x4c
006f9aa4  6f 53 f0 eb                                      bl #0x30e868
006f9aa8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f9aac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter9getCenterEv
; demangled: glitch::scene::CParticleCylinderEmitter::getCenter() const
; decoder-mode: arm
006f9aac  10 00 80 e2                                      add r0, r0, #0x10
006f9ab0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9ab4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter9getNormalEv
; demangled: glitch::scene::CParticleCylinderEmitter::getNormal() const
; decoder-mode: arm
006f9ab4  1c 00 80 e2                                      add r0, r0, #0x1c
006f9ab8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9abc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter9getRadiusEv
; demangled: glitch::scene::CParticleCylinderEmitter::getRadius() const
; decoder-mode: arm
006f9abc  28 00 90 e5                                      ldr r0, [r0, #0x28]
006f9ac0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9ac4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter9getLengthEv
; demangled: glitch::scene::CParticleCylinderEmitter::getLength() const
; decoder-mode: arm
006f9ac4  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
006f9ac8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9acc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter14getOutlineOnlyEv
; demangled: glitch::scene::CParticleCylinderEmitter::getOutlineOnly() const
; decoder-mode: arm
006f9acc  30 00 d0 e5                                      ldrb r0, [r0, #0x30]
006f9ad0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9ad4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter12getDirectionEv
; demangled: glitch::scene::CParticleCylinderEmitter::getDirection() const
; decoder-mode: arm
006f9ad4  34 00 80 e2                                      add r0, r0, #0x34
006f9ad8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9adc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006f9adc  40 00 90 e5                                      ldr r0, [r0, #0x40]
006f9ae0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9ae4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006f9ae4  44 00 90 e5                                      ldr r0, [r0, #0x44]
006f9ae8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9aec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMinStartColor() const
; decoder-mode: arm
006f9aec  48 00 80 e2                                      add r0, r0, #0x48
006f9af0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9af4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMaxStartColor() const
; decoder-mode: arm
006f9af4  4c 00 80 e2                                      add r0, r0, #0x4c
006f9af8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9afc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMinLifeTime() const
; decoder-mode: arm
006f9afc  50 00 90 e5                                      ldr r0, [r0, #0x50]
006f9b00  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9b04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMaxLifeTime() const
; decoder-mode: arm
006f9b04  54 00 90 e5                                      ldr r0, [r0, #0x54]
006f9b08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9b0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZNK6glitch5scene24CParticleCylinderEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticleCylinderEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006f9b0c  60 00 90 e5                                      ldr r0, [r0, #0x60]
006f9b10  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f9b38, declared_size=336, range_size=336, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitterC2ERKNS_4core8vector3dIfEEfS6_fbS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, float, bool, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006f9b38  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006f9b3c  04 60 81 e2                                      add r6, r1, #4
006f9b40  04 c0 96 e5                                      ldr ip, [r6, #4]
006f9b44  00 40 a0 e1                                      mov r4, r0
006f9b48  04 00 86 e2                                      add r0, r6, #4
006f9b4c  00 c0 84 e5                                      str ip, [r4]
006f9b50  04 e0 90 e5                                      ldr lr, [r0, #4]
006f9b54  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006f9b58  02 70 a0 e1                                      mov r7, r2
006f9b5c  00 50 a0 e3                                      mov r5, #0
006f9b60  0c e0 84 e7                                      str lr, [r4, ip]
006f9b64  00 20 94 e5                                      ldr r2, [r4]
006f9b68  08 00 90 e5                                      ldr r0, [r0, #8]
006f9b6c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006f9b70  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006f9b74  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006f9b78  02 00 84 e7                                      str r0, [r4, r2]
006f9b7c  04 20 91 e5                                      ldr r2, [r1, #4]
006f9b80  00 20 84 e5                                      str r2, [r4]
006f9b84  10 00 96 e5                                      ldr r0, [r6, #0x10]
006f9b88  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
006f9b8c  02 00 84 e7                                      str r0, [r4, r2]
006f9b90  00 20 94 e5                                      ldr r2, [r4]
006f9b94  14 00 96 e5                                      ldr r0, [r6, #0x14]
006f9b98  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
006f9b9c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006f9ba0  04 60 a0 e3                                      mov r6, #4
006f9ba4  02 00 84 e7                                      str r0, [r4, r2]
006f9ba8  00 00 91 e5                                      ldr r0, [r1]
006f9bac  06 20 a0 e1                                      mov r2, r6
006f9bb0  00 00 84 e5                                      str r0, [r4]
006f9bb4  1c 80 10 e5                                      ldr r8, [r0, #-0x1c]
006f9bb8  1c 90 91 e5                                      ldr sb, [r1, #0x1c]
006f9bbc  48 00 84 e2                                      add r0, r4, #0x48
006f9bc0  08 90 84 e7                                      str sb, [r4, r8]
006f9bc4  00 90 94 e5                                      ldr sb, [r4]
006f9bc8  20 80 91 e5                                      ldr r8, [r1, #0x20]
006f9bcc  0c 10 19 e5                                      ldr r1, [sb, #-0xc]
006f9bd0  01 80 84 e7                                      str r8, [r4, r1]
006f9bd4  04 50 84 e5                                      str r5, [r4, #4]
006f9bd8  08 50 84 e5                                      str r5, [r4, #8]
006f9bdc  0c 50 84 e5                                      str r5, [r4, #0xc]
006f9be0  00 80 97 e5                                      ldr r8, [r7]
006f9be4  38 10 9d e5                                      ldr r1, [sp, #0x38]
006f9be8  10 80 84 e5                                      str r8, [r4, #0x10]
006f9bec  04 80 97 e5                                      ldr r8, [r7, #4]
006f9bf0  14 80 84 e5                                      str r8, [r4, #0x14]
006f9bf4  08 70 97 e5                                      ldr r7, [r7, #8]
006f9bf8  18 70 84 e5                                      str r7, [r4, #0x18]
006f9bfc  00 70 9e e5                                      ldr r7, [lr]
006f9c00  1c 70 84 e5                                      str r7, [r4, #0x1c]
006f9c04  04 70 9e e5                                      ldr r7, [lr, #4]
006f9c08  20 70 84 e5                                      str r7, [r4, #0x20]
006f9c0c  08 e0 9e e5                                      ldr lr, [lr, #8]
006f9c10  28 30 84 e5                                      str r3, [r4, #0x28]
006f9c14  24 30 9d e5                                      ldr r3, [sp, #0x24]
006f9c18  24 e0 84 e5                                      str lr, [r4, #0x24]
006f9c1c  30 a0 c4 e5                                      strb sl, [r4, #0x30]
006f9c20  2c 30 84 e5                                      str r3, [r4, #0x2c]
006f9c24  00 30 9c e5                                      ldr r3, [ip]
006f9c28  34 30 84 e5                                      str r3, [r4, #0x34]
006f9c2c  04 30 9c e5                                      ldr r3, [ip, #4]
006f9c30  38 30 84 e5                                      str r3, [r4, #0x38]
006f9c34  08 30 9c e5                                      ldr r3, [ip, #8]
006f9c38  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006f9c3c  40 c0 84 e5                                      str ip, [r4, #0x40]
006f9c40  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006f9c44  3c 30 84 e5                                      str r3, [r4, #0x3c]
006f9c48  44 c0 84 e5                                      str ip, [r4, #0x44]
006f9c4c  05 53 f0 eb                                      bl #0x30e868
006f9c50  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006f9c54  06 20 a0 e1                                      mov r2, r6
006f9c58  4c 00 84 e2                                      add r0, r4, #0x4c
006f9c5c  01 53 f0 eb                                      bl #0x30e868
006f9c60  40 30 9d e5                                      ldr r3, [sp, #0x40]
006f9c64  04 00 a0 e1                                      mov r0, r4
006f9c68  50 30 84 e5                                      str r3, [r4, #0x50]
006f9c6c  44 30 9d e5                                      ldr r3, [sp, #0x44]
006f9c70  5c 50 84 e5                                      str r5, [r4, #0x5c]
006f9c74  54 30 84 e5                                      str r3, [r4, #0x54]
006f9c78  48 30 9d e5                                      ldr r3, [sp, #0x48]
006f9c7c  58 50 84 e5                                      str r5, [r4, #0x58]
006f9c80  60 30 84 e5                                      str r3, [r4, #0x60]
006f9c84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006f9c88, declared_size=384, range_size=384, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitterC1ERKNS_4core8vector3dIfEEfS6_fbS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleCylinderEmitter::CParticleCylinderEmitter(glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, float, bool, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006f9c88  68 c1 9f e5                                      ldr ip, [pc, #0x168]
006f9c8c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006f9c90  64 e1 9f e5                                      ldr lr, [pc, #0x164]
006f9c94  0c c0 8f e0                                      add ip, pc, ip
006f9c98  60 51 9f e5                                      ldr r5, [pc, #0x160]
006f9c9c  0e e0 9c e7                                      ldr lr, [ip, lr]
006f9ca0  00 40 a0 e1                                      mov r4, r0
006f9ca4  05 50 9c e7                                      ldr r5, [ip, r5]
006f9ca8  24 00 9e e5                                      ldr r0, [lr, #0x24]
006f9cac  01 60 a0 e3                                      mov r6, #1
006f9cb0  08 50 85 e2                                      add r5, r5, #8
006f9cb4  00 00 84 e5                                      str r0, [r4]
006f9cb8  64 50 84 e5                                      str r5, [r4, #0x64]
006f9cbc  68 60 84 e5                                      str r6, [r4, #0x68]
006f9cc0  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
006f9cc4  28 80 9e e5                                      ldr r8, [lr, #0x28]
006f9cc8  08 00 9e e5                                      ldr r0, [lr, #8]
006f9ccc  0c 70 9e e5                                      ldr r7, [lr, #0xc]
006f9cd0  06 80 84 e7                                      str r8, [r4, r6]
006f9cd4  00 00 84 e5                                      str r0, [r4]
006f9cd8  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006f9cdc  04 50 9e e5                                      ldr r5, [lr, #4]
006f9ce0  10 80 9e e5                                      ldr r8, [lr, #0x10]
006f9ce4  00 70 84 e7                                      str r7, [r4, r0]
006f9ce8  00 70 94 e5                                      ldr r7, [r4]
006f9cec  14 60 9e e5                                      ldr r6, [lr, #0x14]
006f9cf0  18 a0 9e e5                                      ldr sl, [lr, #0x18]
006f9cf4  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006f9cf8  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006f9cfc  00 01 9f e5                                      ldr r0, [pc, #0x100]
006f9d00  07 80 84 e7                                      str r8, [r4, r7]
006f9d04  00 50 84 e5                                      str r5, [r4]
006f9d08  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006f9d0c  00 00 9c e7                                      ldr r0, [ip, r0]
006f9d10  04 70 a0 e3                                      mov r7, #4
006f9d14  05 60 84 e7                                      str r6, [r4, r5]
006f9d18  00 50 94 e5                                      ldr r5, [r4]
006f9d1c  24 80 dd e5                                      ldrb r8, [sp, #0x24]
006f9d20  a4 60 80 e2                                      add r6, r0, #0xa4
006f9d24  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
006f9d28  1c 00 80 e2                                      add r0, r0, #0x1c
006f9d2c  05 a0 84 e7                                      str sl, [r4, r5]
006f9d30  00 50 a0 e3                                      mov r5, #0
006f9d34  21 00 84 e8                                      stm r4, {r0, r5}
006f9d38  64 60 84 e5                                      str r6, [r4, #0x64]
006f9d3c  08 50 84 e5                                      str r5, [r4, #8]
006f9d40  0c 50 84 e5                                      str r5, [r4, #0xc]
006f9d44  01 60 a0 e1                                      mov r6, r1
006f9d48  00 10 91 e5                                      ldr r1, [r1]
006f9d4c  48 00 84 e2                                      add r0, r4, #0x48
006f9d50  10 10 84 e5                                      str r1, [r4, #0x10]
006f9d54  04 a0 96 e5                                      ldr sl, [r6, #4]
006f9d58  34 10 9d e5                                      ldr r1, [sp, #0x34]
006f9d5c  14 a0 84 e5                                      str sl, [r4, #0x14]
006f9d60  08 60 96 e5                                      ldr r6, [r6, #8]
006f9d64  18 60 84 e5                                      str r6, [r4, #0x18]
006f9d68  00 c0 93 e5                                      ldr ip, [r3]
006f9d6c  1c c0 84 e5                                      str ip, [r4, #0x1c]
006f9d70  04 c0 93 e5                                      ldr ip, [r3, #4]
006f9d74  20 c0 84 e5                                      str ip, [r4, #0x20]
006f9d78  08 30 93 e5                                      ldr r3, [r3, #8]
006f9d7c  28 20 84 e5                                      str r2, [r4, #0x28]
006f9d80  20 20 9d e5                                      ldr r2, [sp, #0x20]
006f9d84  24 30 84 e5                                      str r3, [r4, #0x24]
006f9d88  30 80 c4 e5                                      strb r8, [r4, #0x30]
006f9d8c  2c 20 84 e5                                      str r2, [r4, #0x2c]
006f9d90  00 30 9e e5                                      ldr r3, [lr]
006f9d94  07 20 a0 e1                                      mov r2, r7
006f9d98  34 30 84 e5                                      str r3, [r4, #0x34]
006f9d9c  04 30 9e e5                                      ldr r3, [lr, #4]
006f9da0  38 30 84 e5                                      str r3, [r4, #0x38]
006f9da4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006f9da8  08 30 9e e5                                      ldr r3, [lr, #8]
006f9dac  40 c0 84 e5                                      str ip, [r4, #0x40]
006f9db0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006f9db4  3c 30 84 e5                                      str r3, [r4, #0x3c]
006f9db8  44 c0 84 e5                                      str ip, [r4, #0x44]
006f9dbc  a9 52 f0 eb                                      bl #0x30e868
006f9dc0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006f9dc4  07 20 a0 e1                                      mov r2, r7
006f9dc8  4c 00 84 e2                                      add r0, r4, #0x4c
006f9dcc  a5 52 f0 eb                                      bl #0x30e868
006f9dd0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006f9dd4  04 00 a0 e1                                      mov r0, r4
006f9dd8  50 30 84 e5                                      str r3, [r4, #0x50]
006f9ddc  40 30 9d e5                                      ldr r3, [sp, #0x40]
006f9de0  5c 50 84 e5                                      str r5, [r4, #0x5c]
006f9de4  54 30 84 e5                                      str r3, [r4, #0x54]
006f9de8  44 30 9d e5                                      ldr r3, [sp, #0x44]
006f9dec  58 50 84 e5                                      str r5, [r4, #0x58]
006f9df0  60 30 84 e5                                      str r3, [r4, #0x60]
006f9df4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006f9df8  fc ad 29 00 88 46 00 00 44 2b 00 00 6c 0f 00 00  .byte 0xfc, 0xad, 0x29, 0x00, 0x88, 0x46, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x6c, 0x0f, 0x00, 0x00

; FUNCTION 0x006f9e28, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitterD1Ev
; demangled: glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter()
; decoder-mode: arm
006f9e28  10 40 2d e9                                      push {r4, lr}
006f9e2c  34 20 9f e5                                      ldr r2, [pc, #0x34]
006f9e30  34 30 9f e5                                      ldr r3, [pc, #0x34]
006f9e34  00 40 a0 e1                                      mov r4, r0
006f9e38  02 20 8f e0                                      add r2, pc, r2
006f9e3c  04 00 90 e5                                      ldr r0, [r0, #4]
006f9e40  03 30 92 e7                                      ldr r3, [r2, r3]
006f9e44  00 00 50 e3                                      cmp r0, #0
006f9e48  a4 20 83 e2                                      add r2, r3, #0xa4
006f9e4c  1c 30 83 e2                                      add r3, r3, #0x1c
006f9e50  00 30 84 e5                                      str r3, [r4]
006f9e54  64 20 84 e5                                      str r2, [r4, #0x64]
006f9e58  00 00 00 0a                                      beq #0x6f9e60
006f9e5c  7b 59 f0 eb                                      bl #0x310450
006f9e60  04 00 a0 e1                                      mov r0, r4
006f9e64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f9e68  58 ac 29 00 6c 0f 00 00                          .byte 0x58, 0xac, 0x29, 0x00, 0x6c, 0x0f, 0x00, 0x00

; FUNCTION 0x006f9e70, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZTv0_n24_N6glitch5scene24CParticleCylinderEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter()
; decoder-mode: arm
006f9e70  00 30 90 e5                                      ldr r3, [r0]
006f9e74  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f9e78  03 00 80 e0                                      add r0, r0, r3
006f9e7c  e9 ff ff ea                                      b #0x6f9e28

; FUNCTION 0x006f9e80, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZTv0_n12_N6glitch5scene24CParticleCylinderEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter()
; decoder-mode: arm
006f9e80  00 30 90 e5                                      ldr r3, [r0]
006f9e84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f9e88  03 00 80 e0                                      add r0, r0, r3
006f9e8c  e5 ff ff ea                                      b #0x6f9e28

; FUNCTION 0x006f9e90, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitterD0Ev
; demangled: glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter()
; decoder-mode: arm
006f9e90  10 40 2d e9                                      push {r4, lr}
006f9e94  00 40 a0 e1                                      mov r4, r0
006f9e98  e2 ff ff eb                                      bl #0x6f9e28
006f9e9c  04 00 a0 e1                                      mov r0, r4
006f9ea0  02 51 f0 eb                                      bl #0x30e2b0
006f9ea4  04 00 a0 e1                                      mov r0, r4
006f9ea8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f9eac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZTv0_n24_N6glitch5scene24CParticleCylinderEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter()
; decoder-mode: arm
006f9eac  00 30 90 e5                                      ldr r3, [r0]
006f9eb0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f9eb4  03 00 80 e0                                      add r0, r0, r3
006f9eb8  f4 ff ff ea                                      b #0x6f9e90

; FUNCTION 0x006f9ebc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZTv0_n12_N6glitch5scene24CParticleCylinderEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleCylinderEmitter::~CParticleCylinderEmitter()
; decoder-mode: arm
006f9ebc  00 30 90 e5                                      ldr r3, [r0]
006f9ec0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f9ec4  03 00 80 e0                                      add r0, r0, r3
006f9ec8  f0 ff ff ea                                      b #0x6f9e90

; FUNCTION 0x006f9ecc, declared_size=1340, range_size=1340, mode=arm
; class-group: glitch::scene::CParticleCylinderEmitter
; alias: _ZN6glitch5scene24CParticleCylinderEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticleCylinderEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006f9ecc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f9ed0  00 40 a0 e1                                      mov r4, r0
006f9ed4  58 60 90 e5                                      ldr r6, [r0, #0x58]
006f9ed8  40 50 90 e5                                      ldr r5, [r0, #0x40]
006f9edc  44 00 90 e5                                      ldr r0, [r0, #0x44]
006f9ee0  fc d0 4d e2                                      sub sp, sp, #0xfc
006f9ee4  06 60 82 e0                                      add r6, r2, r6
006f9ee8  05 80 50 e0                                      subs r8, r0, r5
006f9eec  34 30 8d e5                                      str r3, [sp, #0x34]
006f9ef0  01 70 a0 e1                                      mov r7, r1
006f9ef4  58 60 84 e5                                      str r6, [r4, #0x58]
006f9ef8  2c 01 00 1a                                      bne #0x6fa3b0
006f9efc  05 00 a0 e1                                      mov r0, r5
006f9f00  f6 50 f0 eb                                      bl #0x30e2e0
006f9f04  00 10 a0 e1                                      mov r1, r0
006f9f08  11 03 a0 e3                                      mov r0, #0x44000000
006f9f0c  7a 08 80 e2                                      add r0, r0, #0x7a0000
006f9f10  5f 53 f0 eb                                      bl #0x30ec94
006f9f14  00 50 a0 e1                                      mov r5, r0
006f9f18  06 00 a0 e1                                      mov r0, r6
006f9f1c  ef 50 f0 eb                                      bl #0x30e2e0
006f9f20  05 10 a0 e1                                      mov r1, r5
006f9f24  f3 50 f0 eb                                      bl #0x30e2f8
006f9f28  00 00 50 e3                                      cmp r0, #0
006f9f2c  1d 01 00 0a                                      beq #0x6fa3a8
006f9f30  08 00 94 e5                                      ldr r0, [r4, #8]
006f9f34  04 20 94 e5                                      ldr r2, [r4, #4]
006f9f38  00 c0 a0 e3                                      mov ip, #0
006f9f3c  04 10 84 e2                                      add r1, r4, #4
006f9f40  00 e0 62 e0                                      rsb lr, r2, r0
006f9f44  4e e1 a0 e1                                      asr lr, lr, #2
006f9f48  18 10 8d e5                                      str r1, [sp, #0x18]
006f9f4c  0e 32 a0 e1                                      lsl r3, lr, #4
006f9f50  03 30 6e e0                                      rsb r3, lr, r3
006f9f54  03 34 83 e0                                      add r3, r3, r3, lsl #8
006f9f58  b0 c0 8d e5                                      str ip, [sp, #0xb0]
006f9f5c  03 38 83 e0                                      add r3, r3, r3, lsl #16
006f9f60  80 c0 8d e5                                      str ip, [sp, #0x80]
006f9f64  03 32 9e e0                                      adds r3, lr, r3, lsl #4
006f9f68  84 c0 8d e5                                      str ip, [sp, #0x84]
006f9f6c  88 c0 8d e5                                      str ip, [sp, #0x88]
006f9f70  8c c0 8d e5                                      str ip, [sp, #0x8c]
006f9f74  90 c0 8d e5                                      str ip, [sp, #0x90]
006f9f78  94 c0 8d e5                                      str ip, [sp, #0x94]
006f9f7c  a8 c0 8d e5                                      str ip, [sp, #0xa8]
006f9f80  ac c0 8d e5                                      str ip, [sp, #0xac]
006f9f84  19 01 00 0a                                      beq #0x6fa3f0
006f9f88  02 00 50 e1                                      cmp r0, r2
006f9f8c  05 00 00 0a                                      beq #0x6f9fa8
006f9f90  00 c0 a0 e3                                      mov ip, #0
006f9f94  00 10 a0 e1                                      mov r1, r0
006f9f98  f4 30 8d e2                                      add r3, sp, #0xf4
006f9f9c  00 c0 8d e5                                      str ip, [sp]
006f9fa0  db 1b ff eb                                      bl #0x6c0f14
006f9fa4  08 00 84 e5                                      str r0, [r4, #8]
006f9fa8  58 00 94 e5                                      ldr r0, [r4, #0x58]
006f9fac  cb 50 f0 eb                                      bl #0x30e2e0
006f9fb0  05 10 a0 e1                                      mov r1, r5
006f9fb4  36 53 f0 eb                                      bl #0x30ec94
006f9fb8  3f 14 a0 e3                                      mov r1, #0x3f000000
006f9fbc  f8 52 f0 eb                                      bl #0x30eba4
006f9fc0  b6 10 07 eb                                      bl #0x8be2a0
006f9fc4  44 30 94 e5                                      ldr r3, [r4, #0x44]
006f9fc8  00 60 a0 e3                                      mov r6, #0
006f9fcc  00 50 a0 e3                                      mov r5, #0
006f9fd0  83 30 a0 e1                                      lsl r3, r3, #1
006f9fd4  03 00 50 e1                                      cmp r0, r3
006f9fd8  03 00 a0 21                                      movhs r0, r3
006f9fdc  06 00 50 e1                                      cmp r0, r6
006f9fe0  14 00 8d e5                                      str r0, [sp, #0x14]
006f9fe4  58 60 84 e5                                      str r6, [r4, #0x58]
006f9fe8  3c 50 8d e5                                      str r5, [sp, #0x3c]
006f9fec  40 50 8d e5                                      str r5, [sp, #0x40]
006f9ff0  44 50 8d e5                                      str r5, [sp, #0x44]
006f9ff4  48 50 8d e5                                      str r5, [sp, #0x48]
006f9ff8  4c 50 8d e5                                      str r5, [sp, #0x4c]
006f9ffc  50 50 8d e5                                      str r5, [sp, #0x50]
006fa000  64 50 8d e5                                      str r5, [sp, #0x64]
006fa004  68 50 8d e5                                      str r5, [sp, #0x68]
006fa008  6c 50 8d e5                                      str r5, [sp, #0x6c]
006fa00c  d9 00 00 0a                                      beq #0x6fa378
006fa010  b7 20 06 e3                                      movw r2, #0x60b7
006fa014  1f 35 08 e3                                      movw r3, #0x851f
006fa018  0b 26 4b e3                                      movt r2, #0xb60b
006fa01c  eb 31 45 e3                                      movt r3, #0x51eb
006fa020  10 10 84 e2                                      add r1, r4, #0x10
006fa024  0c 20 8d e5                                      str r2, [sp, #0xc]
006fa028  10 30 8d e5                                      str r3, [sp, #0x10]
006fa02c  48 20 84 e2                                      add r2, r4, #0x48
006fa030  4c 30 84 e2                                      add r3, r4, #0x4c
006fa034  24 10 8d e5                                      str r1, [sp, #0x24]
006fa038  e8 10 8d e2                                      add r1, sp, #0xe8
006fa03c  20 20 8d e5                                      str r2, [sp, #0x20]
006fa040  1c 30 8d e5                                      str r3, [sp, #0x1c]
006fa044  08 10 8d e5                                      str r1, [sp, #8]
006fa048  dc 20 8d e2                                      add r2, sp, #0xdc
006fa04c  d0 30 8d e2                                      add r3, sp, #0xd0
006fa050  c4 10 8d e2                                      add r1, sp, #0xc4
006fa054  3c 80 8d e2                                      add r8, sp, #0x3c
006fa058  28 20 8d e5                                      str r2, [sp, #0x28]
006fa05c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006fa060  30 10 8d e5                                      str r1, [sp, #0x30]
006fa064  b0 00 00 ea                                      b #0x6fa32c
006fa068  18 10 94 e5                                      ldr r1, [r4, #0x18]
006fa06c  0a 00 a0 e1                                      mov r0, sl
006fa070  cb 52 f0 eb                                      bl #0x30eba4
006fa074  0a 10 a0 e1                                      mov r1, sl
006fa078  00 90 a0 e1                                      mov sb, r0
006fa07c  10 00 94 e5                                      ldr r0, [r4, #0x10]
006fa080  c7 52 f0 eb                                      bl #0x30eba4
006fa084  14 30 94 e5                                      ldr r3, [r4, #0x14]
006fa088  44 90 8d e5                                      str sb, [sp, #0x44]
006fa08c  3c 00 8d e5                                      str r0, [sp, #0x3c]
006fa090  40 30 8d e5                                      str r3, [sp, #0x40]
006fa094  5a 43 fc eb                                      bl #0x60ae04
006fa098  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006fa09c  5a 1f a0 e3                                      mov r1, #0x168
006fa0a0  93 30 c2 e0                                      smull r3, r2, r3, r0
006fa0a4  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fa0a8  00 20 82 e0                                      add r2, r2, r0
006fa0ac  42 34 63 e0                                      rsb r3, r3, r2, asr #8
006fa0b0  91 03 60 e0                                      mls r0, r1, r3, r0
006fa0b4  1d 53 f0 eb                                      bl #0x30ed30
006fa0b8  01 30 a0 e1                                      mov r3, r1
006fa0bc  24 10 9d e5                                      ldr r1, [sp, #0x24]
006fa0c0  00 20 a0 e1                                      mov r2, r0
006fa0c4  08 00 a0 e1                                      mov r0, r8
006fa0c8  00 10 8d e5                                      str r1, [sp]
006fa0cc  45 db fc eb                                      bl #0x630de8
006fa0d0  4b 43 fc eb                                      bl #0x60ae04
006fa0d4  22 52 f0 eb                                      bl #0x30e964
006fa0d8  11 13 a0 e3                                      mov r1, #0x44000000
006fa0dc  00 a0 a0 e1                                      mov sl, r0
006fa0e0  7a 18 81 e2                                      add r1, r1, #0x7a0000
006fa0e4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006fa0e8  1f 53 f0 eb                                      bl #0x30ed6c
006fa0ec  00 10 a0 e1                                      mov r1, r0
006fa0f0  0a 00 a0 e1                                      mov r0, sl
006fa0f4  bd 51 f0 eb                                      bl #0x30e7f0
006fa0f8  6f 12 01 e3                                      movw r1, #0x126f
006fa0fc  83 1a 43 e3                                      movt r1, #0x3a83
006fa100  19 53 f0 eb                                      bl #0x30ed6c
006fa104  20 10 94 e5                                      ldr r1, [r4, #0x20]
006fa108  00 a0 a0 e1                                      mov sl, r0
006fa10c  16 53 f0 eb                                      bl #0x30ed6c
006fa110  24 10 94 e5                                      ldr r1, [r4, #0x24]
006fa114  00 b0 a0 e1                                      mov fp, r0
006fa118  0a 00 a0 e1                                      mov r0, sl
006fa11c  12 53 f0 eb                                      bl #0x30ed6c
006fa120  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006fa124  00 90 a0 e1                                      mov sb, r0
006fa128  0a 00 a0 e1                                      mov r0, sl
006fa12c  0e 53 f0 eb                                      bl #0x30ed6c
006fa130  00 10 a0 e1                                      mov r1, r0
006fa134  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006fa138  99 52 f0 eb                                      bl #0x30eba4
006fa13c  0b 10 a0 e1                                      mov r1, fp
006fa140  3c 00 8d e5                                      str r0, [sp, #0x3c]
006fa144  40 00 9d e5                                      ldr r0, [sp, #0x40]
006fa148  95 52 f0 eb                                      bl #0x30eba4
006fa14c  09 10 a0 e1                                      mov r1, sb
006fa150  40 00 8d e5                                      str r0, [sp, #0x40]
006fa154  44 00 9d e5                                      ldr r0, [sp, #0x44]
006fa158  91 52 f0 eb                                      bl #0x30eba4
006fa15c  60 c0 94 e5                                      ldr ip, [r4, #0x60]
006fa160  34 10 94 e5                                      ldr r1, [r4, #0x34]
006fa164  38 20 94 e5                                      ldr r2, [r4, #0x38]
006fa168  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006fa16c  00 00 5c e3                                      cmp ip, #0
006fa170  44 00 8d e5                                      str r0, [sp, #0x44]
006fa174  54 70 8d e5                                      str r7, [sp, #0x54]
006fa178  48 10 8d e5                                      str r1, [sp, #0x48]
006fa17c  4c 20 8d e5                                      str r2, [sp, #0x4c]
006fa180  50 30 8d e5                                      str r3, [sp, #0x50]
006fa184  35 00 00 0a                                      beq #0x6fa260
006fa188  ec 20 8d e5                                      str r2, [sp, #0xec]
006fa18c  f0 30 8d e5                                      str r3, [sp, #0xf0]
006fa190  e8 10 8d e5                                      str r1, [sp, #0xe8]
006fa194  1a 43 fc eb                                      bl #0x60ae04
006fa198  60 a0 94 e5                                      ldr sl, [r4, #0x60]
006fa19c  8a 10 a0 e1                                      lsl r1, sl, #1
006fa1a0  d7 51 f0 eb                                      bl #0x30e904
006fa1a4  01 00 6a e0                                      rsb r0, sl, r1
006fa1a8  e0 52 f0 eb                                      bl #0x30ed30
006fa1ac  01 30 a0 e1                                      mov r3, r1
006fa1b0  28 10 9d e5                                      ldr r1, [sp, #0x28]
006fa1b4  00 20 a0 e1                                      mov r2, r0
006fa1b8  08 00 9d e5                                      ldr r0, [sp, #8]
006fa1bc  00 10 8d e5                                      str r1, [sp]
006fa1c0  dc 50 8d e5                                      str r5, [sp, #0xdc]
006fa1c4  e0 50 8d e5                                      str r5, [sp, #0xe0]
006fa1c8  e4 50 8d e5                                      str r5, [sp, #0xe4]
006fa1cc  8a da fc eb                                      bl #0x630bfc
006fa1d0  0b 43 fc eb                                      bl #0x60ae04
006fa1d4  60 a0 94 e5                                      ldr sl, [r4, #0x60]
006fa1d8  8a 10 a0 e1                                      lsl r1, sl, #1
006fa1dc  c8 51 f0 eb                                      bl #0x30e904
006fa1e0  01 00 6a e0                                      rsb r0, sl, r1
006fa1e4  d1 52 f0 eb                                      bl #0x30ed30
006fa1e8  01 30 a0 e1                                      mov r3, r1
006fa1ec  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006fa1f0  00 20 a0 e1                                      mov r2, r0
006fa1f4  08 00 9d e5                                      ldr r0, [sp, #8]
006fa1f8  00 10 8d e5                                      str r1, [sp]
006fa1fc  d0 50 8d e5                                      str r5, [sp, #0xd0]
006fa200  d4 50 8d e5                                      str r5, [sp, #0xd4]
006fa204  d8 50 8d e5                                      str r5, [sp, #0xd8]
006fa208  ba da fc eb                                      bl #0x630cf8
006fa20c  fc 42 fc eb                                      bl #0x60ae04
006fa210  60 a0 94 e5                                      ldr sl, [r4, #0x60]
006fa214  8a 10 a0 e1                                      lsl r1, sl, #1
006fa218  b9 51 f0 eb                                      bl #0x30e904
006fa21c  01 00 6a e0                                      rsb r0, sl, r1
006fa220  c2 52 f0 eb                                      bl #0x30ed30
006fa224  01 30 a0 e1                                      mov r3, r1
006fa228  30 10 9d e5                                      ldr r1, [sp, #0x30]
006fa22c  00 20 a0 e1                                      mov r2, r0
006fa230  08 00 9d e5                                      ldr r0, [sp, #8]
006fa234  c4 50 8d e5                                      str r5, [sp, #0xc4]
006fa238  c8 50 8d e5                                      str r5, [sp, #0xc8]
006fa23c  cc 50 8d e5                                      str r5, [sp, #0xcc]
006fa240  00 10 8d e5                                      str r1, [sp]
006fa244  e7 da fc eb                                      bl #0x630de8
006fa248  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
006fa24c  48 30 8d e5                                      str r3, [sp, #0x48]
006fa250  ec 30 9d e5                                      ldr r3, [sp, #0xec]
006fa254  4c 30 8d e5                                      str r3, [sp, #0x4c]
006fa258  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
006fa25c  50 30 8d e5                                      str r3, [sp, #0x50]
006fa260  54 30 94 e5                                      ldr r3, [r4, #0x54]
006fa264  50 a0 94 e5                                      ldr sl, [r4, #0x50]
006fa268  0a 00 53 e1                                      cmp r3, sl
006fa26c  03 30 87 00                                      addeq r3, r7, r3
006fa270  58 30 8d 05                                      streq r3, [sp, #0x58]
006fa274  07 00 00 0a                                      beq #0x6fa298
006fa278  e1 42 fc eb                                      bl #0x60ae04
006fa27c  50 30 94 e5                                      ldr r3, [r4, #0x50]
006fa280  54 10 94 e5                                      ldr r1, [r4, #0x54]
006fa284  0a a0 87 e0                                      add sl, r7, sl
006fa288  01 10 63 e0                                      rsb r1, r3, r1
006fa28c  26 52 f0 eb                                      bl #0x30eb2c
006fa290  01 10 8a e0                                      add r1, sl, r1
006fa294  58 10 8d e5                                      str r1, [sp, #0x58]
006fa298  d9 42 fc eb                                      bl #0x60ae04
006fa29c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006fa2a0  64 10 a0 e3                                      mov r1, #0x64
006fa2a4  01 60 86 e2                                      add r6, r6, #1
006fa2a8  93 30 c2 e0                                      smull r3, r2, r3, r0
006fa2ac  c0 3f a0 e1                                      asr r3, r0, #0x1f
006fa2b0  c2 32 63 e0                                      rsb r3, r3, r2, asr #5
006fa2b4  91 03 60 e0                                      mls r0, r1, r3, r0
006fa2b8  a9 51 f0 eb                                      bl #0x30e964
006fa2bc  42 14 a0 e3                                      mov r1, #0x42000000
006fa2c0  32 17 81 e2                                      add r1, r1, #0xc80000
006fa2c4  72 52 f0 eb                                      bl #0x30ec94
006fa2c8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006fa2cc  00 20 a0 e1                                      mov r2, r0
006fa2d0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006fa2d4  2c 1b f9 eb                                      bl #0x540f8c
006fa2d8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fa2dc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fa2e0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fa2e4  5d 10 cd e5                                      strb r1, [sp, #0x5d]
006fa2e8  5e 20 cd e5                                      strb r2, [sp, #0x5e]
006fa2ec  5c 00 cd e5                                      strb r0, [sp, #0x5c]
006fa2f0  5f 30 cd e5                                      strb r3, [sp, #0x5f]
006fa2f4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006fa2f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fa2fc  08 10 a0 e1                                      mov r1, r8
006fa300  60 30 8d e5                                      str r3, [sp, #0x60]
006fa304  48 30 9d e5                                      ldr r3, [sp, #0x48]
006fa308  64 30 8d e5                                      str r3, [sp, #0x64]
006fa30c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006fa310  68 30 8d e5                                      str r3, [sp, #0x68]
006fa314  50 30 9d e5                                      ldr r3, [sp, #0x50]
006fa318  6c 30 8d e5                                      str r3, [sp, #0x6c]
006fa31c  45 fc ff eb                                      bl #0x6f9438
006fa320  14 20 9d e5                                      ldr r2, [sp, #0x14]
006fa324  02 00 56 e1                                      cmp r6, r2
006fa328  12 00 00 0a                                      beq #0x6fa378
006fa32c  30 30 d4 e5                                      ldrb r3, [r4, #0x30]
006fa330  00 00 53 e3                                      cmp r3, #0
006fa334  28 a0 94 15                                      ldrne sl, [r4, #0x28]
006fa338  4a ff ff 1a                                      bne #0x6fa068
006fa33c  b0 42 fc eb                                      bl #0x60ae04
006fa340  87 51 f0 eb                                      bl #0x30e964
006fa344  11 13 a0 e3                                      mov r1, #0x44000000
006fa348  00 a0 a0 e1                                      mov sl, r0
006fa34c  7a 18 81 e2                                      add r1, r1, #0x7a0000
006fa350  28 00 94 e5                                      ldr r0, [r4, #0x28]
006fa354  84 52 f0 eb                                      bl #0x30ed6c
006fa358  00 10 a0 e1                                      mov r1, r0
006fa35c  0a 00 a0 e1                                      mov r0, sl
006fa360  22 51 f0 eb                                      bl #0x30e7f0
006fa364  6f 12 01 e3                                      movw r1, #0x126f
006fa368  83 1a 43 e3                                      movt r1, #0x3a83
006fa36c  7e 52 f0 eb                                      bl #0x30ed6c
006fa370  00 a0 a0 e1                                      mov sl, r0
006fa374  3b ff ff ea                                      b #0x6fa068
006fa378  04 30 94 e5                                      ldr r3, [r4, #4]
006fa37c  34 10 9d e5                                      ldr r1, [sp, #0x34]
006fa380  00 30 81 e5                                      str r3, [r1]
006fa384  04 30 94 e5                                      ldr r3, [r4, #4]
006fa388  08 20 94 e5                                      ldr r2, [r4, #8]
006fa38c  02 30 63 e0                                      rsb r3, r3, r2
006fa390  43 31 a0 e1                                      asr r3, r3, #2
006fa394  03 02 a0 e1                                      lsl r0, r3, #4
006fa398  00 00 63 e0                                      rsb r0, r3, r0
006fa39c  00 04 80 e0                                      add r0, r0, r0, lsl #8
006fa3a0  00 08 80 e0                                      add r0, r0, r0, lsl #16
006fa3a4  00 02 83 e0                                      add r0, r3, r0, lsl #4
006fa3a8  fc d0 8d e2                                      add sp, sp, #0xfc
006fa3ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006fa3b0  93 42 fc eb                                      bl #0x60ae04
006fa3b4  00 60 a0 e1                                      mov r6, r0
006fa3b8  05 00 a0 e1                                      mov r0, r5
006fa3bc  c7 4f f0 eb                                      bl #0x30e2e0
006fa3c0  08 10 a0 e1                                      mov r1, r8
006fa3c4  00 50 a0 e1                                      mov r5, r0
006fa3c8  06 00 a0 e1                                      mov r0, r6
006fa3cc  d6 51 f0 eb                                      bl #0x30eb2c
006fa3d0  01 00 a0 e1                                      mov r0, r1
006fa3d4  c1 4f f0 eb                                      bl #0x30e2e0
006fa3d8  00 10 a0 e1                                      mov r1, r0
006fa3dc  05 00 a0 e1                                      mov r0, r5
006fa3e0  ef 51 f0 eb                                      bl #0x30eba4
006fa3e4  58 60 94 e5                                      ldr r6, [r4, #0x58]
006fa3e8  00 10 a0 e1                                      mov r1, r0
006fa3ec  c5 fe ff ea                                      b #0x6f9f08
006fa3f0  00 10 a0 e1                                      mov r1, r0
006fa3f4  03 20 a0 e1                                      mov r2, r3
006fa3f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fa3fc  80 30 8d e2                                      add r3, sp, #0x80
006fa400  a0 20 ff eb                                      bl #0x6c2688
006fa404  e7 fe ff ea                                      b #0x6f9fa8
