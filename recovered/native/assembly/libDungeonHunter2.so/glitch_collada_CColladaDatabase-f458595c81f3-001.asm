; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060e28c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20linkInstanceMaterialEPNS0_17SInstanceMaterialE
; demangled: glitch::collada::CColladaDatabase::linkInstanceMaterial(glitch::collada::SInstanceMaterial*) const
; decoder-mode: arm
0060e28c  00 30 90 e5                                      ldr r3, [r0]
0060e290  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e294  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e298  08 20 93 e5                                      ldr r2, [r3, #8]
0060e29c  38 20 81 e5                                      str r2, [r1, #0x38]
0060e2a0  08 10 83 e5                                      str r1, [r3, #8]
0060e2a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e2a8, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase10getVersionEv
; demangled: glitch::collada::CColladaDatabase::getVersion() const
; decoder-mode: arm
0060e2a8  00 30 90 e5                                      ldr r3, [r0]
0060e2ac  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e2b0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e2b4  00 00 93 e5                                      ldr r0, [r3]
0060e2b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e2bc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase19getAnimationSegmentEi
; demangled: glitch::collada::CColladaDatabase::getAnimationSegment(int) const
; decoder-mode: arm
0060e2bc  30 00 2d e9                                      push {r4, r5}
0060e2c0  00 30 90 e5                                      ldr r3, [r0]
0060e2c4  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e2c8  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e2cc  30 30 93 e5                                      ldr r3, [r3, #0x30]
0060e2d0  00 50 93 e5                                      ldr r5, [r3]
0060e2d4  00 00 55 e3                                      cmp r5, #0
0060e2d8  05 00 a0 01                                      moveq r0, r5
0060e2dc  12 00 00 0a                                      beq #0x60e32c
0060e2e0  04 c0 93 d5                                      ldrle ip, [r3, #4]
0060e2e4  0d 00 00 da                                      ble #0x60e320
0060e2e8  04 c0 93 e5                                      ldr ip, [r3, #4]
0060e2ec  00 30 a0 e3                                      mov r3, #0
0060e2f0  03 20 a0 e1                                      mov r2, r3
0060e2f4  03 40 9c e7                                      ldr r4, [ip, r3]
0060e2f8  01 20 82 e2                                      add r2, r2, #1
0060e2fc  03 00 8c e0                                      add r0, ip, r3
0060e300  01 00 54 e1                                      cmp r4, r1
0060e304  02 00 00 ca                                      bgt #0x60e314
0060e308  04 40 90 e5                                      ldr r4, [r0, #4]
0060e30c  04 00 51 e1                                      cmp r1, r4
0060e310  05 00 00 ba                                      blt #0x60e32c
0060e314  05 00 52 e1                                      cmp r2, r5
0060e318  18 30 83 e2                                      add r3, r3, #0x18
0060e31c  f4 ff ff 1a                                      bne #0x60e2f4
0060e320  01 50 45 e2                                      sub r5, r5, #1
0060e324  18 00 a0 e3                                      mov r0, #0x18
0060e328  90 c5 20 e0                                      mla r0, r0, r5, ip
0060e32c  30 00 bd e8                                      pop {r4, r5}
0060e330  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e334, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase23getAnimationClipLibraryEv
; demangled: glitch::collada::CColladaDatabase::getAnimationClipLibrary() const
; decoder-mode: arm
0060e334  00 30 90 e5                                      ldr r3, [r0]
0060e338  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e33c  20 00 93 e5                                      ldr r0, [r3, #0x20]
0060e340  34 00 80 e2                                      add r0, r0, #0x34
0060e344  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e348, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getSceneEv
; demangled: glitch::collada::CColladaDatabase::getScene() const
; decoder-mode: arm
0060e348  00 30 90 e5                                      ldr r3, [r0]
0060e34c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e350  20 00 93 e5                                      ldr r0, [r3, #0x20]
0060e354  b8 00 80 e2                                      add r0, r0, #0xb8
0060e358  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e35c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase12getAnimationEi
; demangled: glitch::collada::CColladaDatabase::getAnimation(int) const
; decoder-mode: arm
0060e35c  00 30 90 e5                                      ldr r3, [r0]
0060e360  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e364  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e368  28 00 93 e5                                      ldr r0, [r3, #0x28]
0060e36c  81 02 80 e0                                      add r0, r0, r1, lsl #5
0060e370  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e374, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16getAnimationClipEi
; demangled: glitch::collada::CColladaDatabase::getAnimationClip(int) const
; decoder-mode: arm
0060e374  00 30 90 e5                                      ldr r3, [r0]
0060e378  0c 00 a0 e3                                      mov r0, #0xc
0060e37c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e380  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e384  38 30 93 e5                                      ldr r3, [r3, #0x38]
0060e388  90 31 20 e0                                      mla r0, r0, r1, r3
0060e38c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e390, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase9getCameraEi
; demangled: glitch::collada::CColladaDatabase::getCamera(int) const
; decoder-mode: arm
0060e390  00 30 90 e5                                      ldr r3, [r0]
0060e394  1c 00 a0 e3                                      mov r0, #0x1c
0060e398  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e39c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3a0  40 30 93 e5                                      ldr r3, [r3, #0x40]
0060e3a4  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e3ac, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getLightEi
; demangled: glitch::collada::CColladaDatabase::getLight(int) const
; decoder-mode: arm
0060e3ac  00 30 90 e5                                      ldr r3, [r0]
0060e3b0  18 00 a0 e3                                      mov r0, #0x18
0060e3b4  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e3b8  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3bc  48 30 93 e5                                      ldr r3, [r3, #0x48]
0060e3c0  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e3c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getImageEi
; demangled: glitch::collada::CColladaDatabase::getImage(int) const
; decoder-mode: arm
0060e3c8  00 30 90 e5                                      ldr r3, [r0]
0060e3cc  14 00 a0 e3                                      mov r0, #0x14
0060e3d0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e3d4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3d8  50 30 93 e5                                      ldr r3, [r3, #0x50]
0060e3dc  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e3e4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase9getEffectEi
; demangled: glitch::collada::CColladaDatabase::getEffect(int) const
; decoder-mode: arm
0060e3e4  00 30 90 e5                                      ldr r3, [r0]
0060e3e8  74 00 a0 e3                                      mov r0, #0x74
0060e3ec  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e3f0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e3f4  58 30 93 e5                                      ldr r3, [r3, #0x58]
0060e3f8  90 31 20 e0                                      mla r0, r0, r1, r3
0060e3fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e400, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getMaterialEi
; demangled: glitch::collada::CColladaDatabase::getMaterial(int) const
; decoder-mode: arm
0060e400  00 30 90 e5                                      ldr r3, [r0]
0060e404  24 00 a0 e3                                      mov r0, #0x24
0060e408  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e40c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e410  60 30 93 e5                                      ldr r3, [r3, #0x60]
0060e414  90 31 20 e0                                      mla r0, r0, r1, r3
0060e418  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e41c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getGeometryEi
; demangled: glitch::collada::CColladaDatabase::getGeometry(int) const
; decoder-mode: arm
0060e41c  00 30 90 e5                                      ldr r3, [r0]
0060e420  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e424  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e428  6c 00 93 e5                                      ldr r0, [r3, #0x6c]
0060e42c  01 02 80 e0                                      add r0, r0, r1, lsl #4
0060e430  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e434, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13getControllerEi
; demangled: glitch::collada::CColladaDatabase::getController(int) const
; decoder-mode: arm
0060e434  00 30 90 e5                                      ldr r3, [r0]
0060e438  0c 00 a0 e3                                      mov r0, #0xc
0060e43c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e440  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e444  74 30 93 e5                                      ldr r3, [r3, #0x74]
0060e448  90 31 20 e0                                      mla r0, r0, r1, r3
0060e44c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e450, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getForceEi
; demangled: glitch::collada::CColladaDatabase::getForce(int) const
; decoder-mode: arm
0060e450  00 30 90 e5                                      ldr r3, [r0]
0060e454  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e458  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e45c  8c 00 93 e5                                      ldr r0, [r3, #0x8c]
0060e460  01 02 80 e0                                      add r0, r0, r1, lsl #4
0060e464  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e468, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase10getEmitterEi
; demangled: glitch::collada::CColladaDatabase::getEmitter(int) const
; decoder-mode: arm
0060e468  00 30 90 e5                                      ldr r3, [r0]
0060e46c  90 00 a0 e3                                      mov r0, #0x90
0060e470  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e474  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e478  7c 30 93 e5                                      ldr r3, [r3, #0x7c]
0060e47c  90 31 20 e0                                      mla r0, r0, r1, r3
0060e480  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e484, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14getGNPSEmitterEi
; demangled: glitch::collada::CColladaDatabase::getGNPSEmitter(int) const
; decoder-mode: arm
0060e484  00 30 90 e5                                      ldr r3, [r0]
0060e488  e8 00 a0 e3                                      mov r0, #0xe8
0060e48c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e490  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e494  84 30 93 e5                                      ldr r3, [r3, #0x84]
0060e498  90 31 20 e0                                      mla r0, r0, r1, r3
0060e49c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e4a0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase10getCoronasEi
; demangled: glitch::collada::CColladaDatabase::getCoronas(int) const
; decoder-mode: arm
0060e4a0  00 30 90 e5                                      ldr r3, [r0]
0060e4a4  24 00 a0 e3                                      mov r0, #0x24
0060e4a8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e4ac  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e4b0  94 30 93 e5                                      ldr r3, [r3, #0x94]
0060e4b4  90 31 20 e0                                      mla r0, r0, r1, r3
0060e4b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e4bc, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase25getExternalLightSceneNodeERKN5boost13intrusive_ptrIKNS_5video9CMaterialEEEtjPKc
; demangled: glitch::collada::CColladaDatabase::getExternalLightSceneNode(boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned short, unsigned int, char const*) const
; decoder-mode: arm
0060e4bc  30 40 2d e9                                      push {r4, r5, lr}
0060e4c0  04 c0 90 e5                                      ldr ip, [r0, #4]
0060e4c4  0c d0 4d e2                                      sub sp, sp, #0xc
0060e4c8  00 e0 a0 e1                                      mov lr, r0
0060e4cc  0c 00 a0 e1                                      mov r0, ip
0060e4d0  00 c0 9c e5                                      ldr ip, [ip]
0060e4d4  00 30 8d e5                                      str r3, [sp]
0060e4d8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0060e4dc  01 50 a0 e1                                      mov r5, r1
0060e4e0  02 40 a0 e1                                      mov r4, r2
0060e4e4  04 30 8d e5                                      str r3, [sp, #4]
0060e4e8  0e 10 a0 e1                                      mov r1, lr
0060e4ec  05 20 a0 e1                                      mov r2, r5
0060e4f0  04 30 a0 e1                                      mov r3, r4
0060e4f4  0f e0 a0 e1                                      mov lr, pc
0060e4f8  78 f0 9c e5                                      ldr pc, [ip, #0x78]
0060e4fc  0c d0 8d e2                                      add sp, sp, #0xc
0060e500  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0060e504, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase25getExternalLightSceneNodeERKN5boost13intrusive_ptrIKNS_5video17CMaterialRendererEEEtjPKc
; demangled: glitch::collada::CColladaDatabase::getExternalLightSceneNode(boost::intrusive_ptr<glitch::video::CMaterialRenderer const> const&, unsigned short, unsigned int, char const*) const
; decoder-mode: arm
0060e504  30 40 2d e9                                      push {r4, r5, lr}
0060e508  04 c0 90 e5                                      ldr ip, [r0, #4]
0060e50c  0c d0 4d e2                                      sub sp, sp, #0xc
0060e510  00 e0 a0 e1                                      mov lr, r0
0060e514  0c 00 a0 e1                                      mov r0, ip
0060e518  00 c0 9c e5                                      ldr ip, [ip]
0060e51c  00 30 8d e5                                      str r3, [sp]
0060e520  18 30 9d e5                                      ldr r3, [sp, #0x18]
0060e524  01 50 a0 e1                                      mov r5, r1
0060e528  02 40 a0 e1                                      mov r4, r2
0060e52c  04 30 8d e5                                      str r3, [sp, #4]
0060e530  0e 10 a0 e1                                      mov r1, lr
0060e534  05 20 a0 e1                                      mov r2, r5
0060e538  04 30 a0 e1                                      mov r3, r4
0060e53c  0f e0 a0 e1                                      mov lr, pc
0060e540  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
0060e544  0c d0 8d e2                                      add sp, sp, #0xc
0060e548  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0060e54c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14getVisualSceneEi
; demangled: glitch::collada::CColladaDatabase::getVisualScene(int) const
; decoder-mode: arm
0060e54c  00 30 90 e5                                      ldr r3, [r0]
0060e550  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060e554  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060e558  98 20 93 e5                                      ldr r2, [r3, #0x98]
0060e55c  00 00 52 e3                                      cmp r2, #0
0060e560  9c 00 93 c5                                      ldrgt r0, [r3, #0x9c]
0060e564  00 00 a0 d3                                      movle r0, #0
0060e568  01 02 80 c0                                      addgt r0, r0, r1, lsl #4
0060e56c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e570, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEffect(glitch::video::IVideoDriver*, glitch::collada::SEffect*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e570  30 40 2d e9                                      push {r4, r5, lr}
0060e574  01 e0 a0 e1                                      mov lr, r1
0060e578  04 10 91 e5                                      ldr r1, [r1, #4]
0060e57c  00 40 a0 e1                                      mov r4, r0
0060e580  00 50 53 e2                                      subs r5, r3, #0
0060e584  00 00 91 e5                                      ldr r0, [r1]
0060e588  14 d0 4d e2                                      sub sp, sp, #0x14
0060e58c  02 30 a0 e1                                      mov r3, r2
0060e590  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0060e594  00 00 95 15                                      ldrne r0, [r5]
0060e598  0d 00 00 0a                                      beq #0x60e5d4
0060e59c  00 20 9e e5                                      ldr r2, [lr]
0060e5a0  00 00 52 e3                                      cmp r2, #0
0060e5a4  20 20 92 15                                      ldrne r2, [r2, #0x20]
0060e5a8  04 00 8d e5                                      str r0, [sp, #4]
0060e5ac  00 50 8d e5                                      str r5, [sp]
0060e5b0  08 20 8d e5                                      str r2, [sp, #8]
0060e5b4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0060e5b8  04 00 a0 e1                                      mov r0, r4
0060e5bc  0c 20 8d e5                                      str r2, [sp, #0xc]
0060e5c0  0e 20 a0 e1                                      mov r2, lr
0060e5c4  3c ff 2f e1                                      blx ip
0060e5c8  04 00 a0 e1                                      mov r0, r4
0060e5cc  14 d0 8d e2                                      add sp, sp, #0x14
0060e5d0  30 80 bd e8                                      pop {r4, r5, pc}
0060e5d4  04 00 9f e5                                      ldr r0, [pc, #4]
0060e5d8  00 00 8f e0                                      add r0, pc, r0
0060e5dc  ee ff ff ea                                      b #0x60e59c
; mapping-symbol data/literal pool
0060e5e0  30 d2 2b 00                                      .byte 0x30, 0xd2, 0x2b, 0x00

; FUNCTION 0x0060e5e4, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEffect(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e5e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060e5e8  01 50 a0 e1                                      mov r5, r1
0060e5ec  08 d0 4d e2                                      sub sp, sp, #8
0060e5f0  00 40 a0 e1                                      mov r4, r0
0060e5f4  03 10 a0 e1                                      mov r1, r3
0060e5f8  05 00 a0 e1                                      mov r0, r5
0060e5fc  02 60 a0 e1                                      mov r6, r2
0060e600  77 ff ff eb                                      bl #0x60e3e4
0060e604  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0060e608  00 30 a0 e1                                      mov r3, r0
0060e60c  05 10 a0 e1                                      mov r1, r5
0060e610  04 00 a0 e1                                      mov r0, r4
0060e614  06 20 a0 e1                                      mov r2, r6
0060e618  00 c0 8d e5                                      str ip, [sp]
0060e61c  d3 ff ff eb                                      bl #0x60e570
0060e620  04 00 a0 e1                                      mov r0, r4
0060e624  08 d0 8d e2                                      add sp, sp, #8
0060e628  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060e62c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructCameraEPNS0_15SInstanceCameraEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCamera(glitch::collada::SInstanceCamera*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e62c  00 00 a0 e3                                      mov r0, #0
0060e630  1e ff 2f e1                                      bx lr

; FUNCTION 0x0060e634, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, glitch::collada::SGeometry*) const
; decoder-mode: arm
0060e634  30 40 2d e9                                      push {r4, r5, lr}
0060e638  00 c0 53 e2                                      subs ip, r3, #0
0060e63c  14 d0 4d e2                                      sub sp, sp, #0x14
0060e640  00 40 a0 e1                                      mov r4, r0
0060e644  02 30 a0 e1                                      mov r3, r2
0060e648  02 00 00 0a                                      beq #0x60e658
0060e64c  08 20 9c e5                                      ldr r2, [ip, #8]
0060e650  00 00 52 e3                                      cmp r2, #0
0060e654  04 00 00 0a                                      beq #0x60e66c
0060e658  00 30 a0 e3                                      mov r3, #0
0060e65c  00 30 84 e5                                      str r3, [r4]
0060e660  04 00 a0 e1                                      mov r0, r4
0060e664  14 d0 8d e2                                      add sp, sp, #0x14
0060e668  30 80 bd e8                                      pop {r4, r5, pc}
0060e66c  04 00 91 e5                                      ldr r0, [r1, #4]
0060e670  01 20 a0 e1                                      mov r2, r1
0060e674  00 50 90 e5                                      ldr r5, [r0]
0060e678  00 10 a0 e1                                      mov r1, r0
0060e67c  00 c0 8d e5                                      str ip, [sp]
0060e680  0c 00 8d e2                                      add r0, sp, #0xc
0060e684  0f e0 a0 e1                                      mov lr, pc
0060e688  34 f0 95 e5                                      ldr pc, [r5, #0x34]
0060e68c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060e690  00 00 50 e3                                      cmp r0, #0
0060e694  00 00 84 e5                                      str r0, [r4]
0060e698  04 30 90 15                                      ldrne r3, [r0, #4]
0060e69c  01 30 83 12                                      addne r3, r3, #1
0060e6a0  04 30 80 15                                      strne r3, [r0, #4]
0060e6a4  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060e6a8  00 00 50 e3                                      cmp r0, #0
0060e6ac  eb ff ff 0a                                      beq #0x60e660
0060e6b0  b3 3b f4 eb                                      bl #0x31d584
0060e6b4  e9 ff ff ea                                      b #0x60e660

; FUNCTION 0x0060e6b8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEi
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, int) const
; decoder-mode: arm
0060e6b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0060e6bc  01 50 a0 e1                                      mov r5, r1
0060e6c0  00 40 a0 e1                                      mov r4, r0
0060e6c4  03 10 a0 e1                                      mov r1, r3
0060e6c8  05 00 a0 e1                                      mov r0, r5
0060e6cc  02 60 a0 e1                                      mov r6, r2
0060e6d0  51 ff ff eb                                      bl #0x60e41c
0060e6d4  05 10 a0 e1                                      mov r1, r5
0060e6d8  00 30 a0 e1                                      mov r3, r0
0060e6dc  06 20 a0 e1                                      mov r2, r6
0060e6e0  04 00 a0 e1                                      mov r0, r4
0060e6e4  d2 ff ff eb                                      bl #0x60e634
0060e6e8  04 00 a0 e1                                      mov r0, r4
0060e6ec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060e6f0, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructModularSkinEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructModularSkin(glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e6f0  30 40 2d e9                                      push {r4, r5, lr}
0060e6f4  04 c0 91 e5                                      ldr ip, [r1, #4]
0060e6f8  14 d0 4d e2                                      sub sp, sp, #0x14
0060e6fc  01 e0 a0 e1                                      mov lr, r1
0060e700  02 50 a0 e1                                      mov r5, r2
0060e704  00 40 a0 e1                                      mov r4, r0
0060e708  0c 10 a0 e1                                      mov r1, ip
0060e70c  0c 00 8d e2                                      add r0, sp, #0xc
0060e710  00 c0 9c e5                                      ldr ip, [ip]
0060e714  0e 20 a0 e1                                      mov r2, lr
0060e718  00 30 8d e5                                      str r3, [sp]
0060e71c  05 30 a0 e1                                      mov r3, r5
0060e720  0f e0 a0 e1                                      mov lr, pc
0060e724  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
0060e728  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060e72c  00 00 50 e3                                      cmp r0, #0
0060e730  00 00 84 e5                                      str r0, [r4]
0060e734  04 30 90 15                                      ldrne r3, [r0, #4]
0060e738  01 30 83 12                                      addne r3, r3, #1
0060e73c  04 30 80 15                                      strne r3, [r0, #4]
0060e740  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060e744  00 00 50 e3                                      cmp r0, #0
0060e748  00 00 00 0a                                      beq #0x60e750
0060e74c  8c 3b f4 eb                                      bl #0x31d584
0060e750  04 00 a0 e1                                      mov r0, r4
0060e754  14 d0 8d e2                                      add sp, sp, #0x14
0060e758  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0060e75c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPNS0_8SCoronasEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCoronas(glitch::collada::SCoronas*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e75c  10 40 2d e9                                      push {r4, lr}
0060e760  00 c0 51 e2                                      subs ip, r1, #0
0060e764  08 d0 4d e2                                      sub sp, sp, #8
0060e768  03 40 a0 e1                                      mov r4, r3
0060e76c  0c 00 a0 01                                      moveq r0, ip
0060e770  07 00 00 0a                                      beq #0x60e794
0060e774  04 e0 90 e5                                      ldr lr, [r0, #4]
0060e778  00 10 a0 e1                                      mov r1, r0
0060e77c  0c 30 a0 e1                                      mov r3, ip
0060e780  0e 00 a0 e1                                      mov r0, lr
0060e784  00 c0 9e e5                                      ldr ip, [lr]
0060e788  00 40 8d e5                                      str r4, [sp]
0060e78c  0f e0 a0 e1                                      mov lr, pc
0060e790  60 f0 9c e5                                      ldr pc, [ip, #0x60]
0060e794  08 d0 8d e2                                      add sp, sp, #8
0060e798  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060e79c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_8SEmitterEPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEmitter(glitch::collada::SEmitter*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e79c  10 40 2d e9                                      push {r4, lr}
0060e7a0  00 c0 51 e2                                      subs ip, r1, #0
0060e7a4  08 d0 4d e2                                      sub sp, sp, #8
0060e7a8  03 40 a0 e1                                      mov r4, r3
0060e7ac  0c 00 a0 01                                      moveq r0, ip
0060e7b0  08 00 00 0a                                      beq #0x60e7d8
0060e7b4  04 e0 90 e5                                      ldr lr, [r0, #4]
0060e7b8  00 10 a0 e1                                      mov r1, r0
0060e7bc  0c 30 a0 e1                                      mov r3, ip
0060e7c0  0e 00 a0 e1                                      mov r0, lr
0060e7c4  00 c0 9e e5                                      ldr ip, [lr]
0060e7c8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0060e7cc  10 40 8d e8                                      stm sp, {r4, lr}
0060e7d0  0f e0 a0 e1                                      mov lr, pc
0060e7d4  68 f0 9c e5                                      ldr pc, [ip, #0x68]
0060e7d8  08 d0 8d e2                                      add sp, sp, #8
0060e7dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060e7e0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructEmitterEiPNS_5video12IVideoDriverEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEmitter(int, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e7e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060e7e4  18 40 9d e5                                      ldr r4, [sp, #0x18]
0060e7e8  02 60 a0 e1                                      mov r6, r2
0060e7ec  03 50 a0 e1                                      mov r5, r3
0060e7f0  00 70 a0 e1                                      mov r7, r0
0060e7f4  1b ff ff eb                                      bl #0x60e468
0060e7f8  06 20 a0 e1                                      mov r2, r6
0060e7fc  00 10 a0 e1                                      mov r1, r0
0060e800  05 30 a0 e1                                      mov r3, r5
0060e804  07 00 a0 e1                                      mov r0, r7
0060e808  18 40 8d e5                                      str r4, [sp, #0x18]
0060e80c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0060e810  e1 ff ff ea                                      b #0x60e79c

; FUNCTION 0x0060e814, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_12SGNPSEmitterEPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructGNPSEmitter(glitch::collada::SGNPSEmitter*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e814  10 40 2d e9                                      push {r4, lr}
0060e818  00 c0 51 e2                                      subs ip, r1, #0
0060e81c  08 d0 4d e2                                      sub sp, sp, #8
0060e820  03 40 a0 e1                                      mov r4, r3
0060e824  0c 00 a0 01                                      moveq r0, ip
0060e828  08 00 00 0a                                      beq #0x60e850
0060e82c  04 e0 90 e5                                      ldr lr, [r0, #4]
0060e830  00 10 a0 e1                                      mov r1, r0
0060e834  0c 30 a0 e1                                      mov r3, ip
0060e838  0e 00 a0 e1                                      mov r0, lr
0060e83c  00 c0 9e e5                                      ldr ip, [lr]
0060e840  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0060e844  10 40 8d e8                                      stm sp, {r4, lr}
0060e848  0f e0 a0 e1                                      mov lr, pc
0060e84c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
0060e850  08 d0 8d e2                                      add sp, sp, #8
0060e854  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060e858, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEiPNS_5video12IVideoDriverEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructGNPSEmitter(int, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e858  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060e85c  18 40 9d e5                                      ldr r4, [sp, #0x18]
0060e860  02 60 a0 e1                                      mov r6, r2
0060e864  03 50 a0 e1                                      mov r5, r3
0060e868  00 70 a0 e1                                      mov r7, r0
0060e86c  04 ff ff eb                                      bl #0x60e484
0060e870  06 20 a0 e1                                      mov r2, r6
0060e874  00 10 a0 e1                                      mov r1, r0
0060e878  05 30 a0 e1                                      mov r3, r5
0060e87c  07 00 a0 e1                                      mov r0, r7
0060e880  18 40 8d e5                                      str r4, [sp, #0x18]
0060e884  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0060e888  e1 ff ff ea                                      b #0x60e814

; FUNCTION 0x0060e88c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructForceEPNS0_6SForceEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructForce(glitch::collada::SForce*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e88c  00 20 51 e2                                      subs r2, r1, #0
0060e890  10 40 2d e9                                      push {r4, lr}
0060e894  01 00 00 1a                                      bne #0x60e8a0
0060e898  00 00 a0 e3                                      mov r0, #0
0060e89c  10 80 bd e8                                      pop {r4, pc}
0060e8a0  08 30 92 e5                                      ldr r3, [r2, #8]
0060e8a4  01 00 53 e3                                      cmp r3, #1
0060e8a8  11 00 00 0a                                      beq #0x60e8f4
0060e8ac  02 00 53 e3                                      cmp r3, #2
0060e8b0  08 00 00 0a                                      beq #0x60e8d8
0060e8b4  00 00 53 e3                                      cmp r3, #0
0060e8b8  f6 ff ff 1a                                      bne #0x60e898
0060e8bc  04 30 90 e5                                      ldr r3, [r0, #4]
0060e8c0  00 10 a0 e1                                      mov r1, r0
0060e8c4  03 00 a0 e1                                      mov r0, r3
0060e8c8  00 30 93 e5                                      ldr r3, [r3]
0060e8cc  0f e0 a0 e1                                      mov lr, pc
0060e8d0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0060e8d4  10 80 bd e8                                      pop {r4, pc}
0060e8d8  04 30 90 e5                                      ldr r3, [r0, #4]
0060e8dc  00 10 a0 e1                                      mov r1, r0
0060e8e0  03 00 a0 e1                                      mov r0, r3
0060e8e4  00 30 93 e5                                      ldr r3, [r3]
0060e8e8  0f e0 a0 e1                                      mov lr, pc
0060e8ec  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0060e8f0  10 80 bd e8                                      pop {r4, pc}
0060e8f4  04 30 90 e5                                      ldr r3, [r0, #4]
0060e8f8  00 10 a0 e1                                      mov r1, r0
0060e8fc  03 00 a0 e1                                      mov r0, r3
0060e900  00 30 93 e5                                      ldr r3, [r3]
0060e904  0f e0 a0 e1                                      mov lr, pc
0060e908  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0060e90c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0060e910, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructForceEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructForce(int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060e910  70 40 2d e9                                      push {r4, r5, r6, lr}
0060e914  02 40 a0 e1                                      mov r4, r2
0060e918  00 50 a0 e1                                      mov r5, r0
0060e91c  cb fe ff eb                                      bl #0x60e450
0060e920  04 20 a0 e1                                      mov r2, r4
0060e924  00 10 a0 e1                                      mov r1, r0
0060e928  05 00 a0 e1                                      mov r0, r5
0060e92c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0060e930  d5 ff ff ea                                      b #0x60e88c

; FUNCTION 0x0060f25c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC1EPKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0060f25c  44 c0 9f e5                                      ldr ip, [pc, #0x44]
0060f260  44 30 9f e5                                      ldr r3, [pc, #0x44]
0060f264  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f268  0c c0 8f e0                                      add ip, pc, ip
0060f26c  03 30 9c e7                                      ldr r3, [ip, r3]
0060f270  02 50 a0 e1                                      mov r5, r2
0060f274  00 20 a0 e3                                      mov r2, #0
0060f278  00 40 a0 e1                                      mov r4, r0
0060f27c  00 00 93 e5                                      ldr r0, [r3]
0060f280  02 30 a0 e1                                      mov r3, r2
0060f284  74 2e 01 eb                                      bl #0x65ac5c
0060f288  04 50 84 e5                                      str r5, [r4, #4]
0060f28c  00 00 50 e3                                      cmp r0, #0
0060f290  00 00 84 e5                                      str r0, [r4]
0060f294  04 30 90 15                                      ldrne r3, [r0, #4]
0060f298  01 30 83 12                                      addne r3, r3, #1
0060f29c  04 30 80 15                                      strne r3, [r0, #4]
0060f2a0  04 00 a0 e1                                      mov r0, r4
0060f2a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060f2a8  28 58 38 00 48 44 00 00                          .byte 0x28, 0x58, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0060f2b0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC2EPKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0060f2b0  44 c0 9f e5                                      ldr ip, [pc, #0x44]
0060f2b4  44 30 9f e5                                      ldr r3, [pc, #0x44]
0060f2b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f2bc  0c c0 8f e0                                      add ip, pc, ip
0060f2c0  03 30 9c e7                                      ldr r3, [ip, r3]
0060f2c4  02 50 a0 e1                                      mov r5, r2
0060f2c8  00 20 a0 e3                                      mov r2, #0
0060f2cc  00 40 a0 e1                                      mov r4, r0
0060f2d0  00 00 93 e5                                      ldr r0, [r3]
0060f2d4  02 30 a0 e1                                      mov r3, r2
0060f2d8  5f 2e 01 eb                                      bl #0x65ac5c
0060f2dc  04 50 84 e5                                      str r5, [r4, #4]
0060f2e0  00 00 50 e3                                      cmp r0, #0
0060f2e4  00 00 84 e5                                      str r0, [r4]
0060f2e8  04 30 90 15                                      ldrne r3, [r0, #4]
0060f2ec  01 30 83 12                                      addne r3, r3, #1
0060f2f0  04 30 80 15                                      strne r3, [r0, #4]
0060f2f4  04 00 a0 e1                                      mov r0, r4
0060f2f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060f2fc  d4 57 38 00 48 44 00 00                          .byte 0xd4, 0x57, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0060f304, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC1EPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0060f304  30 40 2d e9                                      push {r4, r5, lr}
0060f308  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
0060f30c  0c d0 4d e2                                      sub sp, sp, #0xc
0060f310  00 20 8d e5                                      str r2, [sp]
0060f314  44 20 9f e5                                      ldr r2, [pc, #0x44]
0060f318  0c c0 8f e0                                      add ip, pc, ip
0060f31c  00 40 a0 e1                                      mov r4, r0
0060f320  02 e0 9c e7                                      ldr lr, [ip, r2]
0060f324  00 20 a0 e3                                      mov r2, #0
0060f328  03 50 a0 e1                                      mov r5, r3
0060f32c  00 00 9e e5                                      ldr r0, [lr]
0060f330  02 30 a0 e1                                      mov r3, r2
0060f334  94 2d 01 eb                                      bl #0x65a98c
0060f338  04 50 84 e5                                      str r5, [r4, #4]
0060f33c  00 00 50 e3                                      cmp r0, #0
0060f340  00 00 84 e5                                      str r0, [r4]
0060f344  04 30 90 15                                      ldrne r3, [r0, #4]
0060f348  01 30 83 12                                      addne r3, r3, #1
0060f34c  04 30 80 15                                      strne r3, [r0, #4]
0060f350  04 00 a0 e1                                      mov r0, r4
0060f354  0c d0 8d e2                                      add sp, sp, #0xc
0060f358  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0060f35c  78 57 38 00 48 44 00 00                          .byte 0x78, 0x57, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0060f364, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC2EPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0060f364  30 40 2d e9                                      push {r4, r5, lr}
0060f368  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
0060f36c  0c d0 4d e2                                      sub sp, sp, #0xc
0060f370  00 20 8d e5                                      str r2, [sp]
0060f374  44 20 9f e5                                      ldr r2, [pc, #0x44]
0060f378  0c c0 8f e0                                      add ip, pc, ip
0060f37c  00 40 a0 e1                                      mov r4, r0
0060f380  02 e0 9c e7                                      ldr lr, [ip, r2]
0060f384  00 20 a0 e3                                      mov r2, #0
0060f388  03 50 a0 e1                                      mov r5, r3
0060f38c  00 00 9e e5                                      ldr r0, [lr]
0060f390  02 30 a0 e1                                      mov r3, r2
0060f394  7c 2d 01 eb                                      bl #0x65a98c
0060f398  04 50 84 e5                                      str r5, [r4, #4]
0060f39c  00 00 50 e3                                      cmp r0, #0
0060f3a0  00 00 84 e5                                      str r0, [r4]
0060f3a4  04 30 90 15                                      ldrne r3, [r0, #4]
0060f3a8  01 30 83 12                                      addne r3, r3, #1
0060f3ac  04 30 80 15                                      strne r3, [r0, #4]
0060f3b0  04 00 a0 e1                                      mov r0, r4
0060f3b4  0c d0 8d e2                                      add sp, sp, #0xc
0060f3b8  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0060f3bc  18 57 38 00 48 44 00 00                          .byte 0x18, 0x57, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0060f3c4, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC1EPNS_2io9IReadFileEPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0060f3c4  58 c0 9f e5                                      ldr ip, [pc, #0x58]
0060f3c8  58 30 9f e5                                      ldr r3, [pc, #0x58]
0060f3cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f3d0  0c c0 8f e0                                      add ip, pc, ip
0060f3d4  03 30 9c e7                                      ldr r3, [ip, r3]
0060f3d8  00 e0 a0 e3                                      mov lr, #0
0060f3dc  00 40 a0 e1                                      mov r4, r0
0060f3e0  00 60 93 e5                                      ldr r6, [r3]
0060f3e4  08 d0 4d e2                                      sub sp, sp, #8
0060f3e8  0e 30 a0 e1                                      mov r3, lr
0060f3ec  02 50 a0 e1                                      mov r5, r2
0060f3f0  06 00 a0 e1                                      mov r0, r6
0060f3f4  0e 20 a0 e1                                      mov r2, lr
0060f3f8  00 e0 8d e5                                      str lr, [sp]
0060f3fc  62 2d 01 eb                                      bl #0x65a98c
0060f400  04 50 84 e5                                      str r5, [r4, #4]
0060f404  00 00 50 e3                                      cmp r0, #0
0060f408  00 00 84 e5                                      str r0, [r4]
0060f40c  04 30 90 15                                      ldrne r3, [r0, #4]
0060f410  01 30 83 12                                      addne r3, r3, #1
0060f414  04 30 80 15                                      strne r3, [r0, #4]
0060f418  04 00 a0 e1                                      mov r0, r4
0060f41c  08 d0 8d e2                                      add sp, sp, #8
0060f420  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060f424  c0 56 38 00 48 44 00 00                          .byte 0xc0, 0x56, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0060f42c, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC2EPNS_2io9IReadFileEPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0060f42c  58 c0 9f e5                                      ldr ip, [pc, #0x58]
0060f430  58 30 9f e5                                      ldr r3, [pc, #0x58]
0060f434  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f438  0c c0 8f e0                                      add ip, pc, ip
0060f43c  03 30 9c e7                                      ldr r3, [ip, r3]
0060f440  00 e0 a0 e3                                      mov lr, #0
0060f444  00 40 a0 e1                                      mov r4, r0
0060f448  00 60 93 e5                                      ldr r6, [r3]
0060f44c  08 d0 4d e2                                      sub sp, sp, #8
0060f450  0e 30 a0 e1                                      mov r3, lr
0060f454  02 50 a0 e1                                      mov r5, r2
0060f458  06 00 a0 e1                                      mov r0, r6
0060f45c  0e 20 a0 e1                                      mov r2, lr
0060f460  00 e0 8d e5                                      str lr, [sp]
0060f464  48 2d 01 eb                                      bl #0x65a98c
0060f468  04 50 84 e5                                      str r5, [r4, #4]
0060f46c  00 00 50 e3                                      cmp r0, #0
0060f470  00 00 84 e5                                      str r0, [r4]
0060f474  04 30 90 15                                      ldrne r3, [r0, #4]
0060f478  01 30 83 12                                      addne r3, r3, #1
0060f47c  04 30 80 15                                      strne r3, [r0, #4]
0060f480  04 00 a0 e1                                      mov r0, r4
0060f484  08 d0 8d e2                                      add sp, sp, #8
0060f488  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060f48c  58 56 38 00 48 44 00 00                          .byte 0x58, 0x56, 0x38, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0060f924, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13constructSkinEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructSkin(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060f924  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f928  10 d0 4d e2                                      sub sp, sp, #0x10
0060f92c  04 c0 91 e5                                      ldr ip, [r1, #4]
0060f930  20 50 9d e5                                      ldr r5, [sp, #0x20]
0060f934  01 e0 a0 e1                                      mov lr, r1
0060f938  02 60 a0 e1                                      mov r6, r2
0060f93c  0c 10 a0 e1                                      mov r1, ip
0060f940  00 40 a0 e1                                      mov r4, r0
0060f944  00 c0 9c e5                                      ldr ip, [ip]
0060f948  0e 20 a0 e1                                      mov r2, lr
0060f94c  00 30 8d e5                                      str r3, [sp]
0060f950  0c 00 8d e2                                      add r0, sp, #0xc
0060f954  06 30 a0 e1                                      mov r3, r6
0060f958  04 50 8d e5                                      str r5, [sp, #4]
0060f95c  0f e0 a0 e1                                      mov lr, pc
0060f960  58 f0 9c e5                                      ldr pc, [ip, #0x58]
0060f964  05 00 a0 e1                                      mov r0, r5
0060f968  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060f96c  b0 2e 01 eb                                      bl #0x65b434
0060f970  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060f974  00 00 50 e3                                      cmp r0, #0
0060f978  00 00 84 e5                                      str r0, [r4]
0060f97c  04 30 90 15                                      ldrne r3, [r0, #4]
0060f980  01 30 83 12                                      addne r3, r3, #1
0060f984  04 30 80 15                                      strne r3, [r0, #4]
0060f988  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060f98c  00 00 50 e3                                      cmp r0, #0
0060f990  00 00 00 0a                                      beq #0x60f998
0060f994  fa 36 f4 eb                                      bl #0x31d584
0060f998  04 00 a0 e1                                      mov r0, r4
0060f99c  10 d0 8d e2                                      add sp, sp, #0x10
0060f9a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060f9a4, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructMorphEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructMorph(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060f9a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0060f9a8  10 d0 4d e2                                      sub sp, sp, #0x10
0060f9ac  04 c0 91 e5                                      ldr ip, [r1, #4]
0060f9b0  20 50 9d e5                                      ldr r5, [sp, #0x20]
0060f9b4  01 e0 a0 e1                                      mov lr, r1
0060f9b8  02 60 a0 e1                                      mov r6, r2
0060f9bc  0c 10 a0 e1                                      mov r1, ip
0060f9c0  00 40 a0 e1                                      mov r4, r0
0060f9c4  00 c0 9c e5                                      ldr ip, [ip]
0060f9c8  0e 20 a0 e1                                      mov r2, lr
0060f9cc  00 30 8d e5                                      str r3, [sp]
0060f9d0  0c 00 8d e2                                      add r0, sp, #0xc
0060f9d4  06 30 a0 e1                                      mov r3, r6
0060f9d8  04 50 8d e5                                      str r5, [sp, #4]
0060f9dc  0f e0 a0 e1                                      mov lr, pc
0060f9e0  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0060f9e4  05 00 a0 e1                                      mov r0, r5
0060f9e8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060f9ec  21 2e 01 eb                                      bl #0x65b278
0060f9f0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060f9f4  00 00 50 e3                                      cmp r0, #0
0060f9f8  00 00 84 e5                                      str r0, [r4]
0060f9fc  04 30 90 15                                      ldrne r3, [r0, #4]
0060fa00  01 30 83 12                                      addne r3, r3, #1
0060fa04  04 30 80 15                                      strne r3, [r0, #4]
0060fa08  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
0060fa0c  00 00 50 e3                                      cmp r0, #0
0060fa10  00 00 00 0a                                      beq #0x60fa18
0060fa14  da 36 f4 eb                                      bl #0x31d584
0060fa18  04 00 a0 e1                                      mov r0, r4
0060fa1c  10 d0 8d e2                                      add sp, sp, #0x10
0060fa20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060fa24, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060fa24  30 40 2d e9                                      push {r4, r5, lr}
0060fa28  00 c0 93 e5                                      ldr ip, [r3]
0060fa2c  0c d0 4d e2                                      sub sp, sp, #0xc
0060fa30  00 40 a0 e1                                      mov r4, r0
0060fa34  00 00 5c e3                                      cmp ip, #0
0060fa38  18 50 9d e5                                      ldr r5, [sp, #0x18]
0060fa3c  04 00 00 1a                                      bne #0x60fa54
0060fa40  00 50 8d e5                                      str r5, [sp]
0060fa44  b6 ff ff eb                                      bl #0x60f924
0060fa48  04 00 a0 e1                                      mov r0, r4
0060fa4c  0c d0 8d e2                                      add sp, sp, #0xc
0060fa50  30 80 bd e8                                      pop {r4, r5, pc}
0060fa54  01 00 5c e3                                      cmp ip, #1
0060fa58  00 30 a0 13                                      movne r3, #0
0060fa5c  00 30 80 15                                      strne r3, [r0]
0060fa60  f8 ff ff 1a                                      bne #0x60fa48
0060fa64  00 50 8d e5                                      str r5, [sp]
0060fa68  cd ff ff eb                                      bl #0x60f9a4
0060fa6c  f5 ff ff ea                                      b #0x60fa48

; FUNCTION 0x0060fa70, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060fa70  70 40 2d e9                                      push {r4, r5, r6, lr}
0060fa74  01 50 a0 e1                                      mov r5, r1
0060fa78  08 d0 4d e2                                      sub sp, sp, #8
0060fa7c  00 40 a0 e1                                      mov r4, r0
0060fa80  03 10 a0 e1                                      mov r1, r3
0060fa84  05 00 a0 e1                                      mov r0, r5
0060fa88  02 60 a0 e1                                      mov r6, r2
0060fa8c  68 fa ff eb                                      bl #0x60e434
0060fa90  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0060fa94  00 30 a0 e1                                      mov r3, r0
0060fa98  05 10 a0 e1                                      mov r1, r5
0060fa9c  04 00 a0 e1                                      mov r0, r4
0060faa0  06 20 a0 e1                                      mov r2, r6
0060faa4  00 c0 8d e5                                      str ip, [sp]
0060faa8  dd ff ff eb                                      bl #0x60fa24
0060faac  04 00 a0 e1                                      mov r0, r4
0060fab0  08 d0 8d e2                                      add sp, sp, #8
0060fab4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060fb54, declared_size=284, range_size=284, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructAnimatorEv
; demangled: glitch::collada::CColladaDatabase::constructAnimator() const
; decoder-mode: arm
0060fb54  70 40 2d e9                                      push {r4, r5, r6, lr}
0060fb58  00 30 90 e5                                      ldr r3, [r0]
0060fb5c  00 40 a0 e1                                      mov r4, r0
0060fb60  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060fb64  20 20 93 e5                                      ldr r2, [r3, #0x20]
0060fb68  4c 30 92 e5                                      ldr r3, [r2, #0x4c]
0060fb6c  00 00 53 e3                                      cmp r3, #0
0060fb70  00 60 a0 d3                                      movle r6, #0
0060fb74  0e 00 00 da                                      ble #0x60fbb4
0060fb78  00 50 a0 e3                                      mov r5, #0
0060fb7c  05 60 a0 e1                                      mov r6, r5
0060fb80  05 10 a0 e1                                      mov r1, r5
0060fb84  04 00 a0 e1                                      mov r0, r4
0060fb88  0e fa ff eb                                      bl #0x60e3c8
0060fb8c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0060fb90  01 50 85 e2                                      add r5, r5, #1
0060fb94  01 00 53 e3                                      cmp r3, #1
0060fb98  00 30 94 e5                                      ldr r3, [r4]
0060fb9c  01 60 86 02                                      addeq r6, r6, #1
0060fba0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060fba4  20 20 93 e5                                      ldr r2, [r3, #0x20]
0060fba8  4c 30 92 e5                                      ldr r3, [r2, #0x4c]
0060fbac  03 00 55 e1                                      cmp r5, r3
0060fbb0  f2 ff ff ba                                      blt #0x60fb80
0060fbb4  24 30 92 e5                                      ldr r3, [r2, #0x24]
0060fbb8  00 00 53 e3                                      cmp r3, #0
0060fbbc  01 00 00 1a                                      bne #0x60fbc8
0060fbc0  00 00 56 e3                                      cmp r6, #0
0060fbc4  25 00 00 0a                                      beq #0x60fc60
0060fbc8  04 30 94 e5                                      ldr r3, [r4, #4]
0060fbcc  34 20 82 e2                                      add r2, r2, #0x34
0060fbd0  04 10 a0 e1                                      mov r1, r4
0060fbd4  03 00 a0 e1                                      mov r0, r3
0060fbd8  00 30 93 e5                                      ldr r3, [r3]
0060fbdc  0f e0 a0 e1                                      mov lr, pc
0060fbe0  08 f0 93 e5                                      ldr pc, [r3, #8]
0060fbe4  00 30 94 e5                                      ldr r3, [r4]
0060fbe8  00 60 a0 e1                                      mov r6, r0
0060fbec  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060fbf0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060fbf4  24 20 93 e5                                      ldr r2, [r3, #0x24]
0060fbf8  00 00 52 e3                                      cmp r2, #0
0060fbfc  00 50 a0 c3                                      movgt r5, #0
0060fc00  11 00 00 da                                      ble #0x60fc4c
0060fc04  05 10 a0 e1                                      mov r1, r5
0060fc08  04 00 a0 e1                                      mov r0, r4
0060fc0c  d2 f9 ff eb                                      bl #0x60e35c
0060fc10  14 30 90 e5                                      ldr r3, [r0, #0x14]
0060fc14  00 10 a0 e1                                      mov r1, r0
0060fc18  01 50 85 e2                                      add r5, r5, #1
0060fc1c  00 00 53 e3                                      cmp r3, #0
0060fc20  06 00 a0 e1                                      mov r0, r6
0060fc24  02 00 00 0a                                      beq #0x60fc34
0060fc28  00 30 96 e5                                      ldr r3, [r6]
0060fc2c  0f e0 a0 e1                                      mov lr, pc
0060fc30  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0060fc34  00 30 94 e5                                      ldr r3, [r4]
0060fc38  24 30 93 e5                                      ldr r3, [r3, #0x24]
0060fc3c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0060fc40  24 20 93 e5                                      ldr r2, [r3, #0x24]
0060fc44  02 00 55 e1                                      cmp r5, r2
0060fc48  ed ff ff ba                                      blt #0x60fc04
0060fc4c  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
0060fc50  06 00 a0 e1                                      mov r0, r6
0060fc54  97 ff ff eb                                      bl #0x60fab8
0060fc58  06 00 a0 e1                                      mov r0, r6
0060fc5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060fc60  2c 30 92 e5                                      ldr r3, [r2, #0x2c]
0060fc64  00 00 53 e3                                      cmp r3, #0
0060fc68  d6 ff ff 1a                                      bne #0x60fbc8
0060fc6c  f9 ff ff ea                                      b #0x60fc58

; FUNCTION 0x0060fc70, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructImageEPNS0_6SImageEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructImage(glitch::collada::SImage*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060fc70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060fc74  00 60 52 e2                                      subs r6, r2, #0
0060fc78  00 50 a0 e1                                      mov r5, r0
0060fc7c  01 70 a0 e1                                      mov r7, r1
0060fc80  00 60 80 05                                      streq r6, [r0]
0060fc84  0b 00 00 0a                                      beq #0x60fcb8
0060fc88  00 10 a0 e3                                      mov r1, #0
0060fc8c  1c 00 a0 e3                                      mov r0, #0x1c
0060fc90  45 91 fc eb                                      bl #0x5341ac
0060fc94  07 10 a0 e1                                      mov r1, r7
0060fc98  06 20 a0 e1                                      mov r2, r6
0060fc9c  00 40 a0 e1                                      mov r4, r0
0060fca0  4b f9 ff eb                                      bl #0x60e1d4
0060fca4  00 00 54 e3                                      cmp r4, #0
0060fca8  00 40 85 e5                                      str r4, [r5]
0060fcac  04 30 94 15                                      ldrne r3, [r4, #4]
0060fcb0  01 30 83 12                                      addne r3, r3, #1
0060fcb4  04 30 84 15                                      strne r3, [r4, #4]
0060fcb8  05 00 a0 e1                                      mov r0, r5
0060fcbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0060fcc0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructImageEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructImage(int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0060fcc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0060fcc4  01 50 a0 e1                                      mov r5, r1
0060fcc8  00 40 a0 e1                                      mov r4, r0
0060fccc  02 10 a0 e1                                      mov r1, r2
0060fcd0  05 00 a0 e1                                      mov r0, r5
0060fcd4  03 60 a0 e1                                      mov r6, r3
0060fcd8  ba f9 ff eb                                      bl #0x60e3c8
0060fcdc  05 10 a0 e1                                      mov r1, r5
0060fce0  00 20 a0 e1                                      mov r2, r0
0060fce4  06 30 a0 e1                                      mov r3, r6
0060fce8  04 00 a0 e1                                      mov r0, r4
0060fcec  df ff ff eb                                      bl #0x60fc70
0060fcf0  04 00 a0 e1                                      mov r0, r4
0060fcf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00611ae0, declared_size=1608, range_size=1608, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase19getAnimationTrackExEPKNS0_10SAnimationE
; demangled: glitch::collada::CColladaDatabase::getAnimationTrackEx(glitch::collada::SAnimation const*)
; decoder-mode: arm
00611ae0  1c 36 9f e5                                      ldr r3, [pc, #0x61c]
00611ae4  70 40 2d e9                                      push {r4, r5, r6, lr}
00611ae8  00 40 50 e2                                      subs r4, r0, #0
00611aec  03 30 8f e0                                      add r3, pc, r3
00611af0  62 00 00 0a                                      beq #0x611c80
00611af4  10 20 94 e5                                      ldr r2, [r4, #0x10]
00611af8  08 20 92 e5                                      ldr r2, [r2, #8]
00611afc  01 20 42 e2                                      sub r2, r2, #1
00611b00  5a 00 52 e3                                      cmp r2, #0x5a
00611b04  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
00611b08  5c 00 00 ea                                      b #0x611c80
00611b0c  6c 00 00 ea                                      b #0x611cc4
00611b10  74 00 00 ea                                      b #0x611ce8
00611b14  7c 00 00 ea                                      b #0x611d0c
00611b18  84 00 00 ea                                      b #0x611d30
00611b1c  8c 00 00 ea                                      b #0x611d54
00611b20  94 00 00 ea                                      b #0x611d78
00611b24  93 00 00 ea                                      b #0x611d78
00611b28  92 00 00 ea                                      b #0x611d78
00611b2c  91 00 00 ea                                      b #0x611d78
00611b30  99 00 00 ea                                      b #0x611d9c
00611b34  a1 00 00 ea                                      b #0x611dc0
00611b38  a9 00 00 ea                                      b #0x611de4
00611b3c  b1 00 00 ea                                      b #0x611e08
00611b40  b9 00 00 ea                                      b #0x611e2c
00611b44  4d 00 00 ea                                      b #0x611c80
00611b48  bd 00 00 ea                                      b #0x611e44
00611b4c  4b 00 00 ea                                      b #0x611c80
00611b50  4a 00 00 ea                                      b #0x611c80
00611b54  49 00 00 ea                                      b #0x611c80
00611b58  bb 00 00 ea                                      b #0x611e4c
00611b5c  47 00 00 ea                                      b #0x611c80
00611b60  46 00 00 ea                                      b #0x611c80
00611b64  45 00 00 ea                                      b #0x611c80
00611b68  44 00 00 ea                                      b #0x611c80
00611b6c  43 00 00 ea                                      b #0x611c80
00611b70  42 00 00 ea                                      b #0x611c80
00611b74  41 00 00 ea                                      b #0x611c80
00611b78  b6 00 00 ea                                      b #0x611e58
00611b7c  b5 00 00 ea                                      b #0x611e58
00611b80  b4 00 00 ea                                      b #0x611e58
00611b84  b3 00 00 ea                                      b #0x611e58
00611b88  b2 00 00 ea                                      b #0x611e58
00611b8c  b4 00 00 ea                                      b #0x611e64
00611b90  b0 00 00 ea                                      b #0x611e58
00611b94  af 00 00 ea                                      b #0x611e58
00611b98  ae 00 00 ea                                      b #0x611e58
00611b9c  ad 00 00 ea                                      b #0x611e58
00611ba0  ac 00 00 ea                                      b #0x611e58
00611ba4  ae 00 00 ea                                      b #0x611e64
00611ba8  aa 00 00 ea                                      b #0x611e58
00611bac  a9 00 00 ea                                      b #0x611e58
00611bb0  a8 00 00 ea                                      b #0x611e58
00611bb4  a7 00 00 ea                                      b #0x611e58
00611bb8  a6 00 00 ea                                      b #0x611e58
00611bbc  a5 00 00 ea                                      b #0x611e58
00611bc0  a4 00 00 ea                                      b #0x611e58
00611bc4  a3 00 00 ea                                      b #0x611e58
00611bc8  a2 00 00 ea                                      b #0x611e58
00611bcc  a1 00 00 ea                                      b #0x611e58
00611bd0  a0 00 00 ea                                      b #0x611e58
00611bd4  9f 00 00 ea                                      b #0x611e58
00611bd8  9e 00 00 ea                                      b #0x611e58
00611bdc  9d 00 00 ea                                      b #0x611e58
00611be0  9c 00 00 ea                                      b #0x611e58
00611be4  9b 00 00 ea                                      b #0x611e58
00611be8  9a 00 00 ea                                      b #0x611e58
00611bec  9c 00 00 ea                                      b #0x611e64
00611bf0  9b 00 00 ea                                      b #0x611e64
00611bf4  97 00 00 ea                                      b #0x611e58
00611bf8  96 00 00 ea                                      b #0x611e58
00611bfc  95 00 00 ea                                      b #0x611e58
00611c00  94 00 00 ea                                      b #0x611e58
00611c04  93 00 00 ea                                      b #0x611e58
00611c08  92 00 00 ea                                      b #0x611e58
00611c0c  91 00 00 ea                                      b #0x611e58
00611c10  90 00 00 ea                                      b #0x611e58
00611c14  92 00 00 ea                                      b #0x611e64
00611c18  8e 00 00 ea                                      b #0x611e58
00611c1c  8d 00 00 ea                                      b #0x611e58
00611c20  8c 00 00 ea                                      b #0x611e58
00611c24  15 00 00 ea                                      b #0x611c80
00611c28  14 00 00 ea                                      b #0x611c80
00611c2c  13 00 00 ea                                      b #0x611c80
00611c30  12 00 00 ea                                      b #0x611c80
00611c34  11 00 00 ea                                      b #0x611c80
00611c38  10 00 00 ea                                      b #0x611c80
00611c3c  0f 00 00 ea                                      b #0x611c80
00611c40  0e 00 00 ea                                      b #0x611c80
00611c44  0d 00 00 ea                                      b #0x611c80
00611c48  0c 00 00 ea                                      b #0x611c80
00611c4c  0b 00 00 ea                                      b #0x611c80
00611c50  0a 00 00 ea                                      b #0x611c80
00611c54  09 00 00 ea                                      b #0x611c80
00611c58  08 00 00 ea                                      b #0x611c80
00611c5c  07 00 00 ea                                      b #0x611c80
00611c60  08 00 00 ea                                      b #0x611c88
00611c64  73 00 00 ea                                      b #0x611e38
00611c68  72 00 00 ea                                      b #0x611e38
00611c6c  71 00 00 ea                                      b #0x611e38
00611c70  70 00 00 ea                                      b #0x611e38
00611c74  6f 00 00 ea                                      b #0x611e38
00611c78  02 00 53 e3                                      cmp r3, #2
00611c7c  ba 00 00 0a                                      beq #0x611f6c
00611c80  00 00 a0 e3                                      mov r0, #0
00611c84  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611c88  08 20 94 e5                                      ldr r2, [r4, #8]
00611c8c  10 30 92 e5                                      ldr r3, [r2, #0x10]
00611c90  01 00 53 e3                                      cmp r3, #1
00611c94  75 00 00 0a                                      beq #0x611e70
00611c98  06 00 53 e3                                      cmp r3, #6
00611c9c  f7 ff ff 1a                                      bne #0x611c80
00611ca0  14 30 92 e5                                      ldr r3, [r2, #0x14]
00611ca4  01 30 43 e2                                      sub r3, r3, #1
00611ca8  03 00 53 e3                                      cmp r3, #3
00611cac  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00611cb0  f2 ff ff ea                                      b #0x611c80
00611cb4  b8 00 00 ea                                      b #0x611f9c
00611cb8  b5 00 00 ea                                      b #0x611f94
00611cbc  b2 00 00 ea                                      b #0x611f8c
00611cc0  af 00 00 ea                                      b #0x611f84
00611cc4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611cc8  00 00 53 e3                                      cmp r3, #0
00611ccc  88 00 00 0a                                      beq #0x611ef4
00611cd0  00 30 93 e5                                      ldr r3, [r3]
00611cd4  01 00 53 e3                                      cmp r3, #1
00611cd8  d5 00 00 0a                                      beq #0x612034
00611cdc  82 00 00 2a                                      bhs #0x611eec
00611ce0  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611ce4  b5 f9 ff ea                                      b #0x6103c0
00611ce8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611cec  00 00 53 e3                                      cmp r3, #0
00611cf0  97 00 00 0a                                      beq #0x611f54
00611cf4  00 30 93 e5                                      ldr r3, [r3]
00611cf8  01 00 53 e3                                      cmp r3, #1
00611cfc  c8 00 00 0a                                      beq #0x612024
00611d00  91 00 00 2a                                      bhs #0x611f4c
00611d04  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d08  1b fa ff ea                                      b #0x61057c
00611d0c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d10  00 00 53 e3                                      cmp r3, #0
00611d14  7a 00 00 0a                                      beq #0x611f04
00611d18  00 30 93 e5                                      ldr r3, [r3]
00611d1c  01 00 53 e3                                      cmp r3, #1
00611d20  bd 00 00 0a                                      beq #0x61201c
00611d24  74 00 00 2a                                      bhs #0x611efc
00611d28  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d2c  81 fa ff ea                                      b #0x610738
00611d30  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d34  00 00 53 e3                                      cmp r3, #0
00611d38  89 00 00 0a                                      beq #0x611f64
00611d3c  00 30 93 e5                                      ldr r3, [r3]
00611d40  01 00 53 e3                                      cmp r3, #1
00611d44  c0 00 00 0a                                      beq #0x61204c
00611d48  83 00 00 2a                                      bhs #0x611f5c
00611d4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d50  e7 fa ff ea                                      b #0x6108f4
00611d54  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d58  00 00 53 e3                                      cmp r3, #0
00611d5c  82 00 00 0a                                      beq #0x611f6c
00611d60  00 30 93 e5                                      ldr r3, [r3]
00611d64  01 00 53 e3                                      cmp r3, #1
00611d68  bd 00 00 0a                                      beq #0x612064
00611d6c  c1 ff ff 2a                                      bhs #0x611c78
00611d70  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d74  b3 f8 ff ea                                      b #0x610048
00611d78  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611d7c  00 00 53 e3                                      cmp r3, #0
00611d80  6f 00 00 0a                                      beq #0x611f44
00611d84  00 30 93 e5                                      ldr r3, [r3]
00611d88  01 00 53 e3                                      cmp r3, #1
00611d8c  b2 00 00 0a                                      beq #0x61205c
00611d90  69 00 00 2a                                      bhs #0x611f3c
00611d94  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611d98  19 f9 ff ea                                      b #0x610204
00611d9c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611da0  00 00 53 e3                                      cmp r3, #0
00611da4  62 00 00 0a                                      beq #0x611f34
00611da8  00 30 93 e5                                      ldr r3, [r3]
00611dac  01 00 53 e3                                      cmp r3, #1
00611db0  a7 00 00 0a                                      beq #0x612054
00611db4  5c 00 00 2a                                      bhs #0x611f2c
00611db8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611dbc  3b fb ff ea                                      b #0x610ab0
00611dc0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611dc4  00 00 53 e3                                      cmp r3, #0
00611dc8  55 00 00 0a                                      beq #0x611f24
00611dcc  00 30 93 e5                                      ldr r3, [r3]
00611dd0  01 00 53 e3                                      cmp r3, #1
00611dd4  94 00 00 0a                                      beq #0x61202c
00611dd8  4f 00 00 2a                                      bhs #0x611f1c
00611ddc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611de0  a1 fb ff ea                                      b #0x610c6c
00611de4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611de8  00 00 53 e3                                      cmp r3, #0
00611dec  48 00 00 0a                                      beq #0x611f14
00611df0  00 30 93 e5                                      ldr r3, [r3]
00611df4  01 00 53 e3                                      cmp r3, #1
00611df8  91 00 00 0a                                      beq #0x612044
00611dfc  42 00 00 2a                                      bhs #0x611f0c
00611e00  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611e04  07 fc ff ea                                      b #0x610e28
00611e08  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00611e0c  00 00 53 e3                                      cmp r3, #0
00611e10  59 00 00 0a                                      beq #0x611f7c
00611e14  00 30 93 e5                                      ldr r3, [r3]
00611e18  01 00 53 e3                                      cmp r3, #1
00611e1c  86 00 00 0a                                      beq #0x61203c
00611e20  53 00 00 2a                                      bhs #0x611f74
00611e24  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611e28  6d fc ff ea                                      b #0x610fe4
00611e2c  d4 22 9f e5                                      ldr r2, [pc, #0x2d4]
00611e30  02 00 93 e7                                      ldr r0, [r3, r2]
00611e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e38  cc 22 9f e5                                      ldr r2, [pc, #0x2cc]
00611e3c  02 00 93 e7                                      ldr r0, [r3, r2]
00611e40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611e48  8a fc ff ea                                      b #0x611078
00611e4c  bc 22 9f e5                                      ldr r2, [pc, #0x2bc]
00611e50  02 00 93 e7                                      ldr r0, [r3, r2]
00611e54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e58  b4 22 9f e5                                      ldr r2, [pc, #0x2b4]
00611e5c  02 00 93 e7                                      ldr r0, [r3, r2]
00611e60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e64  ac 22 9f e5                                      ldr r2, [pc, #0x2ac]
00611e68  02 00 93 e7                                      ldr r0, [r3, r2]
00611e6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611e70  14 30 92 e5                                      ldr r3, [r2, #0x14]
00611e74  03 00 53 e3                                      cmp r3, #3
00611e78  7b 00 00 0a                                      beq #0x61206c
00611e7c  04 00 53 e3                                      cmp r3, #4
00611e80  5b 00 00 0a                                      beq #0x611ff4
00611e84  01 00 53 e3                                      cmp r3, #1
00611e88  7c ff ff 1a                                      bne #0x611c80
00611e8c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00611e90  04 20 93 e5                                      ldr r2, [r3, #4]
00611e94  01 00 52 e3                                      cmp r2, #1
00611e98  78 ff ff da                                      ble #0x611c80
00611e9c  00 30 93 e5                                      ldr r3, [r3]
00611ea0  01 30 43 e2                                      sub r3, r3, #1
00611ea4  0e 00 53 e3                                      cmp r3, #0xe
00611ea8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00611eac  73 ff ff ea                                      b #0x611c80
00611eb0  53 00 00 ea                                      b #0x612004
00611eb4  50 00 00 ea                                      b #0x611ffc
00611eb8  70 ff ff ea                                      b #0x611c80
00611ebc  54 00 00 ea                                      b #0x612014
00611ec0  6e ff ff ea                                      b #0x611c80
00611ec4  6d ff ff ea                                      b #0x611c80
00611ec8  6c ff ff ea                                      b #0x611c80
00611ecc  4e 00 00 ea                                      b #0x61200c
00611ed0  6a ff ff ea                                      b #0x611c80
00611ed4  69 ff ff ea                                      b #0x611c80
00611ed8  68 ff ff ea                                      b #0x611c80
00611edc  67 ff ff ea                                      b #0x611c80
00611ee0  66 ff ff ea                                      b #0x611c80
00611ee4  65 ff ff ea                                      b #0x611c80
00611ee8  41 00 00 ea                                      b #0x611ff4
00611eec  02 00 53 e3                                      cmp r3, #2
00611ef0  62 ff ff 1a                                      bne #0x611c80
00611ef4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611ef8  e6 f8 ff ea                                      b #0x610298
00611efc  02 00 53 e3                                      cmp r3, #2
00611f00  5e ff ff 1a                                      bne #0x611c80
00611f04  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f08  c0 f9 ff ea                                      b #0x610610
00611f0c  02 00 53 e3                                      cmp r3, #2
00611f10  5a ff ff 1a                                      bne #0x611c80
00611f14  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f18  78 fb ff ea                                      b #0x610d00
00611f1c  02 00 53 e3                                      cmp r3, #2
00611f20  56 ff ff 1a                                      bne #0x611c80
00611f24  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f28  05 fb ff ea                                      b #0x610b44
00611f2c  02 00 53 e3                                      cmp r3, #2
00611f30  52 ff ff 1a                                      bne #0x611c80
00611f34  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f38  92 fa ff ea                                      b #0x610988
00611f3c  02 00 53 e3                                      cmp r3, #2
00611f40  4e ff ff 1a                                      bne #0x611c80
00611f44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f48  63 f8 ff ea                                      b #0x6100dc
00611f4c  02 00 53 e3                                      cmp r3, #2
00611f50  4a ff ff 1a                                      bne #0x611c80
00611f54  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f58  3d f9 ff ea                                      b #0x610454
00611f5c  02 00 53 e3                                      cmp r3, #2
00611f60  46 ff ff 1a                                      bne #0x611c80
00611f64  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f68  17 fa ff ea                                      b #0x6107cc
00611f6c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f70  ea f7 ff ea                                      b #0x60ff20
00611f74  02 00 53 e3                                      cmp r3, #2
00611f78  40 ff ff 1a                                      bne #0x611c80
00611f7c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f80  cd fb ff ea                                      b #0x610ebc
00611f84  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f88  d1 fd ff ea                                      b #0x6116d4
00611f8c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f90  aa fd ff ea                                      b #0x611640
00611f94  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611f98  83 fd ff ea                                      b #0x6115ac
00611f9c  78 51 9f e5                                      ldr r5, [pc, #0x178]
00611fa0  05 50 8f e0                                      add r5, pc, r5
00611fa4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00611fa8  01 00 13 e3                                      tst r3, #1
00611fac  30 00 00 0a                                      beq #0x612074
00611fb0  18 30 94 e5                                      ldr r3, [r4, #0x18]
00611fb4  06 00 93 e8                                      ldm r3, {r1, r2}
00611fb8  01 30 41 e2                                      sub r3, r1, #1
00611fbc  07 00 53 e3                                      cmp r3, #7
00611fc0  00 10 a0 83                                      movhi r1, #0
00611fc4  02 00 00 8a                                      bhi #0x611fd4
00611fc8  50 11 9f e5                                      ldr r1, [pc, #0x150]
00611fcc  01 10 8f e0                                      add r1, pc, r1
00611fd0  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
00611fd4  48 31 9f e5                                      ldr r3, [pc, #0x148]
00611fd8  01 20 42 e2                                      sub r2, r2, #1
00611fdc  02 21 82 e0                                      add r2, r2, r2, lsl #2
00611fe0  01 20 82 e0                                      add r2, r2, r1
00611fe4  03 30 8f e0                                      add r3, pc, r3
00611fe8  02 31 83 e0                                      add r3, r3, r2, lsl #2
00611fec  10 00 93 e5                                      ldr r0, [r3, #0x10]
00611ff0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00611ff4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00611ff8  93 fe ff ea                                      b #0x611a4c
00611ffc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612000  fd fd ff ea                                      b #0x6117fc
00612004  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612008  d6 fd ff ea                                      b #0x611768
0061200c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612010  43 fe ff ea                                      b #0x611924
00612014  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612018  1c fe ff ea                                      b #0x611890
0061201c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612020  9f f9 ff ea                                      b #0x6106a4
00612024  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612028  2e f9 ff ea                                      b #0x6104e8
0061202c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612030  e8 fa ff ea                                      b #0x610bd8
00612034  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612038  bb f8 ff ea                                      b #0x61032c
0061203c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612040  c2 fb ff ea                                      b #0x610f50
00612044  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612048  51 fb ff ea                                      b #0x610d94
0061204c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612050  02 fa ff ea                                      b #0x610860
00612054  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612058  6f fa ff ea                                      b #0x610a1c
0061205c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612060  42 f8 ff ea                                      b #0x610170
00612064  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612068  d1 f7 ff ea                                      b #0x60ffb4
0061206c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00612070  50 fe ff ea                                      b #0x6119b8
00612074  0c 60 85 e2                                      add r6, r5, #0xc
00612078  06 00 a0 e1                                      mov r0, r6
0061207c  ba f1 f3 eb                                      bl #0x30e76c
00612080  00 00 50 e3                                      cmp r0, #0
00612084  c9 ff ff 0a                                      beq #0x611fb0
00612088  1f fc ff eb                                      bl #0x61110c
0061208c  10 00 85 e5                                      str r0, [r5, #0x10]
00612090  1d fc ff eb                                      bl #0x61110c
00612094  14 00 85 e5                                      str r0, [r5, #0x14]
00612098  43 fd ff eb                                      bl #0x6115ac
0061209c  24 00 85 e5                                      str r0, [r5, #0x24]
006120a0  3e fc ff eb                                      bl #0x6111a0
006120a4  28 00 85 e5                                      str r0, [r5, #0x28]
006120a8  61 fc ff eb                                      bl #0x611234
006120ac  2c 00 85 e5                                      str r0, [r5, #0x2c]
006120b0  62 fd ff eb                                      bl #0x611640
006120b4  38 00 85 e5                                      str r0, [r5, #0x38]
006120b8  82 fc ff eb                                      bl #0x6112c8
006120bc  3c 00 85 e5                                      str r0, [r5, #0x3c]
006120c0  80 fc ff eb                                      bl #0x6112c8
006120c4  40 00 85 e5                                      str r0, [r5, #0x40]
006120c8  7e fc ff eb                                      bl #0x6112c8
006120cc  44 00 85 e5                                      str r0, [r5, #0x44]
006120d0  7f fd ff eb                                      bl #0x6116d4
006120d4  4c 00 85 e5                                      str r0, [r5, #0x4c]
006120d8  9f fc ff eb                                      bl #0x61135c
006120dc  50 00 85 e5                                      str r0, [r5, #0x50]
006120e0  c2 fc ff eb                                      bl #0x6113f0
006120e4  54 00 85 e5                                      str r0, [r5, #0x54]
006120e8  e5 fc ff eb                                      bl #0x611484
006120ec  58 00 85 e5                                      str r0, [r5, #0x58]
006120f0  08 fd ff eb                                      bl #0x611518
006120f4  5c 00 85 e5                                      str r0, [r5, #0x5c]
006120f8  06 00 a0 e1                                      mov r0, r6
006120fc  4e f2 f3 eb                                      bl #0x30ea3c
00612100  aa ff ff ea                                      b #0x611fb0
; mapping-symbol data/literal pool
00612104  a4 2f 38 00 24 0f 00 00 84 2d 00 00 80 40 00 00  .byte 0xa4, 0x2f, 0x38, 0x00, 0x24, 0x0f, 0x00, 0x00, 0x84, 0x2d, 0x00, 0x00, 0x80, 0x40, 0x00, 0x00
00612114  b0 23 00 00 d0 49 00 00 74 4d 3e 00 98 2d 2d 00  .byte 0xb0, 0x23, 0x00, 0x00, 0xd0, 0x49, 0x00, 0x00, 0x74, 0x4d, 0x3e, 0x00, 0x98, 0x2d, 0x2d, 0x00
00612124  30 4d 3e 00                                      .byte 0x30, 0x4d, 0x3e, 0x00

; FUNCTION 0x006192f0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC1EPKS1_PKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(glitch::collada::CColladaDatabase const*, char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
006192f0  44 c0 9f e5                                      ldr ip, [pc, #0x44]
006192f4  70 40 2d e9                                      push {r4, r5, r6, lr}
006192f8  00 40 a0 e1                                      mov r4, r0
006192fc  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00619300  0c c0 8f e0                                      add ip, pc, ip
00619304  03 50 a0 e1                                      mov r5, r3
00619308  00 00 9c e7                                      ldr r0, [ip, r0]
0061930c  01 30 a0 e3                                      mov r3, #1
00619310  00 10 91 e5                                      ldr r1, [r1]
00619314  00 00 90 e5                                      ldr r0, [r0]
00619318  55 06 01 eb                                      bl #0x65ac74
0061931c  04 50 84 e5                                      str r5, [r4, #4]
00619320  00 00 50 e3                                      cmp r0, #0
00619324  00 00 84 e5                                      str r0, [r4]
00619328  04 30 90 15                                      ldrne r3, [r0, #4]
0061932c  01 30 83 12                                      addne r3, r3, #1
00619330  04 30 80 15                                      strne r3, [r0, #4]
00619334  04 00 a0 e1                                      mov r0, r4
00619338  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0061933c  90 b7 37 00 48 44 00 00                          .byte 0x90, 0xb7, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00619344, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseC2EPKS1_PKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::CColladaDatabase(glitch::collada::CColladaDatabase const*, char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
00619344  44 c0 9f e5                                      ldr ip, [pc, #0x44]
00619348  70 40 2d e9                                      push {r4, r5, r6, lr}
0061934c  00 40 a0 e1                                      mov r4, r0
00619350  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00619354  0c c0 8f e0                                      add ip, pc, ip
00619358  03 50 a0 e1                                      mov r5, r3
0061935c  00 00 9c e7                                      ldr r0, [ip, r0]
00619360  01 30 a0 e3                                      mov r3, #1
00619364  00 10 91 e5                                      ldr r1, [r1]
00619368  00 00 90 e5                                      ldr r0, [r0]
0061936c  40 06 01 eb                                      bl #0x65ac74
00619370  04 50 84 e5                                      str r5, [r4, #4]
00619374  00 00 50 e3                                      cmp r0, #0
00619378  00 00 84 e5                                      str r0, [r4]
0061937c  04 30 90 15                                      ldrne r3, [r0, #4]
00619380  01 30 83 12                                      addne r3, r3, #1
00619384  04 30 80 15                                      strne r3, [r0, #4]
00619388  04 00 a0 e1                                      mov r0, r4
0061938c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00619390  3c b7 37 00 48 44 00 00                          .byte 0x3c, 0xb7, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x00619398, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructCameraEPNS0_7SCameraEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCamera(glitch::collada::SCamera*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
00619398  00 30 51 e2                                      subs r3, r1, #0
0061939c  70 40 2d e9                                      push {r4, r5, r6, lr}
006193a0  02 40 a0 e1                                      mov r4, r2
006193a4  03 50 a0 01                                      moveq r5, r3
006193a8  0a 00 00 0a                                      beq #0x6193d8
006193ac  04 c0 90 e5                                      ldr ip, [r0, #4]
006193b0  00 10 a0 e1                                      mov r1, r0
006193b4  03 20 a0 e1                                      mov r2, r3
006193b8  0c 00 a0 e1                                      mov r0, ip
006193bc  00 30 9c e5                                      ldr r3, [ip]
006193c0  0f e0 a0 e1                                      mov lr, pc
006193c4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
006193c8  00 50 a0 e1                                      mov r5, r0
006193cc  05 10 a0 e1                                      mov r1, r5
006193d0  04 00 a0 e1                                      mov r0, r4
006193d4  b4 07 01 eb                                      bl #0x65b2ac
006193d8  05 00 a0 e1                                      mov r0, r5
006193dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006193e0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructCameraEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCamera(int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
006193e0  70 40 2d e9                                      push {r4, r5, r6, lr}
006193e4  02 40 a0 e1                                      mov r4, r2
006193e8  00 50 a0 e1                                      mov r5, r0
006193ec  e7 d3 ff eb                                      bl #0x60e390
006193f0  04 20 a0 e1                                      mov r2, r4
006193f4  00 10 a0 e1                                      mov r1, r0
006193f8  05 00 a0 e1                                      mov r0, r5
006193fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00619400  e4 ff ff ea                                      b #0x619398

; FUNCTION 0x00619404, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructLightEPNS0_6SLightEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructLight(glitch::collada::SLight*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
00619404  70 40 2d e9                                      push {r4, r5, r6, lr}
00619408  00 50 51 e2                                      subs r5, r1, #0
0061940c  02 40 a0 e1                                      mov r4, r2
00619410  0c 00 00 0a                                      beq #0x619448
00619414  04 30 90 e5                                      ldr r3, [r0, #4]
00619418  05 20 a0 e1                                      mov r2, r5
0061941c  00 10 a0 e1                                      mov r1, r0
00619420  03 00 a0 e1                                      mov r0, r3
00619424  00 30 93 e5                                      ldr r3, [r3]
00619428  0f e0 a0 e1                                      mov lr, pc
0061942c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00619430  00 50 a0 e1                                      mov r5, r0
00619434  05 10 a0 e1                                      mov r1, r5
00619438  04 00 a0 e1                                      mov r0, r4
0061943c  80 07 01 eb                                      bl #0x65b244
00619440  05 00 a0 e1                                      mov r0, r5
00619444  70 80 bd e8                                      pop {r4, r5, r6, pc}
00619448  05 00 a0 e1                                      mov r0, r5
0061944c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00619450, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructLightEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructLight(int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
00619450  70 40 2d e9                                      push {r4, r5, r6, lr}
00619454  02 40 a0 e1                                      mov r4, r2
00619458  00 50 a0 e1                                      mov r5, r0
0061945c  d2 d3 ff eb                                      bl #0x60e3ac
00619460  04 20 a0 e1                                      mov r2, r4
00619464  00 10 a0 e1                                      mov r1, r0
00619468  05 00 a0 e1                                      mov r0, r5
0061946c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00619470  e3 ff ff ea                                      b #0x619404

; FUNCTION 0x00619474, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseD1Ev
; demangled: glitch::collada::CColladaDatabase::~CColladaDatabase()
; decoder-mode: arm
00619474  70 40 2d e9                                      push {r4, r5, r6, lr}
00619478  00 40 a0 e1                                      mov r4, r0
0061947c  00 00 90 e5                                      ldr r0, [r0]
00619480  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00619484  00 00 50 e3                                      cmp r0, #0
00619488  05 50 8f e0                                      add r5, pc, r5
0061948c  0d 00 00 0a                                      beq #0x6194c8
00619490  04 30 90 e5                                      ldr r3, [r0, #4]
00619494  00 00 53 e3                                      cmp r3, #0
00619498  0a 00 00 0a                                      beq #0x6194c8
0061949c  38 10 f4 eb                                      bl #0x31d584
006194a0  60 30 9f e5                                      ldr r3, [pc, #0x60]
006194a4  03 60 95 e7                                      ldr r6, [r5, r3]
006194a8  00 30 96 e5                                      ldr r3, [r6]
006194ac  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
006194b0  00 00 53 e3                                      cmp r3, #0
006194b4  03 00 00 0a                                      beq #0x6194c8
006194b8  00 30 94 e5                                      ldr r3, [r4]
006194bc  04 30 93 e5                                      ldr r3, [r3, #4]
006194c0  01 00 53 e3                                      cmp r3, #1
006194c4  03 00 00 0a                                      beq #0x6194d8
006194c8  00 30 a0 e3                                      mov r3, #0
006194cc  00 30 84 e5                                      str r3, [r4]
006194d0  04 00 a0 e1                                      mov r0, r4
006194d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006194d8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006194dc  04 10 a0 e1                                      mov r1, r4
006194e0  03 30 95 e7                                      ldr r3, [r5, r3]
006194e4  00 00 93 e5                                      ldr r0, [r3]
006194e8  0a c9 ff eb                                      bl #0x60b918
006194ec  00 30 94 e5                                      ldr r3, [r4]
006194f0  00 00 96 e5                                      ldr r0, [r6]
006194f4  00 20 a0 e3                                      mov r2, #0
006194f8  20 10 93 e5                                      ldr r1, [r3, #0x20]
006194fc  97 01 01 eb                                      bl #0x659b60
00619500  f0 ff ff ea                                      b #0x6194c8
; mapping-symbol data/literal pool
00619504  08 b6 37 00 48 44 00 00 74 09 00 00              .byte 0x08, 0xb6, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x00619510, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructAnimator(glitch::io::IReadFile*, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
00619510  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00619514  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
00619518  00 70 52 e2                                      subs r7, r2, #0
0061951c  10 d0 4d e2                                      sub sp, sp, #0x10
00619520  04 40 8f e0                                      add r4, pc, r4
00619524  01 c0 a0 e1                                      mov ip, r1
00619528  20 00 00 0a                                      beq #0x6195b0
0061952c  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
00619530  00 20 a0 e3                                      mov r2, #0
00619534  00 c0 8d e5                                      str ip, [sp]
00619538  05 60 94 e7                                      ldr r6, [r4, r5]
0061953c  00 10 a0 e1                                      mov r1, r0
00619540  02 30 a0 e1                                      mov r3, r2
00619544  00 00 96 e5                                      ldr r0, [r6]
00619548  0f 05 01 eb                                      bl #0x65a98c
0061954c  00 00 50 e3                                      cmp r0, #0
00619550  00 70 a0 01                                      moveq r7, r0
00619554  12 00 00 0a                                      beq #0x6195a4
00619558  00 30 96 e5                                      ldr r3, [r6]
0061955c  00 20 a0 e3                                      mov r2, #0
00619560  08 60 8d e2                                      add r6, sp, #8
00619564  28 80 d3 e5                                      ldrb r8, [r3, #0x28]
00619568  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061956c  0c 70 8d e5                                      str r7, [sp, #0xc]
00619570  08 00 8d e5                                      str r0, [sp, #8]
00619574  04 30 90 e5                                      ldr r3, [r0, #4]
00619578  02 00 53 e1                                      cmp r3, r2
0061957c  01 30 83 12                                      addne r3, r3, #1
00619580  04 30 80 15                                      strne r3, [r0, #4]
00619584  06 00 a0 e1                                      mov r0, r6
00619588  71 d9 ff eb                                      bl #0x60fb54
0061958c  00 70 a0 e1                                      mov r7, r0
00619590  06 00 a0 e1                                      mov r0, r6
00619594  b6 ff ff eb                                      bl #0x619474
00619598  05 30 94 e7                                      ldr r3, [r4, r5]
0061959c  00 30 93 e5                                      ldr r3, [r3]
006195a0  28 80 c3 e5                                      strb r8, [r3, #0x28]
006195a4  07 00 a0 e1                                      mov r0, r7
006195a8  10 d0 8d e2                                      add sp, sp, #0x10
006195ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006195b0  0c 30 9f e5                                      ldr r3, [pc, #0xc]
006195b4  03 70 94 e7                                      ldr r7, [r4, r3]
006195b8  db ff ff ea                                      b #0x61952c
; mapping-symbol data/literal pool
006195bc  70 b5 37 00 48 44 00 00 10 47 00 00              .byte 0x70, 0xb5, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x006195c8, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPNS_2io9IReadFileEPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructAnimator(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
006195c8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006195cc  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
006195d0  00 80 51 e2                                      subs r8, r1, #0
006195d4  14 d0 4d e2                                      sub sp, sp, #0x14
006195d8  00 10 a0 e1                                      mov r1, r0
006195dc  04 40 8f e0                                      add r4, pc, r4
006195e0  1f 00 00 0a                                      beq #0x619664
006195e4  88 60 9f e5                                      ldr r6, [pc, #0x88]
006195e8  00 50 a0 e3                                      mov r5, #0
006195ec  05 20 a0 e1                                      mov r2, r5
006195f0  06 70 94 e7                                      ldr r7, [r4, r6]
006195f4  05 30 a0 e1                                      mov r3, r5
006195f8  00 00 97 e5                                      ldr r0, [r7]
006195fc  00 50 8d e5                                      str r5, [sp]
00619600  e1 04 01 eb                                      bl #0x65a98c
00619604  00 00 50 e3                                      cmp r0, #0
00619608  00 70 a0 01                                      moveq r7, r0
0061960c  11 00 00 0a                                      beq #0x619658
00619610  00 30 97 e5                                      ldr r3, [r7]
00619614  28 a0 d3 e5                                      ldrb sl, [r3, #0x28]
00619618  28 50 c3 e5                                      strb r5, [r3, #0x28]
0061961c  08 00 8d e5                                      str r0, [sp, #8]
00619620  0c 80 8d e5                                      str r8, [sp, #0xc]
00619624  04 30 90 e5                                      ldr r3, [r0, #4]
00619628  08 50 8d e2                                      add r5, sp, #8
0061962c  00 00 53 e3                                      cmp r3, #0
00619630  01 30 83 12                                      addne r3, r3, #1
00619634  04 30 80 15                                      strne r3, [r0, #4]
00619638  05 00 a0 e1                                      mov r0, r5
0061963c  44 d9 ff eb                                      bl #0x60fb54
00619640  00 70 a0 e1                                      mov r7, r0
00619644  05 00 a0 e1                                      mov r0, r5
00619648  89 ff ff eb                                      bl #0x619474
0061964c  06 30 94 e7                                      ldr r3, [r4, r6]
00619650  00 30 93 e5                                      ldr r3, [r3]
00619654  28 a0 c3 e5                                      strb sl, [r3, #0x28]
00619658  07 00 a0 e1                                      mov r0, r7
0061965c  14 d0 8d e2                                      add sp, sp, #0x14
00619660  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00619664  0c 30 9f e5                                      ldr r3, [pc, #0xc]
00619668  03 80 94 e7                                      ldr r8, [r4, r3]
0061966c  dc ff ff ea                                      b #0x6195e4
; mapping-symbol data/literal pool
00619670  b4 b4 37 00 48 44 00 00 10 47 00 00              .byte 0xb4, 0xb4, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0061967c, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructAnimator(char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061967c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00619680  94 40 9f e5                                      ldr r4, [pc, #0x94]
00619684  00 70 51 e2                                      subs r7, r1, #0
00619688  08 d0 4d e2                                      sub sp, sp, #8
0061968c  00 10 a0 e1                                      mov r1, r0
00619690  04 40 8f e0                                      add r4, pc, r4
00619694  1d 00 00 0a                                      beq #0x619710
00619698  80 50 9f e5                                      ldr r5, [pc, #0x80]
0061969c  00 20 a0 e3                                      mov r2, #0
006196a0  02 30 a0 e1                                      mov r3, r2
006196a4  05 60 94 e7                                      ldr r6, [r4, r5]
006196a8  00 00 96 e5                                      ldr r0, [r6]
006196ac  6a 05 01 eb                                      bl #0x65ac5c
006196b0  00 00 50 e3                                      cmp r0, #0
006196b4  00 70 a0 01                                      moveq r7, r0
006196b8  11 00 00 0a                                      beq #0x619704
006196bc  00 30 96 e5                                      ldr r3, [r6]
006196c0  00 20 a0 e3                                      mov r2, #0
006196c4  0d 60 a0 e1                                      mov r6, sp
006196c8  28 80 d3 e5                                      ldrb r8, [r3, #0x28]
006196cc  28 20 c3 e5                                      strb r2, [r3, #0x28]
006196d0  81 00 8d e8                                      stm sp, {r0, r7}
006196d4  04 30 90 e5                                      ldr r3, [r0, #4]
006196d8  02 00 53 e1                                      cmp r3, r2
006196dc  01 30 83 12                                      addne r3, r3, #1
006196e0  04 30 80 15                                      strne r3, [r0, #4]
006196e4  0d 00 a0 e1                                      mov r0, sp
006196e8  19 d9 ff eb                                      bl #0x60fb54
006196ec  00 70 a0 e1                                      mov r7, r0
006196f0  0d 00 a0 e1                                      mov r0, sp
006196f4  5e ff ff eb                                      bl #0x619474
006196f8  05 30 94 e7                                      ldr r3, [r4, r5]
006196fc  00 30 93 e5                                      ldr r3, [r3]
00619700  28 80 c3 e5                                      strb r8, [r3, #0x28]
00619704  07 00 a0 e1                                      mov r0, r7
00619708  08 d0 8d e2                                      add sp, sp, #8
0061970c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00619710  0c 30 9f e5                                      ldr r3, [pc, #0xc]
00619714  03 70 94 e7                                      ldr r7, [r4, r3]
00619718  de ff ff ea                                      b #0x619698
; mapping-symbol data/literal pool
0061971c  00 b4 37 00 48 44 00 00 10 47 00 00              .byte 0x00, 0xb4, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x00619784, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabaseD2Ev
; demangled: glitch::collada::CColladaDatabase::~CColladaDatabase()
; decoder-mode: arm
00619784  70 40 2d e9                                      push {r4, r5, r6, lr}
00619788  00 40 a0 e1                                      mov r4, r0
0061978c  00 00 90 e5                                      ldr r0, [r0]
00619790  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00619794  00 00 50 e3                                      cmp r0, #0
00619798  05 50 8f e0                                      add r5, pc, r5
0061979c  0d 00 00 0a                                      beq #0x6197d8
006197a0  04 30 90 e5                                      ldr r3, [r0, #4]
006197a4  00 00 53 e3                                      cmp r3, #0
006197a8  0a 00 00 0a                                      beq #0x6197d8
006197ac  74 0f f4 eb                                      bl #0x31d584
006197b0  60 30 9f e5                                      ldr r3, [pc, #0x60]
006197b4  03 60 95 e7                                      ldr r6, [r5, r3]
006197b8  00 30 96 e5                                      ldr r3, [r6]
006197bc  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
006197c0  00 00 53 e3                                      cmp r3, #0
006197c4  03 00 00 0a                                      beq #0x6197d8
006197c8  00 30 94 e5                                      ldr r3, [r4]
006197cc  04 30 93 e5                                      ldr r3, [r3, #4]
006197d0  01 00 53 e3                                      cmp r3, #1
006197d4  03 00 00 0a                                      beq #0x6197e8
006197d8  00 30 a0 e3                                      mov r3, #0
006197dc  00 30 84 e5                                      str r3, [r4]
006197e0  04 00 a0 e1                                      mov r0, r4
006197e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006197e8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
006197ec  04 10 a0 e1                                      mov r1, r4
006197f0  03 30 95 e7                                      ldr r3, [r5, r3]
006197f4  00 00 93 e5                                      ldr r0, [r3]
006197f8  46 c8 ff eb                                      bl #0x60b918
006197fc  00 30 94 e5                                      ldr r3, [r4]
00619800  00 00 96 e5                                      ldr r0, [r6]
00619804  00 20 a0 e3                                      mov r2, #0
00619808  20 10 93 e5                                      ldr r1, [r3, #0x20]
0061980c  d3 00 01 eb                                      bl #0x659b60
00619810  f0 ff ff ea                                      b #0x6197d8
; mapping-symbol data/literal pool
00619814  f8 b2 37 00 48 44 00 00 74 09 00 00              .byte 0xf8, 0xb2, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x74, 0x09, 0x00, 0x00

; FUNCTION 0x0061a574, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14getGNPSEmitterEPKc
; demangled: glitch::collada::CColladaDatabase::getGNPSEmitter(char const*) const
; decoder-mode: arm
0061a574  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a578  00 30 90 e5                                      ldr r3, [r0]
0061a57c  01 70 a0 e1                                      mov r7, r1
0061a580  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a584  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a588  80 60 93 e5                                      ldr r6, [r3, #0x80]
0061a58c  00 00 56 e3                                      cmp r6, #0
0061a590  0d 00 00 da                                      ble #0x61a5cc
0061a594  84 40 93 e5                                      ldr r4, [r3, #0x84]
0061a598  00 50 a0 e3                                      mov r5, #0
0061a59c  02 00 00 ea                                      b #0x61a5ac
0061a5a0  06 00 55 e1                                      cmp r5, r6
0061a5a4  e8 40 84 e2                                      add r4, r4, #0xe8
0061a5a8  07 00 00 0a                                      beq #0x61a5cc
0061a5ac  00 00 94 e5                                      ldr r0, [r4]
0061a5b0  07 10 a0 e1                                      mov r1, r7
0061a5b4  58 cf f3 eb                                      bl #0x30e31c
0061a5b8  00 00 50 e3                                      cmp r0, #0
0061a5bc  01 50 85 e2                                      add r5, r5, #1
0061a5c0  f6 ff ff 1a                                      bne #0x61a5a0
0061a5c4  04 00 a0 e1                                      mov r0, r4
0061a5c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a5cc  00 00 a0 e3                                      mov r0, #0
0061a5d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a5d4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPKcPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructGNPSEmitter(char const*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a5d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a5d8  18 40 9d e5                                      ldr r4, [sp, #0x18]
0061a5dc  02 60 a0 e1                                      mov r6, r2
0061a5e0  03 50 a0 e1                                      mov r5, r3
0061a5e4  00 70 a0 e1                                      mov r7, r0
0061a5e8  e1 ff ff eb                                      bl #0x61a574
0061a5ec  06 20 a0 e1                                      mov r2, r6
0061a5f0  00 10 a0 e1                                      mov r1, r0
0061a5f4  05 30 a0 e1                                      mov r3, r5
0061a5f8  07 00 a0 e1                                      mov r0, r7
0061a5fc  18 40 8d e5                                      str r4, [sp, #0x18]
0061a600  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0061a604  82 d0 ff ea                                      b #0x60e814

; FUNCTION 0x0061a608, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_20SInstanceGNPSEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructGNPSEmitter(glitch::collada::SInstanceGNPSEmitter*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a608  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061a60c  01 40 a0 e1                                      mov r4, r1
0061a610  04 10 91 e5                                      ldr r1, [r1, #4]
0061a614  0c d0 4d e2                                      sub sp, sp, #0xc
0061a618  00 30 8d e5                                      str r3, [sp]
0061a61c  01 10 81 e2                                      add r1, r1, #1
0061a620  18 30 84 e2                                      add r3, r4, #0x18
0061a624  00 50 a0 e1                                      mov r5, r0
0061a628  02 60 a0 e1                                      mov r6, r2
0061a62c  e8 ff ff eb                                      bl #0x61a5d4
0061a630  00 a0 50 e2                                      subs sl, r0, #0
0061a634  12 00 00 0a                                      beq #0x61a684
0061a638  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0061a63c  00 00 53 e3                                      cmp r3, #0
0061a640  0f 00 00 da                                      ble #0x61a684
0061a644  00 70 a0 e3                                      mov r7, #0
0061a648  07 80 a0 e1                                      mov r8, r7
0061a64c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0061a650  05 00 a0 e1                                      mov r0, r5
0061a654  01 80 88 e2                                      add r8, r8, #1
0061a658  07 30 83 e0                                      add r3, r3, r7
0061a65c  08 10 93 e5                                      ldr r1, [r3, #8]
0061a660  66 cf ff eb                                      bl #0x60e400
0061a664  06 20 a0 e1                                      mov r2, r6
0061a668  00 10 a0 e1                                      mov r1, r0
0061a66c  0a 00 a0 e1                                      mov r0, sl
0061a670  6a fc ff eb                                      bl #0x619820
0061a674  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0061a678  3c 70 87 e2                                      add r7, r7, #0x3c
0061a67c  03 00 58 e1                                      cmp r8, r3
0061a680  f1 ff ff ba                                      blt #0x61a64c
0061a684  0a 00 a0 e1                                      mov r0, sl
0061a688  0c d0 8d e2                                      add sp, sp, #0xc
0061a68c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0061a690, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14getVisualSceneEPKc
; demangled: glitch::collada::CColladaDatabase::getVisualScene(char const*) const
; decoder-mode: arm
0061a690  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a694  00 30 90 e5                                      ldr r3, [r0]
0061a698  01 70 a0 e1                                      mov r7, r1
0061a69c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a6a0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a6a4  98 60 93 e5                                      ldr r6, [r3, #0x98]
0061a6a8  00 00 56 e3                                      cmp r6, #0
0061a6ac  0d 00 00 da                                      ble #0x61a6e8
0061a6b0  9c 40 93 e5                                      ldr r4, [r3, #0x9c]
0061a6b4  00 50 a0 e3                                      mov r5, #0
0061a6b8  02 00 00 ea                                      b #0x61a6c8
0061a6bc  06 00 55 e1                                      cmp r5, r6
0061a6c0  10 40 84 e2                                      add r4, r4, #0x10
0061a6c4  07 00 00 0a                                      beq #0x61a6e8
0061a6c8  00 00 94 e5                                      ldr r0, [r4]
0061a6cc  07 10 a0 e1                                      mov r1, r7
0061a6d0  11 cf f3 eb                                      bl #0x30e31c
0061a6d4  00 00 50 e3                                      cmp r0, #0
0061a6d8  01 50 85 e2                                      add r5, r5, #1
0061a6dc  f6 ff ff 1a                                      bne #0x61a6bc
0061a6e0  04 00 a0 e1                                      mov r0, r4
0061a6e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a6e8  00 00 a0 e3                                      mov r0, #0
0061a6ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a6f0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase10getCoronasEPKc
; demangled: glitch::collada::CColladaDatabase::getCoronas(char const*) const
; decoder-mode: arm
0061a6f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a6f4  00 30 90 e5                                      ldr r3, [r0]
0061a6f8  01 70 a0 e1                                      mov r7, r1
0061a6fc  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a700  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a704  90 60 93 e5                                      ldr r6, [r3, #0x90]
0061a708  00 00 56 e3                                      cmp r6, #0
0061a70c  0d 00 00 da                                      ble #0x61a748
0061a710  94 40 93 e5                                      ldr r4, [r3, #0x94]
0061a714  00 50 a0 e3                                      mov r5, #0
0061a718  02 00 00 ea                                      b #0x61a728
0061a71c  06 00 55 e1                                      cmp r5, r6
0061a720  24 40 84 e2                                      add r4, r4, #0x24
0061a724  07 00 00 0a                                      beq #0x61a748
0061a728  00 00 94 e5                                      ldr r0, [r4]
0061a72c  07 10 a0 e1                                      mov r1, r7
0061a730  f9 ce f3 eb                                      bl #0x30e31c
0061a734  00 00 50 e3                                      cmp r0, #0
0061a738  01 50 85 e2                                      add r5, r5, #1
0061a73c  f6 ff ff 1a                                      bne #0x61a71c
0061a740  04 00 a0 e1                                      mov r0, r4
0061a744  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a748  00 00 a0 e3                                      mov r0, #0
0061a74c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a750, declared_size=44, range_size=44, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPKcPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCoronas(char const*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a750  70 40 2d e9                                      push {r4, r5, r6, lr}
0061a754  02 50 a0 e1                                      mov r5, r2
0061a758  03 40 a0 e1                                      mov r4, r3
0061a75c  00 60 a0 e1                                      mov r6, r0
0061a760  e2 ff ff eb                                      bl #0x61a6f0
0061a764  05 20 a0 e1                                      mov r2, r5
0061a768  00 10 a0 e1                                      mov r1, r0
0061a76c  04 30 a0 e1                                      mov r3, r4
0061a770  06 00 a0 e1                                      mov r0, r6
0061a774  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061a778  f7 cf ff ea                                      b #0x60e75c

; FUNCTION 0x0061a77c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPNS0_16SInstanceCoronasEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCoronas(glitch::collada::SInstanceCoronas*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a77c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061a780  01 40 a0 e1                                      mov r4, r1
0061a784  04 10 91 e5                                      ldr r1, [r1, #4]
0061a788  00 50 a0 e1                                      mov r5, r0
0061a78c  02 60 a0 e1                                      mov r6, r2
0061a790  01 10 81 e2                                      add r1, r1, #1
0061a794  ed ff ff eb                                      bl #0x61a750
0061a798  00 a0 50 e2                                      subs sl, r0, #0
0061a79c  12 00 00 0a                                      beq #0x61a7ec
0061a7a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0061a7a4  00 00 53 e3                                      cmp r3, #0
0061a7a8  0f 00 00 da                                      ble #0x61a7ec
0061a7ac  00 70 a0 e3                                      mov r7, #0
0061a7b0  07 80 a0 e1                                      mov r8, r7
0061a7b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0061a7b8  05 00 a0 e1                                      mov r0, r5
0061a7bc  01 80 88 e2                                      add r8, r8, #1
0061a7c0  07 30 83 e0                                      add r3, r3, r7
0061a7c4  08 10 93 e5                                      ldr r1, [r3, #8]
0061a7c8  0c cf ff eb                                      bl #0x60e400
0061a7cc  06 20 a0 e1                                      mov r2, r6
0061a7d0  00 10 a0 e1                                      mov r1, r0
0061a7d4  0a 00 a0 e1                                      mov r0, sl
0061a7d8  36 d4 ff eb                                      bl #0x60f8b8
0061a7dc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0061a7e0  3c 70 87 e2                                      add r7, r7, #0x3c
0061a7e4  03 00 58 e1                                      cmp r8, r3
0061a7e8  f1 ff ff ba                                      blt #0x61a7b4
0061a7ec  0a 00 a0 e1                                      mov r0, sl
0061a7f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061a7f4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase10getEmitterEPKc
; demangled: glitch::collada::CColladaDatabase::getEmitter(char const*) const
; decoder-mode: arm
0061a7f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a7f8  00 30 90 e5                                      ldr r3, [r0]
0061a7fc  01 70 a0 e1                                      mov r7, r1
0061a800  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a804  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a808  78 60 93 e5                                      ldr r6, [r3, #0x78]
0061a80c  00 00 56 e3                                      cmp r6, #0
0061a810  0d 00 00 da                                      ble #0x61a84c
0061a814  7c 40 93 e5                                      ldr r4, [r3, #0x7c]
0061a818  00 50 a0 e3                                      mov r5, #0
0061a81c  02 00 00 ea                                      b #0x61a82c
0061a820  06 00 55 e1                                      cmp r5, r6
0061a824  90 40 84 e2                                      add r4, r4, #0x90
0061a828  07 00 00 0a                                      beq #0x61a84c
0061a82c  00 00 94 e5                                      ldr r0, [r4]
0061a830  07 10 a0 e1                                      mov r1, r7
0061a834  b8 ce f3 eb                                      bl #0x30e31c
0061a838  00 00 50 e3                                      cmp r0, #0
0061a83c  01 50 85 e2                                      add r5, r5, #1
0061a840  f6 ff ff 1a                                      bne #0x61a820
0061a844  04 00 a0 e1                                      mov r0, r4
0061a848  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a84c  00 00 a0 e3                                      mov r0, #0
0061a850  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a854, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPKcPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEmitter(char const*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a854  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a858  18 40 9d e5                                      ldr r4, [sp, #0x18]
0061a85c  02 60 a0 e1                                      mov r6, r2
0061a860  03 50 a0 e1                                      mov r5, r3
0061a864  00 70 a0 e1                                      mov r7, r0
0061a868  e1 ff ff eb                                      bl #0x61a7f4
0061a86c  06 20 a0 e1                                      mov r2, r6
0061a870  00 10 a0 e1                                      mov r1, r0
0061a874  05 30 a0 e1                                      mov r3, r5
0061a878  07 00 a0 e1                                      mov r0, r7
0061a87c  18 40 8d e5                                      str r4, [sp, #0x18]
0061a880  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0061a884  c4 cf ff ea                                      b #0x60e79c

; FUNCTION 0x0061a888, declared_size=136, range_size=136, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_16SInstanceEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEmitter(glitch::collada::SInstanceEmitter*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a888  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061a88c  01 40 a0 e1                                      mov r4, r1
0061a890  04 10 91 e5                                      ldr r1, [r1, #4]
0061a894  0c d0 4d e2                                      sub sp, sp, #0xc
0061a898  00 30 8d e5                                      str r3, [sp]
0061a89c  01 10 81 e2                                      add r1, r1, #1
0061a8a0  18 30 84 e2                                      add r3, r4, #0x18
0061a8a4  00 50 a0 e1                                      mov r5, r0
0061a8a8  02 60 a0 e1                                      mov r6, r2
0061a8ac  e8 ff ff eb                                      bl #0x61a854
0061a8b0  00 a0 50 e2                                      subs sl, r0, #0
0061a8b4  12 00 00 0a                                      beq #0x61a904
0061a8b8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0061a8bc  00 00 53 e3                                      cmp r3, #0
0061a8c0  0f 00 00 da                                      ble #0x61a904
0061a8c4  00 70 a0 e3                                      mov r7, #0
0061a8c8  07 80 a0 e1                                      mov r8, r7
0061a8cc  10 30 94 e5                                      ldr r3, [r4, #0x10]
0061a8d0  05 00 a0 e1                                      mov r0, r5
0061a8d4  01 80 88 e2                                      add r8, r8, #1
0061a8d8  07 30 83 e0                                      add r3, r3, r7
0061a8dc  08 10 93 e5                                      ldr r1, [r3, #8]
0061a8e0  c6 ce ff eb                                      bl #0x60e400
0061a8e4  06 20 a0 e1                                      mov r2, r6
0061a8e8  00 10 a0 e1                                      mov r1, r0
0061a8ec  0a 00 a0 e1                                      mov r0, sl
0061a8f0  ca fb ff eb                                      bl #0x619820
0061a8f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0061a8f8  3c 70 87 e2                                      add r7, r7, #0x3c
0061a8fc  03 00 58 e1                                      cmp r8, r3
0061a900  f1 ff ff ba                                      blt #0x61a8cc
0061a904  0a 00 a0 e1                                      mov r0, sl
0061a908  0c d0 8d e2                                      add sp, sp, #0xc
0061a90c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0061a910, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getForceEPKc
; demangled: glitch::collada::CColladaDatabase::getForce(char const*) const
; decoder-mode: arm
0061a910  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a914  00 30 90 e5                                      ldr r3, [r0]
0061a918  01 70 a0 e1                                      mov r7, r1
0061a91c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a920  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a924  88 60 93 e5                                      ldr r6, [r3, #0x88]
0061a928  00 00 56 e3                                      cmp r6, #0
0061a92c  0d 00 00 da                                      ble #0x61a968
0061a930  8c 40 93 e5                                      ldr r4, [r3, #0x8c]
0061a934  00 50 a0 e3                                      mov r5, #0
0061a938  02 00 00 ea                                      b #0x61a948
0061a93c  06 00 55 e1                                      cmp r5, r6
0061a940  10 40 84 e2                                      add r4, r4, #0x10
0061a944  07 00 00 0a                                      beq #0x61a968
0061a948  00 00 94 e5                                      ldr r0, [r4]
0061a94c  07 10 a0 e1                                      mov r1, r7
0061a950  71 ce f3 eb                                      bl #0x30e31c
0061a954  00 00 50 e3                                      cmp r0, #0
0061a958  01 50 85 e2                                      add r5, r5, #1
0061a95c  f6 ff ff 1a                                      bne #0x61a93c
0061a960  04 00 a0 e1                                      mov r0, r4
0061a964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a968  00 00 a0 e3                                      mov r0, #0
0061a96c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061a970, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructForceEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructForce(char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a970  70 40 2d e9                                      push {r4, r5, r6, lr}
0061a974  02 40 a0 e1                                      mov r4, r2
0061a978  00 50 a0 e1                                      mov r5, r0
0061a97c  e3 ff ff eb                                      bl #0x61a910
0061a980  04 20 a0 e1                                      mov r2, r4
0061a984  00 10 a0 e1                                      mov r1, r0
0061a988  05 00 a0 e1                                      mov r0, r5
0061a98c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061a990  bd cf ff ea                                      b #0x60e88c

; FUNCTION 0x0061a994, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructForceEPNS0_14SInstanceForceEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructForce(glitch::collada::SInstanceForce*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061a994  04 10 91 e5                                      ldr r1, [r1, #4]
0061a998  01 10 81 e2                                      add r1, r1, #1
0061a99c  f3 ff ff ea                                      b #0x61a970

; FUNCTION 0x0061a9a0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13getControllerEPKc
; demangled: glitch::collada::CColladaDatabase::getController(char const*) const
; decoder-mode: arm
0061a9a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061a9a4  00 30 90 e5                                      ldr r3, [r0]
0061a9a8  01 70 a0 e1                                      mov r7, r1
0061a9ac  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061a9b0  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061a9b4  70 60 93 e5                                      ldr r6, [r3, #0x70]
0061a9b8  00 00 56 e3                                      cmp r6, #0
0061a9bc  0d 00 00 da                                      ble #0x61a9f8
0061a9c0  74 40 93 e5                                      ldr r4, [r3, #0x74]
0061a9c4  00 50 a0 e3                                      mov r5, #0
0061a9c8  02 00 00 ea                                      b #0x61a9d8
0061a9cc  06 00 55 e1                                      cmp r5, r6
0061a9d0  0c 40 84 e2                                      add r4, r4, #0xc
0061a9d4  07 00 00 0a                                      beq #0x61a9f8
0061a9d8  04 00 94 e5                                      ldr r0, [r4, #4]
0061a9dc  07 10 a0 e1                                      mov r1, r7
0061a9e0  4d ce f3 eb                                      bl #0x30e31c
0061a9e4  00 00 50 e3                                      cmp r0, #0
0061a9e8  01 50 85 e2                                      add r5, r5, #1
0061a9ec  f6 ff ff 1a                                      bne #0x61a9cc
0061a9f0  04 00 a0 e1                                      mov r0, r4
0061a9f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061a9f8  00 00 a0 e3                                      mov r0, #0
0061a9fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061aa00, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061aa00  70 40 2d e9                                      push {r4, r5, r6, lr}
0061aa04  01 50 a0 e1                                      mov r5, r1
0061aa08  08 d0 4d e2                                      sub sp, sp, #8
0061aa0c  00 40 a0 e1                                      mov r4, r0
0061aa10  03 10 a0 e1                                      mov r1, r3
0061aa14  05 00 a0 e1                                      mov r0, r5
0061aa18  02 60 a0 e1                                      mov r6, r2
0061aa1c  df ff ff eb                                      bl #0x61a9a0
0061aa20  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0061aa24  00 30 a0 e1                                      mov r3, r0
0061aa28  05 10 a0 e1                                      mov r1, r5
0061aa2c  04 00 a0 e1                                      mov r0, r4
0061aa30  06 20 a0 e1                                      mov r2, r6
0061aa34  00 c0 8d e5                                      str ip, [sp]
0061aa38  f9 d3 ff eb                                      bl #0x60fa24
0061aa3c  04 00 a0 e1                                      mov r0, r4
0061aa40  08 d0 8d e2                                      add sp, sp, #8
0061aa44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061aa48, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getGeometryEPKc
; demangled: glitch::collada::CColladaDatabase::getGeometry(char const*) const
; decoder-mode: arm
0061aa48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061aa4c  00 30 90 e5                                      ldr r3, [r0]
0061aa50  01 70 a0 e1                                      mov r7, r1
0061aa54  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061aa58  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061aa5c  68 60 93 e5                                      ldr r6, [r3, #0x68]
0061aa60  00 00 56 e3                                      cmp r6, #0
0061aa64  0d 00 00 da                                      ble #0x61aaa0
0061aa68  6c 40 93 e5                                      ldr r4, [r3, #0x6c]
0061aa6c  00 50 a0 e3                                      mov r5, #0
0061aa70  02 00 00 ea                                      b #0x61aa80
0061aa74  06 00 55 e1                                      cmp r5, r6
0061aa78  10 40 84 e2                                      add r4, r4, #0x10
0061aa7c  07 00 00 0a                                      beq #0x61aaa0
0061aa80  00 00 94 e5                                      ldr r0, [r4]
0061aa84  07 10 a0 e1                                      mov r1, r7
0061aa88  23 ce f3 eb                                      bl #0x30e31c
0061aa8c  00 00 50 e3                                      cmp r0, #0
0061aa90  01 50 85 e2                                      add r5, r5, #1
0061aa94  f6 ff ff 1a                                      bne #0x61aa74
0061aa98  04 00 a0 e1                                      mov r0, r4
0061aa9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061aaa0  00 00 a0 e3                                      mov r0, #0
0061aaa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061aaa8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKc
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, char const*) const
; decoder-mode: arm
0061aaa8  70 40 2d e9                                      push {r4, r5, r6, lr}
0061aaac  01 50 a0 e1                                      mov r5, r1
0061aab0  00 40 a0 e1                                      mov r4, r0
0061aab4  03 10 a0 e1                                      mov r1, r3
0061aab8  05 00 a0 e1                                      mov r0, r5
0061aabc  02 60 a0 e1                                      mov r6, r2
0061aac0  e0 ff ff eb                                      bl #0x61aa48
0061aac4  05 10 a0 e1                                      mov r1, r5
0061aac8  00 30 a0 e1                                      mov r3, r0
0061aacc  06 20 a0 e1                                      mov r2, r6
0061aad0  04 00 a0 e1                                      mov r0, r4
0061aad4  d6 ce ff eb                                      bl #0x60e634
0061aad8  04 00 a0 e1                                      mov r0, r4
0061aadc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061aae0, declared_size=328, range_size=328, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKcS6_
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, char const*, char const*) const
; decoder-mode: arm
0061aae0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061aae4  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
0061aae8  2c 81 9f e5                                      ldr r8, [pc, #0x12c]
0061aaec  14 d0 4d e2                                      sub sp, sp, #0x14
0061aaf0  04 40 8f e0                                      add r4, pc, r4
0061aaf4  08 70 94 e7                                      ldr r7, [r4, r8]
0061aaf8  03 a0 a0 e1                                      mov sl, r3
0061aafc  01 60 a0 e1                                      mov r6, r1
0061ab00  00 50 a0 e1                                      mov r5, r0
0061ab04  02 b0 a0 e1                                      mov fp, r2
0061ab08  00 00 97 e5                                      ldr r0, [r7]
0061ab0c  03 20 a0 e1                                      mov r2, r3
0061ab10  00 10 91 e5                                      ldr r1, [r1]
0061ab14  01 30 a0 e3                                      mov r3, #1
0061ab18  55 00 01 eb                                      bl #0x65ac74
0061ab1c  00 90 50 e2                                      subs sb, r0, #0
0061ab20  23 00 00 0a                                      beq #0x61abb4
0061ab24  00 30 97 e5                                      ldr r3, [r7]
0061ab28  00 20 a0 e3                                      mov r2, #0
0061ab2c  0c 00 8d e2                                      add r0, sp, #0xc
0061ab30  28 70 d3 e5                                      ldrb r7, [r3, #0x28]
0061ab34  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061ab38  04 30 96 e5                                      ldr r3, [r6, #4]
0061ab3c  04 90 8d e5                                      str sb, [sp, #4]
0061ab40  04 60 8d e2                                      add r6, sp, #4
0061ab44  08 30 8d e5                                      str r3, [sp, #8]
0061ab48  04 30 99 e5                                      ldr r3, [sb, #4]
0061ab4c  06 10 a0 e1                                      mov r1, r6
0061ab50  02 00 53 e1                                      cmp r3, r2
0061ab54  01 30 83 12                                      addne r3, r3, #1
0061ab58  04 30 89 15                                      strne r3, [sb, #4]
0061ab5c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061ab60  0b 20 a0 e1                                      mov r2, fp
0061ab64  cf ff ff eb                                      bl #0x61aaa8
0061ab68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061ab6c  00 00 53 e3                                      cmp r3, #0
0061ab70  00 30 85 15                                      strne r3, [r5]
0061ab74  17 00 00 0a                                      beq #0x61abd8
0061ab78  04 20 93 e5                                      ldr r2, [r3, #4]
0061ab7c  01 20 82 e2                                      add r2, r2, #1
0061ab80  04 20 83 e5                                      str r2, [r3, #4]
0061ab84  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0061ab88  00 00 50 e3                                      cmp r0, #0
0061ab8c  00 00 00 0a                                      beq #0x61ab94
0061ab90  7b 0a f4 eb                                      bl #0x31d584
0061ab94  06 00 a0 e1                                      mov r0, r6
0061ab98  35 fa ff eb                                      bl #0x619474
0061ab9c  08 30 94 e7                                      ldr r3, [r4, r8]
0061aba0  00 30 93 e5                                      ldr r3, [r3]
0061aba4  28 70 c3 e5                                      strb r7, [r3, #0x28]
0061aba8  05 00 a0 e1                                      mov r0, r5
0061abac  14 d0 8d e2                                      add sp, sp, #0x14
0061abb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061abb4  64 00 9f e5                                      ldr r0, [pc, #0x64]
0061abb8  03 10 a0 e3                                      mov r1, #3
0061abbc  00 00 8f e0                                      add r0, pc, r0
0061abc0  36 c0 ff eb                                      bl #0x60aca0
0061abc4  0a 00 a0 e1                                      mov r0, sl
0061abc8  03 10 a0 e3                                      mov r1, #3
0061abcc  33 c0 ff eb                                      bl #0x60aca0
0061abd0  00 90 85 e5                                      str sb, [r5]
0061abd4  f3 ff ff ea                                      b #0x61aba8
0061abd8  44 00 9f e5                                      ldr r0, [pc, #0x44]
0061abdc  03 10 a0 e3                                      mov r1, #3
0061abe0  00 00 8f e0                                      add r0, pc, r0
0061abe4  2d c0 ff eb                                      bl #0x60aca0
0061abe8  0a 00 a0 e1                                      mov r0, sl
0061abec  03 10 a0 e3                                      mov r1, #3
0061abf0  2a c0 ff eb                                      bl #0x60aca0
0061abf4  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061abf8  03 10 a0 e3                                      mov r1, #3
0061abfc  27 c0 ff eb                                      bl #0x60aca0
0061ac00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0061ac04  00 00 50 e3                                      cmp r0, #0
0061ac08  00 00 85 e5                                      str r0, [r5]
0061ac0c  00 30 a0 e1                                      mov r3, r0
0061ac10  dc ff ff 0a                                      beq #0x61ab88
0061ac14  d7 ff ff ea                                      b #0x61ab78
; mapping-symbol data/literal pool
0061ac18  a0 9f 37 00 48 44 00 00 cc a1 2c 00 b8 a1 2c 00  .byte 0xa0, 0x9f, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0xcc, 0xa1, 0x2c, 0x00, 0xb8, 0xa1, 0x2c, 0x00

; FUNCTION 0x0061ac28, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKc
; demangled: glitch::collada::CColladaDatabase::getMaterial(char const*) const
; decoder-mode: arm
0061ac28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061ac2c  00 30 90 e5                                      ldr r3, [r0]
0061ac30  01 70 a0 e1                                      mov r7, r1
0061ac34  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061ac38  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ac3c  5c 60 93 e5                                      ldr r6, [r3, #0x5c]
0061ac40  00 00 56 e3                                      cmp r6, #0
0061ac44  0d 00 00 da                                      ble #0x61ac80
0061ac48  60 40 93 e5                                      ldr r4, [r3, #0x60]
0061ac4c  00 50 a0 e3                                      mov r5, #0
0061ac50  02 00 00 ea                                      b #0x61ac60
0061ac54  06 00 55 e1                                      cmp r5, r6
0061ac58  24 40 84 e2                                      add r4, r4, #0x24
0061ac5c  07 00 00 0a                                      beq #0x61ac80
0061ac60  00 00 94 e5                                      ldr r0, [r4]
0061ac64  07 10 a0 e1                                      mov r1, r7
0061ac68  ab cd f3 eb                                      bl #0x30e31c
0061ac6c  00 00 50 e3                                      cmp r0, #0
0061ac70  01 50 85 e2                                      add r5, r5, #1
0061ac74  f6 ff ff 1a                                      bne #0x61ac54
0061ac78  04 00 a0 e1                                      mov r0, r4
0061ac7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061ac80  00 00 a0 e3                                      mov r0, #0
0061ac84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061ac88, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKcS3_
; demangled: glitch::collada::CColladaDatabase::getMaterial(char const*, char const*) const
; decoder-mode: arm
0061ac88  30 40 2d e9                                      push {r4, r5, lr}
0061ac8c  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
0061ac90  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0061ac94  0c d0 4d e2                                      sub sp, sp, #0xc
0061ac98  0c c0 8f e0                                      add ip, pc, ip
0061ac9c  01 e0 a0 e1                                      mov lr, r1
0061aca0  03 30 9c e7                                      ldr r3, [ip, r3]
0061aca4  02 50 a0 e1                                      mov r5, r2
0061aca8  00 10 a0 e1                                      mov r1, r0
0061acac  0e 20 a0 e1                                      mov r2, lr
0061acb0  0d 00 a0 e1                                      mov r0, sp
0061acb4  8d f9 ff eb                                      bl #0x6192f0
0061acb8  05 10 a0 e1                                      mov r1, r5
0061acbc  0d 00 a0 e1                                      mov r0, sp
0061acc0  d8 ff ff eb                                      bl #0x61ac28
0061acc4  00 50 a0 e1                                      mov r5, r0
0061acc8  0d 00 a0 e1                                      mov r0, sp
0061accc  e8 f9 ff eb                                      bl #0x619474
0061acd0  0d 40 a0 e1                                      mov r4, sp
0061acd4  05 00 a0 e1                                      mov r0, r5
0061acd8  0c d0 8d e2                                      add sp, sp, #0xc
0061acdc  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0061ace0  f8 9d 37 00 10 47 00 00                          .byte 0xf8, 0x9d, 0x37, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0061ace8, declared_size=464, range_size=464, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPNS0_19SInstanceControllerEPNS0_14CRootSceneNodeEb
; demangled: glitch::collada::CColladaDatabase::constructController(glitch::video::IVideoDriver*, glitch::collada::SInstanceController*, glitch::collada::CRootSceneNode*, bool) const
; decoder-mode: arm
0061ace8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061acec  03 60 a0 e1                                      mov r6, r3
0061acf0  2c d0 4d e2                                      sub sp, sp, #0x2c
0061acf4  04 30 93 e5                                      ldr r3, [r3, #4]
0061acf8  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0061acfc  54 e0 dd e5                                      ldrb lr, [sp, #0x54]
0061ad00  00 50 a0 e1                                      mov r5, r0
0061ad04  01 30 83 e2                                      add r3, r3, #1
0061ad08  00 c0 8d e5                                      str ip, [sp]
0061ad0c  01 a0 a0 e1                                      mov sl, r1
0061ad10  02 b0 a0 e1                                      mov fp, r2
0061ad14  14 e0 8d e5                                      str lr, [sp, #0x14]
0061ad18  38 ff ff eb                                      bl #0x61aa00
0061ad1c  00 30 95 e5                                      ldr r3, [r5]
0061ad20  00 00 53 e3                                      cmp r3, #0
0061ad24  60 00 00 0a                                      beq #0x61aeac
0061ad28  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0061ad2c  00 00 52 e3                                      cmp r2, #0
0061ad30  2a 00 00 da                                      ble #0x61ade0
0061ad34  00 70 a0 e3                                      mov r7, #0
0061ad38  07 80 a0 e1                                      mov r8, r7
0061ad3c  20 40 8d e2                                      add r4, sp, #0x20
0061ad40  24 90 8d e2                                      add sb, sp, #0x24
0061ad44  19 00 00 ea                                      b #0x61adb0
0061ad48  04 20 93 e5                                      ldr r2, [r3, #4]
0061ad4c  01 20 82 e2                                      add r2, r2, #1
0061ad50  cc ff ff eb                                      bl #0x61ac88
0061ad54  00 20 a0 e1                                      mov r2, r0
0061ad58  04 00 a0 e1                                      mov r0, r4
0061ad5c  50 10 9d e5                                      ldr r1, [sp, #0x50]
0061ad60  0b 30 a0 e1                                      mov r3, fp
0061ad64  64 07 01 eb                                      bl #0x65cafc
0061ad68  00 00 95 e5                                      ldr r0, [r5]
0061ad6c  00 e0 a0 e3                                      mov lr, #0
0061ad70  08 10 a0 e1                                      mov r1, r8
0061ad74  00 c0 90 e5                                      ldr ip, [r0]
0061ad78  09 30 a0 e1                                      mov r3, sb
0061ad7c  04 20 a0 e1                                      mov r2, r4
0061ad80  20 c0 9c e5                                      ldr ip, [ip, #0x20]
0061ad84  24 e0 8d e5                                      str lr, [sp, #0x24]
0061ad88  3c ff 2f e1                                      blx ip
0061ad8c  09 00 a0 e1                                      mov r0, sb
0061ad90  35 7d fd eb                                      bl #0x57a26c
0061ad94  04 00 a0 e1                                      mov r0, r4
0061ad98  92 d7 f3 eb                                      bl #0x310be8
0061ad9c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061ada0  01 80 88 e2                                      add r8, r8, #1
0061ada4  3c 70 87 e2                                      add r7, r7, #0x3c
0061ada8  03 00 58 e1                                      cmp r8, r3
0061adac  0a 00 00 aa                                      bge #0x61addc
0061adb0  10 30 96 e5                                      ldr r3, [r6, #0x10]
0061adb4  0a 00 a0 e1                                      mov r0, sl
0061adb8  07 10 93 e7                                      ldr r1, [r3, r7]
0061adbc  07 30 83 e0                                      add r3, r3, r7
0061adc0  00 00 51 e3                                      cmp r1, #0
0061adc4  df ff ff 1a                                      bne #0x61ad48
0061adc8  08 10 93 e5                                      ldr r1, [r3, #8]
0061adcc  0a 00 a0 e1                                      mov r0, sl
0061add0  8a cd ff eb                                      bl #0x60e400
0061add4  00 20 a0 e1                                      mov r2, r0
0061add8  de ff ff ea                                      b #0x61ad58
0061addc  00 30 95 e5                                      ldr r3, [r5]
0061ade0  03 00 a0 e1                                      mov r0, r3
0061ade4  0b 10 a0 e1                                      mov r1, fp
0061ade8  00 30 93 e5                                      ldr r3, [r3]
0061adec  14 20 9d e5                                      ldr r2, [sp, #0x14]
0061adf0  0f e0 a0 e1                                      mov lr, pc
0061adf4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0061adf8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061adfc  00 00 53 e3                                      cmp r3, #0
0061ae00  29 00 00 da                                      ble #0x61aeac
0061ae04  00 80 a0 e3                                      mov r8, #0
0061ae08  08 70 a0 e1                                      mov r7, r8
0061ae0c  20 40 8d e2                                      add r4, sp, #0x20
0061ae10  1c 90 8d e2                                      add sb, sp, #0x1c
0061ae14  08 b0 a0 e1                                      mov fp, r8
0061ae18  00 30 95 e5                                      ldr r3, [r5]
0061ae1c  07 20 a0 e1                                      mov r2, r7
0061ae20  04 00 a0 e1                                      mov r0, r4
0061ae24  03 10 a0 e1                                      mov r1, r3
0061ae28  00 30 93 e5                                      ldr r3, [r3]
0061ae2c  0f e0 a0 e1                                      mov lr, pc
0061ae30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0061ae34  04 20 9a e5                                      ldr r2, [sl, #4]
0061ae38  10 30 96 e5                                      ldr r3, [r6, #0x10]
0061ae3c  09 00 a0 e1                                      mov r0, sb
0061ae40  00 c0 92 e5                                      ldr ip, [r2]
0061ae44  02 10 a0 e1                                      mov r1, r2
0061ae48  08 30 83 e0                                      add r3, r3, r8
0061ae4c  08 70 8d e5                                      str r7, [sp, #8]
0061ae50  0a 20 a0 e1                                      mov r2, sl
0061ae54  00 50 8d e5                                      str r5, [sp]
0061ae58  04 40 8d e5                                      str r4, [sp, #4]
0061ae5c  0c b0 8d e5                                      str fp, [sp, #0xc]
0061ae60  0f e0 a0 e1                                      mov lr, pc
0061ae64  24 f0 9c e5                                      ldr pc, [ip, #0x24]
0061ae68  00 c0 95 e5                                      ldr ip, [r5]
0061ae6c  07 10 a0 e1                                      mov r1, r7
0061ae70  09 30 a0 e1                                      mov r3, sb
0061ae74  04 20 a0 e1                                      mov r2, r4
0061ae78  0c 00 a0 e1                                      mov r0, ip
0061ae7c  00 c0 9c e5                                      ldr ip, [ip]
0061ae80  0f e0 a0 e1                                      mov lr, pc
0061ae84  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0061ae88  09 00 a0 e1                                      mov r0, sb
0061ae8c  f6 7c fd eb                                      bl #0x57a26c
0061ae90  04 00 a0 e1                                      mov r0, r4
0061ae94  53 d7 f3 eb                                      bl #0x310be8
0061ae98  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061ae9c  01 70 87 e2                                      add r7, r7, #1
0061aea0  3c 80 88 e2                                      add r8, r8, #0x3c
0061aea4  03 00 57 e1                                      cmp r7, r3
0061aea8  da ff ff ba                                      blt #0x61ae18
0061aeac  05 00 a0 e1                                      mov r0, r5
0061aeb0  2c d0 8d e2                                      add sp, sp, #0x2c
0061aeb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061aeb8, declared_size=500, range_size=500, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPNS0_17SInstanceGeometryEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructGeometry(glitch::video::IVideoDriver*, glitch::collada::SInstanceGeometry*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061aeb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061aebc  00 90 a0 e1                                      mov sb, r0
0061aec0  00 00 a0 e3                                      mov r0, #0
0061aec4  00 00 89 e5                                      str r0, [sb]
0061aec8  03 60 a0 e1                                      mov r6, r3
0061aecc  00 30 93 e5                                      ldr r3, [r3]
0061aed0  04 c0 96 e5                                      ldr ip, [r6, #4]
0061aed4  34 d0 4d e2                                      sub sp, sp, #0x34
0061aed8  00 00 53 e1                                      cmp r3, r0
0061aedc  01 50 a0 e1                                      mov r5, r1
0061aee0  01 c0 8c e2                                      add ip, ip, #1
0061aee4  10 20 8d e5                                      str r2, [sp, #0x10]
0061aee8  5e 00 00 0a                                      beq #0x61b068
0061aeec  2c 00 8d e2                                      add r0, sp, #0x2c
0061aef0  00 c0 8d e5                                      str ip, [sp]
0061aef4  f9 fe ff eb                                      bl #0x61aae0
0061aef8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0061aefc  00 00 53 e3                                      cmp r3, #0
0061af00  04 20 93 15                                      ldrne r2, [r3, #4]
0061af04  01 20 82 12                                      addne r2, r2, #1
0061af08  04 20 83 15                                      strne r2, [r3, #4]
0061af0c  00 00 99 e5                                      ldr r0, [sb]
0061af10  00 30 89 e5                                      str r3, [sb]
0061af14  00 00 50 e3                                      cmp r0, #0
0061af18  00 00 00 0a                                      beq #0x61af20
0061af1c  98 09 f4 eb                                      bl #0x31d584
0061af20  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0061af24  00 00 50 e3                                      cmp r0, #0
0061af28  00 00 00 0a                                      beq #0x61af30
0061af2c  94 09 f4 eb                                      bl #0x31d584
0061af30  00 30 99 e5                                      ldr r3, [sb]
0061af34  00 00 53 e3                                      cmp r3, #0
0061af38  47 00 00 0a                                      beq #0x61b05c
0061af3c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
0061af40  00 00 53 e3                                      cmp r3, #0
0061af44  44 00 00 da                                      ble #0x61b05c
0061af48  00 70 a0 e3                                      mov r7, #0
0061af4c  1c 00 8d e2                                      add r0, sp, #0x1c
0061af50  07 40 a0 e1                                      mov r4, r7
0061af54  07 80 a0 e1                                      mov r8, r7
0061af58  24 a0 8d e2                                      add sl, sp, #0x24
0061af5c  20 b0 8d e2                                      add fp, sp, #0x20
0061af60  14 00 8d e5                                      str r0, [sp, #0x14]
0061af64  06 70 a0 e1                                      mov r7, r6
0061af68  30 00 00 ea                                      b #0x61b030
0061af6c  04 20 96 e5                                      ldr r2, [r6, #4]
0061af70  01 20 82 e2                                      add r2, r2, #1
0061af74  43 ff ff eb                                      bl #0x61ac88
0061af78  00 20 a0 e1                                      mov r2, r0
0061af7c  0a 00 a0 e1                                      mov r0, sl
0061af80  58 10 9d e5                                      ldr r1, [sp, #0x58]
0061af84  10 30 9d e5                                      ldr r3, [sp, #0x10]
0061af88  db 06 01 eb                                      bl #0x65cafc
0061af8c  04 e0 95 e5                                      ldr lr, [r5, #4]
0061af90  00 c0 99 e5                                      ldr ip, [sb]
0061af94  06 30 a0 e1                                      mov r3, r6
0061af98  0e 10 a0 e1                                      mov r1, lr
0061af9c  00 e0 9e e5                                      ldr lr, [lr]
0061afa0  00 00 5c e3                                      cmp ip, #0
0061afa4  0b 00 a0 e1                                      mov r0, fp
0061afa8  24 60 9e e5                                      ldr r6, [lr, #0x24]
0061afac  1c c0 8d e5                                      str ip, [sp, #0x1c]
0061afb0  04 e0 9c 15                                      ldrne lr, [ip, #4]
0061afb4  05 20 a0 e1                                      mov r2, r5
0061afb8  3c 80 88 e2                                      add r8, r8, #0x3c
0061afbc  01 e0 8e 12                                      addne lr, lr, #1
0061afc0  04 e0 8c 15                                      strne lr, [ip, #4]
0061afc4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0061afc8  08 40 8d e5                                      str r4, [sp, #8]
0061afcc  04 a0 8d e5                                      str sl, [sp, #4]
0061afd0  00 c0 8d e5                                      str ip, [sp]
0061afd4  00 c0 a0 e3                                      mov ip, #0
0061afd8  0c c0 8d e5                                      str ip, [sp, #0xc]
0061afdc  36 ff 2f e1                                      blx r6
0061afe0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0061afe4  00 00 50 e3                                      cmp r0, #0
0061afe8  00 00 00 0a                                      beq #0x61aff0
0061afec  64 09 f4 eb                                      bl #0x31d584
0061aff0  00 c0 99 e5                                      ldr ip, [sb]
0061aff4  04 10 a0 e1                                      mov r1, r4
0061aff8  0b 30 a0 e1                                      mov r3, fp
0061affc  0a 20 a0 e1                                      mov r2, sl
0061b000  0c 00 a0 e1                                      mov r0, ip
0061b004  00 c0 9c e5                                      ldr ip, [ip]
0061b008  0f e0 a0 e1                                      mov lr, pc
0061b00c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0061b010  0b 00 a0 e1                                      mov r0, fp
0061b014  94 7c fd eb                                      bl #0x57a26c
0061b018  0a 00 a0 e1                                      mov r0, sl
0061b01c  f1 d6 f3 eb                                      bl #0x310be8
0061b020  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0061b024  01 40 84 e2                                      add r4, r4, #1
0061b028  03 00 54 e1                                      cmp r4, r3
0061b02c  0a 00 00 aa                                      bge #0x61b05c
0061b030  10 60 97 e5                                      ldr r6, [r7, #0x10]
0061b034  05 00 a0 e1                                      mov r0, r5
0061b038  08 10 96 e7                                      ldr r1, [r6, r8]
0061b03c  08 60 86 e0                                      add r6, r6, r8
0061b040  00 00 51 e3                                      cmp r1, #0
0061b044  c8 ff ff 1a                                      bne #0x61af6c
0061b048  08 10 96 e5                                      ldr r1, [r6, #8]
0061b04c  05 00 a0 e1                                      mov r0, r5
0061b050  ea cc ff eb                                      bl #0x60e400
0061b054  00 20 a0 e1                                      mov r2, r0
0061b058  c7 ff ff ea                                      b #0x61af7c
0061b05c  09 00 a0 e1                                      mov r0, sb
0061b060  34 d0 8d e2                                      add sp, sp, #0x34
0061b064  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061b068  0c 30 a0 e1                                      mov r3, ip
0061b06c  28 00 8d e2                                      add r0, sp, #0x28
0061b070  8c fe ff eb                                      bl #0x61aaa8
0061b074  28 30 9d e5                                      ldr r3, [sp, #0x28]
0061b078  00 00 53 e3                                      cmp r3, #0
0061b07c  04 20 93 15                                      ldrne r2, [r3, #4]
0061b080  01 20 82 12                                      addne r2, r2, #1
0061b084  04 20 83 15                                      strne r2, [r3, #4]
0061b088  00 00 99 e5                                      ldr r0, [sb]
0061b08c  00 30 89 e5                                      str r3, [sb]
0061b090  00 00 50 e3                                      cmp r0, #0
0061b094  00 00 00 0a                                      beq #0x61b09c
0061b098  39 09 f4 eb                                      bl #0x31d584
0061b09c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0061b0a0  00 00 50 e3                                      cmp r0, #0
0061b0a4  a0 ff ff 1a                                      bne #0x61af2c
0061b0a8  a0 ff ff ea                                      b #0x61af30

; FUNCTION 0x0061b0ac, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase9getEffectEPKc
; demangled: glitch::collada::CColladaDatabase::getEffect(char const*) const
; decoder-mode: arm
0061b0ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b0b0  00 30 90 e5                                      ldr r3, [r0]
0061b0b4  01 70 a0 e1                                      mov r7, r1
0061b0b8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b0bc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b0c0  54 60 93 e5                                      ldr r6, [r3, #0x54]
0061b0c4  00 00 56 e3                                      cmp r6, #0
0061b0c8  0d 00 00 da                                      ble #0x61b104
0061b0cc  58 40 93 e5                                      ldr r4, [r3, #0x58]
0061b0d0  00 50 a0 e3                                      mov r5, #0
0061b0d4  02 00 00 ea                                      b #0x61b0e4
0061b0d8  06 00 55 e1                                      cmp r5, r6
0061b0dc  74 40 84 e2                                      add r4, r4, #0x74
0061b0e0  07 00 00 0a                                      beq #0x61b104
0061b0e4  00 00 94 e5                                      ldr r0, [r4]
0061b0e8  07 10 a0 e1                                      mov r1, r7
0061b0ec  8a cc f3 eb                                      bl #0x30e31c
0061b0f0  00 00 50 e3                                      cmp r0, #0
0061b0f4  01 50 85 e2                                      add r5, r5, #1
0061b0f8  f6 ff ff 1a                                      bne #0x61b0d8
0061b0fc  04 00 a0 e1                                      mov r0, r4
0061b100  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b104  00 00 a0 e3                                      mov r0, #0
0061b108  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061b10c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructEffectEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructEffect(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b10c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b110  01 50 a0 e1                                      mov r5, r1
0061b114  08 d0 4d e2                                      sub sp, sp, #8
0061b118  00 40 a0 e1                                      mov r4, r0
0061b11c  03 10 a0 e1                                      mov r1, r3
0061b120  05 00 a0 e1                                      mov r0, r5
0061b124  02 60 a0 e1                                      mov r6, r2
0061b128  df ff ff eb                                      bl #0x61b0ac
0061b12c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0061b130  00 30 a0 e1                                      mov r3, r0
0061b134  05 10 a0 e1                                      mov r1, r5
0061b138  04 00 a0 e1                                      mov r0, r4
0061b13c  06 20 a0 e1                                      mov r2, r6
0061b140  00 c0 8d e5                                      str ip, [sp]
0061b144  09 cd ff eb                                      bl #0x60e570
0061b148  04 00 a0 e1                                      mov r0, r4
0061b14c  08 d0 8d e2                                      add sp, sp, #8
0061b150  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061b154, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getImageEPKc
; demangled: glitch::collada::CColladaDatabase::getImage(char const*) const
; decoder-mode: arm
0061b154  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b158  00 30 90 e5                                      ldr r3, [r0]
0061b15c  01 70 a0 e1                                      mov r7, r1
0061b160  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b164  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b168  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
0061b16c  00 00 56 e3                                      cmp r6, #0
0061b170  0d 00 00 da                                      ble #0x61b1ac
0061b174  50 40 93 e5                                      ldr r4, [r3, #0x50]
0061b178  00 50 a0 e3                                      mov r5, #0
0061b17c  02 00 00 ea                                      b #0x61b18c
0061b180  06 00 55 e1                                      cmp r5, r6
0061b184  14 40 84 e2                                      add r4, r4, #0x14
0061b188  07 00 00 0a                                      beq #0x61b1ac
0061b18c  00 00 94 e5                                      ldr r0, [r4]
0061b190  07 10 a0 e1                                      mov r1, r7
0061b194  60 cc f3 eb                                      bl #0x30e31c
0061b198  00 00 50 e3                                      cmp r0, #0
0061b19c  01 50 85 e2                                      add r5, r5, #1
0061b1a0  f6 ff ff 1a                                      bne #0x61b180
0061b1a4  04 00 a0 e1                                      mov r0, r4
0061b1a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b1ac  00 00 a0 e3                                      mov r0, #0
0061b1b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061b1b4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructImageEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructImage(char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b1b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b1b8  01 50 a0 e1                                      mov r5, r1
0061b1bc  00 40 a0 e1                                      mov r4, r0
0061b1c0  02 10 a0 e1                                      mov r1, r2
0061b1c4  05 00 a0 e1                                      mov r0, r5
0061b1c8  03 60 a0 e1                                      mov r6, r3
0061b1cc  e0 ff ff eb                                      bl #0x61b154
0061b1d0  05 10 a0 e1                                      mov r1, r5
0061b1d4  00 20 a0 e1                                      mov r2, r0
0061b1d8  06 30 a0 e1                                      mov r3, r6
0061b1dc  04 00 a0 e1                                      mov r0, r4
0061b1e0  a2 d2 ff eb                                      bl #0x60fc70
0061b1e4  04 00 a0 e1                                      mov r0, r4
0061b1e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061b1ec, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase8getLightEPKc
; demangled: glitch::collada::CColladaDatabase::getLight(char const*) const
; decoder-mode: arm
0061b1ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b1f0  00 30 90 e5                                      ldr r3, [r0]
0061b1f4  01 70 a0 e1                                      mov r7, r1
0061b1f8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b1fc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b200  44 60 93 e5                                      ldr r6, [r3, #0x44]
0061b204  00 00 56 e3                                      cmp r6, #0
0061b208  0d 00 00 da                                      ble #0x61b244
0061b20c  48 40 93 e5                                      ldr r4, [r3, #0x48]
0061b210  00 50 a0 e3                                      mov r5, #0
0061b214  02 00 00 ea                                      b #0x61b224
0061b218  06 00 55 e1                                      cmp r5, r6
0061b21c  18 40 84 e2                                      add r4, r4, #0x18
0061b220  07 00 00 0a                                      beq #0x61b244
0061b224  00 00 94 e5                                      ldr r0, [r4]
0061b228  07 10 a0 e1                                      mov r1, r7
0061b22c  3a cc f3 eb                                      bl #0x30e31c
0061b230  00 00 50 e3                                      cmp r0, #0
0061b234  01 50 85 e2                                      add r5, r5, #1
0061b238  f6 ff ff 1a                                      bne #0x61b218
0061b23c  04 00 a0 e1                                      mov r0, r4
0061b240  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b244  00 00 a0 e3                                      mov r0, #0
0061b248  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061b24c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructLightEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructLight(char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b24c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b250  02 40 a0 e1                                      mov r4, r2
0061b254  00 50 a0 e1                                      mov r5, r0
0061b258  e3 ff ff eb                                      bl #0x61b1ec
0061b25c  04 20 a0 e1                                      mov r2, r4
0061b260  00 10 a0 e1                                      mov r1, r0
0061b264  05 00 a0 e1                                      mov r0, r5
0061b268  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b26c  64 f8 ff ea                                      b #0x619404

; FUNCTION 0x0061b270, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase9getCameraEPKc
; demangled: glitch::collada::CColladaDatabase::getCamera(char const*) const
; decoder-mode: arm
0061b270  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b274  00 30 90 e5                                      ldr r3, [r0]
0061b278  01 70 a0 e1                                      mov r7, r1
0061b27c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061b280  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061b284  3c 60 93 e5                                      ldr r6, [r3, #0x3c]
0061b288  00 00 56 e3                                      cmp r6, #0
0061b28c  0d 00 00 da                                      ble #0x61b2c8
0061b290  40 40 93 e5                                      ldr r4, [r3, #0x40]
0061b294  00 50 a0 e3                                      mov r5, #0
0061b298  02 00 00 ea                                      b #0x61b2a8
0061b29c  06 00 55 e1                                      cmp r5, r6
0061b2a0  1c 40 84 e2                                      add r4, r4, #0x1c
0061b2a4  07 00 00 0a                                      beq #0x61b2c8
0061b2a8  00 00 94 e5                                      ldr r0, [r4]
0061b2ac  07 10 a0 e1                                      mov r1, r7
0061b2b0  19 cc f3 eb                                      bl #0x30e31c
0061b2b4  00 00 50 e3                                      cmp r0, #0
0061b2b8  01 50 85 e2                                      add r5, r5, #1
0061b2bc  f6 ff ff 1a                                      bne #0x61b29c
0061b2c0  04 00 a0 e1                                      mov r0, r4
0061b2c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061b2c8  00 00 a0 e3                                      mov r0, #0
0061b2cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061b2d0, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15constructCameraEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructCamera(char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b2d0  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b2d4  02 40 a0 e1                                      mov r4, r2
0061b2d8  00 50 a0 e1                                      mov r5, r0
0061b2dc  e3 ff ff eb                                      bl #0x61b270
0061b2e0  04 20 a0 e1                                      mov r2, r4
0061b2e4  00 10 a0 e1                                      mov r1, r0
0061b2e8  05 00 a0 e1                                      mov r0, r5
0061b2ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b2f0  28 f8 ff ea                                      b #0x619398

; FUNCTION 0x0061b2f4, declared_size=1480, range_size=1480, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS0_5SNodeEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::collada::SNode*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b2f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061b2f8  00 40 52 e2                                      subs r4, r2, #0
0061b2fc  44 d0 4d e2                                      sub sp, sp, #0x44
0061b300  00 80 a0 e1                                      mov r8, r0
0061b304  01 b0 a0 e1                                      mov fp, r1
0061b308  03 a0 a0 e1                                      mov sl, r3
0061b30c  04 60 a0 01                                      moveq r6, r4
0061b310  91 00 00 0a                                      beq #0x61b55c
0061b314  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0061b318  00 00 53 e3                                      cmp r3, #0
0061b31c  54 01 00 0a                                      beq #0x61b874
0061b320  04 30 90 e5                                      ldr r3, [r0, #4]
0061b324  00 10 a0 e1                                      mov r1, r0
0061b328  03 00 a0 e1                                      mov r0, r3
0061b32c  00 30 93 e5                                      ldr r3, [r3]
0061b330  0f e0 a0 e1                                      mov lr, pc
0061b334  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0061b338  00 60 a0 e1                                      mov r6, r0
0061b33c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b340  00 00 51 e3                                      cmp r1, #0
0061b344  3a 00 00 da                                      ble #0x61b434
0061b348  38 30 8d e2                                      add r3, sp, #0x38
0061b34c  3c c0 8d e2                                      add ip, sp, #0x3c
0061b350  00 50 a0 e3                                      mov r5, #0
0061b354  08 30 8d e5                                      str r3, [sp, #8]
0061b358  0c c0 8d e5                                      str ip, [sp, #0xc]
0061b35c  06 70 a0 e1                                      mov r7, r6
0061b360  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b364  85 61 a0 e1                                      lsl r6, r5, #3
0061b368  85 31 92 e7                                      ldr r3, [r2, r5, lsl #3]
0061b36c  06 20 82 e0                                      add r2, r2, r6
0061b370  01 30 43 e2                                      sub r3, r3, #1
0061b374  0c 00 53 e3                                      cmp r3, #0xc
0061b378  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0061b37c  28 00 00 ea                                      b #0x61b424
0061b380  31 01 00 ea                                      b #0x61b84c
0061b384  e5 00 00 ea                                      b #0x61b720
0061b388  bf 00 00 ea                                      b #0x61b68c
0061b38c  b4 00 00 ea                                      b #0x61b664
0061b390  23 00 00 ea                                      b #0x61b424
0061b394  22 00 00 ea                                      b #0x61b424
0061b398  21 00 00 ea                                      b #0x61b424
0061b39c  20 00 00 ea                                      b #0x61b424
0061b3a0  17 01 00 ea                                      b #0x61b804
0061b3a4  02 00 00 ea                                      b #0x61b3b4
0061b3a8  1e 01 00 ea                                      b #0x61b828
0061b3ac  98 00 00 ea                                      b #0x61b614
0061b3b0  6c 00 00 ea                                      b #0x61b568
0061b3b4  04 10 92 e5                                      ldr r1, [r2, #4]
0061b3b8  08 00 a0 e1                                      mov r0, r8
0061b3bc  0b 20 a0 e1                                      mov r2, fp
0061b3c0  0a 30 a0 e1                                      mov r3, sl
0061b3c4  8f fc ff eb                                      bl #0x61a608
0061b3c8  00 90 50 e2                                      subs sb, r0, #0
0061b3cc  8b 00 00 0a                                      beq #0x61b600
0061b3d0  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b3d4  00 30 99 e5                                      ldr r3, [sb]
0061b3d8  06 60 82 e0                                      add r6, r2, r6
0061b3dc  04 20 96 e5                                      ldr r2, [r6, #4]
0061b3e0  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b3e4  0f e0 a0 e1                                      mov lr, pc
0061b3e8  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b3ec  09 00 a0 e1                                      mov r0, sb
0061b3f0  00 30 99 e5                                      ldr r3, [sb]
0061b3f4  0f e0 a0 e1                                      mov lr, pc
0061b3f8  04 f1 93 e5                                      ldr pc, [r3, #0x104]
0061b3fc  07 00 a0 e1                                      mov r0, r7
0061b400  00 30 97 e5                                      ldr r3, [r7]
0061b404  09 10 a0 e1                                      mov r1, sb
0061b408  0f e0 a0 e1                                      mov lr, pc
0061b40c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b410  00 30 99 e5                                      ldr r3, [sb]
0061b414  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b418  00 00 89 e0                                      add r0, sb, r0
0061b41c  58 08 f4 eb                                      bl #0x31d584
0061b420  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b424  01 50 85 e2                                      add r5, r5, #1
0061b428  01 00 55 e1                                      cmp r5, r1
0061b42c  cb ff ff ba                                      blt #0x61b360
0061b430  07 60 a0 e1                                      mov r6, r7
0061b434  06 00 a0 e1                                      mov r0, r6
0061b438  04 10 94 e5                                      ldr r1, [r4, #4]
0061b43c  00 30 96 e5                                      ldr r3, [r6]
0061b440  0f e0 a0 e1                                      mov lr, pc
0061b444  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0061b448  00 30 96 e5                                      ldr r3, [r6]
0061b44c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0061b450  06 00 a0 e1                                      mov r0, r6
0061b454  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0061b458  2c 20 8d e5                                      str r2, [sp, #0x2c]
0061b45c  10 20 94 e5                                      ldr r2, [r4, #0x10]
0061b460  2c 10 8d e2                                      add r1, sp, #0x2c
0061b464  30 20 8d e5                                      str r2, [sp, #0x30]
0061b468  14 20 94 e5                                      ldr r2, [r4, #0x14]
0061b46c  34 20 8d e5                                      str r2, [sp, #0x34]
0061b470  33 ff 2f e1                                      blx r3
0061b474  00 30 96 e5                                      ldr r3, [r6]
0061b478  18 20 94 e5                                      ldr r2, [r4, #0x18]
0061b47c  06 00 a0 e1                                      mov r0, r6
0061b480  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
0061b484  10 20 8d e5                                      str r2, [sp, #0x10]
0061b488  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0061b48c  10 10 8d e2                                      add r1, sp, #0x10
0061b490  14 20 8d e5                                      str r2, [sp, #0x14]
0061b494  20 20 94 e5                                      ldr r2, [r4, #0x20]
0061b498  18 20 8d e5                                      str r2, [sp, #0x18]
0061b49c  24 20 94 e5                                      ldr r2, [r4, #0x24]
0061b4a0  1c 20 8d e5                                      str r2, [sp, #0x1c]
0061b4a4  33 ff 2f e1                                      blx r3
0061b4a8  00 30 96 e5                                      ldr r3, [r6]
0061b4ac  28 20 94 e5                                      ldr r2, [r4, #0x28]
0061b4b0  06 00 a0 e1                                      mov r0, r6
0061b4b4  94 30 93 e5                                      ldr r3, [r3, #0x94]
0061b4b8  20 20 8d e5                                      str r2, [sp, #0x20]
0061b4bc  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0061b4c0  20 10 8d e2                                      add r1, sp, #0x20
0061b4c4  24 20 8d e5                                      str r2, [sp, #0x24]
0061b4c8  30 20 94 e5                                      ldr r2, [r4, #0x30]
0061b4cc  28 20 8d e5                                      str r2, [sp, #0x28]
0061b4d0  33 ff 2f e1                                      blx r3
0061b4d4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0061b4d8  00 30 96 e5                                      ldr r3, [r6]
0061b4dc  06 00 a0 e1                                      mov r0, r6
0061b4e0  00 10 51 e2                                      subs r1, r1, #0
0061b4e4  01 10 a0 13                                      movne r1, #1
0061b4e8  0f e0 a0 e1                                      mov lr, pc
0061b4ec  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0061b4f0  38 30 94 e5                                      ldr r3, [r4, #0x38]
0061b4f4  00 00 53 e3                                      cmp r3, #0
0061b4f8  17 00 00 da                                      ble #0x61b55c
0061b4fc  00 50 a0 e3                                      mov r5, #0
0061b500  05 70 a0 e1                                      mov r7, r5
0061b504  08 90 a0 e1                                      mov sb, r8
0061b508  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0061b50c  0a 30 a0 e1                                      mov r3, sl
0061b510  0b 10 a0 e1                                      mov r1, fp
0061b514  05 20 82 e0                                      add r2, r2, r5
0061b518  09 00 a0 e1                                      mov r0, sb
0061b51c  74 ff ff eb                                      bl #0x61b2f4
0061b520  00 30 96 e5                                      ldr r3, [r6]
0061b524  00 80 a0 e1                                      mov r8, r0
0061b528  00 10 a0 e1                                      mov r1, r0
0061b52c  06 00 a0 e1                                      mov r0, r6
0061b530  0f e0 a0 e1                                      mov lr, pc
0061b534  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b538  00 30 98 e5                                      ldr r3, [r8]
0061b53c  01 70 87 e2                                      add r7, r7, #1
0061b540  50 50 85 e2                                      add r5, r5, #0x50
0061b544  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b548  00 00 88 e0                                      add r0, r8, r0
0061b54c  0c 08 f4 eb                                      bl #0x31d584
0061b550  38 30 94 e5                                      ldr r3, [r4, #0x38]
0061b554  03 00 57 e1                                      cmp r7, r3
0061b558  ea ff ff ba                                      blt #0x61b508
0061b55c  06 00 a0 e1                                      mov r0, r6
0061b560  44 d0 8d e2                                      add sp, sp, #0x44
0061b564  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061b568  04 20 92 e5                                      ldr r2, [r2, #4]
0061b56c  08 00 9d e5                                      ldr r0, [sp, #8]
0061b570  08 10 a0 e1                                      mov r1, r8
0061b574  0a 30 a0 e1                                      mov r3, sl
0061b578  5c cc ff eb                                      bl #0x60e6f0
0061b57c  04 30 98 e5                                      ldr r3, [r8, #4]
0061b580  08 10 a0 e1                                      mov r1, r8
0061b584  08 20 9d e5                                      ldr r2, [sp, #8]
0061b588  03 00 a0 e1                                      mov r0, r3
0061b58c  00 c0 93 e5                                      ldr ip, [r3]
0061b590  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b594  0f e0 a0 e1                                      mov lr, pc
0061b598  50 f0 9c e5                                      ldr pc, [ip, #0x50]
0061b59c  00 90 50 e2                                      subs sb, r0, #0
0061b5a0  12 00 00 0a                                      beq #0x61b5f0
0061b5a4  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b5a8  00 30 99 e5                                      ldr r3, [sb]
0061b5ac  06 60 82 e0                                      add r6, r2, r6
0061b5b0  04 20 96 e5                                      ldr r2, [r6, #4]
0061b5b4  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b5b8  0f e0 a0 e1                                      mov lr, pc
0061b5bc  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b5c0  09 00 a0 e1                                      mov r0, sb
0061b5c4  02 10 a0 e3                                      mov r1, #2
0061b5c8  f3 ee fd eb                                      bl #0x59719c
0061b5cc  07 00 a0 e1                                      mov r0, r7
0061b5d0  00 30 97 e5                                      ldr r3, [r7]
0061b5d4  09 10 a0 e1                                      mov r1, sb
0061b5d8  0f e0 a0 e1                                      mov lr, pc
0061b5dc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b5e0  00 30 99 e5                                      ldr r3, [sb]
0061b5e4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b5e8  00 00 89 e0                                      add r0, sb, r0
0061b5ec  e4 07 f4 eb                                      bl #0x31d584
0061b5f0  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061b5f4  00 00 50 e3                                      cmp r0, #0
0061b5f8  00 00 00 0a                                      beq #0x61b600
0061b5fc  e0 07 f4 eb                                      bl #0x31d584
0061b600  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b604  01 50 85 e2                                      add r5, r5, #1
0061b608  01 00 55 e1                                      cmp r5, r1
0061b60c  53 ff ff ba                                      blt #0x61b360
0061b610  86 ff ff ea                                      b #0x61b430
0061b614  04 10 92 e5                                      ldr r1, [r2, #4]
0061b618  08 00 a0 e1                                      mov r0, r8
0061b61c  0a 20 a0 e1                                      mov r2, sl
0061b620  db fc ff eb                                      bl #0x61a994
0061b624  00 60 50 e2                                      subs r6, r0, #0
0061b628  f4 ff ff 0a                                      beq #0x61b600
0061b62c  06 10 a0 e1                                      mov r1, r6
0061b630  07 00 a0 e1                                      mov r0, r7
0061b634  00 30 97 e5                                      ldr r3, [r7]
0061b638  0f e0 a0 e1                                      mov lr, pc
0061b63c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b640  00 30 96 e5                                      ldr r3, [r6]
0061b644  01 50 85 e2                                      add r5, r5, #1
0061b648  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b64c  00 00 86 e0                                      add r0, r6, r0
0061b650  cb 07 f4 eb                                      bl #0x31d584
0061b654  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b658  01 00 55 e1                                      cmp r5, r1
0061b65c  3f ff ff ba                                      blt #0x61b360
0061b660  72 ff ff ea                                      b #0x61b430
0061b664  04 30 92 e5                                      ldr r3, [r2, #4]
0061b668  08 00 a0 e1                                      mov r0, r8
0061b66c  0a 20 a0 e1                                      mov r2, sl
0061b670  04 10 93 e5                                      ldr r1, [r3, #4]
0061b674  01 10 81 e2                                      add r1, r1, #1
0061b678  f3 fe ff eb                                      bl #0x61b24c
0061b67c  00 60 50 e2                                      subs r6, r0, #0
0061b680  e9 ff ff 1a                                      bne #0x61b62c
0061b684  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b688  dd ff ff ea                                      b #0x61b604
0061b68c  04 30 92 e5                                      ldr r3, [r2, #4]
0061b690  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0061b694  08 10 a0 e1                                      mov r1, r8
0061b698  0b 20 a0 e1                                      mov r2, fp
0061b69c  00 a0 8d e5                                      str sl, [sp]
0061b6a0  04 fe ff eb                                      bl #0x61aeb8
0061b6a4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0061b6a8  00 00 50 e3                                      cmp r0, #0
0061b6ac  38 00 8d e5                                      str r0, [sp, #0x38]
0061b6b0  04 30 90 15                                      ldrne r3, [r0, #4]
0061b6b4  01 30 83 12                                      addne r3, r3, #1
0061b6b8  04 30 80 15                                      strne r3, [r0, #4]
0061b6bc  3c 00 9d 15                                      ldrne r0, [sp, #0x3c]
0061b6c0  00 00 50 e3                                      cmp r0, #0
0061b6c4  00 00 00 0a                                      beq #0x61b6cc
0061b6c8  ad 07 f4 eb                                      bl #0x31d584
0061b6cc  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061b6d0  00 00 53 e3                                      cmp r3, #0
0061b6d4  c9 ff ff 0a                                      beq #0x61b600
0061b6d8  04 30 98 e5                                      ldr r3, [r8, #4]
0061b6dc  08 10 a0 e1                                      mov r1, r8
0061b6e0  08 20 9d e5                                      ldr r2, [sp, #8]
0061b6e4  03 00 a0 e1                                      mov r0, r3
0061b6e8  00 c0 93 e5                                      ldr ip, [r3]
0061b6ec  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b6f0  0f e0 a0 e1                                      mov lr, pc
0061b6f4  48 f0 9c e5                                      ldr pc, [ip, #0x48]
0061b6f8  00 90 50 e2                                      subs sb, r0, #0
0061b6fc  3b 00 00 0a                                      beq #0x61b7f0
0061b700  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b704  00 30 99 e5                                      ldr r3, [sb]
0061b708  06 60 82 e0                                      add r6, r2, r6
0061b70c  04 20 96 e5                                      ldr r2, [r6, #4]
0061b710  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b714  0f e0 a0 e1                                      mov lr, pc
0061b718  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b71c  2a 00 00 ea                                      b #0x61b7cc
0061b720  04 30 92 e5                                      ldr r3, [r2, #4]
0061b724  01 c0 a0 e3                                      mov ip, #1
0061b728  08 00 9d e5                                      ldr r0, [sp, #8]
0061b72c  08 10 a0 e1                                      mov r1, r8
0061b730  0b 20 a0 e1                                      mov r2, fp
0061b734  00 14 8d e8                                      stm sp, {sl, ip}
0061b738  6a fd ff eb                                      bl #0x61ace8
0061b73c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061b740  03 00 a0 e1                                      mov r0, r3
0061b744  00 30 93 e5                                      ldr r3, [r3]
0061b748  0f e0 a0 e1                                      mov lr, pc
0061b74c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0061b750  02 00 50 e3                                      cmp r0, #2
0061b754  4e 00 00 0a                                      beq #0x61b894
0061b758  38 30 9d e5                                      ldr r3, [sp, #0x38]
0061b75c  03 00 a0 e1                                      mov r0, r3
0061b760  00 30 93 e5                                      ldr r3, [r3]
0061b764  0f e0 a0 e1                                      mov lr, pc
0061b768  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0061b76c  03 00 50 e3                                      cmp r0, #3
0061b770  47 00 00 0a                                      beq #0x61b894
0061b774  04 30 98 e5                                      ldr r3, [r8, #4]
0061b778  08 10 a0 e1                                      mov r1, r8
0061b77c  08 20 9d e5                                      ldr r2, [sp, #8]
0061b780  03 00 a0 e1                                      mov r0, r3
0061b784  00 c0 93 e5                                      ldr ip, [r3]
0061b788  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b78c  0f e0 a0 e1                                      mov lr, pc
0061b790  48 f0 9c e5                                      ldr pc, [ip, #0x48]
0061b794  00 90 a0 e1                                      mov sb, r0
0061b798  00 00 59 e3                                      cmp sb, #0
0061b79c  13 00 00 0a                                      beq #0x61b7f0
0061b7a0  44 20 94 e5                                      ldr r2, [r4, #0x44]
0061b7a4  09 00 a0 e1                                      mov r0, sb
0061b7a8  00 30 99 e5                                      ldr r3, [sb]
0061b7ac  06 60 82 e0                                      add r6, r2, r6
0061b7b0  04 20 96 e5                                      ldr r2, [r6, #4]
0061b7b4  14 10 92 e5                                      ldr r1, [r2, #0x14]
0061b7b8  0f e0 a0 e1                                      mov lr, pc
0061b7bc  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0061b7c0  09 00 a0 e1                                      mov r0, sb
0061b7c4  02 10 a0 e3                                      mov r1, #2
0061b7c8  73 ee fd eb                                      bl #0x59719c
0061b7cc  07 00 a0 e1                                      mov r0, r7
0061b7d0  00 30 97 e5                                      ldr r3, [r7]
0061b7d4  09 10 a0 e1                                      mov r1, sb
0061b7d8  0f e0 a0 e1                                      mov lr, pc
0061b7dc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b7e0  00 30 99 e5                                      ldr r3, [sb]
0061b7e4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b7e8  00 00 89 e0                                      add r0, sb, r0
0061b7ec  64 07 f4 eb                                      bl #0x31d584
0061b7f0  38 00 9d e5                                      ldr r0, [sp, #0x38]
0061b7f4  00 00 50 e3                                      cmp r0, #0
0061b7f8  07 ff ff 1a                                      bne #0x61b41c
0061b7fc  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b800  7f ff ff ea                                      b #0x61b604
0061b804  04 10 92 e5                                      ldr r1, [r2, #4]
0061b808  08 00 a0 e1                                      mov r0, r8
0061b80c  0b 20 a0 e1                                      mov r2, fp
0061b810  0a 30 a0 e1                                      mov r3, sl
0061b814  1b fc ff eb                                      bl #0x61a888
0061b818  00 90 50 e2                                      subs sb, r0, #0
0061b81c  eb fe ff 1a                                      bne #0x61b3d0
0061b820  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b824  76 ff ff ea                                      b #0x61b604
0061b828  04 10 92 e5                                      ldr r1, [r2, #4]
0061b82c  08 00 a0 e1                                      mov r0, r8
0061b830  0b 20 a0 e1                                      mov r2, fp
0061b834  0a 30 a0 e1                                      mov r3, sl
0061b838  cf fb ff eb                                      bl #0x61a77c
0061b83c  00 60 50 e2                                      subs r6, r0, #0
0061b840  79 ff ff 1a                                      bne #0x61b62c
0061b844  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b848  6d ff ff ea                                      b #0x61b604
0061b84c  04 30 92 e5                                      ldr r3, [r2, #4]
0061b850  08 00 a0 e1                                      mov r0, r8
0061b854  0a 20 a0 e1                                      mov r2, sl
0061b858  04 10 93 e5                                      ldr r1, [r3, #4]
0061b85c  01 10 81 e2                                      add r1, r1, #1
0061b860  9a fe ff eb                                      bl #0x61b2d0
0061b864  00 60 50 e2                                      subs r6, r0, #0
0061b868  6f ff ff 1a                                      bne #0x61b62c
0061b86c  40 10 94 e5                                      ldr r1, [r4, #0x40]
0061b870  63 ff ff ea                                      b #0x61b604
0061b874  04 30 90 e5                                      ldr r3, [r0, #4]
0061b878  00 10 a0 e1                                      mov r1, r0
0061b87c  03 00 a0 e1                                      mov r0, r3
0061b880  00 30 93 e5                                      ldr r3, [r3]
0061b884  0f e0 a0 e1                                      mov lr, pc
0061b888  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0061b88c  00 60 a0 e1                                      mov r6, r0
0061b890  a9 fe ff ea                                      b #0x61b33c
0061b894  04 30 98 e5                                      ldr r3, [r8, #4]
0061b898  08 10 a0 e1                                      mov r1, r8
0061b89c  08 20 9d e5                                      ldr r2, [sp, #8]
0061b8a0  03 00 a0 e1                                      mov r0, r3
0061b8a4  00 c0 93 e5                                      ldr ip, [r3]
0061b8a8  48 30 94 e5                                      ldr r3, [r4, #0x48]
0061b8ac  0f e0 a0 e1                                      mov lr, pc
0061b8b0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0061b8b4  00 90 a0 e1                                      mov sb, r0
0061b8b8  b6 ff ff ea                                      b #0x61b798

; FUNCTION 0x0061b8bc, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEPNS0_12SVisualSceneEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, glitch::collada::SVisualScene*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b8bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061b8c0  00 70 52 e2                                      subs r7, r2, #0
0061b8c4  00 80 a0 e1                                      mov r8, r0
0061b8c8  01 a0 a0 e1                                      mov sl, r1
0061b8cc  03 40 a0 e1                                      mov r4, r3
0061b8d0  22 00 00 0a                                      beq #0x61b960
0061b8d4  00 00 53 e3                                      cmp r3, #0
0061b8d8  22 00 00 0a                                      beq #0x61b968
0061b8dc  00 30 94 e5                                      ldr r3, [r4]
0061b8e0  04 00 a0 e1                                      mov r0, r4
0061b8e4  04 10 97 e5                                      ldr r1, [r7, #4]
0061b8e8  0f e0 a0 e1                                      mov lr, pc
0061b8ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0061b8f0  08 30 97 e5                                      ldr r3, [r7, #8]
0061b8f4  00 00 53 e3                                      cmp r3, #0
0061b8f8  16 00 00 da                                      ble #0x61b958
0061b8fc  00 50 a0 e3                                      mov r5, #0
0061b900  05 60 a0 e1                                      mov r6, r5
0061b904  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0061b908  04 30 a0 e1                                      mov r3, r4
0061b90c  0a 10 a0 e1                                      mov r1, sl
0061b910  05 20 82 e0                                      add r2, r2, r5
0061b914  08 00 a0 e1                                      mov r0, r8
0061b918  75 fe ff eb                                      bl #0x61b2f4
0061b91c  00 30 94 e5                                      ldr r3, [r4]
0061b920  00 90 a0 e1                                      mov sb, r0
0061b924  00 10 a0 e1                                      mov r1, r0
0061b928  04 00 a0 e1                                      mov r0, r4
0061b92c  0f e0 a0 e1                                      mov lr, pc
0061b930  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061b934  00 30 99 e5                                      ldr r3, [sb]
0061b938  01 60 86 e2                                      add r6, r6, #1
0061b93c  50 50 85 e2                                      add r5, r5, #0x50
0061b940  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061b944  00 00 89 e0                                      add r0, sb, r0
0061b948  0d 07 f4 eb                                      bl #0x31d584
0061b94c  08 30 97 e5                                      ldr r3, [r7, #8]
0061b950  03 00 56 e1                                      cmp r6, r3
0061b954  ea ff ff ba                                      blt #0x61b904
0061b958  04 00 a0 e1                                      mov r0, r4
0061b95c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061b960  07 00 a0 e1                                      mov r0, r7
0061b964  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061b968  04 30 90 e5                                      ldr r3, [r0, #4]
0061b96c  00 10 a0 e1                                      mov r1, r0
0061b970  03 00 a0 e1                                      mov r0, r3
0061b974  00 30 93 e5                                      ldr r3, [r3]
0061b978  0f e0 a0 e1                                      mov lr, pc
0061b97c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0061b980  00 40 a0 e1                                      mov r4, r0
0061b984  d4 ff ff ea                                      b #0x61b8dc

; FUNCTION 0x0061b988, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b988  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b98c  01 40 a0 e1                                      mov r4, r1
0061b990  02 10 a0 e1                                      mov r1, r2
0061b994  03 50 a0 e1                                      mov r5, r3
0061b998  00 60 a0 e1                                      mov r6, r0
0061b99c  ea ca ff eb                                      bl #0x60e54c
0061b9a0  04 10 a0 e1                                      mov r1, r4
0061b9a4  00 20 a0 e1                                      mov r2, r0
0061b9a8  05 30 a0 e1                                      mov r3, r5
0061b9ac  06 00 a0 e1                                      mov r0, r6
0061b9b0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b9b4  c0 ff ff ea                                      b #0x61b8bc

; FUNCTION 0x0061b9b8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructVisualScene(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061b9b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0061b9bc  01 40 a0 e1                                      mov r4, r1
0061b9c0  02 10 a0 e1                                      mov r1, r2
0061b9c4  03 50 a0 e1                                      mov r5, r3
0061b9c8  00 60 a0 e1                                      mov r6, r0
0061b9cc  2f fb ff eb                                      bl #0x61a690
0061b9d0  04 10 a0 e1                                      mov r1, r4
0061b9d4  00 20 a0 e1                                      mov r2, r0
0061b9d8  05 30 a0 e1                                      mov r3, r5
0061b9dc  06 00 a0 e1                                      mov r0, r6
0061b9e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061b9e4  b4 ff ff ea                                      b #0x61b8bc

; FUNCTION 0x0061b9e8, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverE
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*) const
; decoder-mode: arm
0061b9e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061b9ec  00 60 90 e5                                      ldr r6, [r0]
0061b9f0  00 50 a0 e1                                      mov r5, r0
0061b9f4  01 70 a0 e1                                      mov r7, r1
0061b9f8  00 00 56 e3                                      cmp r6, #0
0061b9fc  2c 00 00 0a                                      beq #0x61bab4
0061ba00  04 30 90 e5                                      ldr r3, [r0, #4]
0061ba04  00 10 a0 e1                                      mov r1, r0
0061ba08  03 00 a0 e1                                      mov r0, r3
0061ba0c  00 30 93 e5                                      ldr r3, [r3]
0061ba10  0f e0 a0 e1                                      mov lr, pc
0061ba14  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0061ba18  00 10 95 e5                                      ldr r1, [r5]
0061ba1c  00 60 a0 e1                                      mov r6, r0
0061ba20  24 30 91 e5                                      ldr r3, [r1, #0x24]
0061ba24  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ba28  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
0061ba2c  00 00 52 e3                                      cmp r2, #0
0061ba30  19 00 00 da                                      ble #0x61ba9c
0061ba34  00 40 a0 e3                                      mov r4, #0
0061ba38  04 00 00 ea                                      b #0x61ba50
0061ba3c  24 30 91 e5                                      ldr r3, [r1, #0x24]
0061ba40  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ba44  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
0061ba48  02 00 54 e1                                      cmp r4, r2
0061ba4c  12 00 00 aa                                      bge #0x61ba9c
0061ba50  bc 30 93 e5                                      ldr r3, [r3, #0xbc]
0061ba54  84 21 93 e7                                      ldr r2, [r3, r4, lsl #3]
0061ba58  84 31 83 e0                                      add r3, r3, r4, lsl #3
0061ba5c  01 40 84 e2                                      add r4, r4, #1
0061ba60  06 00 52 e3                                      cmp r2, #6
0061ba64  f4 ff ff 1a                                      bne #0x61ba3c
0061ba68  04 30 93 e5                                      ldr r3, [r3, #4]
0061ba6c  07 10 a0 e1                                      mov r1, r7
0061ba70  05 00 a0 e1                                      mov r0, r5
0061ba74  04 20 93 e5                                      ldr r2, [r3, #4]
0061ba78  06 30 a0 e1                                      mov r3, r6
0061ba7c  01 20 82 e2                                      add r2, r2, #1
0061ba80  cc ff ff eb                                      bl #0x61b9b8
0061ba84  00 10 95 e5                                      ldr r1, [r5]
0061ba88  24 30 91 e5                                      ldr r3, [r1, #0x24]
0061ba8c  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061ba90  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
0061ba94  02 00 54 e1                                      cmp r4, r2
0061ba98  ec ff ff ba                                      blt #0x61ba50
0061ba9c  06 00 a0 e1                                      mov r0, r6
0061baa0  4d fe 00 eb                                      bl #0x65b3dc
0061baa4  06 00 a0 e1                                      mov r0, r6
0061baa8  71 03 01 eb                                      bl #0x65c874
0061baac  06 00 a0 e1                                      mov r0, r6
0061bab0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061bab4  06 00 a0 e1                                      mov r0, r6
0061bab8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061babc, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*, bool) const
; decoder-mode: arm
0061babc  70 40 2d e9                                      push {r4, r5, r6, lr}
0061bac0  02 50 a0 e1                                      mov r5, r2
0061bac4  00 60 a0 e1                                      mov r6, r0
0061bac8  c6 ff ff eb                                      bl #0x61b9e8
0061bacc  00 40 50 e2                                      subs r4, r0, #0
0061bad0  01 00 00 0a                                      beq #0x61badc
0061bad4  00 00 55 e3                                      cmp r5, #0
0061bad8  01 00 00 1a                                      bne #0x61bae4
0061badc  04 00 a0 e1                                      mov r0, r4
0061bae0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061bae4  06 00 a0 e1                                      mov r0, r6
0061bae8  19 d0 ff eb                                      bl #0x60fb54
0061baec  00 50 50 e2                                      subs r5, r0, #0
0061baf0  f9 ff ff 0a                                      beq #0x61badc
0061baf4  04 00 a0 e1                                      mov r0, r4
0061baf8  00 30 94 e5                                      ldr r3, [r4]
0061bafc  05 10 a0 e1                                      mov r1, r5
0061bb00  0f e0 a0 e1                                      mov lr, pc
0061bb04  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0061bb08  00 30 95 e5                                      ldr r3, [r5]
0061bb0c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061bb10  00 00 85 e0                                      add r0, r5, r0
0061bb14  9a 06 f4 eb                                      bl #0x31d584
0061bb18  04 00 a0 e1                                      mov r0, r4
0061bb1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061bb20, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*, char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061bb20  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061bb24  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0061bb28  00 70 52 e2                                      subs r7, r2, #0
0061bb2c  0c d0 4d e2                                      sub sp, sp, #0xc
0061bb30  00 80 a0 e1                                      mov r8, r0
0061bb34  04 40 8f e0                                      add r4, pc, r4
0061bb38  1f 00 00 0a                                      beq #0x61bbbc
0061bb3c  88 50 9f e5                                      ldr r5, [pc, #0x88]
0061bb40  00 20 a0 e3                                      mov r2, #0
0061bb44  02 30 a0 e1                                      mov r3, r2
0061bb48  05 60 94 e7                                      ldr r6, [r4, r5]
0061bb4c  00 00 96 e5                                      ldr r0, [r6]
0061bb50  41 fc 00 eb                                      bl #0x65ac5c
0061bb54  00 00 50 e3                                      cmp r0, #0
0061bb58  00 70 a0 01                                      moveq r7, r0
0061bb5c  13 00 00 0a                                      beq #0x61bbb0
0061bb60  00 30 96 e5                                      ldr r3, [r6]
0061bb64  00 20 a0 e3                                      mov r2, #0
0061bb68  08 10 a0 e1                                      mov r1, r8
0061bb6c  28 a0 d3 e5                                      ldrb sl, [r3, #0x28]
0061bb70  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061bb74  81 00 8d e8                                      stm sp, {r0, r7}
0061bb78  04 30 90 e5                                      ldr r3, [r0, #4]
0061bb7c  0d 60 a0 e1                                      mov r6, sp
0061bb80  02 00 53 e1                                      cmp r3, r2
0061bb84  01 30 83 12                                      addne r3, r3, #1
0061bb88  04 30 80 15                                      strne r3, [r0, #4]
0061bb8c  01 20 a0 e3                                      mov r2, #1
0061bb90  0d 00 a0 e1                                      mov r0, sp
0061bb94  c8 ff ff eb                                      bl #0x61babc
0061bb98  00 70 a0 e1                                      mov r7, r0
0061bb9c  0d 00 a0 e1                                      mov r0, sp
0061bba0  33 f6 ff eb                                      bl #0x619474
0061bba4  05 30 94 e7                                      ldr r3, [r4, r5]
0061bba8  00 30 93 e5                                      ldr r3, [r3]
0061bbac  28 a0 c3 e5                                      strb sl, [r3, #0x28]
0061bbb0  07 00 a0 e1                                      mov r0, r7
0061bbb4  0c d0 8d e2                                      add sp, sp, #0xc
0061bbb8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0061bbbc  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0061bbc0  03 70 94 e7                                      ldr r7, [r4, r3]
0061bbc4  dc ff ff ea                                      b #0x61bb3c
; mapping-symbol data/literal pool
0061bbc8  5c 8f 37 00 48 44 00 00 10 47 00 00              .byte 0x5c, 0x8f, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0061bbd4, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*, char const*, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061bbd4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061bbd8  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
0061bbdc  00 70 53 e2                                      subs r7, r3, #0
0061bbe0  0c d0 4d e2                                      sub sp, sp, #0xc
0061bbe4  04 40 8f e0                                      add r4, pc, r4
0061bbe8  00 80 a0 e1                                      mov r8, r0
0061bbec  02 a0 a0 e1                                      mov sl, r2
0061bbf0  1f 00 00 0a                                      beq #0x61bc74
0061bbf4  88 50 9f e5                                      ldr r5, [pc, #0x88]
0061bbf8  00 20 a0 e3                                      mov r2, #0
0061bbfc  02 30 a0 e1                                      mov r3, r2
0061bc00  05 60 94 e7                                      ldr r6, [r4, r5]
0061bc04  00 00 96 e5                                      ldr r0, [r6]
0061bc08  13 fc 00 eb                                      bl #0x65ac5c
0061bc0c  00 00 50 e3                                      cmp r0, #0
0061bc10  00 80 a0 01                                      moveq r8, r0
0061bc14  13 00 00 0a                                      beq #0x61bc68
0061bc18  00 30 96 e5                                      ldr r3, [r6]
0061bc1c  00 20 a0 e3                                      mov r2, #0
0061bc20  08 10 a0 e1                                      mov r1, r8
0061bc24  28 60 d3 e5                                      ldrb r6, [r3, #0x28]
0061bc28  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061bc2c  81 00 8d e8                                      stm sp, {r0, r7}
0061bc30  04 30 90 e5                                      ldr r3, [r0, #4]
0061bc34  0d 70 a0 e1                                      mov r7, sp
0061bc38  02 00 53 e1                                      cmp r3, r2
0061bc3c  01 30 83 12                                      addne r3, r3, #1
0061bc40  04 30 80 15                                      strne r3, [r0, #4]
0061bc44  0a 20 a0 e1                                      mov r2, sl
0061bc48  0d 00 a0 e1                                      mov r0, sp
0061bc4c  9a ff ff eb                                      bl #0x61babc
0061bc50  00 80 a0 e1                                      mov r8, r0
0061bc54  0d 00 a0 e1                                      mov r0, sp
0061bc58  05 f6 ff eb                                      bl #0x619474
0061bc5c  05 30 94 e7                                      ldr r3, [r4, r5]
0061bc60  00 30 93 e5                                      ldr r3, [r3]
0061bc64  28 60 c3 e5                                      strb r6, [r3, #0x28]
0061bc68  08 00 a0 e1                                      mov r0, r8
0061bc6c  0c d0 8d e2                                      add sp, sp, #0xc
0061bc70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0061bc74  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0061bc78  03 70 94 e7                                      ldr r7, [r4, r3]
0061bc7c  dc ff ff ea                                      b #0x61bbf4
; mapping-symbol data/literal pool
0061bc80  ac 8e 37 00 48 44 00 00 10 47 00 00              .byte 0xac, 0x8e, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0061bc8c, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*, glitch::io::IReadFile*, bool, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061bc8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061bc90  14 d0 4d e2                                      sub sp, sp, #0x14
0061bc94  30 50 9d e5                                      ldr r5, [sp, #0x30]
0061bc98  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
0061bc9c  00 80 a0 e1                                      mov r8, r0
0061bca0  00 00 55 e3                                      cmp r5, #0
0061bca4  04 40 8f e0                                      add r4, pc, r4
0061bca8  02 a0 a0 e1                                      mov sl, r2
0061bcac  03 00 a0 e1                                      mov r0, r3
0061bcb0  21 00 00 0a                                      beq #0x61bd3c
0061bcb4  90 60 9f e5                                      ldr r6, [pc, #0x90]
0061bcb8  00 20 a0 e3                                      mov r2, #0
0061bcbc  00 00 8d e5                                      str r0, [sp]
0061bcc0  06 70 94 e7                                      ldr r7, [r4, r6]
0061bcc4  02 30 a0 e1                                      mov r3, r2
0061bcc8  00 00 97 e5                                      ldr r0, [r7]
0061bccc  2e fb 00 eb                                      bl #0x65a98c
0061bcd0  00 00 50 e3                                      cmp r0, #0
0061bcd4  00 80 a0 01                                      moveq r8, r0
0061bcd8  14 00 00 0a                                      beq #0x61bd30
0061bcdc  00 30 97 e5                                      ldr r3, [r7]
0061bce0  00 20 a0 e3                                      mov r2, #0
0061bce4  08 10 a0 e1                                      mov r1, r8
0061bce8  28 70 d3 e5                                      ldrb r7, [r3, #0x28]
0061bcec  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061bcf0  0c 50 8d e5                                      str r5, [sp, #0xc]
0061bcf4  08 00 8d e5                                      str r0, [sp, #8]
0061bcf8  04 30 90 e5                                      ldr r3, [r0, #4]
0061bcfc  08 50 8d e2                                      add r5, sp, #8
0061bd00  02 00 53 e1                                      cmp r3, r2
0061bd04  01 30 83 12                                      addne r3, r3, #1
0061bd08  04 30 80 15                                      strne r3, [r0, #4]
0061bd0c  0a 20 a0 e1                                      mov r2, sl
0061bd10  05 00 a0 e1                                      mov r0, r5
0061bd14  68 ff ff eb                                      bl #0x61babc
0061bd18  00 80 a0 e1                                      mov r8, r0
0061bd1c  05 00 a0 e1                                      mov r0, r5
0061bd20  d3 f5 ff eb                                      bl #0x619474
0061bd24  06 30 94 e7                                      ldr r3, [r4, r6]
0061bd28  00 30 93 e5                                      ldr r3, [r3]
0061bd2c  28 70 c3 e5                                      strb r7, [r3, #0x28]
0061bd30  08 00 a0 e1                                      mov r0, r8
0061bd34  14 d0 8d e2                                      add sp, sp, #0x14
0061bd38  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0061bd3c  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0061bd40  03 50 94 e7                                      ldr r5, [r4, r3]
0061bd44  da ff ff ea                                      b #0x61bcb4
; mapping-symbol data/literal pool
0061bd48  ec 8d 37 00 48 44 00 00 10 47 00 00              .byte 0xec, 0x8d, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0061bd54, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructScene(glitch::video::IVideoDriver*, glitch::io::IReadFile*, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061bd54  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061bd58  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
0061bd5c  00 80 53 e2                                      subs r8, r3, #0
0061bd60  10 d0 4d e2                                      sub sp, sp, #0x10
0061bd64  04 40 8f e0                                      add r4, pc, r4
0061bd68  00 a0 a0 e1                                      mov sl, r0
0061bd6c  02 90 a0 e1                                      mov sb, r2
0061bd70  21 00 00 0a                                      beq #0x61bdfc
0061bd74  90 60 9f e5                                      ldr r6, [pc, #0x90]
0061bd78  00 50 a0 e3                                      mov r5, #0
0061bd7c  05 20 a0 e1                                      mov r2, r5
0061bd80  06 70 94 e7                                      ldr r7, [r4, r6]
0061bd84  05 30 a0 e1                                      mov r3, r5
0061bd88  00 00 97 e5                                      ldr r0, [r7]
0061bd8c  00 50 8d e5                                      str r5, [sp]
0061bd90  fd fa 00 eb                                      bl #0x65a98c
0061bd94  00 00 50 e3                                      cmp r0, #0
0061bd98  00 80 a0 01                                      moveq r8, r0
0061bd9c  13 00 00 0a                                      beq #0x61bdf0
0061bda0  00 30 97 e5                                      ldr r3, [r7]
0061bda4  0a 10 a0 e1                                      mov r1, sl
0061bda8  09 20 a0 e1                                      mov r2, sb
0061bdac  28 70 d3 e5                                      ldrb r7, [r3, #0x28]
0061bdb0  28 50 c3 e5                                      strb r5, [r3, #0x28]
0061bdb4  0c 80 8d e5                                      str r8, [sp, #0xc]
0061bdb8  08 00 8d e5                                      str r0, [sp, #8]
0061bdbc  04 30 90 e5                                      ldr r3, [r0, #4]
0061bdc0  08 50 8d e2                                      add r5, sp, #8
0061bdc4  00 00 53 e3                                      cmp r3, #0
0061bdc8  01 30 83 12                                      addne r3, r3, #1
0061bdcc  04 30 80 15                                      strne r3, [r0, #4]
0061bdd0  05 00 a0 e1                                      mov r0, r5
0061bdd4  38 ff ff eb                                      bl #0x61babc
0061bdd8  00 80 a0 e1                                      mov r8, r0
0061bddc  05 00 a0 e1                                      mov r0, r5
0061bde0  a3 f5 ff eb                                      bl #0x619474
0061bde4  06 30 94 e7                                      ldr r3, [r4, r6]
0061bde8  00 30 93 e5                                      ldr r3, [r3]
0061bdec  28 70 c3 e5                                      strb r7, [r3, #0x28]
0061bdf0  08 00 a0 e1                                      mov r0, r8
0061bdf4  10 d0 8d e2                                      add sp, sp, #0x10
0061bdf8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061bdfc  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0061be00  03 80 94 e7                                      ldr r8, [r4, r3]
0061be04  da ff ff ea                                      b #0x61bd74
; mapping-symbol data/literal pool
0061be08  2c 8d 37 00 48 44 00 00 10 47 00 00              .byte 0x2c, 0x8d, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0061be14, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS0_5SNodeE
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::collada::SNode*) const
; decoder-mode: arm
0061be14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061be18  00 60 52 e2                                      subs r6, r2, #0
0061be1c  00 50 a0 e1                                      mov r5, r0
0061be20  01 70 a0 e1                                      mov r7, r1
0061be24  19 00 00 0a                                      beq #0x61be90
0061be28  04 30 90 e5                                      ldr r3, [r0, #4]
0061be2c  00 10 a0 e1                                      mov r1, r0
0061be30  03 00 a0 e1                                      mov r0, r3
0061be34  00 30 93 e5                                      ldr r3, [r3]
0061be38  0f e0 a0 e1                                      mov lr, pc
0061be3c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0061be40  00 40 a0 e1                                      mov r4, r0
0061be44  06 20 a0 e1                                      mov r2, r6
0061be48  07 10 a0 e1                                      mov r1, r7
0061be4c  04 30 a0 e1                                      mov r3, r4
0061be50  05 00 a0 e1                                      mov r0, r5
0061be54  26 fd ff eb                                      bl #0x61b2f4
0061be58  00 30 94 e5                                      ldr r3, [r4]
0061be5c  00 10 a0 e1                                      mov r1, r0
0061be60  00 50 a0 e1                                      mov r5, r0
0061be64  04 00 a0 e1                                      mov r0, r4
0061be68  0f e0 a0 e1                                      mov lr, pc
0061be6c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0061be70  04 00 a0 e1                                      mov r0, r4
0061be74  58 fd 00 eb                                      bl #0x65b3dc
0061be78  00 30 95 e5                                      ldr r3, [r5]
0061be7c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0061be80  00 00 85 e0                                      add r0, r5, r0
0061be84  be 05 f4 eb                                      bl #0x31d584
0061be88  04 00 a0 e1                                      mov r0, r4
0061be8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061be90  06 00 a0 e1                                      mov r0, r6
0061be94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061be98, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase16getAnimationClipEPKc
; demangled: glitch::collada::CColladaDatabase::getAnimationClip(char const*) const
; decoder-mode: arm
0061be98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061be9c  00 30 90 e5                                      ldr r3, [r0]
0061bea0  01 70 a0 e1                                      mov r7, r1
0061bea4  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061bea8  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061beac  34 60 93 e5                                      ldr r6, [r3, #0x34]
0061beb0  00 00 56 e3                                      cmp r6, #0
0061beb4  0d 00 00 da                                      ble #0x61bef0
0061beb8  38 40 93 e5                                      ldr r4, [r3, #0x38]
0061bebc  00 50 a0 e3                                      mov r5, #0
0061bec0  02 00 00 ea                                      b #0x61bed0
0061bec4  06 00 55 e1                                      cmp r5, r6
0061bec8  0c 40 84 e2                                      add r4, r4, #0xc
0061becc  07 00 00 0a                                      beq #0x61bef0
0061bed0  00 00 94 e5                                      ldr r0, [r4]
0061bed4  07 10 a0 e1                                      mov r1, r7
0061bed8  0f c9 f3 eb                                      bl #0x30e31c
0061bedc  00 00 50 e3                                      cmp r0, #0
0061bee0  01 50 85 e2                                      add r5, r5, #1
0061bee4  f6 ff ff 1a                                      bne #0x61bec4
0061bee8  04 00 a0 e1                                      mov r0, r4
0061beec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061bef0  00 00 a0 e3                                      mov r0, #0
0061bef4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061bef8, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKc
; demangled: glitch::collada::CColladaDatabase::getAnimation(char const*) const
; decoder-mode: arm
0061bef8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0061befc  00 30 90 e5                                      ldr r3, [r0]
0061bf00  01 70 a0 e1                                      mov r7, r1
0061bf04  24 30 93 e5                                      ldr r3, [r3, #0x24]
0061bf08  20 30 93 e5                                      ldr r3, [r3, #0x20]
0061bf0c  24 60 93 e5                                      ldr r6, [r3, #0x24]
0061bf10  00 00 56 e3                                      cmp r6, #0
0061bf14  0d 00 00 da                                      ble #0x61bf50
0061bf18  28 40 93 e5                                      ldr r4, [r3, #0x28]
0061bf1c  00 50 a0 e3                                      mov r5, #0
0061bf20  02 00 00 ea                                      b #0x61bf30
0061bf24  06 00 55 e1                                      cmp r5, r6
0061bf28  20 40 84 e2                                      add r4, r4, #0x20
0061bf2c  07 00 00 0a                                      beq #0x61bf50
0061bf30  00 00 94 e5                                      ldr r0, [r4]
0061bf34  07 10 a0 e1                                      mov r1, r7
0061bf38  f7 c8 f3 eb                                      bl #0x30e31c
0061bf3c  00 00 50 e3                                      cmp r0, #0
0061bf40  01 50 85 e2                                      add r5, r5, #1
0061bf44  f6 ff ff 1a                                      bne #0x61bf24
0061bf48  04 00 a0 e1                                      mov r0, r4
0061bf4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0061bf50  00 00 a0 e3                                      mov r0, #0
0061bf54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0061bf58, declared_size=368, range_size=368, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase4findEPKcRj
; demangled: glitch::collada::CColladaDatabase::find(char const*, unsigned int&) const
; decoder-mode: arm
0061bf58  00 30 92 e5                                      ldr r3, [r2]
0061bf5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0061bf60  01 00 13 e3                                      tst r3, #1
0061bf64  02 40 a0 e1                                      mov r4, r2
0061bf68  00 60 a0 e1                                      mov r6, r0
0061bf6c  01 50 a0 e1                                      mov r5, r1
0061bf70  14 00 00 1a                                      bne #0x61bfc8
0061bf74  02 00 13 e3                                      tst r3, #2
0061bf78  19 00 00 1a                                      bne #0x61bfe4
0061bf7c  04 00 13 e3                                      tst r3, #4
0061bf80  20 00 00 1a                                      bne #0x61c008
0061bf84  08 00 13 e3                                      tst r3, #8
0061bf88  30 00 00 1a                                      bne #0x61c050
0061bf8c  10 00 13 e3                                      tst r3, #0x10
0061bf90  37 00 00 1a                                      bne #0x61c074
0061bf94  20 00 13 e3                                      tst r3, #0x20
0061bf98  23 00 00 1a                                      bne #0x61c02c
0061bf9c  40 00 13 e3                                      tst r3, #0x40
0061bfa0  3c 00 00 0a                                      beq #0x61c098
0061bfa4  06 00 a0 e1                                      mov r0, r6
0061bfa8  05 10 a0 e1                                      mov r1, r5
0061bfac  7b fa ff eb                                      bl #0x61a9a0
0061bfb0  00 00 50 e3                                      cmp r0, #0
0061bfb4  00 30 94 05                                      ldreq r3, [r4]
0061bfb8  36 00 00 0a                                      beq #0x61c098
0061bfbc  40 30 a0 e3                                      mov r3, #0x40
0061bfc0  00 30 84 e5                                      str r3, [r4]
0061bfc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061bfc8  ca ff ff eb                                      bl #0x61bef8
0061bfcc  00 00 50 e3                                      cmp r0, #0
0061bfd0  00 30 94 05                                      ldreq r3, [r4]
0061bfd4  e6 ff ff 0a                                      beq #0x61bf74
0061bfd8  01 30 a0 e3                                      mov r3, #1
0061bfdc  00 30 84 e5                                      str r3, [r4]
0061bfe0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061bfe4  06 00 a0 e1                                      mov r0, r6
0061bfe8  05 10 a0 e1                                      mov r1, r5
0061bfec  a9 ff ff eb                                      bl #0x61be98
0061bff0  00 00 50 e3                                      cmp r0, #0
0061bff4  00 30 94 05                                      ldreq r3, [r4]
0061bff8  df ff ff 0a                                      beq #0x61bf7c
0061bffc  02 30 a0 e3                                      mov r3, #2
0061c000  00 30 84 e5                                      str r3, [r4]
0061c004  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061c008  06 00 a0 e1                                      mov r0, r6
0061c00c  05 10 a0 e1                                      mov r1, r5
0061c010  4f fc ff eb                                      bl #0x61b154
0061c014  00 00 50 e3                                      cmp r0, #0
0061c018  00 30 94 05                                      ldreq r3, [r4]
0061c01c  d8 ff ff 0a                                      beq #0x61bf84
0061c020  04 30 a0 e3                                      mov r3, #4
0061c024  00 30 84 e5                                      str r3, [r4]
0061c028  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061c02c  06 00 a0 e1                                      mov r0, r6
0061c030  05 10 a0 e1                                      mov r1, r5
0061c034  83 fa ff eb                                      bl #0x61aa48
0061c038  00 00 50 e3                                      cmp r0, #0
0061c03c  00 30 94 05                                      ldreq r3, [r4]
0061c040  d5 ff ff 0a                                      beq #0x61bf9c
0061c044  20 30 a0 e3                                      mov r3, #0x20
0061c048  00 30 84 e5                                      str r3, [r4]
0061c04c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061c050  06 00 a0 e1                                      mov r0, r6
0061c054  05 10 a0 e1                                      mov r1, r5
0061c058  13 fc ff eb                                      bl #0x61b0ac
0061c05c  00 00 50 e3                                      cmp r0, #0
0061c060  00 30 94 05                                      ldreq r3, [r4]
0061c064  c8 ff ff 0a                                      beq #0x61bf8c
0061c068  08 30 a0 e3                                      mov r3, #8
0061c06c  00 30 84 e5                                      str r3, [r4]
0061c070  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061c074  06 00 a0 e1                                      mov r0, r6
0061c078  05 10 a0 e1                                      mov r1, r5
0061c07c  e9 fa ff eb                                      bl #0x61ac28
0061c080  00 00 50 e3                                      cmp r0, #0
0061c084  00 30 94 05                                      ldreq r3, [r4]
0061c088  c1 ff ff 0a                                      beq #0x61bf94
0061c08c  10 30 a0 e3                                      mov r3, #0x10
0061c090  00 30 84 e5                                      str r3, [r4]
0061c094  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061c098  80 00 13 e3                                      tst r3, #0x80
0061c09c  01 00 00 1a                                      bne #0x61c0a8
0061c0a0  00 00 a0 e3                                      mov r0, #0
0061c0a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0061c0a8  06 00 a0 e1                                      mov r0, r6
0061c0ac  05 10 a0 e1                                      mov r1, r5
0061c0b0  76 f9 ff eb                                      bl #0x61a690
0061c0b4  00 00 50 e3                                      cmp r0, #0
0061c0b8  f8 ff ff 0a                                      beq #0x61c0a0
0061c0bc  80 30 a0 e3                                      mov r3, #0x80
0061c0c0  00 30 84 e5                                      str r3, [r4]
0061c0c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061c0c8, declared_size=280, range_size=280, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKcNS0_8SChannel4TypeEh
; demangled: glitch::collada::CColladaDatabase::getAnimation(char const*, glitch::collada::SChannel::Type, unsigned char) const
; decoder-mode: arm
0061c0c8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061c0cc  00 40 a0 e1                                      mov r4, r0
0061c0d0  00 00 90 e5                                      ldr r0, [r0]
0061c0d4  02 60 a0 e1                                      mov r6, r2
0061c0d8  03 90 a0 e1                                      mov sb, r3
0061c0dc  24 20 90 e5                                      ldr r2, [r0, #0x24]
0061c0e0  01 50 a0 e1                                      mov r5, r1
0061c0e4  20 30 92 e5                                      ldr r3, [r2, #0x20]
0061c0e8  24 a0 93 e5                                      ldr sl, [r3, #0x24]
0061c0ec  00 00 5a e3                                      cmp sl, #0
0061c0f0  2d 00 00 da                                      ble #0x61c1ac
0061c0f4  00 70 a0 e3                                      mov r7, #0
0061c0f8  0b 00 00 ea                                      b #0x61c12c
0061c0fc  01 00 56 e3                                      cmp r6, #1
0061c100  03 00 00 3a                                      blo #0x61c114
0061c104  04 00 56 e3                                      cmp r6, #4
0061c108  20 00 00 9a                                      bls #0x61c190
0061c10c  05 00 56 e3                                      cmp r6, #5
0061c110  28 00 00 0a                                      beq #0x61c1b8
0061c114  08 20 93 e5                                      ldr r2, [r3, #8]
0061c118  06 00 52 e1                                      cmp r2, r6
0061c11c  2b 00 00 0a                                      beq #0x61c1d0
0061c120  01 70 87 e2                                      add r7, r7, #1
0061c124  0a 00 57 e1                                      cmp r7, sl
0061c128  1f 00 00 0a                                      beq #0x61c1ac
0061c12c  04 00 a0 e1                                      mov r0, r4
0061c130  07 10 a0 e1                                      mov r1, r7
0061c134  88 c8 ff eb                                      bl #0x60e35c
0061c138  09 00 56 e3                                      cmp r6, #9
0061c13c  00 80 a0 e1                                      mov r8, r0
0061c140  10 30 90 e5                                      ldr r3, [r0, #0x10]
0061c144  1b 00 00 0a                                      beq #0x61c1b8
0061c148  eb ff ff 9a                                      bls #0x61c0fc
0061c14c  57 00 56 e3                                      cmp r6, #0x57
0061c150  ef ff ff 3a                                      blo #0x61c114
0061c154  5b 00 56 e3                                      cmp r6, #0x5b
0061c158  01 00 00 9a                                      bls #0x61c164
0061c15c  01 0c 56 e3                                      cmp r6, #0x100
0061c160  eb ff ff 1a                                      bne #0x61c114
0061c164  08 20 93 e5                                      ldr r2, [r3, #8]
0061c168  57 20 42 e2                                      sub r2, r2, #0x57
0061c16c  04 00 52 e3                                      cmp r2, #4
0061c170  ea ff ff 8a                                      bhi #0x61c120
0061c174  04 00 93 e5                                      ldr r0, [r3, #4]
0061c178  05 10 a0 e1                                      mov r1, r5
0061c17c  66 c8 f3 eb                                      bl #0x30e31c
0061c180  00 00 50 e3                                      cmp r0, #0
0061c184  e5 ff ff 1a                                      bne #0x61c120
0061c188  08 00 a0 e1                                      mov r0, r8
0061c18c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061c190  08 20 93 e5                                      ldr r2, [r3, #8]
0061c194  01 20 42 e2                                      sub r2, r2, #1
0061c198  03 00 52 e3                                      cmp r2, #3
0061c19c  f4 ff ff 9a                                      bls #0x61c174
0061c1a0  01 70 87 e2                                      add r7, r7, #1
0061c1a4  0a 00 57 e1                                      cmp r7, sl
0061c1a8  df ff ff 1a                                      bne #0x61c12c
0061c1ac  00 80 a0 e3                                      mov r8, #0
0061c1b0  08 00 a0 e1                                      mov r0, r8
0061c1b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061c1b8  08 20 93 e5                                      ldr r2, [r3, #8]
0061c1bc  05 00 52 e3                                      cmp r2, #5
0061c1c0  eb ff ff 0a                                      beq #0x61c174
0061c1c4  09 00 52 e3                                      cmp r2, #9
0061c1c8  d4 ff ff 1a                                      bne #0x61c120
0061c1cc  e8 ff ff ea                                      b #0x61c174
0061c1d0  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
0061c1d4  09 00 52 e1                                      cmp r2, sb
0061c1d8  d0 ff ff 1a                                      bne #0x61c120
0061c1dc  e4 ff ff ea                                      b #0x61c174

; FUNCTION 0x0061c1e0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase21getBlendableAnimationEPKNS0_8SChannelE
; demangled: glitch::collada::CColladaDatabase::getBlendableAnimation(glitch::collada::SChannel const*) const
; decoder-mode: arm
0061c1e0  00 20 51 e2                                      subs r2, r1, #0
0061c1e4  02 00 00 0a                                      beq #0x61c1f4
0061c1e8  0c 30 d2 e5                                      ldrb r3, [r2, #0xc]
0061c1ec  06 00 92 e9                                      ldmib r2, {r1, r2}
0061c1f0  b4 ff ff ea                                      b #0x61c0c8
0061c1f4  02 00 a0 e1                                      mov r0, r2
0061c1f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061c1fc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase21getBlendableAnimationEPKNS0_10SAnimationE
; demangled: glitch::collada::CColladaDatabase::getBlendableAnimation(glitch::collada::SAnimation const*) const
; decoder-mode: arm
0061c1fc  00 00 51 e3                                      cmp r1, #0
0061c200  01 00 00 0a                                      beq #0x61c20c
0061c204  10 10 91 e5                                      ldr r1, [r1, #0x10]
0061c208  f4 ff ff ea                                      b #0x61c1e0
0061c20c  01 00 a0 e1                                      mov r0, r1
0061c210  1e ff 2f e1                                      bx lr

; FUNCTION 0x0061c214, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase7getNodeEPKcRNS0_5SNodeE
; demangled: glitch::collada::CColladaDatabase::getNode(char const*, glitch::collada::SNode&) const
; decoder-mode: arm
0061c214  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061c218  00 70 a0 e1                                      mov r7, r0
0061c21c  00 00 92 e5                                      ldr r0, [r2]
0061c220  02 40 a0 e1                                      mov r4, r2
0061c224  01 80 a0 e1                                      mov r8, r1
0061c228  3b c8 f3 eb                                      bl #0x30e31c
0061c22c  00 00 50 e3                                      cmp r0, #0
0061c230  01 00 00 1a                                      bne #0x61c23c
0061c234  04 00 a0 e1                                      mov r0, r4
0061c238  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061c23c  38 a0 94 e5                                      ldr sl, [r4, #0x38]
0061c240  00 00 5a e3                                      cmp sl, #0
0061c244  0f 00 00 da                                      ble #0x61c288
0061c248  00 50 a0 e3                                      mov r5, #0
0061c24c  05 60 a0 e1                                      mov r6, r5
0061c250  02 00 00 ea                                      b #0x61c260
0061c254  0a 00 56 e1                                      cmp r6, sl
0061c258  50 50 85 e2                                      add r5, r5, #0x50
0061c25c  09 00 00 0a                                      beq #0x61c288
0061c260  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0061c264  07 00 a0 e1                                      mov r0, r7
0061c268  08 10 a0 e1                                      mov r1, r8
0061c26c  05 20 82 e0                                      add r2, r2, r5
0061c270  e7 ff ff eb                                      bl #0x61c214
0061c274  00 00 50 e3                                      cmp r0, #0
0061c278  01 60 86 e2                                      add r6, r6, #1
0061c27c  f4 ff ff 0a                                      beq #0x61c254
0061c280  00 40 a0 e1                                      mov r4, r0
0061c284  ea ff ff ea                                      b #0x61c234
0061c288  00 40 a0 e3                                      mov r4, #0
0061c28c  e8 ff ff ea                                      b #0x61c234

; FUNCTION 0x0061c290, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase7getNodeEPKc
; demangled: glitch::collada::CColladaDatabase::getNode(char const*) const
; decoder-mode: arm
0061c290  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061c294  01 80 a0 e1                                      mov r8, r1
0061c298  00 10 a0 e3                                      mov r1, #0
0061c29c  00 70 a0 e1                                      mov r7, r0
0061c2a0  a9 c8 ff eb                                      bl #0x60e54c
0061c2a4  00 60 50 e2                                      subs r6, r0, #0
0061c2a8  01 00 00 1a                                      bne #0x61c2b4
0061c2ac  00 00 a0 e3                                      mov r0, #0
0061c2b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061c2b4  08 a0 96 e5                                      ldr sl, [r6, #8]
0061c2b8  00 00 5a e3                                      cmp sl, #0
0061c2bc  fa ff ff da                                      ble #0x61c2ac
0061c2c0  00 40 a0 e3                                      mov r4, #0
0061c2c4  04 50 a0 e1                                      mov r5, r4
0061c2c8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0061c2cc  07 00 a0 e1                                      mov r0, r7
0061c2d0  08 10 a0 e1                                      mov r1, r8
0061c2d4  04 20 82 e0                                      add r2, r2, r4
0061c2d8  cd ff ff eb                                      bl #0x61c214
0061c2dc  00 00 50 e3                                      cmp r0, #0
0061c2e0  01 50 85 e2                                      add r5, r5, #1
0061c2e4  f1 ff ff 1a                                      bne #0x61c2b0
0061c2e8  0a 00 55 e1                                      cmp r5, sl
0061c2ec  50 40 84 e2                                      add r4, r4, #0x50
0061c2f0  f4 ff ff 1a                                      bne #0x61c2c8
0061c2f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0061c2f8, declared_size=964, range_size=964, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15getDefaultValueEPKcNS0_8SChannel4TypeEPPvS6_
; demangled: glitch::collada::CColladaDatabase::getDefaultValue(char const*, glitch::collada::SChannel::Type, void**, void*) const
; decoder-mode: arm
0061c2f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061c2fc  a4 43 9f e5                                      ldr r4, [pc, #0x3a4]
0061c300  a4 53 9f e5                                      ldr r5, [pc, #0x3a4]
0061c304  03 70 a0 e1                                      mov r7, r3
0061c308  04 40 8f e0                                      add r4, pc, r4
0061c30c  05 c0 94 e7                                      ldr ip, [r4, r5]
0061c310  7c d0 4d e2                                      sub sp, sp, #0x7c
0061c314  01 60 a0 e1                                      mov r6, r1
0061c318  00 30 9c e5                                      ldr r3, [ip]
0061c31c  a0 80 9d e5                                      ldr r8, [sp, #0xa0]
0061c320  74 30 8d e5                                      str r3, [sp, #0x74]
0061c324  5b 00 52 e3                                      cmp r2, #0x5b
0061c328  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
0061c32c  a8 00 00 ea                                      b #0x61c5d4
0061c330  aa 00 00 ea                                      b #0x61c5e0
0061c334  c9 00 00 ea                                      b #0x61c660
0061c338  c8 00 00 ea                                      b #0x61c660
0061c33c  c7 00 00 ea                                      b #0x61c660
0061c340  c6 00 00 ea                                      b #0x61c660
0061c344  c9 00 00 ea                                      b #0x61c670
0061c348  c8 00 00 ea                                      b #0x61c670
0061c34c  c7 00 00 ea                                      b #0x61c670
0061c350  c6 00 00 ea                                      b #0x61c670
0061c354  c5 00 00 ea                                      b #0x61c670
0061c358  7a 00 00 ea                                      b #0x61c548
0061c35c  79 00 00 ea                                      b #0x61c548
0061c360  a0 00 00 ea                                      b #0x61c5e8
0061c364  a5 00 00 ea                                      b #0x61c600
0061c368  ab 00 00 ea                                      b #0x61c61c
0061c36c  6c 00 00 ea                                      b #0x61c524
0061c370  7b 00 00 ea                                      b #0x61c564
0061c374  6a 00 00 ea                                      b #0x61c524
0061c378  69 00 00 ea                                      b #0x61c524
0061c37c  68 00 00 ea                                      b #0x61c524
0061c380  af 00 00 ea                                      b #0x61c644
0061c384  66 00 00 ea                                      b #0x61c524
0061c388  65 00 00 ea                                      b #0x61c524
0061c38c  64 00 00 ea                                      b #0x61c524
0061c390  63 00 00 ea                                      b #0x61c524
0061c394  62 00 00 ea                                      b #0x61c524
0061c398  61 00 00 ea                                      b #0x61c524
0061c39c  8c 00 00 ea                                      b #0x61c5d4
0061c3a0  8b 00 00 ea                                      b #0x61c5d4
0061c3a4  8a 00 00 ea                                      b #0x61c5d4
0061c3a8  89 00 00 ea                                      b #0x61c5d4
0061c3ac  88 00 00 ea                                      b #0x61c5d4
0061c3b0  87 00 00 ea                                      b #0x61c5d4
0061c3b4  86 00 00 ea                                      b #0x61c5d4
0061c3b8  85 00 00 ea                                      b #0x61c5d4
0061c3bc  84 00 00 ea                                      b #0x61c5d4
0061c3c0  83 00 00 ea                                      b #0x61c5d4
0061c3c4  82 00 00 ea                                      b #0x61c5d4
0061c3c8  81 00 00 ea                                      b #0x61c5d4
0061c3cc  80 00 00 ea                                      b #0x61c5d4
0061c3d0  7f 00 00 ea                                      b #0x61c5d4
0061c3d4  7e 00 00 ea                                      b #0x61c5d4
0061c3d8  7d 00 00 ea                                      b #0x61c5d4
0061c3dc  7c 00 00 ea                                      b #0x61c5d4
0061c3e0  7b 00 00 ea                                      b #0x61c5d4
0061c3e4  7a 00 00 ea                                      b #0x61c5d4
0061c3e8  79 00 00 ea                                      b #0x61c5d4
0061c3ec  78 00 00 ea                                      b #0x61c5d4
0061c3f0  77 00 00 ea                                      b #0x61c5d4
0061c3f4  76 00 00 ea                                      b #0x61c5d4
0061c3f8  75 00 00 ea                                      b #0x61c5d4
0061c3fc  74 00 00 ea                                      b #0x61c5d4
0061c400  73 00 00 ea                                      b #0x61c5d4
0061c404  72 00 00 ea                                      b #0x61c5d4
0061c408  71 00 00 ea                                      b #0x61c5d4
0061c40c  70 00 00 ea                                      b #0x61c5d4
0061c410  6f 00 00 ea                                      b #0x61c5d4
0061c414  6e 00 00 ea                                      b #0x61c5d4
0061c418  6d 00 00 ea                                      b #0x61c5d4
0061c41c  6c 00 00 ea                                      b #0x61c5d4
0061c420  6b 00 00 ea                                      b #0x61c5d4
0061c424  6a 00 00 ea                                      b #0x61c5d4
0061c428  69 00 00 ea                                      b #0x61c5d4
0061c42c  68 00 00 ea                                      b #0x61c5d4
0061c430  67 00 00 ea                                      b #0x61c5d4
0061c434  66 00 00 ea                                      b #0x61c5d4
0061c438  65 00 00 ea                                      b #0x61c5d4
0061c43c  64 00 00 ea                                      b #0x61c5d4
0061c440  63 00 00 ea                                      b #0x61c5d4
0061c444  62 00 00 ea                                      b #0x61c5d4
0061c448  61 00 00 ea                                      b #0x61c5d4
0061c44c  34 00 00 ea                                      b #0x61c524
0061c450  33 00 00 ea                                      b #0x61c524
0061c454  32 00 00 ea                                      b #0x61c524
0061c458  31 00 00 ea                                      b #0x61c524
0061c45c  30 00 00 ea                                      b #0x61c524
0061c460  2f 00 00 ea                                      b #0x61c524
0061c464  2e 00 00 ea                                      b #0x61c524
0061c468  2d 00 00 ea                                      b #0x61c524
0061c46c  2c 00 00 ea                                      b #0x61c524
0061c470  2b 00 00 ea                                      b #0x61c524
0061c474  2a 00 00 ea                                      b #0x61c524
0061c478  29 00 00 ea                                      b #0x61c524
0061c47c  28 00 00 ea                                      b #0x61c524
0061c480  27 00 00 ea                                      b #0x61c524
0061c484  26 00 00 ea                                      b #0x61c524
0061c488  3c 00 00 ea                                      b #0x61c580
0061c48c  24 00 00 ea                                      b #0x61c524
0061c490  23 00 00 ea                                      b #0x61c524
0061c494  22 00 00 ea                                      b #0x61c524
0061c498  21 00 00 ea                                      b #0x61c524
0061c49c  20 00 00 ea                                      b #0x61c524
0061c4a0  08 12 9f e5                                      ldr r1, [pc, #0x208]
0061c4a4  5c 90 8d e2                                      add sb, sp, #0x5c
0061c4a8  44 80 8d e2                                      add r8, sp, #0x44
0061c4ac  01 10 8f e0                                      add r1, pc, r1
0061c4b0  10 20 8d e2                                      add r2, sp, #0x10
0061c4b4  09 00 a0 e1                                      mov r0, sb
0061c4b8  df 26 f4 eb                                      bl #0x32603c
0061c4bc  06 20 a0 e1                                      mov r2, r6
0061c4c0  08 00 a0 e1                                      mov r0, r8
0061c4c4  09 10 a0 e1                                      mov r1, sb
0061c4c8  f8 44 fd eb                                      bl #0x56d8b0
0061c4cc  e0 11 9f e5                                      ldr r1, [pc, #0x1e0]
0061c4d0  2c 60 8d e2                                      add r6, sp, #0x2c
0061c4d4  0c 20 8d e2                                      add r2, sp, #0xc
0061c4d8  01 10 8f e0                                      add r1, pc, r1
0061c4dc  14 a0 8d e2                                      add sl, sp, #0x14
0061c4e0  06 00 a0 e1                                      mov r0, r6
0061c4e4  d4 26 f4 eb                                      bl #0x32603c
0061c4e8  06 20 a0 e1                                      mov r2, r6
0061c4ec  0a 00 a0 e1                                      mov r0, sl
0061c4f0  08 10 a0 e1                                      mov r1, r8
0061c4f4  8a c7 f4 eb                                      bl #0x34e324
0061c4f8  02 10 a0 e3                                      mov r1, #2
0061c4fc  28 00 9d e5                                      ldr r0, [sp, #0x28]
0061c500  e6 b9 ff eb                                      bl #0x60aca0
0061c504  0a 00 a0 e1                                      mov r0, sl
0061c508  e1 cb ff eb                                      bl #0x60f494
0061c50c  06 00 a0 e1                                      mov r0, r6
0061c510  df cb ff eb                                      bl #0x60f494
0061c514  08 00 a0 e1                                      mov r0, r8
0061c518  dd cb ff eb                                      bl #0x60f494
0061c51c  09 00 a0 e1                                      mov r0, sb
0061c520  db cb ff eb                                      bl #0x60f494
0061c524  00 00 a0 e3                                      mov r0, #0
0061c528  00 00 87 e5                                      str r0, [r7]
0061c52c  05 30 94 e7                                      ldr r3, [r4, r5]
0061c530  74 20 9d e5                                      ldr r2, [sp, #0x74]
0061c534  00 30 93 e5                                      ldr r3, [r3]
0061c538  03 00 52 e1                                      cmp r2, r3
0061c53c  58 00 00 1a                                      bne #0x61c6a4
0061c540  7c d0 8d e2                                      add sp, sp, #0x7c
0061c544  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061c548  50 ff ff eb                                      bl #0x61c290
0061c54c  00 00 50 e3                                      cmp r0, #0
0061c550  28 00 80 12                                      addne r0, r0, #0x28
0061c554  00 00 87 15                                      strne r0, [r7]
0061c558  01 00 a0 13                                      movne r0, #1
0061c55c  f2 ff ff 1a                                      bne #0x61c52c
0061c560  ef ff ff ea                                      b #0x61c524
0061c564  20 fb ff eb                                      bl #0x61b1ec
0061c568  00 00 50 e3                                      cmp r0, #0
0061c56c  ec ff ff 0a                                      beq #0x61c524
0061c570  0c 00 80 e2                                      add r0, r0, #0xc
0061c574  00 00 87 e5                                      str r0, [r7]
0061c578  01 00 a0 e3                                      mov r0, #1
0061c57c  ea ff ff ea                                      b #0x61c52c
0061c580  a8 f9 ff eb                                      bl #0x61ac28
0061c584  00 90 50 e2                                      subs sb, r0, #0
0061c588  c4 ff ff 0a                                      beq #0x61c4a0
0061c58c  10 b0 99 e5                                      ldr fp, [sb, #0x10]
0061c590  00 00 5b e3                                      cmp fp, #0
0061c594  e2 ff ff da                                      ble #0x61c524
0061c598  18 31 9f e5                                      ldr r3, [pc, #0x118]
0061c59c  00 60 a0 e3                                      mov r6, #0
0061c5a0  06 a0 a0 e1                                      mov sl, r6
0061c5a4  03 30 8f e0                                      add r3, pc, r3
0061c5a8  14 20 99 e5                                      ldr r2, [sb, #0x14]
0061c5ac  00 10 98 e5                                      ldr r1, [r8]
0061c5b0  06 20 82 e0                                      add r2, r2, r6
0061c5b4  04 20 92 e5                                      ldr r2, [r2, #4]
0061c5b8  02 00 51 e1                                      cmp r1, r2
0061c5bc  32 00 00 0a                                      beq #0x61c68c
0061c5c0  01 a0 8a e2                                      add sl, sl, #1
0061c5c4  0b 00 5a e1                                      cmp sl, fp
0061c5c8  18 60 86 e2                                      add r6, r6, #0x18
0061c5cc  f5 ff ff 1a                                      bne #0x61c5a8
0061c5d0  d3 ff ff ea                                      b #0x61c524
0061c5d4  00 30 a0 e3                                      mov r3, #0
0061c5d8  00 30 87 e5                                      str r3, [r7]
0061c5dc  d0 ff ff ea                                      b #0x61c524
0061c5e0  2a ff ff eb                                      bl #0x61c290
0061c5e4  ce ff ff ea                                      b #0x61c524
0061c5e8  28 ff ff eb                                      bl #0x61c290
0061c5ec  00 00 50 e3                                      cmp r0, #0
0061c5f0  2c 00 80 12                                      addne r0, r0, #0x2c
0061c5f4  00 00 87 15                                      strne r0, [r7]
0061c5f8  01 00 a0 13                                      movne r0, #1
0061c5fc  ca ff ff ea                                      b #0x61c52c
0061c600  22 ff ff eb                                      bl #0x61c290
0061c604  00 00 50 e3                                      cmp r0, #0
0061c608  30 00 80 12                                      addne r0, r0, #0x30
0061c60c  00 00 87 15                                      strne r0, [r7]
0061c610  01 00 a0 13                                      movne r0, #1
0061c614  c4 ff ff 1a                                      bne #0x61c52c
0061c618  c1 ff ff ea                                      b #0x61c524
0061c61c  df f8 ff eb                                      bl #0x61a9a0
0061c620  00 00 50 e3                                      cmp r0, #0
0061c624  be ff ff 0a                                      beq #0x61c524
0061c628  08 30 90 e5                                      ldr r3, [r0, #8]
0061c62c  00 20 d8 e5                                      ldrb r2, [r8]
0061c630  01 00 a0 e3                                      mov r0, #1
0061c634  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0061c638  02 31 83 e0                                      add r3, r3, r2, lsl #2
0061c63c  00 30 87 e5                                      str r3, [r7]
0061c640  b9 ff ff ea                                      b #0x61c52c
0061c644  11 ff ff eb                                      bl #0x61c290
0061c648  00 00 50 e3                                      cmp r0, #0
0061c64c  34 00 80 12                                      addne r0, r0, #0x34
0061c650  00 00 87 15                                      strne r0, [r7]
0061c654  01 00 a0 13                                      movne r0, #1
0061c658  b3 ff ff 1a                                      bne #0x61c52c
0061c65c  b0 ff ff ea                                      b #0x61c524
0061c660  0a ff ff eb                                      bl #0x61c290
0061c664  00 00 50 e3                                      cmp r0, #0
0061c668  c0 ff ff 1a                                      bne #0x61c570
0061c66c  ac ff ff ea                                      b #0x61c524
0061c670  06 ff ff eb                                      bl #0x61c290
0061c674  00 00 50 e3                                      cmp r0, #0
0061c678  18 00 80 12                                      addne r0, r0, #0x18
0061c67c  00 00 87 15                                      strne r0, [r7]
0061c680  01 00 a0 13                                      movne r0, #1
0061c684  a8 ff ff 1a                                      bne #0x61c52c
0061c688  a5 ff ff ea                                      b #0x61c524
0061c68c  03 00 a0 e1                                      mov r0, r3
0061c690  01 10 a0 e3                                      mov r1, #1
0061c694  04 30 8d e5                                      str r3, [sp, #4]
0061c698  80 b9 ff eb                                      bl #0x60aca0
0061c69c  04 30 9d e5                                      ldr r3, [sp, #4]
0061c6a0  c6 ff ff ea                                      b #0x61c5c0
0061c6a4  19 c7 f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0061c6a8  88 87 37 00 ac 40 00 00 04 89 2c 00 e8 88 2c 00  .byte 0x88, 0x87, 0x37, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x89, 0x2c, 0x00, 0xe8, 0x88, 0x2c, 0x00
0061c6b8  2c 88 2c 00                                      .byte 0x2c, 0x88, 0x2c, 0x00

; FUNCTION 0x0061c6bc, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15getDefaultValueEPKNS0_8SChannelEPPv
; demangled: glitch::collada::CColladaDatabase::getDefaultValue(glitch::collada::SChannel const*, void**) const
; decoder-mode: arm
0061c6bc  04 e0 2d e5                                      str lr, [sp, #-4]!
0061c6c0  01 c0 a0 e1                                      mov ip, r1
0061c6c4  08 e0 9c e5                                      ldr lr, [ip, #8]
0061c6c8  0c d0 4d e2                                      sub sp, sp, #0xc
0061c6cc  04 10 91 e5                                      ldr r1, [r1, #4]
0061c6d0  02 30 a0 e1                                      mov r3, r2
0061c6d4  0c c0 8c e2                                      add ip, ip, #0xc
0061c6d8  0e 20 a0 e1                                      mov r2, lr
0061c6dc  00 c0 8d e5                                      str ip, [sp]
0061c6e0  04 ff ff eb                                      bl #0x61c2f8
0061c6e4  0c d0 8d e2                                      add sp, sp, #0xc
0061c6e8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0061c6ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase15getDefaultValueEPKNS0_10SAnimationEPPv
; demangled: glitch::collada::CColladaDatabase::getDefaultValue(glitch::collada::SAnimation const*, void**) const
; decoder-mode: arm
0061c6ec  10 10 91 e5                                      ldr r1, [r1, #0x10]
0061c6f0  f1 ff ff ea                                      b #0x61c6bc

; FUNCTION 0x0061c6f4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKc
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, char const*) const
; decoder-mode: arm
0061c6f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0061c6f8  01 40 a0 e1                                      mov r4, r1
0061c6fc  02 10 a0 e1                                      mov r1, r2
0061c700  00 50 a0 e1                                      mov r5, r0
0061c704  e1 fe ff eb                                      bl #0x61c290
0061c708  04 10 a0 e1                                      mov r1, r4
0061c70c  00 20 a0 e1                                      mov r2, r0
0061c710  05 00 a0 e1                                      mov r0, r5
0061c714  70 40 bd e8                                      pop {r4, r5, r6, lr}
0061c718  bd fd ff ea                                      b #0x61be14

; FUNCTION 0x0061c71c, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcbPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::io::IReadFile*, char const*, bool, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061c71c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061c720  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0061c724  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0061c728  14 d0 4d e2                                      sub sp, sp, #0x14
0061c72c  04 40 8f e0                                      add r4, pc, r4
0061c730  05 60 94 e7                                      ldr r6, [r4, r5]
0061c734  00 30 8d e5                                      str r3, [sp]
0061c738  02 80 a0 e1                                      mov r8, r2
0061c73c  00 c0 96 e5                                      ldr ip, [r6]
0061c740  00 20 a0 e3                                      mov r2, #0
0061c744  00 70 a0 e1                                      mov r7, r0
0061c748  02 30 a0 e1                                      mov r3, r2
0061c74c  0c 00 a0 e1                                      mov r0, ip
0061c750  8d f8 00 eb                                      bl #0x65a98c
0061c754  00 00 50 e3                                      cmp r0, #0
0061c758  00 70 a0 01                                      moveq r7, r0
0061c75c  15 00 00 0a                                      beq #0x61c7b8
0061c760  00 30 96 e5                                      ldr r3, [r6]
0061c764  00 20 a0 e3                                      mov r2, #0
0061c768  08 60 8d e2                                      add r6, sp, #8
0061c76c  28 a0 d3 e5                                      ldrb sl, [r3, #0x28]
0061c770  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061c774  30 30 9d e5                                      ldr r3, [sp, #0x30]
0061c778  08 00 8d e5                                      str r0, [sp, #8]
0061c77c  07 10 a0 e1                                      mov r1, r7
0061c780  0c 30 8d e5                                      str r3, [sp, #0xc]
0061c784  04 30 90 e5                                      ldr r3, [r0, #4]
0061c788  02 00 53 e1                                      cmp r3, r2
0061c78c  01 30 83 12                                      addne r3, r3, #1
0061c790  04 30 80 15                                      strne r3, [r0, #4]
0061c794  08 20 a0 e1                                      mov r2, r8
0061c798  06 00 a0 e1                                      mov r0, r6
0061c79c  d4 ff ff eb                                      bl #0x61c6f4
0061c7a0  00 70 a0 e1                                      mov r7, r0
0061c7a4  06 00 a0 e1                                      mov r0, r6
0061c7a8  31 f3 ff eb                                      bl #0x619474
0061c7ac  05 30 94 e7                                      ldr r3, [r4, r5]
0061c7b0  00 30 93 e5                                      ldr r3, [r3]
0061c7b4  28 a0 c3 e5                                      strb sl, [r3, #0x28]
0061c7b8  07 00 a0 e1                                      mov r0, r7
0061c7bc  14 d0 8d e2                                      add sp, sp, #0x14
0061c7c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0061c7c4  64 83 37 00 48 44 00 00                          .byte 0x64, 0x83, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0061c7cc, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcPNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, glitch::io::IReadFile*, char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061c7cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0061c7d0  98 40 9f e5                                      ldr r4, [pc, #0x98]
0061c7d4  98 60 9f e5                                      ldr r6, [pc, #0x98]
0061c7d8  00 50 a0 e3                                      mov r5, #0
0061c7dc  04 40 8f e0                                      add r4, pc, r4
0061c7e0  06 70 94 e7                                      ldr r7, [r4, r6]
0061c7e4  10 d0 4d e2                                      sub sp, sp, #0x10
0061c7e8  03 80 a0 e1                                      mov r8, r3
0061c7ec  00 a0 a0 e1                                      mov sl, r0
0061c7f0  02 90 a0 e1                                      mov sb, r2
0061c7f4  00 00 97 e5                                      ldr r0, [r7]
0061c7f8  05 20 a0 e1                                      mov r2, r5
0061c7fc  05 30 a0 e1                                      mov r3, r5
0061c800  00 50 8d e5                                      str r5, [sp]
0061c804  60 f8 00 eb                                      bl #0x65a98c
0061c808  00 00 50 e3                                      cmp r0, #0
0061c80c  00 80 a0 01                                      moveq r8, r0
0061c810  13 00 00 0a                                      beq #0x61c864
0061c814  00 30 97 e5                                      ldr r3, [r7]
0061c818  0a 10 a0 e1                                      mov r1, sl
0061c81c  09 20 a0 e1                                      mov r2, sb
0061c820  28 70 d3 e5                                      ldrb r7, [r3, #0x28]
0061c824  28 50 c3 e5                                      strb r5, [r3, #0x28]
0061c828  0c 80 8d e5                                      str r8, [sp, #0xc]
0061c82c  08 00 8d e5                                      str r0, [sp, #8]
0061c830  04 30 90 e5                                      ldr r3, [r0, #4]
0061c834  08 50 8d e2                                      add r5, sp, #8
0061c838  00 00 53 e3                                      cmp r3, #0
0061c83c  01 30 83 12                                      addne r3, r3, #1
0061c840  04 30 80 15                                      strne r3, [r0, #4]
0061c844  05 00 a0 e1                                      mov r0, r5
0061c848  a9 ff ff eb                                      bl #0x61c6f4
0061c84c  00 80 a0 e1                                      mov r8, r0
0061c850  05 00 a0 e1                                      mov r0, r5
0061c854  06 f3 ff eb                                      bl #0x619474
0061c858  06 30 94 e7                                      ldr r3, [r4, r6]
0061c85c  00 30 93 e5                                      ldr r3, [r3]
0061c860  28 70 c3 e5                                      strb r7, [r3, #0x28]
0061c864  08 00 a0 e1                                      mov r0, r8
0061c868  10 d0 8d e2                                      add sp, sp, #0x10
0061c86c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0061c870  b4 82 37 00 48 44 00 00                          .byte 0xb4, 0x82, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0061c878, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKcS6_PNS0_15CColladaFactoryE
; demangled: glitch::collada::CColladaDatabase::constructNode(glitch::video::IVideoDriver*, char const*, char const*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0061c878  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0061c87c  90 40 9f e5                                      ldr r4, [pc, #0x90]
0061c880  90 50 9f e5                                      ldr r5, [pc, #0x90]
0061c884  02 a0 a0 e1                                      mov sl, r2
0061c888  04 40 8f e0                                      add r4, pc, r4
0061c88c  05 60 94 e7                                      ldr r6, [r4, r5]
0061c890  00 20 a0 e3                                      mov r2, #0
0061c894  00 80 a0 e1                                      mov r8, r0
0061c898  0c d0 4d e2                                      sub sp, sp, #0xc
0061c89c  03 70 a0 e1                                      mov r7, r3
0061c8a0  00 00 96 e5                                      ldr r0, [r6]
0061c8a4  02 30 a0 e1                                      mov r3, r2
0061c8a8  eb f8 00 eb                                      bl #0x65ac5c
0061c8ac  00 00 50 e3                                      cmp r0, #0
0061c8b0  00 80 a0 01                                      moveq r8, r0
0061c8b4  13 00 00 0a                                      beq #0x61c908
0061c8b8  00 30 96 e5                                      ldr r3, [r6]
0061c8bc  00 20 a0 e3                                      mov r2, #0
0061c8c0  08 10 a0 e1                                      mov r1, r8
0061c8c4  28 60 d3 e5                                      ldrb r6, [r3, #0x28]
0061c8c8  28 20 c3 e5                                      strb r2, [r3, #0x28]
0061c8cc  81 00 8d e8                                      stm sp, {r0, r7}
0061c8d0  04 30 90 e5                                      ldr r3, [r0, #4]
0061c8d4  0d 70 a0 e1                                      mov r7, sp
0061c8d8  02 00 53 e1                                      cmp r3, r2
0061c8dc  01 30 83 12                                      addne r3, r3, #1
0061c8e0  04 30 80 15                                      strne r3, [r0, #4]
0061c8e4  0a 20 a0 e1                                      mov r2, sl
0061c8e8  0d 00 a0 e1                                      mov r0, sp
0061c8ec  80 ff ff eb                                      bl #0x61c6f4
0061c8f0  00 80 a0 e1                                      mov r8, r0
0061c8f4  0d 00 a0 e1                                      mov r0, sp
0061c8f8  dd f2 ff eb                                      bl #0x619474
0061c8fc  05 30 94 e7                                      ldr r3, [r4, r5]
0061c900  00 30 93 e5                                      ldr r3, [r3]
0061c904  28 60 c3 e5                                      strb r6, [r3, #0x28]
0061c908  08 00 a0 e1                                      mov r0, r8
0061c90c  0c d0 8d e2                                      add sp, sp, #0xc
0061c910  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0061c914  08 82 37 00 48 44 00 00                          .byte 0x08, 0x82, 0x37, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x0061c91c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKcNS0_8SChannel4TypeES3_
; demangled: glitch::collada::CColladaDatabase::getAnimation(char const*, glitch::collada::SChannel::Type, char const*) const
; decoder-mode: arm
0061c91c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061c920  00 40 a0 e1                                      mov r4, r0
0061c924  00 00 90 e5                                      ldr r0, [r0]
0061c928  02 60 a0 e1                                      mov r6, r2
0061c92c  03 b0 a0 e1                                      mov fp, r3
0061c930  24 20 90 e5                                      ldr r2, [r0, #0x24]
0061c934  01 50 a0 e1                                      mov r5, r1
0061c938  20 30 92 e5                                      ldr r3, [r2, #0x20]
0061c93c  24 90 93 e5                                      ldr sb, [r3, #0x24]
0061c940  00 00 59 e3                                      cmp sb, #0
0061c944  18 00 00 da                                      ble #0x61c9ac
0061c948  00 70 a0 e3                                      mov r7, #0
0061c94c  02 00 00 ea                                      b #0x61c95c
0061c950  01 70 87 e2                                      add r7, r7, #1
0061c954  09 00 57 e1                                      cmp r7, sb
0061c958  13 00 00 0a                                      beq #0x61c9ac
0061c95c  07 10 a0 e1                                      mov r1, r7
0061c960  04 00 a0 e1                                      mov r0, r4
0061c964  7c c6 ff eb                                      bl #0x60e35c
0061c968  10 80 90 e5                                      ldr r8, [r0, #0x10]
0061c96c  00 a0 a0 e1                                      mov sl, r0
0061c970  08 30 98 e5                                      ldr r3, [r8, #8]
0061c974  06 00 53 e1                                      cmp r3, r6
0061c978  f4 ff ff 1a                                      bne #0x61c950
0061c97c  0b 10 a0 e1                                      mov r1, fp
0061c980  0c 00 98 e5                                      ldr r0, [r8, #0xc]
0061c984  57 c7 f3 eb                                      bl #0x30e6e8
0061c988  00 00 50 e3                                      cmp r0, #0
0061c98c  ef ff ff 1a                                      bne #0x61c950
0061c990  04 00 98 e5                                      ldr r0, [r8, #4]
0061c994  05 10 a0 e1                                      mov r1, r5
0061c998  5f c6 f3 eb                                      bl #0x30e31c
0061c99c  00 00 50 e3                                      cmp r0, #0
0061c9a0  ea ff ff 1a                                      bne #0x61c950
0061c9a4  0a 00 a0 e1                                      mov r0, sl
0061c9a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061c9ac  00 a0 a0 e3                                      mov sl, #0
0061c9b0  0a 00 a0 e1                                      mov r0, sl
0061c9b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0061cca8, declared_size=596, range_size=596, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructMaterial(glitch::video::IVideoDriver*, glitch::collada::SMaterial*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061cca8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0061ccac  3c 52 9f e5                                      ldr r5, [pc, #0x23c]
0061ccb0  3c 92 9f e5                                      ldr sb, [pc, #0x23c]
0061ccb4  7c d0 4d e2                                      sub sp, sp, #0x7c
0061ccb8  00 00 53 e3                                      cmp r3, #0
0061ccbc  05 50 8f e0                                      add r5, pc, r5
0061ccc0  14 30 8d e5                                      str r3, [sp, #0x14]
0061ccc4  09 30 95 e7                                      ldr r3, [r5, sb]
0061ccc8  00 b0 a0 e1                                      mov fp, r0
0061cccc  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
0061ccd0  00 30 93 e5                                      ldr r3, [r3]
0061ccd4  01 70 a0 e1                                      mov r7, r1
0061ccd8  02 60 a0 e1                                      mov r6, r2
0061ccdc  18 00 8d e5                                      str r0, [sp, #0x18]
0061cce0  74 30 8d e5                                      str r3, [sp, #0x74]
0061cce4  7d 00 00 0a                                      beq #0x61cee0
0061cce8  d4 30 92 e5                                      ldr r3, [r2, #0xd4]
0061ccec  2c a0 8d e2                                      add sl, sp, #0x2c
0061ccf0  44 80 8d e2                                      add r8, sp, #0x44
0061ccf4  34 40 93 e5                                      ldr r4, [r3, #0x34]
0061ccf8  00 00 54 e3                                      cmp r4, #0
0061ccfc  04 30 94 15                                      ldrne r3, [r4, #4]
0061cd00  04 00 a0 e1                                      mov r0, r4
0061cd04  01 30 83 12                                      addne r3, r3, #1
0061cd08  04 30 84 15                                      strne r3, [r4, #4]
0061cd0c  00 30 94 e5                                      ldr r3, [r4]
0061cd10  0f e0 a0 e1                                      mov lr, pc
0061cd14  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0061cd18  5c 30 8d e2                                      add r3, sp, #0x5c
0061cd1c  00 10 a0 e1                                      mov r1, r0
0061cd20  28 20 8d e2                                      add r2, sp, #0x28
0061cd24  03 00 a0 e1                                      mov r0, r3
0061cd28  10 30 8d e5                                      str r3, [sp, #0x10]
0061cd2c  c2 24 f4 eb                                      bl #0x32603c
0061cd30  00 30 94 e5                                      ldr r3, [r4]
0061cd34  00 10 97 e5                                      ldr r1, [r7]
0061cd38  24 20 8d e2                                      add r2, sp, #0x24
0061cd3c  38 30 93 e5                                      ldr r3, [r3, #0x38]
0061cd40  00 00 51 e3                                      cmp r1, #0
0061cd44  20 10 91 15                                      ldrne r1, [r1, #0x20]
0061cd48  0a 00 a0 e1                                      mov r0, sl
0061cd4c  0c 30 8d e5                                      str r3, [sp, #0xc]
0061cd50  b9 24 f4 eb                                      bl #0x32603c
0061cd54  08 00 a0 e1                                      mov r0, r8
0061cd58  04 10 a0 e1                                      mov r1, r4
0061cd5c  0a 20 a0 e1                                      mov r2, sl
0061cd60  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0061cd64  33 ff 2f e1                                      blx r3
0061cd68  40 00 9d e5                                      ldr r0, [sp, #0x40]
0061cd6c  0a 00 50 e1                                      cmp r0, sl
0061cd70  02 00 00 0a                                      beq #0x61cd80
0061cd74  00 00 50 e3                                      cmp r0, #0
0061cd78  00 00 00 0a                                      beq #0x61cd80
0061cd7c  b3 cd f3 eb                                      bl #0x310450
0061cd80  58 10 9d e5                                      ldr r1, [sp, #0x58]
0061cd84  54 30 9d e5                                      ldr r3, [sp, #0x54]
0061cd88  03 00 51 e1                                      cmp r1, r3
0061cd8c  45 00 00 0a                                      beq #0x61cea8
0061cd90  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
0061cd94  5c 00 53 e3                                      cmp r3, #0x5c
0061cd98  07 00 00 0a                                      beq #0x61cdbc
0061cd9c  2f 00 53 e3                                      cmp r3, #0x2f
0061cda0  05 00 00 0a                                      beq #0x61cdbc
0061cda4  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
0061cda8  08 00 a0 e1                                      mov r0, r8
0061cdac  01 10 8f e0                                      add r1, pc, r1
0061cdb0  01 20 81 e2                                      add r2, r1, #1
0061cdb4  24 0f f4 eb                                      bl #0x320a4c
0061cdb8  58 10 9d e5                                      ldr r1, [sp, #0x58]
0061cdbc  01 20 a0 e3                                      mov r2, #1
0061cdc0  02 30 a0 e1                                      mov r3, r2
0061cdc4  00 c0 94 e5                                      ldr ip, [r4]
0061cdc8  04 00 a0 e1                                      mov r0, r4
0061cdcc  0f e0 a0 e1                                      mov lr, pc
0061cdd0  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0061cdd4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0061cdd8  04 00 97 e5                                      ldr r0, [r7, #4]
0061cddc  20 a0 8d e2                                      add sl, sp, #0x20
0061cde0  07 20 a0 e1                                      mov r2, r7
0061cde4  00 c0 90 e5                                      ldr ip, [r0]
0061cde8  00 10 a0 e1                                      mov r1, r0
0061cdec  14 00 9d e5                                      ldr r0, [sp, #0x14]
0061cdf0  06 30 a0 e1                                      mov r3, r6
0061cdf4  00 00 8d e5                                      str r0, [sp]
0061cdf8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061cdfc  04 00 8d e5                                      str r0, [sp, #4]
0061ce00  0a 00 a0 e1                                      mov r0, sl
0061ce04  0f e0 a0 e1                                      mov lr, pc
0061ce08  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0061ce0c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0061ce10  00 00 52 e3                                      cmp r2, #0
0061ce14  04 00 00 0a                                      beq #0x61ce2c
0061ce18  00 30 94 e5                                      ldr r3, [r4]
0061ce1c  04 00 a0 e1                                      mov r0, r4
0061ce20  58 10 9d e5                                      ldr r1, [sp, #0x58]
0061ce24  0f e0 a0 e1                                      mov lr, pc
0061ce28  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0061ce2c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0061ce30  0a 00 a0 e1                                      mov r0, sl
0061ce34  00 00 53 e3                                      cmp r3, #0
0061ce38  00 30 8b e5                                      str r3, [fp]
0061ce3c  00 20 93 15                                      ldrne r2, [r3]
0061ce40  01 20 82 12                                      addne r2, r2, #1
0061ce44  00 20 83 15                                      strne r2, [r3]
0061ce48  66 cf f3 eb                                      bl #0x310be8
0061ce4c  58 00 9d e5                                      ldr r0, [sp, #0x58]
0061ce50  08 00 50 e1                                      cmp r0, r8
0061ce54  02 00 00 0a                                      beq #0x61ce64
0061ce58  00 00 50 e3                                      cmp r0, #0
0061ce5c  00 00 00 0a                                      beq #0x61ce64
0061ce60  7a cd f3 eb                                      bl #0x310450
0061ce64  70 00 9d e5                                      ldr r0, [sp, #0x70]
0061ce68  10 30 9d e5                                      ldr r3, [sp, #0x10]
0061ce6c  03 00 50 e1                                      cmp r0, r3
0061ce70  02 00 00 0a                                      beq #0x61ce80
0061ce74  00 00 50 e3                                      cmp r0, #0
0061ce78  00 00 00 0a                                      beq #0x61ce80
0061ce7c  73 cd f3 eb                                      bl #0x310450
0061ce80  04 00 a0 e1                                      mov r0, r4
0061ce84  be 01 f4 eb                                      bl #0x31d584
0061ce88  09 30 95 e7                                      ldr r3, [r5, sb]
0061ce8c  74 20 9d e5                                      ldr r2, [sp, #0x74]
0061ce90  0b 00 a0 e1                                      mov r0, fp
0061ce94  00 30 93 e5                                      ldr r3, [r3]
0061ce98  03 00 52 e1                                      cmp r2, r3
0061ce9c  12 00 00 1a                                      bne #0x61ceec
0061cea0  7c d0 8d e2                                      add sp, sp, #0x7c
0061cea4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0061cea8  04 00 97 e5                                      ldr r0, [r7, #4]
0061ceac  20 a0 8d e2                                      add sl, sp, #0x20
0061ceb0  07 20 a0 e1                                      mov r2, r7
0061ceb4  00 c0 90 e5                                      ldr ip, [r0]
0061ceb8  00 10 a0 e1                                      mov r1, r0
0061cebc  14 00 9d e5                                      ldr r0, [sp, #0x14]
0061cec0  06 30 a0 e1                                      mov r3, r6
0061cec4  00 00 8d e5                                      str r0, [sp]
0061cec8  18 00 9d e5                                      ldr r0, [sp, #0x18]
0061cecc  04 00 8d e5                                      str r0, [sp, #4]
0061ced0  0a 00 a0 e1                                      mov r0, sl
0061ced4  0f e0 a0 e1                                      mov lr, pc
0061ced8  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0061cedc  d2 ff ff ea                                      b #0x61ce2c
0061cee0  14 20 9d e5                                      ldr r2, [sp, #0x14]
0061cee4  00 20 8b e5                                      str r2, [fp]
0061cee8  e6 ff ff ea                                      b #0x61ce88
0061ceec  07 c5 f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0061cef0  d4 7d 37 00 ac 40 00 00 ac 3e 2a 00              .byte 0xd4, 0x7d, 0x37, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0x3e, 0x2a, 0x00

; FUNCTION 0x0061cefc, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructMaterial(glitch::video::IVideoDriver*, char const*, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061cefc  70 40 2d e9                                      push {r4, r5, r6, lr}
0061cf00  01 50 a0 e1                                      mov r5, r1
0061cf04  08 d0 4d e2                                      sub sp, sp, #8
0061cf08  00 40 a0 e1                                      mov r4, r0
0061cf0c  03 10 a0 e1                                      mov r1, r3
0061cf10  05 00 a0 e1                                      mov r0, r5
0061cf14  02 60 a0 e1                                      mov r6, r2
0061cf18  42 f7 ff eb                                      bl #0x61ac28
0061cf1c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0061cf20  00 30 a0 e1                                      mov r3, r0
0061cf24  05 10 a0 e1                                      mov r1, r5
0061cf28  04 00 a0 e1                                      mov r0, r4
0061cf2c  06 20 a0 e1                                      mov r2, r6
0061cf30  00 c0 8d e5                                      str ip, [sp]
0061cf34  5b ff ff eb                                      bl #0x61cca8
0061cf38  04 00 a0 e1                                      mov r0, r4
0061cf3c  08 d0 8d e2                                      add sp, sp, #8
0061cf40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0061cf44, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaDatabase
; alias: _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaDatabase::constructMaterial(glitch::video::IVideoDriver*, int, glitch::collada::CRootSceneNode*) const
; decoder-mode: arm
0061cf44  70 40 2d e9                                      push {r4, r5, r6, lr}
0061cf48  01 50 a0 e1                                      mov r5, r1
0061cf4c  08 d0 4d e2                                      sub sp, sp, #8
0061cf50  00 40 a0 e1                                      mov r4, r0
0061cf54  03 10 a0 e1                                      mov r1, r3
0061cf58  05 00 a0 e1                                      mov r0, r5
0061cf5c  02 60 a0 e1                                      mov r6, r2
0061cf60  26 c5 ff eb                                      bl #0x60e400
0061cf64  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0061cf68  00 30 a0 e1                                      mov r3, r0
0061cf6c  05 10 a0 e1                                      mov r1, r5
0061cf70  04 00 a0 e1                                      mov r0, r4
0061cf74  06 20 a0 e1                                      mov r2, r6
0061cf78  00 c0 8d e5                                      str ip, [sp]
0061cf7c  49 ff ff eb                                      bl #0x61cca8
0061cf80  04 00 a0 e1                                      mov r0, r4
0061cf84  08 d0 8d e2                                      add sp, sp, #8
0061cf88  70 80 bd e8                                      pop {r4, r5, r6, pc}
