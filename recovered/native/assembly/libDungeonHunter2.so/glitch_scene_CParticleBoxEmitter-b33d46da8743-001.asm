; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f8954, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleBoxEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f8954  00 30 91 e5                                      ldr r3, [r1]
006f8958  28 30 80 e5                                      str r3, [r0, #0x28]
006f895c  04 30 91 e5                                      ldr r3, [r1, #4]
006f8960  2c 30 80 e5                                      str r3, [r0, #0x2c]
006f8964  08 30 91 e5                                      ldr r3, [r1, #8]
006f8968  30 30 80 e5                                      str r3, [r0, #0x30]
006f896c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8970, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticleBoxEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006f8970  34 10 80 e5                                      str r1, [r0, #0x34]
006f8974  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8978, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticleBoxEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006f8978  38 10 80 e5                                      str r1, [r0, #0x38]
006f897c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8980, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleBoxEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006f8980  10 40 2d e9                                      push {r4, lr}
006f8984  04 20 a0 e3                                      mov r2, #4
006f8988  3c 00 80 e2                                      add r0, r0, #0x3c
006f898c  b5 57 f0 eb                                      bl #0x30e868
006f8990  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f8994, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleBoxEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006f8994  10 40 2d e9                                      push {r4, lr}
006f8998  04 20 a0 e3                                      mov r2, #4
006f899c  40 00 80 e2                                      add r0, r0, #0x40
006f89a0  b0 57 f0 eb                                      bl #0x30e868
006f89a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f89a8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter6setBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::CParticleBoxEmitter::setBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
006f89a8  00 30 91 e5                                      ldr r3, [r1]
006f89ac  10 30 80 e5                                      str r3, [r0, #0x10]
006f89b0  04 30 91 e5                                      ldr r3, [r1, #4]
006f89b4  14 30 80 e5                                      str r3, [r0, #0x14]
006f89b8  08 30 91 e5                                      ldr r3, [r1, #8]
006f89bc  18 30 80 e5                                      str r3, [r0, #0x18]
006f89c0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006f89c4  1c 30 80 e5                                      str r3, [r0, #0x1c]
006f89c8  10 30 91 e5                                      ldr r3, [r1, #0x10]
006f89cc  20 30 80 e5                                      str r3, [r0, #0x20]
006f89d0  14 30 91 e5                                      ldr r3, [r1, #0x14]
006f89d4  24 30 80 e5                                      str r3, [r0, #0x24]
006f89d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f89dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter12getDirectionEv
; demangled: glitch::scene::CParticleBoxEmitter::getDirection() const
; decoder-mode: arm
006f89dc  28 00 80 e2                                      add r0, r0, #0x28
006f89e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f89e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticleBoxEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006f89e4  34 00 90 e5                                      ldr r0, [r0, #0x34]
006f89e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f89ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticleBoxEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006f89ec  38 00 90 e5                                      ldr r0, [r0, #0x38]
006f89f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f89f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticleBoxEmitter::getMinStartColor() const
; decoder-mode: arm
006f89f4  3c 00 80 e2                                      add r0, r0, #0x3c
006f89f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f89fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticleBoxEmitter::getMaxStartColor() const
; decoder-mode: arm
006f89fc  40 00 80 e2                                      add r0, r0, #0x40
006f8a00  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter6getBoxEv
; demangled: glitch::scene::CParticleBoxEmitter::getBox() const
; decoder-mode: arm
006f8a04  10 00 80 e2                                      add r0, r0, #0x10
006f8a08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticleBoxEmitter::getMinLifeTime() const
; decoder-mode: arm
006f8a0c  44 00 90 e5                                      ldr r0, [r0, #0x44]
006f8a10  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a14, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticleBoxEmitter::getMaxLifeTime() const
; decoder-mode: arm
006f8a14  48 00 90 e5                                      ldr r0, [r0, #0x48]
006f8a18  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a1c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticleBoxEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006f8a1c  54 00 90 e5                                      ldr r0, [r0, #0x54]
006f8a20  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8a48, declared_size=360, range_size=360, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitterC2ERKNS_4core8aabbox3dIfEERKNS2_8vector3dIfEEjjNS_5video6SColorESC_jji
; demangled: glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(glitch::core::aabbox3d<float> const&, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor, glitch::video::SColor, unsigned int, unsigned int, int)
; decoder-mode: arm
006f8a48  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006f8a4c  04 50 81 e2                                      add r5, r1, #4
006f8a50  04 60 95 e5                                      ldr r6, [r5, #4]
006f8a54  04 40 85 e2                                      add r4, r5, #4
006f8a58  10 d0 4d e2                                      sub sp, sp, #0x10
006f8a5c  00 60 80 e5                                      str r6, [r0]
006f8a60  04 70 94 e5                                      ldr r7, [r4, #4]
006f8a64  1c 60 16 e5                                      ldr r6, [r6, #-0x1c]
006f8a68  3c 90 dd e5                                      ldrb sb, [sp, #0x3c]
006f8a6c  3d a0 dd e5                                      ldrb sl, [sp, #0x3d]
006f8a70  06 70 80 e7                                      str r7, [r0, r6]
006f8a74  00 70 90 e5                                      ldr r7, [r0]
006f8a78  08 60 94 e5                                      ldr r6, [r4, #8]
006f8a7c  3e 80 dd e5                                      ldrb r8, [sp, #0x3e]
006f8a80  0c 40 17 e5                                      ldr r4, [r7, #-0xc]
006f8a84  39 70 dd e5                                      ldrb r7, [sp, #0x39]
006f8a88  04 60 80 e7                                      str r6, [r0, r4]
006f8a8c  04 40 91 e5                                      ldr r4, [r1, #4]
006f8a90  38 60 dd e5                                      ldrb r6, [sp, #0x38]
006f8a94  08 70 8d e5                                      str r7, [sp, #8]
006f8a98  00 40 80 e5                                      str r4, [r0]
006f8a9c  0c 60 8d e5                                      str r6, [sp, #0xc]
006f8aa0  10 60 95 e5                                      ldr r6, [r5, #0x10]
006f8aa4  1c 40 14 e5                                      ldr r4, [r4, #-0x1c]
006f8aa8  3a 70 dd e5                                      ldrb r7, [sp, #0x3a]
006f8aac  04 60 80 e7                                      str r6, [r0, r4]
006f8ab0  00 40 90 e5                                      ldr r4, [r0]
006f8ab4  04 70 8d e5                                      str r7, [sp, #4]
006f8ab8  14 50 95 e5                                      ldr r5, [r5, #0x14]
006f8abc  0c 40 14 e5                                      ldr r4, [r4, #-0xc]
006f8ac0  3b 70 dd e5                                      ldrb r7, [sp, #0x3b]
006f8ac4  3f 60 dd e5                                      ldrb r6, [sp, #0x3f]
006f8ac8  04 50 80 e7                                      str r5, [r0, r4]
006f8acc  00 50 91 e5                                      ldr r5, [r1]
006f8ad0  00 40 a0 e3                                      mov r4, #0
006f8ad4  00 50 80 e5                                      str r5, [r0]
006f8ad8  1c b0 91 e5                                      ldr fp, [r1, #0x1c]
006f8adc  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006f8ae0  05 b0 80 e7                                      str fp, [r0, r5]
006f8ae4  00 b0 90 e5                                      ldr fp, [r0]
006f8ae8  20 50 91 e5                                      ldr r5, [r1, #0x20]
006f8aec  0c 10 1b e5                                      ldr r1, [fp, #-0xc]
006f8af0  01 50 80 e7                                      str r5, [r0, r1]
006f8af4  04 40 80 e5                                      str r4, [r0, #4]
006f8af8  08 40 80 e5                                      str r4, [r0, #8]
006f8afc  0c 40 80 e5                                      str r4, [r0, #0xc]
006f8b00  00 10 92 e5                                      ldr r1, [r2]
006f8b04  10 10 80 e5                                      str r1, [r0, #0x10]
006f8b08  04 10 92 e5                                      ldr r1, [r2, #4]
006f8b0c  14 10 80 e5                                      str r1, [r0, #0x14]
006f8b10  08 10 92 e5                                      ldr r1, [r2, #8]
006f8b14  18 10 80 e5                                      str r1, [r0, #0x18]
006f8b18  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006f8b1c  1c 10 80 e5                                      str r1, [r0, #0x1c]
006f8b20  10 10 92 e5                                      ldr r1, [r2, #0x10]
006f8b24  20 10 80 e5                                      str r1, [r0, #0x20]
006f8b28  14 20 92 e5                                      ldr r2, [r2, #0x14]
006f8b2c  24 20 80 e5                                      str r2, [r0, #0x24]
006f8b30  00 20 93 e5                                      ldr r2, [r3]
006f8b34  28 20 80 e5                                      str r2, [r0, #0x28]
006f8b38  04 20 93 e5                                      ldr r2, [r3, #4]
006f8b3c  2c 20 80 e5                                      str r2, [r0, #0x2c]
006f8b40  08 30 93 e5                                      ldr r3, [r3, #8]
006f8b44  30 20 9d e5                                      ldr r2, [sp, #0x30]
006f8b48  3f 70 c0 e5                                      strb r7, [r0, #0x3f]
006f8b4c  30 30 80 e5                                      str r3, [r0, #0x30]
006f8b50  34 20 80 e5                                      str r2, [r0, #0x34]
006f8b54  04 30 9d e5                                      ldr r3, [sp, #4]
006f8b58  34 20 9d e5                                      ldr r2, [sp, #0x34]
006f8b5c  08 70 9d e5                                      ldr r7, [sp, #8]
006f8b60  3e 30 c0 e5                                      strb r3, [r0, #0x3e]
006f8b64  38 20 80 e5                                      str r2, [r0, #0x38]
006f8b68  3d 70 c0 e5                                      strb r7, [r0, #0x3d]
006f8b6c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006f8b70  43 60 c0 e5                                      strb r6, [r0, #0x43]
006f8b74  42 80 c0 e5                                      strb r8, [r0, #0x42]
006f8b78  3c 30 c0 e5                                      strb r3, [r0, #0x3c]
006f8b7c  48 30 9d e5                                      ldr r3, [sp, #0x48]
006f8b80  41 a0 c0 e5                                      strb sl, [r0, #0x41]
006f8b84  40 90 c0 e5                                      strb sb, [r0, #0x40]
006f8b88  54 30 80 e5                                      str r3, [r0, #0x54]
006f8b8c  40 30 9d e5                                      ldr r3, [sp, #0x40]
006f8b90  50 40 80 e5                                      str r4, [r0, #0x50]
006f8b94  4c 40 80 e5                                      str r4, [r0, #0x4c]
006f8b98  44 30 80 e5                                      str r3, [r0, #0x44]
006f8b9c  44 30 9d e5                                      ldr r3, [sp, #0x44]
006f8ba0  48 30 80 e5                                      str r3, [r0, #0x48]
006f8ba4  10 d0 8d e2                                      add sp, sp, #0x10
006f8ba8  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006f8bac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f8bb0, declared_size=428, range_size=428, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitterC1ERKNS_4core8aabbox3dIfEERKNS2_8vector3dIfEEjjNS_5video6SColorESC_jji
; demangled: glitch::scene::CParticleBoxEmitter::CParticleBoxEmitter(glitch::core::aabbox3d<float> const&, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor, glitch::video::SColor, unsigned int, unsigned int, int)
; decoder-mode: arm
006f8bb0  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006f8bb4  90 51 9f e5                                      ldr r5, [pc, #0x190]
006f8bb8  90 c1 9f e5                                      ldr ip, [pc, #0x190]
006f8bbc  90 71 9f e5                                      ldr r7, [pc, #0x190]
006f8bc0  05 50 8f e0                                      add r5, pc, r5
006f8bc4  0c 40 95 e7                                      ldr r4, [r5, ip]
006f8bc8  07 70 95 e7                                      ldr r7, [r5, r7]
006f8bcc  01 60 a0 e3                                      mov r6, #1
006f8bd0  24 80 94 e5                                      ldr r8, [r4, #0x24]
006f8bd4  08 70 87 e2                                      add r7, r7, #8
006f8bd8  58 70 80 e5                                      str r7, [r0, #0x58]
006f8bdc  00 80 80 e5                                      str r8, [r0]
006f8be0  5c 60 80 e5                                      str r6, [r0, #0x5c]
006f8be4  0c 60 18 e5                                      ldr r6, [r8, #-0xc]
006f8be8  08 70 94 e5                                      ldr r7, [r4, #8]
006f8bec  28 a0 94 e5                                      ldr sl, [r4, #0x28]
006f8bf0  0c 90 94 e5                                      ldr sb, [r4, #0xc]
006f8bf4  04 80 94 e5                                      ldr r8, [r4, #4]
006f8bf8  06 a0 80 e7                                      str sl, [r0, r6]
006f8bfc  00 70 80 e5                                      str r7, [r0]
006f8c00  1c 60 17 e5                                      ldr r6, [r7, #-0x1c]
006f8c04  10 a0 94 e5                                      ldr sl, [r4, #0x10]
006f8c08  18 d0 4d e2                                      sub sp, sp, #0x18
006f8c0c  06 90 80 e7                                      str sb, [r0, r6]
006f8c10  00 60 90 e5                                      ldr r6, [r0]
006f8c14  3e b0 dd e5                                      ldrb fp, [sp, #0x3e]
006f8c18  3f 90 dd e5                                      ldrb sb, [sp, #0x3f]
006f8c1c  0c 60 16 e5                                      ldr r6, [r6, #-0xc]
006f8c20  30 71 9f e5                                      ldr r7, [pc, #0x130]
006f8c24  06 a0 80 e7                                      str sl, [r0, r6]
006f8c28  00 80 80 e5                                      str r8, [r0]
006f8c2c  1c 60 18 e5                                      ldr r6, [r8, #-0x1c]
006f8c30  3c 80 dd e5                                      ldrb r8, [sp, #0x3c]
006f8c34  14 80 8d e5                                      str r8, [sp, #0x14]
006f8c38  3d 80 dd e5                                      ldrb r8, [sp, #0x3d]
006f8c3c  10 80 8d e5                                      str r8, [sp, #0x10]
006f8c40  40 80 dd e5                                      ldrb r8, [sp, #0x40]
006f8c44  0c 80 8d e5                                      str r8, [sp, #0xc]
006f8c48  41 80 dd e5                                      ldrb r8, [sp, #0x41]
006f8c4c  08 80 8d e5                                      str r8, [sp, #8]
006f8c50  42 80 dd e5                                      ldrb r8, [sp, #0x42]
006f8c54  04 80 8d e5                                      str r8, [sp, #4]
006f8c58  43 80 dd e5                                      ldrb r8, [sp, #0x43]
006f8c5c  07 70 95 e7                                      ldr r7, [r5, r7]
006f8c60  00 80 8d e5                                      str r8, [sp]
006f8c64  14 80 94 e5                                      ldr r8, [r4, #0x14]
006f8c68  84 a0 87 e2                                      add sl, r7, #0x84
006f8c6c  1c 70 87 e2                                      add r7, r7, #0x1c
006f8c70  06 80 80 e7                                      str r8, [r0, r6]
006f8c74  00 80 90 e5                                      ldr r8, [r0]
006f8c78  18 60 94 e5                                      ldr r6, [r4, #0x18]
006f8c7c  00 40 a0 e3                                      mov r4, #0
006f8c80  0c 80 18 e5                                      ldr r8, [r8, #-0xc]
006f8c84  08 60 80 e7                                      str r6, [r0, r8]
006f8c88  00 70 80 e5                                      str r7, [r0]
006f8c8c  58 a0 80 e5                                      str sl, [r0, #0x58]
006f8c90  04 40 80 e5                                      str r4, [r0, #4]
006f8c94  08 40 80 e5                                      str r4, [r0, #8]
006f8c98  0c 40 80 e5                                      str r4, [r0, #0xc]
006f8c9c  00 60 91 e5                                      ldr r6, [r1]
006f8ca0  10 60 80 e5                                      str r6, [r0, #0x10]
006f8ca4  04 50 91 e5                                      ldr r5, [r1, #4]
006f8ca8  14 50 80 e5                                      str r5, [r0, #0x14]
006f8cac  08 50 91 e5                                      ldr r5, [r1, #8]
006f8cb0  18 50 80 e5                                      str r5, [r0, #0x18]
006f8cb4  0c 50 91 e5                                      ldr r5, [r1, #0xc]
006f8cb8  1c 50 80 e5                                      str r5, [r0, #0x1c]
006f8cbc  10 50 91 e5                                      ldr r5, [r1, #0x10]
006f8cc0  20 50 80 e5                                      str r5, [r0, #0x20]
006f8cc4  14 10 91 e5                                      ldr r1, [r1, #0x14]
006f8cc8  24 10 80 e5                                      str r1, [r0, #0x24]
006f8ccc  00 10 92 e5                                      ldr r1, [r2]
006f8cd0  28 10 80 e5                                      str r1, [r0, #0x28]
006f8cd4  04 10 92 e5                                      ldr r1, [r2, #4]
006f8cd8  2c 10 80 e5                                      str r1, [r0, #0x2c]
006f8cdc  08 20 92 e5                                      ldr r2, [r2, #8]
006f8ce0  34 30 80 e5                                      str r3, [r0, #0x34]
006f8ce4  38 30 9d e5                                      ldr r3, [sp, #0x38]
006f8ce8  38 30 80 e5                                      str r3, [r0, #0x38]
006f8cec  10 30 9d e5                                      ldr r3, [sp, #0x10]
006f8cf0  14 70 9d e5                                      ldr r7, [sp, #0x14]
006f8cf4  00 80 9d e5                                      ldr r8, [sp]
006f8cf8  3d 30 c0 e5                                      strb r3, [r0, #0x3d]
006f8cfc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006f8d00  3c 70 c0 e5                                      strb r7, [r0, #0x3c]
006f8d04  43 80 c0 e5                                      strb r8, [r0, #0x43]
006f8d08  54 30 80 e5                                      str r3, [r0, #0x54]
006f8d0c  88 01 9d e9                                      ldmib sp, {r3, r7, r8}
006f8d10  42 30 c0 e5                                      strb r3, [r0, #0x42]
006f8d14  44 30 9d e5                                      ldr r3, [sp, #0x44]
006f8d18  30 20 80 e5                                      str r2, [r0, #0x30]
006f8d1c  3f 90 c0 e5                                      strb sb, [r0, #0x3f]
006f8d20  44 30 80 e5                                      str r3, [r0, #0x44]
006f8d24  48 30 9d e5                                      ldr r3, [sp, #0x48]
006f8d28  3e b0 c0 e5                                      strb fp, [r0, #0x3e]
006f8d2c  41 70 c0 e5                                      strb r7, [r0, #0x41]
006f8d30  40 80 c0 e5                                      strb r8, [r0, #0x40]
006f8d34  48 30 80 e5                                      str r3, [r0, #0x48]
006f8d38  50 40 80 e5                                      str r4, [r0, #0x50]
006f8d3c  4c 40 80 e5                                      str r4, [r0, #0x4c]
006f8d40  18 d0 8d e2                                      add sp, sp, #0x18
006f8d44  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006f8d48  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006f8d4c  d0 be 29 00 94 42 00 00 44 2b 00 00 44 32 00 00  .byte 0xd0, 0xbe, 0x29, 0x00, 0x94, 0x42, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x44, 0x32, 0x00, 0x00

; FUNCTION 0x006f8d5c, declared_size=436, range_size=436, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZNK6glitch5scene19CParticleBoxEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleBoxEmitter::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f8d5c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006f8d60  00 50 a0 e1                                      mov r5, r0
006f8d64  01 40 a0 e1                                      mov r4, r1
006f8d68  14 d0 4d e2                                      sub sp, sp, #0x14
006f8d6c  14 10 95 e5                                      ldr r1, [r5, #0x14]
006f8d70  20 00 90 e5                                      ldr r0, [r0, #0x20]
006f8d74  8c 55 f0 eb                                      bl #0x30e3ac
006f8d78  18 10 95 e5                                      ldr r1, [r5, #0x18]
006f8d7c  00 70 a0 e1                                      mov r7, r0
006f8d80  24 00 95 e5                                      ldr r0, [r5, #0x24]
006f8d84  88 55 f0 eb                                      bl #0x30e3ac
006f8d88  10 10 95 e5                                      ldr r1, [r5, #0x10]
006f8d8c  00 60 a0 e1                                      mov r6, r0
006f8d90  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
006f8d94  84 55 f0 eb                                      bl #0x30e3ac
006f8d98  3f 14 a0 e3                                      mov r1, #0x3f000000
006f8d9c  f2 57 f0 eb                                      bl #0x30ed6c
006f8da0  3f 14 a0 e3                                      mov r1, #0x3f000000
006f8da4  04 00 8d e5                                      str r0, [sp, #4]
006f8da8  07 00 a0 e1                                      mov r0, r7
006f8dac  ee 57 f0 eb                                      bl #0x30ed6c
006f8db0  3f 14 a0 e3                                      mov r1, #0x3f000000
006f8db4  08 00 8d e5                                      str r0, [sp, #8]
006f8db8  06 00 a0 e1                                      mov r0, r6
006f8dbc  ea 57 f0 eb                                      bl #0x30ed6c
006f8dc0  24 11 9f e5                                      ldr r1, [pc, #0x124]
006f8dc4  0c 00 8d e5                                      str r0, [sp, #0xc]
006f8dc8  04 20 8d e2                                      add r2, sp, #4
006f8dcc  04 00 a0 e1                                      mov r0, r4
006f8dd0  00 c0 94 e5                                      ldr ip, [r4]
006f8dd4  01 10 8f e0                                      add r1, pc, r1
006f8dd8  00 30 a0 e3                                      mov r3, #0
006f8ddc  0f e0 a0 e1                                      mov lr, pc
006f8de0  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006f8de4  04 11 9f e5                                      ldr r1, [pc, #0x104]
006f8de8  04 00 a0 e1                                      mov r0, r4
006f8dec  28 20 85 e2                                      add r2, r5, #0x28
006f8df0  00 c0 94 e5                                      ldr ip, [r4]
006f8df4  01 10 8f e0                                      add r1, pc, r1
006f8df8  00 30 a0 e3                                      mov r3, #0
006f8dfc  0f e0 a0 e1                                      mov lr, pc
006f8e00  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006f8e04  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
006f8e08  04 00 a0 e1                                      mov r0, r4
006f8e0c  34 20 95 e5                                      ldr r2, [r5, #0x34]
006f8e10  00 c0 94 e5                                      ldr ip, [r4]
006f8e14  01 10 8f e0                                      add r1, pc, r1
006f8e18  00 30 a0 e3                                      mov r3, #0
006f8e1c  0f e0 a0 e1                                      mov lr, pc
006f8e20  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006f8e24  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
006f8e28  04 00 a0 e1                                      mov r0, r4
006f8e2c  38 20 95 e5                                      ldr r2, [r5, #0x38]
006f8e30  00 c0 94 e5                                      ldr ip, [r4]
006f8e34  01 10 8f e0                                      add r1, pc, r1
006f8e38  00 30 a0 e3                                      mov r3, #0
006f8e3c  0f e0 a0 e1                                      mov lr, pc
006f8e40  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006f8e44  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
006f8e48  04 00 a0 e1                                      mov r0, r4
006f8e4c  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
006f8e50  00 c0 94 e5                                      ldr ip, [r4]
006f8e54  01 10 8f e0                                      add r1, pc, r1
006f8e58  00 30 a0 e3                                      mov r3, #0
006f8e5c  0f e0 a0 e1                                      mov lr, pc
006f8e60  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006f8e64  94 10 9f e5                                      ldr r1, [pc, #0x94]
006f8e68  04 00 a0 e1                                      mov r0, r4
006f8e6c  40 20 95 e5                                      ldr r2, [r5, #0x40]
006f8e70  00 c0 94 e5                                      ldr ip, [r4]
006f8e74  01 10 8f e0                                      add r1, pc, r1
006f8e78  00 30 a0 e3                                      mov r3, #0
006f8e7c  0f e0 a0 e1                                      mov lr, pc
006f8e80  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006f8e84  78 10 9f e5                                      ldr r1, [pc, #0x78]
006f8e88  04 00 a0 e1                                      mov r0, r4
006f8e8c  44 20 95 e5                                      ldr r2, [r5, #0x44]
006f8e90  00 c0 94 e5                                      ldr ip, [r4]
006f8e94  01 10 8f e0                                      add r1, pc, r1
006f8e98  00 30 a0 e3                                      mov r3, #0
006f8e9c  0f e0 a0 e1                                      mov lr, pc
006f8ea0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006f8ea4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
006f8ea8  04 00 a0 e1                                      mov r0, r4
006f8eac  48 20 95 e5                                      ldr r2, [r5, #0x48]
006f8eb0  00 c0 94 e5                                      ldr ip, [r4]
006f8eb4  01 10 8f e0                                      add r1, pc, r1
006f8eb8  00 30 a0 e3                                      mov r3, #0
006f8ebc  0f e0 a0 e1                                      mov lr, pc
006f8ec0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006f8ec4  40 10 9f e5                                      ldr r1, [pc, #0x40]
006f8ec8  04 00 a0 e1                                      mov r0, r4
006f8ecc  54 20 95 e5                                      ldr r2, [r5, #0x54]
006f8ed0  01 10 8f e0                                      add r1, pc, r1
006f8ed4  00 c0 94 e5                                      ldr ip, [r4]
006f8ed8  00 30 a0 e3                                      mov r3, #0
006f8edc  0f e0 a0 e1                                      mov lr, pc
006f8ee0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006f8ee4  14 d0 8d e2                                      add sp, sp, #0x14
006f8ee8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006f8eec  3c 24 1f 00 34 c4 1e 00 dc 8e 1f 00 d4 8e 1f 00  .byte 0x3c, 0x24, 0x1f, 0x00, 0x34, 0xc4, 0x1e, 0x00, 0xdc, 0x8e, 0x1f, 0x00, 0xd4, 0x8e, 0x1f, 0x00
006f8efc  cc 8e 1f 00 bc 8e 1f 00 ac 8e 1f 00 9c 8e 1f 00  .byte 0xcc, 0x8e, 0x1f, 0x00, 0xbc, 0x8e, 0x1f, 0x00, 0xac, 0x8e, 0x1f, 0x00, 0x9c, 0x8e, 0x1f, 0x00
006f8f0c  90 8e 1f 00                                      .byte 0x90, 0x8e, 0x1f, 0x00

; FUNCTION 0x006f8f30, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitterD1Ev
; demangled: glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter()
; decoder-mode: arm
006f8f30  10 40 2d e9                                      push {r4, lr}
006f8f34  34 20 9f e5                                      ldr r2, [pc, #0x34]
006f8f38  34 30 9f e5                                      ldr r3, [pc, #0x34]
006f8f3c  00 40 a0 e1                                      mov r4, r0
006f8f40  02 20 8f e0                                      add r2, pc, r2
006f8f44  04 00 90 e5                                      ldr r0, [r0, #4]
006f8f48  03 30 92 e7                                      ldr r3, [r2, r3]
006f8f4c  00 00 50 e3                                      cmp r0, #0
006f8f50  84 20 83 e2                                      add r2, r3, #0x84
006f8f54  1c 30 83 e2                                      add r3, r3, #0x1c
006f8f58  00 30 84 e5                                      str r3, [r4]
006f8f5c  58 20 84 e5                                      str r2, [r4, #0x58]
006f8f60  00 00 00 0a                                      beq #0x6f8f68
006f8f64  39 5d f0 eb                                      bl #0x310450
006f8f68  04 00 a0 e1                                      mov r0, r4
006f8f6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f8f70  50 bb 29 00 44 32 00 00                          .byte 0x50, 0xbb, 0x29, 0x00, 0x44, 0x32, 0x00, 0x00

; FUNCTION 0x006f8f78, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZTv0_n24_N6glitch5scene19CParticleBoxEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter()
; decoder-mode: arm
006f8f78  00 30 90 e5                                      ldr r3, [r0]
006f8f7c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8f80  03 00 80 e0                                      add r0, r0, r3
006f8f84  e9 ff ff ea                                      b #0x6f8f30

; FUNCTION 0x006f8f88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZTv0_n12_N6glitch5scene19CParticleBoxEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter()
; decoder-mode: arm
006f8f88  00 30 90 e5                                      ldr r3, [r0]
006f8f8c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8f90  03 00 80 e0                                      add r0, r0, r3
006f8f94  e5 ff ff ea                                      b #0x6f8f30

; FUNCTION 0x006f8f98, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitterD0Ev
; demangled: glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter()
; decoder-mode: arm
006f8f98  10 40 2d e9                                      push {r4, lr}
006f8f9c  00 40 a0 e1                                      mov r4, r0
006f8fa0  e2 ff ff eb                                      bl #0x6f8f30
006f8fa4  04 00 a0 e1                                      mov r0, r4
006f8fa8  c0 54 f0 eb                                      bl #0x30e2b0
006f8fac  04 00 a0 e1                                      mov r0, r4
006f8fb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f8fb4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZTv0_n24_N6glitch5scene19CParticleBoxEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter()
; decoder-mode: arm
006f8fb4  00 30 90 e5                                      ldr r3, [r0]
006f8fb8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f8fbc  03 00 80 e0                                      add r0, r0, r3
006f8fc0  f4 ff ff ea                                      b #0x6f8f98

; FUNCTION 0x006f8fc4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZTv0_n12_N6glitch5scene19CParticleBoxEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleBoxEmitter::~CParticleBoxEmitter()
; decoder-mode: arm
006f8fc4  00 30 90 e5                                      ldr r3, [r0]
006f8fc8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f8fcc  03 00 80 e0                                      add r0, r0, r3
006f8fd0  f0 ff ff ea                                      b #0x6f8f98

; FUNCTION 0x006f8fd4, declared_size=780, range_size=780, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleBoxEmitter::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006f8fd4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f8fd8  02 50 a0 e1                                      mov r5, r2
006f8fdc  d4 22 9f e5                                      ldr r2, [pc, #0x2d4]
006f8fe0  18 d0 4d e2                                      sub sp, sp, #0x18
006f8fe4  00 40 a0 e1                                      mov r4, r0
006f8fe8  00 30 95 e5                                      ldr r3, [r5]
006f8fec  02 20 8f e0                                      add r2, pc, r2
006f8ff0  0c 00 8d e2                                      add r0, sp, #0xc
006f8ff4  05 10 a0 e1                                      mov r1, r5
006f8ff8  0f e0 a0 e1                                      mov lr, pc
006f8ffc  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006f9000  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006f9004  00 10 a0 e3                                      mov r1, #0
006f9008  67 56 f0 eb                                      bl #0x30e9ac
006f900c  00 00 50 e3                                      cmp r0, #0
006f9010  fe 35 a0 13                                      movne r3, #0x3f800000
006f9014  10 00 9d e5                                      ldr r0, [sp, #0x10]
006f9018  00 10 a0 e3                                      mov r1, #0
006f901c  0c 30 8d 15                                      strne r3, [sp, #0xc]
006f9020  61 56 f0 eb                                      bl #0x30e9ac
006f9024  00 00 50 e3                                      cmp r0, #0
006f9028  fe 35 a0 13                                      movne r3, #0x3f800000
006f902c  14 00 9d e5                                      ldr r0, [sp, #0x14]
006f9030  00 10 a0 e3                                      mov r1, #0
006f9034  10 30 8d 15                                      strne r3, [sp, #0x10]
006f9038  5b 56 f0 eb                                      bl #0x30e9ac
006f903c  00 00 50 e3                                      cmp r0, #0
006f9040  fe 35 a0 13                                      movne r3, #0x3f800000
006f9044  14 30 8d 15                                      strne r3, [sp, #0x14]
006f9048  10 20 9d e5                                      ldr r2, [sp, #0x10]
006f904c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006f9050  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006f9054  14 00 9d e5                                      ldr r0, [sp, #0x14]
006f9058  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006f905c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006f9060  20 20 84 e5                                      str r2, [r4, #0x20]
006f9064  50 22 9f e5                                      ldr r2, [pc, #0x250]
006f9068  02 e1 8e e2                                      add lr, lr, #0x80000000
006f906c  02 c1 8c e2                                      add ip, ip, #0x80000000
006f9070  02 01 80 e2                                      add r0, r0, #0x80000000
006f9074  10 e0 84 e5                                      str lr, [r4, #0x10]
006f9078  14 c0 84 e5                                      str ip, [r4, #0x14]
006f907c  18 00 84 e5                                      str r0, [r4, #0x18]
006f9080  1c 10 84 e5                                      str r1, [r4, #0x1c]
006f9084  24 30 84 e5                                      str r3, [r4, #0x24]
006f9088  02 20 8f e0                                      add r2, pc, r2
006f908c  0d 00 a0 e1                                      mov r0, sp
006f9090  05 10 a0 e1                                      mov r1, r5
006f9094  00 30 95 e5                                      ldr r3, [r5]
006f9098  0f e0 a0 e1                                      mov lr, pc
006f909c  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006f90a0  00 30 9d e5                                      ldr r3, [sp]
006f90a4  04 70 9d e5                                      ldr r7, [sp, #4]
006f90a8  08 60 9d e5                                      ldr r6, [sp, #8]
006f90ac  03 10 a0 e1                                      mov r1, r3
006f90b0  03 00 a0 e1                                      mov r0, r3
006f90b4  28 30 84 e5                                      str r3, [r4, #0x28]
006f90b8  2c 70 84 e5                                      str r7, [r4, #0x2c]
006f90bc  30 60 84 e5                                      str r6, [r4, #0x30]
006f90c0  29 57 f0 eb                                      bl #0x30ed6c
006f90c4  07 10 a0 e1                                      mov r1, r7
006f90c8  00 80 a0 e1                                      mov r8, r0
006f90cc  07 00 a0 e1                                      mov r0, r7
006f90d0  25 57 f0 eb                                      bl #0x30ed6c
006f90d4  00 10 a0 e1                                      mov r1, r0
006f90d8  08 00 a0 e1                                      mov r0, r8
006f90dc  b0 56 f0 eb                                      bl #0x30eba4
006f90e0  06 10 a0 e1                                      mov r1, r6
006f90e4  00 70 a0 e1                                      mov r7, r0
006f90e8  06 00 a0 e1                                      mov r0, r6
006f90ec  1e 57 f0 eb                                      bl #0x30ed6c
006f90f0  00 10 a0 e1                                      mov r1, r0
006f90f4  07 00 a0 e1                                      mov r0, r7
006f90f8  a9 56 f0 eb                                      bl #0x30eba4
006f90fc  e8 55 f0 eb                                      bl #0x30e8a4
006f9100  2e 54 f0 eb                                      bl #0x30e1c0
006f9104  00 60 a0 e3                                      mov r6, #0
006f9108  64 55 f0 eb                                      bl #0x30e6a0
006f910c  06 10 a0 e1                                      mov r1, r6
006f9110  9d 53 f0 eb                                      bl #0x30df8c
006f9114  00 00 50 e3                                      cmp r0, #0
006f9118  0a 37 0d 13                                      movwne r3, #0xd70a
006f911c  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
006f9120  23 3c 43 13                                      movtne r3, #0x3c23
006f9124  30 60 84 15                                      strne r6, [r4, #0x30]
006f9128  28 60 84 15                                      strne r6, [r4, #0x28]
006f912c  2c 30 84 15                                      strne r3, [r4, #0x2c]
006f9130  00 30 95 e5                                      ldr r3, [r5]
006f9134  01 10 8f e0                                      add r1, pc, r1
006f9138  05 00 a0 e1                                      mov r0, r5
006f913c  0f e0 a0 e1                                      mov lr, pc
006f9140  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006f9144  78 11 9f e5                                      ldr r1, [pc, #0x178]
006f9148  34 00 84 e5                                      str r0, [r4, #0x34]
006f914c  00 30 95 e5                                      ldr r3, [r5]
006f9150  01 10 8f e0                                      add r1, pc, r1
006f9154  05 00 a0 e1                                      mov r0, r5
006f9158  0f e0 a0 e1                                      mov lr, pc
006f915c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006f9160  34 20 94 e5                                      ldr r2, [r4, #0x34]
006f9164  38 00 84 e5                                      str r0, [r4, #0x38]
006f9168  01 00 52 e3                                      cmp r2, #1
006f916c  01 20 a0 33                                      movlo r2, #1
006f9170  00 00 50 e3                                      cmp r0, #0
006f9174  01 30 a0 03                                      moveq r3, #1
006f9178  34 20 84 e5                                      str r2, [r4, #0x34]
006f917c  38 30 84 05                                      streq r3, [r4, #0x38]
006f9180  02 00 00 0a                                      beq #0x6f9190
006f9184  c7 00 50 e3                                      cmp r0, #0xc7
006f9188  00 30 a0 91                                      movls r3, r0
006f918c  c8 30 a0 83                                      movhi r3, #0xc8
006f9190  30 11 9f e5                                      ldr r1, [pc, #0x130]
006f9194  03 00 52 e1                                      cmp r2, r3
006f9198  34 20 84 95                                      strls r2, [r4, #0x34]
006f919c  34 30 84 85                                      strhi r3, [r4, #0x34]
006f91a0  38 30 84 e5                                      str r3, [r4, #0x38]
006f91a4  01 10 8f e0                                      add r1, pc, r1
006f91a8  00 30 95 e5                                      ldr r3, [r5]
006f91ac  05 00 a0 e1                                      mov r0, r5
006f91b0  0f e0 a0 e1                                      mov lr, pc
006f91b4  24 f1 93 e5                                      ldr pc, [r3, #0x124]
006f91b8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006f91bc  3d 10 c4 e5                                      strb r1, [r4, #0x3d]
006f91c0  04 11 9f e5                                      ldr r1, [pc, #0x104]
006f91c4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006f91c8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006f91cc  3e 20 c4 e5                                      strb r2, [r4, #0x3e]
006f91d0  3c 00 c4 e5                                      strb r0, [r4, #0x3c]
006f91d4  3f 30 c4 e5                                      strb r3, [r4, #0x3f]
006f91d8  01 10 8f e0                                      add r1, pc, r1
006f91dc  00 30 95 e5                                      ldr r3, [r5]
006f91e0  05 00 a0 e1                                      mov r0, r5
006f91e4  0f e0 a0 e1                                      mov lr, pc
006f91e8  24 f1 93 e5                                      ldr pc, [r3, #0x124]
006f91ec  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006f91f0  41 10 c4 e5                                      strb r1, [r4, #0x41]
006f91f4  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
006f91f8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006f91fc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006f9200  42 20 c4 e5                                      strb r2, [r4, #0x42]
006f9204  40 00 c4 e5                                      strb r0, [r4, #0x40]
006f9208  43 30 c4 e5                                      strb r3, [r4, #0x43]
006f920c  01 10 8f e0                                      add r1, pc, r1
006f9210  00 30 95 e5                                      ldr r3, [r5]
006f9214  05 00 a0 e1                                      mov r0, r5
006f9218  0f e0 a0 e1                                      mov lr, pc
006f921c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006f9220  ac 10 9f e5                                      ldr r1, [pc, #0xac]
006f9224  44 00 84 e5                                      str r0, [r4, #0x44]
006f9228  00 30 95 e5                                      ldr r3, [r5]
006f922c  01 10 8f e0                                      add r1, pc, r1
006f9230  05 00 a0 e1                                      mov r0, r5
006f9234  0f e0 a0 e1                                      mov lr, pc
006f9238  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006f923c  94 10 9f e5                                      ldr r1, [pc, #0x94]
006f9240  48 00 84 e5                                      str r0, [r4, #0x48]
006f9244  00 30 95 e5                                      ldr r3, [r5]
006f9248  01 10 8f e0                                      add r1, pc, r1
006f924c  05 00 a0 e1                                      mov r0, r5
006f9250  0f e0 a0 e1                                      mov lr, pc
006f9254  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006f9258  44 30 94 e5                                      ldr r3, [r4, #0x44]
006f925c  54 00 84 e5                                      str r0, [r4, #0x54]
006f9260  00 00 53 e3                                      cmp r3, #0
006f9264  0d 00 00 0a                                      beq #0x6f92a0
006f9268  48 20 94 e5                                      ldr r2, [r4, #0x48]
006f926c  02 00 53 e1                                      cmp r3, r2
006f9270  48 30 84 85                                      strhi r3, [r4, #0x48]
006f9274  03 20 a0 81                                      movhi r2, r3
006f9278  0a 00 00 9a                                      bls #0x6f92a8
006f927c  58 10 9f e5                                      ldr r1, [pc, #0x58]
006f9280  44 20 84 e5                                      str r2, [r4, #0x44]
006f9284  05 00 a0 e1                                      mov r0, r5
006f9288  01 10 8f e0                                      add r1, pc, r1
006f928c  00 30 95 e5                                      ldr r3, [r5]
006f9290  0f e0 a0 e1                                      mov lr, pc
006f9294  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006f9298  18 d0 8d e2                                      add sp, sp, #0x18
006f929c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006f92a0  48 20 94 e5                                      ldr r2, [r4, #0x48]
006f92a4  44 30 84 e5                                      str r3, [r4, #0x44]
006f92a8  48 20 84 e5                                      str r2, [r4, #0x48]
006f92ac  03 00 52 e1                                      cmp r2, r3
006f92b0  03 20 a0 21                                      movhs r2, r3
006f92b4  f0 ff ff ea                                      b #0x6f927c
; mapping-symbol data/literal pool
006f92b8  24 22 1f 00 a0 c1 1e 00 bc 8b 1f 00 b8 8b 1f 00  .byte 0x24, 0x22, 0x1f, 0x00, 0xa0, 0xc1, 0x1e, 0x00, 0xbc, 0x8b, 0x1f, 0x00, 0xb8, 0x8b, 0x1f, 0x00
006f92c8  7c 8b 1f 00 58 8b 1f 00 34 8b 1f 00 24 8b 1f 00  .byte 0x7c, 0x8b, 0x1f, 0x00, 0x58, 0x8b, 0x1f, 0x00, 0x34, 0x8b, 0x1f, 0x00, 0x24, 0x8b, 0x1f, 0x00
006f92d8  18 8b 1f 00 d8 8a 1f 00                          .byte 0x18, 0x8b, 0x1f, 0x00, 0xd8, 0x8a, 0x1f, 0x00

; FUNCTION 0x006f9508, declared_size=1140, range_size=1140, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZN6glitch5scene19CParticleBoxEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticleBoxEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006f9508  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f950c  00 40 a0 e1                                      mov r4, r0
006f9510  4c 60 90 e5                                      ldr r6, [r0, #0x4c]
006f9514  34 50 90 e5                                      ldr r5, [r0, #0x34]
006f9518  38 00 90 e5                                      ldr r0, [r0, #0x38]
006f951c  fc d0 4d e2                                      sub sp, sp, #0xfc
006f9520  06 60 82 e0                                      add r6, r2, r6
006f9524  05 80 50 e0                                      subs r8, r0, r5
006f9528  34 30 8d e5                                      str r3, [sp, #0x34]
006f952c  01 70 a0 e1                                      mov r7, r1
006f9530  4c 60 84 e5                                      str r6, [r4, #0x4c]
006f9534  fa 00 00 1a                                      bne #0x6f9924
006f9538  05 00 a0 e1                                      mov r0, r5
006f953c  67 53 f0 eb                                      bl #0x30e2e0
006f9540  00 10 a0 e1                                      mov r1, r0
006f9544  11 03 a0 e3                                      mov r0, #0x44000000
006f9548  7a 08 80 e2                                      add r0, r0, #0x7a0000
006f954c  d0 55 f0 eb                                      bl #0x30ec94
006f9550  00 50 a0 e1                                      mov r5, r0
006f9554  06 00 a0 e1                                      mov r0, r6
006f9558  60 53 f0 eb                                      bl #0x30e2e0
006f955c  05 10 a0 e1                                      mov r1, r5
006f9560  64 53 f0 eb                                      bl #0x30e2f8
006f9564  00 00 50 e3                                      cmp r0, #0
006f9568  eb 00 00 0a                                      beq #0x6f991c
006f956c  08 00 94 e5                                      ldr r0, [r4, #8]
006f9570  04 20 94 e5                                      ldr r2, [r4, #4]
006f9574  00 c0 a0 e3                                      mov ip, #0
006f9578  04 10 84 e2                                      add r1, r4, #4
006f957c  00 e0 62 e0                                      rsb lr, r2, r0
006f9580  4e e1 a0 e1                                      asr lr, lr, #2
006f9584  0c 10 8d e5                                      str r1, [sp, #0xc]
006f9588  0e 32 a0 e1                                      lsl r3, lr, #4
006f958c  03 30 6e e0                                      rsb r3, lr, r3
006f9590  03 34 83 e0                                      add r3, r3, r3, lsl #8
006f9594  b0 c0 8d e5                                      str ip, [sp, #0xb0]
006f9598  03 38 83 e0                                      add r3, r3, r3, lsl #16
006f959c  80 c0 8d e5                                      str ip, [sp, #0x80]
006f95a0  03 32 9e e0                                      adds r3, lr, r3, lsl #4
006f95a4  84 c0 8d e5                                      str ip, [sp, #0x84]
006f95a8  88 c0 8d e5                                      str ip, [sp, #0x88]
006f95ac  8c c0 8d e5                                      str ip, [sp, #0x8c]
006f95b0  90 c0 8d e5                                      str ip, [sp, #0x90]
006f95b4  94 c0 8d e5                                      str ip, [sp, #0x94]
006f95b8  a8 c0 8d e5                                      str ip, [sp, #0xa8]
006f95bc  ac c0 8d e5                                      str ip, [sp, #0xac]
006f95c0  e7 00 00 0a                                      beq #0x6f9964
006f95c4  02 00 50 e1                                      cmp r0, r2
006f95c8  05 00 00 0a                                      beq #0x6f95e4
006f95cc  00 c0 a0 e3                                      mov ip, #0
006f95d0  00 10 a0 e1                                      mov r1, r0
006f95d4  f4 30 8d e2                                      add r3, sp, #0xf4
006f95d8  00 c0 8d e5                                      str ip, [sp]
006f95dc  4c 1e ff eb                                      bl #0x6c0f14
006f95e0  08 00 84 e5                                      str r0, [r4, #8]
006f95e4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
006f95e8  3c 53 f0 eb                                      bl #0x30e2e0
006f95ec  05 10 a0 e1                                      mov r1, r5
006f95f0  a7 55 f0 eb                                      bl #0x30ec94
006f95f4  3f 14 a0 e3                                      mov r1, #0x3f000000
006f95f8  69 55 f0 eb                                      bl #0x30eba4
006f95fc  27 13 07 eb                                      bl #0x8be2a0
006f9600  10 b0 94 e5                                      ldr fp, [r4, #0x10]
006f9604  00 60 a0 e3                                      mov r6, #0
006f9608  4c 60 84 e5                                      str r6, [r4, #0x4c]
006f960c  00 50 a0 e3                                      mov r5, #0
006f9610  00 80 a0 e1                                      mov r8, r0
006f9614  0b 10 a0 e1                                      mov r1, fp
006f9618  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
006f961c  3c 50 8d e5                                      str r5, [sp, #0x3c]
006f9620  40 50 8d e5                                      str r5, [sp, #0x40]
006f9624  44 50 8d e5                                      str r5, [sp, #0x44]
006f9628  48 50 8d e5                                      str r5, [sp, #0x48]
006f962c  4c 50 8d e5                                      str r5, [sp, #0x4c]
006f9630  50 50 8d e5                                      str r5, [sp, #0x50]
006f9634  64 50 8d e5                                      str r5, [sp, #0x64]
006f9638  68 50 8d e5                                      str r5, [sp, #0x68]
006f963c  6c 50 8d e5                                      str r5, [sp, #0x6c]
006f9640  59 53 f0 eb                                      bl #0x30e3ac
006f9644  18 00 8d e5                                      str r0, [sp, #0x18]
006f9648  14 10 94 e5                                      ldr r1, [r4, #0x14]
006f964c  20 00 94 e5                                      ldr r0, [r4, #0x20]
006f9650  55 53 f0 eb                                      bl #0x30e3ac
006f9654  14 00 8d e5                                      str r0, [sp, #0x14]
006f9658  18 10 94 e5                                      ldr r1, [r4, #0x18]
006f965c  24 00 94 e5                                      ldr r0, [r4, #0x24]
006f9660  51 53 f0 eb                                      bl #0x30e3ac
006f9664  10 00 8d e5                                      str r0, [sp, #0x10]
006f9668  38 90 94 e5                                      ldr sb, [r4, #0x38]
006f966c  89 90 a0 e1                                      lsl sb, sb, #1
006f9670  09 00 58 e1                                      cmp r8, sb
006f9674  08 90 a0 31                                      movlo sb, r8
006f9678  06 00 59 e1                                      cmp sb, r6
006f967c  9a 00 00 0a                                      beq #0x6f98ec
006f9680  3c 20 84 e2                                      add r2, r4, #0x3c
006f9684  40 30 84 e2                                      add r3, r4, #0x40
006f9688  3c 10 8d e2                                      add r1, sp, #0x3c
006f968c  1f a5 08 e3                                      movw sl, #0x851f
006f9690  20 20 8d e5                                      str r2, [sp, #0x20]
006f9694  1c 30 8d e5                                      str r3, [sp, #0x1c]
006f9698  24 10 8d e5                                      str r1, [sp, #0x24]
006f969c  dc 20 8d e2                                      add r2, sp, #0xdc
006f96a0  d0 30 8d e2                                      add r3, sp, #0xd0
006f96a4  c4 10 8d e2                                      add r1, sp, #0xc4
006f96a8  eb a1 45 e3                                      movt sl, #0x51eb
006f96ac  e8 80 8d e2                                      add r8, sp, #0xe8
006f96b0  28 20 8d e5                                      str r2, [sp, #0x28]
006f96b4  2c 30 8d e5                                      str r3, [sp, #0x2c]
006f96b8  30 10 8d e5                                      str r1, [sp, #0x30]
006f96bc  00 00 00 ea                                      b #0x6f96c4
006f96c0  10 b0 94 e5                                      ldr fp, [r4, #0x10]
006f96c4  ce 45 fc eb                                      bl #0x60ae04
006f96c8  a5 54 f0 eb                                      bl #0x30e964
006f96cc  18 10 9d e5                                      ldr r1, [sp, #0x18]
006f96d0  46 54 f0 eb                                      bl #0x30e7f0
006f96d4  0b 10 a0 e1                                      mov r1, fp
006f96d8  31 55 f0 eb                                      bl #0x30eba4
006f96dc  3c 00 8d e5                                      str r0, [sp, #0x3c]
006f96e0  14 b0 94 e5                                      ldr fp, [r4, #0x14]
006f96e4  c6 45 fc eb                                      bl #0x60ae04
006f96e8  9d 54 f0 eb                                      bl #0x30e964
006f96ec  14 10 9d e5                                      ldr r1, [sp, #0x14]
006f96f0  3e 54 f0 eb                                      bl #0x30e7f0
006f96f4  00 10 a0 e1                                      mov r1, r0
006f96f8  0b 00 a0 e1                                      mov r0, fp
006f96fc  28 55 f0 eb                                      bl #0x30eba4
006f9700  40 00 8d e5                                      str r0, [sp, #0x40]
006f9704  18 b0 94 e5                                      ldr fp, [r4, #0x18]
006f9708  bd 45 fc eb                                      bl #0x60ae04
006f970c  94 54 f0 eb                                      bl #0x30e964
006f9710  10 10 9d e5                                      ldr r1, [sp, #0x10]
006f9714  35 54 f0 eb                                      bl #0x30e7f0
006f9718  00 10 a0 e1                                      mov r1, r0
006f971c  0b 00 a0 e1                                      mov r0, fp
006f9720  1f 55 f0 eb                                      bl #0x30eba4
006f9724  54 c0 94 e5                                      ldr ip, [r4, #0x54]
006f9728  28 10 94 e5                                      ldr r1, [r4, #0x28]
006f972c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
006f9730  30 30 94 e5                                      ldr r3, [r4, #0x30]
006f9734  00 00 5c e3                                      cmp ip, #0
006f9738  44 00 8d e5                                      str r0, [sp, #0x44]
006f973c  54 70 8d e5                                      str r7, [sp, #0x54]
006f9740  48 10 8d e5                                      str r1, [sp, #0x48]
006f9744  4c 20 8d e5                                      str r2, [sp, #0x4c]
006f9748  50 30 8d e5                                      str r3, [sp, #0x50]
006f974c  35 00 00 0a                                      beq #0x6f9828
006f9750  ec 20 8d e5                                      str r2, [sp, #0xec]
006f9754  f0 30 8d e5                                      str r3, [sp, #0xf0]
006f9758  e8 10 8d e5                                      str r1, [sp, #0xe8]
006f975c  a8 45 fc eb                                      bl #0x60ae04
006f9760  54 b0 94 e5                                      ldr fp, [r4, #0x54]
006f9764  8b 10 a0 e1                                      lsl r1, fp, #1
006f9768  65 54 f0 eb                                      bl #0x30e904
006f976c  01 00 6b e0                                      rsb r0, fp, r1
006f9770  6e 55 f0 eb                                      bl #0x30ed30
006f9774  01 30 a0 e1                                      mov r3, r1
006f9778  28 10 9d e5                                      ldr r1, [sp, #0x28]
006f977c  00 20 a0 e1                                      mov r2, r0
006f9780  08 00 a0 e1                                      mov r0, r8
006f9784  00 10 8d e5                                      str r1, [sp]
006f9788  dc 50 8d e5                                      str r5, [sp, #0xdc]
006f978c  e0 50 8d e5                                      str r5, [sp, #0xe0]
006f9790  e4 50 8d e5                                      str r5, [sp, #0xe4]
006f9794  18 dd fc eb                                      bl #0x630bfc
006f9798  99 45 fc eb                                      bl #0x60ae04
006f979c  54 b0 94 e5                                      ldr fp, [r4, #0x54]
006f97a0  8b 10 a0 e1                                      lsl r1, fp, #1
006f97a4  56 54 f0 eb                                      bl #0x30e904
006f97a8  01 00 6b e0                                      rsb r0, fp, r1
006f97ac  5f 55 f0 eb                                      bl #0x30ed30
006f97b0  01 30 a0 e1                                      mov r3, r1
006f97b4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006f97b8  00 20 a0 e1                                      mov r2, r0
006f97bc  08 00 a0 e1                                      mov r0, r8
006f97c0  00 10 8d e5                                      str r1, [sp]
006f97c4  d0 50 8d e5                                      str r5, [sp, #0xd0]
006f97c8  d4 50 8d e5                                      str r5, [sp, #0xd4]
006f97cc  d8 50 8d e5                                      str r5, [sp, #0xd8]
006f97d0  48 dd fc eb                                      bl #0x630cf8
006f97d4  8a 45 fc eb                                      bl #0x60ae04
006f97d8  54 b0 94 e5                                      ldr fp, [r4, #0x54]
006f97dc  8b 10 a0 e1                                      lsl r1, fp, #1
006f97e0  47 54 f0 eb                                      bl #0x30e904
006f97e4  01 00 6b e0                                      rsb r0, fp, r1
006f97e8  50 55 f0 eb                                      bl #0x30ed30
006f97ec  01 30 a0 e1                                      mov r3, r1
006f97f0  30 10 9d e5                                      ldr r1, [sp, #0x30]
006f97f4  00 20 a0 e1                                      mov r2, r0
006f97f8  08 00 a0 e1                                      mov r0, r8
006f97fc  c4 50 8d e5                                      str r5, [sp, #0xc4]
006f9800  c8 50 8d e5                                      str r5, [sp, #0xc8]
006f9804  cc 50 8d e5                                      str r5, [sp, #0xcc]
006f9808  00 10 8d e5                                      str r1, [sp]
006f980c  75 dd fc eb                                      bl #0x630de8
006f9810  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
006f9814  48 30 8d e5                                      str r3, [sp, #0x48]
006f9818  ec 30 9d e5                                      ldr r3, [sp, #0xec]
006f981c  4c 30 8d e5                                      str r3, [sp, #0x4c]
006f9820  f0 30 9d e5                                      ldr r3, [sp, #0xf0]
006f9824  50 30 8d e5                                      str r3, [sp, #0x50]
006f9828  48 30 94 e5                                      ldr r3, [r4, #0x48]
006f982c  44 b0 94 e5                                      ldr fp, [r4, #0x44]
006f9830  0b 00 53 e1                                      cmp r3, fp
006f9834  03 30 87 00                                      addeq r3, r7, r3
006f9838  58 30 8d 05                                      streq r3, [sp, #0x58]
006f983c  07 00 00 0a                                      beq #0x6f9860
006f9840  6f 45 fc eb                                      bl #0x60ae04
006f9844  44 30 94 e5                                      ldr r3, [r4, #0x44]
006f9848  48 10 94 e5                                      ldr r1, [r4, #0x48]
006f984c  0b b0 87 e0                                      add fp, r7, fp
006f9850  01 10 63 e0                                      rsb r1, r3, r1
006f9854  b4 54 f0 eb                                      bl #0x30eb2c
006f9858  01 10 8b e0                                      add r1, fp, r1
006f985c  58 10 8d e5                                      str r1, [sp, #0x58]
006f9860  67 45 fc eb                                      bl #0x60ae04
006f9864  9a 30 c2 e0                                      smull r3, r2, sl, r0
006f9868  c0 3f a0 e1                                      asr r3, r0, #0x1f
006f986c  c2 32 63 e0                                      rsb r3, r3, r2, asr #5
006f9870  64 10 a0 e3                                      mov r1, #0x64
006f9874  91 03 60 e0                                      mls r0, r1, r3, r0
006f9878  39 54 f0 eb                                      bl #0x30e964
006f987c  42 14 a0 e3                                      mov r1, #0x42000000
006f9880  32 17 81 e2                                      add r1, r1, #0xc80000
006f9884  02 55 f0 eb                                      bl #0x30ec94
006f9888  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006f988c  00 20 a0 e1                                      mov r2, r0
006f9890  20 00 9d e5                                      ldr r0, [sp, #0x20]
006f9894  bc 1d f9 eb                                      bl #0x540f8c
006f9898  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006f989c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006f98a0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006f98a4  5d 10 cd e5                                      strb r1, [sp, #0x5d]
006f98a8  5c 00 cd e5                                      strb r0, [sp, #0x5c]
006f98ac  5e 20 cd e5                                      strb r2, [sp, #0x5e]
006f98b0  5f 30 cd e5                                      strb r3, [sp, #0x5f]
006f98b4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006f98b8  01 60 86 e2                                      add r6, r6, #1
006f98bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006f98c0  60 30 8d e5                                      str r3, [sp, #0x60]
006f98c4  48 30 9d e5                                      ldr r3, [sp, #0x48]
006f98c8  24 10 9d e5                                      ldr r1, [sp, #0x24]
006f98cc  64 30 8d e5                                      str r3, [sp, #0x64]
006f98d0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006f98d4  68 30 8d e5                                      str r3, [sp, #0x68]
006f98d8  50 30 9d e5                                      ldr r3, [sp, #0x50]
006f98dc  6c 30 8d e5                                      str r3, [sp, #0x6c]
006f98e0  d4 fe ff eb                                      bl #0x6f9438
006f98e4  09 00 56 e1                                      cmp r6, sb
006f98e8  74 ff ff 1a                                      bne #0x6f96c0
006f98ec  04 30 94 e5                                      ldr r3, [r4, #4]
006f98f0  34 20 9d e5                                      ldr r2, [sp, #0x34]
006f98f4  00 30 82 e5                                      str r3, [r2]
006f98f8  04 30 94 e5                                      ldr r3, [r4, #4]
006f98fc  08 20 94 e5                                      ldr r2, [r4, #8]
006f9900  02 30 63 e0                                      rsb r3, r3, r2
006f9904  43 31 a0 e1                                      asr r3, r3, #2
006f9908  03 02 a0 e1                                      lsl r0, r3, #4
006f990c  00 00 63 e0                                      rsb r0, r3, r0
006f9910  00 04 80 e0                                      add r0, r0, r0, lsl #8
006f9914  00 08 80 e0                                      add r0, r0, r0, lsl #16
006f9918  00 02 83 e0                                      add r0, r3, r0, lsl #4
006f991c  fc d0 8d e2                                      add sp, sp, #0xfc
006f9920  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006f9924  36 45 fc eb                                      bl #0x60ae04
006f9928  00 60 a0 e1                                      mov r6, r0
006f992c  05 00 a0 e1                                      mov r0, r5
006f9930  6a 52 f0 eb                                      bl #0x30e2e0
006f9934  08 10 a0 e1                                      mov r1, r8
006f9938  00 50 a0 e1                                      mov r5, r0
006f993c  06 00 a0 e1                                      mov r0, r6
006f9940  79 54 f0 eb                                      bl #0x30eb2c
006f9944  01 00 a0 e1                                      mov r0, r1
006f9948  64 52 f0 eb                                      bl #0x30e2e0
006f994c  00 10 a0 e1                                      mov r1, r0
006f9950  05 00 a0 e1                                      mov r0, r5
006f9954  92 54 f0 eb                                      bl #0x30eba4
006f9958  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
006f995c  00 10 a0 e1                                      mov r1, r0
006f9960  f7 fe ff ea                                      b #0x6f9544
006f9964  00 10 a0 e1                                      mov r1, r0
006f9968  03 20 a0 e1                                      mov r2, r3
006f996c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006f9970  80 30 8d e2                                      add r3, sp, #0x80
006f9974  43 23 ff eb                                      bl #0x6c2688
006f9978  19 ff ff ea                                      b #0x6f95e4

; FUNCTION 0x006f99f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleBoxEmitter
; alias: _ZTv0_n16_NK6glitch5scene19CParticleBoxEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleBoxEmitter::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f99f0  00 30 90 e5                                      ldr r3, [r0]
006f99f4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006f99f8  03 00 80 e0                                      add r0, r0, r3
006f99fc  d6 fc ff ea                                      b #0x6f8d5c
