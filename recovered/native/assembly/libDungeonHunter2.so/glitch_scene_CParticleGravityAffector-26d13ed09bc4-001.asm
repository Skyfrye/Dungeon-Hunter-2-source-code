; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fa9fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffector16setTimeForceLostEf
; demangled: glitch::scene::CParticleGravityAffector::setTimeForceLost(float)
; decoder-mode: arm
006fa9fc  08 10 80 e5                                      str r1, [r0, #8]
006faa00  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faa04, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffector10setGravityERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CParticleGravityAffector::setGravity(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006faa04  00 30 91 e5                                      ldr r3, [r1]
006faa08  0c 30 80 e5                                      str r3, [r0, #0xc]
006faa0c  04 30 91 e5                                      ldr r3, [r1, #4]
006faa10  10 30 80 e5                                      str r3, [r0, #0x10]
006faa14  08 30 91 e5                                      ldr r3, [r1, #8]
006faa18  14 30 80 e5                                      str r3, [r0, #0x14]
006faa1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faa20, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZNK6glitch5scene24CParticleGravityAffector16getTimeForceLostEv
; demangled: glitch::scene::CParticleGravityAffector::getTimeForceLost() const
; decoder-mode: arm
006faa20  08 00 90 e5                                      ldr r0, [r0, #8]
006faa24  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faa28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZNK6glitch5scene24CParticleGravityAffector10getGravityEv
; demangled: glitch::scene::CParticleGravityAffector::getGravity() const
; decoder-mode: arm
006faa28  0c 00 80 e2                                      add r0, r0, #0xc
006faa2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006faa54, declared_size=200, range_size=200, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffectorC2ERKNS_4core8vector3dIfEEj
; demangled: glitch::scene::CParticleGravityAffector::CParticleGravityAffector(glitch::core::vector3d<float> const&, unsigned int)
; decoder-mode: arm
006faa54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006faa58  00 40 a0 e1                                      mov r4, r0
006faa5c  00 00 a0 e3                                      mov r0, #0
006faa60  00 00 84 e5                                      str r0, [r4]
006faa64  04 00 84 e5                                      str r0, [r4, #4]
006faa68  0c 00 84 e5                                      str r0, [r4, #0xc]
006faa6c  08 00 84 e5                                      str r0, [r4, #8]
006faa70  04 c0 81 e2                                      add ip, r1, #4
006faa74  04 00 9c e5                                      ldr r0, [ip, #4]
006faa78  04 e0 8c e2                                      add lr, ip, #4
006faa7c  02 70 a0 e1                                      mov r7, r2
006faa80  00 00 84 e5                                      str r0, [r4]
006faa84  1c 50 10 e5                                      ldr r5, [r0, #-0x1c]
006faa88  04 60 9e e5                                      ldr r6, [lr, #4]
006faa8c  03 00 a0 e1                                      mov r0, r3
006faa90  05 60 84 e7                                      str r6, [r4, r5]
006faa94  00 30 94 e5                                      ldr r3, [r4]
006faa98  08 20 9e e5                                      ldr r2, [lr, #8]
006faa9c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006faaa0  03 20 84 e7                                      str r2, [r4, r3]
006faaa4  01 30 a0 e3                                      mov r3, #1
006faaa8  04 30 c4 e5                                      strb r3, [r4, #4]
006faaac  04 30 91 e5                                      ldr r3, [r1, #4]
006faab0  00 30 84 e5                                      str r3, [r4]
006faab4  10 20 9c e5                                      ldr r2, [ip, #0x10]
006faab8  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006faabc  03 20 84 e7                                      str r2, [r4, r3]
006faac0  00 30 94 e5                                      ldr r3, [r4]
006faac4  14 20 9c e5                                      ldr r2, [ip, #0x14]
006faac8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006faacc  03 20 84 e7                                      str r2, [r4, r3]
006faad0  00 30 91 e5                                      ldr r3, [r1]
006faad4  00 30 84 e5                                      str r3, [r4]
006faad8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006faadc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006faae0  03 20 84 e7                                      str r2, [r4, r3]
006faae4  00 30 94 e5                                      ldr r3, [r4]
006faae8  20 20 91 e5                                      ldr r2, [r1, #0x20]
006faaec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006faaf0  03 20 84 e7                                      str r2, [r4, r3]
006faaf4  f9 4d f0 eb                                      bl #0x30e2e0
006faaf8  08 00 84 e5                                      str r0, [r4, #8]
006faafc  00 30 97 e5                                      ldr r3, [r7]
006fab00  04 00 a0 e1                                      mov r0, r4
006fab04  0c 30 84 e5                                      str r3, [r4, #0xc]
006fab08  04 30 97 e5                                      ldr r3, [r7, #4]
006fab0c  10 30 84 e5                                      str r3, [r4, #0x10]
006fab10  08 30 97 e5                                      ldr r3, [r7, #8]
006fab14  14 30 84 e5                                      str r3, [r4, #0x14]
006fab18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006fab1c, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffectorC1ERKNS_4core8vector3dIfEEj
; demangled: glitch::scene::CParticleGravityAffector::CParticleGravityAffector(glitch::core::vector3d<float> const&, unsigned int)
; decoder-mode: arm
006fab1c  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
006fab20  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
006fab24  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006fab28  0c c0 8f e0                                      add ip, pc, ip
006fab2c  d8 e0 9f e5                                      ldr lr, [pc, #0xd8]
006fab30  03 30 9c e7                                      ldr r3, [ip, r3]
006fab34  00 40 a0 e1                                      mov r4, r0
006fab38  0e e0 9c e7                                      ldr lr, [ip, lr]
006fab3c  24 00 93 e5                                      ldr r0, [r3, #0x24]
006fab40  01 60 a0 e3                                      mov r6, #1
006fab44  08 e0 8e e2                                      add lr, lr, #8
006fab48  00 00 84 e5                                      str r0, [r4]
006fab4c  18 e0 84 e5                                      str lr, [r4, #0x18]
006fab50  1c 60 84 e5                                      str r6, [r4, #0x1c]
006fab54  0c 70 10 e5                                      ldr r7, [r0, #-0xc]
006fab58  08 e0 93 e5                                      ldr lr, [r3, #8]
006fab5c  28 80 93 e5                                      ldr r8, [r3, #0x28]
006fab60  00 00 a0 e3                                      mov r0, #0
006fab64  0c 50 93 e5                                      ldr r5, [r3, #0xc]
006fab68  07 80 84 e7                                      str r8, [r4, r7]
006fab6c  00 e0 84 e5                                      str lr, [r4]
006fab70  04 00 84 e5                                      str r0, [r4, #4]
006fab74  0c 00 84 e5                                      str r0, [r4, #0xc]
006fab78  08 00 84 e5                                      str r0, [r4, #8]
006fab7c  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
006fab80  04 00 93 e5                                      ldr r0, [r3, #4]
006fab84  10 a0 93 e5                                      ldr sl, [r3, #0x10]
006fab88  0e 50 84 e7                                      str r5, [r4, lr]
006fab8c  00 50 94 e5                                      ldr r5, [r4]
006fab90  14 70 93 e5                                      ldr r7, [r3, #0x14]
006fab94  74 e0 9f e5                                      ldr lr, [pc, #0x74]
006fab98  0c 80 15 e5                                      ldr r8, [r5, #-0xc]
006fab9c  18 50 93 e5                                      ldr r5, [r3, #0x18]
006faba0  0e e0 9c e7                                      ldr lr, [ip, lr]
006faba4  08 a0 84 e7                                      str sl, [r4, r8]
006faba8  00 00 84 e5                                      str r0, [r4]
006fabac  04 60 c4 e5                                      strb r6, [r4, #4]
006fabb0  1c 60 10 e5                                      ldr r6, [r0, #-0x1c]
006fabb4  02 00 a0 e1                                      mov r0, r2
006fabb8  60 30 8e e2                                      add r3, lr, #0x60
006fabbc  06 70 84 e7                                      str r7, [r4, r6]
006fabc0  00 20 94 e5                                      ldr r2, [r4]
006fabc4  1c e0 8e e2                                      add lr, lr, #0x1c
006fabc8  01 60 a0 e1                                      mov r6, r1
006fabcc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006fabd0  02 50 84 e7                                      str r5, [r4, r2]
006fabd4  00 e0 84 e5                                      str lr, [r4]
006fabd8  18 30 84 e5                                      str r3, [r4, #0x18]
006fabdc  bf 4d f0 eb                                      bl #0x30e2e0
006fabe0  08 00 84 e5                                      str r0, [r4, #8]
006fabe4  00 30 96 e5                                      ldr r3, [r6]
006fabe8  04 00 a0 e1                                      mov r0, r4
006fabec  0c 30 84 e5                                      str r3, [r4, #0xc]
006fabf0  04 30 96 e5                                      ldr r3, [r6, #4]
006fabf4  10 30 84 e5                                      str r3, [r4, #0x10]
006fabf8  08 30 96 e5                                      ldr r3, [r6, #8]
006fabfc  14 30 84 e5                                      str r3, [r4, #0x14]
006fac00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006fac04  68 9f 29 00 28 46 00 00 44 2b 00 00 4c 1f 00 00  .byte 0x68, 0x9f, 0x29, 0x00, 0x28, 0x46, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x1f, 0x00, 0x00

; FUNCTION 0x006fac14, declared_size=296, range_size=296, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffector6affectEjPNS0_9SParticleEj
; demangled: glitch::scene::CParticleGravityAffector::affect(unsigned int, glitch::scene::SParticle*, unsigned int)
; decoder-mode: arm
006fac14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fac18  00 40 a0 e1                                      mov r4, r0
006fac1c  04 00 d0 e5                                      ldrb r0, [r0, #4]
006fac20  0c d0 4d e2                                      sub sp, sp, #0xc
006fac24  04 10 8d e5                                      str r1, [sp, #4]
006fac28  00 00 50 e3                                      cmp r0, #0
006fac2c  03 b0 a0 e1                                      mov fp, r3
006fac30  3f 00 00 0a                                      beq #0x6fad34
006fac34  00 00 53 e3                                      cmp r3, #0
006fac38  3d 00 00 0a                                      beq #0x6fad34
006fac3c  02 50 a0 e1                                      mov r5, r2
006fac40  00 70 a0 e3                                      mov r7, #0
006fac44  04 30 9d e5                                      ldr r3, [sp, #4]
006fac48  18 00 95 e5                                      ldr r0, [r5, #0x18]
006fac4c  03 00 60 e0                                      rsb r0, r0, r3
006fac50  a2 4d f0 eb                                      bl #0x30e2e0
006fac54  08 10 94 e5                                      ldr r1, [r4, #8]
006fac58  0d 50 f0 eb                                      bl #0x30ec94
006fac5c  fe 15 a0 e3                                      mov r1, #0x3f800000
006fac60  00 60 a0 e1                                      mov r6, r0
006fac64  a3 4d f0 eb                                      bl #0x30e2f8
006fac68  00 00 50 e3                                      cmp r0, #0
006fac6c  00 10 a0 e3                                      mov r1, #0
006fac70  06 00 a0 e1                                      mov r0, r6
006fac74  fe 65 a0 13                                      movne r6, #0x3f800000
006fac78  02 00 00 1a                                      bne #0x6fac88
006fac7c  a2 4e f0 eb                                      bl #0x30e70c
006fac80  00 00 50 e3                                      cmp r0, #0
006fac84  00 60 a0 13                                      movne r6, #0
006fac88  06 10 a0 e1                                      mov r1, r6
006fac8c  fe 05 a0 e3                                      mov r0, #0x3f800000
006fac90  c5 4d f0 eb                                      bl #0x30e3ac
006fac94  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
006fac98  00 60 a0 e1                                      mov r6, r0
006fac9c  10 00 94 e5                                      ldr r0, [r4, #0x10]
006faca0  08 10 a0 e1                                      mov r1, r8
006faca4  c0 4d f0 eb                                      bl #0x30e3ac
006faca8  00 10 a0 e1                                      mov r1, r0
006facac  06 00 a0 e1                                      mov r0, r6
006facb0  2d 50 f0 eb                                      bl #0x30ed6c
006facb4  00 10 a0 e1                                      mov r1, r0
006facb8  08 00 a0 e1                                      mov r0, r8
006facbc  b8 4f f0 eb                                      bl #0x30eba4
006facc0  30 a0 95 e5                                      ldr sl, [r5, #0x30]
006facc4  00 90 a0 e1                                      mov sb, r0
006facc8  14 00 94 e5                                      ldr r0, [r4, #0x14]
006faccc  0a 10 a0 e1                                      mov r1, sl
006facd0  b5 4d f0 eb                                      bl #0x30e3ac
006facd4  00 10 a0 e1                                      mov r1, r0
006facd8  06 00 a0 e1                                      mov r0, r6
006facdc  22 50 f0 eb                                      bl #0x30ed6c
006face0  00 10 a0 e1                                      mov r1, r0
006face4  0a 00 a0 e1                                      mov r0, sl
006face8  ad 4f f0 eb                                      bl #0x30eba4
006facec  28 80 95 e5                                      ldr r8, [r5, #0x28]
006facf0  00 a0 a0 e1                                      mov sl, r0
006facf4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006facf8  08 10 a0 e1                                      mov r1, r8
006facfc  aa 4d f0 eb                                      bl #0x30e3ac
006fad00  00 10 a0 e1                                      mov r1, r0
006fad04  06 00 a0 e1                                      mov r0, r6
006fad08  17 50 f0 eb                                      bl #0x30ed6c
006fad0c  00 10 a0 e1                                      mov r1, r0
006fad10  08 00 a0 e1                                      mov r0, r8
006fad14  a2 4f f0 eb                                      bl #0x30eba4
006fad18  01 70 87 e2                                      add r7, r7, #1
006fad1c  0b 00 57 e1                                      cmp r7, fp
006fad20  0c 00 85 e5                                      str r0, [r5, #0xc]
006fad24  10 90 85 e5                                      str sb, [r5, #0x10]
006fad28  14 a0 85 e5                                      str sl, [r5, #0x14]
006fad2c  44 50 85 e2                                      add r5, r5, #0x44
006fad30  c3 ff ff 1a                                      bne #0x6fac44
006fad34  0c d0 8d e2                                      add sp, sp, #0xc
006fad38  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006fad3c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZNK6glitch5scene24CParticleGravityAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleGravityAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fad3c  70 40 2d e9                                      push {r4, r5, r6, lr}
006fad40  01 40 a0 e1                                      mov r4, r1
006fad44  40 10 9f e5                                      ldr r1, [pc, #0x40]
006fad48  00 50 a0 e1                                      mov r5, r0
006fad4c  0c 20 85 e2                                      add r2, r5, #0xc
006fad50  04 00 a0 e1                                      mov r0, r4
006fad54  00 c0 94 e5                                      ldr ip, [r4]
006fad58  01 10 8f e0                                      add r1, pc, r1
006fad5c  00 30 a0 e3                                      mov r3, #0
006fad60  0f e0 a0 e1                                      mov lr, pc
006fad64  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
006fad68  20 10 9f e5                                      ldr r1, [pc, #0x20]
006fad6c  04 00 a0 e1                                      mov r0, r4
006fad70  08 20 95 e5                                      ldr r2, [r5, #8]
006fad74  01 10 8f e0                                      add r1, pc, r1
006fad78  00 c0 94 e5                                      ldr ip, [r4]
006fad7c  00 30 a0 e3                                      mov r3, #0
006fad80  0f e0 a0 e1                                      mov lr, pc
006fad84  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fad88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fad8c  78 06 1f 00 1c 70 1f 00                          .byte 0x78, 0x06, 0x1f, 0x00, 0x1c, 0x70, 0x1f, 0x00

; FUNCTION 0x006fad94, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffectorD1Ev
; demangled: glitch::scene::CParticleGravityAffector::~CParticleGravityAffector()
; decoder-mode: arm
006fad94  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fad98, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZTv0_n24_N6glitch5scene24CParticleGravityAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleGravityAffector::~CParticleGravityAffector()
; decoder-mode: arm
006fad98  00 30 90 e5                                      ldr r3, [r0]
006fad9c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fada0  03 00 80 e0                                      add r0, r0, r3
006fada4  fa ff ff ea                                      b #0x6fad94

; FUNCTION 0x006fada8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZTv0_n12_N6glitch5scene24CParticleGravityAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleGravityAffector::~CParticleGravityAffector()
; decoder-mode: arm
006fada8  00 30 90 e5                                      ldr r3, [r0]
006fadac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fadb0  03 00 80 e0                                      add r0, r0, r3
006fadb4  f6 ff ff ea                                      b #0x6fad94

; FUNCTION 0x006fadd8, declared_size=216, range_size=216, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleGravityAffector::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006fadd8  70 40 2d e9                                      push {r4, r5, r6, lr}
006faddc  00 60 a0 e1                                      mov r6, r0
006fade0  10 d0 4d e2                                      sub sp, sp, #0x10
006fade4  00 30 92 e5                                      ldr r3, [r2]
006fade8  02 00 a0 e1                                      mov r0, r2
006fadec  02 40 a0 e1                                      mov r4, r2
006fadf0  01 50 a0 e1                                      mov r5, r1
006fadf4  0f e0 a0 e1                                      mov lr, pc
006fadf8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fadfc  00 00 50 e3                                      cmp r0, #0
006fae00  04 00 00 0a                                      beq #0x6fae18
006fae04  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
006fae08  01 10 8f e0                                      add r1, pc, r1
006fae0c  42 4d f0 eb                                      bl #0x30e31c
006fae10  00 00 50 e3                                      cmp r0, #0
006fae14  02 00 00 0a                                      beq #0x6fae24
006fae18  05 00 a0 e1                                      mov r0, r5
006fae1c  10 d0 8d e2                                      add sp, sp, #0x10
006fae20  70 80 bd e8                                      pop {r4, r5, r6, pc}
006fae24  05 20 a0 e1                                      mov r2, r5
006fae28  04 00 8d e2                                      add r0, sp, #4
006fae2c  04 10 a0 e1                                      mov r1, r4
006fae30  00 30 94 e5                                      ldr r3, [r4]
006fae34  0f e0 a0 e1                                      mov lr, pc
006fae38  b8 f1 93 e5                                      ldr pc, [r3, #0x1b8]
006fae3c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006fae40  04 10 9d e5                                      ldr r1, [sp, #4]
006fae44  08 20 9d e5                                      ldr r2, [sp, #8]
006fae48  01 50 85 e2                                      add r5, r5, #1
006fae4c  0c 10 86 e5                                      str r1, [r6, #0xc]
006fae50  10 20 86 e5                                      str r2, [r6, #0x10]
006fae54  14 30 86 e5                                      str r3, [r6, #0x14]
006fae58  00 30 94 e5                                      ldr r3, [r4]
006fae5c  04 00 a0 e1                                      mov r0, r4
006fae60  05 10 a0 e1                                      mov r1, r5
006fae64  0f e0 a0 e1                                      mov lr, pc
006fae68  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fae6c  00 00 50 e3                                      cmp r0, #0
006fae70  e8 ff ff 0a                                      beq #0x6fae18
006fae74  30 10 9f e5                                      ldr r1, [pc, #0x30]
006fae78  01 10 8f e0                                      add r1, pc, r1
006fae7c  26 4d f0 eb                                      bl #0x30e31c
006fae80  00 00 50 e3                                      cmp r0, #0
006fae84  e3 ff ff 1a                                      bne #0x6fae18
006fae88  05 10 a0 e1                                      mov r1, r5
006fae8c  04 00 a0 e1                                      mov r0, r4
006fae90  00 30 94 e5                                      ldr r3, [r4]
006fae94  0f e0 a0 e1                                      mov lr, pc
006fae98  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fae9c  01 50 85 e2                                      add r5, r5, #1
006faea0  08 00 86 e5                                      str r0, [r6, #8]
006faea4  db ff ff ea                                      b #0x6fae18
; mapping-symbol data/literal pool
006faea8  c8 05 1f 00 18 6f 1f 00                          .byte 0xc8, 0x05, 0x1f, 0x00, 0x18, 0x6f, 0x1f, 0x00

; FUNCTION 0x006faf24, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZN6glitch5scene24CParticleGravityAffectorD0Ev
; demangled: glitch::scene::CParticleGravityAffector::~CParticleGravityAffector()
; decoder-mode: arm
006faf24  64 30 9f e5                                      ldr r3, [pc, #0x64]
006faf28  64 20 9f e5                                      ldr r2, [pc, #0x64]
006faf2c  64 10 9f e5                                      ldr r1, [pc, #0x64]
006faf30  03 30 8f e0                                      add r3, pc, r3
006faf34  02 20 93 e7                                      ldr r2, [r3, r2]
006faf38  70 40 2d e9                                      push {r4, r5, r6, lr}
006faf3c  01 10 93 e7                                      ldr r1, [r3, r1]
006faf40  04 c0 92 e5                                      ldr ip, [r2, #4]
006faf44  14 50 92 e5                                      ldr r5, [r2, #0x14]
006faf48  60 10 81 e2                                      add r1, r1, #0x60
006faf4c  00 c0 80 e5                                      str ip, [r0]
006faf50  18 10 80 e5                                      str r1, [r0, #0x18]
006faf54  1c e0 1c e5                                      ldr lr, [ip, #-0x1c]
006faf58  08 10 92 e5                                      ldr r1, [r2, #8]
006faf5c  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006faf60  0e 50 80 e7                                      str r5, [r0, lr]
006faf64  00 e0 90 e5                                      ldr lr, [r0]
006faf68  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006faf6c  00 40 a0 e1                                      mov r4, r0
006faf70  0c 30 1e e5                                      ldr r3, [lr, #-0xc]
006faf74  03 c0 80 e7                                      str ip, [r0, r3]
006faf78  00 10 80 e5                                      str r1, [r0]
006faf7c  1c 30 11 e5                                      ldr r3, [r1, #-0x1c]
006faf80  03 20 80 e7                                      str r2, [r0, r3]
006faf84  c9 4c f0 eb                                      bl #0x30e2b0
006faf88  04 00 a0 e1                                      mov r0, r4
006faf8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006faf90  60 9b 29 00 28 46 00 00 4c 1f 00 00              .byte 0x60, 0x9b, 0x29, 0x00, 0x28, 0x46, 0x00, 0x00, 0x4c, 0x1f, 0x00, 0x00

; FUNCTION 0x006faf9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZTv0_n24_N6glitch5scene24CParticleGravityAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleGravityAffector::~CParticleGravityAffector()
; decoder-mode: arm
006faf9c  00 30 90 e5                                      ldr r3, [r0]
006fafa0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fafa4  03 00 80 e0                                      add r0, r0, r3
006fafa8  dd ff ff ea                                      b #0x6faf24

; FUNCTION 0x006fafac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZTv0_n12_N6glitch5scene24CParticleGravityAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleGravityAffector::~CParticleGravityAffector()
; decoder-mode: arm
006fafac  00 30 90 e5                                      ldr r3, [r0]
006fafb0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fafb4  03 00 80 e0                                      add r0, r0, r3
006fafb8  d9 ff ff ea                                      b #0x6faf24

; FUNCTION 0x006fafbc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleGravityAffector
; alias: _ZTv0_n16_NK6glitch5scene24CParticleGravityAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleGravityAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fafbc  00 30 90 e5                                      ldr r3, [r0]
006fafc0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006fafc4  03 00 80 e0                                      add r0, r0, r3
006fafc8  5b ff ff ea                                      b #0x6fad3c
