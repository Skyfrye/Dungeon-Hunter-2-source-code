; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fa484, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffector14setTargetColorERKNS_5video6SColorE
; demangled: glitch::scene::CParticleFadeOutAffector::setTargetColor(glitch::video::SColor const&)
; decoder-mode: arm
006fa484  10 40 2d e9                                      push {r4, lr}
006fa488  04 20 a0 e3                                      mov r2, #4
006fa48c  05 00 80 e2                                      add r0, r0, #5
006fa490  f4 50 f0 eb                                      bl #0x30e868
006fa494  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fa498, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffector14setFadeOutTimeEf
; demangled: glitch::scene::CParticleFadeOutAffector::setFadeOutTime(float)
; decoder-mode: arm
006fa498  0c 10 80 e5                                      str r1, [r0, #0xc]
006fa49c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fa4a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZNK6glitch5scene24CParticleFadeOutAffector14getTargetColorEv
; demangled: glitch::scene::CParticleFadeOutAffector::getTargetColor() const
; decoder-mode: arm
006fa4a0  05 00 80 e2                                      add r0, r0, #5
006fa4a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fa4a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZNK6glitch5scene24CParticleFadeOutAffector14getFadeOutTimeEv
; demangled: glitch::scene::CParticleFadeOutAffector::getFadeOutTime() const
; decoder-mode: arm
006fa4a8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
006fa4ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fa4d4, declared_size=208, range_size=208, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffectorC2ERKNS_5video6SColorEj
; demangled: glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(glitch::video::SColor const&, unsigned int)
; decoder-mode: arm
006fa4d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006fa4d8  01 c0 a0 e1                                      mov ip, r1
006fa4dc  00 10 a0 e3                                      mov r1, #0
006fa4e0  04 10 80 e5                                      str r1, [r0, #4]
006fa4e4  08 10 80 e5                                      str r1, [r0, #8]
006fa4e8  0c 10 80 e5                                      str r1, [r0, #0xc]
006fa4ec  00 10 80 e5                                      str r1, [r0]
006fa4f0  04 e0 8c e2                                      add lr, ip, #4
006fa4f4  04 10 9e e5                                      ldr r1, [lr, #4]
006fa4f8  00 40 a0 e1                                      mov r4, r0
006fa4fc  04 00 8e e2                                      add r0, lr, #4
006fa500  00 10 84 e5                                      str r1, [r4]
006fa504  1c 60 11 e5                                      ldr r6, [r1, #-0x1c]
006fa508  04 70 90 e5                                      ldr r7, [r0, #4]
006fa50c  03 50 a0 e1                                      mov r5, r3
006fa510  02 10 a0 e1                                      mov r1, r2
006fa514  06 70 84 e7                                      str r7, [r4, r6]
006fa518  00 30 94 e5                                      ldr r3, [r4]
006fa51c  08 60 90 e5                                      ldr r6, [r0, #8]
006fa520  04 20 a0 e3                                      mov r2, #4
006fa524  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa528  05 00 84 e2                                      add r0, r4, #5
006fa52c  03 60 84 e7                                      str r6, [r4, r3]
006fa530  01 30 a0 e3                                      mov r3, #1
006fa534  04 30 c4 e5                                      strb r3, [r4, #4]
006fa538  04 30 9c e5                                      ldr r3, [ip, #4]
006fa53c  00 30 84 e5                                      str r3, [r4]
006fa540  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006fa544  10 60 9e e5                                      ldr r6, [lr, #0x10]
006fa548  03 60 84 e7                                      str r6, [r4, r3]
006fa54c  00 30 94 e5                                      ldr r3, [r4]
006fa550  14 e0 9e e5                                      ldr lr, [lr, #0x14]
006fa554  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa558  03 e0 84 e7                                      str lr, [r4, r3]
006fa55c  00 30 9c e5                                      ldr r3, [ip]
006fa560  00 30 84 e5                                      str r3, [r4]
006fa564  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006fa568  1c e0 9c e5                                      ldr lr, [ip, #0x1c]
006fa56c  03 e0 84 e7                                      str lr, [r4, r3]
006fa570  00 30 94 e5                                      ldr r3, [r4]
006fa574  20 c0 9c e5                                      ldr ip, [ip, #0x20]
006fa578  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa57c  03 c0 84 e7                                      str ip, [r4, r3]
006fa580  b8 50 f0 eb                                      bl #0x30e868
006fa584  00 00 55 e3                                      cmp r5, #0
006fa588  fe 05 a0 03                                      moveq r0, #0x3f800000
006fa58c  01 00 00 0a                                      beq #0x6fa598
006fa590  05 00 a0 e1                                      mov r0, r5
006fa594  51 4f f0 eb                                      bl #0x30e2e0
006fa598  0c 00 84 e5                                      str r0, [r4, #0xc]
006fa59c  04 00 a0 e1                                      mov r0, r4
006fa5a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006fa5a4, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffectorC1ERKNS_5video6SColorEj
; demangled: glitch::scene::CParticleFadeOutAffector::CParticleFadeOutAffector(glitch::video::SColor const&, unsigned int)
; decoder-mode: arm
006fa5a4  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
006fa5a8  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
006fa5ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006fa5b0  0c c0 8f e0                                      add ip, pc, ip
006fa5b4  d8 e0 9f e5                                      ldr lr, [pc, #0xd8]
006fa5b8  03 30 9c e7                                      ldr r3, [ip, r3]
006fa5bc  00 40 a0 e1                                      mov r4, r0
006fa5c0  0e e0 9c e7                                      ldr lr, [ip, lr]
006fa5c4  24 00 93 e5                                      ldr r0, [r3, #0x24]
006fa5c8  01 50 a0 e3                                      mov r5, #1
006fa5cc  08 e0 8e e2                                      add lr, lr, #8
006fa5d0  00 00 84 e5                                      str r0, [r4]
006fa5d4  10 e0 84 e5                                      str lr, [r4, #0x10]
006fa5d8  14 50 84 e5                                      str r5, [r4, #0x14]
006fa5dc  0c 70 10 e5                                      ldr r7, [r0, #-0xc]
006fa5e0  08 e0 93 e5                                      ldr lr, [r3, #8]
006fa5e4  28 80 93 e5                                      ldr r8, [r3, #0x28]
006fa5e8  00 00 a0 e3                                      mov r0, #0
006fa5ec  0c 60 93 e5                                      ldr r6, [r3, #0xc]
006fa5f0  07 80 84 e7                                      str r8, [r4, r7]
006fa5f4  00 e0 84 e5                                      str lr, [r4]
006fa5f8  04 00 84 e5                                      str r0, [r4, #4]
006fa5fc  0c 00 84 e5                                      str r0, [r4, #0xc]
006fa600  08 00 84 e5                                      str r0, [r4, #8]
006fa604  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
006fa608  04 00 93 e5                                      ldr r0, [r3, #4]
006fa60c  10 a0 93 e5                                      ldr sl, [r3, #0x10]
006fa610  0e 60 84 e7                                      str r6, [r4, lr]
006fa614  00 70 94 e5                                      ldr r7, [r4]
006fa618  14 60 93 e5                                      ldr r6, [r3, #0x14]
006fa61c  74 e0 9f e5                                      ldr lr, [pc, #0x74]
006fa620  0c 80 17 e5                                      ldr r8, [r7, #-0xc]
006fa624  18 70 93 e5                                      ldr r7, [r3, #0x18]
006fa628  0e e0 9c e7                                      ldr lr, [ip, lr]
006fa62c  08 a0 84 e7                                      str sl, [r4, r8]
006fa630  04 50 c4 e5                                      strb r5, [r4, #4]
006fa634  00 00 84 e5                                      str r0, [r4]
006fa638  1c 00 10 e5                                      ldr r0, [r0, #-0x1c]
006fa63c  02 50 a0 e1                                      mov r5, r2
006fa640  60 30 8e e2                                      add r3, lr, #0x60
006fa644  00 60 84 e7                                      str r6, [r4, r0]
006fa648  00 20 94 e5                                      ldr r2, [r4]
006fa64c  1c e0 8e e2                                      add lr, lr, #0x1c
006fa650  05 00 84 e2                                      add r0, r4, #5
006fa654  0c 60 12 e5                                      ldr r6, [r2, #-0xc]
006fa658  04 20 a0 e3                                      mov r2, #4
006fa65c  06 70 84 e7                                      str r7, [r4, r6]
006fa660  00 e0 84 e5                                      str lr, [r4]
006fa664  10 30 84 e5                                      str r3, [r4, #0x10]
006fa668  7e 50 f0 eb                                      bl #0x30e868
006fa66c  00 00 55 e3                                      cmp r5, #0
006fa670  fe 05 a0 03                                      moveq r0, #0x3f800000
006fa674  01 00 00 0a                                      beq #0x6fa680
006fa678  05 00 a0 e1                                      mov r0, r5
006fa67c  17 4f f0 eb                                      bl #0x30e2e0
006fa680  0c 00 84 e5                                      str r0, [r4, #0xc]
006fa684  04 00 a0 e1                                      mov r0, r4
006fa688  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006fa68c  e0 a4 29 00 10 08 00 00 44 2b 00 00 78 1d 00 00  .byte 0xe0, 0xa4, 0x29, 0x00, 0x10, 0x08, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x78, 0x1d, 0x00, 0x00

; FUNCTION 0x006fa69c, declared_size=180, range_size=180, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffector6affectEjPNS0_9SParticleEj
; demangled: glitch::scene::CParticleFadeOutAffector::affect(unsigned int, glitch::scene::SParticle*, unsigned int)
; decoder-mode: arm
006fa69c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fa6a0  00 40 a0 e1                                      mov r4, r0
006fa6a4  04 00 d0 e5                                      ldrb r0, [r0, #4]
006fa6a8  01 50 a0 e1                                      mov r5, r1
006fa6ac  03 80 a0 e1                                      mov r8, r3
006fa6b0  00 00 50 e3                                      cmp r0, #0
006fa6b4  24 00 00 0a                                      beq #0x6fa74c
006fa6b8  00 00 53 e3                                      cmp r3, #0
006fa6bc  22 00 00 0a                                      beq #0x6fa74c
006fa6c0  02 60 a0 e1                                      mov r6, r2
006fa6c4  05 a0 84 e2                                      add sl, r4, #5
006fa6c8  00 70 a0 e3                                      mov r7, #0
006fa6cc  02 00 00 ea                                      b #0x6fa6dc
006fa6d0  08 00 57 e1                                      cmp r7, r8
006fa6d4  44 60 86 e2                                      add r6, r6, #0x44
006fa6d8  1b 00 00 0a                                      beq #0x6fa74c
006fa6dc  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
006fa6e0  01 70 87 e2                                      add r7, r7, #1
006fa6e4  00 00 65 e0                                      rsb r0, r5, r0
006fa6e8  fc 4e f0 eb                                      bl #0x30e2e0
006fa6ec  0c 90 94 e5                                      ldr sb, [r4, #0xc]
006fa6f0  00 b0 a0 e1                                      mov fp, r0
006fa6f4  09 10 a0 e1                                      mov r1, sb
006fa6f8  03 50 f0 eb                                      bl #0x30e70c
006fa6fc  00 00 50 e3                                      cmp r0, #0
006fa700  f2 ff ff 0a                                      beq #0x6fa6d0
006fa704  09 10 a0 e1                                      mov r1, sb
006fa708  0b 00 a0 e1                                      mov r0, fp
006fa70c  60 51 f0 eb                                      bl #0x30ec94
006fa710  24 90 86 e2                                      add sb, r6, #0x24
006fa714  00 20 a0 e1                                      mov r2, r0
006fa718  0a 10 a0 e1                                      mov r1, sl
006fa71c  09 00 a0 e1                                      mov r0, sb
006fa720  19 1a f9 eb                                      bl #0x540f8c
006fa724  08 00 57 e1                                      cmp r7, r8
006fa728  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fa72c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fa730  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fa734  21 10 c6 e5                                      strb r1, [r6, #0x21]
006fa738  22 20 c6 e5                                      strb r2, [r6, #0x22]
006fa73c  23 30 c6 e5                                      strb r3, [r6, #0x23]
006fa740  20 00 c6 e5                                      strb r0, [r6, #0x20]
006fa744  44 60 86 e2                                      add r6, r6, #0x44
006fa748  e3 ff ff 1a                                      bne #0x6fa6dc
006fa74c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006fa750, declared_size=112, range_size=112, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZNK6glitch5scene24CParticleFadeOutAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleFadeOutAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fa750  70 40 2d e9                                      push {r4, r5, r6, lr}
006fa754  06 c0 d0 e5                                      ldrb ip, [r0, #6]
006fa758  05 30 d0 e5                                      ldrb r3, [r0, #5]
006fa75c  00 40 a0 e1                                      mov r4, r0
006fa760  07 00 d0 e5                                      ldrb r0, [r0, #7]
006fa764  01 50 a0 e1                                      mov r5, r1
006fa768  08 20 d4 e5                                      ldrb r2, [r4, #8]
006fa76c  44 10 9f e5                                      ldr r1, [pc, #0x44]
006fa770  0c 34 83 e1                                      orr r3, r3, ip, lsl #8
006fa774  00 38 83 e1                                      orr r3, r3, r0, lsl #16
006fa778  02 2c 83 e1                                      orr r2, r3, r2, lsl #24
006fa77c  05 00 a0 e1                                      mov r0, r5
006fa780  00 c0 95 e5                                      ldr ip, [r5]
006fa784  01 10 8f e0                                      add r1, pc, r1
006fa788  00 30 a0 e3                                      mov r3, #0
006fa78c  0f e0 a0 e1                                      mov lr, pc
006fa790  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006fa794  20 10 9f e5                                      ldr r1, [pc, #0x20]
006fa798  05 00 a0 e1                                      mov r0, r5
006fa79c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
006fa7a0  01 10 8f e0                                      add r1, pc, r1
006fa7a4  00 c0 95 e5                                      ldr ip, [r5]
006fa7a8  00 30 a0 e3                                      mov r3, #0
006fa7ac  0f e0 a0 e1                                      mov lr, pc
006fa7b0  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006fa7b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fa7b8  ec 75 1f 00 e0 75 1f 00                          .byte 0xec, 0x75, 0x1f, 0x00, 0xe0, 0x75, 0x1f, 0x00

; FUNCTION 0x006fa7c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffectorD1Ev
; demangled: glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector()
; decoder-mode: arm
006fa7c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fa7c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZTv0_n24_N6glitch5scene24CParticleFadeOutAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector()
; decoder-mode: arm
006fa7c4  00 30 90 e5                                      ldr r3, [r0]
006fa7c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fa7cc  03 00 80 e0                                      add r0, r0, r3
006fa7d0  fa ff ff ea                                      b #0x6fa7c0

; FUNCTION 0x006fa7d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZTv0_n12_N6glitch5scene24CParticleFadeOutAffectorD1Ev
; demangled: virtual thunk to glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector()
; decoder-mode: arm
006fa7d4  00 30 90 e5                                      ldr r3, [r0]
006fa7d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa7dc  03 00 80 e0                                      add r0, r0, r3
006fa7e0  f6 ff ff ea                                      b #0x6fa7c0

; FUNCTION 0x006fa804, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleFadeOutAffector::deserializeAttributes(int, glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006fa804  70 40 2d e9                                      push {r4, r5, r6, lr}
006fa808  00 60 a0 e1                                      mov r6, r0
006fa80c  00 30 92 e5                                      ldr r3, [r2]
006fa810  02 00 a0 e1                                      mov r0, r2
006fa814  02 40 a0 e1                                      mov r4, r2
006fa818  01 50 a0 e1                                      mov r5, r1
006fa81c  0f e0 a0 e1                                      mov lr, pc
006fa820  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fa824  00 00 50 e3                                      cmp r0, #0
006fa828  04 00 00 0a                                      beq #0x6fa840
006fa82c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
006fa830  01 10 8f e0                                      add r1, pc, r1
006fa834  b8 4e f0 eb                                      bl #0x30e31c
006fa838  00 00 50 e3                                      cmp r0, #0
006fa83c  01 00 00 0a                                      beq #0x6fa848
006fa840  05 00 a0 e1                                      mov r0, r5
006fa844  70 80 bd e8                                      pop {r4, r5, r6, pc}
006fa848  05 10 a0 e1                                      mov r1, r5
006fa84c  00 30 94 e5                                      ldr r3, [r4]
006fa850  04 00 a0 e1                                      mov r0, r4
006fa854  0f e0 a0 e1                                      mov lr, pc
006fa858  28 f1 93 e5                                      ldr pc, [r3, #0x128]
006fa85c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006fa860  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006fa864  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006fa868  06 10 c6 e5                                      strb r1, [r6, #6]
006fa86c  05 00 c6 e5                                      strb r0, [r6, #5]
006fa870  07 20 c6 e5                                      strb r2, [r6, #7]
006fa874  08 30 c6 e5                                      strb r3, [r6, #8]
006fa878  01 50 85 e2                                      add r5, r5, #1
006fa87c  00 30 94 e5                                      ldr r3, [r4]
006fa880  04 00 a0 e1                                      mov r0, r4
006fa884  05 10 a0 e1                                      mov r1, r5
006fa888  0f e0 a0 e1                                      mov lr, pc
006fa88c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006fa890  00 00 50 e3                                      cmp r0, #0
006fa894  e9 ff ff 0a                                      beq #0x6fa840
006fa898  34 10 9f e5                                      ldr r1, [pc, #0x34]
006fa89c  01 10 8f e0                                      add r1, pc, r1
006fa8a0  9d 4e f0 eb                                      bl #0x30e31c
006fa8a4  00 00 50 e3                                      cmp r0, #0
006fa8a8  e4 ff ff 1a                                      bne #0x6fa840
006fa8ac  05 10 a0 e1                                      mov r1, r5
006fa8b0  04 00 a0 e1                                      mov r0, r4
006fa8b4  00 30 94 e5                                      ldr r3, [r4]
006fa8b8  0f e0 a0 e1                                      mov lr, pc
006fa8bc  74 f0 93 e5                                      ldr pc, [r3, #0x74]
006fa8c0  01 50 85 e2                                      add r5, r5, #1
006fa8c4  0c 00 86 e5                                      str r0, [r6, #0xc]
006fa8c8  05 00 a0 e1                                      mov r0, r5
006fa8cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fa8d0  40 75 1f 00 e4 74 1f 00                          .byte 0x40, 0x75, 0x1f, 0x00, 0xe4, 0x74, 0x1f, 0x00

; FUNCTION 0x006fa94c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZN6glitch5scene24CParticleFadeOutAffectorD0Ev
; demangled: glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector()
; decoder-mode: arm
006fa94c  64 30 9f e5                                      ldr r3, [pc, #0x64]
006fa950  64 20 9f e5                                      ldr r2, [pc, #0x64]
006fa954  64 10 9f e5                                      ldr r1, [pc, #0x64]
006fa958  03 30 8f e0                                      add r3, pc, r3
006fa95c  02 20 93 e7                                      ldr r2, [r3, r2]
006fa960  70 40 2d e9                                      push {r4, r5, r6, lr}
006fa964  01 10 93 e7                                      ldr r1, [r3, r1]
006fa968  04 c0 92 e5                                      ldr ip, [r2, #4]
006fa96c  14 50 92 e5                                      ldr r5, [r2, #0x14]
006fa970  60 10 81 e2                                      add r1, r1, #0x60
006fa974  00 c0 80 e5                                      str ip, [r0]
006fa978  10 10 80 e5                                      str r1, [r0, #0x10]
006fa97c  1c e0 1c e5                                      ldr lr, [ip, #-0x1c]
006fa980  08 10 92 e5                                      ldr r1, [r2, #8]
006fa984  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006fa988  0e 50 80 e7                                      str r5, [r0, lr]
006fa98c  00 e0 90 e5                                      ldr lr, [r0]
006fa990  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006fa994  00 40 a0 e1                                      mov r4, r0
006fa998  0c 30 1e e5                                      ldr r3, [lr, #-0xc]
006fa99c  03 c0 80 e7                                      str ip, [r0, r3]
006fa9a0  00 10 80 e5                                      str r1, [r0]
006fa9a4  1c 30 11 e5                                      ldr r3, [r1, #-0x1c]
006fa9a8  03 20 80 e7                                      str r2, [r0, r3]
006fa9ac  3f 4e f0 eb                                      bl #0x30e2b0
006fa9b0  04 00 a0 e1                                      mov r0, r4
006fa9b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006fa9b8  38 a1 29 00 10 08 00 00 78 1d 00 00              .byte 0x38, 0xa1, 0x29, 0x00, 0x10, 0x08, 0x00, 0x00, 0x78, 0x1d, 0x00, 0x00

; FUNCTION 0x006fa9c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZTv0_n24_N6glitch5scene24CParticleFadeOutAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector()
; decoder-mode: arm
006fa9c4  00 30 90 e5                                      ldr r3, [r0]
006fa9c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006fa9cc  03 00 80 e0                                      add r0, r0, r3
006fa9d0  dd ff ff ea                                      b #0x6fa94c

; FUNCTION 0x006fa9d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZTv0_n12_N6glitch5scene24CParticleFadeOutAffectorD0Ev
; demangled: virtual thunk to glitch::scene::CParticleFadeOutAffector::~CParticleFadeOutAffector()
; decoder-mode: arm
006fa9d4  00 30 90 e5                                      ldr r3, [r0]
006fa9d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006fa9dc  03 00 80 e0                                      add r0, r0, r3
006fa9e0  d9 ff ff ea                                      b #0x6fa94c

; FUNCTION 0x006fa9e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleFadeOutAffector
; alias: _ZTv0_n16_NK6glitch5scene24CParticleFadeOutAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleFadeOutAffector::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006fa9e4  00 30 90 e5                                      ldr r3, [r0]
006fa9e8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006fa9ec  03 00 80 e0                                      add r0, r0, r3
006fa9f0  56 ff ff ea                                      b #0x6fa750
