; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fafd4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter21setUseNormalDirectionEb
; demangled: glitch::scene::CParticleMeshEmitter::setUseNormalDirection(bool)
; decoder-mode: arm
006fafd4  21 10 c0 e5                                      strb r1, [r0, #0x21]
006fafd8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fafdc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter12setDirectionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleMeshEmitter::setDirection(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fafdc  00 30 91 e5                                      ldr r3, [r1]
006fafe0  34 30 80 e5                                      str r3, [r0, #0x34]
006fafe4  04 30 91 e5                                      ldr r3, [r1, #4]
006fafe8  38 30 80 e5                                      str r3, [r0, #0x38]
006fafec  08 30 91 e5                                      ldr r3, [r1, #8]
006faff0  3c 30 80 e5                                      str r3, [r0, #0x3c]
006faff4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faff8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter26setNormalDirectionModifierEf
; demangled: glitch::scene::CParticleMeshEmitter::setNormalDirectionModifier(float)
; decoder-mode: arm
006faff8  24 10 80 e5                                      str r1, [r0, #0x24]
006faffc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb000, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter18setEveryMeshVertexEb
; demangled: glitch::scene::CParticleMeshEmitter::setEveryMeshVertex(bool)
; decoder-mode: arm
006fb000  20 10 c0 e5                                      strb r1, [r0, #0x20]
006fb004  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb008, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter24setMinParticlesPerSecondEj
; demangled: glitch::scene::CParticleMeshEmitter::setMinParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fb008  40 10 80 e5                                      str r1, [r0, #0x40]
006fb00c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb010, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter24setMaxParticlesPerSecondEj
; demangled: glitch::scene::CParticleMeshEmitter::setMaxParticlesPerSecond(unsigned int)
; decoder-mode: arm
006fb010  44 10 80 e5                                      str r1, [r0, #0x44]
006fb014  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb018, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter16setMinStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleMeshEmitter::setMinStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fb018  10 40 2d e9                                      push {r4, lr}
006fb01c  04 20 a0 e3                                      mov r2, #4
006fb020  48 00 80 e2                                      add r0, r0, #0x48
006fb024  0f 4e f0 eb                                      bl #0x30e868
006fb028  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fb02c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter16setMaxStartColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleMeshEmitter::setMaxStartColor(glitch::video::SColor const&)
; decoder-mode: arm
006fb02c  10 40 2d e9                                      push {r4, lr}
006fb030  04 20 a0 e3                                      mov r2, #4
006fb034  4c 00 80 e2                                      add r0, r0, #0x4c
006fb038  0a 4e f0 eb                                      bl #0x30e868
006fb03c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fb040, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter7getMeshEv
; demangled: glitch::scene::CParticleMeshEmitter::getMesh() const
; decoder-mode: arm
006fb040  04 00 80 e2                                      add r0, r0, #4
006fb044  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb048, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter22isUsingNormalDirectionEv
; demangled: glitch::scene::CParticleMeshEmitter::isUsingNormalDirection() const
; decoder-mode: arm
006fb048  21 00 d0 e5                                      ldrb r0, [r0, #0x21]
006fb04c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb050, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter12getDirectionEv
; demangled: glitch::scene::CParticleMeshEmitter::getDirection() const
; decoder-mode: arm
006fb050  34 00 80 e2                                      add r0, r0, #0x34
006fb054  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb058, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter26getNormalDirectionModifierEv
; demangled: glitch::scene::CParticleMeshEmitter::getNormalDirectionModifier() const
; decoder-mode: arm
006fb058  24 00 90 e5                                      ldr r0, [r0, #0x24]
006fb05c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb060, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter18getEveryMeshVertexEv
; demangled: glitch::scene::CParticleMeshEmitter::getEveryMeshVertex() const
; decoder-mode: arm
006fb060  20 00 d0 e5                                      ldrb r0, [r0, #0x20]
006fb064  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb068, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter24getMinParticlesPerSecondEv
; demangled: glitch::scene::CParticleMeshEmitter::getMinParticlesPerSecond() const
; decoder-mode: arm
006fb068  40 00 90 e5                                      ldr r0, [r0, #0x40]
006fb06c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb070, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter24getMaxParticlesPerSecondEv
; demangled: glitch::scene::CParticleMeshEmitter::getMaxParticlesPerSecond() const
; decoder-mode: arm
006fb070  44 00 90 e5                                      ldr r0, [r0, #0x44]
006fb074  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb078, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter16getMinStartColorEv
; demangled: glitch::scene::CParticleMeshEmitter::getMinStartColor() const
; decoder-mode: arm
006fb078  48 00 80 e2                                      add r0, r0, #0x48
006fb07c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb080, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter16getMaxStartColorEv
; demangled: glitch::scene::CParticleMeshEmitter::getMaxStartColor() const
; decoder-mode: arm
006fb080  4c 00 80 e2                                      add r0, r0, #0x4c
006fb084  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb088, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter21getUseNormalDirectionEv
; demangled: glitch::scene::CParticleMeshEmitter::getUseNormalDirection() const
; decoder-mode: arm
006fb088  21 00 d0 e5                                      ldrb r0, [r0, #0x21]
006fb08c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb090, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter11getMBNumberEv
; demangled: glitch::scene::CParticleMeshEmitter::getMBNumber() const
; decoder-mode: arm
006fb090  10 00 90 e5                                      ldr r0, [r0, #0x10]
006fb094  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb098, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter14getMinLifeTimeEv
; demangled: glitch::scene::CParticleMeshEmitter::getMinLifeTime() const
; decoder-mode: arm
006fb098  50 00 90 e5                                      ldr r0, [r0, #0x50]
006fb09c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb0a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter14getMaxLifeTimeEv
; demangled: glitch::scene::CParticleMeshEmitter::getMaxLifeTime() const
; decoder-mode: arm
006fb0a0  54 00 90 e5                                      ldr r0, [r0, #0x54]
006fb0a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb0a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZNK6glitch5scene20CParticleMeshEmitter18getMaxAngleDegreesEv
; demangled: glitch::scene::CParticleMeshEmitter::getMaxAngleDegrees() const
; decoder-mode: arm
006fb0a8  60 00 90 e5                                      ldr r0, [r0, #0x60]
006fb0ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb0d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter5emittEjjRPNS0_9SParticleE
; demangled: glitch::scene::CParticleMeshEmitter::emitt(unsigned int, unsigned int, glitch::scene::SParticle*&)
; decoder-mode: arm
006fb0d4  00 00 a0 e3                                      mov r0, #0
006fb0d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fb0fc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitterD1Ev
; demangled: glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter()
; decoder-mode: arm
006fb0fc  10 40 2d e9                                      push {r4, lr}
006fb100  54 20 9f e5                                      ldr r2, [pc, #0x54]
006fb104  54 30 9f e5                                      ldr r3, [pc, #0x54]
006fb108  00 40 a0 e1                                      mov r4, r0
006fb10c  02 20 8f e0                                      add r2, pc, r2
006fb110  28 00 90 e5                                      ldr r0, [r0, #0x28]
006fb114  03 30 92 e7                                      ldr r3, [r2, r3]
006fb118  00 00 50 e3                                      cmp r0, #0
006fb11c  a4 20 83 e2                                      add r2, r3, #0xa4
006fb120  1c 30 83 e2                                      add r3, r3, #0x1c
006fb124  00 30 84 e5                                      str r3, [r4]
006fb128  64 20 84 e5                                      str r2, [r4, #0x64]
006fb12c  00 00 00 0a                                      beq #0x6fb134
006fb130  c6 54 f0 eb                                      bl #0x310450
006fb134  14 00 94 e5                                      ldr r0, [r4, #0x14]
006fb138  00 00 50 e3                                      cmp r0, #0
006fb13c  00 00 00 0a                                      beq #0x6fb144
006fb140  c2 54 f0 eb                                      bl #0x310450
006fb144  04 00 94 e5                                      ldr r0, [r4, #4]
006fb148  00 00 50 e3                                      cmp r0, #0
006fb14c  00 00 00 0a                                      beq #0x6fb154
006fb150  0b 89 f0 eb                                      bl #0x31d584
006fb154  04 00 a0 e1                                      mov r0, r4
006fb158  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006fb15c  84 99 29 00 88 3e 00 00                          .byte 0x84, 0x99, 0x29, 0x00, 0x88, 0x3e, 0x00, 0x00

; FUNCTION 0x006fb164, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZTv0_n24_N6glitch5scene20CParticleMeshEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter()
; decoder-mode: arm
006fb164  00 30 90 e5                                      ldr r3, [r0]
006fb168  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fb16c  03 00 80 e0                                      add r0, r0, r3
006fb170  e1 ff ff ea                                      b #0x6fb0fc

; FUNCTION 0x006fb174, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZTv0_n12_N6glitch5scene20CParticleMeshEmitterD1Ev
; demangled: virtual thunk to glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter()
; decoder-mode: arm
006fb174  00 30 90 e5                                      ldr r3, [r0]
006fb178  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fb17c  03 00 80 e0                                      add r0, r0, r3
006fb180  dd ff ff ea                                      b #0x6fb0fc

; FUNCTION 0x006fb184, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitterD0Ev
; demangled: glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter()
; decoder-mode: arm
006fb184  10 40 2d e9                                      push {r4, lr}
006fb188  00 40 a0 e1                                      mov r4, r0
006fb18c  da ff ff eb                                      bl #0x6fb0fc
006fb190  04 00 a0 e1                                      mov r0, r4
006fb194  45 4c f0 eb                                      bl #0x30e2b0
006fb198  04 00 a0 e1                                      mov r0, r4
006fb19c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fb1a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZTv0_n24_N6glitch5scene20CParticleMeshEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter()
; decoder-mode: arm
006fb1a0  00 30 90 e5                                      ldr r3, [r0]
006fb1a4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fb1a8  03 00 80 e0                                      add r0, r0, r3
006fb1ac  f4 ff ff ea                                      b #0x6fb184

; FUNCTION 0x006fb1b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZTv0_n12_N6glitch5scene20CParticleMeshEmitterD0Ev
; demangled: virtual thunk to glitch::scene::CParticleMeshEmitter::~CParticleMeshEmitter()
; decoder-mode: arm
006fb1b0  00 30 90 e5                                      ldr r3, [r0]
006fb1b4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fb1b8  03 00 80 e0                                      add r0, r0, r3
006fb1bc  f0 ff ff ea                                      b #0x6fb184

; FUNCTION 0x006fb2e4, declared_size=664, range_size=664, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitterC2ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESH_jji
; demangled: glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(boost::intrusive_ptr<glitch::scene::IMesh const> const&, bool, glitch::core::vector3d<float> const&, float, int, bool, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006fb2e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fb2e8  04 e0 81 e2                                      add lr, r1, #4
006fb2ec  04 c0 9e e5                                      ldr ip, [lr, #4]
006fb2f0  00 40 a0 e1                                      mov r4, r0
006fb2f4  04 00 8e e2                                      add r0, lr, #4
006fb2f8  00 c0 84 e5                                      str ip, [r4]
006fb2fc  1c 50 1c e5                                      ldr r5, [ip, #-0x1c]
006fb300  04 60 90 e5                                      ldr r6, [r0, #4]
006fb304  24 d0 4d e2                                      sub sp, sp, #0x24
006fb308  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006fb30c  05 60 84 e7                                      str r6, [r4, r5]
006fb310  00 60 94 e5                                      ldr r6, [r4]
006fb314  08 50 90 e5                                      ldr r5, [r0, #8]
006fb318  0c 00 16 e5                                      ldr r0, [r6, #-0xc]
006fb31c  00 50 84 e7                                      str r5, [r4, r0]
006fb320  04 00 91 e5                                      ldr r0, [r1, #4]
006fb324  00 00 84 e5                                      str r0, [r4]
006fb328  10 50 9e e5                                      ldr r5, [lr, #0x10]
006fb32c  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006fb330  00 50 84 e7                                      str r5, [r4, r0]
006fb334  00 00 94 e5                                      ldr r0, [r4]
006fb338  14 50 9e e5                                      ldr r5, [lr, #0x14]
006fb33c  0c e0 10 e5                                      ldr lr, [r0, #-0xc]
006fb340  54 00 dd e5                                      ldrb r0, [sp, #0x54]
006fb344  0e 50 84 e7                                      str r5, [r4, lr]
006fb348  00 e0 91 e5                                      ldr lr, [r1]
006fb34c  00 e0 84 e5                                      str lr, [r4]
006fb350  1c 50 91 e5                                      ldr r5, [r1, #0x1c]
006fb354  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
006fb358  0e 50 84 e7                                      str r5, [r4, lr]
006fb35c  00 50 94 e5                                      ldr r5, [r4]
006fb360  20 e0 91 e5                                      ldr lr, [r1, #0x20]
006fb364  0c 10 15 e5                                      ldr r1, [r5, #-0xc]
006fb368  00 50 a0 e3                                      mov r5, #0
006fb36c  01 e0 84 e7                                      str lr, [r4, r1]
006fb370  00 20 92 e5                                      ldr r2, [r2]
006fb374  00 00 52 e3                                      cmp r2, #0
006fb378  04 20 84 e5                                      str r2, [r4, #4]
006fb37c  04 10 92 15                                      ldrne r1, [r2, #4]
006fb380  01 10 81 12                                      addne r1, r1, #1
006fb384  04 10 82 15                                      strne r1, [r2, #4]
006fb388  50 20 9d e5                                      ldr r2, [sp, #0x50]
006fb38c  20 00 c4 e5                                      strb r0, [r4, #0x20]
006fb390  21 30 c4 e5                                      strb r3, [r4, #0x21]
006fb394  10 20 84 e5                                      str r2, [r4, #0x10]
006fb398  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006fb39c  08 50 84 e5                                      str r5, [r4, #8]
006fb3a0  0c 50 84 e5                                      str r5, [r4, #0xc]
006fb3a4  24 30 84 e5                                      str r3, [r4, #0x24]
006fb3a8  14 50 84 e5                                      str r5, [r4, #0x14]
006fb3ac  18 50 84 e5                                      str r5, [r4, #0x18]
006fb3b0  1c 50 84 e5                                      str r5, [r4, #0x1c]
006fb3b4  28 50 84 e5                                      str r5, [r4, #0x28]
006fb3b8  2c 50 84 e5                                      str r5, [r4, #0x2c]
006fb3bc  30 50 84 e5                                      str r5, [r4, #0x30]
006fb3c0  00 30 9c e5                                      ldr r3, [ip]
006fb3c4  60 10 9d e5                                      ldr r1, [sp, #0x60]
006fb3c8  04 20 a0 e3                                      mov r2, #4
006fb3cc  34 30 84 e5                                      str r3, [r4, #0x34]
006fb3d0  04 30 9c e5                                      ldr r3, [ip, #4]
006fb3d4  48 00 84 e2                                      add r0, r4, #0x48
006fb3d8  38 30 84 e5                                      str r3, [r4, #0x38]
006fb3dc  08 30 9c e5                                      ldr r3, [ip, #8]
006fb3e0  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006fb3e4  40 c0 84 e5                                      str ip, [r4, #0x40]
006fb3e8  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006fb3ec  3c 30 84 e5                                      str r3, [r4, #0x3c]
006fb3f0  44 c0 84 e5                                      str ip, [r4, #0x44]
006fb3f4  1b 4d f0 eb                                      bl #0x30e868
006fb3f8  64 10 9d e5                                      ldr r1, [sp, #0x64]
006fb3fc  04 20 a0 e3                                      mov r2, #4
006fb400  4c 00 84 e2                                      add r0, r4, #0x4c
006fb404  17 4d f0 eb                                      bl #0x30e868
006fb408  68 20 9d e5                                      ldr r2, [sp, #0x68]
006fb40c  04 30 94 e5                                      ldr r3, [r4, #4]
006fb410  50 20 84 e5                                      str r2, [r4, #0x50]
006fb414  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006fb418  03 00 a0 e1                                      mov r0, r3
006fb41c  54 20 84 e5                                      str r2, [r4, #0x54]
006fb420  70 20 9d e5                                      ldr r2, [sp, #0x70]
006fb424  58 50 84 e5                                      str r5, [r4, #0x58]
006fb428  5c 50 84 e5                                      str r5, [r4, #0x5c]
006fb42c  60 20 84 e5                                      str r2, [r4, #0x60]
006fb430  00 30 93 e5                                      ldr r3, [r3]
006fb434  0f e0 a0 e1                                      mov lr, pc
006fb438  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fb43c  05 00 50 e1                                      cmp r0, r5
006fb440  0c 00 84 e5                                      str r0, [r4, #0xc]
006fb444  49 00 00 0a                                      beq #0x6fb570
006fb448  18 30 8d e2                                      add r3, sp, #0x18
006fb44c  14 b0 84 e2                                      add fp, r4, #0x14
006fb450  1c 80 8d e2                                      add r8, sp, #0x1c
006fb454  10 70 8d e2                                      add r7, sp, #0x10
006fb458  14 a0 8d e2                                      add sl, sp, #0x14
006fb45c  0c 90 8d e2                                      add sb, sp, #0xc
006fb460  04 30 8d e5                                      str r3, [sp, #4]
006fb464  26 00 00 ea                                      b #0x6fb504
006fb468  00 60 81 e5                                      str r6, [r1]
006fb46c  18 30 94 e5                                      ldr r3, [r4, #0x18]
006fb470  04 30 83 e2                                      add r3, r3, #4
006fb474  18 30 84 e5                                      str r3, [r4, #0x18]
006fb478  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006fb47c  00 00 50 e3                                      cmp r0, #0
006fb480  00 00 00 0a                                      beq #0x6fb488
006fb484  3e 88 f0 eb                                      bl #0x31d584
006fb488  04 30 94 e5                                      ldr r3, [r4, #4]
006fb48c  05 20 a0 e1                                      mov r2, r5
006fb490  0a 00 a0 e1                                      mov r0, sl
006fb494  03 10 a0 e1                                      mov r1, r3
006fb498  00 30 93 e5                                      ldr r3, [r3]
006fb49c  08 60 94 e5                                      ldr r6, [r4, #8]
006fb4a0  0f e0 a0 e1                                      mov lr, pc
006fb4a4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006fb4a8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006fb4ac  09 00 a0 e1                                      mov r0, sb
006fb4b0  14 30 93 e5                                      ldr r3, [r3, #0x14]
006fb4b4  00 00 53 e3                                      cmp r3, #0
006fb4b8  0c 30 8d e5                                      str r3, [sp, #0xc]
006fb4bc  00 20 93 15                                      ldrne r2, [r3]
006fb4c0  01 20 82 12                                      addne r2, r2, #1
006fb4c4  00 20 83 15                                      strne r2, [r3]
006fb4c8  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
006fb4cc  08 30 93 e5                                      ldr r3, [r3, #8]
006fb4d0  00 30 8d e5                                      str r3, [sp]
006fb4d4  ad 8d f1 eb                                      bl #0x35eb90
006fb4d8  14 00 9d e5                                      ldr r0, [sp, #0x14]
006fb4dc  00 30 9d e5                                      ldr r3, [sp]
006fb4e0  00 00 50 e3                                      cmp r0, #0
006fb4e4  03 60 86 e0                                      add r6, r6, r3
006fb4e8  08 60 84 e5                                      str r6, [r4, #8]
006fb4ec  00 00 00 0a                                      beq #0x6fb4f4
006fb4f0  23 88 f0 eb                                      bl #0x31d584
006fb4f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006fb4f8  01 50 85 e2                                      add r5, r5, #1
006fb4fc  05 00 53 e1                                      cmp r3, r5
006fb500  1a 00 00 9a                                      bls #0x6fb570
006fb504  04 30 94 e5                                      ldr r3, [r4, #4]
006fb508  05 20 a0 e1                                      mov r2, r5
006fb50c  08 00 a0 e1                                      mov r0, r8
006fb510  03 10 a0 e1                                      mov r1, r3
006fb514  00 30 93 e5                                      ldr r3, [r3]
006fb518  0f e0 a0 e1                                      mov lr, pc
006fb51c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006fb520  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006fb524  07 00 a0 e1                                      mov r0, r7
006fb528  14 30 93 e5                                      ldr r3, [r3, #0x14]
006fb52c  00 00 53 e3                                      cmp r3, #0
006fb530  10 30 8d e5                                      str r3, [sp, #0x10]
006fb534  00 20 93 15                                      ldrne r2, [r3]
006fb538  01 20 82 12                                      addne r2, r2, #1
006fb53c  00 20 83 15                                      strne r2, [r3]
006fb540  10 30 9d 15                                      ldrne r3, [sp, #0x10]
006fb544  08 60 93 e5                                      ldr r6, [r3, #8]
006fb548  90 8d f1 eb                                      bl #0x35eb90
006fb54c  18 10 94 e5                                      ldr r1, [r4, #0x18]
006fb550  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006fb554  18 60 8d e5                                      str r6, [sp, #0x18]
006fb558  03 00 51 e1                                      cmp r1, r3
006fb55c  c1 ff ff 1a                                      bne #0x6fb468
006fb560  0b 00 a0 e1                                      mov r0, fp
006fb564  04 20 9d e5                                      ldr r2, [sp, #4]
006fb568  14 ff ff eb                                      bl #0x6fb1c0
006fb56c  c1 ff ff ea                                      b #0x6fb478
006fb570  04 00 a0 e1                                      mov r0, r4
006fb574  24 d0 8d e2                                      add sp, sp, #0x24
006fb578  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006fb57c, declared_size=396, range_size=396, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitter7setMeshERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
; demangled: glitch::scene::CParticleMeshEmitter::setMesh(boost::intrusive_ptr<glitch::scene::IMesh const> const&)
; decoder-mode: arm
006fb57c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fb580  00 30 91 e5                                      ldr r3, [r1]
006fb584  00 40 a0 e1                                      mov r4, r0
006fb588  24 d0 4d e2                                      sub sp, sp, #0x24
006fb58c  00 00 53 e3                                      cmp r3, #0
006fb590  04 20 93 15                                      ldrne r2, [r3, #4]
006fb594  01 20 82 12                                      addne r2, r2, #1
006fb598  04 20 83 15                                      strne r2, [r3, #4]
006fb59c  04 00 90 e5                                      ldr r0, [r0, #4]
006fb5a0  04 30 84 e5                                      str r3, [r4, #4]
006fb5a4  00 00 50 e3                                      cmp r0, #0
006fb5a8  01 00 00 0a                                      beq #0x6fb5b4
006fb5ac  f4 87 f0 eb                                      bl #0x31d584
006fb5b0  04 30 94 e5                                      ldr r3, [r4, #4]
006fb5b4  00 50 a0 e3                                      mov r5, #0
006fb5b8  08 50 84 e5                                      str r5, [r4, #8]
006fb5bc  03 00 a0 e1                                      mov r0, r3
006fb5c0  00 30 93 e5                                      ldr r3, [r3]
006fb5c4  0f e0 a0 e1                                      mov lr, pc
006fb5c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fb5cc  05 00 50 e1                                      cmp r0, r5
006fb5d0  0c 00 84 e5                                      str r0, [r4, #0xc]
006fb5d4  49 00 00 0a                                      beq #0x6fb700
006fb5d8  18 30 8d e2                                      add r3, sp, #0x18
006fb5dc  14 b0 84 e2                                      add fp, r4, #0x14
006fb5e0  1c 80 8d e2                                      add r8, sp, #0x1c
006fb5e4  10 70 8d e2                                      add r7, sp, #0x10
006fb5e8  14 a0 8d e2                                      add sl, sp, #0x14
006fb5ec  0c 90 8d e2                                      add sb, sp, #0xc
006fb5f0  04 30 8d e5                                      str r3, [sp, #4]
006fb5f4  26 00 00 ea                                      b #0x6fb694
006fb5f8  00 60 81 e5                                      str r6, [r1]
006fb5fc  18 30 94 e5                                      ldr r3, [r4, #0x18]
006fb600  04 30 83 e2                                      add r3, r3, #4
006fb604  18 30 84 e5                                      str r3, [r4, #0x18]
006fb608  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006fb60c  00 00 50 e3                                      cmp r0, #0
006fb610  00 00 00 0a                                      beq #0x6fb618
006fb614  da 87 f0 eb                                      bl #0x31d584
006fb618  04 30 94 e5                                      ldr r3, [r4, #4]
006fb61c  05 20 a0 e1                                      mov r2, r5
006fb620  0a 00 a0 e1                                      mov r0, sl
006fb624  03 10 a0 e1                                      mov r1, r3
006fb628  00 30 93 e5                                      ldr r3, [r3]
006fb62c  08 60 94 e5                                      ldr r6, [r4, #8]
006fb630  0f e0 a0 e1                                      mov lr, pc
006fb634  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006fb638  14 30 9d e5                                      ldr r3, [sp, #0x14]
006fb63c  09 00 a0 e1                                      mov r0, sb
006fb640  14 30 93 e5                                      ldr r3, [r3, #0x14]
006fb644  00 00 53 e3                                      cmp r3, #0
006fb648  0c 30 8d e5                                      str r3, [sp, #0xc]
006fb64c  00 20 93 15                                      ldrne r2, [r3]
006fb650  01 20 82 12                                      addne r2, r2, #1
006fb654  00 20 83 15                                      strne r2, [r3]
006fb658  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
006fb65c  08 30 93 e5                                      ldr r3, [r3, #8]
006fb660  00 30 8d e5                                      str r3, [sp]
006fb664  49 8d f1 eb                                      bl #0x35eb90
006fb668  14 00 9d e5                                      ldr r0, [sp, #0x14]
006fb66c  00 30 9d e5                                      ldr r3, [sp]
006fb670  00 00 50 e3                                      cmp r0, #0
006fb674  03 60 86 e0                                      add r6, r6, r3
006fb678  08 60 84 e5                                      str r6, [r4, #8]
006fb67c  00 00 00 0a                                      beq #0x6fb684
006fb680  bf 87 f0 eb                                      bl #0x31d584
006fb684  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006fb688  01 50 85 e2                                      add r5, r5, #1
006fb68c  05 00 53 e1                                      cmp r3, r5
006fb690  1a 00 00 9a                                      bls #0x6fb700
006fb694  04 30 94 e5                                      ldr r3, [r4, #4]
006fb698  05 20 a0 e1                                      mov r2, r5
006fb69c  08 00 a0 e1                                      mov r0, r8
006fb6a0  03 10 a0 e1                                      mov r1, r3
006fb6a4  00 30 93 e5                                      ldr r3, [r3]
006fb6a8  0f e0 a0 e1                                      mov lr, pc
006fb6ac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006fb6b0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006fb6b4  07 00 a0 e1                                      mov r0, r7
006fb6b8  14 30 93 e5                                      ldr r3, [r3, #0x14]
006fb6bc  00 00 53 e3                                      cmp r3, #0
006fb6c0  10 30 8d e5                                      str r3, [sp, #0x10]
006fb6c4  00 20 93 15                                      ldrne r2, [r3]
006fb6c8  01 20 82 12                                      addne r2, r2, #1
006fb6cc  00 20 83 15                                      strne r2, [r3]
006fb6d0  10 30 9d 15                                      ldrne r3, [sp, #0x10]
006fb6d4  08 60 93 e5                                      ldr r6, [r3, #8]
006fb6d8  2c 8d f1 eb                                      bl #0x35eb90
006fb6dc  18 10 94 e5                                      ldr r1, [r4, #0x18]
006fb6e0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006fb6e4  18 60 8d e5                                      str r6, [sp, #0x18]
006fb6e8  03 00 51 e1                                      cmp r1, r3
006fb6ec  c1 ff ff 1a                                      bne #0x6fb5f8
006fb6f0  0b 00 a0 e1                                      mov r0, fp
006fb6f4  04 20 9d e5                                      ldr r2, [sp, #4]
006fb6f8  b0 fe ff eb                                      bl #0x6fb1c0
006fb6fc  c1 ff ff ea                                      b #0x6fb608
006fb700  24 d0 8d e2                                      add sp, sp, #0x24
006fb704  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006fb708, declared_size=716, range_size=716, mode=arm
; class-group: glitch::scene::CParticleMeshEmitter
; alias: _ZN6glitch5scene20CParticleMeshEmitterC1ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESH_jji
; demangled: glitch::scene::CParticleMeshEmitter::CParticleMeshEmitter(boost::intrusive_ptr<glitch::scene::IMesh const> const&, bool, glitch::core::vector3d<float> const&, float, int, bool, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006fb708  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fb70c  b0 e2 9f e5                                      ldr lr, [pc, #0x2b0]
006fb710  b0 c2 9f e5                                      ldr ip, [pc, #0x2b0]
006fb714  b0 52 9f e5                                      ldr r5, [pc, #0x2b0]
006fb718  0e e0 8f e0                                      add lr, pc, lr
006fb71c  0c c0 9e e7                                      ldr ip, [lr, ip]
006fb720  05 50 9e e7                                      ldr r5, [lr, r5]
006fb724  00 40 a0 e1                                      mov r4, r0
006fb728  24 00 9c e5                                      ldr r0, [ip, #0x24]
006fb72c  08 50 85 e2                                      add r5, r5, #8
006fb730  01 60 a0 e3                                      mov r6, #1
006fb734  00 00 84 e5                                      str r0, [r4]
006fb738  64 50 84 e5                                      str r5, [r4, #0x64]
006fb73c  68 60 84 e5                                      str r6, [r4, #0x68]
006fb740  0c 60 10 e5                                      ldr r6, [r0, #-0xc]
006fb744  28 70 9c e5                                      ldr r7, [ip, #0x28]
006fb748  08 00 9c e5                                      ldr r0, [ip, #8]
006fb74c  0c 80 9c e5                                      ldr r8, [ip, #0xc]
006fb750  06 70 84 e7                                      str r7, [r4, r6]
006fb754  00 00 84 e5                                      str r0, [r4]
006fb758  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006fb75c  04 50 9c e5                                      ldr r5, [ip, #4]
006fb760  10 70 9c e5                                      ldr r7, [ip, #0x10]
006fb764  00 80 84 e7                                      str r8, [r4, r0]
006fb768  00 80 94 e5                                      ldr r8, [r4]
006fb76c  14 60 9c e5                                      ldr r6, [ip, #0x14]
006fb770  58 02 9f e5                                      ldr r0, [pc, #0x258]
006fb774  0c 80 18 e5                                      ldr r8, [r8, #-0xc]
006fb778  18 c0 9c e5                                      ldr ip, [ip, #0x18]
006fb77c  00 00 9e e7                                      ldr r0, [lr, r0]
006fb780  08 70 84 e7                                      str r7, [r4, r8]
006fb784  00 50 84 e5                                      str r5, [r4]
006fb788  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006fb78c  24 d0 4d e2                                      sub sp, sp, #0x24
006fb790  05 60 84 e7                                      str r6, [r4, r5]
006fb794  00 50 94 e5                                      ldr r5, [r4]
006fb798  50 60 dd e5                                      ldrb r6, [sp, #0x50]
006fb79c  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
006fb7a0  05 c0 84 e7                                      str ip, [r4, r5]
006fb7a4  a4 c0 80 e2                                      add ip, r0, #0xa4
006fb7a8  1c 00 80 e2                                      add r0, r0, #0x1c
006fb7ac  00 00 84 e5                                      str r0, [r4]
006fb7b0  64 c0 84 e5                                      str ip, [r4, #0x64]
006fb7b4  00 10 91 e5                                      ldr r1, [r1]
006fb7b8  00 50 a0 e3                                      mov r5, #0
006fb7bc  00 00 51 e3                                      cmp r1, #0
006fb7c0  04 10 84 e5                                      str r1, [r4, #4]
006fb7c4  04 00 91 15                                      ldrne r0, [r1, #4]
006fb7c8  01 00 80 12                                      addne r0, r0, #1
006fb7cc  04 00 81 15                                      strne r0, [r1, #4]
006fb7d0  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006fb7d4  20 60 c4 e5                                      strb r6, [r4, #0x20]
006fb7d8  21 20 c4 e5                                      strb r2, [r4, #0x21]
006fb7dc  10 10 84 e5                                      str r1, [r4, #0x10]
006fb7e0  48 20 9d e5                                      ldr r2, [sp, #0x48]
006fb7e4  08 50 84 e5                                      str r5, [r4, #8]
006fb7e8  0c 50 84 e5                                      str r5, [r4, #0xc]
006fb7ec  24 20 84 e5                                      str r2, [r4, #0x24]
006fb7f0  14 50 84 e5                                      str r5, [r4, #0x14]
006fb7f4  18 50 84 e5                                      str r5, [r4, #0x18]
006fb7f8  1c 50 84 e5                                      str r5, [r4, #0x1c]
006fb7fc  28 50 84 e5                                      str r5, [r4, #0x28]
006fb800  2c 50 84 e5                                      str r5, [r4, #0x2c]
006fb804  30 50 84 e5                                      str r5, [r4, #0x30]
006fb808  00 00 93 e5                                      ldr r0, [r3]
006fb80c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006fb810  04 20 a0 e3                                      mov r2, #4
006fb814  34 00 84 e5                                      str r0, [r4, #0x34]
006fb818  04 c0 93 e5                                      ldr ip, [r3, #4]
006fb81c  48 00 84 e2                                      add r0, r4, #0x48
006fb820  38 c0 84 e5                                      str ip, [r4, #0x38]
006fb824  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006fb828  08 30 93 e5                                      ldr r3, [r3, #8]
006fb82c  40 c0 84 e5                                      str ip, [r4, #0x40]
006fb830  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006fb834  3c 30 84 e5                                      str r3, [r4, #0x3c]
006fb838  44 c0 84 e5                                      str ip, [r4, #0x44]
006fb83c  09 4c f0 eb                                      bl #0x30e868
006fb840  60 10 9d e5                                      ldr r1, [sp, #0x60]
006fb844  04 20 a0 e3                                      mov r2, #4
006fb848  4c 00 84 e2                                      add r0, r4, #0x4c
006fb84c  05 4c f0 eb                                      bl #0x30e868
006fb850  64 20 9d e5                                      ldr r2, [sp, #0x64]
006fb854  04 30 94 e5                                      ldr r3, [r4, #4]
006fb858  50 20 84 e5                                      str r2, [r4, #0x50]
006fb85c  68 20 9d e5                                      ldr r2, [sp, #0x68]
006fb860  03 00 a0 e1                                      mov r0, r3
006fb864  54 20 84 e5                                      str r2, [r4, #0x54]
006fb868  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006fb86c  58 50 84 e5                                      str r5, [r4, #0x58]
006fb870  5c 50 84 e5                                      str r5, [r4, #0x5c]
006fb874  60 20 84 e5                                      str r2, [r4, #0x60]
006fb878  00 30 93 e5                                      ldr r3, [r3]
006fb87c  0f e0 a0 e1                                      mov lr, pc
006fb880  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fb884  05 00 50 e1                                      cmp r0, r5
006fb888  0c 00 84 e5                                      str r0, [r4, #0xc]
006fb88c  49 00 00 0a                                      beq #0x6fb9b8
006fb890  18 30 8d e2                                      add r3, sp, #0x18
006fb894  14 b0 84 e2                                      add fp, r4, #0x14
006fb898  1c 80 8d e2                                      add r8, sp, #0x1c
006fb89c  10 70 8d e2                                      add r7, sp, #0x10
006fb8a0  14 a0 8d e2                                      add sl, sp, #0x14
006fb8a4  0c 90 8d e2                                      add sb, sp, #0xc
006fb8a8  04 30 8d e5                                      str r3, [sp, #4]
006fb8ac  26 00 00 ea                                      b #0x6fb94c
006fb8b0  00 60 81 e5                                      str r6, [r1]
006fb8b4  18 30 94 e5                                      ldr r3, [r4, #0x18]
006fb8b8  04 30 83 e2                                      add r3, r3, #4
006fb8bc  18 30 84 e5                                      str r3, [r4, #0x18]
006fb8c0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006fb8c4  00 00 50 e3                                      cmp r0, #0
006fb8c8  00 00 00 0a                                      beq #0x6fb8d0
006fb8cc  2c 87 f0 eb                                      bl #0x31d584
006fb8d0  04 30 94 e5                                      ldr r3, [r4, #4]
006fb8d4  05 20 a0 e1                                      mov r2, r5
006fb8d8  0a 00 a0 e1                                      mov r0, sl
006fb8dc  03 10 a0 e1                                      mov r1, r3
006fb8e0  00 30 93 e5                                      ldr r3, [r3]
006fb8e4  08 60 94 e5                                      ldr r6, [r4, #8]
006fb8e8  0f e0 a0 e1                                      mov lr, pc
006fb8ec  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006fb8f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006fb8f4  09 00 a0 e1                                      mov r0, sb
006fb8f8  14 30 93 e5                                      ldr r3, [r3, #0x14]
006fb8fc  00 00 53 e3                                      cmp r3, #0
006fb900  0c 30 8d e5                                      str r3, [sp, #0xc]
006fb904  00 20 93 15                                      ldrne r2, [r3]
006fb908  01 20 82 12                                      addne r2, r2, #1
006fb90c  00 20 83 15                                      strne r2, [r3]
006fb910  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
006fb914  08 30 93 e5                                      ldr r3, [r3, #8]
006fb918  00 30 8d e5                                      str r3, [sp]
006fb91c  9b 8c f1 eb                                      bl #0x35eb90
006fb920  14 00 9d e5                                      ldr r0, [sp, #0x14]
006fb924  00 30 9d e5                                      ldr r3, [sp]
006fb928  00 00 50 e3                                      cmp r0, #0
006fb92c  03 60 86 e0                                      add r6, r6, r3
006fb930  08 60 84 e5                                      str r6, [r4, #8]
006fb934  00 00 00 0a                                      beq #0x6fb93c
006fb938  11 87 f0 eb                                      bl #0x31d584
006fb93c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006fb940  01 50 85 e2                                      add r5, r5, #1
006fb944  05 00 53 e1                                      cmp r3, r5
006fb948  1a 00 00 9a                                      bls #0x6fb9b8
006fb94c  04 30 94 e5                                      ldr r3, [r4, #4]
006fb950  05 20 a0 e1                                      mov r2, r5
006fb954  08 00 a0 e1                                      mov r0, r8
006fb958  03 10 a0 e1                                      mov r1, r3
006fb95c  00 30 93 e5                                      ldr r3, [r3]
006fb960  0f e0 a0 e1                                      mov lr, pc
006fb964  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006fb968  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006fb96c  07 00 a0 e1                                      mov r0, r7
006fb970  14 30 93 e5                                      ldr r3, [r3, #0x14]
006fb974  00 00 53 e3                                      cmp r3, #0
006fb978  10 30 8d e5                                      str r3, [sp, #0x10]
006fb97c  00 20 93 15                                      ldrne r2, [r3]
006fb980  01 20 82 12                                      addne r2, r2, #1
006fb984  00 20 83 15                                      strne r2, [r3]
006fb988  10 30 9d 15                                      ldrne r3, [sp, #0x10]
006fb98c  08 60 93 e5                                      ldr r6, [r3, #8]
006fb990  7e 8c f1 eb                                      bl #0x35eb90
006fb994  18 10 94 e5                                      ldr r1, [r4, #0x18]
006fb998  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006fb99c  18 60 8d e5                                      str r6, [sp, #0x18]
006fb9a0  03 00 51 e1                                      cmp r1, r3
006fb9a4  c1 ff ff 1a                                      bne #0x6fb8b0
006fb9a8  0b 00 a0 e1                                      mov r0, fp
006fb9ac  04 20 9d e5                                      ldr r2, [sp, #4]
006fb9b0  02 fe ff eb                                      bl #0x6fb1c0
006fb9b4  c1 ff ff ea                                      b #0x6fb8c0
006fb9b8  04 00 a0 e1                                      mov r0, r4
006fb9bc  24 d0 8d e2                                      add sp, sp, #0x24
006fb9c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006fb9c4  78 93 29 00 84 2b 00 00 44 2b 00 00 88 3e 00 00  .byte 0x78, 0x93, 0x29, 0x00, 0x84, 0x2b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x88, 0x3e, 0x00, 0x00
