; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fcd08, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffector13setPivotPointERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleRotationAffector::setPivotPoint(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fcd08  00 30 91 e5                                      ldr r3, [r1]
006fcd0c  08 30 80 e5                                      str r3, [r0, #8]
006fcd10  04 30 91 e5                                      ldr r3, [r1, #4]
006fcd14  0c 30 80 e5                                      str r3, [r0, #0xc]
006fcd18  08 30 91 e5                                      ldr r3, [r1, #8]
006fcd1c  10 30 80 e5                                      str r3, [r0, #0x10]
006fcd20  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcd24, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffector8setSpeedERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleRotationAffector::setSpeed(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fcd24  00 30 91 e5                                      ldr r3, [r1]
006fcd28  14 30 80 e5                                      str r3, [r0, #0x14]
006fcd2c  04 30 91 e5                                      ldr r3, [r1, #4]
006fcd30  18 30 80 e5                                      str r3, [r0, #0x18]
006fcd34  08 30 91 e5                                      ldr r3, [r1, #8]
006fcd38  1c 30 80 e5                                      str r3, [r0, #0x1c]
006fcd3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcd40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZNK6glitch5scene25CParticleRotationAffector13getPivotPointEv
; demangled: glitch::scene::CParticleRotationAffector::getPivotPoint() const
; decoder-mode: arm
006fcd40  08 00 80 e2                                      add r0, r0, #8
006fcd44  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcd48, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZNK6glitch5scene25CParticleRotationAffector8getSpeedEv
; demangled: glitch::scene::CParticleRotationAffector::getSpeed() const
; decoder-mode: arm
006fcd48  14 00 80 e2                                      add r0, r0, #0x14
006fcd4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcd74, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffectorC2ERKNS_4core8vector3dIfEES6_
; demangled: glitch::scene::CParticleRotationAffector::CParticleRotationAffector(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fcd74  f0 00 2d e9                                      push {r4, r5, r6, r7}
006fcd78  04 40 81 e2                                      add r4, r1, #4
006fcd7c  04 60 94 e5                                      ldr r6, [r4, #4]
006fcd80  04 50 84 e2                                      add r5, r4, #4
006fcd84  00 60 80 e5                                      str r6, [r0]
006fcd88  04 70 95 e5                                      ldr r7, [r5, #4]
006fcd8c  1c 60 16 e5                                      ldr r6, [r6, #-0x1c]
006fcd90  06 70 80 e7                                      str r7, [r0, r6]
006fcd94  00 60 90 e5                                      ldr r6, [r0]
006fcd98  08 50 95 e5                                      ldr r5, [r5, #8]
006fcd9c  0c 60 16 e5                                      ldr r6, [r6, #-0xc]
006fcda0  06 50 80 e7                                      str r5, [r0, r6]
006fcda4  01 50 a0 e3                                      mov r5, #1
006fcda8  04 50 c0 e5                                      strb r5, [r0, #4]
006fcdac  04 50 91 e5                                      ldr r5, [r1, #4]
006fcdb0  00 50 80 e5                                      str r5, [r0]
006fcdb4  10 60 94 e5                                      ldr r6, [r4, #0x10]
006fcdb8  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006fcdbc  05 60 80 e7                                      str r6, [r0, r5]
006fcdc0  00 60 90 e5                                      ldr r6, [r0]
006fcdc4  14 50 94 e5                                      ldr r5, [r4, #0x14]
006fcdc8  0c 40 16 e5                                      ldr r4, [r6, #-0xc]
006fcdcc  04 50 80 e7                                      str r5, [r0, r4]
006fcdd0  00 40 91 e5                                      ldr r4, [r1]
006fcdd4  00 40 80 e5                                      str r4, [r0]
006fcdd8  1c 50 91 e5                                      ldr r5, [r1, #0x1c]
006fcddc  1c 40 14 e5                                      ldr r4, [r4, #-0x1c]
006fcde0  04 50 80 e7                                      str r5, [r0, r4]
006fcde4  00 50 90 e5                                      ldr r5, [r0]
006fcde8  20 40 91 e5                                      ldr r4, [r1, #0x20]
006fcdec  0c 10 15 e5                                      ldr r1, [r5, #-0xc]
006fcdf0  01 40 80 e7                                      str r4, [r0, r1]
006fcdf4  00 10 93 e5                                      ldr r1, [r3]
006fcdf8  08 10 80 e5                                      str r1, [r0, #8]
006fcdfc  04 10 93 e5                                      ldr r1, [r3, #4]
006fce00  0c 10 80 e5                                      str r1, [r0, #0xc]
006fce04  08 30 93 e5                                      ldr r3, [r3, #8]
006fce08  10 30 80 e5                                      str r3, [r0, #0x10]
006fce0c  00 30 92 e5                                      ldr r3, [r2]
006fce10  14 30 80 e5                                      str r3, [r0, #0x14]
006fce14  04 30 92 e5                                      ldr r3, [r2, #4]
006fce18  18 30 80 e5                                      str r3, [r0, #0x18]
006fce1c  08 30 92 e5                                      ldr r3, [r2, #8]
006fce20  00 20 a0 e3                                      mov r2, #0
006fce24  20 20 80 e5                                      str r2, [r0, #0x20]
006fce28  1c 30 80 e5                                      str r3, [r0, #0x1c]
006fce2c  f0 00 bd e8                                      pop {r4, r5, r6, r7}
006fce30  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fce34, declared_size=244, range_size=244, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffectorC1ERKNS_4core8vector3dIfEES6_
; demangled: glitch::scene::CParticleRotationAffector::CParticleRotationAffector(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006fce34  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006fce38  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
006fce3c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
006fce40  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
006fce44  04 40 8f e0                                      add r4, pc, r4
006fce48  03 c0 94 e7                                      ldr ip, [r4, r3]
006fce4c  05 50 94 e7                                      ldr r5, [r4, r5]
006fce50  01 60 a0 e3                                      mov r6, #1
006fce54  24 70 9c e5                                      ldr r7, [ip, #0x24]
006fce58  08 50 85 e2                                      add r5, r5, #8
006fce5c  24 50 80 e5                                      str r5, [r0, #0x24]
006fce60  00 70 80 e5                                      str r7, [r0]
006fce64  28 60 80 e5                                      str r6, [r0, #0x28]
006fce68  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fce6c  08 80 9c e5                                      ldr r8, [ip, #8]
006fce70  28 a0 9c e5                                      ldr sl, [ip, #0x28]
006fce74  0c b0 9c e5                                      ldr fp, [ip, #0xc]
006fce78  04 50 9c e5                                      ldr r5, [ip, #4]
006fce7c  07 a0 80 e7                                      str sl, [r0, r7]
006fce80  00 80 80 e5                                      str r8, [r0]
006fce84  1c 70 18 e5                                      ldr r7, [r8, #-0x1c]
006fce88  10 a0 9c e5                                      ldr sl, [ip, #0x10]
006fce8c  14 90 9c e5                                      ldr sb, [ip, #0x14]
006fce90  07 b0 80 e7                                      str fp, [r0, r7]
006fce94  00 b0 90 e5                                      ldr fp, [r0]
006fce98  18 80 9c e5                                      ldr r8, [ip, #0x18]
006fce9c  80 70 9f e5                                      ldr r7, [pc, #0x80]
006fcea0  0c c0 1b e5                                      ldr ip, [fp, #-0xc]
006fcea4  07 70 94 e7                                      ldr r7, [r4, r7]
006fcea8  0c a0 80 e7                                      str sl, [r0, ip]
006fceac  00 50 80 e5                                      str r5, [r0]
006fceb0  04 60 c0 e5                                      strb r6, [r0, #4]
006fceb4  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006fceb8  60 c0 87 e2                                      add ip, r7, #0x60
006fcebc  1c 70 87 e2                                      add r7, r7, #0x1c
006fcec0  05 90 80 e7                                      str sb, [r0, r5]
006fcec4  00 50 90 e5                                      ldr r5, [r0]
006fcec8  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
006fcecc  05 80 80 e7                                      str r8, [r0, r5]
006fced0  00 70 80 e5                                      str r7, [r0]
006fced4  24 c0 80 e5                                      str ip, [r0, #0x24]
006fced8  00 c0 92 e5                                      ldr ip, [r2]
006fcedc  08 c0 80 e5                                      str ip, [r0, #8]
006fcee0  04 c0 92 e5                                      ldr ip, [r2, #4]
006fcee4  0c c0 80 e5                                      str ip, [r0, #0xc]
006fcee8  08 20 92 e5                                      ldr r2, [r2, #8]
006fceec  10 20 80 e5                                      str r2, [r0, #0x10]
006fcef0  00 20 91 e5                                      ldr r2, [r1]
006fcef4  14 20 80 e5                                      str r2, [r0, #0x14]
006fcef8  04 20 91 e5                                      ldr r2, [r1, #4]
006fcefc  18 20 80 e5                                      str r2, [r0, #0x18]
006fcf00  08 20 91 e5                                      ldr r2, [r1, #8]
006fcf04  00 10 a0 e3                                      mov r1, #0
006fcf08  20 10 80 e5                                      str r1, [r0, #0x20]
006fcf0c  1c 20 80 e5                                      str r2, [r0, #0x1c]
006fcf10  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006fcf14  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006fcf18  4c 7c 29 00 cc 05 00 00 44 2b 00 00 9c 41 00 00  .byte 0x4c, 0x7c, 0x29, 0x00, 0xcc, 0x05, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x9c, 0x41, 0x00, 0x00

; FUNCTION 0x006fcf28, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffectorD1Ev
; demangled: glitch::scene::CParticleRotationAffector::~CParticleRotationAffector()
; decoder-mode: arm
006fcf28  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fcf2c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZTv0_n24_N6glitch5scene25CParticleRotationAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleRotationAffector::~CParticleRotationAffector()
; decoder-mode: arm
006fcf2c  00 30 90 e5                                      ldr r3, [r0]
006fcf30  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fcf34  03 00 80 e0                                      add r0, r0, r3
006fcf38  fa ff ff ea                                      b #0x6fcf28

; FUNCTION 0x006fcf3c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZTv0_n12_N6glitch5scene25CParticleRotationAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleRotationAffector::~CParticleRotationAffector()
; decoder-mode: arm
006fcf3c  00 30 90 e5                                      ldr r3, [r0]
006fcf40  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fcf44  03 00 80 e0                                      add r0, r0, r3
006fcf48  f6 ff ff ea                                      b #0x6fcf28

; FUNCTION 0x006fcf6c, declared_size=364, range_size=364, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffector6affectEjPNS0_9SParticleEj
; demangled: glitch::scene::CParticleRotationAffector::affect(unsigned int, glitch::scene::SParticle*, unsigned int)
; decoder-mode: arm
006fcf6c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006fcf70  00 40 a0 e1                                      mov r4, r0
006fcf74  20 00 90 e5                                      ldr r0, [r0, #0x20]
006fcf78  08 d0 4d e2                                      sub sp, sp, #8
006fcf7c  01 50 a0 e1                                      mov r5, r1
006fcf80  00 00 50 e3                                      cmp r0, #0
006fcf84  02 60 a0 e1                                      mov r6, r2
006fcf88  03 70 a0 e1                                      mov r7, r3
006fcf8c  20 10 84 05                                      streq r1, [r4, #0x20]
006fcf90  4e 00 00 0a                                      beq #0x6fd0d0
006fcf94  01 00 60 e0                                      rsb r0, r0, r1
006fcf98  d0 44 f0 eb                                      bl #0x30e2e0
006fcf9c  11 13 a0 e3                                      mov r1, #0x44000000
006fcfa0  7a 18 81 e2                                      add r1, r1, #0x7a0000
006fcfa4  3a 47 f0 eb                                      bl #0x30ec94
006fcfa8  04 30 d4 e5                                      ldrb r3, [r4, #4]
006fcfac  00 80 a0 e1                                      mov r8, r0
006fcfb0  20 50 84 e5                                      str r5, [r4, #0x20]
006fcfb4  00 00 53 e3                                      cmp r3, #0
006fcfb8  44 00 00 0a                                      beq #0x6fd0d0
006fcfbc  00 00 57 e3                                      cmp r7, #0
006fcfc0  42 00 00 0a                                      beq #0x6fd0d0
006fcfc4  08 a0 84 e2                                      add sl, r4, #8
006fcfc8  00 50 a0 e3                                      mov r5, #0
006fcfcc  0e 00 00 ea                                      b #0x6fd00c
006fcfd0  18 90 94 e5                                      ldr sb, [r4, #0x18]
006fcfd4  00 10 a0 e3                                      mov r1, #0
006fcfd8  09 00 a0 e1                                      mov r0, sb
006fcfdc  ea 43 f0 eb                                      bl #0x30df8c
006fcfe0  00 00 50 e3                                      cmp r0, #0
006fcfe4  1e 00 00 0a                                      beq #0x6fd064
006fcfe8  1c 90 94 e5                                      ldr sb, [r4, #0x1c]
006fcfec  00 10 a0 e3                                      mov r1, #0
006fcff0  09 00 a0 e1                                      mov r0, sb
006fcff4  e4 43 f0 eb                                      bl #0x30df8c
006fcff8  00 00 50 e3                                      cmp r0, #0
006fcffc  27 00 00 0a                                      beq #0x6fd0a0
006fd000  07 00 55 e1                                      cmp r5, r7
006fd004  44 60 86 e2                                      add r6, r6, #0x44
006fd008  30 00 00 0a                                      beq #0x6fd0d0
006fd00c  14 90 94 e5                                      ldr sb, [r4, #0x14]
006fd010  00 10 a0 e3                                      mov r1, #0
006fd014  01 50 85 e2                                      add r5, r5, #1
006fd018  09 00 a0 e1                                      mov r0, sb
006fd01c  da 43 f0 eb                                      bl #0x30df8c
006fd020  00 00 50 e3                                      cmp r0, #0
006fd024  e9 ff ff 1a                                      bne #0x6fcfd0
006fd028  09 10 a0 e1                                      mov r1, sb
006fd02c  08 00 a0 e1                                      mov r0, r8
006fd030  4d 47 f0 eb                                      bl #0x30ed6c
006fd034  1a 46 f0 eb                                      bl #0x30e8a4
006fd038  00 20 a0 e1                                      mov r2, r0
006fd03c  01 30 a0 e1                                      mov r3, r1
006fd040  06 00 a0 e1                                      mov r0, r6
006fd044  00 a0 8d e5                                      str sl, [sp]
006fd048  2a cf fc eb                                      bl #0x630cf8
006fd04c  18 90 94 e5                                      ldr sb, [r4, #0x18]
006fd050  00 10 a0 e3                                      mov r1, #0
006fd054  09 00 a0 e1                                      mov r0, sb
006fd058  cb 43 f0 eb                                      bl #0x30df8c
006fd05c  00 00 50 e3                                      cmp r0, #0
006fd060  e0 ff ff 1a                                      bne #0x6fcfe8
006fd064  09 10 a0 e1                                      mov r1, sb
006fd068  08 00 a0 e1                                      mov r0, r8
006fd06c  3e 47 f0 eb                                      bl #0x30ed6c
006fd070  0b 46 f0 eb                                      bl #0x30e8a4
006fd074  00 20 a0 e1                                      mov r2, r0
006fd078  01 30 a0 e1                                      mov r3, r1
006fd07c  06 00 a0 e1                                      mov r0, r6
006fd080  00 a0 8d e5                                      str sl, [sp]
006fd084  57 cf fc eb                                      bl #0x630de8
006fd088  1c 90 94 e5                                      ldr sb, [r4, #0x1c]
006fd08c  00 10 a0 e3                                      mov r1, #0
006fd090  09 00 a0 e1                                      mov r0, sb
006fd094  bc 43 f0 eb                                      bl #0x30df8c
006fd098  00 00 50 e3                                      cmp r0, #0
006fd09c  d7 ff ff 1a                                      bne #0x6fd000
006fd0a0  09 10 a0 e1                                      mov r1, sb
006fd0a4  08 00 a0 e1                                      mov r0, r8
006fd0a8  2f 47 f0 eb                                      bl #0x30ed6c
006fd0ac  fc 45 f0 eb                                      bl #0x30e8a4
006fd0b0  00 20 a0 e1                                      mov r2, r0
006fd0b4  01 30 a0 e1                                      mov r3, r1
006fd0b8  06 00 a0 e1                                      mov r0, r6
006fd0bc  00 a0 8d e5                                      str sl, [sp]
006fd0c0  cd ce fc eb                                      bl #0x630bfc
006fd0c4  07 00 55 e1                                      cmp r5, r7
006fd0c8  44 60 86 e2                                      add r6, r6, #0x44
006fd0cc  ce ff ff 1a                                      bne #0x6fd00c
006fd0d0  08 d0 8d e2                                      add sp, sp, #8
006fd0d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006fd14c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZN6glitch5scene25CParticleRotationAffectorD0Ev
; demangled: glitch::scene::CParticleRotationAffector::~CParticleRotationAffector()
; decoder-mode: arm
006fd14c  64 30 9f e5                                      ldr r3, [pc, #0x64]
006fd150  64 20 9f e5                                      ldr r2, [pc, #0x64]
006fd154  64 10 9f e5                                      ldr r1, [pc, #0x64]
006fd158  03 30 8f e0                                      add r3, pc, r3
006fd15c  02 20 93 e7                                      ldr r2, [r3, r2]
006fd160  70 40 2d e9                                      push {r4, r5, r6, lr}
006fd164  01 10 93 e7                                      ldr r1, [r3, r1]
006fd168  04 c0 92 e5                                      ldr ip, [r2, #4]
006fd16c  14 50 92 e5                                      ldr r5, [r2, #0x14]
006fd170  60 10 81 e2                                      add r1, r1, #0x60
006fd174  00 c0 80 e5                                      str ip, [r0]
006fd178  24 10 80 e5                                      str r1, [r0, #0x24]
006fd17c  1c e0 1c e5                                      ldr lr, [ip, #-0x1c]
006fd180  08 10 92 e5                                      ldr r1, [r2, #8]
006fd184  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006fd188  0e 50 80 e7                                      str r5, [r0, lr]
006fd18c  00 e0 90 e5                                      ldr lr, [r0]
006fd190  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006fd194  00 40 a0 e1                                      mov r4, r0
006fd198  0c 30 1e e5                                      ldr r3, [lr, #-0xc]
006fd19c  03 c0 80 e7                                      str ip, [r0, r3]
006fd1a0  00 10 80 e5                                      str r1, [r0]
006fd1a4  1c 30 11 e5                                      ldr r3, [r1, #-0x1c]
006fd1a8  03 20 80 e7                                      str r2, [r0, r3]
006fd1ac  3f 44 f0 eb                                      bl #0x30e2b0
006fd1b0  04 00 a0 e1                                      mov r0, r4
006fd1b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fd1b8  38 79 29 00 cc 05 00 00 9c 41 00 00              .byte 0x38, 0x79, 0x29, 0x00, 0xcc, 0x05, 0x00, 0x00, 0x9c, 0x41, 0x00, 0x00

; FUNCTION 0x006fd1c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZTv0_n24_N6glitch5scene25CParticleRotationAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleRotationAffector::~CParticleRotationAffector()
; decoder-mode: arm
006fd1c4  00 30 90 e5                                      ldr r3, [r0]
006fd1c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fd1cc  03 00 80 e0                                      add r0, r0, r3
006fd1d0  dd ff ff ea                                      b #0x6fd14c

; FUNCTION 0x006fd1d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleRotationAffector
; alias: _ZTv0_n12_N6glitch5scene25CParticleRotationAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleRotationAffector::~CParticleRotationAffector()
; decoder-mode: arm
006fd1d4  00 30 90 e5                                      ldr r3, [r0]
006fd1d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fd1dc  03 00 80 e0                                      add r0, r0, r3
006fd1e0  d9 ff ff ea                                      b #0x6fd14c
