; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fe2b4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffector11setSpinTimeEf
; demangled: glitch::scene::CParticleSpinAffector::setSpinTime(float)
; decoder-mode: arm
006fe2b4  10 40 2d e9                                      push {r4, lr}
006fe2b8  00 40 a0 e1                                      mov r4, r0
006fe2bc  01 00 a0 e1                                      mov r0, r1
006fe2c0  f6 ff 06 eb                                      bl #0x8be2a0
006fe2c4  08 00 84 e5                                      str r0, [r4, #8]
006fe2c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fe2cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffector12setVariationEf
; demangled: glitch::scene::CParticleSpinAffector::setVariation(float)
; decoder-mode: arm
006fe2cc  0c 10 80 e5                                      str r1, [r0, #0xc]
006fe2d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe2d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZNK6glitch5scene21CParticleSpinAffector11getSpinTimeEv
; demangled: glitch::scene::CParticleSpinAffector::getSpinTime() const
; decoder-mode: arm
006fe2d4  10 40 2d e9                                      push {r4, lr}
006fe2d8  08 00 90 e5                                      ldr r0, [r0, #8]
006fe2dc  ff 3f f0 eb                                      bl #0x30e2e0
006fe2e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fe2e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZNK6glitch5scene21CParticleSpinAffector12getVariationEv
; demangled: glitch::scene::CParticleSpinAffector::getVariation() const
; decoder-mode: arm
006fe2e4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006fe2e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe310, declared_size=172, range_size=172, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffectorC2Ejf
; demangled: glitch::scene::CParticleSpinAffector::CParticleSpinAffector(unsigned int, float)
; decoder-mode: arm
006fe310  f0 00 2d e9                                      push {r4, r5, r6, r7}
006fe314  00 40 a0 e3                                      mov r4, #0
006fe318  00 40 80 e5                                      str r4, [r0]
006fe31c  04 40 80 e5                                      str r4, [r0, #4]
006fe320  0c 40 80 e5                                      str r4, [r0, #0xc]
006fe324  08 40 80 e5                                      str r4, [r0, #8]
006fe328  04 40 81 e2                                      add r4, r1, #4
006fe32c  04 60 94 e5                                      ldr r6, [r4, #4]
006fe330  04 50 84 e2                                      add r5, r4, #4
006fe334  00 00 52 e3                                      cmp r2, #0
006fe338  00 60 80 e5                                      str r6, [r0]
006fe33c  04 70 95 e5                                      ldr r7, [r5, #4]
006fe340  1c 60 16 e5                                      ldr r6, [r6, #-0x1c]
006fe344  fa 2f a0 03                                      moveq r2, #0x3e8
006fe348  06 70 80 e7                                      str r7, [r0, r6]
006fe34c  00 70 90 e5                                      ldr r7, [r0]
006fe350  08 60 95 e5                                      ldr r6, [r5, #8]
006fe354  0c 50 17 e5                                      ldr r5, [r7, #-0xc]
006fe358  05 60 80 e7                                      str r6, [r0, r5]
006fe35c  01 50 a0 e3                                      mov r5, #1
006fe360  04 50 c0 e5                                      strb r5, [r0, #4]
006fe364  04 50 91 e5                                      ldr r5, [r1, #4]
006fe368  00 50 80 e5                                      str r5, [r0]
006fe36c  10 60 94 e5                                      ldr r6, [r4, #0x10]
006fe370  1c 50 15 e5                                      ldr r5, [r5, #-0x1c]
006fe374  05 60 80 e7                                      str r6, [r0, r5]
006fe378  00 60 90 e5                                      ldr r6, [r0]
006fe37c  14 50 94 e5                                      ldr r5, [r4, #0x14]
006fe380  0c 40 16 e5                                      ldr r4, [r6, #-0xc]
006fe384  04 50 80 e7                                      str r5, [r0, r4]
006fe388  00 40 91 e5                                      ldr r4, [r1]
006fe38c  00 40 80 e5                                      str r4, [r0]
006fe390  1c 50 91 e5                                      ldr r5, [r1, #0x1c]
006fe394  1c 40 14 e5                                      ldr r4, [r4, #-0x1c]
006fe398  04 50 80 e7                                      str r5, [r0, r4]
006fe39c  00 50 90 e5                                      ldr r5, [r0]
006fe3a0  20 40 91 e5                                      ldr r4, [r1, #0x20]
006fe3a4  0c 10 15 e5                                      ldr r1, [r5, #-0xc]
006fe3a8  01 40 80 e7                                      str r4, [r0, r1]
006fe3ac  0c 30 80 e5                                      str r3, [r0, #0xc]
006fe3b0  08 20 80 e5                                      str r2, [r0, #8]
006fe3b4  f0 00 bd e8                                      pop {r4, r5, r6, r7}
006fe3b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe3bc, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffectorC1Ejf
; demangled: glitch::scene::CParticleSpinAffector::CParticleSpinAffector(unsigned int, float)
; decoder-mode: arm
006fe3bc  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
006fe3c0  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
006fe3c4  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
006fe3c8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
006fe3cc  04 40 8f e0                                      add r4, pc, r4
006fe3d0  03 c0 94 e7                                      ldr ip, [r4, r3]
006fe3d4  05 50 94 e7                                      ldr r5, [r4, r5]
006fe3d8  01 60 a0 e3                                      mov r6, #1
006fe3dc  24 70 9c e5                                      ldr r7, [ip, #0x24]
006fe3e0  08 50 85 e2                                      add r5, r5, #8
006fe3e4  10 50 80 e5                                      str r5, [r0, #0x10]
006fe3e8  00 70 80 e5                                      str r7, [r0]
006fe3ec  14 60 80 e5                                      str r6, [r0, #0x14]
006fe3f0  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fe3f4  08 80 9c e5                                      ldr r8, [ip, #8]
006fe3f8  28 a0 9c e5                                      ldr sl, [ip, #0x28]
006fe3fc  00 50 a0 e3                                      mov r5, #0
006fe400  0c 90 9c e5                                      ldr sb, [ip, #0xc]
006fe404  07 a0 80 e7                                      str sl, [r0, r7]
006fe408  00 80 80 e5                                      str r8, [r0]
006fe40c  04 50 80 e5                                      str r5, [r0, #4]
006fe410  0c 50 80 e5                                      str r5, [r0, #0xc]
006fe414  08 50 80 e5                                      str r5, [r0, #8]
006fe418  1c 50 18 e5                                      ldr r5, [r8, #-0x1c]
006fe41c  10 b0 9c e5                                      ldr fp, [ip, #0x10]
006fe420  04 80 9c e5                                      ldr r8, [ip, #4]
006fe424  05 90 80 e7                                      str sb, [r0, r5]
006fe428  00 70 90 e5                                      ldr r7, [r0]
006fe42c  14 a0 9c e5                                      ldr sl, [ip, #0x14]
006fe430  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
006fe434  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
006fe438  18 c0 9c e5                                      ldr ip, [ip, #0x18]
006fe43c  05 50 94 e7                                      ldr r5, [r4, r5]
006fe440  07 b0 80 e7                                      str fp, [r0, r7]
006fe444  00 80 80 e5                                      str r8, [r0]
006fe448  04 60 c0 e5                                      strb r6, [r0, #4]
006fe44c  1c 60 18 e5                                      ldr r6, [r8, #-0x1c]
006fe450  00 00 51 e3                                      cmp r1, #0
006fe454  60 70 85 e2                                      add r7, r5, #0x60
006fe458  06 a0 80 e7                                      str sl, [r0, r6]
006fe45c  00 60 90 e5                                      ldr r6, [r0]
006fe460  fa 1f a0 03                                      moveq r1, #0x3e8
006fe464  1c 50 85 e2                                      add r5, r5, #0x1c
006fe468  0c 40 16 e5                                      ldr r4, [r6, #-0xc]
006fe46c  04 c0 80 e7                                      str ip, [r0, r4]
006fe470  00 50 80 e5                                      str r5, [r0]
006fe474  10 70 80 e5                                      str r7, [r0, #0x10]
006fe478  08 10 80 e5                                      str r1, [r0, #8]
006fe47c  0c 20 80 e5                                      str r2, [r0, #0xc]
006fe480  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
006fe484  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006fe488  c4 66 29 00 48 0d 00 00 44 2b 00 00 90 0c 00 00  .byte 0xc4, 0x66, 0x29, 0x00, 0x48, 0x0d, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x90, 0x0c, 0x00, 0x00

; FUNCTION 0x006fe498, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZNK6glitch5scene21CParticleSpinAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleSpinAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fe498  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006fe49c  00 50 a0 e1                                      mov r5, r0
006fe4a0  08 00 90 e5                                      ldr r0, [r0, #8]
006fe4a4  01 40 a0 e1                                      mov r4, r1
006fe4a8  00 60 91 e5                                      ldr r6, [r1]
006fe4ac  8b 3f f0 eb                                      bl #0x30e2e0
006fe4b0  3c 70 9f e5                                      ldr r7, [pc, #0x3c]
006fe4b4  00 20 a0 e1                                      mov r2, r0
006fe4b8  00 30 a0 e3                                      mov r3, #0
006fe4bc  07 70 8f e0                                      add r7, pc, r7
006fe4c0  04 00 a0 e1                                      mov r0, r4
006fe4c4  07 10 a0 e1                                      mov r1, r7
006fe4c8  0f e0 a0 e1                                      mov lr, pc
006fe4cc  64 f0 96 e5                                      ldr pc, [r6, #0x64]
006fe4d0  20 10 9f e5                                      ldr r1, [pc, #0x20]
006fe4d4  04 00 a0 e1                                      mov r0, r4
006fe4d8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
006fe4dc  01 10 8f e0                                      add r1, pc, r1
006fe4e0  00 c0 94 e5                                      ldr ip, [r4]
006fe4e4  00 30 a0 e3                                      mov r3, #0
006fe4e8  0f e0 a0 e1                                      mov lr, pc
006fe4ec  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fe4f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006fe4f4  04 6e 1e 00 44 6e 1e 00                          .byte 0x04, 0x6e, 0x1e, 0x00, 0x44, 0x6e, 0x1e, 0x00

; FUNCTION 0x006fe4fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffectorD1Ev
; demangled: glitch::scene::CParticleSpinAffector::~CParticleSpinAffector()
; decoder-mode: arm
006fe4fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe500, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZTv0_n24_N6glitch5scene21CParticleSpinAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSpinAffector::~CParticleSpinAffector()
; decoder-mode: arm
006fe500  00 30 90 e5                                      ldr r3, [r0]
006fe504  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fe508  03 00 80 e0                                      add r0, r0, r3
006fe50c  fa ff ff ea                                      b #0x6fe4fc

; FUNCTION 0x006fe510, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZTv0_n12_N6glitch5scene21CParticleSpinAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSpinAffector::~CParticleSpinAffector()
; decoder-mode: arm
006fe510  00 30 90 e5                                      ldr r3, [r0]
006fe514  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fe518  03 00 80 e0                                      add r0, r0, r3
006fe51c  f6 ff ff ea                                      b #0x6fe4fc

; FUNCTION 0x006fe540, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleSpinAffector::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006fe540  70 40 2d e9                                      push {r4, r5, r6, lr}
006fe544  00 30 92 e5                                      ldr r3, [r2]
006fe548  00 60 a0 e1                                      mov r6, r0
006fe54c  02 00 a0 e1                                      mov r0, r2
006fe550  02 40 a0 e1                                      mov r4, r2
006fe554  01 50 a0 e1                                      mov r5, r1
006fe558  0f e0 a0 e1                                      mov lr, pc
006fe55c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fe560  00 00 50 e3                                      cmp r0, #0
006fe564  04 00 00 0a                                      beq #0x6fe57c
006fe568  88 10 9f e5                                      ldr r1, [pc, #0x88]
006fe56c  01 10 8f e0                                      add r1, pc, r1
006fe570  69 3f f0 eb                                      bl #0x30e31c
006fe574  00 00 50 e3                                      cmp r0, #0
006fe578  01 00 00 0a                                      beq #0x6fe584
006fe57c  05 00 a0 e1                                      mov r0, r5
006fe580  70 80 bd e8                                      pop {r4, r5, r6, pc}
006fe584  05 10 a0 e1                                      mov r1, r5
006fe588  00 30 94 e5                                      ldr r3, [r4]
006fe58c  04 00 a0 e1                                      mov r0, r4
006fe590  0f e0 a0 e1                                      mov lr, pc
006fe594  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fe598  40 ff 06 eb                                      bl #0x8be2a0
006fe59c  01 50 85 e2                                      add r5, r5, #1
006fe5a0  08 00 86 e5                                      str r0, [r6, #8]
006fe5a4  00 30 94 e5                                      ldr r3, [r4]
006fe5a8  04 00 a0 e1                                      mov r0, r4
006fe5ac  05 10 a0 e1                                      mov r1, r5
006fe5b0  0f e0 a0 e1                                      mov lr, pc
006fe5b4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fe5b8  00 00 50 e3                                      cmp r0, #0
006fe5bc  ee ff ff 0a                                      beq #0x6fe57c
006fe5c0  34 10 9f e5                                      ldr r1, [pc, #0x34]
006fe5c4  01 10 8f e0                                      add r1, pc, r1
006fe5c8  53 3f f0 eb                                      bl #0x30e31c
006fe5cc  00 00 50 e3                                      cmp r0, #0
006fe5d0  e9 ff ff 1a                                      bne #0x6fe57c
006fe5d4  05 10 a0 e1                                      mov r1, r5
006fe5d8  04 00 a0 e1                                      mov r0, r4
006fe5dc  00 30 94 e5                                      ldr r3, [r4]
006fe5e0  0f e0 a0 e1                                      mov lr, pc
006fe5e4  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fe5e8  01 50 85 e2                                      add r5, r5, #1
006fe5ec  0c 00 86 e5                                      str r0, [r6, #0xc]
006fe5f0  05 00 a0 e1                                      mov r0, r5
006fe5f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fe5f8  54 6d 1e 00 5c 6d 1e 00                          .byte 0x54, 0x6d, 0x1e, 0x00, 0x5c, 0x6d, 0x1e, 0x00

; FUNCTION 0x006fe600, declared_size=312, range_size=312, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffector6affectEjPNS0_9SParticleEj
; demangled: glitch::scene::CParticleSpinAffector::affect(unsigned int, glitch::scene::SParticle*, unsigned int)
; decoder-mode: arm
006fe600  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fe604  00 50 a0 e1                                      mov r5, r0
006fe608  04 00 d0 e5                                      ldrb r0, [r0, #4]
006fe60c  01 40 a0 e1                                      mov r4, r1
006fe610  03 b0 a0 e1                                      mov fp, r3
006fe614  00 00 50 e3                                      cmp r0, #0
006fe618  45 00 00 0a                                      beq #0x6fe734
006fe61c  00 00 53 e3                                      cmp r3, #0
006fe620  43 00 00 0a                                      beq #0x6fe734
006fe624  00 90 a0 e3                                      mov sb, #0
006fe628  02 60 a0 e1                                      mov r6, r2
006fe62c  00 70 a0 e3                                      mov r7, #0
006fe630  23 00 00 ea                                      b #0x6fe6c4
006fe634  3c 90 86 e5                                      str sb, [r6, #0x3c]
006fe638  08 00 95 e5                                      ldr r0, [r5, #8]
006fe63c  27 3f f0 eb                                      bl #0x30e2e0
006fe640  40 10 96 e5                                      ldr r1, [r6, #0x40]
006fe644  00 a0 a0 e1                                      mov sl, r0
006fe648  c7 41 f0 eb                                      bl #0x30ed6c
006fe64c  c2 14 a0 e3                                      mov r1, #0xc2000000
006fe650  32 17 81 e2                                      add r1, r1, #0xc80000
006fe654  8e 41 f0 eb                                      bl #0x30ec94
006fe658  00 10 a0 e1                                      mov r1, r0
006fe65c  0a 00 a0 e1                                      mov r0, sl
006fe660  4f 41 f0 eb                                      bl #0x30eba4
006fe664  98 3f f0 eb                                      bl #0x30e4cc
006fe668  00 a0 50 e2                                      subs sl, r0, #0
006fe66c  01 70 87 e2                                      add r7, r7, #1
006fe670  04 00 68 e0                                      rsb r0, r8, r4
006fe674  0a 10 a0 e1                                      mov r1, sl
006fe678  0e 00 00 da                                      ble #0x6fe6b8
006fe67c  a0 40 f0 eb                                      bl #0x30e904
006fe680  01 00 a0 e1                                      mov r0, r1
006fe684  b6 40 f0 eb                                      bl #0x30e964
006fe688  00 80 a0 e1                                      mov r8, r0
006fe68c  0a 00 a0 e1                                      mov r0, sl
006fe690  b3 40 f0 eb                                      bl #0x30e964
006fe694  00 10 a0 e1                                      mov r1, r0
006fe698  08 00 a0 e1                                      mov r0, r8
006fe69c  7c 41 f0 eb                                      bl #0x30ec94
006fe6a0  db 1f 00 e3                                      movw r1, #0xfdb
006fe6a4  49 10 44 e3                                      movt r1, #0x4049
006fe6a8  af 41 f0 eb                                      bl #0x30ed6c
006fe6ac  00 10 a0 e1                                      mov r1, r0
006fe6b0  3b 41 f0 eb                                      bl #0x30eba4
006fe6b4  3c 00 86 e5                                      str r0, [r6, #0x3c]
006fe6b8  0b 00 57 e1                                      cmp r7, fp
006fe6bc  44 60 86 e2                                      add r6, r6, #0x44
006fe6c0  1b 00 00 0a                                      beq #0x6fe734
006fe6c4  18 80 96 e5                                      ldr r8, [r6, #0x18]
006fe6c8  04 00 58 e1                                      cmp r8, r4
006fe6cc  d8 ff ff 1a                                      bne #0x6fe634
006fe6d0  0c a0 95 e5                                      ldr sl, [r5, #0xc]
006fe6d4  00 10 a0 e3                                      mov r1, #0
006fe6d8  0a 00 a0 e1                                      mov r0, sl
006fe6dc  05 3f f0 eb                                      bl #0x30e2f8
006fe6e0  00 00 50 e3                                      cmp r0, #0
006fe6e4  40 90 86 05                                      streq sb, [r6, #0x40]
006fe6e8  d1 ff ff 0a                                      beq #0x6fe634
006fe6ec  c4 31 fc eb                                      bl #0x60ae04
006fe6f0  42 14 a0 e3                                      mov r1, #0x42000000
006fe6f4  00 80 a0 e1                                      mov r8, r0
006fe6f8  32 17 81 e2                                      add r1, r1, #0xc80000
006fe6fc  0a 00 a0 e1                                      mov r0, sl
006fe700  99 41 f0 eb                                      bl #0x30ed6c
006fe704  70 3f f0 eb                                      bl #0x30e4cc
006fe708  00 10 a0 e1                                      mov r1, r0
006fe70c  08 00 a0 e1                                      mov r0, r8
006fe710  7b 40 f0 eb                                      bl #0x30e904
006fe714  01 00 a0 e1                                      mov r0, r1
006fe718  91 40 f0 eb                                      bl #0x30e964
006fe71c  42 14 a0 e3                                      mov r1, #0x42000000
006fe720  32 17 81 e2                                      add r1, r1, #0xc80000
006fe724  5a 41 f0 eb                                      bl #0x30ec94
006fe728  18 80 96 e5                                      ldr r8, [r6, #0x18]
006fe72c  40 00 86 e5                                      str r0, [r6, #0x40]
006fe730  bf ff ff ea                                      b #0x6fe634
006fe734  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006fe7ac, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZN6glitch5scene21CParticleSpinAffectorD0Ev
; demangled: glitch::scene::CParticleSpinAffector::~CParticleSpinAffector()
; decoder-mode: arm
006fe7ac  64 30 9f e5                                      ldr r3, [pc, #0x64]
006fe7b0  64 20 9f e5                                      ldr r2, [pc, #0x64]
006fe7b4  64 10 9f e5                                      ldr r1, [pc, #0x64]
006fe7b8  03 30 8f e0                                      add r3, pc, r3
006fe7bc  02 20 93 e7                                      ldr r2, [r3, r2]
006fe7c0  70 40 2d e9                                      push {r4, r5, r6, lr}
006fe7c4  01 10 93 e7                                      ldr r1, [r3, r1]
006fe7c8  04 c0 92 e5                                      ldr ip, [r2, #4]
006fe7cc  14 50 92 e5                                      ldr r5, [r2, #0x14]
006fe7d0  60 10 81 e2                                      add r1, r1, #0x60
006fe7d4  00 c0 80 e5                                      str ip, [r0]
006fe7d8  10 10 80 e5                                      str r1, [r0, #0x10]
006fe7dc  1c e0 1c e5                                      ldr lr, [ip, #-0x1c]
006fe7e0  08 10 92 e5                                      ldr r1, [r2, #8]
006fe7e4  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006fe7e8  0e 50 80 e7                                      str r5, [r0, lr]
006fe7ec  00 e0 90 e5                                      ldr lr, [r0]
006fe7f0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006fe7f4  00 40 a0 e1                                      mov r4, r0
006fe7f8  0c 30 1e e5                                      ldr r3, [lr, #-0xc]
006fe7fc  03 c0 80 e7                                      str ip, [r0, r3]
006fe800  00 10 80 e5                                      str r1, [r0]
006fe804  1c 30 11 e5                                      ldr r3, [r1, #-0x1c]
006fe808  03 20 80 e7                                      str r2, [r0, r3]
006fe80c  a7 3e f0 eb                                      bl #0x30e2b0
006fe810  04 00 a0 e1                                      mov r0, r4
006fe814  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fe818  d8 62 29 00 48 0d 00 00 90 0c 00 00              .byte 0xd8, 0x62, 0x29, 0x00, 0x48, 0x0d, 0x00, 0x00, 0x90, 0x0c, 0x00, 0x00

; FUNCTION 0x006fe824, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZTv0_n24_N6glitch5scene21CParticleSpinAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSpinAffector::~CParticleSpinAffector()
; decoder-mode: arm
006fe824  00 30 90 e5                                      ldr r3, [r0]
006fe828  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fe82c  03 00 80 e0                                      add r0, r0, r3
006fe830  dd ff ff ea                                      b #0x6fe7ac

; FUNCTION 0x006fe834, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZTv0_n12_N6glitch5scene21CParticleSpinAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSpinAffector::~CParticleSpinAffector()
; decoder-mode: arm
006fe834  00 30 90 e5                                      ldr r3, [r0]
006fe838  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fe83c  03 00 80 e0                                      add r0, r0, r3
006fe840  d9 ff ff ea                                      b #0x6fe7ac

; FUNCTION 0x006fe844, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSpinAffector
; alias: _ZTv0_n16_NK6glitch5scene21CParticleSpinAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleSpinAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fe844  00 30 90 e5                                      ldr r3, [r0]
006fe848  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006fe84c  03 00 80 e0                                      add r0, r0, r3
006fe850  10 ff ff ea                                      b #0x6fe498
