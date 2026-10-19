; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065adc4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZNK6glitch7collada14CRootSceneNode6getUIDEv
; demangled: glitch::collada::CRootSceneNode::getUID() const
; decoder-mode: arm
0065adc4  4c 01 90 e5                                      ldr r0, [r0, #0x14c]
0065adc8  00 00 50 e3                                      cmp r0, #0
0065adcc  20 00 90 15                                      ldrne r0, [r0, #0x20]
0065add0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065add4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode14removeMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
; demangled: glitch::collada::CRootSceneNode::removeMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
0065add4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065add8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZNK6glitch7collada14CRootSceneNode11getMaterialEj
; demangled: glitch::collada::CRootSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
0065add8  00 00 52 e3                                      cmp r2, #0
0065addc  78 31 b1 e5                                      ldr r3, [r1, #0x178]!
0065ade0  08 00 00 1a                                      bne #0x65ae08
0065ade4  01 00 53 e1                                      cmp r3, r1
0065ade8  0f 00 00 0a                                      beq #0x65ae2c
0065adec  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0065adf0  00 00 53 e3                                      cmp r3, #0
0065adf4  00 30 80 e5                                      str r3, [r0]
0065adf8  00 20 93 15                                      ldrne r2, [r3]
0065adfc  01 20 82 12                                      addne r2, r2, #1
0065ae00  00 20 83 15                                      strne r2, [r3]
0065ae04  1e ff 2f e1                                      bx lr
0065ae08  01 00 53 e1                                      cmp r3, r1
0065ae0c  01 20 42 12                                      subne r2, r2, #1
0065ae10  05 00 00 0a                                      beq #0x65ae2c
0065ae14  00 00 52 e3                                      cmp r2, #0
0065ae18  00 30 93 e5                                      ldr r3, [r3]
0065ae1c  f0 ff ff 0a                                      beq #0x65ade4
0065ae20  03 00 51 e1                                      cmp r1, r3
0065ae24  01 20 42 e2                                      sub r2, r2, #1
0065ae28  f9 ff ff 1a                                      bne #0x65ae14
0065ae2c  00 30 a0 e3                                      mov r3, #0
0065ae30  00 30 80 e5                                      str r3, [r0]
0065ae34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065ae38, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZNK6glitch7collada14CRootSceneNode16getMaterialCountEv
; demangled: glitch::collada::CRootSceneNode::getMaterialCount() const
; decoder-mode: arm
0065ae38  78 31 b0 e5                                      ldr r3, [r0, #0x178]!
0065ae3c  00 00 53 e1                                      cmp r3, r0
0065ae40  00 00 a0 03                                      moveq r0, #0
0065ae44  1e ff 2f 01                                      bxeq lr
0065ae48  00 20 a0 e3                                      mov r2, #0
0065ae4c  00 30 93 e5                                      ldr r3, [r3]
0065ae50  01 20 82 e2                                      add r2, r2, #1
0065ae54  03 00 50 e1                                      cmp r0, r3
0065ae58  fb ff ff 1a                                      bne #0x65ae4c
0065ae5c  02 00 a0 e1                                      mov r0, r2
0065ae60  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065ae64, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZNK6glitch7collada14CRootSceneNode7getTypeEv
; demangled: glitch::collada::CRootSceneNode::getType() const
; decoder-mode: arm
0065ae64  64 01 06 e3                                      movw r0, #0x6164
0065ae68  65 02 47 e3                                      movt r0, #0x7265
0065ae6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065ae70, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode21attachParticleSystemsEv
; demangled: glitch::collada::CRootSceneNode::attachParticleSystems()
; decoder-mode: arm
0065ae70  70 40 2d e9                                      push {r4, r5, r6, lr}
0065ae74  00 50 a0 e1                                      mov r5, r0
0065ae78  00 60 a0 e1                                      mov r6, r0
0065ae7c  58 41 b5 e5                                      ldr r4, [r5, #0x158]!
0065ae80  06 00 00 ea                                      b #0x65aea0
0065ae84  08 30 94 e5                                      ldr r3, [r4, #8]
0065ae88  06 10 a0 e1                                      mov r1, r6
0065ae8c  03 00 a0 e1                                      mov r0, r3
0065ae90  00 30 93 e5                                      ldr r3, [r3]
0065ae94  0f e0 a0 e1                                      mov lr, pc
0065ae98  08 f1 93 e5                                      ldr pc, [r3, #0x108]
0065ae9c  00 40 94 e5                                      ldr r4, [r4]
0065aea0  04 00 55 e1                                      cmp r5, r4
0065aea4  f6 ff ff 1a                                      bne #0x65ae84
0065aea8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065aecc, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZNK6glitch7collada14CRootSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CRootSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0065aecc  70 40 2d e9                                      push {r4, r5, r6, lr}
0065aed0  00 50 a0 e1                                      mov r5, r0
0065aed4  01 40 a0 e1                                      mov r4, r1
0065aed8  f1 f0 fc eb                                      bl #0x5972a4
0065aedc  4c 21 95 e5                                      ldr r2, [r5, #0x14c]
0065aee0  00 30 94 e5                                      ldr r3, [r4]
0065aee4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0065aee8  00 00 52 e3                                      cmp r2, #0
0065aeec  7c c0 93 e5                                      ldr ip, [r3, #0x7c]
0065aef0  20 20 92 15                                      ldrne r2, [r2, #0x20]
0065aef4  04 00 a0 e1                                      mov r0, r4
0065aef8  01 10 8f e0                                      add r1, pc, r1
0065aefc  00 30 a0 e3                                      mov r3, #0
0065af00  3c ff 2f e1                                      blx ip
0065af04  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0065af08  f0 a8 28 00                                      .byte 0xf0, 0xa8, 0x28, 0x00

; FUNCTION 0x0065af0c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CRootSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0065af0c  51 f4 fc ea                                      b #0x598058

; FUNCTION 0x0065af10, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode9onAnimateEj
; demangled: glitch::collada::CRootSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
0065af10  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
0065af14  70 40 2d e9                                      push {r4, r5, r6, lr}
0065af18  01 00 53 e3                                      cmp r3, #1
0065af1c  00 40 a0 e1                                      mov r4, r0
0065af20  01 50 a0 e1                                      mov r5, r1
0065af24  05 00 00 0a                                      beq #0x65af40
0065af28  00 30 90 e5                                      ldr r3, [r0]
0065af2c  00 10 a0 e3                                      mov r1, #0
0065af30  0f e0 a0 e1                                      mov lr, pc
0065af34  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0065af38  b0 51 84 e5                                      str r5, [r4, #0x1b0]
0065af3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065af40  89 ef fc eb                                      bl #0x596d6c
0065af44  b0 51 84 e5                                      str r5, [r4, #0x1b0]
0065af48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b000, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode18removeMorphingMeshEPNS0_13CMorphingMeshE
; demangled: glitch::collada::CRootSceneNode::removeMorphingMesh(glitch::collada::CMorphingMesh*)
; decoder-mode: arm
0065b000  68 c1 b0 e5                                      ldr ip, [r0, #0x168]!
0065b004  03 00 00 ea                                      b #0x65b018
0065b008  08 30 9c e5                                      ldr r3, [ip, #8]
0065b00c  01 00 53 e1                                      cmp r3, r1
0065b010  03 00 00 0a                                      beq #0x65b024
0065b014  00 c0 9c e5                                      ldr ip, [ip]
0065b018  0c 00 50 e1                                      cmp r0, ip
0065b01c  f9 ff ff 1a                                      bne #0x65b008
0065b020  1e ff 2f e1                                      bx lr
0065b024  00 30 9c e5                                      ldr r3, [ip]
0065b028  04 20 9c e5                                      ldr r2, [ip, #4]
0065b02c  0c 00 a0 e1                                      mov r0, ip
0065b030  00 30 82 e5                                      str r3, [r2]
0065b034  04 20 83 e5                                      str r2, [r3, #4]
0065b038  04 d5 f2 ea                                      b #0x310450

; FUNCTION 0x0065b08c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode15addURLToResolveERKN5boost13intrusive_ptrINS_5video17CMaterialRendererEEEtjRKNS_3res6StringE
; demangled: glitch::collada::CRootSceneNode::addURLToResolve(boost::intrusive_ptr<glitch::video::CMaterialRenderer> const&, unsigned short, unsigned int, glitch::res::String const&)
; decoder-mode: arm
0065b08c  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b090  18 d0 4d e2                                      sub sp, sp, #0x18
0065b094  00 c0 91 e5                                      ldr ip, [r1]
0065b098  28 10 9d e5                                      ldr r1, [sp, #0x28]
0065b09c  00 60 a0 e1                                      mov r6, r0
0065b0a0  1c 00 a0 e3                                      mov r0, #0x1c
0065b0a4  00 40 91 e5                                      ldr r4, [r1]
0065b0a8  00 10 a0 e3                                      mov r1, #0
0065b0ac  b0 21 cd e1                                      strh r2, [sp, #0x10]
0065b0b0  14 30 8d e5                                      str r3, [sp, #0x14]
0065b0b4  0c c0 8d e5                                      str ip, [sp, #0xc]
0065b0b8  2a d5 f2 eb                                      bl #0x310568
0065b0bc  01 30 a0 e3                                      mov r3, #1
0065b0c0  18 00 8d e9                                      stmib sp, {r3, r4}
0065b0c4  08 c0 80 e2                                      add ip, r0, #8
0065b0c8  04 40 8d e2                                      add r4, sp, #4
0065b0cc  00 50 a0 e1                                      mov r5, r0
0065b0d0  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0065b0d4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0065b0d8  00 30 94 e5                                      ldr r3, [r4]
0065b0dc  6d 2f 86 e2                                      add r2, r6, #0x1b4
0065b0e0  00 30 8c e5                                      str r3, [ip]
0065b0e4  b8 31 96 e5                                      ldr r3, [r6, #0x1b8]
0065b0e8  0c 00 85 e8                                      stm r5, {r2, r3}
0065b0ec  00 50 83 e5                                      str r5, [r3]
0065b0f0  b8 51 86 e5                                      str r5, [r6, #0x1b8]
0065b0f4  18 d0 8d e2                                      add sp, sp, #0x18
0065b0f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b0fc, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode15addURLToResolveERKN5boost13intrusive_ptrINS_5video9CMaterialEEEtjRKNS_3res6StringE
; demangled: glitch::collada::CRootSceneNode::addURLToResolve(boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned short, unsigned int, glitch::res::String const&)
; decoder-mode: arm
0065b0fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b100  18 d0 4d e2                                      sub sp, sp, #0x18
0065b104  00 c0 91 e5                                      ldr ip, [r1]
0065b108  28 10 9d e5                                      ldr r1, [sp, #0x28]
0065b10c  00 60 a0 e1                                      mov r6, r0
0065b110  1c 00 a0 e3                                      mov r0, #0x1c
0065b114  00 40 91 e5                                      ldr r4, [r1]
0065b118  00 10 a0 e3                                      mov r1, #0
0065b11c  b0 21 cd e1                                      strh r2, [sp, #0x10]
0065b120  14 30 8d e5                                      str r3, [sp, #0x14]
0065b124  0c c0 8d e5                                      str ip, [sp, #0xc]
0065b128  0e d5 f2 eb                                      bl #0x310568
0065b12c  00 30 a0 e3                                      mov r3, #0
0065b130  18 00 8d e9                                      stmib sp, {r3, r4}
0065b134  08 c0 80 e2                                      add ip, r0, #8
0065b138  04 40 8d e2                                      add r4, sp, #4
0065b13c  00 50 a0 e1                                      mov r5, r0
0065b140  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0065b144  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0065b148  00 30 94 e5                                      ldr r3, [r4]
0065b14c  6d 2f 86 e2                                      add r2, r6, #0x1b4
0065b150  00 30 8c e5                                      str r3, [ip]
0065b154  b8 31 96 e5                                      ldr r3, [r6, #0x1b8]
0065b158  0c 00 85 e8                                      stm r5, {r2, r3}
0065b15c  00 50 83 e5                                      str r5, [r3]
0065b160  b8 51 86 e5                                      str r5, [r6, #0x1b8]
0065b164  18 d0 8d e2                                      add sp, sp, #0x18
0065b168  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b210, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode17addParticleSystemEPNS0_24IParticleSystemSceneNodeE
; demangled: glitch::collada::CRootSceneNode::addParticleSystem(glitch::collada::IParticleSystemSceneNode*)
; decoder-mode: arm
0065b210  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b214  00 40 a0 e1                                      mov r4, r0
0065b218  01 50 a0 e1                                      mov r5, r1
0065b21c  0c 00 a0 e3                                      mov r0, #0xc
0065b220  00 10 a0 e3                                      mov r1, #0
0065b224  cf d4 f2 eb                                      bl #0x310568
0065b228  08 50 80 e5                                      str r5, [r0, #8]
0065b22c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0065b230  56 2f 84 e2                                      add r2, r4, #0x158
0065b234  0c 00 80 e8                                      stm r0, {r2, r3}
0065b238  00 00 83 e5                                      str r0, [r3]
0065b23c  5c 01 84 e5                                      str r0, [r4, #0x15c]
0065b240  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b244, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode8addLightEPNS0_15CLightSceneNodeE
; demangled: glitch::collada::CRootSceneNode::addLight(glitch::collada::CLightSceneNode*)
; decoder-mode: arm
0065b244  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b248  00 40 a0 e1                                      mov r4, r0
0065b24c  01 50 a0 e1                                      mov r5, r1
0065b250  0c 00 a0 e3                                      mov r0, #0xc
0065b254  00 10 a0 e3                                      mov r1, #0
0065b258  c2 d4 f2 eb                                      bl #0x310568
0065b25c  08 50 80 e5                                      str r5, [r0, #8]
0065b260  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0065b264  62 2f 84 e2                                      add r2, r4, #0x188
0065b268  0c 00 80 e8                                      stm r0, {r2, r3}
0065b26c  00 00 83 e5                                      str r0, [r3]
0065b270  8c 01 84 e5                                      str r0, [r4, #0x18c]
0065b274  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b278, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode15addMorphingMeshEPNS0_13CMorphingMeshE
; demangled: glitch::collada::CRootSceneNode::addMorphingMesh(glitch::collada::CMorphingMesh*)
; decoder-mode: arm
0065b278  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b27c  00 40 a0 e1                                      mov r4, r0
0065b280  01 50 a0 e1                                      mov r5, r1
0065b284  0c 00 a0 e3                                      mov r0, #0xc
0065b288  00 10 a0 e3                                      mov r1, #0
0065b28c  b5 d4 f2 eb                                      bl #0x310568
0065b290  08 50 80 e5                                      str r5, [r0, #8]
0065b294  6c 31 94 e5                                      ldr r3, [r4, #0x16c]
0065b298  5a 2f 84 e2                                      add r2, r4, #0x168
0065b29c  0c 00 80 e8                                      stm r0, {r2, r3}
0065b2a0  00 00 83 e5                                      str r0, [r3]
0065b2a4  6c 01 84 e5                                      str r0, [r4, #0x16c]
0065b2a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b2ac, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode9addCameraEPNS0_16CCameraSceneNodeE
; demangled: glitch::collada::CRootSceneNode::addCamera(glitch::collada::CCameraSceneNode*)
; decoder-mode: arm
0065b2ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b2b0  00 40 a0 e1                                      mov r4, r0
0065b2b4  01 50 a0 e1                                      mov r5, r1
0065b2b8  0c 00 a0 e3                                      mov r0, #0xc
0065b2bc  00 10 a0 e3                                      mov r1, #0
0065b2c0  a8 d4 f2 eb                                      bl #0x310568
0065b2c4  08 50 80 e5                                      str r5, [r0, #8]
0065b2c8  74 31 94 e5                                      ldr r3, [r4, #0x174]
0065b2cc  17 2e 84 e2                                      add r2, r4, #0x170
0065b2d0  0c 00 80 e8                                      stm r0, {r2, r3}
0065b2d4  00 00 83 e5                                      str r0, [r3]
0065b2d8  74 01 84 e5                                      str r0, [r4, #0x174]
0065b2dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b350, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode13attachCamerasEv
; demangled: glitch::collada::CRootSceneNode::attachCameras()
; decoder-mode: arm
0065b350  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b354  00 50 a0 e1                                      mov r5, r0
0065b358  00 60 a0 e1                                      mov r6, r0
0065b35c  70 41 b5 e5                                      ldr r4, [r5, #0x170]!
0065b360  03 00 00 ea                                      b #0x65b374
0065b364  08 00 94 e5                                      ldr r0, [r4, #8]
0065b368  06 10 a0 e1                                      mov r1, r6
0065b36c  db ff ff eb                                      bl #0x65b2e0
0065b370  00 40 94 e5                                      ldr r4, [r4]
0065b374  04 00 55 e1                                      cmp r5, r4
0065b378  f9 ff ff 1a                                      bne #0x65b364
0065b37c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b380, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode10attachSkinEv
; demangled: glitch::collada::CRootSceneNode::attachSkin()
; decoder-mode: arm
0065b380  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b384  00 50 a0 e1                                      mov r5, r0
0065b388  00 60 a0 e1                                      mov r6, r0
0065b38c  60 41 b5 e5                                      ldr r4, [r5, #0x160]!
0065b390  03 00 00 ea                                      b #0x65b3a4
0065b394  08 00 94 e5                                      ldr r0, [r4, #8]
0065b398  06 10 a0 e1                                      mov r1, r6
0065b39c  65 20 00 eb                                      bl #0x663538
0065b3a0  00 40 94 e5                                      ldr r4, [r4]
0065b3a4  04 00 55 e1                                      cmp r5, r4
0065b3a8  f9 ff ff 1a                                      bne #0x65b394
0065b3ac  60 01 96 e5                                      ldr r0, [r6, #0x160]
0065b3b0  00 00 55 e1                                      cmp r5, r0
0065b3b4  01 00 00 1a                                      bne #0x65b3c0
0065b3b8  04 00 00 ea                                      b #0x65b3d0
0065b3bc  04 00 a0 e1                                      mov r0, r4
0065b3c0  00 40 90 e5                                      ldr r4, [r0]
0065b3c4  21 d4 f2 eb                                      bl #0x310450
0065b3c8  04 00 55 e1                                      cmp r5, r4
0065b3cc  fa ff ff 1a                                      bne #0x65b3bc
0065b3d0  64 51 86 e5                                      str r5, [r6, #0x164]
0065b3d4  60 51 86 e5                                      str r5, [r6, #0x160]
0065b3d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b3dc, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode10onPostLoadEv
; demangled: glitch::collada::CRootSceneNode::onPostLoad()
; decoder-mode: arm
0065b3dc  10 40 2d e9                                      push {r4, lr}
0065b3e0  00 40 a0 e1                                      mov r4, r0
0065b3e4  e5 ff ff eb                                      bl #0x65b380
0065b3e8  04 00 a0 e1                                      mov r0, r4
0065b3ec  d7 ff ff eb                                      bl #0x65b350
0065b3f0  04 00 a0 e1                                      mov r0, r4
0065b3f4  9d fe ff eb                                      bl #0x65ae70
0065b3f8  04 00 a0 e1                                      mov r0, r4
0065b3fc  01 10 a0 e3                                      mov r1, #1
0065b400  00 30 94 e5                                      ldr r3, [r4]
0065b404  0f e0 a0 e1                                      mov lr, pc
0065b408  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0065b40c  00 30 94 e5                                      ldr r3, [r4]
0065b410  04 00 a0 e1                                      mov r0, r4
0065b414  0f e0 a0 e1                                      mov lr, pc
0065b418  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0065b41c  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
0065b420  01 20 a0 e3                                      mov r2, #1
0065b424  a8 21 c4 e5                                      strb r2, [r4, #0x1a8]
0065b428  01 3c 83 e3                                      orr r3, r3, #0x100
0065b42c  1c 31 84 e5                                      str r3, [r4, #0x11c]
0065b430  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065b434, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode10attachSkinEPNS0_12CSkinnedMeshE
; demangled: glitch::collada::CRootSceneNode::attachSkin(glitch::collada::CSkinnedMesh*)
; decoder-mode: arm
0065b434  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b438  a8 31 d0 e5                                      ldrb r3, [r0, #0x1a8]
0065b43c  00 40 a0 e1                                      mov r4, r0
0065b440  01 50 a0 e1                                      mov r5, r1
0065b444  00 00 53 e3                                      cmp r3, #0
0065b448  09 00 00 1a                                      bne #0x65b474
0065b44c  03 10 a0 e1                                      mov r1, r3
0065b450  0c 00 a0 e3                                      mov r0, #0xc
0065b454  43 d4 f2 eb                                      bl #0x310568
0065b458  08 50 80 e5                                      str r5, [r0, #8]
0065b45c  64 31 94 e5                                      ldr r3, [r4, #0x164]
0065b460  16 2e 84 e2                                      add r2, r4, #0x160
0065b464  0c 00 80 e8                                      stm r0, {r2, r3}
0065b468  00 00 83 e5                                      str r0, [r3]
0065b46c  64 01 84 e5                                      str r0, [r4, #0x164]
0065b470  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065b474  01 00 a0 e1                                      mov r0, r1
0065b478  04 10 a0 e1                                      mov r1, r4
0065b47c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0065b480  2c 20 00 ea                                      b #0x663538

; FUNCTION 0x0065b484, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode19onRegisterSceneNodeEv
; demangled: glitch::collada::CRootSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0065b484  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b488  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
0065b48c  00 40 a0 e1                                      mov r4, r0
0065b490  00 00 53 e3                                      cmp r3, #0
0065b494  05 00 00 1a                                      bne #0x65b4b0
0065b498  18 31 90 e5                                      ldr r3, [r0, #0x118]
0065b49c  00 00 53 e3                                      cmp r3, #0
0065b4a0  04 00 00 0a                                      beq #0x65b4b8
0065b4a4  04 00 a0 e1                                      mov r0, r4
0065b4a8  b0 11 94 e5                                      ldr r1, [r4, #0x1b0]
0065b4ac  2e ee fc eb                                      bl #0x596d6c
0065b4b0  01 00 a0 e3                                      mov r0, #1
0065b4b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065b4b8  00 30 90 e5                                      ldr r3, [r0]
0065b4bc  10 51 90 e5                                      ldr r5, [r0, #0x110]
0065b4c0  0f e0 a0 e1                                      mov lr, pc
0065b4c4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0065b4c8  02 20 a0 e3                                      mov r2, #2
0065b4cc  00 10 a0 e1                                      mov r1, r0
0065b4d0  05 00 a0 e1                                      mov r0, r5
0065b4d4  62 c5 fc eb                                      bl #0x58ca64
0065b4d8  00 00 50 e3                                      cmp r0, #0
0065b4dc  f3 ff ff 1a                                      bne #0x65b4b0
0065b4e0  ef ff ff ea                                      b #0x65b4a4

; FUNCTION 0x0065b4e4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode17getParticleSystemEPKc
; demangled: glitch::collada::CRootSceneNode::getParticleSystem(char const*)
; decoder-mode: arm
0065b4e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b4e8  00 50 a0 e1                                      mov r5, r0
0065b4ec  01 60 a0 e1                                      mov r6, r1
0065b4f0  58 41 b5 e5                                      ldr r4, [r5, #0x158]!
0065b4f4  09 00 00 ea                                      b #0x65b520
0065b4f8  08 30 94 e5                                      ldr r3, [r4, #8]
0065b4fc  03 00 a0 e1                                      mov r0, r3
0065b500  00 30 93 e5                                      ldr r3, [r3]
0065b504  0f e0 a0 e1                                      mov lr, pc
0065b508  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0065b50c  06 10 a0 e1                                      mov r1, r6
0065b510  74 cc f2 eb                                      bl #0x30e6e8
0065b514  00 00 50 e3                                      cmp r0, #0
0065b518  04 00 00 0a                                      beq #0x65b530
0065b51c  00 40 94 e5                                      ldr r4, [r4]
0065b520  04 00 55 e1                                      cmp r5, r4
0065b524  f3 ff ff 1a                                      bne #0x65b4f8
0065b528  00 00 a0 e3                                      mov r0, #0
0065b52c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065b530  08 00 94 e5                                      ldr r0, [r4, #8]
0065b534  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b538, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZNK6glitch7collada14CRootSceneNode11hasMaterialEPKc
; demangled: glitch::collada::CRootSceneNode::hasMaterial(char const*) const
; decoder-mode: arm
0065b538  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065b53c  01 50 a0 e1                                      mov r5, r1
0065b540  78 41 b5 e5                                      ldr r4, [r5, #0x178]!
0065b544  00 60 a0 e1                                      mov r6, r0
0065b548  02 70 a0 e1                                      mov r7, r2
0065b54c  05 00 54 e1                                      cmp r4, r5
0065b550  03 00 00 1a                                      bne #0x65b564
0065b554  11 00 00 ea                                      b #0x65b5a0
0065b558  00 40 94 e5                                      ldr r4, [r4]
0065b55c  04 00 55 e1                                      cmp r5, r4
0065b560  0e 00 00 0a                                      beq #0x65b5a0
0065b564  08 30 94 e5                                      ldr r3, [r4, #8]
0065b568  07 10 a0 e1                                      mov r1, r7
0065b56c  00 00 93 e5                                      ldr r0, [r3]
0065b570  69 cb f2 eb                                      bl #0x30e31c
0065b574  00 00 50 e3                                      cmp r0, #0
0065b578  f6 ff ff 1a                                      bne #0x65b558
0065b57c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0065b580  00 00 53 e3                                      cmp r3, #0
0065b584  00 30 86 e5                                      str r3, [r6]
0065b588  06 00 00 0a                                      beq #0x65b5a8
0065b58c  00 20 93 e5                                      ldr r2, [r3]
0065b590  06 00 a0 e1                                      mov r0, r6
0065b594  01 20 82 e2                                      add r2, r2, #1
0065b598  00 20 83 e5                                      str r2, [r3]
0065b59c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065b5a0  00 30 a0 e3                                      mov r3, #0
0065b5a4  00 30 86 e5                                      str r3, [r6]
0065b5a8  06 00 a0 e1                                      mov r0, r6
0065b5ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065b5b0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode15getMorphingMeshEPKc
; demangled: glitch::collada::CRootSceneNode::getMorphingMesh(char const*)
; decoder-mode: arm
0065b5b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065b5b4  00 60 a0 e1                                      mov r6, r0
0065b5b8  01 70 a0 e1                                      mov r7, r1
0065b5bc  68 41 b6 e5                                      ldr r4, [r6, #0x168]!
0065b5c0  05 00 00 ea                                      b #0x65b5dc
0065b5c4  08 50 94 e5                                      ldr r5, [r4, #8]
0065b5c8  08 00 95 e5                                      ldr r0, [r5, #8]
0065b5cc  52 cb f2 eb                                      bl #0x30e31c
0065b5d0  00 00 50 e3                                      cmp r0, #0
0065b5d4  04 00 00 0a                                      beq #0x65b5ec
0065b5d8  00 40 94 e5                                      ldr r4, [r4]
0065b5dc  04 00 56 e1                                      cmp r6, r4
0065b5e0  07 10 a0 e1                                      mov r1, r7
0065b5e4  f6 ff ff 1a                                      bne #0x65b5c4
0065b5e8  00 50 a0 e3                                      mov r5, #0
0065b5ec  05 00 a0 e1                                      mov r0, r5
0065b5f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065b5f4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode8getLightEPKc
; demangled: glitch::collada::CRootSceneNode::getLight(char const*)
; decoder-mode: arm
0065b5f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b5f8  00 50 a0 e1                                      mov r5, r0
0065b5fc  01 60 a0 e1                                      mov r6, r1
0065b600  88 41 b5 e5                                      ldr r4, [r5, #0x188]!
0065b604  09 00 00 ea                                      b #0x65b630
0065b608  08 30 94 e5                                      ldr r3, [r4, #8]
0065b60c  03 00 a0 e1                                      mov r0, r3
0065b610  00 30 93 e5                                      ldr r3, [r3]
0065b614  0f e0 a0 e1                                      mov lr, pc
0065b618  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0065b61c  06 10 a0 e1                                      mov r1, r6
0065b620  3d cb f2 eb                                      bl #0x30e31c
0065b624  00 00 50 e3                                      cmp r0, #0
0065b628  04 00 00 0a                                      beq #0x65b640
0065b62c  00 40 94 e5                                      ldr r4, [r4]
0065b630  04 00 55 e1                                      cmp r5, r4
0065b634  f3 ff ff 1a                                      bne #0x65b608
0065b638  00 00 a0 e3                                      mov r0, #0
0065b63c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065b640  08 00 94 e5                                      ldr r0, [r4, #8]
0065b644  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065b648, declared_size=236, range_size=236, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode8getImageEPKc
; demangled: glitch::collada::CRootSceneNode::getImage(char const*)
; decoder-mode: arm
0065b648  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0065b64c  01 70 a0 e1                                      mov r7, r1
0065b650  0c d0 4d e2                                      sub sp, sp, #0xc
0065b654  01 50 a0 e1                                      mov r5, r1
0065b658  00 60 a0 e1                                      mov r6, r0
0065b65c  02 a0 a0 e1                                      mov sl, r2
0065b660  80 41 b7 e5                                      ldr r4, [r7, #0x180]!
0065b664  05 00 00 ea                                      b #0x65b680
0065b668  08 80 94 e5                                      ldr r8, [r4, #8]
0065b66c  08 00 98 e5                                      ldr r0, [r8, #8]
0065b670  29 cb f2 eb                                      bl #0x30e31c
0065b674  00 00 50 e3                                      cmp r0, #0
0065b678  28 00 00 0a                                      beq #0x65b720
0065b67c  00 40 94 e5                                      ldr r4, [r4]
0065b680  07 00 54 e1                                      cmp r4, r7
0065b684  0a 10 a0 e1                                      mov r1, sl
0065b688  f6 ff ff 1a                                      bne #0x65b668
0065b68c  00 30 a0 e3                                      mov r3, #0
0065b690  0a 20 a0 e1                                      mov r2, sl
0065b694  04 00 8d e2                                      add r0, sp, #4
0065b698  53 1f 85 e2                                      add r1, r5, #0x14c
0065b69c  c4 fe fe eb                                      bl #0x61b1b4
0065b6a0  04 30 9d e5                                      ldr r3, [sp, #4]
0065b6a4  00 00 53 e3                                      cmp r3, #0
0065b6a8  00 30 86 05                                      streq r3, [r6]
0065b6ac  18 00 00 0a                                      beq #0x65b714
0065b6b0  0c 00 a0 e3                                      mov r0, #0xc
0065b6b4  00 10 a0 e3                                      mov r1, #0
0065b6b8  aa d3 f2 eb                                      bl #0x310568
0065b6bc  04 30 9d e5                                      ldr r3, [sp, #4]
0065b6c0  08 30 80 e5                                      str r3, [r0, #8]
0065b6c4  00 00 53 e3                                      cmp r3, #0
0065b6c8  04 20 93 15                                      ldrne r2, [r3, #4]
0065b6cc  01 20 82 12                                      addne r2, r2, #1
0065b6d0  04 20 83 15                                      strne r2, [r3, #4]
0065b6d4  84 31 95 e5                                      ldr r3, [r5, #0x184]
0065b6d8  00 40 80 e5                                      str r4, [r0]
0065b6dc  04 30 80 e5                                      str r3, [r0, #4]
0065b6e0  00 00 83 e5                                      str r0, [r3]
0065b6e4  04 30 9d e5                                      ldr r3, [sp, #4]
0065b6e8  84 01 85 e5                                      str r0, [r5, #0x184]
0065b6ec  00 00 53 e3                                      cmp r3, #0
0065b6f0  00 30 86 e5                                      str r3, [r6]
0065b6f4  04 20 93 15                                      ldrne r2, [r3, #4]
0065b6f8  01 20 82 12                                      addne r2, r2, #1
0065b6fc  04 20 83 15                                      strne r2, [r3, #4]
0065b700  04 30 9d 15                                      ldrne r3, [sp, #4]
0065b704  00 00 53 e3                                      cmp r3, #0
0065b708  01 00 00 0a                                      beq #0x65b714
0065b70c  03 00 a0 e1                                      mov r0, r3
0065b710  9b 07 f3 eb                                      bl #0x31d584
0065b714  06 00 a0 e1                                      mov r0, r6
0065b718  0c d0 8d e2                                      add sp, sp, #0xc
0065b71c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0065b720  00 80 86 e5                                      str r8, [r6]
0065b724  04 30 98 e5                                      ldr r3, [r8, #4]
0065b728  01 30 83 e2                                      add r3, r3, #1
0065b72c  04 30 88 e5                                      str r3, [r8, #4]
0065b730  f7 ff ff ea                                      b #0x65b714

; FUNCTION 0x0065b734, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNodeC1ERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CRootSceneNode::CRootSceneNode(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0065b734  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065b738  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
0065b73c  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0065b740  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0065b744  05 50 8f e0                                      add r5, pc, r5
0065b748  03 30 95 e7                                      ldr r3, [r5, r3]
0065b74c  02 20 95 e7                                      ldr r2, [r5, r2]
0065b750  01 60 a0 e3                                      mov r6, #1
0065b754  30 c0 93 e5                                      ldr ip, [r3, #0x30]
0065b758  08 20 82 e2                                      add r2, r2, #8
0065b75c  bc 21 80 e5                                      str r2, [r0, #0x1bc]
0065b760  c0 61 80 e5                                      str r6, [r0, #0x1c0]
0065b764  00 c0 80 e5                                      str ip, [r0]
0065b768  34 e0 93 e5                                      ldr lr, [r3, #0x34]
0065b76c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0065b770  01 20 a0 e1                                      mov r2, r1
0065b774  04 10 83 e2                                      add r1, r3, #4
0065b778  0c e0 80 e7                                      str lr, [r0, ip]
0065b77c  00 30 a0 e3                                      mov r3, #0
0065b780  00 40 a0 e1                                      mov r4, r0
0065b784  ca 06 00 eb                                      bl #0x65d2b4
0065b788  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0065b78c  00 10 a0 e3                                      mov r1, #0
0065b790  04 30 a0 e1                                      mov r3, r4
0065b794  02 20 95 e7                                      ldr r2, [r5, r2]
0065b798  5e ef 84 e2                                      add lr, r4, #0x178
0065b79c  06 cd 84 e2                                      add ip, r4, #0x180
0065b7a0  62 0f 84 e2                                      add r0, r4, #0x188
0065b7a4  56 af 84 e2                                      add sl, r4, #0x158
0065b7a8  16 8e 84 e2                                      add r8, r4, #0x160
0065b7ac  49 9f 82 e2                                      add sb, r2, #0x124
0065b7b0  5a 7f 84 e2                                      add r7, r4, #0x168
0065b7b4  17 5e 84 e2                                      add r5, r4, #0x170
0065b7b8  1c 20 82 e2                                      add r2, r2, #0x1c
0065b7bc  00 20 84 e5                                      str r2, [r4]
0065b7c0  8c 01 84 e5                                      str r0, [r4, #0x18c]
0065b7c4  88 01 84 e5                                      str r0, [r4, #0x188]
0065b7c8  6d 2f 84 e2                                      add r2, r4, #0x1b4
0065b7cc  bc 91 84 e5                                      str sb, [r4, #0x1bc]
0065b7d0  5c a1 84 e5                                      str sl, [r4, #0x15c]
0065b7d4  64 81 84 e5                                      str r8, [r4, #0x164]
0065b7d8  6c 71 84 e5                                      str r7, [r4, #0x16c]
0065b7dc  74 51 84 e5                                      str r5, [r4, #0x174]
0065b7e0  7c e1 84 e5                                      str lr, [r4, #0x17c]
0065b7e4  84 c1 84 e5                                      str ip, [r4, #0x184]
0065b7e8  58 a1 84 e5                                      str sl, [r4, #0x158]
0065b7ec  60 81 84 e5                                      str r8, [r4, #0x160]
0065b7f0  68 71 84 e5                                      str r7, [r4, #0x168]
0065b7f4  70 51 84 e5                                      str r5, [r4, #0x170]
0065b7f8  78 e1 84 e5                                      str lr, [r4, #0x178]
0065b7fc  80 c1 84 e5                                      str ip, [r4, #0x180]
0065b800  94 11 84 e5                                      str r1, [r4, #0x194]
0065b804  90 11 e3 e5                                      strb r1, [r3, #0x190]!
0065b808  04 00 a0 e1                                      mov r0, r4
0065b80c  9c 31 84 e5                                      str r3, [r4, #0x19c]
0065b810  ac 61 84 e5                                      str r6, [r4, #0x1ac]
0065b814  b8 21 84 e5                                      str r2, [r4, #0x1b8]
0065b818  98 31 84 e5                                      str r3, [r4, #0x198]
0065b81c  a0 11 84 e5                                      str r1, [r4, #0x1a0]
0065b820  a8 11 c4 e5                                      strb r1, [r4, #0x1a8]
0065b824  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0065b828  5b ee fc eb                                      bl #0x59719c
0065b82c  04 00 a0 e1                                      mov r0, r4
0065b830  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0065b834  4c 93 33 00 54 3c 00 00 44 2b 00 00 8c 15 00 00  .byte 0x4c, 0x93, 0x33, 0x00, 0x54, 0x3c, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x8c, 0x15, 0x00, 0x00

; FUNCTION 0x0065b844, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNodeC2ERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CRootSceneNode::CRootSceneNode(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0065b844  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065b848  00 30 a0 e3                                      mov r3, #0
0065b84c  01 50 a0 e1                                      mov r5, r1
0065b850  04 10 81 e2                                      add r1, r1, #4
0065b854  00 40 a0 e1                                      mov r4, r0
0065b858  95 06 00 eb                                      bl #0x65d2b4
0065b85c  00 20 95 e5                                      ldr r2, [r5]
0065b860  00 10 a0 e3                                      mov r1, #0
0065b864  04 30 a0 e1                                      mov r3, r4
0065b868  00 20 84 e5                                      str r2, [r4]
0065b86c  28 00 95 e5                                      ldr r0, [r5, #0x28]
0065b870  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0065b874  17 ee 84 e2                                      add lr, r4, #0x170
0065b878  5e cf 84 e2                                      add ip, r4, #0x178
0065b87c  02 00 84 e7                                      str r0, [r4, r2]
0065b880  00 20 94 e5                                      ldr r2, [r4]
0065b884  2c a0 95 e5                                      ldr sl, [r5, #0x2c]
0065b888  06 0d 84 e2                                      add r0, r4, #0x180
0065b88c  0c 80 12 e5                                      ldr r8, [r2, #-0xc]
0065b890  56 7f 84 e2                                      add r7, r4, #0x158
0065b894  62 2f 84 e2                                      add r2, r4, #0x188
0065b898  16 6e 84 e2                                      add r6, r4, #0x160
0065b89c  5a 5f 84 e2                                      add r5, r4, #0x168
0065b8a0  08 a0 84 e7                                      str sl, [r4, r8]
0065b8a4  84 01 84 e5                                      str r0, [r4, #0x184]
0065b8a8  8c 21 84 e5                                      str r2, [r4, #0x18c]
0065b8ac  80 01 84 e5                                      str r0, [r4, #0x180]
0065b8b0  88 21 84 e5                                      str r2, [r4, #0x188]
0065b8b4  5c 71 84 e5                                      str r7, [r4, #0x15c]
0065b8b8  6d 2f 84 e2                                      add r2, r4, #0x1b4
0065b8bc  64 61 84 e5                                      str r6, [r4, #0x164]
0065b8c0  6c 51 84 e5                                      str r5, [r4, #0x16c]
0065b8c4  74 e1 84 e5                                      str lr, [r4, #0x174]
0065b8c8  7c c1 84 e5                                      str ip, [r4, #0x17c]
0065b8cc  58 71 84 e5                                      str r7, [r4, #0x158]
0065b8d0  60 61 84 e5                                      str r6, [r4, #0x160]
0065b8d4  68 51 84 e5                                      str r5, [r4, #0x168]
0065b8d8  70 e1 84 e5                                      str lr, [r4, #0x170]
0065b8dc  78 c1 84 e5                                      str ip, [r4, #0x178]
0065b8e0  94 11 84 e5                                      str r1, [r4, #0x194]
0065b8e4  01 00 a0 e3                                      mov r0, #1
0065b8e8  90 11 e3 e5                                      strb r1, [r3, #0x190]!
0065b8ec  9c 31 84 e5                                      str r3, [r4, #0x19c]
0065b8f0  ac 01 84 e5                                      str r0, [r4, #0x1ac]
0065b8f4  b8 21 84 e5                                      str r2, [r4, #0x1b8]
0065b8f8  04 00 a0 e1                                      mov r0, r4
0065b8fc  98 31 84 e5                                      str r3, [r4, #0x198]
0065b900  a0 11 84 e5                                      str r1, [r4, #0x1a0]
0065b904  a8 11 c4 e5                                      strb r1, [r4, #0x1a8]
0065b908  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0065b90c  22 ee fc eb                                      bl #0x59719c
0065b910  04 00 a0 e1                                      mov r0, r4
0065b914  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0065c074, declared_size=464, range_size=464, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNodeD1Ev
; demangled: glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065c074  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065c078  b8 51 9f e5                                      ldr r5, [pc, #0x1b8]
0065c07c  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
0065c080  00 40 a0 e1                                      mov r4, r0
0065c084  05 50 8f e0                                      add r5, pc, r5
0065c088  03 30 95 e7                                      ldr r3, [r5, r3]
0065c08c  6d 7f 80 e2                                      add r7, r0, #0x1b4
0065c090  49 2f 83 e2                                      add r2, r3, #0x124
0065c094  1c 30 83 e2                                      add r3, r3, #0x1c
0065c098  00 30 80 e5                                      str r3, [r0]
0065c09c  bc 21 80 e5                                      str r2, [r0, #0x1bc]
0065c0a0  d0 f1 fc eb                                      bl #0x5987e8
0065c0a4  b4 01 94 e5                                      ldr r0, [r4, #0x1b4]
0065c0a8  07 00 50 e1                                      cmp r0, r7
0065c0ac  01 00 00 1a                                      bne #0x65c0b8
0065c0b0  05 00 00 ea                                      b #0x65c0cc
0065c0b4  06 00 a0 e1                                      mov r0, r6
0065c0b8  00 60 90 e5                                      ldr r6, [r0]
0065c0bc  e3 d0 f2 eb                                      bl #0x310450
0065c0c0  07 00 56 e1                                      cmp r6, r7
0065c0c4  fa ff ff 1a                                      bne #0x65c0b4
0065c0c8  07 00 a0 e1                                      mov r0, r7
0065c0cc  b4 01 84 e5                                      str r0, [r4, #0x1b4]
0065c0d0  04 00 87 e5                                      str r0, [r7, #4]
0065c0d4  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0065c0d8  00 00 53 e3                                      cmp r3, #0
0065c0dc  4b 00 00 1a                                      bne #0x65c210
0065c0e0  88 01 94 e5                                      ldr r0, [r4, #0x188]
0065c0e4  62 7f 84 e2                                      add r7, r4, #0x188
0065c0e8  07 00 50 e1                                      cmp r0, r7
0065c0ec  01 00 00 1a                                      bne #0x65c0f8
0065c0f0  05 00 00 ea                                      b #0x65c10c
0065c0f4  06 00 a0 e1                                      mov r0, r6
0065c0f8  00 60 90 e5                                      ldr r6, [r0]
0065c0fc  d3 d0 f2 eb                                      bl #0x310450
0065c100  07 00 56 e1                                      cmp r6, r7
0065c104  fa ff ff 1a                                      bne #0x65c0f4
0065c108  07 00 a0 e1                                      mov r0, r7
0065c10c  88 01 84 e5                                      str r0, [r4, #0x188]
0065c110  04 00 87 e5                                      str r0, [r7, #4]
0065c114  06 0d 84 e2                                      add r0, r4, #0x180
0065c118  c7 fb ff eb                                      bl #0x65b03c
0065c11c  5e 0f 84 e2                                      add r0, r4, #0x178
0065c120  8d ff ff eb                                      bl #0x65bf5c
0065c124  70 01 94 e5                                      ldr r0, [r4, #0x170]
0065c128  17 7e 84 e2                                      add r7, r4, #0x170
0065c12c  07 00 50 e1                                      cmp r0, r7
0065c130  01 00 00 1a                                      bne #0x65c13c
0065c134  05 00 00 ea                                      b #0x65c150
0065c138  06 00 a0 e1                                      mov r0, r6
0065c13c  00 60 90 e5                                      ldr r6, [r0]
0065c140  c2 d0 f2 eb                                      bl #0x310450
0065c144  07 00 56 e1                                      cmp r6, r7
0065c148  fa ff ff 1a                                      bne #0x65c138
0065c14c  07 00 a0 e1                                      mov r0, r7
0065c150  70 01 84 e5                                      str r0, [r4, #0x170]
0065c154  04 00 87 e5                                      str r0, [r7, #4]
0065c158  68 01 94 e5                                      ldr r0, [r4, #0x168]
0065c15c  5a 7f 84 e2                                      add r7, r4, #0x168
0065c160  07 00 50 e1                                      cmp r0, r7
0065c164  01 00 00 1a                                      bne #0x65c170
0065c168  05 00 00 ea                                      b #0x65c184
0065c16c  06 00 a0 e1                                      mov r0, r6
0065c170  00 60 90 e5                                      ldr r6, [r0]
0065c174  b5 d0 f2 eb                                      bl #0x310450
0065c178  07 00 56 e1                                      cmp r6, r7
0065c17c  fa ff ff 1a                                      bne #0x65c16c
0065c180  07 00 a0 e1                                      mov r0, r7
0065c184  68 01 84 e5                                      str r0, [r4, #0x168]
0065c188  04 00 87 e5                                      str r0, [r7, #4]
0065c18c  60 01 94 e5                                      ldr r0, [r4, #0x160]
0065c190  16 7e 84 e2                                      add r7, r4, #0x160
0065c194  07 00 50 e1                                      cmp r0, r7
0065c198  01 00 00 1a                                      bne #0x65c1a4
0065c19c  05 00 00 ea                                      b #0x65c1b8
0065c1a0  06 00 a0 e1                                      mov r0, r6
0065c1a4  00 60 90 e5                                      ldr r6, [r0]
0065c1a8  a8 d0 f2 eb                                      bl #0x310450
0065c1ac  07 00 56 e1                                      cmp r6, r7
0065c1b0  fa ff ff 1a                                      bne #0x65c1a0
0065c1b4  07 00 a0 e1                                      mov r0, r7
0065c1b8  60 01 84 e5                                      str r0, [r4, #0x160]
0065c1bc  04 00 87 e5                                      str r0, [r7, #4]
0065c1c0  58 01 94 e5                                      ldr r0, [r4, #0x158]
0065c1c4  56 7f 84 e2                                      add r7, r4, #0x158
0065c1c8  07 00 50 e1                                      cmp r0, r7
0065c1cc  01 00 00 1a                                      bne #0x65c1d8
0065c1d0  05 00 00 ea                                      b #0x65c1ec
0065c1d4  06 00 a0 e1                                      mov r0, r6
0065c1d8  00 60 90 e5                                      ldr r6, [r0]
0065c1dc  9b d0 f2 eb                                      bl #0x310450
0065c1e0  07 00 56 e1                                      cmp r6, r7
0065c1e4  fa ff ff 1a                                      bne #0x65c1d4
0065c1e8  07 00 a0 e1                                      mov r0, r7
0065c1ec  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0065c1f0  58 01 84 e5                                      str r0, [r4, #0x158]
0065c1f4  04 00 87 e5                                      str r0, [r7, #4]
0065c1f8  01 10 95 e7                                      ldr r1, [r5, r1]
0065c1fc  04 00 a0 e1                                      mov r0, r4
0065c200  04 10 81 e2                                      add r1, r1, #4
0065c204  50 fb ff eb                                      bl #0x65af4c
0065c208  04 00 a0 e1                                      mov r0, r4
0065c20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065c210  19 6e 84 e2                                      add r6, r4, #0x190
0065c214  06 00 a0 e1                                      mov r0, r6
0065c218  94 11 94 e5                                      ldr r1, [r4, #0x194]
0065c21c  85 ff ff eb                                      bl #0x65c038
0065c220  00 30 a0 e3                                      mov r3, #0
0065c224  9c 61 84 e5                                      str r6, [r4, #0x19c]
0065c228  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0065c22c  98 61 84 e5                                      str r6, [r4, #0x198]
0065c230  94 31 84 e5                                      str r3, [r4, #0x194]
0065c234  a9 ff ff ea                                      b #0x65c0e0
; mapping-symbol data/literal pool
0065c238  0c 8a 33 00 8c 15 00 00 54 3c 00 00              .byte 0x0c, 0x8a, 0x33, 0x00, 0x8c, 0x15, 0x00, 0x00, 0x54, 0x3c, 0x00, 0x00

; FUNCTION 0x0065c244, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNodeD0Ev
; demangled: glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065c244  10 40 2d e9                                      push {r4, lr}
0065c248  00 40 a0 e1                                      mov r4, r0
0065c24c  88 ff ff eb                                      bl #0x65c074
0065c250  04 00 a0 e1                                      mov r0, r4
0065c254  15 c8 f2 eb                                      bl #0x30e2b0
0065c258  04 00 a0 e1                                      mov r0, r4
0065c25c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0065c260, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNodeD2Ev
; demangled: glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065c260  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065c264  00 30 91 e5                                      ldr r3, [r1]
0065c268  00 40 a0 e1                                      mov r4, r0
0065c26c  6d 7f 80 e2                                      add r7, r0, #0x1b4
0065c270  00 30 80 e5                                      str r3, [r0]
0065c274  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0065c278  28 20 91 e5                                      ldr r2, [r1, #0x28]
0065c27c  01 50 a0 e1                                      mov r5, r1
0065c280  03 20 80 e7                                      str r2, [r0, r3]
0065c284  00 30 90 e5                                      ldr r3, [r0]
0065c288  2c 20 91 e5                                      ldr r2, [r1, #0x2c]
0065c28c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065c290  03 20 80 e7                                      str r2, [r0, r3]
0065c294  53 f1 fc eb                                      bl #0x5987e8
0065c298  b4 01 94 e5                                      ldr r0, [r4, #0x1b4]
0065c29c  07 00 50 e1                                      cmp r0, r7
0065c2a0  01 00 00 1a                                      bne #0x65c2ac
0065c2a4  05 00 00 ea                                      b #0x65c2c0
0065c2a8  06 00 a0 e1                                      mov r0, r6
0065c2ac  00 60 90 e5                                      ldr r6, [r0]
0065c2b0  66 d0 f2 eb                                      bl #0x310450
0065c2b4  07 00 56 e1                                      cmp r6, r7
0065c2b8  fa ff ff 1a                                      bne #0x65c2a8
0065c2bc  07 00 a0 e1                                      mov r0, r7
0065c2c0  b4 01 84 e5                                      str r0, [r4, #0x1b4]
0065c2c4  04 00 87 e5                                      str r0, [r7, #4]
0065c2c8  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
0065c2cc  00 00 53 e3                                      cmp r3, #0
0065c2d0  49 00 00 1a                                      bne #0x65c3fc
0065c2d4  88 01 94 e5                                      ldr r0, [r4, #0x188]
0065c2d8  62 7f 84 e2                                      add r7, r4, #0x188
0065c2dc  07 00 50 e1                                      cmp r0, r7
0065c2e0  01 00 00 1a                                      bne #0x65c2ec
0065c2e4  05 00 00 ea                                      b #0x65c300
0065c2e8  06 00 a0 e1                                      mov r0, r6
0065c2ec  00 60 90 e5                                      ldr r6, [r0]
0065c2f0  56 d0 f2 eb                                      bl #0x310450
0065c2f4  07 00 56 e1                                      cmp r6, r7
0065c2f8  fa ff ff 1a                                      bne #0x65c2e8
0065c2fc  07 00 a0 e1                                      mov r0, r7
0065c300  88 01 84 e5                                      str r0, [r4, #0x188]
0065c304  04 00 87 e5                                      str r0, [r7, #4]
0065c308  06 0d 84 e2                                      add r0, r4, #0x180
0065c30c  4a fb ff eb                                      bl #0x65b03c
0065c310  5e 0f 84 e2                                      add r0, r4, #0x178
0065c314  10 ff ff eb                                      bl #0x65bf5c
0065c318  70 01 94 e5                                      ldr r0, [r4, #0x170]
0065c31c  17 7e 84 e2                                      add r7, r4, #0x170
0065c320  07 00 50 e1                                      cmp r0, r7
0065c324  01 00 00 1a                                      bne #0x65c330
0065c328  05 00 00 ea                                      b #0x65c344
0065c32c  06 00 a0 e1                                      mov r0, r6
0065c330  00 60 90 e5                                      ldr r6, [r0]
0065c334  45 d0 f2 eb                                      bl #0x310450
0065c338  07 00 56 e1                                      cmp r6, r7
0065c33c  fa ff ff 1a                                      bne #0x65c32c
0065c340  07 00 a0 e1                                      mov r0, r7
0065c344  70 01 84 e5                                      str r0, [r4, #0x170]
0065c348  04 00 87 e5                                      str r0, [r7, #4]
0065c34c  68 01 94 e5                                      ldr r0, [r4, #0x168]
0065c350  5a 7f 84 e2                                      add r7, r4, #0x168
0065c354  07 00 50 e1                                      cmp r0, r7
0065c358  01 00 00 1a                                      bne #0x65c364
0065c35c  05 00 00 ea                                      b #0x65c378
0065c360  06 00 a0 e1                                      mov r0, r6
0065c364  00 60 90 e5                                      ldr r6, [r0]
0065c368  38 d0 f2 eb                                      bl #0x310450
0065c36c  07 00 56 e1                                      cmp r6, r7
0065c370  fa ff ff 1a                                      bne #0x65c360
0065c374  07 00 a0 e1                                      mov r0, r7
0065c378  68 01 84 e5                                      str r0, [r4, #0x168]
0065c37c  04 00 87 e5                                      str r0, [r7, #4]
0065c380  60 01 94 e5                                      ldr r0, [r4, #0x160]
0065c384  16 7e 84 e2                                      add r7, r4, #0x160
0065c388  07 00 50 e1                                      cmp r0, r7
0065c38c  01 00 00 1a                                      bne #0x65c398
0065c390  05 00 00 ea                                      b #0x65c3ac
0065c394  06 00 a0 e1                                      mov r0, r6
0065c398  00 60 90 e5                                      ldr r6, [r0]
0065c39c  2b d0 f2 eb                                      bl #0x310450
0065c3a0  07 00 56 e1                                      cmp r6, r7
0065c3a4  fa ff ff 1a                                      bne #0x65c394
0065c3a8  07 00 a0 e1                                      mov r0, r7
0065c3ac  60 01 84 e5                                      str r0, [r4, #0x160]
0065c3b0  04 00 87 e5                                      str r0, [r7, #4]
0065c3b4  58 01 94 e5                                      ldr r0, [r4, #0x158]
0065c3b8  56 7f 84 e2                                      add r7, r4, #0x158
0065c3bc  07 00 50 e1                                      cmp r0, r7
0065c3c0  01 00 00 1a                                      bne #0x65c3cc
0065c3c4  05 00 00 ea                                      b #0x65c3e0
0065c3c8  06 00 a0 e1                                      mov r0, r6
0065c3cc  00 60 90 e5                                      ldr r6, [r0]
0065c3d0  1e d0 f2 eb                                      bl #0x310450
0065c3d4  07 00 56 e1                                      cmp r6, r7
0065c3d8  fa ff ff 1a                                      bne #0x65c3c8
0065c3dc  07 00 a0 e1                                      mov r0, r7
0065c3e0  58 01 84 e5                                      str r0, [r4, #0x158]
0065c3e4  04 10 85 e2                                      add r1, r5, #4
0065c3e8  04 00 87 e5                                      str r0, [r7, #4]
0065c3ec  04 00 a0 e1                                      mov r0, r4
0065c3f0  d5 fa ff eb                                      bl #0x65af4c
0065c3f4  04 00 a0 e1                                      mov r0, r4
0065c3f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065c3fc  19 6e 84 e2                                      add r6, r4, #0x190
0065c400  06 00 a0 e1                                      mov r0, r6
0065c404  94 11 94 e5                                      ldr r1, [r4, #0x194]
0065c408  0a ff ff eb                                      bl #0x65c038
0065c40c  00 30 a0 e3                                      mov r3, #0
0065c410  9c 61 84 e5                                      str r6, [r4, #0x19c]
0065c414  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0065c418  98 61 84 e5                                      str r6, [r4, #0x198]
0065c41c  94 31 84 e5                                      str r3, [r4, #0x194]
0065c420  ab ff ff ea                                      b #0x65c2d4

; FUNCTION 0x0065c4f8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode20setIFLAnimationValueEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::collada::CRootSceneNode::setIFLAnimationValue(glitch::collada::SAnimation*, boost::intrusive_ptr<glitch::video::ITexture>)
; decoder-mode: arm
0065c4f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0065c4fc  08 d0 4d e2                                      sub sp, sp, #8
0065c500  08 30 8d e2                                      add r3, sp, #8
0065c504  04 10 23 e5                                      str r1, [r3, #-4]!
0065c508  19 0e 80 e2                                      add r0, r0, #0x190
0065c50c  03 10 a0 e1                                      mov r1, r3
0065c510  02 60 a0 e1                                      mov r6, r2
0065c514  c2 ff ff eb                                      bl #0x65c424
0065c518  30 00 90 e8                                      ldm r0, {r4, r5}
0065c51c  05 00 54 e1                                      cmp r4, r5
0065c520  07 00 00 0a                                      beq #0x65c544
0065c524  00 00 94 e5                                      ldr r0, [r4]
0065c528  b4 10 d4 e1                                      ldrh r1, [r4, #4]
0065c52c  00 20 a0 e3                                      mov r2, #0
0065c530  08 40 84 e2                                      add r4, r4, #8
0065c534  06 30 a0 e1                                      mov r3, r6
0065c538  79 c3 fd eb                                      bl #0x5cd324
0065c53c  05 00 54 e1                                      cmp r4, r5
0065c540  f7 ff ff 1a                                      bne #0x65c524
0065c544  08 d0 8d e2                                      add sp, sp, #8
0065c548  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065c5b0, declared_size=432, range_size=432, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode15addIFLAnimationEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video9CMaterialEEEt
; demangled: glitch::collada::CRootSceneNode::addIFLAnimation(glitch::collada::SAnimation*, boost::intrusive_ptr<glitch::video::CMaterial>, unsigned short)
; decoder-mode: arm
0065c5b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0065c5b4  08 d0 4d e2                                      sub sp, sp, #8
0065c5b8  08 c0 8d e2                                      add ip, sp, #8
0065c5bc  04 10 2c e5                                      str r1, [ip, #-4]!
0065c5c0  19 0e 80 e2                                      add r0, r0, #0x190
0065c5c4  0c 10 a0 e1                                      mov r1, ip
0065c5c8  03 70 a0 e1                                      mov r7, r3
0065c5cc  02 40 a0 e1                                      mov r4, r2
0065c5d0  93 ff ff eb                                      bl #0x65c424
0065c5d4  00 40 94 e5                                      ldr r4, [r4]
0065c5d8  00 50 a0 e1                                      mov r5, r0
0065c5dc  00 00 54 e3                                      cmp r4, #0
0065c5e0  00 30 94 15                                      ldrne r3, [r4]
0065c5e4  02 30 83 12                                      addne r3, r3, #2
0065c5e8  00 30 84 15                                      strne r3, [r4]
0065c5ec  04 60 90 e5                                      ldr r6, [r0, #4]
0065c5f0  08 30 90 e5                                      ldr r3, [r0, #8]
0065c5f4  03 00 56 e1                                      cmp r6, r3
0065c5f8  24 00 00 0a                                      beq #0x65c690
0065c5fc  00 40 86 e5                                      str r4, [r6]
0065c600  00 00 54 e3                                      cmp r4, #0
0065c604  00 30 94 15                                      ldrne r3, [r4]
0065c608  01 30 83 12                                      addne r3, r3, #1
0065c60c  00 30 84 15                                      strne r3, [r4]
0065c610  b4 70 c6 e1                                      strh r7, [r6, #4]
0065c614  04 30 90 e5                                      ldr r3, [r0, #4]
0065c618  08 30 83 e2                                      add r3, r3, #8
0065c61c  04 30 80 e5                                      str r3, [r0, #4]
0065c620  00 00 54 e3                                      cmp r4, #0
0065c624  08 00 00 0a                                      beq #0x65c64c
0065c628  00 30 94 e5                                      ldr r3, [r4]
0065c62c  01 30 43 e2                                      sub r3, r3, #1
0065c630  00 00 53 e3                                      cmp r3, #0
0065c634  00 30 84 e5                                      str r3, [r4]
0065c638  0a 00 00 0a                                      beq #0x65c668
0065c63c  01 30 43 e2                                      sub r3, r3, #1
0065c640  00 00 53 e3                                      cmp r3, #0
0065c644  00 30 84 e5                                      str r3, [r4]
0065c648  01 00 00 0a                                      beq #0x65c654
0065c64c  08 d0 8d e2                                      add sp, sp, #8
0065c650  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0065c654  04 00 a0 e1                                      mov r0, r4
0065c658  46 be fd eb                                      bl #0x5cbf78
0065c65c  04 00 a0 e1                                      mov r0, r4
0065c660  12 c7 f2 eb                                      bl #0x30e2b0
0065c664  f8 ff ff ea                                      b #0x65c64c
0065c668  04 00 a0 e1                                      mov r0, r4
0065c66c  41 be fd eb                                      bl #0x5cbf78
0065c670  04 00 a0 e1                                      mov r0, r4
0065c674  0d c7 f2 eb                                      bl #0x30e2b0
0065c678  00 30 94 e5                                      ldr r3, [r4]
0065c67c  01 30 43 e2                                      sub r3, r3, #1
0065c680  00 00 53 e3                                      cmp r3, #0
0065c684  00 30 84 e5                                      str r3, [r4]
0065c688  ef ff ff 1a                                      bne #0x65c64c
0065c68c  f0 ff ff ea                                      b #0x65c654
0065c690  00 30 90 e5                                      ldr r3, [r0]
0065c694  06 30 63 e0                                      rsb r3, r3, r6
0065c698  c3 31 a0 e1                                      asr r3, r3, #3
0065c69c  01 00 53 e3                                      cmp r3, #1
0065c6a0  03 80 83 20                                      addhs r8, r3, r3
0065c6a4  01 80 83 32                                      addlo r8, r3, #1
0065c6a8  1e 02 78 e3                                      cmn r8, #0xe0000001
0065c6ac  27 00 00 9a                                      bls #0x65c750
0065c6b0  07 80 e0 e3                                      mvn r8, #7
0065c6b4  08 00 a0 e1                                      mov r0, r8
0065c6b8  00 10 a0 e3                                      mov r1, #0
0065c6bc  a9 cf f2 eb                                      bl #0x310568
0065c6c0  00 a0 a0 e1                                      mov sl, r0
0065c6c4  00 00 95 e5                                      ldr r0, [r5]
0065c6c8  06 60 60 e0                                      rsb r6, r0, r6
0065c6cc  c6 61 a0 e1                                      asr r6, r6, #3
0065c6d0  00 00 56 e3                                      cmp r6, #0
0065c6d4  0a 60 a0 d1                                      movle r6, sl
0065c6d8  0f 00 00 da                                      ble #0x65c71c
0065c6dc  06 10 a0 e1                                      mov r1, r6
0065c6e0  00 30 a0 e3                                      mov r3, #0
0065c6e4  03 20 90 e7                                      ldr r2, [r0, r3]
0065c6e8  03 e0 80 e0                                      add lr, r0, r3
0065c6ec  03 c0 8a e0                                      add ip, sl, r3
0065c6f0  03 20 8a e7                                      str r2, [sl, r3]
0065c6f4  00 00 52 e3                                      cmp r2, #0
0065c6f8  00 90 92 15                                      ldrne sb, [r2]
0065c6fc  08 30 83 e2                                      add r3, r3, #8
0065c700  01 90 89 12                                      addne sb, sb, #1
0065c704  00 90 82 15                                      strne sb, [r2]
0065c708  b4 e0 de e1                                      ldrh lr, [lr, #4]
0065c70c  01 10 51 e2                                      subs r1, r1, #1
0065c710  b4 e0 cc e1                                      strh lr, [ip, #4]
0065c714  f2 ff ff 1a                                      bne #0x65c6e4
0065c718  86 61 8a e0                                      add r6, sl, r6, lsl #3
0065c71c  00 00 54 e3                                      cmp r4, #0
0065c720  00 40 86 e5                                      str r4, [r6]
0065c724  00 30 94 15                                      ldrne r3, [r4]
0065c728  05 00 a0 e1                                      mov r0, r5
0065c72c  08 80 8a e0                                      add r8, sl, r8
0065c730  01 30 83 12                                      addne r3, r3, #1
0065c734  00 30 84 15                                      strne r3, [r4]
0065c738  b4 70 c6 e1                                      strh r7, [r6, #4]
0065c73c  08 60 86 e2                                      add r6, r6, #8
0065c740  81 ff ff eb                                      bl #0x65c54c
0065c744  40 01 85 e9                                      stmib r5, {r6, r8}
0065c748  00 a0 85 e5                                      str sl, [r5]
0065c74c  b3 ff ff ea                                      b #0x65c620
0065c750  08 00 53 e1                                      cmp r3, r8
0065c754  88 81 a0 91                                      lslls r8, r8, #3
0065c758  d5 ff ff 9a                                      bls #0x65c6b4
0065c75c  d3 ff ff ea                                      b #0x65c6b0

; FUNCTION 0x0065c760, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode11addMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
; demangled: glitch::collada::CRootSceneNode::addMaterial(glitch::collada::SMaterial*, glitch::video::IVideoDriver*)
; decoder-mode: arm
0065c760  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065c764  02 60 a0 e1                                      mov r6, r2
0065c768  0c d0 4d e2                                      sub sp, sp, #0xc
0065c76c  01 40 a0 e1                                      mov r4, r1
0065c770  03 20 a0 e1                                      mov r2, r3
0065c774  00 50 a0 e1                                      mov r5, r0
0065c778  53 1f 81 e2                                      add r1, r1, #0x14c
0065c77c  06 30 a0 e1                                      mov r3, r6
0065c780  00 40 8d e5                                      str r4, [sp]
0065c784  47 01 ff eb                                      bl #0x61cca8
0065c788  00 70 95 e5                                      ldr r7, [r5]
0065c78c  00 00 57 e3                                      cmp r7, #0
0065c790  14 00 00 0a                                      beq #0x65c7e8
0065c794  00 30 97 e5                                      ldr r3, [r7]
0065c798  10 00 a0 e3                                      mov r0, #0x10
0065c79c  00 10 a0 e3                                      mov r1, #0
0065c7a0  01 30 83 e2                                      add r3, r3, #1
0065c7a4  00 30 87 e5                                      str r3, [r7]
0065c7a8  6e cf f2 eb                                      bl #0x310568
0065c7ac  08 60 80 e5                                      str r6, [r0, #8]
0065c7b0  0c 70 80 e5                                      str r7, [r0, #0xc]
0065c7b4  00 30 97 e5                                      ldr r3, [r7]
0065c7b8  5e 2f 84 e2                                      add r2, r4, #0x178
0065c7bc  01 30 83 e2                                      add r3, r3, #1
0065c7c0  00 30 87 e5                                      str r3, [r7]
0065c7c4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
0065c7c8  0c 00 80 e8                                      stm r0, {r2, r3}
0065c7cc  00 00 83 e5                                      str r0, [r3]
0065c7d0  7c 01 84 e5                                      str r0, [r4, #0x17c]
0065c7d4  00 30 97 e5                                      ldr r3, [r7]
0065c7d8  01 30 43 e2                                      sub r3, r3, #1
0065c7dc  00 00 53 e3                                      cmp r3, #0
0065c7e0  00 30 87 e5                                      str r3, [r7]
0065c7e4  02 00 00 0a                                      beq #0x65c7f4
0065c7e8  05 00 a0 e1                                      mov r0, r5
0065c7ec  0c d0 8d e2                                      add sp, sp, #0xc
0065c7f0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0065c7f4  07 00 a0 e1                                      mov r0, r7
0065c7f8  de bd fd eb                                      bl #0x5cbf78
0065c7fc  07 00 a0 e1                                      mov r0, r7
0065c800  aa c6 f2 eb                                      bl #0x30e2b0
0065c804  f7 ff ff ea                                      b #0x65c7e8

; FUNCTION 0x0065c808, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode11addMaterialEPKcPNS_5video12IVideoDriverE
; demangled: glitch::collada::CRootSceneNode::addMaterial(char const*, glitch::video::IVideoDriver*)
; decoder-mode: arm
0065c808  70 40 2d e9                                      push {r4, r5, r6, lr}
0065c80c  08 d0 4d e2                                      sub sp, sp, #8
0065c810  08 c0 8d e2                                      add ip, sp, #8
0065c814  10 e0 a0 e3                                      mov lr, #0x10
0065c818  04 e0 2c e5                                      str lr, [ip, #-4]!
0065c81c  01 50 a0 e1                                      mov r5, r1
0065c820  00 40 a0 e1                                      mov r4, r0
0065c824  02 10 a0 e1                                      mov r1, r2
0065c828  53 0f 85 e2                                      add r0, r5, #0x14c
0065c82c  0c 20 a0 e1                                      mov r2, ip
0065c830  03 60 a0 e1                                      mov r6, r3
0065c834  c7 fd fe eb                                      bl #0x61bf58
0065c838  00 20 50 e2                                      subs r2, r0, #0
0065c83c  02 00 00 0a                                      beq #0x65c84c
0065c840  04 30 9d e5                                      ldr r3, [sp, #4]
0065c844  10 00 53 e3                                      cmp r3, #0x10
0065c848  04 00 00 0a                                      beq #0x65c860
0065c84c  00 30 a0 e3                                      mov r3, #0
0065c850  00 30 84 e5                                      str r3, [r4]
0065c854  04 00 a0 e1                                      mov r0, r4
0065c858  08 d0 8d e2                                      add sp, sp, #8
0065c85c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065c860  05 10 a0 e1                                      mov r1, r5
0065c864  06 30 a0 e1                                      mov r3, r6
0065c868  04 00 a0 e1                                      mov r0, r4
0065c86c  bb ff ff eb                                      bl #0x65c760
0065c870  f7 ff ff ea                                      b #0x65c854

; FUNCTION 0x0065c874, declared_size=444, range_size=444, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode11resolveURLsEv
; demangled: glitch::collada::CRootSceneNode::resolveURLs()
; decoder-mode: arm
0065c874  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065c878  00 50 a0 e1                                      mov r5, r0
0065c87c  b4 41 b5 e5                                      ldr r4, [r5, #0x1b4]!
0065c880  a4 91 9f e5                                      ldr sb, [pc, #0x1a4]
0065c884  1c d0 4d e2                                      sub sp, sp, #0x1c
0065c888  04 00 55 e1                                      cmp r5, r4
0065c88c  00 60 a0 e1                                      mov r6, r0
0065c890  09 90 8f e0                                      add sb, pc, sb
0065c894  53 7f 80 e2                                      add r7, r0, #0x14c
0065c898  10 80 8d e2                                      add r8, sp, #0x10
0065c89c  14 a0 8d e2                                      add sl, sp, #0x14
0065c8a0  29 00 00 0a                                      beq #0x65c94c
0065c8a4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0065c8a8  d0 30 d1 e1                                      ldrsb r3, [r1]
0065c8ac  23 00 53 e3                                      cmp r3, #0x23
0065c8b0  39 00 00 0a                                      beq #0x65c99c
0065c8b4  08 30 94 e5                                      ldr r3, [r4, #8]
0065c8b8  00 00 53 e3                                      cmp r3, #0
0065c8bc  3c 00 00 1a                                      bne #0x65c9b4
0065c8c0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0065c8c4  07 00 a0 e1                                      mov r0, r7
0065c8c8  0a 10 a0 e1                                      mov r1, sl
0065c8cc  00 00 53 e3                                      cmp r3, #0
0065c8d0  14 30 8d e5                                      str r3, [sp, #0x14]
0065c8d4  00 20 93 15                                      ldrne r2, [r3]
0065c8d8  01 20 82 12                                      addne r2, r2, #1
0065c8dc  00 20 83 15                                      strne r2, [r3]
0065c8e0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0065c8e4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0065c8e8  b4 21 d4 e1                                      ldrh r2, [r4, #0x14]
0065c8ec  00 c0 8d e5                                      str ip, [sp]
0065c8f0  f1 c6 fe eb                                      bl #0x60e4bc
0065c8f4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0065c8f8  00 b0 a0 e1                                      mov fp, r0
0065c8fc  00 00 53 e3                                      cmp r3, #0
0065c900  04 00 00 0a                                      beq #0x65c918
0065c904  00 20 93 e5                                      ldr r2, [r3]
0065c908  01 20 42 e2                                      sub r2, r2, #1
0065c90c  00 00 52 e3                                      cmp r2, #0
0065c910  00 20 83 e5                                      str r2, [r3]
0065c914  3d 00 00 0a                                      beq #0x65ca10
0065c918  00 00 5b e3                                      cmp fp, #0
0065c91c  36 00 00 0a                                      beq #0x65c9fc
0065c920  08 30 94 e5                                      ldr r3, [r4, #8]
0065c924  00 00 53 e3                                      cmp r3, #0
0065c928  14 00 00 1a                                      bne #0x65c980
0065c92c  10 00 94 e5                                      ldr r0, [r4, #0x10]
0065c930  b4 11 d4 e1                                      ldrh r1, [r4, #0x14]
0065c934  18 20 94 e5                                      ldr r2, [r4, #0x18]
0065c938  4d 3f 8b e2                                      add r3, fp, #0x134
0065c93c  06 c8 fd eb                                      bl #0x5ce95c
0065c940  00 40 94 e5                                      ldr r4, [r4]
0065c944  04 00 55 e1                                      cmp r5, r4
0065c948  d5 ff ff 1a                                      bne #0x65c8a4
0065c94c  b4 01 96 e5                                      ldr r0, [r6, #0x1b4]
0065c950  00 00 55 e1                                      cmp r5, r0
0065c954  01 00 00 1a                                      bne #0x65c960
0065c958  04 00 00 ea                                      b #0x65c970
0065c95c  04 00 a0 e1                                      mov r0, r4
0065c960  00 40 90 e5                                      ldr r4, [r0]
0065c964  b9 ce f2 eb                                      bl #0x310450
0065c968  04 00 55 e1                                      cmp r5, r4
0065c96c  fa ff ff 1a                                      bne #0x65c95c
0065c970  b8 51 86 e5                                      str r5, [r6, #0x1b8]
0065c974  b4 51 86 e5                                      str r5, [r6, #0x1b4]
0065c978  1c d0 8d e2                                      add sp, sp, #0x1c
0065c97c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065c980  10 00 94 e5                                      ldr r0, [r4, #0x10]
0065c984  b4 11 d4 e1                                      ldrh r1, [r4, #0x14]
0065c988  18 20 94 e5                                      ldr r2, [r4, #0x18]
0065c98c  4d 3f 8b e2                                      add r3, fp, #0x134
0065c990  67 e1 fd eb                                      bl #0x5d4f34
0065c994  00 40 94 e5                                      ldr r4, [r4]
0065c998  e9 ff ff ea                                      b #0x65c944
0065c99c  01 10 81 e2                                      add r1, r1, #1
0065c9a0  06 00 a0 e1                                      mov r0, r6
0065c9a4  12 fb ff eb                                      bl #0x65b5f4
0065c9a8  00 b0 50 e2                                      subs fp, r0, #0
0065c9ac  db ff ff 1a                                      bne #0x65c920
0065c9b0  bf ff ff ea                                      b #0x65c8b4
0065c9b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0065c9b8  08 10 a0 e1                                      mov r1, r8
0065c9bc  07 00 a0 e1                                      mov r0, r7
0065c9c0  00 00 53 e3                                      cmp r3, #0
0065c9c4  10 30 8d e5                                      str r3, [sp, #0x10]
0065c9c8  00 20 93 15                                      ldrne r2, [r3]
0065c9cc  01 20 82 12                                      addne r2, r2, #1
0065c9d0  00 20 83 15                                      strne r2, [r3]
0065c9d4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0065c9d8  b4 21 d4 e1                                      ldrh r2, [r4, #0x14]
0065c9dc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0065c9e0  00 c0 8d e5                                      str ip, [sp]
0065c9e4  c6 c6 fe eb                                      bl #0x60e504
0065c9e8  00 b0 a0 e1                                      mov fp, r0
0065c9ec  08 00 a0 e1                                      mov r0, r8
0065c9f0  72 f9 ff eb                                      bl #0x65afc0
0065c9f4  00 00 5b e3                                      cmp fp, #0
0065c9f8  c8 ff ff 1a                                      bne #0x65c920
0065c9fc  09 00 a0 e1                                      mov r0, sb
0065ca00  03 10 a0 e3                                      mov r1, #3
0065ca04  a5 b8 fe eb                                      bl #0x60aca0
0065ca08  00 40 94 e5                                      ldr r4, [r4]
0065ca0c  cc ff ff ea                                      b #0x65c944
0065ca10  03 00 a0 e1                                      mov r0, r3
0065ca14  0c 30 8d e5                                      str r3, [sp, #0xc]
0065ca18  56 bd fd eb                                      bl #0x5cbf78
0065ca1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0065ca20  03 00 a0 e1                                      mov r0, r3
0065ca24  21 c6 f2 eb                                      bl #0x30e2b0
0065ca28  ba ff ff ea                                      b #0x65c918
; mapping-symbol data/literal pool
0065ca2c  60 8f 28 00                                      .byte 0x60, 0x8f, 0x28, 0x00

; FUNCTION 0x0065ca30, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode11getMaterialEPKcPNS_5video12IVideoDriverE
; demangled: glitch::collada::CRootSceneNode::getMaterial(char const*, glitch::video::IVideoDriver*)
; decoder-mode: arm
0065ca30  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065ca34  00 40 a0 e1                                      mov r4, r0
0065ca38  0c d0 4d e2                                      sub sp, sp, #0xc
0065ca3c  03 50 a0 e1                                      mov r5, r3
0065ca40  01 70 a0 e1                                      mov r7, r1
0065ca44  02 60 a0 e1                                      mov r6, r2
0065ca48  ba fa ff eb                                      bl #0x65b538
0065ca4c  00 30 94 e5                                      ldr r3, [r4]
0065ca50  00 00 53 e3                                      cmp r3, #0
0065ca54  02 00 00 0a                                      beq #0x65ca64
0065ca58  04 00 a0 e1                                      mov r0, r4
0065ca5c  0c d0 8d e2                                      add sp, sp, #0xc
0065ca60  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0065ca64  00 00 55 e3                                      cmp r5, #0
0065ca68  fa ff ff 0a                                      beq #0x65ca58
0065ca6c  06 20 a0 e1                                      mov r2, r6
0065ca70  05 30 a0 e1                                      mov r3, r5
0065ca74  07 10 a0 e1                                      mov r1, r7
0065ca78  04 00 8d e2                                      add r0, sp, #4
0065ca7c  61 ff ff eb                                      bl #0x65c808
0065ca80  04 30 9d e5                                      ldr r3, [sp, #4]
0065ca84  00 00 53 e3                                      cmp r3, #0
0065ca88  00 20 93 15                                      ldrne r2, [r3]
0065ca8c  01 20 82 12                                      addne r2, r2, #1
0065ca90  00 20 83 15                                      strne r2, [r3]
0065ca94  00 50 94 e5                                      ldr r5, [r4]
0065ca98  00 30 84 e5                                      str r3, [r4]
0065ca9c  00 00 55 e3                                      cmp r5, #0
0065caa0  08 00 00 0a                                      beq #0x65cac8
0065caa4  00 30 95 e5                                      ldr r3, [r5]
0065caa8  01 30 43 e2                                      sub r3, r3, #1
0065caac  00 00 53 e3                                      cmp r3, #0
0065cab0  00 30 85 e5                                      str r3, [r5]
0065cab4  03 00 00 1a                                      bne #0x65cac8
0065cab8  05 00 a0 e1                                      mov r0, r5
0065cabc  2d bd fd eb                                      bl #0x5cbf78
0065cac0  05 00 a0 e1                                      mov r0, r5
0065cac4  f9 c5 f2 eb                                      bl #0x30e2b0
0065cac8  04 50 9d e5                                      ldr r5, [sp, #4]
0065cacc  00 00 55 e3                                      cmp r5, #0
0065cad0  e0 ff ff 0a                                      beq #0x65ca58
0065cad4  00 30 95 e5                                      ldr r3, [r5]
0065cad8  01 30 43 e2                                      sub r3, r3, #1
0065cadc  00 00 53 e3                                      cmp r3, #0
0065cae0  00 30 85 e5                                      str r3, [r5]
0065cae4  db ff ff 1a                                      bne #0x65ca58
0065cae8  05 00 a0 e1                                      mov r0, r5
0065caec  21 bd fd eb                                      bl #0x5cbf78
0065caf0  05 00 a0 e1                                      mov r0, r5
0065caf4  ed c5 f2 eb                                      bl #0x30e2b0
0065caf8  d6 ff ff ea                                      b #0x65ca58

; FUNCTION 0x0065cafc, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZN6glitch7collada14CRootSceneNode11getMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
; demangled: glitch::collada::CRootSceneNode::getMaterial(glitch::collada::SMaterial*, glitch::video::IVideoDriver*)
; decoder-mode: arm
0065cafc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065cb00  00 40 a0 e1                                      mov r4, r0
0065cb04  0c d0 4d e2                                      sub sp, sp, #0xc
0065cb08  02 50 a0 e1                                      mov r5, r2
0065cb0c  00 20 92 e5                                      ldr r2, [r2]
0065cb10  03 60 a0 e1                                      mov r6, r3
0065cb14  01 70 a0 e1                                      mov r7, r1
0065cb18  86 fa ff eb                                      bl #0x65b538
0065cb1c  00 30 94 e5                                      ldr r3, [r4]
0065cb20  00 00 53 e3                                      cmp r3, #0
0065cb24  02 00 00 0a                                      beq #0x65cb34
0065cb28  04 00 a0 e1                                      mov r0, r4
0065cb2c  0c d0 8d e2                                      add sp, sp, #0xc
0065cb30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0065cb34  00 00 56 e3                                      cmp r6, #0
0065cb38  fa ff ff 0a                                      beq #0x65cb28
0065cb3c  05 20 a0 e1                                      mov r2, r5
0065cb40  06 30 a0 e1                                      mov r3, r6
0065cb44  07 10 a0 e1                                      mov r1, r7
0065cb48  04 00 8d e2                                      add r0, sp, #4
0065cb4c  03 ff ff eb                                      bl #0x65c760
0065cb50  04 30 9d e5                                      ldr r3, [sp, #4]
0065cb54  00 00 53 e3                                      cmp r3, #0
0065cb58  00 20 93 15                                      ldrne r2, [r3]
0065cb5c  01 20 82 12                                      addne r2, r2, #1
0065cb60  00 20 83 15                                      strne r2, [r3]
0065cb64  00 50 94 e5                                      ldr r5, [r4]
0065cb68  00 30 84 e5                                      str r3, [r4]
0065cb6c  00 00 55 e3                                      cmp r5, #0
0065cb70  08 00 00 0a                                      beq #0x65cb98
0065cb74  00 30 95 e5                                      ldr r3, [r5]
0065cb78  01 30 43 e2                                      sub r3, r3, #1
0065cb7c  00 00 53 e3                                      cmp r3, #0
0065cb80  00 30 85 e5                                      str r3, [r5]
0065cb84  03 00 00 1a                                      bne #0x65cb98
0065cb88  05 00 a0 e1                                      mov r0, r5
0065cb8c  f9 bc fd eb                                      bl #0x5cbf78
0065cb90  05 00 a0 e1                                      mov r0, r5
0065cb94  c5 c5 f2 eb                                      bl #0x30e2b0
0065cb98  04 50 9d e5                                      ldr r5, [sp, #4]
0065cb9c  00 00 55 e3                                      cmp r5, #0
0065cba0  e0 ff ff 0a                                      beq #0x65cb28
0065cba4  00 30 95 e5                                      ldr r3, [r5]
0065cba8  01 30 43 e2                                      sub r3, r3, #1
0065cbac  00 00 53 e3                                      cmp r3, #0
0065cbb0  00 30 85 e5                                      str r3, [r5]
0065cbb4  db ff ff 1a                                      bne #0x65cb28
0065cbb8  05 00 a0 e1                                      mov r0, r5
0065cbbc  ed bc fd eb                                      bl #0x5cbf78
0065cbc0  05 00 a0 e1                                      mov r0, r5
0065cbc4  b9 c5 f2 eb                                      bl #0x30e2b0
0065cbc8  d6 ff ff ea                                      b #0x65cb28

; FUNCTION 0x0065cbcc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZTv0_n24_N6glitch7collada14CRootSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065cbcc  00 30 90 e5                                      ldr r3, [r0]
0065cbd0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0065cbd4  03 00 80 e0                                      add r0, r0, r3
0065cbd8  99 fd ff ea                                      b #0x65c244

; FUNCTION 0x0065cbdc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZTv0_n12_N6glitch7collada14CRootSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065cbdc  00 30 90 e5                                      ldr r3, [r0]
0065cbe0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065cbe4  03 00 80 e0                                      add r0, r0, r3
0065cbe8  95 fd ff ea                                      b #0x65c244

; FUNCTION 0x0065cbec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZTv0_n24_N6glitch7collada14CRootSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065cbec  00 30 90 e5                                      ldr r3, [r0]
0065cbf0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0065cbf4  03 00 80 e0                                      add r0, r0, r3
0065cbf8  1d fd ff ea                                      b #0x65c074

; FUNCTION 0x0065cbfc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZTv0_n12_N6glitch7collada14CRootSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CRootSceneNode::~CRootSceneNode()
; decoder-mode: arm
0065cbfc  00 30 90 e5                                      ldr r3, [r0]
0065cc00  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065cc04  03 00 80 e0                                      add r0, r0, r3
0065cc08  19 fd ff ea                                      b #0x65c074

; FUNCTION 0x0065cc0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZTv0_n20_N6glitch7collada14CRootSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CRootSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0065cc0c  00 30 90 e5                                      ldr r3, [r0]
0065cc10  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0065cc14  03 00 80 e0                                      add r0, r0, r3
0065cc18  bb f8 ff ea                                      b #0x65af0c

; FUNCTION 0x0065cc1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CRootSceneNode
; alias: _ZTv0_n16_NK6glitch7collada14CRootSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CRootSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0065cc1c  00 30 90 e5                                      ldr r3, [r0]
0065cc20  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0065cc24  03 00 80 e0                                      add r0, r0, r3
0065cc28  a7 f8 ff ea                                      b #0x65aecc
