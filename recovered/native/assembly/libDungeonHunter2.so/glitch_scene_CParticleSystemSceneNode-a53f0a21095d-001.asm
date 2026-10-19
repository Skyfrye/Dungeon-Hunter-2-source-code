; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c0dc4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZNK6glitch5scene24CParticleSystemSceneNode7getTypeEv
; demangled: glitch::scene::CParticleSystemSceneNode::getType() const
; decoder-mode: arm
006c0dc4  70 04 07 e3                                      movw r0, #0x7470
006c0dc8  63 0c 46 e3                                      movt r0, #0x6c63
006c0dcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0dd0, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZNK6glitch5scene24CParticleSystemSceneNode20getNumberOfParticlesEv
; demangled: glitch::scene::CParticleSystemSceneNode::getNumberOfParticles() const
; decoder-mode: arm
006c0dd0  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
006c0dd4  40 21 90 e5                                      ldr r2, [r0, #0x140]
006c0dd8  02 30 63 e0                                      rsb r3, r3, r2
006c0ddc  43 31 a0 e1                                      asr r3, r3, #2
006c0de0  03 02 a0 e1                                      lsl r0, r3, #4
006c0de4  00 00 63 e0                                      rsb r0, r3, r0
006c0de8  00 04 80 e0                                      add r0, r0, r0, lsl #8
006c0dec  00 08 80 e0                                      add r0, r0, r0, lsl #16
006c0df0  00 02 83 e0                                      add r0, r3, r0, lsl #4
006c0df4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0df8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode10getEmitterEv
; demangled: glitch::scene::CParticleSystemSceneNode::getEmitter()
; decoder-mode: arm
006c0df8  38 01 90 e5                                      ldr r0, [r0, #0x138]
006c0dfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0e00, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode10setEmitterEPNS0_16IParticleEmitterE
; demangled: glitch::scene::CParticleSystemSceneNode::setEmitter(glitch::scene::IParticleEmitter*)
; decoder-mode: arm
006c0e00  70 40 2d e9                                      push {r4, r5, r6, lr}
006c0e04  38 31 90 e5                                      ldr r3, [r0, #0x138]
006c0e08  00 40 a0 e1                                      mov r4, r0
006c0e0c  01 50 a0 e1                                      mov r5, r1
006c0e10  00 00 53 e3                                      cmp r3, #0
006c0e14  03 00 00 0a                                      beq #0x6c0e28
006c0e18  00 20 93 e5                                      ldr r2, [r3]
006c0e1c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c0e20  00 00 83 e0                                      add r0, r3, r0
006c0e24  d6 71 f1 eb                                      bl #0x31d584
006c0e28  00 00 55 e3                                      cmp r5, #0
006c0e2c  38 51 84 e5                                      str r5, [r4, #0x138]
006c0e30  05 00 00 0a                                      beq #0x6c0e4c
006c0e34  00 30 95 e5                                      ldr r3, [r5]
006c0e38  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c0e3c  03 50 85 e0                                      add r5, r5, r3
006c0e40  04 30 95 e5                                      ldr r3, [r5, #4]
006c0e44  01 30 83 e2                                      add r3, r3, #1
006c0e48  04 30 85 e5                                      str r3, [r5, #4]
006c0e4c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c0e50, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode11getMaterialEj
; demangled: glitch::scene::CParticleSystemSceneNode::getMaterial(unsigned int)
; decoder-mode: arm
006c0e50  5d 0f 80 e2                                      add r0, r0, #0x174
006c0e54  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0e58, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZNK6glitch5scene24CParticleSystemSceneNode16getMaterialCountEv
; demangled: glitch::scene::CParticleSystemSceneNode::getMaterialCount() const
; decoder-mode: arm
006c0e58  01 00 a0 e3                                      mov r0, #1
006c0e5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0e60, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CParticleSystemSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006c0e60  04 e0 2d e5                                      str lr, [sp, #-4]!
006c0e64  40 21 90 e5                                      ldr r2, [r0, #0x140]
006c0e68  3c 31 90 e5                                      ldr r3, [r0, #0x13c]
006c0e6c  14 d0 4d e2                                      sub sp, sp, #0x14
006c0e70  02 30 63 e0                                      rsb r3, r3, r2
006c0e74  43 31 a0 e1                                      asr r3, r3, #2
006c0e78  03 22 a0 e1                                      lsl r2, r3, #4
006c0e7c  02 20 63 e0                                      rsb r2, r3, r2
006c0e80  02 24 82 e0                                      add r2, r2, r2, lsl #8
006c0e84  02 28 82 e0                                      add r2, r2, r2, lsl #16
006c0e88  02 32 83 e0                                      add r3, r3, r2, lsl #4
006c0e8c  00 00 53 e3                                      cmp r3, #0
006c0e90  0d 00 00 0a                                      beq #0x6c0ecc
006c0e94  10 31 90 e5                                      ldr r3, [r0, #0x110]
006c0e98  00 10 a0 e1                                      mov r1, r0
006c0e9c  5d 2f 81 e2                                      add r2, r1, #0x174
006c0ea0  00 c0 93 e5                                      ldr ip, [r3]
006c0ea4  03 00 a0 e1                                      mov r0, r3
006c0ea8  03 30 a0 e3                                      mov r3, #3
006c0eac  00 30 8d e5                                      str r3, [sp]
006c0eb0  00 30 a0 e3                                      mov r3, #0
006c0eb4  04 30 8d e5                                      str r3, [sp, #4]
006c0eb8  02 31 e0 e3                                      mvn r3, #0x80000000
006c0ebc  08 30 8d e5                                      str r3, [sp, #8]
006c0ec0  01 30 a0 e3                                      mov r3, #1
006c0ec4  0f e0 a0 e1                                      mov lr, pc
006c0ec8  24 f0 9c e5                                      ldr pc, [ip, #0x24]
006c0ecc  01 00 a0 e3                                      mov r0, #1
006c0ed0  14 d0 8d e2                                      add sp, sp, #0x14
006c0ed4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006c0ed8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode15setTransparencyEf
; demangled: glitch::scene::CParticleSystemSceneNode::setTransparency(float)
; decoder-mode: arm
006c0ed8  84 11 80 e5                                      str r1, [r0, #0x184]
006c0edc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0ee0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode6renderEPv
; demangled: glitch::scene::CParticleSystemSceneNode::render(void*)
; decoder-mode: arm
006c0ee0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0ee4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZNK6glitch5scene24CParticleSystemSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CParticleSystemSceneNode::getBoundingBox() const
; decoder-mode: arm
006c0ee4  56 0f 80 e2                                      add r0, r0, #0x158
006c0ee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0eec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode21setParticlesAreGlobalEb
; demangled: glitch::scene::CParticleSystemSceneNode::setParticlesAreGlobal(bool)
; decoder-mode: arm
006c0eec  80 11 c0 e5                                      strb r1, [r0, #0x180]
006c0ef0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0ef4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode15setParticleSizeERKNS_4core11dimension2dIfEE
; demangled: glitch::scene::CParticleSystemSceneNode::setParticleSize(glitch::core::dimension2d<float> const&)
; decoder-mode: arm
006c0ef4  00 30 91 e5                                      ldr r3, [r1]
006c0ef8  48 31 80 e5                                      str r3, [r0, #0x148]
006c0efc  04 30 91 e5                                      ldr r3, [r1, #4]
006c0f00  4c 31 80 e5                                      str r3, [r0, #0x14c]
006c0f04  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0f08, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode17reallocateBuffersEv
; demangled: glitch::scene::CParticleSystemSceneNode::reallocateBuffers()
; decoder-mode: arm
006c0f08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c0f0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode16setBillboardTypeENS0_25E_PARTICLE_BILLBOARD_TYPEE
; demangled: glitch::scene::CParticleSystemSceneNode::setBillboardType(glitch::scene::E_PARTICLE_BILLBOARD_TYPE)
; decoder-mode: arm
006c0f0c  7c 11 80 e5                                      str r1, [r0, #0x17c]
006c0f10  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c1554, declared_size=464, range_size=464, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZNK6glitch5scene24CParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006c1554  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006c1558  08 d0 4d e2                                      sub sp, sp, #8
006c155c  01 50 a0 e1                                      mov r5, r1
006c1560  00 70 a0 e1                                      mov r7, r0
006c1564  02 90 a0 e1                                      mov sb, r2
006c1568  4d 57 fb eb                                      bl #0x5972a4
006c156c  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
006c1570  05 00 a0 e1                                      mov r0, r5
006c1574  80 21 d7 e5                                      ldrb r2, [r7, #0x180]
006c1578  01 10 8f e0                                      add r1, pc, r1
006c157c  00 30 a0 e3                                      mov r3, #0
006c1580  00 c0 95 e5                                      ldr ip, [r5]
006c1584  0f e0 a0 e1                                      mov lr, pc
006c1588  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006c158c  70 11 9f e5                                      ldr r1, [pc, #0x170]
006c1590  05 00 a0 e1                                      mov r0, r5
006c1594  48 21 97 e5                                      ldr r2, [r7, #0x148]
006c1598  01 10 8f e0                                      add r1, pc, r1
006c159c  00 30 a0 e3                                      mov r3, #0
006c15a0  00 c0 95 e5                                      ldr ip, [r5]
006c15a4  0f e0 a0 e1                                      mov lr, pc
006c15a8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006c15ac  54 11 9f e5                                      ldr r1, [pc, #0x154]
006c15b0  4c 21 97 e5                                      ldr r2, [r7, #0x14c]
006c15b4  00 30 a0 e3                                      mov r3, #0
006c15b8  00 c0 95 e5                                      ldr ip, [r5]
006c15bc  05 00 a0 e1                                      mov r0, r5
006c15c0  01 10 8f e0                                      add r1, pc, r1
006c15c4  0f e0 a0 e1                                      mov lr, pc
006c15c8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006c15cc  38 31 97 e5                                      ldr r3, [r7, #0x138]
006c15d0  00 00 53 e3                                      cmp r3, #0
006c15d4  07 20 a0 03                                      moveq r2, #7
006c15d8  04 00 00 0a                                      beq #0x6c15f0
006c15dc  03 00 a0 e1                                      mov r0, r3
006c15e0  00 30 93 e5                                      ldr r3, [r3]
006c15e4  0f e0 a0 e1                                      mov lr, pc
006c15e8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
006c15ec  00 20 a0 e1                                      mov r2, r0
006c15f0  00 30 a0 e3                                      mov r3, #0
006c15f4  00 30 8d e5                                      str r3, [sp]
006c15f8  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
006c15fc  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
006c1600  00 c0 95 e5                                      ldr ip, [r5]
006c1604  01 10 8f e0                                      add r1, pc, r1
006c1608  03 30 8f e0                                      add r3, pc, r3
006c160c  05 00 a0 e1                                      mov r0, r5
006c1610  0f e0 a0 e1                                      mov lr, pc
006c1614  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006c1618  38 31 97 e5                                      ldr r3, [r7, #0x138]
006c161c  00 00 53 e3                                      cmp r3, #0
006c1620  05 00 00 0a                                      beq #0x6c163c
006c1624  03 00 a0 e1                                      mov r0, r3
006c1628  05 10 a0 e1                                      mov r1, r5
006c162c  00 30 93 e5                                      ldr r3, [r3]
006c1630  09 20 a0 e1                                      mov r2, sb
006c1634  0f e0 a0 e1                                      mov lr, pc
006c1638  00 f0 93 e5                                      ldr pc, [r3]
006c163c  d0 a0 9f e5                                      ldr sl, [pc, #0xd0]
006c1640  d0 80 9f e5                                      ldr r8, [pc, #0xd0]
006c1644  30 41 b7 e5                                      ldr r4, [r7, #0x130]!
006c1648  0a a0 8f e0                                      add sl, pc, sl
006c164c  08 80 8f e0                                      add r8, pc, r8
006c1650  20 a0 8a e2                                      add sl, sl, #0x20
006c1654  00 60 a0 e3                                      mov r6, #0
006c1658  14 00 00 ea                                      b #0x6c16b0
006c165c  08 30 94 e5                                      ldr r3, [r4, #8]
006c1660  03 00 a0 e1                                      mov r0, r3
006c1664  00 30 93 e5                                      ldr r3, [r3]
006c1668  0f e0 a0 e1                                      mov lr, pc
006c166c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006c1670  00 60 8d e5                                      str r6, [sp]
006c1674  00 20 a0 e1                                      mov r2, r0
006c1678  08 10 a0 e1                                      mov r1, r8
006c167c  05 00 a0 e1                                      mov r0, r5
006c1680  0a 30 a0 e1                                      mov r3, sl
006c1684  00 c0 95 e5                                      ldr ip, [r5]
006c1688  0f e0 a0 e1                                      mov lr, pc
006c168c  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006c1690  08 30 94 e5                                      ldr r3, [r4, #8]
006c1694  05 10 a0 e1                                      mov r1, r5
006c1698  06 20 a0 e1                                      mov r2, r6
006c169c  03 00 a0 e1                                      mov r0, r3
006c16a0  00 30 93 e5                                      ldr r3, [r3]
006c16a4  0f e0 a0 e1                                      mov lr, pc
006c16a8  00 f0 93 e5                                      ldr pc, [r3]
006c16ac  00 40 94 e5                                      ldr r4, [r4]
006c16b0  04 00 57 e1                                      cmp r7, r4
006c16b4  e8 ff ff 1a                                      bne #0x6c165c
006c16b8  00 00 59 e3                                      cmp sb, #0
006c16bc  0d 00 00 0a                                      beq #0x6c16f8
006c16c0  00 30 99 e5                                      ldr r3, [sb]
006c16c4  02 00 13 e3                                      tst r3, #2
006c16c8  0a 00 00 0a                                      beq #0x6c16f8
006c16cc  48 30 9f e5                                      ldr r3, [pc, #0x48]
006c16d0  48 10 9f e5                                      ldr r1, [pc, #0x48]
006c16d4  00 20 a0 e3                                      mov r2, #0
006c16d8  03 30 8f e0                                      add r3, pc, r3
006c16dc  00 20 8d e5                                      str r2, [sp]
006c16e0  05 00 a0 e1                                      mov r0, r5
006c16e4  01 10 8f e0                                      add r1, pc, r1
006c16e8  20 30 83 e2                                      add r3, r3, #0x20
006c16ec  00 c0 95 e5                                      ldr ip, [r5]
006c16f0  0f e0 a0 e1                                      mov lr, pc
006c16f4  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
006c16f8  08 d0 8d e2                                      add sp, sp, #8
006c16fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006c1700  d0 9d 22 00 c0 9d 22 00 a8 9d 22 00 74 9d 22 00  .byte 0xd0, 0x9d, 0x22, 0x00, 0xc0, 0x9d, 0x22, 0x00, 0xa8, 0x9d, 0x22, 0x00, 0x74, 0x9d, 0x22, 0x00
006c1710  bc 65 29 00 7c 65 29 00 34 9d 22 00 ec 64 29 00  .byte 0xbc, 0x65, 0x29, 0x00, 0x7c, 0x65, 0x29, 0x00, 0x34, 0x9d, 0x22, 0x00, 0xec, 0x64, 0x29, 0x00
006c1720  9c 9c 22 00                                      .byte 0x9c, 0x9c, 0x22, 0x00

; FUNCTION 0x006c1790, declared_size=1092, range_size=1092, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006c1790  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c1794  74 d0 4d e2                                      sub sp, sp, #0x74
006c1798  01 50 a0 e1                                      mov r5, r1
006c179c  00 70 a0 e1                                      mov r7, r0
006c17a0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006c17a4  2b 5a fb eb                                      bl #0x598058
006c17a8  04 14 9f e5                                      ldr r1, [pc, #0x404]
006c17ac  00 30 95 e5                                      ldr r3, [r5]
006c17b0  05 00 a0 e1                                      mov r0, r5
006c17b4  01 10 8f e0                                      add r1, pc, r1
006c17b8  0f e0 a0 e1                                      mov lr, pc
006c17bc  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006c17c0  f0 13 9f e5                                      ldr r1, [pc, #0x3f0]
006c17c4  80 01 c7 e5                                      strb r0, [r7, #0x180]
006c17c8  00 30 95 e5                                      ldr r3, [r5]
006c17cc  01 10 8f e0                                      add r1, pc, r1
006c17d0  05 00 a0 e1                                      mov r0, r5
006c17d4  0f e0 a0 e1                                      mov lr, pc
006c17d8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006c17dc  d8 13 9f e5                                      ldr r1, [pc, #0x3d8]
006c17e0  48 01 87 e5                                      str r0, [r7, #0x148]
006c17e4  00 30 95 e5                                      ldr r3, [r5]
006c17e8  01 10 8f e0                                      add r1, pc, r1
006c17ec  05 00 a0 e1                                      mov r0, r5
006c17f0  0f e0 a0 e1                                      mov lr, pc
006c17f4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006c17f8  c0 13 9f e5                                      ldr r1, [pc, #0x3c0]
006c17fc  4c 01 87 e5                                      str r0, [r7, #0x14c]
006c1800  00 30 95 e5                                      ldr r3, [r5]
006c1804  01 10 8f e0                                      add r1, pc, r1
006c1808  05 00 a0 e1                                      mov r0, r5
006c180c  0f e0 a0 e1                                      mov lr, pc
006c1810  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c1814  01 00 70 e3                                      cmn r0, #1
006c1818  8a 00 00 0a                                      beq #0x6c1a48
006c181c  38 31 97 e5                                      ldr r3, [r7, #0x138]
006c1820  00 00 53 e3                                      cmp r3, #0
006c1824  03 00 00 0a                                      beq #0x6c1838
006c1828  00 20 93 e5                                      ldr r2, [r3]
006c182c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c1830  00 00 83 e0                                      add r0, r3, r0
006c1834  52 6f f1 eb                                      bl #0x31d584
006c1838  84 13 9f e5                                      ldr r1, [pc, #0x384]
006c183c  84 23 9f e5                                      ldr r2, [pc, #0x384]
006c1840  00 40 a0 e3                                      mov r4, #0
006c1844  38 41 87 e5                                      str r4, [r7, #0x138]
006c1848  01 10 8f e0                                      add r1, pc, r1
006c184c  02 20 8f e0                                      add r2, pc, r2
006c1850  00 30 95 e5                                      ldr r3, [r5]
006c1854  05 00 a0 e1                                      mov r0, r5
006c1858  0f e0 a0 e1                                      mov lr, pc
006c185c  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006c1860  00 00 50 e3                                      cmp r0, #0
006c1864  b0 00 00 0a                                      beq #0x6c1b2c
006c1868  02 00 50 e3                                      cmp r0, #2
006c186c  38 31 97 15                                      ldrne r3, [r7, #0x138]
006c1870  30 00 00 1a                                      bne #0x6c1938
006c1874  00 00 97 e5                                      ldr r0, [r7]
006c1878  c1 14 a0 e3                                      mov r1, #0xc1000000
006c187c  00 30 e0 e3                                      mvn r3, #0
006c1880  10 c1 90 e5                                      ldr ip, [r0, #0x110]
006c1884  01 01 a0 e3                                      mov r0, #0x40000000
006c1888  0a 06 80 e2                                      add r0, r0, #0xa00000
006c188c  2c 00 8d e5                                      str r0, [sp, #0x2c]
006c1890  41 04 a0 e3                                      mov r0, #0x41000000
006c1894  0f 06 80 e2                                      add r0, r0, #0xf00000
006c1898  30 00 8d e5                                      str r0, [sp, #0x30]
006c189c  41 04 a0 e3                                      mov r0, #0x41000000
006c18a0  02 06 80 e2                                      add r0, r0, #0x200000
006c18a4  34 00 8d e5                                      str r0, [sp, #0x34]
006c18a8  8f 02 0c e3                                      movw r0, #0xc28f
006c18ac  f5 0c 43 e3                                      movt r0, #0x3cf5
006c18b0  48 00 8d e5                                      str r0, [sp, #0x48]
006c18b4  0a 00 a0 e3                                      mov r0, #0xa
006c18b8  00 00 8d e5                                      str r0, [sp]
006c18bc  64 00 8d e2                                      add r0, sp, #0x64
006c18c0  04 00 8d e5                                      str r0, [sp, #4]
006c18c4  60 00 8d e2                                      add r0, sp, #0x60
006c18c8  08 00 8d e5                                      str r0, [sp, #8]
006c18cc  7d 0e a0 e3                                      mov r0, #0x7d0
006c18d0  00 20 a0 e3                                      mov r2, #0
006c18d4  02 16 81 e2                                      add r1, r1, #0x200000
006c18d8  0c 00 8d e5                                      str r0, [sp, #0xc]
006c18dc  fa 0e a0 e3                                      mov r0, #0xfa0
006c18e0  28 10 8d e5                                      str r1, [sp, #0x28]
006c18e4  4c 20 8d e5                                      str r2, [sp, #0x4c]
006c18e8  63 30 cd e5                                      strb r3, [sp, #0x63]
006c18ec  10 00 8d e5                                      str r0, [sp, #0x10]
006c18f0  20 10 8d e5                                      str r1, [sp, #0x20]
006c18f4  24 20 8d e5                                      str r2, [sp, #0x24]
006c18f8  44 20 8d e5                                      str r2, [sp, #0x44]
006c18fc  67 30 cd e5                                      strb r3, [sp, #0x67]
006c1900  60 30 cd e5                                      strb r3, [sp, #0x60]
006c1904  61 30 cd e5                                      strb r3, [sp, #0x61]
006c1908  62 30 cd e5                                      strb r3, [sp, #0x62]
006c190c  14 40 8d e5                                      str r4, [sp, #0x14]
006c1910  05 30 a0 e3                                      mov r3, #5
006c1914  64 40 cd e5                                      strb r4, [sp, #0x64]
006c1918  65 40 cd e5                                      strb r4, [sp, #0x65]
006c191c  66 40 cd e5                                      strb r4, [sp, #0x66]
006c1920  07 00 a0 e1                                      mov r0, r7
006c1924  20 10 8d e2                                      add r1, sp, #0x20
006c1928  44 20 8d e2                                      add r2, sp, #0x44
006c192c  3c ff 2f e1                                      blx ip
006c1930  00 30 a0 e1                                      mov r3, r0
006c1934  38 01 87 e5                                      str r0, [r7, #0x138]
006c1938  00 00 53 e3                                      cmp r3, #0
006c193c  01 40 a0 03                                      moveq r4, #1
006c1940  07 00 00 0a                                      beq #0x6c1964
006c1944  00 10 a0 e3                                      mov r1, #0
006c1948  03 00 a0 e1                                      mov r0, r3
006c194c  00 c0 93 e5                                      ldr ip, [r3]
006c1950  05 20 a0 e1                                      mov r2, r5
006c1954  01 30 a0 e1                                      mov r3, r1
006c1958  0f e0 a0 e1                                      mov lr, pc
006c195c  3c f0 9c e5                                      ldr pc, [ip, #0x3c]
006c1960  01 40 80 e2                                      add r4, r0, #1
006c1964  07 00 a0 e1                                      mov r0, r7
006c1968  00 30 97 e5                                      ldr r3, [r7]
006c196c  0f e0 a0 e1                                      mov lr, pc
006c1970  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006c1974  00 30 95 e5                                      ldr r3, [r5]
006c1978  05 00 a0 e1                                      mov r0, r5
006c197c  0f e0 a0 e1                                      mov lr, pc
006c1980  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006c1984  40 b2 9f e5                                      ldr fp, [pc, #0x240]
006c1988  40 92 9f e5                                      ldr sb, [pc, #0x240]
006c198c  00 a0 a0 e1                                      mov sl, r0
006c1990  0b b0 8f e0                                      add fp, pc, fp
006c1994  09 90 8f e0                                      add sb, pc, sb
006c1998  20 b0 8b e2                                      add fp, fp, #0x20
006c199c  04 00 5a e1                                      cmp sl, r4
006c19a0  28 00 00 9a                                      bls #0x6c1a48
006c19a4  38 20 8d e2                                      add r2, sp, #0x38
006c19a8  00 80 a0 e3                                      mov r8, #0
006c19ac  18 20 8d e5                                      str r2, [sp, #0x18]
006c19b0  5c 60 8d e2                                      add r6, sp, #0x5c
006c19b4  04 10 a0 e1                                      mov r1, r4
006c19b8  00 30 95 e5                                      ldr r3, [r5]
006c19bc  05 00 a0 e1                                      mov r0, r5
006c19c0  0f e0 a0 e1                                      mov lr, pc
006c19c4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006c19c8  00 10 50 e2                                      subs r1, r0, #0
006c19cc  09 00 a0 e1                                      mov r0, sb
006c19d0  1c 00 00 0a                                      beq #0x6c1a48
006c19d4  50 32 f1 eb                                      bl #0x30e31c
006c19d8  00 00 50 e3                                      cmp r0, #0
006c19dc  04 10 a0 e1                                      mov r1, r4
006c19e0  0b 20 a0 e1                                      mov r2, fp
006c19e4  05 00 a0 e1                                      mov r0, r5
006c19e8  16 00 00 1a                                      bne #0x6c1a48
006c19ec  00 30 95 e5                                      ldr r3, [r5]
006c19f0  0f e0 a0 e1                                      mov lr, pc
006c19f4  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006c19f8  02 00 40 e2                                      sub r0, r0, #2
006c19fc  04 00 50 e3                                      cmp r0, #4
006c1a00  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
006c1a04  46 00 00 ea                                      b #0x6c1b24
006c1a08  3a 00 00 ea                                      b #0x6c1af8
006c1a0c  2c 00 00 ea                                      b #0x6c1ac4
006c1a10  43 00 00 ea                                      b #0x6c1b24
006c1a14  0d 00 00 ea                                      b #0x6c1a50
006c1a18  ff ff ff ea                                      b #0x6c1a1c
006c1a1c  00 30 97 e5                                      ldr r3, [r7]
006c1a20  07 00 a0 e1                                      mov r0, r7
006c1a24  fa 1f a0 e3                                      mov r1, #0x3e8
006c1a28  00 20 a0 e3                                      mov r2, #0
006c1a2c  0f e0 a0 e1                                      mov lr, pc
006c1a30  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
006c1a34  00 00 50 e3                                      cmp r0, #0
006c1a38  01 40 84 e2                                      add r4, r4, #1
006c1a3c  0e 00 00 1a                                      bne #0x6c1a7c
006c1a40  04 00 5a e1                                      cmp sl, r4
006c1a44  da ff ff 8a                                      bhi #0x6c19b4
006c1a48  74 d0 8d e2                                      add sp, sp, #0x74
006c1a4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c1a50  00 80 8d e5                                      str r8, [sp]
006c1a54  00 c0 97 e5                                      ldr ip, [r7]
006c1a58  07 00 a0 e1                                      mov r0, r7
006c1a5c  fe 15 a0 e3                                      mov r1, #0x3f800000
006c1a60  00 20 a0 e3                                      mov r2, #0
006c1a64  fa 3f a0 e3                                      mov r3, #0x3e8
006c1a68  0f e0 a0 e1                                      mov lr, pc
006c1a6c  38 f1 9c e5                                      ldr pc, [ip, #0x138]
006c1a70  00 00 50 e3                                      cmp r0, #0
006c1a74  01 40 84 e2                                      add r4, r4, #1
006c1a78  f0 ff ff 0a                                      beq #0x6c1a40
006c1a7c  04 10 a0 e1                                      mov r1, r4
006c1a80  05 20 a0 e1                                      mov r2, r5
006c1a84  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006c1a88  00 c0 90 e5                                      ldr ip, [r0]
006c1a8c  00 60 a0 e1                                      mov r6, r0
006c1a90  0f e0 a0 e1                                      mov lr, pc
006c1a94  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
006c1a98  00 30 97 e5                                      ldr r3, [r7]
006c1a9c  00 40 a0 e1                                      mov r4, r0
006c1aa0  06 10 a0 e1                                      mov r1, r6
006c1aa4  07 00 a0 e1                                      mov r0, r7
006c1aa8  0f e0 a0 e1                                      mov lr, pc
006c1aac  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006c1ab0  00 30 96 e5                                      ldr r3, [r6]
006c1ab4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006c1ab8  00 00 86 e0                                      add r0, r6, r0
006c1abc  b0 6e f1 eb                                      bl #0x31d584
006c1ac0  b5 ff ff ea                                      b #0x6c199c
006c1ac4  00 30 97 e5                                      ldr r3, [r7]
006c1ac8  00 20 a0 e3                                      mov r2, #0
006c1acc  07 00 a0 e1                                      mov r0, r7
006c1ad0  30 31 93 e5                                      ldr r3, [r3, #0x130]
006c1ad4  40 20 8d e5                                      str r2, [sp, #0x40]
006c1ad8  38 20 8d e5                                      str r2, [sp, #0x38]
006c1adc  8f 22 0c e3                                      movw r2, #0xc28f
006c1ae0  f5 2c 4b e3                                      movt r2, #0xbcf5
006c1ae4  3c 20 8d e5                                      str r2, [sp, #0x3c]
006c1ae8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006c1aec  fa 2f a0 e3                                      mov r2, #0x3e8
006c1af0  33 ff 2f e1                                      blx r3
006c1af4  ce ff ff ea                                      b #0x6c1a34
006c1af8  00 30 97 e5                                      ldr r3, [r7]
006c1afc  07 00 a0 e1                                      mov r0, r7
006c1b00  06 10 a0 e1                                      mov r1, r6
006c1b04  2c 31 93 e5                                      ldr r3, [r3, #0x12c]
006c1b08  fa 2f a0 e3                                      mov r2, #0x3e8
006c1b0c  5c 80 cd e5                                      strb r8, [sp, #0x5c]
006c1b10  5d 80 cd e5                                      strb r8, [sp, #0x5d]
006c1b14  5e 80 cd e5                                      strb r8, [sp, #0x5e]
006c1b18  5f 80 cd e5                                      strb r8, [sp, #0x5f]
006c1b1c  33 ff 2f e1                                      blx r3
006c1b20  c3 ff ff ea                                      b #0x6c1a34
006c1b24  00 00 a0 e3                                      mov r0, #0
006c1b28  c1 ff ff ea                                      b #0x6c1a34
006c1b2c  00 10 97 e5                                      ldr r1, [r7]
006c1b30  00 30 e0 e3                                      mvn r3, #0
006c1b34  00 20 a0 e3                                      mov r2, #0
006c1b38  1c c1 91 e5                                      ldr ip, [r1, #0x11c]
006c1b3c  8f 12 0c e3                                      movw r1, #0xc28f
006c1b40  f5 1c 43 e3                                      movt r1, #0x3cf5
006c1b44  54 10 8d e5                                      str r1, [sp, #0x54]
006c1b48  6c 10 8d e2                                      add r1, sp, #0x6c
006c1b4c  00 10 8d e5                                      str r1, [sp]
006c1b50  68 10 8d e2                                      add r1, sp, #0x68
006c1b54  04 10 8d e5                                      str r1, [sp, #4]
006c1b58  7d 1e a0 e3                                      mov r1, #0x7d0
006c1b5c  08 10 8d e5                                      str r1, [sp, #8]
006c1b60  fa 1e a0 e3                                      mov r1, #0xfa0
006c1b64  58 20 8d e5                                      str r2, [sp, #0x58]
006c1b68  6b 30 cd e5                                      strb r3, [sp, #0x6b]
006c1b6c  0c 10 8d e5                                      str r1, [sp, #0xc]
006c1b70  10 00 8d e5                                      str r0, [sp, #0x10]
006c1b74  50 20 8d e5                                      str r2, [sp, #0x50]
006c1b78  6c 00 cd e5                                      strb r0, [sp, #0x6c]
006c1b7c  6d 00 cd e5                                      strb r0, [sp, #0x6d]
006c1b80  6e 00 cd e5                                      strb r0, [sp, #0x6e]
006c1b84  6f 30 cd e5                                      strb r3, [sp, #0x6f]
006c1b88  68 30 cd e5                                      strb r3, [sp, #0x68]
006c1b8c  69 30 cd e5                                      strb r3, [sp, #0x69]
006c1b90  6a 30 cd e5                                      strb r3, [sp, #0x6a]
006c1b94  07 00 a0 e1                                      mov r0, r7
006c1b98  0a 30 a0 e3                                      mov r3, #0xa
006c1b9c  50 10 8d e2                                      add r1, sp, #0x50
006c1ba0  05 20 a0 e3                                      mov r2, #5
006c1ba4  3c ff 2f e1                                      blx ip
006c1ba8  00 30 a0 e1                                      mov r3, r0
006c1bac  38 01 87 e5                                      str r0, [r7, #0x138]
006c1bb0  60 ff ff ea                                      b #0x6c1938
; mapping-symbol data/literal pool
006c1bb4  94 9b 22 00 8c 9b 22 00 80 9b 22 00 74 9b 22 00  .byte 0x94, 0x9b, 0x22, 0x00, 0x8c, 0x9b, 0x22, 0x00, 0x80, 0x9b, 0x22, 0x00, 0x74, 0x9b, 0x22, 0x00
006c1bc4  30 9b 22 00 78 63 29 00 34 62 29 00 ec 99 22 00  .byte 0x30, 0x9b, 0x22, 0x00, 0x78, 0x63, 0x29, 0x00, 0x34, 0x62, 0x29, 0x00, 0xec, 0x99, 0x22, 0x00

; FUNCTION 0x006c1c54, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode11addAffectorEPNS0_17IParticleAffectorE
; demangled: glitch::scene::CParticleSystemSceneNode::addAffector(glitch::scene::IParticleAffector*)
; decoder-mode: arm
006c1c54  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1c58  00 30 91 e5                                      ldr r3, [r1]
006c1c5c  01 50 a0 e1                                      mov r5, r1
006c1c60  00 40 a0 e1                                      mov r4, r0
006c1c64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c1c68  00 10 a0 e3                                      mov r1, #0
006c1c6c  0c 00 a0 e3                                      mov r0, #0xc
006c1c70  03 30 85 e0                                      add r3, r5, r3
006c1c74  04 20 93 e5                                      ldr r2, [r3, #4]
006c1c78  01 20 82 e2                                      add r2, r2, #1
006c1c7c  04 20 83 e5                                      str r2, [r3, #4]
006c1c80  38 3a f1 eb                                      bl #0x310568
006c1c84  08 50 80 e5                                      str r5, [r0, #8]
006c1c88  34 31 94 e5                                      ldr r3, [r4, #0x134]
006c1c8c  13 2e 84 e2                                      add r2, r4, #0x130
006c1c90  0c 00 80 e8                                      stm r0, {r2, r3}
006c1c94  00 00 83 e5                                      str r0, [r3]
006c1c98  34 01 84 e5                                      str r0, [r4, #0x134]
006c1c9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c1ca0, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode18removeAllAffectorsEv
; demangled: glitch::scene::CParticleSystemSceneNode::removeAllAffectors()
; decoder-mode: arm
006c1ca0  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1ca4  00 50 a0 e1                                      mov r5, r0
006c1ca8  30 41 b5 e5                                      ldr r4, [r5, #0x130]!
006c1cac  0b 00 00 ea                                      b #0x6c1ce0
006c1cb0  08 30 94 e5                                      ldr r3, [r4, #8]
006c1cb4  00 20 93 e5                                      ldr r2, [r3]
006c1cb8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c1cbc  00 00 83 e0                                      add r0, r3, r0
006c1cc0  2f 6e f1 eb                                      bl #0x31d584
006c1cc4  00 30 94 e5                                      ldr r3, [r4]
006c1cc8  04 20 94 e5                                      ldr r2, [r4, #4]
006c1ccc  04 00 a0 e1                                      mov r0, r4
006c1cd0  03 40 a0 e1                                      mov r4, r3
006c1cd4  00 30 82 e5                                      str r3, [r2]
006c1cd8  04 20 83 e5                                      str r2, [r3, #4]
006c1cdc  db 39 f1 eb                                      bl #0x310450
006c1ce0  04 00 55 e1                                      cmp r5, r4
006c1ce4  f1 ff ff 1a                                      bne #0x6c1cb0
006c1ce8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c1cec, declared_size=244, range_size=244, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNodeD1Ev
; demangled: glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c1cec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c1cf0  dc 70 9f e5                                      ldr r7, [pc, #0xdc]
006c1cf4  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
006c1cf8  38 21 90 e5                                      ldr r2, [r0, #0x138]
006c1cfc  07 70 8f e0                                      add r7, pc, r7
006c1d00  03 30 97 e7                                      ldr r3, [r7, r3]
006c1d04  00 00 52 e3                                      cmp r2, #0
006c1d08  00 40 a0 e1                                      mov r4, r0
006c1d0c  5f 1f 83 e2                                      add r1, r3, #0x17c
006c1d10  1c 30 83 e2                                      add r3, r3, #0x1c
006c1d14  00 30 80 e5                                      str r3, [r0]
006c1d18  88 11 80 e5                                      str r1, [r0, #0x188]
006c1d1c  03 00 00 0a                                      beq #0x6c1d30
006c1d20  00 30 92 e5                                      ldr r3, [r2]
006c1d24  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006c1d28  00 00 82 e0                                      add r0, r2, r0
006c1d2c  14 6e f1 eb                                      bl #0x31d584
006c1d30  04 00 a0 e1                                      mov r0, r4
006c1d34  d9 ff ff eb                                      bl #0x6c1ca0
006c1d38  5d 0f 84 e2                                      add r0, r4, #0x174
006c1d3c  a9 3b f1 eb                                      bl #0x310be8
006c1d40  70 01 94 e5                                      ldr r0, [r4, #0x170]
006c1d44  00 00 50 e3                                      cmp r0, #0
006c1d48  00 00 00 0a                                      beq #0x6c1d50
006c1d4c  0c 6e f1 eb                                      bl #0x31d584
006c1d50  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
006c1d54  00 00 50 e3                                      cmp r0, #0
006c1d58  00 00 00 0a                                      beq #0x6c1d60
006c1d5c  bb 39 f1 eb                                      bl #0x310450
006c1d60  30 01 94 e5                                      ldr r0, [r4, #0x130]
006c1d64  13 6e 84 e2                                      add r6, r4, #0x130
006c1d68  06 00 50 e1                                      cmp r0, r6
006c1d6c  01 00 00 1a                                      bne #0x6c1d78
006c1d70  05 00 00 ea                                      b #0x6c1d8c
006c1d74  05 00 a0 e1                                      mov r0, r5
006c1d78  00 50 90 e5                                      ldr r5, [r0]
006c1d7c  b3 39 f1 eb                                      bl #0x310450
006c1d80  06 00 55 e1                                      cmp r5, r6
006c1d84  fa ff ff 1a                                      bne #0x6c1d74
006c1d88  06 00 a0 e1                                      mov r0, r6
006c1d8c  48 30 9f e5                                      ldr r3, [pc, #0x48]
006c1d90  30 01 84 e5                                      str r0, [r4, #0x130]
006c1d94  04 00 86 e5                                      str r0, [r6, #4]
006c1d98  03 10 97 e7                                      ldr r1, [r7, r3]
006c1d9c  04 00 a0 e1                                      mov r0, r4
006c1da0  04 30 91 e5                                      ldr r3, [r1, #4]
006c1da4  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006c1da8  18 20 91 e5                                      ldr r2, [r1, #0x18]
006c1dac  00 30 84 e5                                      str r3, [r4]
006c1db0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006c1db4  08 10 81 e2                                      add r1, r1, #8
006c1db8  03 c0 84 e7                                      str ip, [r4, r3]
006c1dbc  00 30 94 e5                                      ldr r3, [r4]
006c1dc0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c1dc4  03 20 84 e7                                      str r2, [r4, r3]
006c1dc8  bb 5b fb eb                                      bl #0x598cbc
006c1dcc  04 00 a0 e1                                      mov r0, r4
006c1dd0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006c1dd4  94 2d 2d 00 90 0d 00 00 14 09 00 00              .byte 0x94, 0x2d, 0x2d, 0x00, 0x90, 0x0d, 0x00, 0x00, 0x14, 0x09, 0x00, 0x00

; FUNCTION 0x006c1de0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNodeD0Ev
; demangled: glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c1de0  10 40 2d e9                                      push {r4, lr}
006c1de4  00 40 a0 e1                                      mov r4, r0
006c1de8  bf ff ff eb                                      bl #0x6c1cec
006c1dec  04 00 a0 e1                                      mov r0, r4
006c1df0  2e 31 f1 eb                                      bl #0x30e2b0
006c1df4  04 00 a0 e1                                      mov r0, r4
006c1df8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006c1dfc, declared_size=232, range_size=232, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNodeD2Ev
; demangled: glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c1dfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c1e00  00 30 91 e5                                      ldr r3, [r1]
006c1e04  01 70 a0 e1                                      mov r7, r1
006c1e08  00 40 a0 e1                                      mov r4, r0
006c1e0c  00 30 80 e5                                      str r3, [r0]
006c1e10  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006c1e14  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006c1e18  03 20 80 e7                                      str r2, [r0, r3]
006c1e1c  00 30 90 e5                                      ldr r3, [r0]
006c1e20  20 20 91 e5                                      ldr r2, [r1, #0x20]
006c1e24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c1e28  03 20 80 e7                                      str r2, [r0, r3]
006c1e2c  38 31 90 e5                                      ldr r3, [r0, #0x138]
006c1e30  00 00 53 e3                                      cmp r3, #0
006c1e34  03 00 00 0a                                      beq #0x6c1e48
006c1e38  00 20 93 e5                                      ldr r2, [r3]
006c1e3c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c1e40  00 00 83 e0                                      add r0, r3, r0
006c1e44  ce 6d f1 eb                                      bl #0x31d584
006c1e48  04 00 a0 e1                                      mov r0, r4
006c1e4c  93 ff ff eb                                      bl #0x6c1ca0
006c1e50  5d 0f 84 e2                                      add r0, r4, #0x174
006c1e54  63 3b f1 eb                                      bl #0x310be8
006c1e58  70 01 94 e5                                      ldr r0, [r4, #0x170]
006c1e5c  00 00 50 e3                                      cmp r0, #0
006c1e60  00 00 00 0a                                      beq #0x6c1e68
006c1e64  c6 6d f1 eb                                      bl #0x31d584
006c1e68  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
006c1e6c  00 00 50 e3                                      cmp r0, #0
006c1e70  00 00 00 0a                                      beq #0x6c1e78
006c1e74  75 39 f1 eb                                      bl #0x310450
006c1e78  30 01 94 e5                                      ldr r0, [r4, #0x130]
006c1e7c  13 6e 84 e2                                      add r6, r4, #0x130
006c1e80  00 00 56 e1                                      cmp r6, r0
006c1e84  01 00 00 1a                                      bne #0x6c1e90
006c1e88  04 00 00 ea                                      b #0x6c1ea0
006c1e8c  05 00 a0 e1                                      mov r0, r5
006c1e90  00 50 90 e5                                      ldr r5, [r0]
006c1e94  6d 39 f1 eb                                      bl #0x310450
006c1e98  05 00 56 e1                                      cmp r6, r5
006c1e9c  fa ff ff 1a                                      bne #0x6c1e8c
006c1ea0  30 61 84 e5                                      str r6, [r4, #0x130]
006c1ea4  04 60 86 e5                                      str r6, [r6, #4]
006c1ea8  04 30 97 e5                                      ldr r3, [r7, #4]
006c1eac  04 70 87 e2                                      add r7, r7, #4
006c1eb0  04 10 87 e2                                      add r1, r7, #4
006c1eb4  00 30 84 e5                                      str r3, [r4]
006c1eb8  10 20 97 e5                                      ldr r2, [r7, #0x10]
006c1ebc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006c1ec0  04 00 a0 e1                                      mov r0, r4
006c1ec4  03 20 84 e7                                      str r2, [r4, r3]
006c1ec8  00 30 94 e5                                      ldr r3, [r4]
006c1ecc  14 20 97 e5                                      ldr r2, [r7, #0x14]
006c1ed0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c1ed4  03 20 84 e7                                      str r2, [r4, r3]
006c1ed8  77 5b fb eb                                      bl #0x598cbc
006c1edc  04 00 a0 e1                                      mov r0, r4
006c1ee0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006c1ee4, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode18createSpinAffectorEjf
; demangled: glitch::scene::CParticleSystemSceneNode::createSpinAffector(unsigned int, float)
; decoder-mode: arm
006c1ee4  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1ee8  18 00 a0 e3                                      mov r0, #0x18
006c1eec  01 50 a0 e1                                      mov r5, r1
006c1ef0  00 10 a0 e3                                      mov r1, #0
006c1ef4  02 60 a0 e1                                      mov r6, r2
006c1ef8  ab c8 f9 eb                                      bl #0x5341ac
006c1efc  05 10 a0 e1                                      mov r1, r5
006c1f00  00 40 a0 e1                                      mov r4, r0
006c1f04  06 20 a0 e1                                      mov r2, r6
006c1f08  2b f1 00 eb                                      bl #0x6fe3bc
006c1f0c  04 00 a0 e1                                      mov r0, r4
006c1f10  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c1f14, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode18createSizeAffectorEffjj
; demangled: glitch::scene::CParticleSystemSceneNode::createSizeAffector(float, float, unsigned int, unsigned int)
; decoder-mode: arm
006c1f14  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006c1f18  20 00 a0 e3                                      mov r0, #0x20
006c1f1c  0c d0 4d e2                                      sub sp, sp, #0xc
006c1f20  01 50 a0 e1                                      mov r5, r1
006c1f24  00 10 a0 e3                                      mov r1, #0
006c1f28  02 70 a0 e1                                      mov r7, r2
006c1f2c  03 60 a0 e1                                      mov r6, r3
006c1f30  9d c8 f9 eb                                      bl #0x5341ac
006c1f34  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006c1f38  00 40 a0 e1                                      mov r4, r0
006c1f3c  05 10 a0 e1                                      mov r1, r5
006c1f40  07 20 a0 e1                                      mov r2, r7
006c1f44  06 30 a0 e1                                      mov r3, r6
006c1f48  00 c0 8d e5                                      str ip, [sp]
006c1f4c  ef ec 00 eb                                      bl #0x6fd310
006c1f50  04 00 a0 e1                                      mov r0, r4
006c1f54  0c d0 8d e2                                      add sp, sp, #0xc
006c1f58  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006c1f5c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode22createRotationAffectorERKNS_4core8vector3dIfEES6_
; demangled: glitch::scene::CParticleSystemSceneNode::createRotationAffector(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006c1f5c  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1f60  2c 00 a0 e3                                      mov r0, #0x2c
006c1f64  01 50 a0 e1                                      mov r5, r1
006c1f68  00 10 a0 e3                                      mov r1, #0
006c1f6c  02 60 a0 e1                                      mov r6, r2
006c1f70  8d c8 f9 eb                                      bl #0x5341ac
006c1f74  05 10 a0 e1                                      mov r1, r5
006c1f78  00 40 a0 e1                                      mov r4, r0
006c1f7c  06 20 a0 e1                                      mov r2, r6
006c1f80  ab eb 00 eb                                      bl #0x6fce34
006c1f84  04 00 a0 e1                                      mov r0, r4
006c1f88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c1f8c, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode21createGravityAffectorERKNS_4core8vector3dIfEEj
; demangled: glitch::scene::CParticleSystemSceneNode::createGravityAffector(glitch::core::vector3d<float> const&, unsigned int)
; decoder-mode: arm
006c1f8c  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1f90  20 00 a0 e3                                      mov r0, #0x20
006c1f94  01 50 a0 e1                                      mov r5, r1
006c1f98  00 10 a0 e3                                      mov r1, #0
006c1f9c  02 60 a0 e1                                      mov r6, r2
006c1fa0  81 c8 f9 eb                                      bl #0x5341ac
006c1fa4  05 10 a0 e1                                      mov r1, r5
006c1fa8  00 40 a0 e1                                      mov r4, r0
006c1fac  06 20 a0 e1                                      mov r2, r6
006c1fb0  d9 e2 00 eb                                      bl #0x6fab1c
006c1fb4  04 00 a0 e1                                      mov r0, r4
006c1fb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c1fbc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode29createFadeOutParticleAffectorERKNS_5video6SColorEj
; demangled: glitch::scene::CParticleSystemSceneNode::createFadeOutParticleAffector(glitch::video::SColor const&, unsigned int)
; decoder-mode: arm
006c1fbc  70 40 2d e9                                      push {r4, r5, r6, lr}
006c1fc0  18 00 a0 e3                                      mov r0, #0x18
006c1fc4  01 50 a0 e1                                      mov r5, r1
006c1fc8  00 10 a0 e3                                      mov r1, #0
006c1fcc  02 60 a0 e1                                      mov r6, r2
006c1fd0  75 c8 f9 eb                                      bl #0x5341ac
006c1fd4  05 10 a0 e1                                      mov r1, r5
006c1fd8  00 40 a0 e1                                      mov r4, r0
006c1fdc  06 20 a0 e1                                      mov r2, r6
006c1fe0  6f e1 00 eb                                      bl #0x6fa5a4
006c1fe4  04 00 a0 e1                                      mov r0, r4
006c1fe8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c1fec, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode24createAttractionAffectorERKNS_4core8vector3dIfEEfbbbb
; demangled: glitch::scene::CParticleSystemSceneNode::createAttractionAffector(glitch::core::vector3d<float> const&, float, bool, bool, bool, bool)
; decoder-mode: arm
006c1fec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006c1ff0  28 00 a0 e3                                      mov r0, #0x28
006c1ff4  10 d0 4d e2                                      sub sp, sp, #0x10
006c1ff8  01 70 a0 e1                                      mov r7, r1
006c1ffc  00 10 a0 e3                                      mov r1, #0
006c2000  30 60 dd e5                                      ldrb r6, [sp, #0x30]
006c2004  34 50 dd e5                                      ldrb r5, [sp, #0x34]
006c2008  38 40 dd e5                                      ldrb r4, [sp, #0x38]
006c200c  02 a0 a0 e1                                      mov sl, r2
006c2010  03 80 a0 e1                                      mov r8, r3
006c2014  64 c8 f9 eb                                      bl #0x5341ac
006c2018  07 10 a0 e1                                      mov r1, r7
006c201c  00 90 a0 e1                                      mov sb, r0
006c2020  0a 20 a0 e1                                      mov r2, sl
006c2024  08 30 a0 e1                                      mov r3, r8
006c2028  00 60 8d e5                                      str r6, [sp]
006c202c  04 50 8d e5                                      str r5, [sp, #4]
006c2030  08 40 8d e5                                      str r4, [sp, #8]
006c2034  3b d9 00 eb                                      bl #0x6f8528
006c2038  09 00 a0 e1                                      mov r0, sb
006c203c  10 d0 8d e2                                      add sp, sp, #0x10
006c2040  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006c2044, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode19createSphereEmitterERKNS_4core8vector3dIfEEfS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createSphereEmitter(glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c2044  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006c2048  58 00 a0 e3                                      mov r0, #0x58
006c204c  24 d0 4d e2                                      sub sp, sp, #0x24
006c2050  01 50 a0 e1                                      mov r5, r1
006c2054  00 10 a0 e3                                      mov r1, #0
006c2058  02 70 a0 e1                                      mov r7, r2
006c205c  03 60 a0 e1                                      mov r6, r3
006c2060  51 c8 f9 eb                                      bl #0x5341ac
006c2064  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006c2068  00 40 a0 e1                                      mov r4, r0
006c206c  05 10 a0 e1                                      mov r1, r5
006c2070  00 c0 8d e5                                      str ip, [sp]
006c2074  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c2078  07 20 a0 e1                                      mov r2, r7
006c207c  06 30 a0 e1                                      mov r3, r6
006c2080  04 c0 8d e5                                      str ip, [sp, #4]
006c2084  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c2088  08 c0 8d e5                                      str ip, [sp, #8]
006c208c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c2090  0c c0 8d e5                                      str ip, [sp, #0xc]
006c2094  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006c2098  10 c0 8d e5                                      str ip, [sp, #0x10]
006c209c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006c20a0  14 c0 8d e5                                      str ip, [sp, #0x14]
006c20a4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006c20a8  18 c0 8d e5                                      str ip, [sp, #0x18]
006c20ac  96 ee 00 eb                                      bl #0x6fdb0c
006c20b0  04 00 a0 e1                                      mov r0, r4
006c20b4  24 d0 8d e2                                      add sp, sp, #0x24
006c20b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006c20bc, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode17createRingEmitterERKNS_4core8vector3dIfEEffS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createRingEmitter(glitch::core::vector3d<float> const&, float, float, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c20bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006c20c0  64 00 a0 e3                                      mov r0, #0x64
006c20c4  24 d0 4d e2                                      sub sp, sp, #0x24
006c20c8  01 50 a0 e1                                      mov r5, r1
006c20cc  00 10 a0 e3                                      mov r1, #0
006c20d0  02 70 a0 e1                                      mov r7, r2
006c20d4  03 60 a0 e1                                      mov r6, r3
006c20d8  33 c8 f9 eb                                      bl #0x5341ac
006c20dc  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006c20e0  00 40 a0 e1                                      mov r4, r0
006c20e4  05 10 a0 e1                                      mov r1, r5
006c20e8  00 c0 8d e5                                      str ip, [sp]
006c20ec  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c20f0  07 20 a0 e1                                      mov r2, r7
006c20f4  06 30 a0 e1                                      mov r3, r6
006c20f8  04 c0 8d e5                                      str ip, [sp, #4]
006c20fc  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c2100  08 c0 8d e5                                      str ip, [sp, #8]
006c2104  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c2108  0c c0 8d e5                                      str ip, [sp, #0xc]
006c210c  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006c2110  10 c0 8d e5                                      str ip, [sp, #0x10]
006c2114  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006c2118  14 c0 8d e5                                      str ip, [sp, #0x14]
006c211c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006c2120  18 c0 8d e5                                      str ip, [sp, #0x18]
006c2124  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006c2128  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c212c  30 e9 00 eb                                      bl #0x6fc5f4
006c2130  04 00 a0 e1                                      mov r0, r4
006c2134  24 d0 8d e2                                      add sp, sp, #0x24
006c2138  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006c213c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode18createPointEmitterERKNS_4core8vector3dIfEEjjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createPointEmitter(glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c213c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c2140  80 00 a0 e3                                      mov r0, #0x80
006c2144  18 d0 4d e2                                      sub sp, sp, #0x18
006c2148  01 60 a0 e1                                      mov r6, r1
006c214c  00 10 a0 e3                                      mov r1, #0
006c2150  03 70 a0 e1                                      mov r7, r3
006c2154  02 80 a0 e1                                      mov r8, r2
006c2158  13 c8 f9 eb                                      bl #0x5341ac
006c215c  04 50 a0 e3                                      mov r5, #4
006c2160  00 40 a0 e1                                      mov r4, r0
006c2164  30 10 9d e5                                      ldr r1, [sp, #0x30]
006c2168  05 20 a0 e1                                      mov r2, r5
006c216c  0d 00 a0 e1                                      mov r0, sp
006c2170  bc 31 f1 eb                                      bl #0x30e868
006c2174  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c2178  05 20 a0 e1                                      mov r2, r5
006c217c  05 00 8d e0                                      add r0, sp, r5
006c2180  b8 31 f1 eb                                      bl #0x30e868
006c2184  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006c2188  06 10 a0 e1                                      mov r1, r6
006c218c  08 20 a0 e1                                      mov r2, r8
006c2190  08 c0 8d e5                                      str ip, [sp, #8]
006c2194  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c2198  07 30 a0 e1                                      mov r3, r7
006c219c  04 00 a0 e1                                      mov r0, r4
006c21a0  0c c0 8d e5                                      str ip, [sp, #0xc]
006c21a4  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c21a8  10 c0 8d e5                                      str ip, [sp, #0x10]
006c21ac  73 e6 00 eb                                      bl #0x6fbb80
006c21b0  04 00 a0 e1                                      mov r0, r4
006c21b4  18 d0 8d e2                                      add sp, sp, #0x18
006c21b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006c21bc, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode17createMeshEmitterERKN5boost13intrusive_ptrIKNS0_5IMeshEEEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESH_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createMeshEmitter(boost::intrusive_ptr<glitch::scene::IMesh const> const&, bool, glitch::core::vector3d<float> const&, float, int, bool, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c21bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c21c0  6c 00 a0 e3                                      mov r0, #0x6c
006c21c4  28 d0 4d e2                                      sub sp, sp, #0x28
006c21c8  01 60 a0 e1                                      mov r6, r1
006c21cc  00 10 a0 e3                                      mov r1, #0
006c21d0  48 50 dd e5                                      ldrb r5, [sp, #0x48]
006c21d4  02 80 a0 e1                                      mov r8, r2
006c21d8  03 70 a0 e1                                      mov r7, r3
006c21dc  f2 c7 f9 eb                                      bl #0x5341ac
006c21e0  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c21e4  00 40 a0 e1                                      mov r4, r0
006c21e8  06 10 a0 e1                                      mov r1, r6
006c21ec  00 c0 8d e5                                      str ip, [sp]
006c21f0  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c21f4  08 20 a0 e1                                      mov r2, r8
006c21f8  07 30 a0 e1                                      mov r3, r7
006c21fc  04 c0 8d e5                                      str ip, [sp, #4]
006c2200  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006c2204  08 50 8d e5                                      str r5, [sp, #8]
006c2208  0c c0 8d e5                                      str ip, [sp, #0xc]
006c220c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006c2210  10 c0 8d e5                                      str ip, [sp, #0x10]
006c2214  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006c2218  14 c0 8d e5                                      str ip, [sp, #0x14]
006c221c  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006c2220  18 c0 8d e5                                      str ip, [sp, #0x18]
006c2224  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006c2228  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c222c  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006c2230  20 c0 8d e5                                      str ip, [sp, #0x20]
006c2234  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006c2238  24 c0 8d e5                                      str ip, [sp, #0x24]
006c223c  31 e5 00 eb                                      bl #0x6fb708
006c2240  04 00 a0 e1                                      mov r0, r4
006c2244  28 d0 8d e2                                      add sp, sp, #0x28
006c2248  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006c224c, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode21createCylinderEmitterERKNS_4core8vector3dIfEEfS6_fbS6_jjRKNS_5video6SColorESA_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createCylinderEmitter(glitch::core::vector3d<float> const&, float, glitch::core::vector3d<float> const&, float, bool, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c224c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c2250  6c 00 a0 e3                                      mov r0, #0x6c
006c2254  28 d0 4d e2                                      sub sp, sp, #0x28
006c2258  01 60 a0 e1                                      mov r6, r1
006c225c  00 10 a0 e3                                      mov r1, #0
006c2260  44 50 dd e5                                      ldrb r5, [sp, #0x44]
006c2264  02 80 a0 e1                                      mov r8, r2
006c2268  03 70 a0 e1                                      mov r7, r3
006c226c  ce c7 f9 eb                                      bl #0x5341ac
006c2270  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c2274  00 40 a0 e1                                      mov r4, r0
006c2278  06 10 a0 e1                                      mov r1, r6
006c227c  00 c0 8d e5                                      str ip, [sp]
006c2280  48 c0 9d e5                                      ldr ip, [sp, #0x48]
006c2284  08 20 a0 e1                                      mov r2, r8
006c2288  07 30 a0 e1                                      mov r3, r7
006c228c  08 c0 8d e5                                      str ip, [sp, #8]
006c2290  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006c2294  04 50 8d e5                                      str r5, [sp, #4]
006c2298  0c c0 8d e5                                      str ip, [sp, #0xc]
006c229c  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006c22a0  10 c0 8d e5                                      str ip, [sp, #0x10]
006c22a4  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006c22a8  14 c0 8d e5                                      str ip, [sp, #0x14]
006c22ac  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006c22b0  18 c0 8d e5                                      str ip, [sp, #0x18]
006c22b4  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006c22b8  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c22bc  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006c22c0  20 c0 8d e5                                      str ip, [sp, #0x20]
006c22c4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006c22c8  24 c0 8d e5                                      str ip, [sp, #0x24]
006c22cc  6d de 00 eb                                      bl #0x6f9c88
006c22d0  04 00 a0 e1                                      mov r0, r4
006c22d4  28 d0 8d e2                                      add sp, sp, #0x28
006c22d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006c22dc, declared_size=136, range_size=136, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode16createBoxEmitterERKNS_4core8aabbox3dIfEERKNS2_8vector3dIfEEjjRKNS_5video6SColorESE_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createBoxEmitter(glitch::core::aabbox3d<float> const&, glitch::core::vector3d<float> const&, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c22dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c22e0  60 00 a0 e3                                      mov r0, #0x60
006c22e4  18 d0 4d e2                                      sub sp, sp, #0x18
006c22e8  01 50 a0 e1                                      mov r5, r1
006c22ec  00 10 a0 e3                                      mov r1, #0
006c22f0  03 70 a0 e1                                      mov r7, r3
006c22f4  02 80 a0 e1                                      mov r8, r2
006c22f8  ab c7 f9 eb                                      bl #0x5341ac
006c22fc  30 30 9d e5                                      ldr r3, [sp, #0x30]
006c2300  00 40 a0 e1                                      mov r4, r0
006c2304  0d 00 a0 e1                                      mov r0, sp
006c2308  04 30 80 e4                                      str r3, [r0], #4
006c230c  04 60 a0 e3                                      mov r6, #4
006c2310  34 10 9d e5                                      ldr r1, [sp, #0x34]
006c2314  06 20 a0 e1                                      mov r2, r6
006c2318  52 31 f1 eb                                      bl #0x30e868
006c231c  38 10 9d e5                                      ldr r1, [sp, #0x38]
006c2320  06 20 a0 e1                                      mov r2, r6
006c2324  08 00 8d e2                                      add r0, sp, #8
006c2328  4e 31 f1 eb                                      bl #0x30e868
006c232c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c2330  05 10 a0 e1                                      mov r1, r5
006c2334  08 20 a0 e1                                      mov r2, r8
006c2338  0c c0 8d e5                                      str ip, [sp, #0xc]
006c233c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c2340  07 30 a0 e1                                      mov r3, r7
006c2344  04 00 a0 e1                                      mov r0, r4
006c2348  10 c0 8d e5                                      str ip, [sp, #0x10]
006c234c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c2350  14 c0 8d e5                                      str ip, [sp, #0x14]
006c2354  15 da 00 eb                                      bl #0x6f8bb0
006c2358  04 00 a0 e1                                      mov r0, r4
006c235c  18 d0 8d e2                                      add sp, sp, #0x18
006c2360  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006c2364, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode34createAnimatedMeshSceneNodeEmitterEPNS0_22IAnimatedMeshSceneNodeEbRKNS_4core8vector3dIfEEfibjjRKNS_5video6SColorESC_jji
; demangled: glitch::scene::CParticleSystemSceneNode::createAnimatedMeshSceneNodeEmitter(glitch::scene::IAnimatedMeshSceneNode*, bool, glitch::core::vector3d<float> const&, float, int, bool, unsigned int, unsigned int, glitch::video::SColor const&, glitch::video::SColor const&, unsigned int, unsigned int, int)
; decoder-mode: arm
006c2364  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006c2368  74 00 a0 e3                                      mov r0, #0x74
006c236c  28 d0 4d e2                                      sub sp, sp, #0x28
006c2370  01 60 a0 e1                                      mov r6, r1
006c2374  00 10 a0 e3                                      mov r1, #0
006c2378  48 50 dd e5                                      ldrb r5, [sp, #0x48]
006c237c  02 80 a0 e1                                      mov r8, r2
006c2380  03 70 a0 e1                                      mov r7, r3
006c2384  88 c7 f9 eb                                      bl #0x5341ac
006c2388  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c238c  00 40 a0 e1                                      mov r4, r0
006c2390  06 10 a0 e1                                      mov r1, r6
006c2394  00 c0 8d e5                                      str ip, [sp]
006c2398  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c239c  08 20 a0 e1                                      mov r2, r8
006c23a0  07 30 a0 e1                                      mov r3, r7
006c23a4  04 c0 8d e5                                      str ip, [sp, #4]
006c23a8  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
006c23ac  08 50 8d e5                                      str r5, [sp, #8]
006c23b0  0c c0 8d e5                                      str ip, [sp, #0xc]
006c23b4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006c23b8  10 c0 8d e5                                      str ip, [sp, #0x10]
006c23bc  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006c23c0  14 c0 8d e5                                      str ip, [sp, #0x14]
006c23c4  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006c23c8  18 c0 8d e5                                      str ip, [sp, #0x18]
006c23cc  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006c23d0  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c23d4  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006c23d8  20 c0 8d e5                                      str ip, [sp, #0x20]
006c23dc  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006c23e0  24 c0 8d e5                                      str ip, [sp, #0x24]
006c23e4  01 d7 00 eb                                      bl #0x6f7ff0
006c23e8  04 00 a0 e1                                      mov r0, r4
006c23ec  28 d0 8d e2                                      add sp, sp, #0x28
006c23f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006c2478, declared_size=288, range_size=288, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNodeC1EbiRKNS_4core8vector3dIfEES6_S6_
; demangled: glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(bool, int, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006c2478  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006c247c  04 51 9f e5                                      ldr r5, [pc, #0x104]
006c2480  04 11 9f e5                                      ldr r1, [pc, #0x104]
006c2484  04 c1 9f e5                                      ldr ip, [pc, #0x104]
006c2488  05 50 8f e0                                      add r5, pc, r5
006c248c  01 10 95 e7                                      ldr r1, [r5, r1]
006c2490  0c c0 95 e7                                      ldr ip, [r5, ip]
006c2494  01 60 a0 e3                                      mov r6, #1
006c2498  24 e0 91 e5                                      ldr lr, [r1, #0x24]
006c249c  08 c0 8c e2                                      add ip, ip, #8
006c24a0  8c 61 80 e5                                      str r6, [r0, #0x18c]
006c24a4  00 e0 80 e5                                      str lr, [r0]
006c24a8  88 c1 80 e5                                      str ip, [r0, #0x188]
006c24ac  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
006c24b0  28 e0 91 e5                                      ldr lr, [r1, #0x28]
006c24b4  14 d0 4d e2                                      sub sp, sp, #0x14
006c24b8  04 10 81 e2                                      add r1, r1, #4
006c24bc  0c e0 80 e7                                      str lr, [r0, ip]
006c24c0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006c24c4  00 40 a0 e1                                      mov r4, r0
006c24c8  00 c0 8d e5                                      str ip, [sp]
006c24cc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006c24d0  04 c0 8d e5                                      str ip, [sp, #4]
006c24d4  c6 ff ff eb                                      bl #0x6c23f4
006c24d8  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
006c24dc  bf c4 a0 e3                                      mov ip, #0xbf000000
006c24e0  00 20 a0 e3                                      mov r2, #0
006c24e4  00 00 95 e7                                      ldr r0, [r5, r0]
006c24e8  fe 15 a0 e3                                      mov r1, #0x3f800000
006c24ec  02 c5 8c e2                                      add ip, ip, #0x800000
006c24f0  5f 7f 80 e2                                      add r7, r0, #0x17c
006c24f4  1c 00 80 e2                                      add r0, r0, #0x1c
006c24f8  00 00 84 e5                                      str r0, [r4]
006c24fc  00 e0 a0 e3                                      mov lr, #0
006c2500  13 5e 84 e2                                      add r5, r4, #0x130
006c2504  ff 0f 0f e3                                      movw r0, #0xffff
006c2508  01 31 a0 e3                                      mov r3, #0x40000000
006c250c  54 01 84 e5                                      str r0, [r4, #0x154]
006c2510  84 11 84 e5                                      str r1, [r4, #0x184]
006c2514  64 11 84 e5                                      str r1, [r4, #0x164]
006c2518  68 11 84 e5                                      str r1, [r4, #0x168]
006c251c  6c 11 84 e5                                      str r1, [r4, #0x16c]
006c2520  0a 36 83 e2                                      add r3, r3, #0xa00000
006c2524  88 71 84 e5                                      str r7, [r4, #0x188]
006c2528  34 51 84 e5                                      str r5, [r4, #0x134]
006c252c  4c e1 84 e5                                      str lr, [r4, #0x14c]
006c2530  60 c1 84 e5                                      str ip, [r4, #0x160]
006c2534  7c 21 84 e5                                      str r2, [r4, #0x17c]
006c2538  80 61 c4 e5                                      strb r6, [r4, #0x180]
006c253c  30 51 84 e5                                      str r5, [r4, #0x130]
006c2540  38 21 84 e5                                      str r2, [r4, #0x138]
006c2544  3c 21 84 e5                                      str r2, [r4, #0x13c]
006c2548  40 21 84 e5                                      str r2, [r4, #0x140]
006c254c  44 21 84 e5                                      str r2, [r4, #0x144]
006c2550  48 e1 84 e5                                      str lr, [r4, #0x148]
006c2554  50 21 84 e5                                      str r2, [r4, #0x150]
006c2558  58 c1 84 e5                                      str ip, [r4, #0x158]
006c255c  5c c1 84 e5                                      str ip, [r4, #0x15c]
006c2560  70 21 84 e5                                      str r2, [r4, #0x170]
006c2564  74 21 84 e5                                      str r2, [r4, #0x174]
006c2568  04 00 a0 e1                                      mov r0, r4
006c256c  08 10 8d e2                                      add r1, sp, #8
006c2570  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2574  08 30 8d e5                                      str r3, [sp, #8]
006c2578  5d fa ff eb                                      bl #0x6c0ef4
006c257c  04 00 a0 e1                                      mov r0, r4
006c2580  14 d0 8d e2                                      add sp, sp, #0x14
006c2584  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
006c2588  08 26 2d 00 14 09 00 00 44 2b 00 00 90 0d 00 00  .byte 0x08, 0x26, 0x2d, 0x00, 0x14, 0x09, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x90, 0x0d, 0x00, 0x00

; FUNCTION 0x006c2598, declared_size=240, range_size=240, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNodeC2EbiRKNS_4core8vector3dIfEES6_S6_
; demangled: glitch::scene::CParticleSystemSceneNode::CParticleSystemSceneNode(bool, int, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006c2598  70 40 2d e9                                      push {r4, r5, r6, lr}
006c259c  10 d0 4d e2                                      sub sp, sp, #0x10
006c25a0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006c25a4  01 50 a0 e1                                      mov r5, r1
006c25a8  03 20 a0 e1                                      mov r2, r3
006c25ac  00 c0 8d e5                                      str ip, [sp]
006c25b0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006c25b4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006c25b8  04 10 81 e2                                      add r1, r1, #4
006c25bc  00 40 a0 e1                                      mov r4, r0
006c25c0  04 c0 8d e5                                      str ip, [sp, #4]
006c25c4  8a ff ff eb                                      bl #0x6c23f4
006c25c8  00 30 95 e5                                      ldr r3, [r5]
006c25cc  bf 04 a0 e3                                      mov r0, #0xbf000000
006c25d0  fe 15 a0 e3                                      mov r1, #0x3f800000
006c25d4  00 30 84 e5                                      str r3, [r4]
006c25d8  1c 20 13 e5                                      ldr r2, [r3, #-0x1c]
006c25dc  1c e0 95 e5                                      ldr lr, [r5, #0x1c]
006c25e0  02 05 80 e2                                      add r0, r0, #0x800000
006c25e4  00 c0 a0 e3                                      mov ip, #0
006c25e8  02 e0 84 e7                                      str lr, [r4, r2]
006c25ec  00 e0 94 e5                                      ldr lr, [r4]
006c25f0  20 60 95 e5                                      ldr r6, [r5, #0x20]
006c25f4  00 20 a0 e3                                      mov r2, #0
006c25f8  0c 50 1e e5                                      ldr r5, [lr, #-0xc]
006c25fc  01 31 a0 e3                                      mov r3, #0x40000000
006c2600  13 ee 84 e2                                      add lr, r4, #0x130
006c2604  05 60 84 e7                                      str r6, [r4, r5]
006c2608  ff 5f 0f e3                                      movw r5, #0xffff
006c260c  54 51 84 e5                                      str r5, [r4, #0x154]
006c2610  01 50 a0 e3                                      mov r5, #1
006c2614  60 01 84 e5                                      str r0, [r4, #0x160]
006c2618  84 11 84 e5                                      str r1, [r4, #0x184]
006c261c  58 01 84 e5                                      str r0, [r4, #0x158]
006c2620  5c 01 84 e5                                      str r0, [r4, #0x15c]
006c2624  64 11 84 e5                                      str r1, [r4, #0x164]
006c2628  68 11 84 e5                                      str r1, [r4, #0x168]
006c262c  6c 11 84 e5                                      str r1, [r4, #0x16c]
006c2630  0a 36 83 e2                                      add r3, r3, #0xa00000
006c2634  34 e1 84 e5                                      str lr, [r4, #0x134]
006c2638  4c c1 84 e5                                      str ip, [r4, #0x14c]
006c263c  7c 21 84 e5                                      str r2, [r4, #0x17c]
006c2640  80 51 c4 e5                                      strb r5, [r4, #0x180]
006c2644  30 e1 84 e5                                      str lr, [r4, #0x130]
006c2648  38 21 84 e5                                      str r2, [r4, #0x138]
006c264c  3c 21 84 e5                                      str r2, [r4, #0x13c]
006c2650  40 21 84 e5                                      str r2, [r4, #0x140]
006c2654  44 21 84 e5                                      str r2, [r4, #0x144]
006c2658  48 c1 84 e5                                      str ip, [r4, #0x148]
006c265c  50 21 84 e5                                      str r2, [r4, #0x150]
006c2660  70 21 84 e5                                      str r2, [r4, #0x170]
006c2664  74 21 84 e5                                      str r2, [r4, #0x174]
006c2668  04 00 a0 e1                                      mov r0, r4
006c266c  08 10 8d e2                                      add r1, sp, #8
006c2670  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2674  08 30 8d e5                                      str r3, [sp, #8]
006c2678  1d fa ff eb                                      bl #0x6c0ef4
006c267c  04 00 a0 e1                                      mov r0, r4
006c2680  10 d0 8d e2                                      add sp, sp, #0x10
006c2684  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c2880, declared_size=1912, range_size=1912, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode16doParticleSystemEj
; demangled: glitch::scene::CParticleSystemSceneNode::doParticleSystem(unsigned int)
; decoder-mode: arm
006c2880  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c2884  50 31 90 e5                                      ldr r3, [r0, #0x150]
006c2888  bc d0 4d e2                                      sub sp, sp, #0xbc
006c288c  00 40 a0 e1                                      mov r4, r0
006c2890  00 00 53 e3                                      cmp r3, #0
006c2894  01 60 a0 e1                                      mov r6, r1
006c2898  50 11 80 05                                      streq r1, [r0, #0x150]
006c289c  88 00 00 0a                                      beq #0x6c2ac4
006c28a0  38 21 90 e5                                      ldr r2, [r0, #0x138]
006c28a4  01 30 63 e0                                      rsb r3, r3, r1
006c28a8  18 30 8d e5                                      str r3, [sp, #0x18]
006c28ac  00 00 52 e3                                      cmp r2, #0
006c28b0  50 11 84 e5                                      str r1, [r4, #0x150]
006c28b4  02 00 00 0a                                      beq #0x6c28c4
006c28b8  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
006c28bc  01 00 13 e3                                      tst r3, #1
006c28c0  8b 00 00 1a                                      bne #0x6c2af4
006c28c4  40 a1 94 e5                                      ldr sl, [r4, #0x140]
006c28c8  3c 81 94 e5                                      ldr r8, [r4, #0x13c]
006c28cc  0a 30 68 e0                                      rsb r3, r8, sl
006c28d0  43 31 a0 e1                                      asr r3, r3, #2
006c28d4  03 22 a0 e1                                      lsl r2, r3, #4
006c28d8  02 20 63 e0                                      rsb r2, r3, r2
006c28dc  02 24 82 e0                                      add r2, r2, r2, lsl #8
006c28e0  02 28 82 e0                                      add r2, r2, r2, lsl #16
006c28e4  02 32 83 e0                                      add r3, r3, r2, lsl #4
006c28e8  00 00 53 e3                                      cmp r3, #0
006c28ec  74 00 00 0a                                      beq #0x6c2ac4
006c28f0  04 70 a0 e1                                      mov r7, r4
006c28f4  30 51 b7 e5                                      ldr r5, [r7, #0x130]!
006c28f8  08 20 a0 e1                                      mov r2, r8
006c28fc  0f 00 00 ea                                      b #0x6c2940
006c2900  0a a0 62 e0                                      rsb sl, r2, sl
006c2904  4a a1 a0 e1                                      asr sl, sl, #2
006c2908  08 10 95 e5                                      ldr r1, [r5, #8]
006c290c  0a 32 a0 e1                                      lsl r3, sl, #4
006c2910  03 30 6a e0                                      rsb r3, sl, r3
006c2914  03 34 83 e0                                      add r3, r3, r3, lsl #8
006c2918  01 00 a0 e1                                      mov r0, r1
006c291c  03 38 83 e0                                      add r3, r3, r3, lsl #16
006c2920  00 c0 91 e5                                      ldr ip, [r1]
006c2924  03 32 8a e0                                      add r3, sl, r3, lsl #4
006c2928  06 10 a0 e1                                      mov r1, r6
006c292c  0f e0 a0 e1                                      mov lr, pc
006c2930  10 f0 9c e5                                      ldr pc, [ip, #0x10]
006c2934  00 50 95 e5                                      ldr r5, [r5]
006c2938  40 a1 94 e5                                      ldr sl, [r4, #0x140]
006c293c  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
006c2940  07 00 55 e1                                      cmp r5, r7
006c2944  ed ff ff 1a                                      bne #0x6c2900
006c2948  80 31 d4 e5                                      ldrb r3, [r4, #0x180]
006c294c  02 80 a0 e1                                      mov r8, r2
006c2950  00 00 53 e3                                      cmp r3, #0
006c2954  5c 00 00 1a                                      bne #0x6c2acc
006c2958  00 30 a0 e3                                      mov r3, #0
006c295c  60 31 84 e5                                      str r3, [r4, #0x160]
006c2960  64 31 84 e5                                      str r3, [r4, #0x164]
006c2964  68 31 84 e5                                      str r3, [r4, #0x168]
006c2968  6c 31 84 e5                                      str r3, [r4, #0x16c]
006c296c  58 31 84 e5                                      str r3, [r4, #0x158]
006c2970  5c 31 84 e5                                      str r3, [r4, #0x15c]
006c2974  b4 20 8d e2                                      add r2, sp, #0xb4
006c2978  18 00 9d e5                                      ldr r0, [sp, #0x18]
006c297c  14 20 8d e5                                      str r2, [sp, #0x14]
006c2980  56 2e f1 eb                                      bl #0x30e2e0
006c2984  00 50 a0 e3                                      mov r5, #0
006c2988  00 70 a0 e1                                      mov r7, r0
006c298c  0a 10 a0 e1                                      mov r1, sl
006c2990  01 30 68 e0                                      rsb r3, r8, r1
006c2994  43 31 a0 e1                                      asr r3, r3, #2
006c2998  03 22 a0 e1                                      lsl r2, r3, #4
006c299c  02 20 63 e0                                      rsb r2, r3, r2
006c29a0  02 24 82 e0                                      add r2, r2, r2, lsl #8
006c29a4  02 28 82 e0                                      add r2, r2, r2, lsl #16
006c29a8  02 32 83 e0                                      add r3, r3, r2, lsl #4
006c29ac  03 00 55 e1                                      cmp r5, r3
006c29b0  12 00 00 2a                                      bhs #0x6c2a00
006c29b4  44 30 a0 e3                                      mov r3, #0x44
006c29b8  93 05 09 e0                                      mul sb, r3, r5
006c29bc  09 a0 88 e0                                      add sl, r8, sb
006c29c0  1c 30 9a e5                                      ldr r3, [sl, #0x1c]
006c29c4  03 00 56 e1                                      cmp r6, r3
006c29c8  45 01 00 9a                                      bls #0x6c2ee4
006c29cc  44 00 8a e2                                      add r0, sl, #0x44
006c29d0  01 00 50 e1                                      cmp r0, r1
006c29d4  06 00 00 0a                                      beq #0x6c29f4
006c29d8  00 c0 a0 e3                                      mov ip, #0
006c29dc  0a 20 a0 e1                                      mov r2, sl
006c29e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006c29e4  00 c0 8d e5                                      str ip, [sp]
006c29e8  49 f9 ff eb                                      bl #0x6c0f14
006c29ec  40 01 94 e5                                      ldr r0, [r4, #0x140]
006c29f0  3c 81 94 e5                                      ldr r8, [r4, #0x13c]
006c29f4  44 10 40 e2                                      sub r1, r0, #0x44
006c29f8  40 11 84 e5                                      str r1, [r4, #0x140]
006c29fc  e3 ff ff ea                                      b #0x6c2990
006c2a00  4c 51 94 e5                                      ldr r5, [r4, #0x14c]
006c2a04  48 61 94 e5                                      ldr r6, [r4, #0x148]
006c2a08  05 10 a0 e1                                      mov r1, r5
006c2a0c  06 00 a0 e1                                      mov r0, r6
006c2a10  38 2e f1 eb                                      bl #0x30e2f8
006c2a14  00 00 50 e3                                      cmp r0, #0
006c2a18  05 00 a0 01                                      moveq r0, r5
006c2a1c  06 00 a0 11                                      movne r0, r6
006c2a20  3f 14 a0 e3                                      mov r1, #0x3f000000
006c2a24  d0 30 f1 eb                                      bl #0x30ed6c
006c2a28  00 50 a0 e1                                      mov r5, r0
006c2a2c  05 10 a0 e1                                      mov r1, r5
006c2a30  64 01 94 e5                                      ldr r0, [r4, #0x164]
006c2a34  5a 30 f1 eb                                      bl #0x30eba4
006c2a38  05 10 a0 e1                                      mov r1, r5
006c2a3c  64 01 84 e5                                      str r0, [r4, #0x164]
006c2a40  68 01 94 e5                                      ldr r0, [r4, #0x168]
006c2a44  56 30 f1 eb                                      bl #0x30eba4
006c2a48  05 10 a0 e1                                      mov r1, r5
006c2a4c  68 01 84 e5                                      str r0, [r4, #0x168]
006c2a50  6c 01 94 e5                                      ldr r0, [r4, #0x16c]
006c2a54  52 30 f1 eb                                      bl #0x30eba4
006c2a58  05 10 a0 e1                                      mov r1, r5
006c2a5c  6c 01 84 e5                                      str r0, [r4, #0x16c]
006c2a60  58 01 94 e5                                      ldr r0, [r4, #0x158]
006c2a64  50 2e f1 eb                                      bl #0x30e3ac
006c2a68  05 10 a0 e1                                      mov r1, r5
006c2a6c  58 01 84 e5                                      str r0, [r4, #0x158]
006c2a70  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
006c2a74  4c 2e f1 eb                                      bl #0x30e3ac
006c2a78  05 10 a0 e1                                      mov r1, r5
006c2a7c  5c 01 84 e5                                      str r0, [r4, #0x15c]
006c2a80  60 01 94 e5                                      ldr r0, [r4, #0x160]
006c2a84  48 2e f1 eb                                      bl #0x30e3ac
006c2a88  80 31 d4 e5                                      ldrb r3, [r4, #0x180]
006c2a8c  60 01 84 e5                                      str r0, [r4, #0x160]
006c2a90  00 00 53 e3                                      cmp r3, #0
006c2a94  0a 00 00 0a                                      beq #0x6c2ac4
006c2a98  28 50 8d e2                                      add r5, sp, #0x28
006c2a9c  00 30 a0 e3                                      mov r3, #0
006c2aa0  24 00 84 e2                                      add r0, r4, #0x24
006c2aa4  05 10 a0 e1                                      mov r1, r5
006c2aa8  68 30 cd e5                                      strb r3, [sp, #0x68]
006c2aac  03 82 f1 eb                                      bl #0x3232c0
006c2ab0  00 30 50 e2                                      subs r3, r0, #0
006c2ab4  49 01 00 0a                                      beq #0x6c2fe0
006c2ab8  05 00 a0 e1                                      mov r0, r5
006c2abc  56 1f 84 e2                                      add r1, r4, #0x158
006c2ac0  a0 52 fb eb                                      bl #0x597548
006c2ac4  bc d0 8d e2                                      add sp, sp, #0xbc
006c2ac8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c2acc  54 10 94 e5                                      ldr r1, [r4, #0x54]
006c2ad0  58 20 94 e5                                      ldr r2, [r4, #0x58]
006c2ad4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006c2ad8  58 11 84 e5                                      str r1, [r4, #0x158]
006c2adc  5c 21 84 e5                                      str r2, [r4, #0x15c]
006c2ae0  60 31 84 e5                                      str r3, [r4, #0x160]
006c2ae4  64 11 84 e5                                      str r1, [r4, #0x164]
006c2ae8  68 21 84 e5                                      str r2, [r4, #0x168]
006c2aec  6c 31 84 e5                                      str r3, [r4, #0x16c]
006c2af0  9f ff ff ea                                      b #0x6c2974
006c2af4  02 00 a0 e1                                      mov r0, r2
006c2af8  00 30 92 e5                                      ldr r3, [r2]
006c2afc  0f e0 a0 e1                                      mov lr, pc
006c2b00  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006c2b04  00 00 50 e3                                      cmp r0, #0
006c2b08  6d ff ff 0a                                      beq #0x6c28c4
006c2b0c  38 21 94 e5                                      ldr r2, [r4, #0x138]
006c2b10  b8 30 8d e2                                      add r3, sp, #0xb8
006c2b14  00 80 a0 e3                                      mov r8, #0
006c2b18  08 80 23 e5                                      str r8, [r3, #-8]!
006c2b1c  02 00 a0 e1                                      mov r0, r2
006c2b20  00 c0 92 e5                                      ldr ip, [r2]
006c2b24  06 10 a0 e1                                      mov r1, r6
006c2b28  18 20 9d e5                                      ldr r2, [sp, #0x18]
006c2b2c  0f e0 a0 e1                                      mov lr, pc
006c2b30  10 f0 9c e5                                      ldr pc, [ip, #0x10]
006c2b34  00 10 50 e2                                      subs r1, r0, #0
006c2b38  61 ff ff 0a                                      beq #0x6c28c4
006c2b3c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006c2b40  08 00 53 e1                                      cmp r3, r8
006c2b44  5e ff ff 0a                                      beq #0x6c28c4
006c2b48  04 00 a0 e1                                      mov r0, r4
006c2b4c  3c 21 b0 e5                                      ldr r2, [r0, #0x13c]!
006c2b50  40 c1 94 e5                                      ldr ip, [r4, #0x140]
006c2b54  00 30 a0 e3                                      mov r3, #0
006c2b58  9c 30 8d e5                                      str r3, [sp, #0x9c]
006c2b5c  0c c0 62 e0                                      rsb ip, r2, ip
006c2b60  4c c1 a0 e1                                      asr ip, ip, #2
006c2b64  6c 20 8d e2                                      add r2, sp, #0x6c
006c2b68  0c b2 a0 e1                                      lsl fp, ip, #4
006c2b6c  0b b0 6c e0                                      rsb fp, ip, fp
006c2b70  0b b4 8b e0                                      add fp, fp, fp, lsl #8
006c2b74  6c 30 8d e5                                      str r3, [sp, #0x6c]
006c2b78  0b b8 8b e0                                      add fp, fp, fp, lsl #16
006c2b7c  70 30 8d e5                                      str r3, [sp, #0x70]
006c2b80  0b b2 8c e0                                      add fp, ip, fp, lsl #4
006c2b84  fd cd 6b e2                                      rsb ip, fp, #0x3f40
006c2b88  3a c0 8c e2                                      add ip, ip, #0x3a
006c2b8c  0c 00 51 e1                                      cmp r1, ip
006c2b90  01 c0 8b d0                                      addle ip, fp, r1
006c2b94  0c c0 8b c0                                      addgt ip, fp, ip
006c2b98  0c 10 a0 e1                                      mov r1, ip
006c2b9c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c2ba0  74 30 8d e5                                      str r3, [sp, #0x74]
006c2ba4  78 30 8d e5                                      str r3, [sp, #0x78]
006c2ba8  7c 30 8d e5                                      str r3, [sp, #0x7c]
006c2bac  80 30 8d e5                                      str r3, [sp, #0x80]
006c2bb0  94 30 8d e5                                      str r3, [sp, #0x94]
006c2bb4  98 30 8d e5                                      str r3, [sp, #0x98]
006c2bb8  11 ff ff eb                                      bl #0x6c2804
006c2bbc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006c2bc0  0b 00 52 e1                                      cmp r2, fp
006c2bc4  3e ff ff da                                      ble #0x6c28c4
006c2bc8  44 30 a0 e3                                      mov r3, #0x44
006c2bcc  93 0b 03 e0                                      mul r3, r3, fp
006c2bd0  24 60 8d e5                                      str r6, [sp, #0x24]
006c2bd4  20 30 8d e5                                      str r3, [sp, #0x20]
006c2bd8  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
006c2bdc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006c2be0  3c 11 94 e5                                      ldr r1, [r4, #0x13c]
006c2be4  08 00 92 e7                                      ldr r0, [r2, r8]
006c2be8  03 60 88 e0                                      add r6, r8, r3
006c2bec  08 20 82 e0                                      add r2, r2, r8
006c2bf0  06 00 81 e7                                      str r0, [r1, r6]
006c2bf4  06 30 81 e0                                      add r3, r1, r6
006c2bf8  04 10 92 e5                                      ldr r1, [r2, #4]
006c2bfc  04 10 83 e5                                      str r1, [r3, #4]
006c2c00  08 10 92 e5                                      ldr r1, [r2, #8]
006c2c04  08 10 83 e5                                      str r1, [r3, #8]
006c2c08  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006c2c0c  0c 10 83 e5                                      str r1, [r3, #0xc]
006c2c10  10 10 92 e5                                      ldr r1, [r2, #0x10]
006c2c14  10 10 83 e5                                      str r1, [r3, #0x10]
006c2c18  14 10 92 e5                                      ldr r1, [r2, #0x14]
006c2c1c  14 10 83 e5                                      str r1, [r3, #0x14]
006c2c20  18 10 92 e5                                      ldr r1, [r2, #0x18]
006c2c24  18 10 83 e5                                      str r1, [r3, #0x18]
006c2c28  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
006c2c2c  1c 10 83 e5                                      str r1, [r3, #0x1c]
006c2c30  20 10 92 e5                                      ldr r1, [r2, #0x20]
006c2c34  20 10 83 e5                                      str r1, [r3, #0x20]
006c2c38  24 10 92 e5                                      ldr r1, [r2, #0x24]
006c2c3c  24 10 83 e5                                      str r1, [r3, #0x24]
006c2c40  28 10 92 e5                                      ldr r1, [r2, #0x28]
006c2c44  28 10 83 e5                                      str r1, [r3, #0x28]
006c2c48  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
006c2c4c  2c 10 83 e5                                      str r1, [r3, #0x2c]
006c2c50  30 10 92 e5                                      ldr r1, [r2, #0x30]
006c2c54  30 10 83 e5                                      str r1, [r3, #0x30]
006c2c58  34 10 92 e5                                      ldr r1, [r2, #0x34]
006c2c5c  34 10 83 e5                                      str r1, [r3, #0x34]
006c2c60  38 10 92 e5                                      ldr r1, [r2, #0x38]
006c2c64  38 10 83 e5                                      str r1, [r3, #0x38]
006c2c68  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
006c2c6c  3c 10 83 e5                                      str r1, [r3, #0x3c]
006c2c70  40 20 92 e5                                      ldr r2, [r2, #0x40]
006c2c74  40 20 83 e5                                      str r2, [r3, #0x40]
006c2c78  3c 51 94 e5                                      ldr r5, [r4, #0x13c]
006c2c7c  24 10 94 e5                                      ldr r1, [r4, #0x24]
006c2c80  06 50 85 e0                                      add r5, r5, r6
006c2c84  28 90 95 e5                                      ldr sb, [r5, #0x28]
006c2c88  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
006c2c8c  30 70 95 e5                                      ldr r7, [r5, #0x30]
006c2c90  09 00 a0 e1                                      mov r0, sb
006c2c94  34 30 f1 eb                                      bl #0x30ed6c
006c2c98  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c2c9c  00 30 a0 e1                                      mov r3, r0
006c2ca0  0a 00 a0 e1                                      mov r0, sl
006c2ca4  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2ca8  2f 30 f1 eb                                      bl #0x30ed6c
006c2cac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2cb0  00 10 a0 e1                                      mov r1, r0
006c2cb4  03 00 a0 e1                                      mov r0, r3
006c2cb8  b9 2f f1 eb                                      bl #0x30eba4
006c2cbc  44 10 94 e5                                      ldr r1, [r4, #0x44]
006c2cc0  00 30 a0 e1                                      mov r3, r0
006c2cc4  07 00 a0 e1                                      mov r0, r7
006c2cc8  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2ccc  26 30 f1 eb                                      bl #0x30ed6c
006c2cd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2cd4  00 10 a0 e1                                      mov r1, r0
006c2cd8  03 00 a0 e1                                      mov r0, r3
006c2cdc  b0 2f f1 eb                                      bl #0x30eba4
006c2ce0  28 00 85 e5                                      str r0, [r5, #0x28]
006c2ce4  28 10 94 e5                                      ldr r1, [r4, #0x28]
006c2ce8  09 00 a0 e1                                      mov r0, sb
006c2cec  1e 30 f1 eb                                      bl #0x30ed6c
006c2cf0  38 10 94 e5                                      ldr r1, [r4, #0x38]
006c2cf4  00 30 a0 e1                                      mov r3, r0
006c2cf8  0a 00 a0 e1                                      mov r0, sl
006c2cfc  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2d00  19 30 f1 eb                                      bl #0x30ed6c
006c2d04  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2d08  00 10 a0 e1                                      mov r1, r0
006c2d0c  03 00 a0 e1                                      mov r0, r3
006c2d10  a3 2f f1 eb                                      bl #0x30eba4
006c2d14  48 10 94 e5                                      ldr r1, [r4, #0x48]
006c2d18  00 30 a0 e1                                      mov r3, r0
006c2d1c  07 00 a0 e1                                      mov r0, r7
006c2d20  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2d24  10 30 f1 eb                                      bl #0x30ed6c
006c2d28  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2d2c  00 10 a0 e1                                      mov r1, r0
006c2d30  03 00 a0 e1                                      mov r0, r3
006c2d34  9a 2f f1 eb                                      bl #0x30eba4
006c2d38  2c 00 85 e5                                      str r0, [r5, #0x2c]
006c2d3c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006c2d40  09 00 a0 e1                                      mov r0, sb
006c2d44  08 30 f1 eb                                      bl #0x30ed6c
006c2d48  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006c2d4c  00 90 a0 e1                                      mov sb, r0
006c2d50  0a 00 a0 e1                                      mov r0, sl
006c2d54  04 30 f1 eb                                      bl #0x30ed6c
006c2d58  00 10 a0 e1                                      mov r1, r0
006c2d5c  09 00 a0 e1                                      mov r0, sb
006c2d60  8f 2f f1 eb                                      bl #0x30eba4
006c2d64  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
006c2d68  00 a0 a0 e1                                      mov sl, r0
006c2d6c  07 00 a0 e1                                      mov r0, r7
006c2d70  fd 2f f1 eb                                      bl #0x30ed6c
006c2d74  00 10 a0 e1                                      mov r1, r0
006c2d78  0a 00 a0 e1                                      mov r0, sl
006c2d7c  88 2f f1 eb                                      bl #0x30eba4
006c2d80  30 00 85 e5                                      str r0, [r5, #0x30]
006c2d84  80 31 d4 e5                                      ldrb r3, [r4, #0x180]
006c2d88  00 00 53 e3                                      cmp r3, #0
006c2d8c  4d 00 00 0a                                      beq #0x6c2ec8
006c2d90  3c 71 94 e5                                      ldr r7, [r4, #0x13c]
006c2d94  28 10 94 e5                                      ldr r1, [r4, #0x28]
006c2d98  06 90 97 e7                                      ldr sb, [r7, r6]
006c2d9c  06 50 87 e0                                      add r5, r7, r6
006c2da0  04 a0 95 e5                                      ldr sl, [r5, #4]
006c2da4  09 00 a0 e1                                      mov r0, sb
006c2da8  ef 2f f1 eb                                      bl #0x30ed6c
006c2dac  38 10 94 e5                                      ldr r1, [r4, #0x38]
006c2db0  00 30 a0 e1                                      mov r3, r0
006c2db4  0a 00 a0 e1                                      mov r0, sl
006c2db8  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2dbc  ea 2f f1 eb                                      bl #0x30ed6c
006c2dc0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2dc4  00 10 a0 e1                                      mov r1, r0
006c2dc8  03 00 a0 e1                                      mov r0, r3
006c2dcc  74 2f f1 eb                                      bl #0x30eba4
006c2dd0  48 10 94 e5                                      ldr r1, [r4, #0x48]
006c2dd4  00 30 a0 e1                                      mov r3, r0
006c2dd8  08 00 95 e5                                      ldr r0, [r5, #8]
006c2ddc  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2de0  e1 2f f1 eb                                      bl #0x30ed6c
006c2de4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2de8  00 10 a0 e1                                      mov r1, r0
006c2dec  03 00 a0 e1                                      mov r0, r3
006c2df0  6b 2f f1 eb                                      bl #0x30eba4
006c2df4  58 10 94 e5                                      ldr r1, [r4, #0x58]
006c2df8  69 2f f1 eb                                      bl #0x30eba4
006c2dfc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
006c2e00  00 20 a0 e1                                      mov r2, r0
006c2e04  09 00 a0 e1                                      mov r0, sb
006c2e08  10 20 8d e5                                      str r2, [sp, #0x10]
006c2e0c  d6 2f f1 eb                                      bl #0x30ed6c
006c2e10  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
006c2e14  00 30 a0 e1                                      mov r3, r0
006c2e18  0a 00 a0 e1                                      mov r0, sl
006c2e1c  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2e20  d1 2f f1 eb                                      bl #0x30ed6c
006c2e24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2e28  00 10 a0 e1                                      mov r1, r0
006c2e2c  03 00 a0 e1                                      mov r0, r3
006c2e30  5b 2f f1 eb                                      bl #0x30eba4
006c2e34  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
006c2e38  00 30 a0 e1                                      mov r3, r0
006c2e3c  08 00 95 e5                                      ldr r0, [r5, #8]
006c2e40  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2e44  c8 2f f1 eb                                      bl #0x30ed6c
006c2e48  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2e4c  00 10 a0 e1                                      mov r1, r0
006c2e50  03 00 a0 e1                                      mov r0, r3
006c2e54  52 2f f1 eb                                      bl #0x30eba4
006c2e58  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
006c2e5c  50 2f f1 eb                                      bl #0x30eba4
006c2e60  24 10 94 e5                                      ldr r1, [r4, #0x24]
006c2e64  00 30 a0 e1                                      mov r3, r0
006c2e68  09 00 a0 e1                                      mov r0, sb
006c2e6c  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2e70  bd 2f f1 eb                                      bl #0x30ed6c
006c2e74  34 10 94 e5                                      ldr r1, [r4, #0x34]
006c2e78  00 90 a0 e1                                      mov sb, r0
006c2e7c  0a 00 a0 e1                                      mov r0, sl
006c2e80  b9 2f f1 eb                                      bl #0x30ed6c
006c2e84  00 10 a0 e1                                      mov r1, r0
006c2e88  09 00 a0 e1                                      mov r0, sb
006c2e8c  44 2f f1 eb                                      bl #0x30eba4
006c2e90  44 10 94 e5                                      ldr r1, [r4, #0x44]
006c2e94  00 a0 a0 e1                                      mov sl, r0
006c2e98  08 00 95 e5                                      ldr r0, [r5, #8]
006c2e9c  b2 2f f1 eb                                      bl #0x30ed6c
006c2ea0  00 10 a0 e1                                      mov r1, r0
006c2ea4  0a 00 a0 e1                                      mov r0, sl
006c2ea8  3d 2f f1 eb                                      bl #0x30eba4
006c2eac  54 10 94 e5                                      ldr r1, [r4, #0x54]
006c2eb0  3b 2f f1 eb                                      bl #0x30eba4
006c2eb4  06 00 87 e7                                      str r0, [r7, r6]
006c2eb8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2ebc  08 30 85 e5                                      str r3, [r5, #8]
006c2ec0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006c2ec4  04 20 85 e5                                      str r2, [r5, #4]
006c2ec8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006c2ecc  01 b0 8b e2                                      add fp, fp, #1
006c2ed0  44 80 88 e2                                      add r8, r8, #0x44
006c2ed4  0c 00 5b e1                                      cmp fp, ip
006c2ed8  3e ff ff 1a                                      bne #0x6c2bd8
006c2edc  24 60 9d e5                                      ldr r6, [sp, #0x24]
006c2ee0  77 fe ff ea                                      b #0x6c28c4
006c2ee4  10 10 9a e5                                      ldr r1, [sl, #0x10]
006c2ee8  07 00 a0 e1                                      mov r0, r7
006c2eec  9e 2f f1 eb                                      bl #0x30ed6c
006c2ef0  14 10 9a e5                                      ldr r1, [sl, #0x14]
006c2ef4  00 b0 a0 e1                                      mov fp, r0
006c2ef8  07 00 a0 e1                                      mov r0, r7
006c2efc  9a 2f f1 eb                                      bl #0x30ed6c
006c2f00  0c 10 9a e5                                      ldr r1, [sl, #0xc]
006c2f04  00 30 a0 e1                                      mov r3, r0
006c2f08  07 00 a0 e1                                      mov r0, r7
006c2f0c  0c 30 8d e5                                      str r3, [sp, #0xc]
006c2f10  95 2f f1 eb                                      bl #0x30ed6c
006c2f14  00 10 a0 e1                                      mov r1, r0
006c2f18  09 00 98 e7                                      ldr r0, [r8, sb]
006c2f1c  20 2f f1 eb                                      bl #0x30eba4
006c2f20  09 00 88 e7                                      str r0, [r8, sb]
006c2f24  04 00 9a e5                                      ldr r0, [sl, #4]
006c2f28  0b 10 a0 e1                                      mov r1, fp
006c2f2c  1c 2f f1 eb                                      bl #0x30eba4
006c2f30  04 00 8a e5                                      str r0, [sl, #4]
006c2f34  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006c2f38  08 00 9a e5                                      ldr r0, [sl, #8]
006c2f3c  01 50 85 e2                                      add r5, r5, #1
006c2f40  03 10 a0 e1                                      mov r1, r3
006c2f44  16 2f f1 eb                                      bl #0x30eba4
006c2f48  08 00 8a e5                                      str r0, [sl, #8]
006c2f4c  3c 81 94 e5                                      ldr r8, [r4, #0x13c]
006c2f50  64 11 94 e5                                      ldr r1, [r4, #0x164]
006c2f54  09 b0 98 e7                                      ldr fp, [r8, sb]
006c2f58  09 90 88 e0                                      add sb, r8, sb
006c2f5c  08 a0 99 e5                                      ldr sl, [sb, #8]
006c2f60  0b 00 a0 e1                                      mov r0, fp
006c2f64  e3 2c f1 eb                                      bl #0x30e2f8
006c2f68  04 90 99 e5                                      ldr sb, [sb, #4]
006c2f6c  00 00 50 e3                                      cmp r0, #0
006c2f70  68 11 94 e5                                      ldr r1, [r4, #0x168]
006c2f74  64 b1 84 15                                      strne fp, [r4, #0x164]
006c2f78  09 00 a0 e1                                      mov r0, sb
006c2f7c  dd 2c f1 eb                                      bl #0x30e2f8
006c2f80  00 00 50 e3                                      cmp r0, #0
006c2f84  6c 11 94 e5                                      ldr r1, [r4, #0x16c]
006c2f88  68 91 84 15                                      strne sb, [r4, #0x168]
006c2f8c  0a 00 a0 e1                                      mov r0, sl
006c2f90  d8 2c f1 eb                                      bl #0x30e2f8
006c2f94  00 00 50 e3                                      cmp r0, #0
006c2f98  58 11 94 e5                                      ldr r1, [r4, #0x158]
006c2f9c  6c a1 84 15                                      strne sl, [r4, #0x16c]
006c2fa0  0b 00 a0 e1                                      mov r0, fp
006c2fa4  d8 2d f1 eb                                      bl #0x30e70c
006c2fa8  00 00 50 e3                                      cmp r0, #0
006c2fac  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006c2fb0  58 b1 84 15                                      strne fp, [r4, #0x158]
006c2fb4  09 00 a0 e1                                      mov r0, sb
006c2fb8  d3 2d f1 eb                                      bl #0x30e70c
006c2fbc  00 00 50 e3                                      cmp r0, #0
006c2fc0  60 11 94 e5                                      ldr r1, [r4, #0x160]
006c2fc4  5c 91 84 15                                      strne sb, [r4, #0x15c]
006c2fc8  0a 00 a0 e1                                      mov r0, sl
006c2fcc  ce 2d f1 eb                                      bl #0x30e70c
006c2fd0  00 00 50 e3                                      cmp r0, #0
006c2fd4  60 a1 84 15                                      strne sl, [r4, #0x160]
006c2fd8  40 11 94 e5                                      ldr r1, [r4, #0x140]
006c2fdc  6b fe ff ea                                      b #0x6c2990
006c2fe0  03 10 a0 e1                                      mov r1, r3
006c2fe4  05 00 a0 e1                                      mov r0, r5
006c2fe8  40 20 a0 e3                                      mov r2, #0x40
006c2fec  68 30 cd e5                                      strb r3, [sp, #0x68]
006c2ff0  1a 2d f1 eb                                      bl #0x30e460
006c2ff4  af fe ff ea                                      b #0x6c2ab8

; FUNCTION 0x006c2ff8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode9onAnimateEj
; demangled: glitch::scene::CParticleSystemSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
006c2ff8  10 40 2d e9                                      push {r4, lr}
006c2ffc  00 40 a0 e1                                      mov r4, r0
006c3000  59 4f fb eb                                      bl #0x596d6c
006c3004  ac 1f fd eb                                      bl #0x60aebc
006c3008  00 00 50 e3                                      cmp r0, #0
006c300c  00 00 00 0a                                      beq #0x6c3014
006c3010  10 80 bd e8                                      pop {r4, pc}
006c3014  b2 1f fd eb                                      bl #0x60aee4
006c3018  00 10 a0 e1                                      mov r1, r0
006c301c  04 00 a0 e1                                      mov r0, r4
006c3020  10 40 bd e8                                      pop {r4, lr}
006c3024  15 fe ff ea                                      b #0x6c2880

; FUNCTION 0x006c309c, declared_size=2796, range_size=2796, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZN6glitch5scene24CParticleSystemSceneNode5cloneEv
; demangled: glitch::scene::CParticleSystemSceneNode::clone()
; decoder-mode: arm
006c309c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006c30a0  ac d0 4d e2                                      sub sp, sp, #0xac
006c30a4  4c 40 8d e2                                      add r4, sp, #0x4c
006c30a8  00 50 a0 e1                                      mov r5, r0
006c30ac  00 60 a0 e3                                      mov r6, #0
006c30b0  04 10 a0 e1                                      mov r1, r4
006c30b4  90 70 8d e2                                      add r7, sp, #0x90
006c30b8  b8 00 80 e2                                      add r0, r0, #0xb8
006c30bc  8c 60 cd e5                                      strb r6, [sp, #0x8c]
006c30c0  82 74 fa eb                                      bl #0x5602d0
006c30c4  04 10 a0 e1                                      mov r1, r4
006c30c8  07 00 a0 e1                                      mov r0, r7
006c30cc  ba be f5 eb                                      bl #0x432bbc
006c30d0  35 1a 0f e3                                      movw r1, #0xfa35
006c30d4  90 00 9d e5                                      ldr r0, [sp, #0x90]
006c30d8  8e 1c 43 e3                                      movt r1, #0x3c8e
006c30dc  22 2f f1 eb                                      bl #0x30ed6c
006c30e0  35 1a 0f e3                                      movw r1, #0xfa35
006c30e4  90 00 8d e5                                      str r0, [sp, #0x90]
006c30e8  8e 1c 43 e3                                      movt r1, #0x3c8e
006c30ec  94 00 9d e5                                      ldr r0, [sp, #0x94]
006c30f0  1d 2f f1 eb                                      bl #0x30ed6c
006c30f4  35 1a 0f e3                                      movw r1, #0xfa35
006c30f8  94 00 8d e5                                      str r0, [sp, #0x94]
006c30fc  8e 1c 43 e3                                      movt r1, #0x3c8e
006c3100  98 00 9d e5                                      ldr r0, [sp, #0x98]
006c3104  18 2f f1 eb                                      bl #0x30ed6c
006c3108  06 10 a0 e1                                      mov r1, r6
006c310c  98 00 8d e5                                      str r0, [sp, #0x98]
006c3110  19 0e a0 e3                                      mov r0, #0x190
006c3114  24 c4 f9 eb                                      bl #0x5341ac
006c3118  c8 c0 85 e2                                      add ip, r5, #0xc8
006c311c  0c 21 95 e5                                      ldr r2, [r5, #0x10c]
006c3120  00 40 a0 e1                                      mov r4, r0
006c3124  ac 30 85 e2                                      add r3, r5, #0xac
006c3128  06 10 a0 e1                                      mov r1, r6
006c312c  80 10 8d e8                                      stm sp, {r7, ip}
006c3130  d0 fc ff eb                                      bl #0x6c2478
006c3134  a4 70 8d e2                                      add r7, sp, #0xa4
006c3138  04 00 a0 e1                                      mov r0, r4
006c313c  05 10 a0 e1                                      mov r1, r5
006c3140  21 53 fb eb                                      bl #0x597dcc
006c3144  06 20 a0 e1                                      mov r2, r6
006c3148  74 11 95 e5                                      ldr r1, [r5, #0x174]
006c314c  07 00 a0 e1                                      mov r0, r7
006c3150  e4 23 fc eb                                      bl #0x5cc0e8
006c3154  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
006c3158  a8 00 8d e2                                      add r0, sp, #0xa8
006c315c  05 80 a0 e1                                      mov r8, r5
006c3160  9c 30 8d e5                                      str r3, [sp, #0x9c]
006c3164  06 00 53 e1                                      cmp r3, r6
006c3168  00 20 93 15                                      ldrne r2, [r3]
006c316c  01 20 82 12                                      addne r2, r2, #1
006c3170  00 20 83 15                                      strne r2, [r3]
006c3174  9c 30 9d 15                                      ldrne r3, [sp, #0x9c]
006c3178  74 21 94 e5                                      ldr r2, [r4, #0x174]
006c317c  0c 20 20 e5                                      str r2, [r0, #-0xc]!
006c3180  74 31 84 e5                                      str r3, [r4, #0x174]
006c3184  97 36 f1 eb                                      bl #0x310be8
006c3188  07 00 a0 e1                                      mov r0, r7
006c318c  95 36 f1 eb                                      bl #0x310be8
006c3190  30 61 b8 e5                                      ldr r6, [r8, #0x130]!
006c3194  05 00 00 ea                                      b #0x6c31b0
006c3198  08 10 96 e5                                      ldr r1, [r6, #8]
006c319c  00 30 94 e5                                      ldr r3, [r4]
006c31a0  04 00 a0 e1                                      mov r0, r4
006c31a4  0f e0 a0 e1                                      mov lr, pc
006c31a8  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006c31ac  00 60 96 e5                                      ldr r6, [r6]
006c31b0  06 00 58 e1                                      cmp r8, r6
006c31b4  f7 ff ff 1a                                      bne #0x6c3198
006c31b8  48 31 95 e5                                      ldr r3, [r5, #0x148]
006c31bc  48 31 84 e5                                      str r3, [r4, #0x148]
006c31c0  4c 31 95 e5                                      ldr r3, [r5, #0x14c]
006c31c4  4c 31 84 e5                                      str r3, [r4, #0x14c]
006c31c8  50 31 95 e5                                      ldr r3, [r5, #0x150]
006c31cc  50 31 84 e5                                      str r3, [r4, #0x150]
006c31d0  54 31 95 e5                                      ldr r3, [r5, #0x154]
006c31d4  54 31 84 e5                                      str r3, [r4, #0x154]
006c31d8  78 31 95 e5                                      ldr r3, [r5, #0x178]
006c31dc  78 31 84 e5                                      str r3, [r4, #0x178]
006c31e0  80 31 d5 e5                                      ldrb r3, [r5, #0x180]
006c31e4  80 31 c4 e5                                      strb r3, [r4, #0x180]
006c31e8  38 31 95 e5                                      ldr r3, [r5, #0x138]
006c31ec  03 00 a0 e1                                      mov r0, r3
006c31f0  00 30 93 e5                                      ldr r3, [r3]
006c31f4  0f e0 a0 e1                                      mov lr, pc
006c31f8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
006c31fc  06 00 50 e3                                      cmp r0, #6
006c3200  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
006c3204  57 00 00 ea                                      b #0x6c3368
006c3208  5b 00 00 ea                                      b #0x6c337c
006c320c  9d 00 00 ea                                      b #0x6c3488
006c3210  fa 00 00 ea                                      b #0x6c3600
006c3214  3a 01 00 ea                                      b #0x6c3704
006c3218  9e 01 00 ea                                      b #0x6c3898
006c321c  0b 02 00 ea                                      b #0x6c3a50
006c3220  ff ff ff ea                                      b #0x6c3224
006c3224  00 20 95 e5                                      ldr r2, [r5]
006c3228  38 61 95 e5                                      ldr r6, [r5, #0x138]
006c322c  24 21 92 e5                                      ldr r2, [r2, #0x124]
006c3230  00 30 96 e5                                      ldr r3, [r6]
006c3234  06 00 a0 e1                                      mov r0, r6
006c3238  38 20 8d e5                                      str r2, [sp, #0x38]
006c323c  0f e0 a0 e1                                      mov lr, pc
006c3240  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006c3244  00 30 96 e5                                      ldr r3, [r6]
006c3248  00 70 a0 e1                                      mov r7, r0
006c324c  06 00 a0 e1                                      mov r0, r6
006c3250  0f e0 a0 e1                                      mov lr, pc
006c3254  50 f0 93 e5                                      ldr pc, [r3, #0x50]
006c3258  00 c0 a0 e1                                      mov ip, r0
006c325c  00 30 96 e5                                      ldr r3, [r6]
006c3260  06 00 a0 e1                                      mov r0, r6
006c3264  30 c0 8d e5                                      str ip, [sp, #0x30]
006c3268  0f e0 a0 e1                                      mov lr, pc
006c326c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c3270  34 00 8d e5                                      str r0, [sp, #0x34]
006c3274  00 30 96 e5                                      ldr r3, [r6]
006c3278  06 00 a0 e1                                      mov r0, r6
006c327c  0f e0 a0 e1                                      mov lr, pc
006c3280  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006c3284  00 20 a0 e1                                      mov r2, r0
006c3288  00 30 96 e5                                      ldr r3, [r6]
006c328c  06 00 a0 e1                                      mov r0, r6
006c3290  28 20 8d e5                                      str r2, [sp, #0x28]
006c3294  0f e0 a0 e1                                      mov lr, pc
006c3298  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006c329c  00 30 a0 e1                                      mov r3, r0
006c32a0  00 10 96 e5                                      ldr r1, [r6]
006c32a4  06 00 a0 e1                                      mov r0, r6
006c32a8  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c32ac  0f e0 a0 e1                                      mov lr, pc
006c32b0  34 f0 91 e5                                      ldr pc, [r1, #0x34]
006c32b4  00 10 96 e5                                      ldr r1, [r6]
006c32b8  00 b0 a0 e1                                      mov fp, r0
006c32bc  06 00 a0 e1                                      mov r0, r6
006c32c0  0f e0 a0 e1                                      mov lr, pc
006c32c4  38 f0 91 e5                                      ldr pc, [r1, #0x38]
006c32c8  00 10 96 e5                                      ldr r1, [r6]
006c32cc  00 90 a0 e1                                      mov sb, r0
006c32d0  06 00 a0 e1                                      mov r0, r6
006c32d4  0f e0 a0 e1                                      mov lr, pc
006c32d8  54 f0 91 e5                                      ldr pc, [r1, #0x54]
006c32dc  00 10 96 e5                                      ldr r1, [r6]
006c32e0  00 a0 a0 e1                                      mov sl, r0
006c32e4  06 00 a0 e1                                      mov r0, r6
006c32e8  0f e0 a0 e1                                      mov lr, pc
006c32ec  58 f0 91 e5                                      ldr pc, [r1, #0x58]
006c32f0  00 10 96 e5                                      ldr r1, [r6]
006c32f4  00 80 a0 e1                                      mov r8, r0
006c32f8  06 00 a0 e1                                      mov r0, r6
006c32fc  0f e0 a0 e1                                      mov lr, pc
006c3300  5c f0 91 e5                                      ldr pc, [r1, #0x5c]
006c3304  28 20 8d e2                                      add r2, sp, #0x28
006c3308  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
006c330c  00 20 8d e5                                      str r2, [sp]
006c3310  18 00 8d e5                                      str r0, [sp, #0x18]
006c3314  0c 20 a0 e1                                      mov r2, ip
006c3318  04 30 8d e5                                      str r3, [sp, #4]
006c331c  07 10 a0 e1                                      mov r1, r7
006c3320  34 30 9d e5                                      ldr r3, [sp, #0x34]
006c3324  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006c3328  08 b0 8d e5                                      str fp, [sp, #8]
006c332c  0c 90 8d e5                                      str sb, [sp, #0xc]
006c3330  10 a0 8d e5                                      str sl, [sp, #0x10]
006c3334  14 80 8d e5                                      str r8, [sp, #0x14]
006c3338  05 00 a0 e1                                      mov r0, r5
006c333c  3c ff 2f e1                                      blx ip
006c3340  00 30 94 e5                                      ldr r3, [r4]
006c3344  00 10 a0 e1                                      mov r1, r0
006c3348  04 00 a0 e1                                      mov r0, r4
006c334c  0f e0 a0 e1                                      mov lr, pc
006c3350  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006c3354  38 31 94 e5                                      ldr r3, [r4, #0x138]
006c3358  00 20 93 e5                                      ldr r2, [r3]
006c335c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c3360  00 00 83 e0                                      add r0, r3, r0
006c3364  86 68 f1 eb                                      bl #0x31d584
006c3368  00 30 a0 e3                                      mov r3, #0
006c336c  38 31 84 e5                                      str r3, [r4, #0x138]
006c3370  04 00 a0 e1                                      mov r0, r4
006c3374  ac d0 8d e2                                      add sp, sp, #0xac
006c3378  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006c337c  00 20 95 e5                                      ldr r2, [r5]
006c3380  38 81 95 e5                                      ldr r8, [r5, #0x138]
006c3384  1c c1 92 e5                                      ldr ip, [r2, #0x11c]
006c3388  00 30 98 e5                                      ldr r3, [r8]
006c338c  08 00 a0 e1                                      mov r0, r8
006c3390  30 c0 8d e5                                      str ip, [sp, #0x30]
006c3394  0f e0 a0 e1                                      mov lr, pc
006c3398  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c339c  00 30 98 e5                                      ldr r3, [r8]
006c33a0  00 a0 a0 e1                                      mov sl, r0
006c33a4  08 00 a0 e1                                      mov r0, r8
006c33a8  0f e0 a0 e1                                      mov lr, pc
006c33ac  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006c33b0  00 30 98 e5                                      ldr r3, [r8]
006c33b4  00 70 a0 e1                                      mov r7, r0
006c33b8  08 00 a0 e1                                      mov r0, r8
006c33bc  0f e0 a0 e1                                      mov lr, pc
006c33c0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006c33c4  00 30 98 e5                                      ldr r3, [r8]
006c33c8  00 60 a0 e1                                      mov r6, r0
006c33cc  08 00 a0 e1                                      mov r0, r8
006c33d0  0f e0 a0 e1                                      mov lr, pc
006c33d4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
006c33d8  00 20 a0 e1                                      mov r2, r0
006c33dc  00 30 98 e5                                      ldr r3, [r8]
006c33e0  08 00 a0 e1                                      mov r0, r8
006c33e4  28 20 8d e5                                      str r2, [sp, #0x28]
006c33e8  0f e0 a0 e1                                      mov lr, pc
006c33ec  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006c33f0  00 30 a0 e1                                      mov r3, r0
006c33f4  00 10 98 e5                                      ldr r1, [r8]
006c33f8  08 00 a0 e1                                      mov r0, r8
006c33fc  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c3400  0f e0 a0 e1                                      mov lr, pc
006c3404  44 f0 91 e5                                      ldr pc, [r1, #0x44]
006c3408  00 10 98 e5                                      ldr r1, [r8]
006c340c  00 b0 a0 e1                                      mov fp, r0
006c3410  08 00 a0 e1                                      mov r0, r8
006c3414  0f e0 a0 e1                                      mov lr, pc
006c3418  48 f0 91 e5                                      ldr pc, [r1, #0x48]
006c341c  00 10 98 e5                                      ldr r1, [r8]
006c3420  00 90 a0 e1                                      mov sb, r0
006c3424  08 00 a0 e1                                      mov r0, r8
006c3428  0f e0 a0 e1                                      mov lr, pc
006c342c  4c f0 91 e5                                      ldr pc, [r1, #0x4c]
006c3430  28 20 9d e5                                      ldr r2, [sp, #0x28]
006c3434  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006c3438  10 00 8d e5                                      str r0, [sp, #0x10]
006c343c  0c 08 8d e8                                      stm sp, {r2, r3, fp}
006c3440  0c 90 8d e5                                      str sb, [sp, #0xc]
006c3444  0a 10 a0 e1                                      mov r1, sl
006c3448  07 20 a0 e1                                      mov r2, r7
006c344c  06 30 a0 e1                                      mov r3, r6
006c3450  05 00 a0 e1                                      mov r0, r5
006c3454  30 c0 9d e5                                      ldr ip, [sp, #0x30]
006c3458  3c ff 2f e1                                      blx ip
006c345c  00 10 a0 e1                                      mov r1, r0
006c3460  00 30 94 e5                                      ldr r3, [r4]
006c3464  04 00 a0 e1                                      mov r0, r4
006c3468  0f e0 a0 e1                                      mov lr, pc
006c346c  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006c3470  38 31 94 e5                                      ldr r3, [r4, #0x138]
006c3474  00 20 93 e5                                      ldr r2, [r3]
006c3478  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c347c  00 00 83 e0                                      add r0, r3, r0
006c3480  3f 68 f1 eb                                      bl #0x31d584
006c3484  b9 ff ff ea                                      b #0x6c3370
006c3488  38 61 95 e5                                      ldr r6, [r5, #0x138]
006c348c  00 30 96 e5                                      ldr r3, [r6]
006c3490  06 00 a0 e1                                      mov r0, r6
006c3494  0f e0 a0 e1                                      mov lr, pc
006c3498  54 f0 93 e5                                      ldr pc, [r3, #0x54]
006c349c  00 20 95 e5                                      ldr r2, [r5]
006c34a0  00 30 90 e5                                      ldr r3, [r0]
006c34a4  0c 21 92 e5                                      ldr r2, [r2, #0x10c]
006c34a8  40 20 8d e5                                      str r2, [sp, #0x40]
006c34ac  0f e0 a0 e1                                      mov lr, pc
006c34b0  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
006c34b4  3c 00 8d e5                                      str r0, [sp, #0x3c]
006c34b8  00 30 96 e5                                      ldr r3, [r6]
006c34bc  06 00 a0 e1                                      mov r0, r6
006c34c0  0f e0 a0 e1                                      mov lr, pc
006c34c4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
006c34c8  44 00 8d e5                                      str r0, [sp, #0x44]
006c34cc  00 30 96 e5                                      ldr r3, [r6]
006c34d0  06 00 a0 e1                                      mov r0, r6
006c34d4  0f e0 a0 e1                                      mov lr, pc
006c34d8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c34dc  38 00 8d e5                                      str r0, [sp, #0x38]
006c34e0  00 30 96 e5                                      ldr r3, [r6]
006c34e4  06 00 a0 e1                                      mov r0, r6
006c34e8  0f e0 a0 e1                                      mov lr, pc
006c34ec  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006c34f0  00 20 a0 e1                                      mov r2, r0
006c34f4  00 30 96 e5                                      ldr r3, [r6]
006c34f8  06 00 a0 e1                                      mov r0, r6
006c34fc  28 20 8d e5                                      str r2, [sp, #0x28]
006c3500  0f e0 a0 e1                                      mov lr, pc
006c3504  68 f0 93 e5                                      ldr pc, [r3, #0x68]
006c3508  00 30 a0 e1                                      mov r3, r0
006c350c  00 10 96 e5                                      ldr r1, [r6]
006c3510  06 00 a0 e1                                      mov r0, r6
006c3514  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c3518  0f e0 a0 e1                                      mov lr, pc
006c351c  60 f0 91 e5                                      ldr pc, [r1, #0x60]
006c3520  00 10 96 e5                                      ldr r1, [r6]
006c3524  00 b0 a0 e1                                      mov fp, r0
006c3528  06 00 a0 e1                                      mov r0, r6
006c352c  0f e0 a0 e1                                      mov lr, pc
006c3530  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
006c3534  00 10 96 e5                                      ldr r1, [r6]
006c3538  00 90 a0 e1                                      mov sb, r0
006c353c  06 00 a0 e1                                      mov r0, r6
006c3540  0f e0 a0 e1                                      mov lr, pc
006c3544  30 f0 91 e5                                      ldr pc, [r1, #0x30]
006c3548  00 10 96 e5                                      ldr r1, [r6]
006c354c  00 a0 a0 e1                                      mov sl, r0
006c3550  06 00 a0 e1                                      mov r0, r6
006c3554  0f e0 a0 e1                                      mov lr, pc
006c3558  34 f0 91 e5                                      ldr pc, [r1, #0x34]
006c355c  00 10 96 e5                                      ldr r1, [r6]
006c3560  00 80 a0 e1                                      mov r8, r0
006c3564  06 00 a0 e1                                      mov r0, r6
006c3568  0f e0 a0 e1                                      mov lr, pc
006c356c  38 f0 91 e5                                      ldr pc, [r1, #0x38]
006c3570  34 00 8d e5                                      str r0, [sp, #0x34]
006c3574  00 10 96 e5                                      ldr r1, [r6]
006c3578  06 00 a0 e1                                      mov r0, r6
006c357c  0f e0 a0 e1                                      mov lr, pc
006c3580  6c f0 91 e5                                      ldr pc, [r1, #0x6c]
006c3584  00 c0 a0 e1                                      mov ip, r0
006c3588  00 10 96 e5                                      ldr r1, [r6]
006c358c  06 00 a0 e1                                      mov r0, r6
006c3590  30 c0 8d e5                                      str ip, [sp, #0x30]
006c3594  0f e0 a0 e1                                      mov lr, pc
006c3598  70 f0 91 e5                                      ldr pc, [r1, #0x70]
006c359c  00 10 96 e5                                      ldr r1, [r6]
006c35a0  00 70 a0 e1                                      mov r7, r0
006c35a4  06 00 a0 e1                                      mov r0, r6
006c35a8  0f e0 a0 e1                                      mov lr, pc
006c35ac  74 f0 91 e5                                      ldr pc, [r1, #0x74]
006c35b0  28 20 8d e2                                      add r2, sp, #0x28
006c35b4  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
006c35b8  04 30 8d e5                                      str r3, [sp, #4]
006c35bc  34 30 9d e5                                      ldr r3, [sp, #0x34]
006c35c0  00 20 8d e5                                      str r2, [sp]
006c35c4  24 00 8d e5                                      str r0, [sp, #0x24]
006c35c8  18 30 8d e5                                      str r3, [sp, #0x18]
006c35cc  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c35d0  08 b0 8d e5                                      str fp, [sp, #8]
006c35d4  0c 90 8d e5                                      str sb, [sp, #0xc]
006c35d8  10 a0 8d e5                                      str sl, [sp, #0x10]
006c35dc  14 80 8d e5                                      str r8, [sp, #0x14]
006c35e0  20 70 8d e5                                      str r7, [sp, #0x20]
006c35e4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006c35e8  44 20 9d e5                                      ldr r2, [sp, #0x44]
006c35ec  38 30 9d e5                                      ldr r3, [sp, #0x38]
006c35f0  05 00 a0 e1                                      mov r0, r5
006c35f4  40 c0 9d e5                                      ldr ip, [sp, #0x40]
006c35f8  3c ff 2f e1                                      blx ip
006c35fc  96 ff ff ea                                      b #0x6c345c
006c3600  00 20 95 e5                                      ldr r2, [r5]
006c3604  38 71 95 e5                                      ldr r7, [r5, #0x138]
006c3608  10 21 92 e5                                      ldr r2, [r2, #0x110]
006c360c  00 30 97 e5                                      ldr r3, [r7]
006c3610  07 00 a0 e1                                      mov r0, r7
006c3614  34 20 8d e5                                      str r2, [sp, #0x34]
006c3618  0f e0 a0 e1                                      mov lr, pc
006c361c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006c3620  00 30 97 e5                                      ldr r3, [r7]
006c3624  00 80 a0 e1                                      mov r8, r0
006c3628  07 00 a0 e1                                      mov r0, r7
006c362c  0f e0 a0 e1                                      mov lr, pc
006c3630  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c3634  00 30 97 e5                                      ldr r3, [r7]
006c3638  00 60 a0 e1                                      mov r6, r0
006c363c  07 00 a0 e1                                      mov r0, r7
006c3640  0f e0 a0 e1                                      mov lr, pc
006c3644  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006c3648  00 c0 a0 e1                                      mov ip, r0
006c364c  00 30 97 e5                                      ldr r3, [r7]
006c3650  07 00 a0 e1                                      mov r0, r7
006c3654  30 c0 8d e5                                      str ip, [sp, #0x30]
006c3658  0f e0 a0 e1                                      mov lr, pc
006c365c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006c3660  00 20 a0 e1                                      mov r2, r0
006c3664  00 30 97 e5                                      ldr r3, [r7]
006c3668  07 00 a0 e1                                      mov r0, r7
006c366c  28 20 8d e5                                      str r2, [sp, #0x28]
006c3670  0f e0 a0 e1                                      mov lr, pc
006c3674  34 f0 93 e5                                      ldr pc, [r3, #0x34]
006c3678  00 30 a0 e1                                      mov r3, r0
006c367c  00 10 97 e5                                      ldr r1, [r7]
006c3680  07 00 a0 e1                                      mov r0, r7
006c3684  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c3688  0f e0 a0 e1                                      mov lr, pc
006c368c  38 f0 91 e5                                      ldr pc, [r1, #0x38]
006c3690  00 10 97 e5                                      ldr r1, [r7]
006c3694  00 b0 a0 e1                                      mov fp, r0
006c3698  07 00 a0 e1                                      mov r0, r7
006c369c  0f e0 a0 e1                                      mov lr, pc
006c36a0  4c f0 91 e5                                      ldr pc, [r1, #0x4c]
006c36a4  00 10 97 e5                                      ldr r1, [r7]
006c36a8  00 90 a0 e1                                      mov sb, r0
006c36ac  07 00 a0 e1                                      mov r0, r7
006c36b0  0f e0 a0 e1                                      mov lr, pc
006c36b4  50 f0 91 e5                                      ldr pc, [r1, #0x50]
006c36b8  00 10 97 e5                                      ldr r1, [r7]
006c36bc  00 a0 a0 e1                                      mov sl, r0
006c36c0  07 00 a0 e1                                      mov r0, r7
006c36c4  0f e0 a0 e1                                      mov lr, pc
006c36c8  54 f0 91 e5                                      ldr pc, [r1, #0x54]
006c36cc  28 20 8d e2                                      add r2, sp, #0x28
006c36d0  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
006c36d4  00 20 8d e5                                      str r2, [sp]
006c36d8  14 00 8d e5                                      str r0, [sp, #0x14]
006c36dc  08 08 8d e9                                      stmib sp, {r3, fp}
006c36e0  0c 30 a0 e1                                      mov r3, ip
006c36e4  0c 90 8d e5                                      str sb, [sp, #0xc]
006c36e8  10 a0 8d e5                                      str sl, [sp, #0x10]
006c36ec  08 10 a0 e1                                      mov r1, r8
006c36f0  06 20 a0 e1                                      mov r2, r6
006c36f4  05 00 a0 e1                                      mov r0, r5
006c36f8  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006c36fc  3c ff 2f e1                                      blx ip
006c3700  55 ff ff ea                                      b #0x6c345c
006c3704  00 20 95 e5                                      ldr r2, [r5]
006c3708  38 61 95 e5                                      ldr r6, [r5, #0x138]
006c370c  14 21 92 e5                                      ldr r2, [r2, #0x114]
006c3710  00 30 96 e5                                      ldr r3, [r6]
006c3714  06 00 a0 e1                                      mov r0, r6
006c3718  44 20 8d e5                                      str r2, [sp, #0x44]
006c371c  0f e0 a0 e1                                      mov lr, pc
006c3720  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006c3724  40 00 8d e5                                      str r0, [sp, #0x40]
006c3728  00 30 96 e5                                      ldr r3, [r6]
006c372c  06 00 a0 e1                                      mov r0, r6
006c3730  0f e0 a0 e1                                      mov lr, pc
006c3734  60 f0 93 e5                                      ldr pc, [r3, #0x60]
006c3738  3c 00 8d e5                                      str r0, [sp, #0x3c]
006c373c  00 30 96 e5                                      ldr r3, [r6]
006c3740  06 00 a0 e1                                      mov r0, r6
006c3744  0f e0 a0 e1                                      mov lr, pc
006c3748  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006c374c  38 00 8d e5                                      str r0, [sp, #0x38]
006c3750  00 30 96 e5                                      ldr r3, [r6]
006c3754  06 00 a0 e1                                      mov r0, r6
006c3758  0f e0 a0 e1                                      mov lr, pc
006c375c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
006c3760  00 20 a0 e1                                      mov r2, r0
006c3764  00 30 96 e5                                      ldr r3, [r6]
006c3768  06 00 a0 e1                                      mov r0, r6
006c376c  28 20 8d e5                                      str r2, [sp, #0x28]
006c3770  0f e0 a0 e1                                      mov lr, pc
006c3774  68 f0 93 e5                                      ldr pc, [r3, #0x68]
006c3778  00 30 a0 e1                                      mov r3, r0
006c377c  00 10 96 e5                                      ldr r1, [r6]
006c3780  06 00 a0 e1                                      mov r0, r6
006c3784  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c3788  0f e0 a0 e1                                      mov lr, pc
006c378c  28 f0 91 e5                                      ldr pc, [r1, #0x28]
006c3790  00 10 96 e5                                      ldr r1, [r6]
006c3794  00 b0 a0 e1                                      mov fp, r0
006c3798  06 00 a0 e1                                      mov r0, r6
006c379c  0f e0 a0 e1                                      mov lr, pc
006c37a0  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
006c37a4  00 10 96 e5                                      ldr r1, [r6]
006c37a8  00 90 a0 e1                                      mov sb, r0
006c37ac  06 00 a0 e1                                      mov r0, r6
006c37b0  0f e0 a0 e1                                      mov lr, pc
006c37b4  30 f0 91 e5                                      ldr pc, [r1, #0x30]
006c37b8  00 10 96 e5                                      ldr r1, [r6]
006c37bc  00 a0 a0 e1                                      mov sl, r0
006c37c0  06 00 a0 e1                                      mov r0, r6
006c37c4  0f e0 a0 e1                                      mov lr, pc
006c37c8  34 f0 91 e5                                      ldr pc, [r1, #0x34]
006c37cc  00 10 96 e5                                      ldr r1, [r6]
006c37d0  00 80 a0 e1                                      mov r8, r0
006c37d4  06 00 a0 e1                                      mov r0, r6
006c37d8  0f e0 a0 e1                                      mov lr, pc
006c37dc  38 f0 91 e5                                      ldr pc, [r1, #0x38]
006c37e0  34 00 8d e5                                      str r0, [sp, #0x34]
006c37e4  00 10 96 e5                                      ldr r1, [r6]
006c37e8  06 00 a0 e1                                      mov r0, r6
006c37ec  0f e0 a0 e1                                      mov lr, pc
006c37f0  6c f0 91 e5                                      ldr pc, [r1, #0x6c]
006c37f4  00 c0 a0 e1                                      mov ip, r0
006c37f8  00 10 96 e5                                      ldr r1, [r6]
006c37fc  06 00 a0 e1                                      mov r0, r6
006c3800  30 c0 8d e5                                      str ip, [sp, #0x30]
006c3804  0f e0 a0 e1                                      mov lr, pc
006c3808  70 f0 91 e5                                      ldr pc, [r1, #0x70]
006c380c  00 10 96 e5                                      ldr r1, [r6]
006c3810  00 70 a0 e1                                      mov r7, r0
006c3814  06 00 a0 e1                                      mov r0, r6
006c3818  0f e0 a0 e1                                      mov lr, pc
006c381c  74 f0 91 e5                                      ldr pc, [r1, #0x74]
006c3820  28 20 8d e2                                      add r2, sp, #0x28
006c3824  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
006c3828  04 30 8d e5                                      str r3, [sp, #4]
006c382c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006c3830  00 20 8d e5                                      str r2, [sp]
006c3834  24 00 8d e5                                      str r0, [sp, #0x24]
006c3838  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006c383c  18 30 8d e5                                      str r3, [sp, #0x18]
006c3840  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c3844  40 10 9d e5                                      ldr r1, [sp, #0x40]
006c3848  38 30 9d e5                                      ldr r3, [sp, #0x38]
006c384c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006c3850  08 b0 8d e5                                      str fp, [sp, #8]
006c3854  0c 90 8d e5                                      str sb, [sp, #0xc]
006c3858  10 a0 8d e5                                      str sl, [sp, #0x10]
006c385c  14 80 8d e5                                      str r8, [sp, #0x14]
006c3860  20 70 8d e5                                      str r7, [sp, #0x20]
006c3864  05 00 a0 e1                                      mov r0, r5
006c3868  3c ff 2f e1                                      blx ip
006c386c  00 30 94 e5                                      ldr r3, [r4]
006c3870  00 10 a0 e1                                      mov r1, r0
006c3874  04 00 a0 e1                                      mov r0, r4
006c3878  0f e0 a0 e1                                      mov lr, pc
006c387c  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006c3880  38 31 94 e5                                      ldr r3, [r4, #0x138]
006c3884  00 20 93 e5                                      ldr r2, [r3]
006c3888  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c388c  00 00 83 e0                                      add r0, r3, r0
006c3890  3b 67 f1 eb                                      bl #0x31d584
006c3894  b5 fe ff ea                                      b #0x6c3370
006c3898  38 61 95 e5                                      ldr r6, [r5, #0x138]
006c389c  00 30 96 e5                                      ldr r3, [r6]
006c38a0  06 00 a0 e1                                      mov r0, r6
006c38a4  0f e0 a0 e1                                      mov lr, pc
006c38a8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
006c38ac  00 30 90 e5                                      ldr r3, [r0]
006c38b0  06 00 a0 e1                                      mov r0, r6
006c38b4  00 00 53 e3                                      cmp r3, #0
006c38b8  a0 30 8d e5                                      str r3, [sp, #0xa0]
006c38bc  04 20 93 15                                      ldrne r2, [r3, #4]
006c38c0  01 20 82 12                                      addne r2, r2, #1
006c38c4  04 20 83 15                                      strne r2, [r3, #4]
006c38c8  00 20 95 e5                                      ldr r2, [r5]
006c38cc  00 30 96 e5                                      ldr r3, [r6]
006c38d0  18 21 92 e5                                      ldr r2, [r2, #0x118]
006c38d4  3c 20 8d e5                                      str r2, [sp, #0x3c]
006c38d8  0f e0 a0 e1                                      mov lr, pc
006c38dc  64 f0 93 e5                                      ldr pc, [r3, #0x64]
006c38e0  40 00 8d e5                                      str r0, [sp, #0x40]
006c38e4  00 30 96 e5                                      ldr r3, [r6]
006c38e8  06 00 a0 e1                                      mov r0, r6
006c38ec  0f e0 a0 e1                                      mov lr, pc
006c38f0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c38f4  38 00 8d e5                                      str r0, [sp, #0x38]
006c38f8  00 30 96 e5                                      ldr r3, [r6]
006c38fc  06 00 a0 e1                                      mov r0, r6
006c3900  0f e0 a0 e1                                      mov lr, pc
006c3904  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006c3908  00 20 a0 e1                                      mov r2, r0
006c390c  00 30 96 e5                                      ldr r3, [r6]
006c3910  06 00 a0 e1                                      mov r0, r6
006c3914  28 20 8d e5                                      str r2, [sp, #0x28]
006c3918  0f e0 a0 e1                                      mov lr, pc
006c391c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
006c3920  00 30 a0 e1                                      mov r3, r0
006c3924  00 10 96 e5                                      ldr r1, [r6]
006c3928  06 00 a0 e1                                      mov r0, r6
006c392c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c3930  0f e0 a0 e1                                      mov lr, pc
006c3934  60 f0 91 e5                                      ldr pc, [r1, #0x60]
006c3938  00 10 96 e5                                      ldr r1, [r6]
006c393c  00 b0 a0 e1                                      mov fp, r0
006c3940  06 00 a0 e1                                      mov r0, r6
006c3944  0f e0 a0 e1                                      mov lr, pc
006c3948  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
006c394c  00 10 96 e5                                      ldr r1, [r6]
006c3950  00 90 a0 e1                                      mov sb, r0
006c3954  06 00 a0 e1                                      mov r0, r6
006c3958  0f e0 a0 e1                                      mov lr, pc
006c395c  30 f0 91 e5                                      ldr pc, [r1, #0x30]
006c3960  00 10 96 e5                                      ldr r1, [r6]
006c3964  00 a0 a0 e1                                      mov sl, r0
006c3968  06 00 a0 e1                                      mov r0, r6
006c396c  0f e0 a0 e1                                      mov lr, pc
006c3970  34 f0 91 e5                                      ldr pc, [r1, #0x34]
006c3974  00 10 96 e5                                      ldr r1, [r6]
006c3978  00 80 a0 e1                                      mov r8, r0
006c397c  06 00 a0 e1                                      mov r0, r6
006c3980  0f e0 a0 e1                                      mov lr, pc
006c3984  38 f0 91 e5                                      ldr pc, [r1, #0x38]
006c3988  34 00 8d e5                                      str r0, [sp, #0x34]
006c398c  00 10 96 e5                                      ldr r1, [r6]
006c3990  06 00 a0 e1                                      mov r0, r6
006c3994  0f e0 a0 e1                                      mov lr, pc
006c3998  6c f0 91 e5                                      ldr pc, [r1, #0x6c]
006c399c  00 c0 a0 e1                                      mov ip, r0
006c39a0  00 10 96 e5                                      ldr r1, [r6]
006c39a4  06 00 a0 e1                                      mov r0, r6
006c39a8  30 c0 8d e5                                      str ip, [sp, #0x30]
006c39ac  0f e0 a0 e1                                      mov lr, pc
006c39b0  70 f0 91 e5                                      ldr pc, [r1, #0x70]
006c39b4  00 10 96 e5                                      ldr r1, [r6]
006c39b8  00 70 a0 e1                                      mov r7, r0
006c39bc  06 00 a0 e1                                      mov r0, r6
006c39c0  0f e0 a0 e1                                      mov lr, pc
006c39c4  74 f0 91 e5                                      ldr pc, [r1, #0x74]
006c39c8  28 20 8d e2                                      add r2, sp, #0x28
006c39cc  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
006c39d0  04 30 8d e5                                      str r3, [sp, #4]
006c39d4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006c39d8  00 20 8d e5                                      str r2, [sp]
006c39dc  24 00 8d e5                                      str r0, [sp, #0x24]
006c39e0  40 20 9d e5                                      ldr r2, [sp, #0x40]
006c39e4  18 30 8d e5                                      str r3, [sp, #0x18]
006c39e8  1c c0 8d e5                                      str ip, [sp, #0x1c]
006c39ec  38 30 9d e5                                      ldr r3, [sp, #0x38]
006c39f0  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c39f4  a0 10 8d e2                                      add r1, sp, #0xa0
006c39f8  08 b0 8d e5                                      str fp, [sp, #8]
006c39fc  0c 90 8d e5                                      str sb, [sp, #0xc]
006c3a00  10 a0 8d e5                                      str sl, [sp, #0x10]
006c3a04  14 80 8d e5                                      str r8, [sp, #0x14]
006c3a08  20 70 8d e5                                      str r7, [sp, #0x20]
006c3a0c  05 00 a0 e1                                      mov r0, r5
006c3a10  3c ff 2f e1                                      blx ip
006c3a14  00 30 94 e5                                      ldr r3, [r4]
006c3a18  00 10 a0 e1                                      mov r1, r0
006c3a1c  04 00 a0 e1                                      mov r0, r4
006c3a20  0f e0 a0 e1                                      mov lr, pc
006c3a24  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006c3a28  38 31 94 e5                                      ldr r3, [r4, #0x138]
006c3a2c  00 20 93 e5                                      ldr r2, [r3]
006c3a30  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006c3a34  00 00 83 e0                                      add r0, r3, r0
006c3a38  d1 66 f1 eb                                      bl #0x31d584
006c3a3c  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006c3a40  00 00 50 e3                                      cmp r0, #0
006c3a44  49 fe ff 0a                                      beq #0x6c3370
006c3a48  cd 66 f1 eb                                      bl #0x31d584
006c3a4c  47 fe ff ea                                      b #0x6c3370
006c3a50  00 20 95 e5                                      ldr r2, [r5]
006c3a54  38 61 95 e5                                      ldr r6, [r5, #0x138]
006c3a58  20 21 92 e5                                      ldr r2, [r2, #0x120]
006c3a5c  00 30 96 e5                                      ldr r3, [r6]
006c3a60  06 00 a0 e1                                      mov r0, r6
006c3a64  3c 20 8d e5                                      str r2, [sp, #0x3c]
006c3a68  0f e0 a0 e1                                      mov lr, pc
006c3a6c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
006c3a70  00 c0 a0 e1                                      mov ip, r0
006c3a74  00 30 96 e5                                      ldr r3, [r6]
006c3a78  06 00 a0 e1                                      mov r0, r6
006c3a7c  30 c0 8d e5                                      str ip, [sp, #0x30]
006c3a80  0f e0 a0 e1                                      mov lr, pc
006c3a84  54 f0 93 e5                                      ldr pc, [r3, #0x54]
006c3a88  38 00 8d e5                                      str r0, [sp, #0x38]
006c3a8c  00 30 96 e5                                      ldr r3, [r6]
006c3a90  06 00 a0 e1                                      mov r0, r6
006c3a94  0f e0 a0 e1                                      mov lr, pc
006c3a98  58 f0 93 e5                                      ldr pc, [r3, #0x58]
006c3a9c  34 00 8d e5                                      str r0, [sp, #0x34]
006c3aa0  00 30 96 e5                                      ldr r3, [r6]
006c3aa4  06 00 a0 e1                                      mov r0, r6
006c3aa8  0f e0 a0 e1                                      mov lr, pc
006c3aac  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006c3ab0  00 20 a0 e1                                      mov r2, r0
006c3ab4  00 30 96 e5                                      ldr r3, [r6]
006c3ab8  06 00 a0 e1                                      mov r0, r6
006c3abc  28 20 8d e5                                      str r2, [sp, #0x28]
006c3ac0  0f e0 a0 e1                                      mov lr, pc
006c3ac4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
006c3ac8  00 30 a0 e1                                      mov r3, r0
006c3acc  00 10 96 e5                                      ldr r1, [r6]
006c3ad0  06 00 a0 e1                                      mov r0, r6
006c3ad4  2c 30 8d e5                                      str r3, [sp, #0x2c]
006c3ad8  0f e0 a0 e1                                      mov lr, pc
006c3adc  30 f0 91 e5                                      ldr pc, [r1, #0x30]
006c3ae0  00 10 96 e5                                      ldr r1, [r6]
006c3ae4  00 b0 a0 e1                                      mov fp, r0
006c3ae8  06 00 a0 e1                                      mov r0, r6
006c3aec  0f e0 a0 e1                                      mov lr, pc
006c3af0  34 f0 91 e5                                      ldr pc, [r1, #0x34]
006c3af4  00 10 96 e5                                      ldr r1, [r6]
006c3af8  00 90 a0 e1                                      mov sb, r0
006c3afc  06 00 a0 e1                                      mov r0, r6
006c3b00  0f e0 a0 e1                                      mov lr, pc
006c3b04  38 f0 91 e5                                      ldr pc, [r1, #0x38]
006c3b08  00 10 96 e5                                      ldr r1, [r6]
006c3b0c  00 a0 a0 e1                                      mov sl, r0
006c3b10  06 00 a0 e1                                      mov r0, r6
006c3b14  0f e0 a0 e1                                      mov lr, pc
006c3b18  5c f0 91 e5                                      ldr pc, [r1, #0x5c]
006c3b1c  00 10 96 e5                                      ldr r1, [r6]
006c3b20  00 80 a0 e1                                      mov r8, r0
006c3b24  06 00 a0 e1                                      mov r0, r6
006c3b28  0f e0 a0 e1                                      mov lr, pc
006c3b2c  60 f0 91 e5                                      ldr pc, [r1, #0x60]
006c3b30  00 10 96 e5                                      ldr r1, [r6]
006c3b34  00 70 a0 e1                                      mov r7, r0
006c3b38  06 00 a0 e1                                      mov r0, r6
006c3b3c  0f e0 a0 e1                                      mov lr, pc
006c3b40  64 f0 91 e5                                      ldr pc, [r1, #0x64]
006c3b44  28 20 8d e2                                      add r2, sp, #0x28
006c3b48  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
006c3b4c  00 20 8d e5                                      str r2, [sp]
006c3b50  1c 00 8d e5                                      str r0, [sp, #0x1c]
006c3b54  04 30 8d e5                                      str r3, [sp, #4]
006c3b58  0c 10 a0 e1                                      mov r1, ip
006c3b5c  08 b0 8d e5                                      str fp, [sp, #8]
006c3b60  0c 90 8d e5                                      str sb, [sp, #0xc]
006c3b64  10 a0 8d e5                                      str sl, [sp, #0x10]
006c3b68  14 80 8d e5                                      str r8, [sp, #0x14]
006c3b6c  18 70 8d e5                                      str r7, [sp, #0x18]
006c3b70  38 20 9d e5                                      ldr r2, [sp, #0x38]
006c3b74  34 30 9d e5                                      ldr r3, [sp, #0x34]
006c3b78  05 00 a0 e1                                      mov r0, r5
006c3b7c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c3b80  3c ff 2f e1                                      blx ip
006c3b84  34 fe ff ea                                      b #0x6c345c

; FUNCTION 0x006c3b88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch5scene24CParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c3b88  00 30 90 e5                                      ldr r3, [r0]
006c3b8c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006c3b90  03 00 80 e0                                      add r0, r0, r3
006c3b94  91 f8 ff ea                                      b #0x6c1de0

; FUNCTION 0x006c3b98, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch5scene24CParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c3b98  00 30 90 e5                                      ldr r3, [r0]
006c3b9c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c3ba0  03 00 80 e0                                      add r0, r0, r3
006c3ba4  8d f8 ff ea                                      b #0x6c1de0

; FUNCTION 0x006c3ba8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch5scene24CParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c3ba8  00 30 90 e5                                      ldr r3, [r0]
006c3bac  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006c3bb0  03 00 80 e0                                      add r0, r0, r3
006c3bb4  4c f8 ff ea                                      b #0x6c1cec

; FUNCTION 0x006c3bb8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch5scene24CParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006c3bb8  00 30 90 e5                                      ldr r3, [r0]
006c3bbc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c3bc0  03 00 80 e0                                      add r0, r0, r3
006c3bc4  48 f8 ff ea                                      b #0x6c1cec

; FUNCTION 0x006c3bc8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZTv0_n20_N6glitch5scene24CParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006c3bc8  00 30 90 e5                                      ldr r3, [r0]
006c3bcc  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006c3bd0  03 00 80 e0                                      add r0, r0, r3
006c3bd4  ed f6 ff ea                                      b #0x6c1790

; FUNCTION 0x006c3bd8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CParticleSystemSceneNode
; alias: _ZTv0_n16_NK6glitch5scene24CParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006c3bd8  00 30 90 e5                                      ldr r3, [r0]
006c3bdc  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006c3be0  03 00 80 e0                                      add r0, r0, r3
006c3be4  5a f6 ff ea                                      b #0x6c1554
