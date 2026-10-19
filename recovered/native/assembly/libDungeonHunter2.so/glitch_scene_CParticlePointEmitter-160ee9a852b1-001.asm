; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fb9d4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticlePointEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fb9d4  00 30 91 e5                                      ldr r3, [r1]
006fb9d8  48 30 80 e5                                      str r3, [r0, #0x48]
006fb9dc  04 30 91 e5                                      ldr r3, [r1, #4]
006fb9e0  4c 30 80 e5                                      str r3, [r0, #0x4c]
006fb9e4  08 30 91 e5                                      ldr r3, [r1, #8]
006fb9e8  50 30 80 e5                                      str r3, [r0, #0x50]
006fb9ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb9f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticlePointEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fb9f0  54 10 80 e5                                      str r1, [r0, #0x54]
006fb9f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb9f8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticlePointEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fb9f8  58 10 80 e5                                      str r1, [r0, #0x58]
006fb9fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba00, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticlePointEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fba00  10 40 2d e9                                      push {r4, lr}
006fba04  04 20 a0 e3                                      mov r2, #4
006fba08  5c 00 80 e2                                      add r0, r0, #0x5c
006fba0c  95 4b f0 eb                                      bl #0x30e868
006fba10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fba14, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticlePointEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fba14  10 40 2d e9                                      push {r4, lr}
006fba18  04 20 a0 e3                                      mov r2, #4
006fba1c  60 00 80 e2                                      add r0, r0, #0x60
006fba20  90 4b f0 eb                                      bl #0x30e868
006fba24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fba28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter12getDirectionEv
; demangled: glitch::scene::CParticlePointEmitter::getDirection() const
; decoder-mode: arm
006fba28  48 00 80 e2                                      add r0, r0, #0x48
006fba2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba30, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticlePointEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006fba30  54 00 90 e5                                      ldr r0, [r0, #0x54]
006fba34  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticlePointEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006fba38  58 00 90 e5                                      ldr r0, [r0, #0x58]
006fba3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticlePointEmitter::getMinStartColor() const
; decoder-mode: arm
006fba40  5c 00 80 e2                                      add r0, r0, #0x5c
006fba44  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba48, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticlePointEmitter::getMaxStartColor() const
; decoder-mode: arm
006fba48  60 00 80 e2                                      add r0, r0, #0x60
006fba4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba50, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticlePointEmitter::getMinLifeTime() const
; decoder-mode: arm
006fba50  64 00 90 e5                                      ldr r0, [r0, #0x64]
006fba54  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba58, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticlePointEmitter::getMaxLifeTime() const
; decoder-mode: arm
006fba58  68 00 90 e5                                      ldr r0, [r0, #0x68]
006fba5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba60, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticlePointEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006fba60  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
006fba64  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fba68, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitterC2ERKNS_4core8vector3dIfEEjjNS_5video6SColorES8_jji
; demangled: glitch::scene::CParticlePointEmitter::CParticlePointEmitter(glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor, glitch::video::SColor, unsigned int, unsigned int, int)
; decoder-mode: arm
006fba68  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006fba6c  04 40 91 e5                                      ldr r4, [r1, #4]
006fba70  04 50 81 e2                                      add r5, r1, #4
006fba74  08 d0 4d e2                                      sub sp, sp, #8
006fba78  00 40 80 e5                                      str r4, [r0]
006fba7c  1c 60 14 e5                                      ldr r6, [r4, #-0x1c]
006fba80  04 70 95 e5                                      ldr r7, [r5, #4]
006fba84  00 40 a0 e3                                      mov r4, #0
006fba88  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
006fba8c  06 70 80 e7                                      str r7, [r0, r6]
006fba90  00 70 90 e5                                      ldr r7, [r0]
006fba94  08 60 95 e5                                      ldr r6, [r5, #8]
006fba98  30 90 dd e5                                      ldrb sb, [sp, #0x30]
006fba9c  0c 50 17 e5                                      ldr r5, [r7, #-0xc]
006fbaa0  2e 70 dd e5                                      ldrb r7, [sp, #0x2e]
006fbaa4  05 60 80 e7                                      str r6, [r0, r5]
006fbaa8  00 50 91 e5                                      ldr r5, [r1]
006fbaac  2d 60 dd e5                                      ldrb r6, [sp, #0x2d]
006fbab0  00 50 80 e5                                      str r5, [r0]
006fbab4  10 80 91 e5                                      ldr r8, [r1, #0x10]
006fbab8  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006fbabc  05 80 80 e7                                      str r8, [r0, r5]
006fbac0  00 a0 90 e5                                      ldr sl, [r0]
006fbac4  14 50 91 e5                                      ldr r5, [r1, #0x14]
006fbac8  2f 80 dd e5                                      ldrb r8, [sp, #0x2f]
006fbacc  0c 10 1a e5                                      ldr r1, [sl, #-0xc]
006fbad0  31 a0 dd e5                                      ldrb sl, [sp, #0x31]
006fbad4  01 50 80 e7                                      str r5, [r0, r1]
006fbad8  32 10 dd e5                                      ldrb r1, [sp, #0x32]
006fbadc  04 40 80 e5                                      str r4, [r0, #4]
006fbae0  08 40 80 e5                                      str r4, [r0, #8]
006fbae4  0c 40 80 e5                                      str r4, [r0, #0xc]
006fbae8  04 10 8d e5                                      str r1, [sp, #4]
006fbaec  33 50 dd e5                                      ldrb r5, [sp, #0x33]
006fbaf0  10 40 80 e5                                      str r4, [r0, #0x10]
006fbaf4  34 40 80 e5                                      str r4, [r0, #0x34]
006fbaf8  14 40 80 e5                                      str r4, [r0, #0x14]
006fbafc  18 40 80 e5                                      str r4, [r0, #0x18]
006fbb00  2c 40 80 e5                                      str r4, [r0, #0x2c]
006fbb04  30 40 80 e5                                      str r4, [r0, #0x30]
006fbb08  00 10 92 e5                                      ldr r1, [r2]
006fbb0c  00 40 a0 e3                                      mov r4, #0
006fbb10  48 10 80 e5                                      str r1, [r0, #0x48]
006fbb14  04 10 92 e5                                      ldr r1, [r2, #4]
006fbb18  4c 10 80 e5                                      str r1, [r0, #0x4c]
006fbb1c  08 20 92 e5                                      ldr r2, [r2, #8]
006fbb20  54 30 80 e5                                      str r3, [r0, #0x54]
006fbb24  28 30 9d e5                                      ldr r3, [sp, #0x28]
006fbb28  74 40 80 e5                                      str r4, [r0, #0x74]
006fbb2c  50 20 80 e5                                      str r2, [r0, #0x50]
006fbb30  58 30 80 e5                                      str r3, [r0, #0x58]
006fbb34  04 30 9d e5                                      ldr r3, [sp, #4]
006fbb38  5f 80 c0 e5                                      strb r8, [r0, #0x5f]
006fbb3c  5e 70 c0 e5                                      strb r7, [r0, #0x5e]
006fbb40  62 30 c0 e5                                      strb r3, [r0, #0x62]
006fbb44  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fbb48  5d 60 c0 e5                                      strb r6, [r0, #0x5d]
006fbb4c  5c b0 c0 e5                                      strb fp, [r0, #0x5c]
006fbb50  64 30 80 e5                                      str r3, [r0, #0x64]
006fbb54  38 30 9d e5                                      ldr r3, [sp, #0x38]
006fbb58  63 50 c0 e5                                      strb r5, [r0, #0x63]
006fbb5c  61 a0 c0 e5                                      strb sl, [r0, #0x61]
006fbb60  68 30 80 e5                                      str r3, [r0, #0x68]
006fbb64  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006fbb68  60 90 c0 e5                                      strb sb, [r0, #0x60]
006fbb6c  70 40 80 e5                                      str r4, [r0, #0x70]
006fbb70  6c 30 80 e5                                      str r3, [r0, #0x6c]
006fbb74  08 d0 8d e2                                      add sp, sp, #8
006fbb78  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006fbb7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fbb80, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitterC1ERKNS_4core8vector3dIfEEjjNS_5video6SColorES8_jji
; demangled: glitch::scene::CParticlePointEmitter::CParticlePointEmitter(glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor, glitch::video::SColor, unsigned int, unsigned int, int)
; decoder-mode: arm
006fbb80  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006fbb84  3c 41 9f e5                                      ldr r4, [pc, #0x13c]
006fbb88  3c c1 9f e5                                      ldr ip, [pc, #0x13c]
006fbb8c  3c 61 9f e5                                      ldr r6, [pc, #0x13c]
006fbb90  04 40 8f e0                                      add r4, pc, r4
006fbb94  0c 50 94 e7                                      ldr r5, [r4, ip]
006fbb98  06 60 94 e7                                      ldr r6, [r4, r6]
006fbb9c  08 d0 4d e2                                      sub sp, sp, #8
006fbba0  18 70 95 e5                                      ldr r7, [r5, #0x18]
006fbba4  08 60 86 e2                                      add r6, r6, #8
006fbba8  78 60 80 e5                                      str r6, [r0, #0x78]
006fbbac  01 60 a0 e3                                      mov r6, #1
006fbbb0  00 70 80 e5                                      str r7, [r0]
006fbbb4  7c 60 80 e5                                      str r6, [r0, #0x7c]
006fbbb8  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fbbbc  04 80 95 e5                                      ldr r8, [r5, #4]
006fbbc0  1c 90 95 e5                                      ldr sb, [r5, #0x1c]
006fbbc4  08 a0 95 e5                                      ldr sl, [r5, #8]
006fbbc8  04 61 9f e5                                      ldr r6, [pc, #0x104]
006fbbcc  07 90 80 e7                                      str sb, [r0, r7]
006fbbd0  00 80 80 e5                                      str r8, [r0]
006fbbd4  1c 70 18 e5                                      ldr r7, [r8, #-0x1c]
006fbbd8  0c 90 95 e5                                      ldr sb, [r5, #0xc]
006fbbdc  06 60 94 e7                                      ldr r6, [r4, r6]
006fbbe0  07 a0 80 e7                                      str sl, [r0, r7]
006fbbe4  00 70 90 e5                                      ldr r7, [r0]
006fbbe8  00 50 a0 e3                                      mov r5, #0
006fbbec  7c 80 86 e2                                      add r8, r6, #0x7c
006fbbf0  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fbbf4  1c 60 86 e2                                      add r6, r6, #0x1c
006fbbf8  28 a0 dd e5                                      ldrb sl, [sp, #0x28]
006fbbfc  07 90 80 e7                                      str sb, [r0, r7]
006fbc00  2c 90 dd e5                                      ldrb sb, [sp, #0x2c]
006fbc04  00 60 80 e5                                      str r6, [r0]
006fbc08  78 80 80 e5                                      str r8, [r0, #0x78]
006fbc0c  04 90 8d e5                                      str sb, [sp, #4]
006fbc10  2d 90 dd e5                                      ldrb sb, [sp, #0x2d]
006fbc14  04 50 80 e5                                      str r5, [r0, #4]
006fbc18  29 80 dd e5                                      ldrb r8, [sp, #0x29]
006fbc1c  2a 60 dd e5                                      ldrb r6, [sp, #0x2a]
006fbc20  2b 70 dd e5                                      ldrb r7, [sp, #0x2b]
006fbc24  00 90 8d e5                                      str sb, [sp]
006fbc28  2e b0 dd e5                                      ldrb fp, [sp, #0x2e]
006fbc2c  2f 90 dd e5                                      ldrb sb, [sp, #0x2f]
006fbc30  08 50 80 e5                                      str r5, [r0, #8]
006fbc34  34 50 80 e5                                      str r5, [r0, #0x34]
006fbc38  0c 50 80 e5                                      str r5, [r0, #0xc]
006fbc3c  10 50 80 e5                                      str r5, [r0, #0x10]
006fbc40  14 50 80 e5                                      str r5, [r0, #0x14]
006fbc44  18 50 80 e5                                      str r5, [r0, #0x18]
006fbc48  2c 50 80 e5                                      str r5, [r0, #0x2c]
006fbc4c  30 50 80 e5                                      str r5, [r0, #0x30]
006fbc50  00 40 91 e5                                      ldr r4, [r1]
006fbc54  00 50 a0 e3                                      mov r5, #0
006fbc58  48 40 80 e5                                      str r4, [r0, #0x48]
006fbc5c  04 40 91 e5                                      ldr r4, [r1, #4]
006fbc60  4c 40 80 e5                                      str r4, [r0, #0x4c]
006fbc64  08 10 91 e5                                      ldr r1, [r1, #8]
006fbc68  58 30 80 e5                                      str r3, [r0, #0x58]
006fbc6c  04 30 9d e5                                      ldr r3, [sp, #4]
006fbc70  63 90 c0 e5                                      strb sb, [r0, #0x63]
006fbc74  00 90 9d e5                                      ldr sb, [sp]
006fbc78  60 30 c0 e5                                      strb r3, [r0, #0x60]
006fbc7c  30 30 9d e5                                      ldr r3, [sp, #0x30]
006fbc80  74 50 80 e5                                      str r5, [r0, #0x74]
006fbc84  54 20 80 e5                                      str r2, [r0, #0x54]
006fbc88  64 30 80 e5                                      str r3, [r0, #0x64]
006fbc8c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fbc90  50 10 80 e5                                      str r1, [r0, #0x50]
006fbc94  5f 70 c0 e5                                      strb r7, [r0, #0x5f]
006fbc98  68 30 80 e5                                      str r3, [r0, #0x68]
006fbc9c  38 30 9d e5                                      ldr r3, [sp, #0x38]
006fbca0  5e 60 c0 e5                                      strb r6, [r0, #0x5e]
006fbca4  5d 80 c0 e5                                      strb r8, [r0, #0x5d]
006fbca8  5c a0 c0 e5                                      strb sl, [r0, #0x5c]
006fbcac  62 b0 c0 e5                                      strb fp, [r0, #0x62]
006fbcb0  61 90 c0 e5                                      strb sb, [r0, #0x61]
006fbcb4  6c 30 80 e5                                      str r3, [r0, #0x6c]
006fbcb8  70 50 80 e5                                      str r5, [r0, #0x70]
006fbcbc  08 d0 8d e2                                      add sp, sp, #8
006fbcc0  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006fbcc4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006fbcc8  00 8f 29 00 cc 24 00 00 44 2b 00 00 e8 4b 00 00  .byte 0x00, 0x8f, 0x29, 0x00, 0xcc, 0x24, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe8, 0x4b, 0x00, 0x00

; FUNCTION 0x006fbcd8, declared_size=304, range_size=304, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZNK6glitch5scene21CParticlePointEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticlePointEmitter::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fbcd8  70 40 2d e9                                      push {r4, r5, r6, lr}
006fbcdc  01 40 a0 e1                                      mov r4, r1
006fbce0  00 11 9f e5                                      ldr r1, [pc, #0x100]
006fbce4  00 50 a0 e1                                      mov r5, r0
006fbce8  48 20 85 e2                                      add r2, r5, #0x48
006fbcec  04 00 a0 e1                                      mov r0, r4
006fbcf0  00 c0 94 e5                                      ldr ip, [r4]
006fbcf4  01 10 8f e0                                      add r1, pc, r1
006fbcf8  00 30 a0 e3                                      mov r3, #0
006fbcfc  0f e0 a0 e1                                      mov lr, pc
006fbd00  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006fbd04  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
006fbd08  04 00 a0 e1                                      mov r0, r4
006fbd0c  54 20 95 e5                                      ldr r2, [r5, #0x54]
006fbd10  00 c0 94 e5                                      ldr ip, [r4]
006fbd14  01 10 8f e0                                      add r1, pc, r1
006fbd18  00 30 a0 e3                                      mov r3, #0
006fbd1c  0f e0 a0 e1                                      mov lr, pc
006fbd20  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006fbd24  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
006fbd28  04 00 a0 e1                                      mov r0, r4
006fbd2c  58 20 95 e5                                      ldr r2, [r5, #0x58]
006fbd30  00 c0 94 e5                                      ldr ip, [r4]
006fbd34  01 10 8f e0                                      add r1, pc, r1
006fbd38  00 30 a0 e3                                      mov r3, #0
006fbd3c  0f e0 a0 e1                                      mov lr, pc
006fbd40  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006fbd44  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
006fbd48  04 00 a0 e1                                      mov r0, r4
006fbd4c  5c 20 95 e5                                      ldr r2, [r5, #0x5c]
006fbd50  00 c0 94 e5                                      ldr ip, [r4]
006fbd54  01 10 8f e0                                      add r1, pc, r1
006fbd58  00 30 a0 e3                                      mov r3, #0
006fbd5c  0f e0 a0 e1                                      mov lr, pc
006fbd60  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006fbd64  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
006fbd68  04 00 a0 e1                                      mov r0, r4
006fbd6c  60 20 95 e5                                      ldr r2, [r5, #0x60]
006fbd70  00 c0 94 e5                                      ldr ip, [r4]
006fbd74  01 10 8f e0                                      add r1, pc, r1
006fbd78  00 30 a0 e3                                      mov r3, #0
006fbd7c  0f e0 a0 e1                                      mov lr, pc
006fbd80  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006fbd84  70 10 9f e5                                      ldr r1, [pc, #0x70]
006fbd88  04 00 a0 e1                                      mov r0, r4
006fbd8c  64 20 95 e5                                      ldr r2, [r5, #0x64]
006fbd90  00 c0 94 e5                                      ldr ip, [r4]
006fbd94  01 10 8f e0                                      add r1, pc, r1
006fbd98  00 30 a0 e3                                      mov r3, #0
006fbd9c  0f e0 a0 e1                                      mov lr, pc
006fbda0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006fbda4  54 10 9f e5                                      ldr r1, [pc, #0x54]
006fbda8  04 00 a0 e1                                      mov r0, r4
006fbdac  68 20 95 e5                                      ldr r2, [r5, #0x68]
006fbdb0  00 c0 94 e5                                      ldr ip, [r4]
006fbdb4  01 10 8f e0                                      add r1, pc, r1
006fbdb8  00 30 a0 e3                                      mov r3, #0
006fbdbc  0f e0 a0 e1                                      mov lr, pc
006fbdc0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006fbdc4  38 10 9f e5                                      ldr r1, [pc, #0x38]
006fbdc8  04 00 a0 e1                                      mov r0, r4
006fbdcc  6c 20 95 e5                                      ldr r2, [r5, #0x6c]
006fbdd0  01 10 8f e0                                      add r1, pc, r1
006fbdd4  00 c0 94 e5                                      ldr ip, [r4]
006fbdd8  00 30 a0 e3                                      mov r3, #0
006fbddc  0f e0 a0 e1                                      mov lr, pc
006fbde0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
006fbde4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fbde8  34 95 1e 00 dc 5f 1f 00 d4 5f 1f 00 cc 5f 1f 00  .byte 0x34, 0x95, 0x1e, 0x00, 0xdc, 0x5f, 0x1f, 0x00, 0xd4, 0x5f, 0x1f, 0x00, 0xcc, 0x5f, 0x1f, 0x00
006fbdf8  bc 5f 1f 00 ac 5f 1f 00 9c 5f 1f 00 90 5f 1f 00  .byte 0xbc, 0x5f, 0x1f, 0x00, 0xac, 0x5f, 0x1f, 0x00, 0x9c, 0x5f, 0x1f, 0x00, 0x90, 0x5f, 0x1f, 0x00

; FUNCTION 0x006fbe08, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitterD1Ev
; demangled: glitch::scene::CParticlePointEmitter::~CParticlePointEmitter()
; decoder-mode: arm
006fbe08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fbe0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZTv0_n24_N6glitch5scene21CParticlePointEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticlePointEmitter::~CParticlePointEmitter()
; decoder-mode: arm
006fbe0c  00 30 90 e5                                      ldr r3, [r0]
006fbe10  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fbe14  03 00 80 e0                                      add r0, r0, r3
006fbe18  fa ff ff ea                                      b #0x6fbe08

; FUNCTION 0x006fbe1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZTv0_n12_N6glitch5scene21CParticlePointEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticlePointEmitter::~CParticlePointEmitter()
; decoder-mode: arm
006fbe1c  00 30 90 e5                                      ldr r3, [r0]
006fbe20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fbe24  03 00 80 e0                                      add r0, r0, r3
006fbe28  f6 ff ff ea                                      b #0x6fbe08

; FUNCTION 0x006fbe4c, declared_size=616, range_size=616, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticlePointEmitter::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006fbe4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006fbe50  02 50 a0 e1                                      mov r5, r2
006fbe54  34 22 9f e5                                      ldr r2, [pc, #0x234]
006fbe58  10 d0 4d e2                                      sub sp, sp, #0x10
006fbe5c  00 40 a0 e1                                      mov r4, r0
006fbe60  02 20 8f e0                                      add r2, pc, r2
006fbe64  04 00 8d e2                                      add r0, sp, #4
006fbe68  05 10 a0 e1                                      mov r1, r5
006fbe6c  00 30 95 e5                                      ldr r3, [r5]
006fbe70  0f e0 a0 e1                                      mov lr, pc
006fbe74  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
006fbe78  04 30 9d e5                                      ldr r3, [sp, #4]
006fbe7c  08 70 9d e5                                      ldr r7, [sp, #8]
006fbe80  0c 60 9d e5                                      ldr r6, [sp, #0xc]
006fbe84  03 10 a0 e1                                      mov r1, r3
006fbe88  03 00 a0 e1                                      mov r0, r3
006fbe8c  48 30 84 e5                                      str r3, [r4, #0x48]
006fbe90  4c 70 84 e5                                      str r7, [r4, #0x4c]
006fbe94  50 60 84 e5                                      str r6, [r4, #0x50]
006fbe98  b3 4b f0 eb                                      bl #0x30ed6c
006fbe9c  07 10 a0 e1                                      mov r1, r7
006fbea0  00 80 a0 e1                                      mov r8, r0
006fbea4  07 00 a0 e1                                      mov r0, r7
006fbea8  af 4b f0 eb                                      bl #0x30ed6c
006fbeac  00 10 a0 e1                                      mov r1, r0
006fbeb0  08 00 a0 e1                                      mov r0, r8
006fbeb4  3a 4b f0 eb                                      bl #0x30eba4
006fbeb8  06 10 a0 e1                                      mov r1, r6
006fbebc  00 70 a0 e1                                      mov r7, r0
006fbec0  06 00 a0 e1                                      mov r0, r6
006fbec4  a8 4b f0 eb                                      bl #0x30ed6c
006fbec8  00 10 a0 e1                                      mov r1, r0
006fbecc  07 00 a0 e1                                      mov r0, r7
006fbed0  33 4b f0 eb                                      bl #0x30eba4
006fbed4  72 4a f0 eb                                      bl #0x30e8a4
006fbed8  b8 48 f0 eb                                      bl #0x30e1c0
006fbedc  00 60 a0 e3                                      mov r6, #0
006fbee0  ee 49 f0 eb                                      bl #0x30e6a0
006fbee4  06 10 a0 e1                                      mov r1, r6
006fbee8  27 48 f0 eb                                      bl #0x30df8c
006fbeec  00 00 50 e3                                      cmp r0, #0
006fbef0  0a 37 0d 13                                      movwne r3, #0xd70a
006fbef4  98 11 9f e5                                      ldr r1, [pc, #0x198]
006fbef8  23 3c 43 13                                      movtne r3, #0x3c23
006fbefc  50 60 84 15                                      strne r6, [r4, #0x50]
006fbf00  48 60 84 15                                      strne r6, [r4, #0x48]
006fbf04  4c 30 84 15                                      strne r3, [r4, #0x4c]
006fbf08  00 30 95 e5                                      ldr r3, [r5]
006fbf0c  01 10 8f e0                                      add r1, pc, r1
006fbf10  05 00 a0 e1                                      mov r0, r5
006fbf14  0f e0 a0 e1                                      mov lr, pc
006fbf18  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006fbf1c  74 11 9f e5                                      ldr r1, [pc, #0x174]
006fbf20  54 00 84 e5                                      str r0, [r4, #0x54]
006fbf24  00 30 95 e5                                      ldr r3, [r5]
006fbf28  01 10 8f e0                                      add r1, pc, r1
006fbf2c  05 00 a0 e1                                      mov r0, r5
006fbf30  0f e0 a0 e1                                      mov lr, pc
006fbf34  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006fbf38  54 20 94 e5                                      ldr r2, [r4, #0x54]
006fbf3c  58 00 84 e5                                      str r0, [r4, #0x58]
006fbf40  01 00 52 e3                                      cmp r2, #1
006fbf44  01 20 a0 33                                      movlo r2, #1
006fbf48  00 00 50 e3                                      cmp r0, #0
006fbf4c  01 30 a0 03                                      moveq r3, #1
006fbf50  54 20 84 e5                                      str r2, [r4, #0x54]
006fbf54  58 30 84 05                                      streq r3, [r4, #0x58]
006fbf58  02 00 00 0a                                      beq #0x6fbf68
006fbf5c  c7 00 50 e3                                      cmp r0, #0xc7
006fbf60  00 30 a0 91                                      movls r3, r0
006fbf64  c8 30 a0 83                                      movhi r3, #0xc8
006fbf68  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
006fbf6c  03 00 52 e1                                      cmp r2, r3
006fbf70  54 20 84 95                                      strls r2, [r4, #0x54]
006fbf74  54 30 84 85                                      strhi r3, [r4, #0x54]
006fbf78  58 30 84 e5                                      str r3, [r4, #0x58]
006fbf7c  01 10 8f e0                                      add r1, pc, r1
006fbf80  00 30 95 e5                                      ldr r3, [r5]
006fbf84  05 00 a0 e1                                      mov r0, r5
006fbf88  0f e0 a0 e1                                      mov lr, pc
006fbf8c  24 f1 93 e5                                      ldr pc, [r3, #0x124]
006fbf90  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fbf94  5d 10 c4 e5                                      strb r1, [r4, #0x5d]
006fbf98  00 11 9f e5                                      ldr r1, [pc, #0x100]
006fbf9c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fbfa0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fbfa4  5e 20 c4 e5                                      strb r2, [r4, #0x5e]
006fbfa8  5c 00 c4 e5                                      strb r0, [r4, #0x5c]
006fbfac  5f 30 c4 e5                                      strb r3, [r4, #0x5f]
006fbfb0  01 10 8f e0                                      add r1, pc, r1
006fbfb4  00 30 95 e5                                      ldr r3, [r5]
006fbfb8  05 00 a0 e1                                      mov r0, r5
006fbfbc  0f e0 a0 e1                                      mov lr, pc
006fbfc0  24 f1 93 e5                                      ldr pc, [r3, #0x124]
006fbfc4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fbfc8  61 10 c4 e5                                      strb r1, [r4, #0x61]
006fbfcc  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
006fbfd0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fbfd4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fbfd8  62 20 c4 e5                                      strb r2, [r4, #0x62]
006fbfdc  60 00 c4 e5                                      strb r0, [r4, #0x60]
006fbfe0  63 30 c4 e5                                      strb r3, [r4, #0x63]
006fbfe4  01 10 8f e0                                      add r1, pc, r1
006fbfe8  00 30 95 e5                                      ldr r3, [r5]
006fbfec  05 00 a0 e1                                      mov r0, r5
006fbff0  0f e0 a0 e1                                      mov lr, pc
006fbff4  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006fbff8  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
006fbffc  64 00 84 e5                                      str r0, [r4, #0x64]
006fc000  00 30 95 e5                                      ldr r3, [r5]
006fc004  01 10 8f e0                                      add r1, pc, r1
006fc008  05 00 a0 e1                                      mov r0, r5
006fc00c  0f e0 a0 e1                                      mov lr, pc
006fc010  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006fc014  90 10 9f e5                                      ldr r1, [pc, #0x90]
006fc018  68 00 84 e5                                      str r0, [r4, #0x68]
006fc01c  00 30 95 e5                                      ldr r3, [r5]
006fc020  01 10 8f e0                                      add r1, pc, r1
006fc024  05 00 a0 e1                                      mov r0, r5
006fc028  0f e0 a0 e1                                      mov lr, pc
006fc02c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006fc030  64 30 94 e5                                      ldr r3, [r4, #0x64]
006fc034  6c 00 84 e5                                      str r0, [r4, #0x6c]
006fc038  00 00 53 e3                                      cmp r3, #0
006fc03c  0d 00 00 0a                                      beq #0x6fc078
006fc040  68 20 94 e5                                      ldr r2, [r4, #0x68]
006fc044  02 00 53 e1                                      cmp r3, r2
006fc048  68 30 84 85                                      strhi r3, [r4, #0x68]
006fc04c  03 20 a0 81                                      movhi r2, r3
006fc050  0a 00 00 9a                                      bls #0x6fc080
006fc054  54 10 9f e5                                      ldr r1, [pc, #0x54]
006fc058  64 20 84 e5                                      str r2, [r4, #0x64]
006fc05c  05 00 a0 e1                                      mov r0, r5
006fc060  01 10 8f e0                                      add r1, pc, r1
006fc064  00 30 95 e5                                      ldr r3, [r5]
006fc068  0f e0 a0 e1                                      mov lr, pc
006fc06c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006fc070  10 d0 8d e2                                      add sp, sp, #0x10
006fc074  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006fc078  68 20 94 e5                                      ldr r2, [r4, #0x68]
006fc07c  64 30 84 e5                                      str r3, [r4, #0x64]
006fc080  68 20 84 e5                                      str r2, [r4, #0x68]
006fc084  03 00 52 e1                                      cmp r2, r3
006fc088  03 20 a0 21                                      movhs r2, r3
006fc08c  f0 ff ff ea                                      b #0x6fc054
; mapping-symbol data/literal pool
006fc090  c8 93 1e 00 e4 5d 1f 00 e0 5d 1f 00 a4 5d 1f 00  .byte 0xc8, 0x93, 0x1e, 0x00, 0xe4, 0x5d, 0x1f, 0x00, 0xe0, 0x5d, 0x1f, 0x00, 0xa4, 0x5d, 0x1f, 0x00
006fc0a0  80 5d 1f 00 5c 5d 1f 00 4c 5d 1f 00 40 5d 1f 00  .byte 0x80, 0x5d, 0x1f, 0x00, 0x5c, 0x5d, 0x1f, 0x00, 0x4c, 0x5d, 0x1f, 0x00, 0x40, 0x5d, 0x1f, 0x00
006fc0b0  00 5d 1f 00                                      .byte 0x00, 0x5d, 0x1f, 0x00

; FUNCTION 0x006fc0b4, declared_size=652, range_size=652, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticlePointEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006fc0b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006fc0b8  00 40 a0 e1                                      mov r4, r0
006fc0bc  70 80 90 e5                                      ldr r8, [r0, #0x70]
006fc0c0  54 50 90 e5                                      ldr r5, [r0, #0x54]
006fc0c4  58 00 90 e5                                      ldr r0, [r0, #0x58]
006fc0c8  08 80 82 e0                                      add r8, r2, r8
006fc0cc  3c d0 4d e2                                      sub sp, sp, #0x3c
006fc0d0  05 a0 50 e0                                      subs sl, r0, r5
006fc0d4  01 60 a0 e1                                      mov r6, r1
006fc0d8  03 70 a0 e1                                      mov r7, r3
006fc0dc  70 80 84 e5                                      str r8, [r4, #0x70]
006fc0e0  86 00 00 1a                                      bne #0x6fc300
006fc0e4  05 00 a0 e1                                      mov r0, r5
006fc0e8  7c 48 f0 eb                                      bl #0x30e2e0
006fc0ec  00 a0 a0 e1                                      mov sl, r0
006fc0f0  08 00 a0 e1                                      mov r0, r8
006fc0f4  79 48 f0 eb                                      bl #0x30e2e0
006fc0f8  00 50 a0 e1                                      mov r5, r0
006fc0fc  11 03 a0 e3                                      mov r0, #0x44000000
006fc100  0a 10 a0 e1                                      mov r1, sl
006fc104  7a 08 80 e2                                      add r0, r0, #0x7a0000
006fc108  e1 4a f0 eb                                      bl #0x30ec94
006fc10c  00 10 a0 e1                                      mov r1, r0
006fc110  05 00 a0 e1                                      mov r0, r5
006fc114  77 48 f0 eb                                      bl #0x30e2f8
006fc118  00 00 50 e3                                      cmp r0, #0
006fc11c  75 00 00 0a                                      beq #0x6fc2f8
006fc120  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
006fc124  48 10 94 e5                                      ldr r1, [r4, #0x48]
006fc128  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
006fc12c  50 30 94 e5                                      ldr r3, [r4, #0x50]
006fc130  00 00 50 e3                                      cmp r0, #0
006fc134  00 00 a0 e3                                      mov r0, #0
006fc138  70 00 84 e5                                      str r0, [r4, #0x70]
006fc13c  1c 60 84 e5                                      str r6, [r4, #0x1c]
006fc140  10 10 84 e5                                      str r1, [r4, #0x10]
006fc144  14 20 84 e5                                      str r2, [r4, #0x14]
006fc148  18 30 84 e5                                      str r3, [r4, #0x18]
006fc14c  37 00 00 0a                                      beq #0x6fc230
006fc150  30 20 8d e5                                      str r2, [sp, #0x30]
006fc154  34 30 8d e5                                      str r3, [sp, #0x34]
006fc158  2c 10 8d e5                                      str r1, [sp, #0x2c]
006fc15c  28 3b fc eb                                      bl #0x60ae04
006fc160  6c a0 94 e5                                      ldr sl, [r4, #0x6c]
006fc164  2c 80 8d e2                                      add r8, sp, #0x2c
006fc168  00 50 a0 e3                                      mov r5, #0
006fc16c  8a 10 a0 e1                                      lsl r1, sl, #1
006fc170  e3 49 f0 eb                                      bl #0x30e904
006fc174  01 00 6a e0                                      rsb r0, sl, r1
006fc178  ec 4a f0 eb                                      bl #0x30ed30
006fc17c  00 20 a0 e1                                      mov r2, r0
006fc180  01 30 a0 e1                                      mov r3, r1
006fc184  08 00 a0 e1                                      mov r0, r8
006fc188  20 10 8d e2                                      add r1, sp, #0x20
006fc18c  00 10 8d e5                                      str r1, [sp]
006fc190  20 50 8d e5                                      str r5, [sp, #0x20]
006fc194  24 50 8d e5                                      str r5, [sp, #0x24]
006fc198  28 50 8d e5                                      str r5, [sp, #0x28]
006fc19c  96 d2 fc eb                                      bl #0x630bfc
006fc1a0  17 3b fc eb                                      bl #0x60ae04
006fc1a4  6c a0 94 e5                                      ldr sl, [r4, #0x6c]
006fc1a8  8a 10 a0 e1                                      lsl r1, sl, #1
006fc1ac  d4 49 f0 eb                                      bl #0x30e904
006fc1b0  01 00 6a e0                                      rsb r0, sl, r1
006fc1b4  dd 4a f0 eb                                      bl #0x30ed30
006fc1b8  00 20 a0 e1                                      mov r2, r0
006fc1bc  01 30 a0 e1                                      mov r3, r1
006fc1c0  08 00 a0 e1                                      mov r0, r8
006fc1c4  14 10 8d e2                                      add r1, sp, #0x14
006fc1c8  00 10 8d e5                                      str r1, [sp]
006fc1cc  14 50 8d e5                                      str r5, [sp, #0x14]
006fc1d0  18 50 8d e5                                      str r5, [sp, #0x18]
006fc1d4  1c 50 8d e5                                      str r5, [sp, #0x1c]
006fc1d8  c6 d2 fc eb                                      bl #0x630cf8
006fc1dc  08 3b fc eb                                      bl #0x60ae04
006fc1e0  6c a0 94 e5                                      ldr sl, [r4, #0x6c]
006fc1e4  8a 10 a0 e1                                      lsl r1, sl, #1
006fc1e8  c5 49 f0 eb                                      bl #0x30e904
006fc1ec  01 00 6a e0                                      rsb r0, sl, r1
006fc1f0  ce 4a f0 eb                                      bl #0x30ed30
006fc1f4  00 20 a0 e1                                      mov r2, r0
006fc1f8  01 30 a0 e1                                      mov r3, r1
006fc1fc  08 00 a0 e1                                      mov r0, r8
006fc200  08 10 8d e2                                      add r1, sp, #8
006fc204  00 10 8d e5                                      str r1, [sp]
006fc208  10 50 8d e5                                      str r5, [sp, #0x10]
006fc20c  08 50 8d e5                                      str r5, [sp, #8]
006fc210  0c 50 8d e5                                      str r5, [sp, #0xc]
006fc214  f3 d2 fc eb                                      bl #0x630de8
006fc218  30 20 9d e5                                      ldr r2, [sp, #0x30]
006fc21c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006fc220  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006fc224  14 20 84 e5                                      str r2, [r4, #0x14]
006fc228  18 30 84 e5                                      str r3, [r4, #0x18]
006fc22c  10 10 84 e5                                      str r1, [r4, #0x10]
006fc230  68 30 94 e5                                      ldr r3, [r4, #0x68]
006fc234  64 50 94 e5                                      ldr r5, [r4, #0x64]
006fc238  05 00 53 e1                                      cmp r3, r5
006fc23c  03 60 86 00                                      addeq r6, r6, r3
006fc240  20 60 84 05                                      streq r6, [r4, #0x20]
006fc244  07 00 00 0a                                      beq #0x6fc268
006fc248  ed 3a fc eb                                      bl #0x60ae04
006fc24c  64 30 94 e5                                      ldr r3, [r4, #0x64]
006fc250  68 10 94 e5                                      ldr r1, [r4, #0x68]
006fc254  05 60 86 e0                                      add r6, r6, r5
006fc258  01 10 63 e0                                      rsb r1, r3, r1
006fc25c  32 4a f0 eb                                      bl #0x30eb2c
006fc260  01 60 86 e0                                      add r6, r6, r1
006fc264  20 60 84 e5                                      str r6, [r4, #0x20]
006fc268  e5 3a fc eb                                      bl #0x60ae04
006fc26c  1f 35 08 e3                                      movw r3, #0x851f
006fc270  eb 31 45 e3                                      movt r3, #0x51eb
006fc274  93 20 c3 e0                                      smull r2, r3, r3, r0
006fc278  c0 2f a0 e1                                      asr r2, r0, #0x1f
006fc27c  c3 32 62 e0                                      rsb r3, r2, r3, asr #5
006fc280  64 20 a0 e3                                      mov r2, #0x64
006fc284  92 03 60 e0                                      mls r0, r2, r3, r0
006fc288  b5 49 f0 eb                                      bl #0x30e964
006fc28c  42 14 a0 e3                                      mov r1, #0x42000000
006fc290  32 17 81 e2                                      add r1, r1, #0xc80000
006fc294  7e 4a f0 eb                                      bl #0x30ec94
006fc298  5c 60 84 e2                                      add r6, r4, #0x5c
006fc29c  60 50 84 e2                                      add r5, r4, #0x60
006fc2a0  00 20 a0 e1                                      mov r2, r0
006fc2a4  05 10 a0 e1                                      mov r1, r5
006fc2a8  06 00 a0 e1                                      mov r0, r6
006fc2ac  36 13 f9 eb                                      bl #0x540f8c
006fc2b0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fc2b4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fc2b8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fc2bc  25 10 c4 e5                                      strb r1, [r4, #0x25]
006fc2c0  26 20 c4 e5                                      strb r2, [r4, #0x26]
006fc2c4  27 30 c4 e5                                      strb r3, [r4, #0x27]
006fc2c8  24 00 c4 e5                                      strb r0, [r4, #0x24]
006fc2cc  24 c0 94 e5                                      ldr ip, [r4, #0x24]
006fc2d0  10 00 94 e5                                      ldr r0, [r4, #0x10]
006fc2d4  14 10 94 e5                                      ldr r1, [r4, #0x14]
006fc2d8  18 20 94 e5                                      ldr r2, [r4, #0x18]
006fc2dc  04 30 84 e2                                      add r3, r4, #4
006fc2e0  2c 00 84 e5                                      str r0, [r4, #0x2c]
006fc2e4  28 c0 84 e5                                      str ip, [r4, #0x28]
006fc2e8  30 10 84 e5                                      str r1, [r4, #0x30]
006fc2ec  34 20 84 e5                                      str r2, [r4, #0x34]
006fc2f0  01 00 a0 e3                                      mov r0, #1
006fc2f4  00 30 87 e5                                      str r3, [r7]
006fc2f8  3c d0 8d e2                                      add sp, sp, #0x3c
006fc2fc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006fc300  bf 3a fc eb                                      bl #0x60ae04
006fc304  00 80 a0 e1                                      mov r8, r0
006fc308  05 00 a0 e1                                      mov r0, r5
006fc30c  f3 47 f0 eb                                      bl #0x30e2e0
006fc310  0a 10 a0 e1                                      mov r1, sl
006fc314  00 50 a0 e1                                      mov r5, r0
006fc318  08 00 a0 e1                                      mov r0, r8
006fc31c  02 4a f0 eb                                      bl #0x30eb2c
006fc320  01 00 a0 e1                                      mov r0, r1
006fc324  ed 47 f0 eb                                      bl #0x30e2e0
006fc328  00 10 a0 e1                                      mov r1, r0
006fc32c  05 00 a0 e1                                      mov r0, r5
006fc330  1b 4a f0 eb                                      bl #0x30eba4
006fc334  70 80 94 e5                                      ldr r8, [r4, #0x70]
006fc338  00 a0 a0 e1                                      mov sl, r0
006fc33c  6b ff ff ea                                      b #0x6fc0f0

; FUNCTION 0x006fc340, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZN6glitch5scene21CParticlePointEmitterD0Ev
; demangled: glitch::scene::CParticlePointEmitter::~CParticlePointEmitter()
; decoder-mode: arm
006fc340  40 30 9f e5                                      ldr r3, [pc, #0x40]
006fc344  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fc348  40 20 9f e5                                      ldr r2, [pc, #0x40]
006fc34c  03 30 8f e0                                      add r3, pc, r3
006fc350  01 10 93 e7                                      ldr r1, [r3, r1]
006fc354  10 40 2d e9                                      push {r4, lr}
006fc358  02 20 93 e7                                      ldr r2, [r3, r2]
006fc35c  04 c0 91 e5                                      ldr ip, [r1, #4]
006fc360  08 10 91 e5                                      ldr r1, [r1, #8]
006fc364  7c 20 82 e2                                      add r2, r2, #0x7c
006fc368  00 c0 80 e5                                      str ip, [r0]
006fc36c  78 20 80 e5                                      str r2, [r0, #0x78]
006fc370  1c 20 1c e5                                      ldr r2, [ip, #-0x1c]
006fc374  00 40 a0 e1                                      mov r4, r0
006fc378  02 10 80 e7                                      str r1, [r0, r2]
006fc37c  cb 47 f0 eb                                      bl #0x30e2b0
006fc380  04 00 a0 e1                                      mov r0, r4
006fc384  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fc388  44 87 29 00 cc 24 00 00 e8 4b 00 00              .byte 0x44, 0x87, 0x29, 0x00, 0xcc, 0x24, 0x00, 0x00, 0xe8, 0x4b, 0x00, 0x00

; FUNCTION 0x006fc394, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZTv0_n24_N6glitch5scene21CParticlePointEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticlePointEmitter::~CParticlePointEmitter()
; decoder-mode: arm
006fc394  00 30 90 e5                                      ldr r3, [r0]
006fc398  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fc39c  03 00 80 e0                                      add r0, r0, r3
006fc3a0  e6 ff ff ea                                      b #0x6fc340

; FUNCTION 0x006fc3a4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZTv0_n12_N6glitch5scene21CParticlePointEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticlePointEmitter::~CParticlePointEmitter()
; decoder-mode: arm
006fc3a4  00 30 90 e5                                      ldr r3, [r0]
006fc3a8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fc3ac  03 00 80 e0                                      add r0, r0, r3
006fc3b0  e2 ff ff ea                                      b #0x6fc340

; FUNCTION 0x006fc3b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticlePointEmitter
; alias: _ZTv0_n16_NK6glitch5scene21CParticlePointEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticlePointEmitter::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fc3b4  00 30 90 e5                                      ldr r3, [r0]
006fc3b8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006fc3bc  03 00 80 e0                                      add r0, r0, r3
006fc3c0  44 fe ff ea                                      b #0x6fbcd8
