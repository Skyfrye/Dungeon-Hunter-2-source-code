; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050cd2c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode7getTypeEv
; demangled: glitch::scene::CBatchSceneNode::getType() const
; decoder-mode: arm
0050cd2c  62 01 06 e3                                      movw r0, #0x6162
0050cd30  73 0e 46 e3                                      movt r0, #0x6e73
0050cd34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0050cd38, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode20preRegisterSceneNodeEv
; demangled: glitch::scene::CBatchSceneNode::preRegisterSceneNode()
; decoder-mode: arm
0050cd38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0050cd3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode16isSegmentVisibleERKNS0_10CBatchMesh8SSegmentE
; demangled: glitch::scene::CBatchSceneNode::isSegmentVisible(glitch::scene::CBatchMesh::SSegment const&)
; decoder-mode: arm
0050cd3c  20 00 d1 e5                                      ldrb r0, [r1, #0x20]
0050cd40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057e524, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode25getTransformedBoundingBoxEv
; demangled: glitch::scene::CBatchSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
0057e524  10 40 2d e9                                      push {r4, lr}
0057e528  00 30 90 e5                                      ldr r3, [r0]
0057e52c  0f e0 a0 e1                                      mov lr, pc
0057e530  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0057e534  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057e538, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CBatchSceneNode::getBoundingBox() const
; decoder-mode: arm
0057e538  10 40 2d e9                                      push {r4, lr}
0057e53c  30 31 90 e5                                      ldr r3, [r0, #0x130]
0057e540  03 00 a0 e1                                      mov r0, r3
0057e544  00 30 93 e5                                      ldr r3, [r3]
0057e548  0f e0 a0 e1                                      mov lr, pc
0057e54c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0057e550  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057e554, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode16getMaterialCountEv
; demangled: glitch::scene::CBatchSceneNode::getMaterialCount() const
; decoder-mode: arm
0057e554  10 40 2d e9                                      push {r4, lr}
0057e558  30 31 90 e5                                      ldr r3, [r0, #0x130]
0057e55c  03 00 a0 e1                                      mov r0, r3
0057e560  00 30 93 e5                                      ldr r3, [r3]
0057e564  0f e0 a0 e1                                      mov lr, pc
0057e568  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0057e56c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057e570, declared_size=36, range_size=36, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode11getMaterialEj
; demangled: glitch::scene::CBatchSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
0057e570  10 40 2d e9                                      push {r4, lr}
0057e574  30 31 91 e5                                      ldr r3, [r1, #0x130]
0057e578  00 40 a0 e1                                      mov r4, r0
0057e57c  03 10 a0 e1                                      mov r1, r3
0057e580  00 30 93 e5                                      ldr r3, [r3]
0057e584  0f e0 a0 e1                                      mov lr, pc
0057e588  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057e58c  04 00 a0 e1                                      mov r0, r4
0057e590  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057e594, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode7getMeshEv
; demangled: glitch::scene::CBatchSceneNode::getMesh() const
; decoder-mode: arm
0057e594  30 31 91 e5                                      ldr r3, [r1, #0x130]
0057e598  00 00 53 e3                                      cmp r3, #0
0057e59c  00 30 80 e5                                      str r3, [r0]
0057e5a0  04 20 93 15                                      ldrne r2, [r3, #4]
0057e5a4  01 20 82 12                                      addne r2, r2, #1
0057e5a8  04 20 83 15                                      strne r2, [r3, #4]
0057e5ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057e5b0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode7setMeshERKN5boost13intrusive_ptrINS0_5IMeshEEE
; demangled: glitch::scene::CBatchSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&)
; decoder-mode: arm
0057e5b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057e5b4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode17computeMaxIndicesEj
; demangled: glitch::scene::CBatchSceneNode::computeMaxIndices(unsigned int)
; decoder-mode: arm
0057e5b4  14 30 a0 e3                                      mov r3, #0x14
0057e5b8  58 21 90 e5                                      ldr r2, [r0, #0x158]
0057e5bc  93 01 03 e0                                      mul r3, r3, r1
0057e5c0  03 10 82 e0                                      add r1, r2, r3
0057e5c4  10 10 91 e5                                      ldr r1, [r1, #0x10]
0057e5c8  03 c0 92 e7                                      ldr ip, [r2, r3]
0057e5cc  01 31 82 e0                                      add r3, r2, r1, lsl #2
0057e5d0  0c c1 83 e0                                      add ip, r3, ip, lsl #2
0057e5d4  03 00 5c e1                                      cmp ip, r3
0057e5d8  00 00 a0 03                                      moveq r0, #0
0057e5dc  1e ff 2f 01                                      bxeq lr
0057e5e0  00 00 a0 e3                                      mov r0, #0
0057e5e4  04 20 93 e4                                      ldr r2, [r3], #4
0057e5e8  10 10 92 e5                                      ldr r1, [r2, #0x10]
0057e5ec  14 20 92 e5                                      ldr r2, [r2, #0x14]
0057e5f0  03 00 5c e1                                      cmp ip, r3
0057e5f4  02 20 61 e0                                      rsb r2, r1, r2
0057e5f8  02 00 80 e0                                      add r0, r0, r2
0057e5fc  f8 ff ff 1a                                      bne #0x57e5e4
0057e600  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057e604, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode20clearVisibleSegmentsEv
; demangled: glitch::scene::CBatchSceneNode::clearVisibleSegments()
; decoder-mode: arm
0057e604  10 40 2d e9                                      push {r4, lr}
0057e608  30 31 90 e5                                      ldr r3, [r0, #0x130]
0057e60c  00 40 a0 e1                                      mov r4, r0
0057e610  03 00 a0 e1                                      mov r0, r3
0057e614  00 30 93 e5                                      ldr r3, [r3]
0057e618  0f e0 a0 e1                                      mov lr, pc
0057e61c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0057e620  00 00 50 e3                                      cmp r0, #0
0057e624  08 00 00 0a                                      beq #0x57e64c
0057e628  00 30 a0 e3                                      mov r3, #0
0057e62c  03 20 a0 e1                                      mov r2, r3
0057e630  03 c0 a0 e1                                      mov ip, r3
0057e634  58 11 94 e5                                      ldr r1, [r4, #0x158]
0057e638  01 20 82 e2                                      add r2, r2, #1
0057e63c  00 00 52 e1                                      cmp r2, r0
0057e640  03 c0 81 e7                                      str ip, [r1, r3]
0057e644  14 30 83 e2                                      add r3, r3, #0x14
0057e648  f9 ff ff 1a                                      bne #0x57e634
0057e64c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057e650, declared_size=136, range_size=136, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode10updateInfoEjj
; demangled: glitch::scene::CBatchSceneNode::updateInfo(unsigned int, unsigned int)
; decoder-mode: arm
0057e650  78 30 9f e5                                      ldr r3, [pc, #0x78]
0057e654  02 00 51 e1                                      cmp r1, r2
0057e658  f0 07 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl}
0057e65c  03 30 8f e0                                      add r3, pc, r3
0057e660  00 60 a0 e1                                      mov r6, r0
0057e664  00 00 a0 23                                      movhs r0, #0
0057e668  16 00 00 2a                                      bhs #0x57e6c8
0057e66c  14 c0 a0 e3                                      mov ip, #0x14
0057e670  9c 01 0c e0                                      mul ip, ip, r1
0057e674  58 80 9f e5                                      ldr r8, [pc, #0x58]
0057e678  00 00 a0 e3                                      mov r0, #0
0057e67c  58 51 96 e5                                      ldr r5, [r6, #0x158]
0057e680  01 10 81 e2                                      add r1, r1, #1
0057e684  0c 40 95 e7                                      ldr r4, [r5, ip]
0057e688  0c 50 85 e0                                      add r5, r5, ip
0057e68c  14 c0 8c e2                                      add ip, ip, #0x14
0057e690  00 00 54 e3                                      cmp r4, #0
0057e694  04 00 80 e0                                      add r0, r0, r4
0057e698  08 00 00 0a                                      beq #0x57e6c0
0057e69c  08 70 93 e7                                      ldr r7, [r3, r8]
0057e6a0  0c a0 95 e5                                      ldr sl, [r5, #0xc]
0057e6a4  04 90 95 e5                                      ldr sb, [r5, #4]
0057e6a8  00 70 97 e5                                      ldr r7, [r7]
0057e6ac  04 00 59 e1                                      cmp sb, r4
0057e6b0  0a 40 a0 01                                      moveq r4, sl
0057e6b4  01 40 8a 13                                      orrne r4, sl, #1
0057e6b8  0c 40 85 e5                                      str r4, [r5, #0xc]
0057e6bc  08 70 85 e5                                      str r7, [r5, #8]
0057e6c0  01 00 52 e1                                      cmp r2, r1
0057e6c4  ec ff ff 8a                                      bhi #0x57e67c
0057e6c8  f0 07 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl}
0057e6cc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0057e6d0  34 64 41 00 b0 07 00 00                          .byte 0x34, 0x64, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0057e6f8, declared_size=264, range_size=264, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZNK6glitch5scene15CBatchSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CBatchSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0057e6f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0057e6fc  00 40 51 e2                                      subs r4, r1, #0
0057e700  08 d0 4d e2                                      sub sp, sp, #8
0057e704  00 50 a0 e1                                      mov r5, r0
0057e708  33 00 00 0a                                      beq #0x57e7dc
0057e70c  e4 62 00 eb                                      bl #0x5972a4
0057e710  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0057e714  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
0057e718  00 60 a0 e3                                      mov r6, #0
0057e71c  38 21 95 e5                                      ldr r2, [r5, #0x138]
0057e720  00 c0 94 e5                                      ldr ip, [r4]
0057e724  01 10 8f e0                                      add r1, pc, r1
0057e728  03 30 8f e0                                      add r3, pc, r3
0057e72c  04 00 a0 e1                                      mov r0, r4
0057e730  00 60 8d e5                                      str r6, [sp]
0057e734  0f e0 a0 e1                                      mov lr, pc
0057e738  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
0057e73c  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0057e740  04 00 a0 e1                                      mov r0, r4
0057e744  48 21 d5 e5                                      ldrb r2, [r5, #0x148]
0057e748  01 10 8f e0                                      add r1, pc, r1
0057e74c  06 30 a0 e1                                      mov r3, r6
0057e750  00 c0 94 e5                                      ldr ip, [r4]
0057e754  0f e0 a0 e1                                      mov lr, pc
0057e758  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
0057e75c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0057e760  06 30 a0 e1                                      mov r3, r6
0057e764  04 00 a0 e1                                      mov r0, r4
0057e768  01 10 8f e0                                      add r1, pc, r1
0057e76c  50 21 d5 e5                                      ldrb r2, [r5, #0x150]
0057e770  00 c0 94 e5                                      ldr ip, [r4]
0057e774  0f e0 a0 e1                                      mov lr, pc
0057e778  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
0057e77c  70 10 9f e5                                      ldr r1, [pc, #0x70]
0057e780  04 00 a0 e1                                      mov r0, r4
0057e784  3c 21 95 e5                                      ldr r2, [r5, #0x13c]
0057e788  01 10 8f e0                                      add r1, pc, r1
0057e78c  01 30 a0 e3                                      mov r3, #1
0057e790  00 c0 94 e5                                      ldr ip, [r4]
0057e794  0f e0 a0 e1                                      mov lr, pc
0057e798  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0057e79c  54 10 9f e5                                      ldr r1, [pc, #0x54]
0057e7a0  04 00 a0 e1                                      mov r0, r4
0057e7a4  40 21 95 e5                                      ldr r2, [r5, #0x140]
0057e7a8  01 10 8f e0                                      add r1, pc, r1
0057e7ac  01 30 a0 e3                                      mov r3, #1
0057e7b0  00 c0 94 e5                                      ldr ip, [r4]
0057e7b4  0f e0 a0 e1                                      mov lr, pc
0057e7b8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0057e7bc  38 10 9f e5                                      ldr r1, [pc, #0x38]
0057e7c0  04 00 a0 e1                                      mov r0, r4
0057e7c4  44 21 95 e5                                      ldr r2, [r5, #0x144]
0057e7c8  01 10 8f e0                                      add r1, pc, r1
0057e7cc  00 c0 94 e5                                      ldr ip, [r4]
0057e7d0  01 30 a0 e3                                      mov r3, #1
0057e7d4  0f e0 a0 e1                                      mov lr, pc
0057e7d8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
0057e7dc  08 d0 8d e2                                      add sp, sp, #8
0057e7e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0057e7e4  5c 0b 36 00 78 8c 3d 00 50 0b 36 00 50 0b 36 00  .byte 0x5c, 0x0b, 0x36, 0x00, 0x78, 0x8c, 0x3d, 0x00, 0x50, 0x0b, 0x36, 0x00, 0x50, 0x0b, 0x36, 0x00
0057e7f4  48 0b 36 00 40 0b 36 00 40 0b 36 00              .byte 0x48, 0x0b, 0x36, 0x00, 0x40, 0x0b, 0x36, 0x00, 0x40, 0x0b, 0x36, 0x00

; FUNCTION 0x0057e800, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode20registerSolidBatchesEv
; demangled: glitch::scene::CBatchSceneNode::registerSolidBatches()
; decoder-mode: arm
0057e800  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057e804  44 31 90 e5                                      ldr r3, [r0, #0x144]
0057e808  f4 90 9f e5                                      ldr sb, [pc, #0xf4]
0057e80c  24 d0 4d e2                                      sub sp, sp, #0x24
0057e810  00 00 53 e3                                      cmp r3, #0
0057e814  00 60 a0 e1                                      mov r6, r0
0057e818  09 90 8f e0                                      add sb, pc, sb
0057e81c  36 00 00 0a                                      beq #0x57e8fc
0057e820  1c 30 8d e2                                      add r3, sp, #0x1c
0057e824  dc c0 9f e5                                      ldr ip, [pc, #0xdc]
0057e828  00 50 a0 e3                                      mov r5, #0
0057e82c  01 80 a0 e3                                      mov r8, #1
0057e830  14 30 8d e5                                      str r3, [sp, #0x14]
0057e834  00 70 a0 e1                                      mov r7, r0
0057e838  09 b0 a0 e1                                      mov fp, sb
0057e83c  0e 00 00 ea                                      b #0x57e87c
0057e840  0c 20 9b e7                                      ldr r2, [fp, ip]
0057e844  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0057e848  04 00 94 e5                                      ldr r0, [r4, #4]
0057e84c  00 20 92 e5                                      ldr r2, [r2]
0057e850  14 50 85 e2                                      add r5, r5, #0x14
0057e854  03 00 50 e1                                      cmp r0, r3
0057e858  01 30 a0 01                                      moveq r3, r1
0057e85c  01 30 81 13                                      orrne r3, r1, #1
0057e860  08 20 84 e5                                      str r2, [r4, #8]
0057e864  0c 30 84 e5                                      str r3, [r4, #0xc]
0057e868  44 31 97 e5                                      ldr r3, [r7, #0x144]
0057e86c  01 20 88 e2                                      add r2, r8, #1
0057e870  08 00 53 e1                                      cmp r3, r8
0057e874  20 00 00 9a                                      bls #0x57e8fc
0057e878  02 80 a0 e1                                      mov r8, r2
0057e87c  58 a1 97 e5                                      ldr sl, [r7, #0x158]
0057e880  01 20 48 e2                                      sub r2, r8, #1
0057e884  05 30 9a e7                                      ldr r3, [sl, r5]
0057e888  05 40 8a e0                                      add r4, sl, r5
0057e88c  00 00 53 e3                                      cmp r3, #0
0057e890  ea ff ff 0a                                      beq #0x57e840
0057e894  10 91 97 e5                                      ldr sb, [r7, #0x110]
0057e898  30 31 97 e5                                      ldr r3, [r7, #0x130]
0057e89c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0057e8a0  00 e0 99 e5                                      ldr lr, [sb]
0057e8a4  03 10 a0 e1                                      mov r1, r3
0057e8a8  00 30 93 e5                                      ldr r3, [r3]
0057e8ac  24 60 9e e5                                      ldr r6, [lr, #0x24]
0057e8b0  10 c0 8d e5                                      str ip, [sp, #0x10]
0057e8b4  0f e0 a0 e1                                      mov lr, pc
0057e8b8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057e8bc  04 30 a0 e3                                      mov r3, #4
0057e8c0  00 30 8d e5                                      str r3, [sp]
0057e8c4  00 30 a0 e3                                      mov r3, #0
0057e8c8  04 30 8d e5                                      str r3, [sp, #4]
0057e8cc  02 31 e0 e3                                      mvn r3, #0x80000000
0057e8d0  08 30 8d e5                                      str r3, [sp, #8]
0057e8d4  07 10 a0 e1                                      mov r1, r7
0057e8d8  08 30 a0 e1                                      mov r3, r8
0057e8dc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0057e8e0  09 00 a0 e1                                      mov r0, sb
0057e8e4  36 ff 2f e1                                      blx r6
0057e8e8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0057e8ec  bd 48 f6 eb                                      bl #0x310be8
0057e8f0  05 30 9a e7                                      ldr r3, [sl, r5]
0057e8f4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0057e8f8  d0 ff ff ea                                      b #0x57e840
0057e8fc  24 d0 8d e2                                      add sp, sp, #0x24
0057e900  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0057e904  78 62 41 00 b0 07 00 00                          .byte 0x78, 0x62, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0057ea70, declared_size=380, range_size=380, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode26registerTransparentBatchesEv
; demangled: glitch::scene::CBatchSceneNode::registerTransparentBatches()
; decoder-mode: arm
0057ea70  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057ea74  30 31 90 e5                                      ldr r3, [r0, #0x130]
0057ea78  44 71 90 e5                                      ldr r7, [r0, #0x144]
0057ea7c  60 11 9f e5                                      ldr r1, [pc, #0x160]
0057ea80  20 20 93 e5                                      ldr r2, [r3, #0x20]
0057ea84  24 30 93 e5                                      ldr r3, [r3, #0x24]
0057ea88  3c d0 4d e2                                      sub sp, sp, #0x3c
0057ea8c  01 10 8f e0                                      add r1, pc, r1
0057ea90  03 30 62 e0                                      rsb r3, r2, r3
0057ea94  43 31 a0 e1                                      asr r3, r3, #2
0057ea98  1c 10 8d e5                                      str r1, [sp, #0x1c]
0057ea9c  83 20 83 e0                                      add r2, r3, r3, lsl #1
0057eaa0  00 40 a0 e1                                      mov r4, r0
0057eaa4  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057eaa8  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057eaac  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057eab0  02 21 83 e0                                      add r2, r3, r2, lsl #2
0057eab4  02 00 57 e1                                      cmp r7, r2
0057eab8  20 20 8d e5                                      str r2, [sp, #0x20]
0057eabc  46 00 00 2a                                      bhs #0x57ebdc
0057eac0  14 30 a0 e3                                      mov r3, #0x14
0057eac4  93 07 03 e0                                      mul r3, r3, r7
0057eac8  18 21 9f e5                                      ldr r2, [pc, #0x118]
0057eacc  14 30 8d e5                                      str r3, [sp, #0x14]
0057ead0  28 90 8d e2                                      add sb, sp, #0x28
0057ead4  24 20 8d e5                                      str r2, [sp, #0x24]
0057ead8  34 60 8d e2                                      add r6, sp, #0x34
0057eadc  58 31 94 e5                                      ldr r3, [r4, #0x158]
0057eae0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0057eae4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0057eae8  0c c0 83 e0                                      add ip, r3, ip
0057eaec  18 c0 8d e5                                      str ip, [sp, #0x18]
0057eaf0  10 50 9c e5                                      ldr r5, [ip, #0x10]
0057eaf4  01 20 93 e7                                      ldr r2, [r3, r1]
0057eaf8  05 51 83 e0                                      add r5, r3, r5, lsl #2
0057eafc  02 21 85 e0                                      add r2, r5, r2, lsl #2
0057eb00  05 00 52 e1                                      cmp r2, r5
0057eb04  10 20 8d e5                                      str r2, [sp, #0x10]
0057eb08  24 00 00 0a                                      beq #0x57eba0
0057eb0c  07 a0 a0 e1                                      mov sl, r7
0057eb10  04 70 95 e4                                      ldr r7, [r5], #4
0057eb14  09 00 a0 e1                                      mov r0, sb
0057eb18  30 11 94 e5                                      ldr r1, [r4, #0x130]
0057eb1c  04 20 97 e5                                      ldr r2, [r7, #4]
0057eb20  79 ff ff eb                                      bl #0x57e90c
0057eb24  10 81 94 e5                                      ldr r8, [r4, #0x110]
0057eb28  30 31 94 e5                                      ldr r3, [r4, #0x130]
0057eb2c  06 00 a0 e1                                      mov r0, r6
0057eb30  00 c0 98 e5                                      ldr ip, [r8]
0057eb34  03 10 a0 e1                                      mov r1, r3
0057eb38  0a 20 a0 e1                                      mov r2, sl
0057eb3c  00 30 93 e5                                      ldr r3, [r3]
0057eb40  24 b0 9c e5                                      ldr fp, [ip, #0x24]
0057eb44  0f e0 a0 e1                                      mov lr, pc
0057eb48  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057eb4c  08 10 97 e8                                      ldm r7, {r3, ip}
0057eb50  04 10 a0 e1                                      mov r1, r4
0057eb54  00 30 93 e5                                      ldr r3, [r3]
0057eb58  06 20 a0 e1                                      mov r2, r6
0057eb5c  08 00 a0 e1                                      mov r0, r8
0057eb60  8c 31 83 e0                                      add r3, r3, ip, lsl #3
0057eb64  08 c0 a0 e3                                      mov ip, #8
0057eb68  04 30 93 e5                                      ldr r3, [r3, #4]
0057eb6c  00 c0 8d e5                                      str ip, [sp]
0057eb70  04 90 8d e5                                      str sb, [sp, #4]
0057eb74  f2 c2 d7 e1                                      ldrsh ip, [r7, #0x22]
0057eb78  01 30 83 e2                                      add r3, r3, #1
0057eb7c  03 38 8a e1                                      orr r3, sl, r3, lsl #16
0057eb80  08 c0 8d e5                                      str ip, [sp, #8]
0057eb84  3b ff 2f e1                                      blx fp
0057eb88  06 00 a0 e1                                      mov r0, r6
0057eb8c  15 48 f6 eb                                      bl #0x310be8
0057eb90  10 10 9d e5                                      ldr r1, [sp, #0x10]
0057eb94  05 00 51 e1                                      cmp r1, r5
0057eb98  dc ff ff 1a                                      bne #0x57eb10
0057eb9c  0a 70 a0 e1                                      mov r7, sl
0057eba0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0057eba4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0057eba8  20 10 9d e5                                      ldr r1, [sp, #0x20]
0057ebac  01 70 87 e2                                      add r7, r7, #1
0057ebb0  02 30 9c e7                                      ldr r3, [ip, r2]
0057ebb4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0057ebb8  00 c0 a0 e3                                      mov ip, #0
0057ebbc  00 30 93 e5                                      ldr r3, [r3]
0057ebc0  00 c0 82 e5                                      str ip, [r2]
0057ebc4  01 00 57 e1                                      cmp r7, r1
0057ebc8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0057ebcc  14 10 81 e2                                      add r1, r1, #0x14
0057ebd0  14 10 8d e5                                      str r1, [sp, #0x14]
0057ebd4  08 30 82 e5                                      str r3, [r2, #8]
0057ebd8  bf ff ff 3a                                      blo #0x57eadc
0057ebdc  3c d0 8d e2                                      add sp, sp, #0x3c
0057ebe0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0057ebe4  04 60 41 00 b0 07 00 00                          .byte 0x04, 0x60, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0057ebec, declared_size=288, range_size=288, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode27invalidateVisibleIndexCacheEj
; demangled: glitch::scene::CBatchSceneNode::invalidateVisibleIndexCache(unsigned int)
; decoder-mode: arm
0057ebec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057ebf0  50 31 d0 e5                                      ldrb r3, [r0, #0x150]
0057ebf4  00 40 a0 e1                                      mov r4, r0
0057ebf8  00 00 53 e3                                      cmp r3, #0
0057ebfc  0b 00 00 0a                                      beq #0x57ec30
0057ec00  01 00 71 e3                                      cmn r1, #1
0057ec04  06 00 00 0a                                      beq #0x57ec24
0057ec08  58 31 90 e5                                      ldr r3, [r0, #0x158]
0057ec0c  14 20 a0 e3                                      mov r2, #0x14
0057ec10  92 31 21 e0                                      mla r1, r2, r1, r3
0057ec14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0057ec18  01 30 83 e3                                      orr r3, r3, #1
0057ec1c  0c 30 81 e5                                      str r3, [r1, #0xc]
0057ec20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0057ec24  44 51 90 e5                                      ldr r5, [r0, #0x144]
0057ec28  00 00 55 e3                                      cmp r5, #0
0057ec2c  00 00 00 1a                                      bne #0x57ec34
0057ec30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0057ec34  30 11 90 e5                                      ldr r1, [r0, #0x130]
0057ec38  00 30 a0 e3                                      mov r3, #0
0057ec3c  03 20 a0 e1                                      mov r2, r3
0057ec40  20 00 91 e5                                      ldr r0, [r1, #0x20]
0057ec44  03 70 a0 e1                                      mov r7, r3
0057ec48  03 10 90 e7                                      ldr r1, [r0, r3]
0057ec4c  01 20 82 e2                                      add r2, r2, #1
0057ec50  05 00 52 e1                                      cmp r2, r5
0057ec54  20 10 91 e5                                      ldr r1, [r1, #0x20]
0057ec58  14 30 83 e2                                      add r3, r3, #0x14
0057ec5c  01 70 87 e0                                      add r7, r7, r1
0057ec60  f8 ff ff 1a                                      bne #0x57ec48
0057ec64  54 01 94 e5                                      ldr r0, [r4, #0x154]
0057ec68  0c 60 a0 e3                                      mov r6, #0xc
0057ec6c  96 05 06 e0                                      mul r6, r6, r5
0057ec70  00 00 50 e3                                      cmp r0, #0
0057ec74  a6 60 a0 e1                                      lsr r6, r6, #1
0057ec78  00 00 00 0a                                      beq #0x57ec80
0057ec7c  0d 3d f6 eb                                      bl #0x30e0b8
0057ec80  06 00 87 e0                                      add r0, r7, r6
0057ec84  00 10 a0 e3                                      mov r1, #0
0057ec88  80 00 a0 e1                                      lsl r0, r0, #1
0057ec8c  45 d5 fe eb                                      bl #0x5341a8
0057ec90  00 20 a0 e3                                      mov r2, #0
0057ec94  54 01 84 e5                                      str r0, [r4, #0x154]
0057ec98  02 30 a0 e1                                      mov r3, r2
0057ec9c  02 10 a0 e1                                      mov r1, r2
0057eca0  02 80 a0 e1                                      mov r8, r2
0057eca4  01 00 00 ea                                      b #0x57ecb0
0057eca8  54 01 94 e5                                      ldr r0, [r4, #0x154]
0057ecac  07 60 86 e0                                      add r6, r6, r7
0057ecb0  30 71 94 e5                                      ldr r7, [r4, #0x130]
0057ecb4  02 c0 80 e0                                      add ip, r0, r2
0057ecb8  01 10 81 e2                                      add r1, r1, #1
0057ecbc  20 70 97 e5                                      ldr r7, [r7, #0x20]
0057ecc0  05 00 51 e1                                      cmp r1, r5
0057ecc4  03 70 97 e7                                      ldr r7, [r7, r3]
0057ecc8  20 70 97 e5                                      ldr r7, [r7, #0x20]
0057eccc  02 80 80 e7                                      str r8, [r0, r2]
0057ecd0  08 60 8c e5                                      str r6, [ip, #8]
0057ecd4  04 70 8c e5                                      str r7, [ip, #4]
0057ecd8  30 c1 94 e5                                      ldr ip, [r4, #0x130]
0057ecdc  58 01 94 e5                                      ldr r0, [r4, #0x158]
0057ece0  0c 20 82 e2                                      add r2, r2, #0xc
0057ece4  20 70 9c e5                                      ldr r7, [ip, #0x20]
0057ece8  03 00 80 e0                                      add r0, r0, r3
0057ecec  0c c0 90 e5                                      ldr ip, [r0, #0xc]
0057ecf0  03 70 97 e7                                      ldr r7, [r7, r3]
0057ecf4  14 30 83 e2                                      add r3, r3, #0x14
0057ecf8  01 c0 8c e3                                      orr ip, ip, #1
0057ecfc  20 70 97 e5                                      ldr r7, [r7, #0x20]
0057ed00  0c c0 80 e5                                      str ip, [r0, #0xc]
0057ed04  e7 ff ff 1a                                      bne #0x57eca8
0057ed08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0057ed0c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode20setVisibleIndexCacheEb
; demangled: glitch::scene::CBatchSceneNode::setVisibleIndexCache(bool)
; decoder-mode: arm
0057ed0c  10 40 2d e9                                      push {r4, lr}
0057ed10  00 00 51 e3                                      cmp r1, #0
0057ed14  50 31 d0 e5                                      ldrb r3, [r0, #0x150]
0057ed18  00 40 a0 e1                                      mov r4, r0
0057ed1c  50 11 c0 e5                                      strb r1, [r0, #0x150]
0057ed20  12 00 00 0a                                      beq #0x57ed70
0057ed24  00 00 53 e3                                      cmp r3, #0
0057ed28  12 00 00 1a                                      bne #0x57ed78
0057ed2c  30 31 90 e5                                      ldr r3, [r0, #0x130]
0057ed30  00 00 53 e3                                      cmp r3, #0
0057ed34  0f 00 00 0a                                      beq #0x57ed78
0057ed38  20 20 93 e5                                      ldr r2, [r3, #0x20]
0057ed3c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0057ed40  03 30 62 e0                                      rsb r3, r2, r3
0057ed44  43 31 a0 e1                                      asr r3, r3, #2
0057ed48  83 20 83 e0                                      add r2, r3, r3, lsl #1
0057ed4c  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057ed50  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057ed54  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057ed58  02 31 83 e0                                      add r3, r3, r2, lsl #2
0057ed5c  00 00 53 e3                                      cmp r3, #0
0057ed60  04 00 00 0a                                      beq #0x57ed78
0057ed64  00 10 e0 e3                                      mvn r1, #0
0057ed68  10 40 bd e8                                      pop {r4, lr}
0057ed6c  9e ff ff ea                                      b #0x57ebec
0057ed70  00 00 53 e3                                      cmp r3, #0
0057ed74  00 00 00 1a                                      bne #0x57ed7c
0057ed78  10 80 bd e8                                      pop {r4, pc}
0057ed7c  54 01 90 e5                                      ldr r0, [r0, #0x154]
0057ed80  00 00 50 e3                                      cmp r0, #0
0057ed84  00 00 00 0a                                      beq #0x57ed8c
0057ed88  ca 3c f6 eb                                      bl #0x30e0b8
0057ed8c  00 30 a0 e3                                      mov r3, #0
0057ed90  54 31 84 e5                                      str r3, [r4, #0x154]
0057ed94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057ed98, declared_size=156, range_size=156, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CBatchSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0057ed98  70 40 2d e9                                      push {r4, r5, r6, lr}
0057ed9c  00 40 51 e2                                      subs r4, r1, #0
0057eda0  00 50 a0 e1                                      mov r5, r0
0057eda4  1d 00 00 0a                                      beq #0x57ee20
0057eda8  aa 64 00 eb                                      bl #0x598058
0057edac  70 10 9f e5                                      ldr r1, [pc, #0x70]
0057edb0  70 20 9f e5                                      ldr r2, [pc, #0x70]
0057edb4  00 30 94 e5                                      ldr r3, [r4]
0057edb8  01 10 8f e0                                      add r1, pc, r1
0057edbc  02 20 8f e0                                      add r2, pc, r2
0057edc0  04 00 a0 e1                                      mov r0, r4
0057edc4  0f e0 a0 e1                                      mov lr, pc
0057edc8  00 f1 93 e5                                      ldr pc, [r3, #0x100]
0057edcc  58 10 9f e5                                      ldr r1, [pc, #0x58]
0057edd0  38 01 85 e5                                      str r0, [r5, #0x138]
0057edd4  00 30 94 e5                                      ldr r3, [r4]
0057edd8  01 10 8f e0                                      add r1, pc, r1
0057eddc  04 00 a0 e1                                      mov r0, r4
0057ede0  0f e0 a0 e1                                      mov lr, pc
0057ede4  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0057ede8  40 10 9f e5                                      ldr r1, [pc, #0x40]
0057edec  48 01 c5 e5                                      strb r0, [r5, #0x148]
0057edf0  00 30 94 e5                                      ldr r3, [r4]
0057edf4  01 10 8f e0                                      add r1, pc, r1
0057edf8  04 00 a0 e1                                      mov r0, r4
0057edfc  0f e0 a0 e1                                      mov lr, pc
0057ee00  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
0057ee04  50 31 d5 e5                                      ldrb r3, [r5, #0x150]
0057ee08  00 10 a0 e1                                      mov r1, r0
0057ee0c  00 00 53 e1                                      cmp r3, r0
0057ee10  02 00 00 0a                                      beq #0x57ee20
0057ee14  05 00 a0 e1                                      mov r0, r5
0057ee18  70 40 bd e8                                      pop {r4, r5, r6, lr}
0057ee1c  ba ff ff ea                                      b #0x57ed0c
0057ee20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0057ee24  c8 04 36 00 e4 85 3d 00 c0 04 36 00 c4 04 36 00  .byte 0xc8, 0x04, 0x36, 0x00, 0xe4, 0x85, 0x3d, 0x00, 0xc0, 0x04, 0x36, 0x00, 0xc4, 0x04, 0x36, 0x00

; FUNCTION 0x0057ee34, declared_size=576, range_size=576, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode11postCompileEv
; demangled: glitch::scene::CBatchSceneNode::postCompile()
; decoder-mode: arm
0057ee34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057ee38  30 31 90 e5                                      ldr r3, [r0, #0x130]
0057ee3c  00 40 a0 e1                                      mov r4, r0
0057ee40  14 d0 4d e2                                      sub sp, sp, #0x14
0057ee44  03 00 a0 e1                                      mov r0, r3
0057ee48  00 30 93 e5                                      ldr r3, [r3]
0057ee4c  0f e0 a0 e1                                      mov lr, pc
0057ee50  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0057ee54  44 31 94 e5                                      ldr r3, [r4, #0x144]
0057ee58  00 80 a0 e1                                      mov r8, r0
0057ee5c  01 00 73 e3                                      cmn r3, #1
0057ee60  59 00 00 0a                                      beq #0x57efcc
0057ee64  00 00 58 e3                                      cmp r8, #0
0057ee68  08 50 a0 01                                      moveq r5, r8
0057ee6c  0d 00 00 0a                                      beq #0x57eea8
0057ee70  30 11 94 e5                                      ldr r1, [r4, #0x130]
0057ee74  00 30 a0 e3                                      mov r3, #0
0057ee78  03 20 a0 e1                                      mov r2, r3
0057ee7c  20 c0 91 e5                                      ldr ip, [r1, #0x20]
0057ee80  03 50 a0 e1                                      mov r5, r3
0057ee84  03 10 8c e0                                      add r1, ip, r3
0057ee88  bc 00 d1 e1                                      ldrh r0, [r1, #0xc]
0057ee8c  be 10 d1 e1                                      ldrh r1, [r1, #0xe]
0057ee90  01 20 82 e2                                      add r2, r2, #1
0057ee94  08 00 52 e1                                      cmp r2, r8
0057ee98  01 10 60 e0                                      rsb r1, r0, r1
0057ee9c  71 50 f5 e6                                      uxtah r5, r5, r1
0057eea0  14 30 83 e2                                      add r3, r3, #0x14
0057eea4  f6 ff ff 1a                                      bne #0x57ee84
0057eea8  58 01 94 e5                                      ldr r0, [r4, #0x158]
0057eeac  00 00 50 e3                                      cmp r0, #0
0057eeb0  02 00 00 0a                                      beq #0x57eec0
0057eeb4  7f 3c f6 eb                                      bl #0x30e0b8
0057eeb8  00 30 a0 e3                                      mov r3, #0
0057eebc  58 31 84 e5                                      str r3, [r4, #0x158]
0057eec0  14 70 a0 e3                                      mov r7, #0x14
0057eec4  97 08 07 e0                                      mul r7, r7, r8
0057eec8  00 10 a0 e3                                      mov r1, #0
0057eecc  07 00 85 e0                                      add r0, r5, r7
0057eed0  00 01 a0 e1                                      lsl r0, r0, #2
0057eed4  b3 d4 fe eb                                      bl #0x5341a8
0057eed8  00 50 a0 e3                                      mov r5, #0
0057eedc  00 00 58 e3                                      cmp r8, #0
0057eee0  00 e0 a0 e1                                      mov lr, r0
0057eee4  58 01 84 e5                                      str r0, [r4, #0x158]
0057eee8  3c 51 84 e5                                      str r5, [r4, #0x13c]
0057eeec  40 51 84 e5                                      str r5, [r4, #0x140]
0057eef0  30 00 00 0a                                      beq #0x57efb8
0057eef4  27 71 a0 e1                                      lsr r7, r7, #2
0057eef8  05 60 a0 e1                                      mov r6, r5
0057eefc  08 90 8d e2                                      add sb, sp, #8
0057ef00  05 a0 a0 e1                                      mov sl, r5
0057ef04  01 b0 a0 e3                                      mov fp, #1
0057ef08  07 00 00 ea                                      b #0x57ef2c
0057ef0c  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
0057ef10  01 60 86 e2                                      add r6, r6, #1
0057ef14  14 50 85 e2                                      add r5, r5, #0x14
0057ef18  03 00 52 e1                                      cmp r2, r3
0057ef1c  3c 31 84 35                                      strlo r3, [r4, #0x13c]
0057ef20  08 00 56 e1                                      cmp r6, r8
0057ef24  23 00 00 0a                                      beq #0x57efb8
0057ef28  58 e1 94 e5                                      ldr lr, [r4, #0x158]
0057ef2c  30 11 94 e5                                      ldr r1, [r4, #0x130]
0057ef30  05 30 8e e0                                      add r3, lr, r5
0057ef34  06 20 a0 e1                                      mov r2, r6
0057ef38  20 c0 91 e5                                      ldr ip, [r1, #0x20]
0057ef3c  09 00 a0 e1                                      mov r0, sb
0057ef40  05 c0 8c e0                                      add ip, ip, r5
0057ef44  bc 10 dc e1                                      ldrh r1, [ip, #0xc]
0057ef48  be c0 dc e1                                      ldrh ip, [ip, #0xe]
0057ef4c  10 70 83 e5                                      str r7, [r3, #0x10]
0057ef50  04 a0 83 e5                                      str sl, [r3, #4]
0057ef54  05 a0 8e e7                                      str sl, [lr, r5]
0057ef58  0c b0 83 e5                                      str fp, [r3, #0xc]
0057ef5c  30 31 94 e5                                      ldr r3, [r4, #0x130]
0057ef60  0c 10 61 e0                                      rsb r1, r1, ip
0057ef64  71 70 f7 e6                                      uxtah r7, r7, r1
0057ef68  03 10 a0 e1                                      mov r1, r3
0057ef6c  00 30 93 e5                                      ldr r3, [r3]
0057ef70  0f e0 a0 e1                                      mov lr, pc
0057ef74  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0057ef78  08 30 9d e5                                      ldr r3, [sp, #8]
0057ef7c  03 00 a0 e1                                      mov r0, r3
0057ef80  20 30 93 e5                                      ldr r3, [r3, #0x20]
0057ef84  04 30 8d e5                                      str r3, [sp, #4]
0057ef88  7d 79 f6 eb                                      bl #0x31d584
0057ef8c  44 21 94 e5                                      ldr r2, [r4, #0x144]
0057ef90  04 30 9d e5                                      ldr r3, [sp, #4]
0057ef94  06 00 52 e1                                      cmp r2, r6
0057ef98  db ff ff 8a                                      bhi #0x57ef0c
0057ef9c  40 21 94 e5                                      ldr r2, [r4, #0x140]
0057efa0  01 60 86 e2                                      add r6, r6, #1
0057efa4  14 50 85 e2                                      add r5, r5, #0x14
0057efa8  03 00 52 e1                                      cmp r2, r3
0057efac  40 31 84 35                                      strlo r3, [r4, #0x140]
0057efb0  08 00 56 e1                                      cmp r6, r8
0057efb4  db ff ff 1a                                      bne #0x57ef28
0057efb8  04 00 a0 e1                                      mov r0, r4
0057efbc  00 10 e0 e3                                      mvn r1, #0
0057efc0  09 ff ff eb                                      bl #0x57ebec
0057efc4  14 d0 8d e2                                      add sp, sp, #0x14
0057efc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057efcc  30 31 94 e5                                      ldr r3, [r4, #0x130]
0057efd0  00 50 a0 e3                                      mov r5, #0
0057efd4  0c 60 8d e2                                      add r6, sp, #0xc
0057efd8  20 20 93 e5                                      ldr r2, [r3, #0x20]
0057efdc  24 30 93 e5                                      ldr r3, [r3, #0x24]
0057efe0  0c 70 a0 e3                                      mov r7, #0xc
0057efe4  03 20 62 e0                                      rsb r2, r2, r3
0057efe8  42 21 a0 e1                                      asr r2, r2, #2
0057efec  82 30 82 e0                                      add r3, r2, r2, lsl #1
0057eff0  03 32 83 e0                                      add r3, r3, r3, lsl #4
0057eff4  03 34 83 e0                                      add r3, r3, r3, lsl #8
0057eff8  03 38 83 e0                                      add r3, r3, r3, lsl #16
0057effc  03 31 82 e0                                      add r3, r2, r3, lsl #2
0057f000  44 31 84 e5                                      str r3, [r4, #0x144]
0057f004  14 00 00 ea                                      b #0x57f05c
0057f008  30 31 94 e5                                      ldr r3, [r4, #0x130]
0057f00c  03 10 a0 e1                                      mov r1, r3
0057f010  00 30 93 e5                                      ldr r3, [r3]
0057f014  0f e0 a0 e1                                      mov lr, pc
0057f018  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057f01c  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0057f020  0a 00 a0 e1                                      mov r0, sl
0057f024  42 1b 01 eb                                      bl #0x5c5d34
0057f028  04 30 9a e5                                      ldr r3, [sl, #4]
0057f02c  18 30 93 e5                                      ldr r3, [r3, #0x18]
0057f030  97 30 23 e0                                      mla r3, r7, r0, r3
0057f034  06 00 a0 e1                                      mov r0, r6
0057f038  08 30 93 e5                                      ldr r3, [r3, #8]
0057f03c  04 a0 93 e5                                      ldr sl, [r3, #4]
0057f040  e8 46 f6 eb                                      bl #0x310be8
0057f044  44 31 94 e5                                      ldr r3, [r4, #0x144]
0057f048  5a a8 e0 e7                                      ubfx sl, sl, #0x10, #1
0057f04c  00 00 5a e3                                      cmp sl, #0
0057f050  01 30 43 12                                      subne r3, r3, #1
0057f054  44 31 84 15                                      strne r3, [r4, #0x144]
0057f058  01 50 85 02                                      addeq r5, r5, #1
0057f05c  03 00 55 e1                                      cmp r5, r3
0057f060  05 20 a0 e1                                      mov r2, r5
0057f064  06 00 a0 e1                                      mov r0, r6
0057f068  e6 ff ff 3a                                      blo #0x57f008
0057f06c  5c 31 84 e5                                      str r3, [r4, #0x15c]
0057f070  7b ff ff ea                                      b #0x57ee64

; FUNCTION 0x0057f074, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode5setupEbPNS_5video12IVideoDriverE
; demangled: glitch::scene::CBatchSceneNode::setup(bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
0057f074  70 40 2d e9                                      push {r4, r5, r6, lr}
0057f078  00 40 a0 e1                                      mov r4, r0
0057f07c  01 50 a0 e1                                      mov r5, r1
0057f080  30 01 90 e5                                      ldr r0, [r0, #0x130]
0057f084  02 10 a0 e1                                      mov r1, r2
0057f088  43 f4 ff eb                                      bl #0x57c19c
0057f08c  5c 01 84 e5                                      str r0, [r4, #0x15c]
0057f090  44 01 84 e5                                      str r0, [r4, #0x144]
0057f094  30 01 94 e5                                      ldr r0, [r4, #0x130]
0057f098  8d ed ff eb                                      bl #0x57a6d4
0057f09c  30 01 94 e5                                      ldr r0, [r4, #0x130]
0057f0a0  33 f0 ff eb                                      bl #0x57b174
0057f0a4  30 31 94 e5                                      ldr r3, [r4, #0x130]
0057f0a8  03 00 a0 e1                                      mov r0, r3
0057f0ac  00 30 93 e5                                      ldr r3, [r3]
0057f0b0  0f e0 a0 e1                                      mov lr, pc
0057f0b4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0057f0b8  00 00 55 e3                                      cmp r5, #0
0057f0bc  03 00 00 1a                                      bne #0x57f0d0
0057f0c0  04 00 a0 e1                                      mov r0, r4
0057f0c4  00 30 94 e5                                      ldr r3, [r4]
0057f0c8  0f e0 a0 e1                                      mov lr, pc
0057f0cc  00 f1 93 e5                                      ldr pc, [r3, #0x100]
0057f0d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057f0d4, declared_size=328, range_size=328, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC1EiRKN5boost13intrusive_ptrINS0_10CBatchMeshEEE
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int, boost::intrusive_ptr<glitch::scene::CBatchMesh> const&)
; decoder-mode: arm
0057f0d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057f0d8  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
0057f0dc  2c c1 9f e5                                      ldr ip, [pc, #0x12c]
0057f0e0  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
0057f0e4  06 60 8f e0                                      add r6, pc, r6
0057f0e8  0c 50 96 e7                                      ldr r5, [r6, ip]
0057f0ec  03 30 96 e7                                      ldr r3, [r6, r3]
0057f0f0  01 e0 a0 e3                                      mov lr, #1
0057f0f4  24 c0 95 e5                                      ldr ip, [r5, #0x24]
0057f0f8  08 30 83 e2                                      add r3, r3, #8
0057f0fc  64 e1 80 e5                                      str lr, [r0, #0x164]
0057f100  00 c0 80 e5                                      str ip, [r0]
0057f104  60 31 80 e5                                      str r3, [r0, #0x160]
0057f108  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
0057f10c  28 70 95 e5                                      ldr r7, [r5, #0x28]
0057f110  30 d0 4d e2                                      sub sp, sp, #0x30
0057f114  00 c0 a0 e3                                      mov ip, #0
0057f118  03 70 80 e7                                      str r7, [r0, r3]
0057f11c  08 70 8d e2                                      add r7, sp, #8
0057f120  fe e5 a0 e3                                      mov lr, #0x3f800000
0057f124  02 80 a0 e1                                      mov r8, r2
0057f128  24 30 8d e2                                      add r3, sp, #0x24
0057f12c  01 20 a0 e1                                      mov r2, r1
0057f130  00 70 8d e5                                      str r7, [sp]
0057f134  08 10 85 e2                                      add r1, r5, #8
0057f138  18 70 8d e2                                      add r7, sp, #0x18
0057f13c  00 40 a0 e1                                      mov r4, r0
0057f140  10 c0 8d e5                                      str ip, [sp, #0x10]
0057f144  20 e0 8d e5                                      str lr, [sp, #0x20]
0057f148  04 70 8d e5                                      str r7, [sp, #4]
0057f14c  24 c0 8d e5                                      str ip, [sp, #0x24]
0057f150  28 c0 8d e5                                      str ip, [sp, #0x28]
0057f154  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057f158  08 c0 8d e5                                      str ip, [sp, #8]
0057f15c  0c c0 8d e5                                      str ip, [sp, #0xc]
0057f160  14 e0 8d e5                                      str lr, [sp, #0x14]
0057f164  18 e0 8d e5                                      str lr, [sp, #0x18]
0057f168  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057f16c  d3 67 00 eb                                      bl #0x5990c0
0057f170  04 20 95 e5                                      ldr r2, [r5, #4]
0057f174  14 10 95 e5                                      ldr r1, [r5, #0x14]
0057f178  98 30 9f e5                                      ldr r3, [pc, #0x98]
0057f17c  00 20 84 e5                                      str r2, [r4]
0057f180  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0057f184  03 30 96 e7                                      ldr r3, [r6, r3]
0057f188  18 00 95 e5                                      ldr r0, [r5, #0x18]
0057f18c  02 10 84 e7                                      str r1, [r4, r2]
0057f190  00 10 94 e5                                      ldr r1, [r4]
0057f194  4f 2f 83 e2                                      add r2, r3, #0x13c
0057f198  1c 30 83 e2                                      add r3, r3, #0x1c
0057f19c  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0057f1a0  01 00 84 e7                                      str r0, [r4, r1]
0057f1a4  60 21 84 e5                                      str r2, [r4, #0x160]
0057f1a8  00 30 84 e5                                      str r3, [r4]
0057f1ac  00 30 98 e5                                      ldr r3, [r8]
0057f1b0  02 00 a0 e3                                      mov r0, #2
0057f1b4  00 10 e0 e3                                      mvn r1, #0
0057f1b8  00 00 53 e3                                      cmp r3, #0
0057f1bc  30 31 84 e5                                      str r3, [r4, #0x130]
0057f1c0  04 20 93 15                                      ldrne r2, [r3, #4]
0057f1c4  01 20 82 12                                      addne r2, r2, #1
0057f1c8  04 20 83 15                                      strne r2, [r3, #4]
0057f1cc  00 30 a0 e3                                      mov r3, #0
0057f1d0  01 20 a0 e3                                      mov r2, #1
0057f1d4  38 01 84 e5                                      str r0, [r4, #0x138]
0057f1d8  34 01 84 e5                                      str r0, [r4, #0x134]
0057f1dc  50 21 c4 e5                                      strb r2, [r4, #0x150]
0057f1e0  58 31 84 e5                                      str r3, [r4, #0x158]
0057f1e4  5c 11 84 e5                                      str r1, [r4, #0x15c]
0057f1e8  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057f1ec  40 31 84 e5                                      str r3, [r4, #0x140]
0057f1f0  44 11 84 e5                                      str r1, [r4, #0x144]
0057f1f4  48 21 c4 e5                                      strb r2, [r4, #0x148]
0057f1f8  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057f1fc  54 31 84 e5                                      str r3, [r4, #0x154]
0057f200  04 00 a0 e1                                      mov r0, r4
0057f204  30 d0 8d e2                                      add sp, sp, #0x30
0057f208  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0057f20c  ac 59 41 00 c8 23 00 00 44 2b 00 00 20 31 00 00  .byte 0xac, 0x59, 0x41, 0x00, 0xc8, 0x23, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x20, 0x31, 0x00, 0x00

; FUNCTION 0x0057f21c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode17renderBatchBBoxesEPNS_5video12IVideoDriverEj
; demangled: glitch::scene::CBatchSceneNode::renderBatchBBoxes(glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
0057f21c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057f220  dc 70 91 e5                                      ldr r7, [r1, #0xdc]
0057f224  00 50 a0 e1                                      mov r5, r0
0057f228  ff 3f 0f e3                                      movw r3, #0xffff
0057f22c  bc 02 d7 e1                                      ldrh r0, [r7, #0x2c]
0057f230  0c d0 4d e2                                      sub sp, sp, #0xc
0057f234  01 40 a0 e1                                      mov r4, r1
0057f238  03 00 50 e1                                      cmp r0, r3
0057f23c  02 60 a0 e1                                      mov r6, r2
0057f240  2c 00 00 0a                                      beq #0x57f2f8
0057f244  04 a0 8d e2                                      add sl, sp, #4
0057f248  00 20 a0 e1                                      mov r2, r0
0057f24c  07 10 a0 e1                                      mov r1, r7
0057f250  0a 00 a0 e1                                      mov r0, sl
0057f254  01 30 a0 e3                                      mov r3, #1
0057f258  a1 77 01 eb                                      bl #0x5dd0e4
0057f25c  04 00 9d e5                                      ldr r0, [sp, #4]
0057f260  00 00 50 e3                                      cmp r0, #0
0057f264  ff 20 a0 03                                      moveq r2, #0xff
0057f268  01 00 00 0a                                      beq #0x57f274
0057f26c  b0 1a 01 eb                                      bl #0x5c5d34
0057f270  00 20 a0 e1                                      mov r2, r0
0057f274  00 30 a0 e3                                      mov r3, #0
0057f278  04 00 a0 e1                                      mov r0, r4
0057f27c  0a 10 a0 e1                                      mov r1, sl
0057f280  38 b8 00 eb                                      bl #0x5ad368
0057f284  14 30 a0 e3                                      mov r3, #0x14
0057f288  93 06 06 e0                                      mul r6, r3, r6
0057f28c  58 31 95 e5                                      ldr r3, [r5, #0x158]
0057f290  06 20 83 e0                                      add r2, r3, r6
0057f294  10 50 92 e5                                      ldr r5, [r2, #0x10]
0057f298  06 80 93 e7                                      ldr r8, [r3, r6]
0057f29c  05 51 83 e0                                      add r5, r3, r5, lsl #2
0057f2a0  08 81 85 e0                                      add r8, r5, r8, lsl #2
0057f2a4  05 00 58 e1                                      cmp r8, r5
0057f2a8  0e 00 00 0a                                      beq #0x57f2e8
0057f2ac  00 70 a0 e3                                      mov r7, #0
0057f2b0  00 60 e0 e3                                      mvn r6, #0
0057f2b4  04 20 95 e4                                      ldr r2, [r5], #4
0057f2b8  00 30 94 e5                                      ldr r3, [r4]
0057f2bc  04 00 a0 e1                                      mov r0, r4
0057f2c0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0057f2c4  28 30 93 e5                                      ldr r3, [r3, #0x28]
0057f2c8  00 70 cd e5                                      strb r7, [sp]
0057f2cc  01 60 cd e5                                      strb r6, [sp, #1]
0057f2d0  02 70 cd e5                                      strb r7, [sp, #2]
0057f2d4  03 60 cd e5                                      strb r6, [sp, #3]
0057f2d8  00 20 9d e5                                      ldr r2, [sp]
0057f2dc  33 ff 2f e1                                      blx r3
0057f2e0  05 00 58 e1                                      cmp r8, r5
0057f2e4  f2 ff ff 1a                                      bne #0x57f2b4
0057f2e8  0a 00 a0 e1                                      mov r0, sl
0057f2ec  3d 46 f6 eb                                      bl #0x310be8
0057f2f0  0c d0 8d e2                                      add sp, sp, #0xc
0057f2f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0057f2f8  07 00 a0 e1                                      mov r0, r7
0057f2fc  00 10 a0 e3                                      mov r1, #0
0057f300  08 66 01 eb                                      bl #0x5d8b28
0057f304  ce ff ff ea                                      b #0x57f244

; FUNCTION 0x0057f344, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeD2Ev
; demangled: glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
0057f344  70 40 2d e9                                      push {r4, r5, r6, lr}
0057f348  00 30 91 e5                                      ldr r3, [r1]
0057f34c  00 40 a0 e1                                      mov r4, r0
0057f350  01 50 a0 e1                                      mov r5, r1
0057f354  00 30 80 e5                                      str r3, [r0]
0057f358  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057f35c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0057f360  03 20 80 e7                                      str r2, [r0, r3]
0057f364  00 30 90 e5                                      ldr r3, [r0]
0057f368  20 20 91 e5                                      ldr r2, [r1, #0x20]
0057f36c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057f370  03 20 80 e7                                      str r2, [r0, r3]
0057f374  58 01 90 e5                                      ldr r0, [r0, #0x158]
0057f378  00 00 50 e3                                      cmp r0, #0
0057f37c  00 00 00 0a                                      beq #0x57f384
0057f380  4c 3b f6 eb                                      bl #0x30e0b8
0057f384  04 00 a0 e1                                      mov r0, r4
0057f388  00 10 a0 e3                                      mov r1, #0
0057f38c  5e fe ff eb                                      bl #0x57ed0c
0057f390  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
0057f394  00 00 50 e3                                      cmp r0, #0
0057f398  00 00 00 0a                                      beq #0x57f3a0
0057f39c  78 78 f6 eb                                      bl #0x31d584
0057f3a0  30 01 94 e5                                      ldr r0, [r4, #0x130]
0057f3a4  00 00 50 e3                                      cmp r0, #0
0057f3a8  00 00 00 0a                                      beq #0x57f3b0
0057f3ac  74 78 f6 eb                                      bl #0x31d584
0057f3b0  04 30 95 e5                                      ldr r3, [r5, #4]
0057f3b4  04 50 85 e2                                      add r5, r5, #4
0057f3b8  04 10 85 e2                                      add r1, r5, #4
0057f3bc  00 30 84 e5                                      str r3, [r4]
0057f3c0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0057f3c4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057f3c8  04 00 a0 e1                                      mov r0, r4
0057f3cc  03 20 84 e7                                      str r2, [r4, r3]
0057f3d0  00 30 94 e5                                      ldr r3, [r4]
0057f3d4  14 20 95 e5                                      ldr r2, [r5, #0x14]
0057f3d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057f3dc  03 20 84 e7                                      str r2, [r4, r3]
0057f3e0  35 66 00 eb                                      bl #0x598cbc
0057f3e4  04 00 a0 e1                                      mov r0, r4
0057f3e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057f3ec, declared_size=176, range_size=176, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeD1Ev
; demangled: glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
0057f3ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0057f3f0  98 50 9f e5                                      ldr r5, [pc, #0x98]
0057f3f4  98 30 9f e5                                      ldr r3, [pc, #0x98]
0057f3f8  00 40 a0 e1                                      mov r4, r0
0057f3fc  05 50 8f e0                                      add r5, pc, r5
0057f400  58 01 90 e5                                      ldr r0, [r0, #0x158]
0057f404  03 30 95 e7                                      ldr r3, [r5, r3]
0057f408  00 00 50 e3                                      cmp r0, #0
0057f40c  4f 2f 83 e2                                      add r2, r3, #0x13c
0057f410  1c 30 83 e2                                      add r3, r3, #0x1c
0057f414  00 30 84 e5                                      str r3, [r4]
0057f418  60 21 84 e5                                      str r2, [r4, #0x160]
0057f41c  00 00 00 0a                                      beq #0x57f424
0057f420  24 3b f6 eb                                      bl #0x30e0b8
0057f424  04 00 a0 e1                                      mov r0, r4
0057f428  00 10 a0 e3                                      mov r1, #0
0057f42c  36 fe ff eb                                      bl #0x57ed0c
0057f430  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
0057f434  00 00 50 e3                                      cmp r0, #0
0057f438  00 00 00 0a                                      beq #0x57f440
0057f43c  50 78 f6 eb                                      bl #0x31d584
0057f440  30 01 94 e5                                      ldr r0, [r4, #0x130]
0057f444  00 00 50 e3                                      cmp r0, #0
0057f448  00 00 00 0a                                      beq #0x57f450
0057f44c  4c 78 f6 eb                                      bl #0x31d584
0057f450  40 30 9f e5                                      ldr r3, [pc, #0x40]
0057f454  04 00 a0 e1                                      mov r0, r4
0057f458  03 10 95 e7                                      ldr r1, [r5, r3]
0057f45c  04 30 91 e5                                      ldr r3, [r1, #4]
0057f460  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0057f464  18 20 91 e5                                      ldr r2, [r1, #0x18]
0057f468  00 30 84 e5                                      str r3, [r4]
0057f46c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057f470  08 10 81 e2                                      add r1, r1, #8
0057f474  03 c0 84 e7                                      str ip, [r4, r3]
0057f478  00 30 94 e5                                      ldr r3, [r4]
0057f47c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057f480  03 20 84 e7                                      str r2, [r4, r3]
0057f484  0c 66 00 eb                                      bl #0x598cbc
0057f488  04 00 a0 e1                                      mov r0, r4
0057f48c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0057f490  94 56 41 00 20 31 00 00 c8 23 00 00              .byte 0x94, 0x56, 0x41, 0x00, 0x20, 0x31, 0x00, 0x00, 0xc8, 0x23, 0x00, 0x00

; FUNCTION 0x0057f49c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeD0Ev
; demangled: glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
0057f49c  10 40 2d e9                                      push {r4, lr}
0057f4a0  00 40 a0 e1                                      mov r4, r0
0057f4a4  d0 ff ff eb                                      bl #0x57f3ec
0057f4a8  04 00 a0 e1                                      mov r0, r4
0057f4ac  7f 3b f6 eb                                      bl #0x30e2b0
0057f4b0  04 00 a0 e1                                      mov r0, r4
0057f4b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057f4b8, declared_size=588, range_size=588, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CBatchSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0057f4b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0057f4bc  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
0057f4c0  18 d0 4d e2                                      sub sp, sp, #0x18
0057f4c4  00 40 a0 e1                                      mov r4, r0
0057f4c8  01 00 13 e3                                      tst r3, #1
0057f4cc  02 00 00 1a                                      bne #0x57f4dc
0057f4d0  01 00 a0 e3                                      mov r0, #1
0057f4d4  18 d0 8d e2                                      add sp, sp, #0x18
0057f4d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0057f4dc  00 30 90 e5                                      ldr r3, [r0]
0057f4e0  0f e0 a0 e1                                      mov lr, pc
0057f4e4  04 f1 93 e5                                      ldr pc, [r3, #0x104]
0057f4e8  04 00 a0 e1                                      mov r0, r4
0057f4ec  44 fc ff eb                                      bl #0x57e604
0057f4f0  04 10 a0 e1                                      mov r1, r4
0057f4f4  00 a0 a0 e1                                      mov sl, r0
0057f4f8  10 01 94 e5                                      ldr r0, [r4, #0x110]
0057f4fc  89 2d 00 eb                                      bl #0x58ab28
0057f500  00 00 50 e3                                      cmp r0, #0
0057f504  f1 ff ff 1a                                      bne #0x57f4d0
0057f508  10 31 94 e5                                      ldr r3, [r4, #0x110]
0057f50c  50 92 d3 e5                                      ldrb sb, [r3, #0x250]
0057f510  00 00 59 e3                                      cmp sb, #0
0057f514  38 71 94 15                                      ldrne r7, [r4, #0x138]
0057f518  50 02 c3 15                                      strbne r0, [r3, #0x250]
0057f51c  10 31 94 15                                      ldrne r3, [r4, #0x110]
0057f520  09 80 a0 01                                      moveq r8, sb
0057f524  09 70 a0 01                                      moveq r7, sb
0057f528  e4 80 93 15                                      ldrne r8, [r3, #0xe4]
0057f52c  00 00 5a e3                                      cmp sl, #0
0057f530  1d 00 00 0a                                      beq #0x57f5ac
0057f534  00 60 a0 e3                                      mov r6, #0
0057f538  06 50 a0 e1                                      mov r5, r6
0057f53c  08 00 57 e3                                      cmp r7, #8
0057f540  07 f1 8f 90                                      addls pc, pc, r7, lsl #2
0057f544  14 00 00 ea                                      b #0x57f59c
0057f548  07 00 00 ea                                      b #0x57f56c
0057f54c  3d 00 00 ea                                      b #0x57f648
0057f550  2f 00 00 ea                                      b #0x57f614
0057f554  10 00 00 ea                                      b #0x57f59c
0057f558  03 00 00 ea                                      b #0x57f56c
0057f55c  0e 00 00 ea                                      b #0x57f59c
0057f560  0d 00 00 ea                                      b #0x57f59c
0057f564  0c 00 00 ea                                      b #0x57f59c
0057f568  1c 00 00 ea                                      b #0x57f5e0
0057f56c  50 31 d4 e5                                      ldrb r3, [r4, #0x150]
0057f570  00 00 53 e3                                      cmp r3, #0
0057f574  43 00 00 1a                                      bne #0x57f688
0057f578  30 31 94 e5                                      ldr r3, [r4, #0x130]
0057f57c  58 21 94 e5                                      ldr r2, [r4, #0x158]
0057f580  20 30 93 e5                                      ldr r3, [r3, #0x20]
0057f584  06 30 83 e0                                      add r3, r3, r6
0057f588  bc 10 d3 e1                                      ldrh r1, [r3, #0xc]
0057f58c  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
0057f590  03 30 61 e0                                      rsb r3, r1, r3
0057f594  73 30 ff e6                                      uxth r3, r3
0057f598  06 30 82 e7                                      str r3, [r2, r6]
0057f59c  01 50 85 e2                                      add r5, r5, #1
0057f5a0  0a 00 55 e1                                      cmp r5, sl
0057f5a4  14 60 86 e2                                      add r6, r6, #0x14
0057f5a8  e3 ff ff 1a                                      bne #0x57f53c
0057f5ac  48 31 d4 e5                                      ldrb r3, [r4, #0x148]
0057f5b0  00 00 53 e3                                      cmp r3, #0
0057f5b4  30 00 00 0a                                      beq #0x57f67c
0057f5b8  44 21 94 e5                                      ldr r2, [r4, #0x144]
0057f5bc  00 00 52 e3                                      cmp r2, #0
0057f5c0  39 00 00 1a                                      bne #0x57f6ac
0057f5c4  04 00 a0 e1                                      mov r0, r4
0057f5c8  28 fd ff eb                                      bl #0x57ea70
0057f5cc  00 00 59 e3                                      cmp sb, #0
0057f5d0  10 31 94 15                                      ldrne r3, [r4, #0x110]
0057f5d4  01 20 a0 13                                      movne r2, #1
0057f5d8  50 22 c3 15                                      strbne r2, [r3, #0x250]
0057f5dc  bb ff ff ea                                      b #0x57f4d0
0057f5e0  00 30 98 e5                                      ldr r3, [r8]
0057f5e4  08 00 a0 e1                                      mov r0, r8
0057f5e8  0f e0 a0 e1                                      mov lr, pc
0057f5ec  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0057f5f0  05 10 a0 e1                                      mov r1, r5
0057f5f4  00 20 a0 e1                                      mov r2, r0
0057f5f8  01 50 85 e2                                      add r5, r5, #1
0057f5fc  04 00 a0 e1                                      mov r0, r4
0057f600  ea 35 fe eb                                      bl #0x50cdb0
0057f604  0a 00 55 e1                                      cmp r5, sl
0057f608  14 60 86 e2                                      add r6, r6, #0x14
0057f60c  ca ff ff 1a                                      bne #0x57f53c
0057f610  e5 ff ff ea                                      b #0x57f5ac
0057f614  00 30 98 e5                                      ldr r3, [r8]
0057f618  08 00 a0 e1                                      mov r0, r8
0057f61c  0f e0 a0 e1                                      mov lr, pc
0057f620  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0057f624  05 10 a0 e1                                      mov r1, r5
0057f628  00 20 a0 e1                                      mov r2, r0
0057f62c  01 50 85 e2                                      add r5, r5, #1
0057f630  04 00 a0 e1                                      mov r0, r4
0057f634  98 37 fe eb                                      bl #0x50d49c
0057f638  0a 00 55 e1                                      cmp r5, sl
0057f63c  14 60 86 e2                                      add r6, r6, #0x14
0057f640  bd ff ff 1a                                      bne #0x57f53c
0057f644  d8 ff ff ea                                      b #0x57f5ac
0057f648  00 30 98 e5                                      ldr r3, [r8]
0057f64c  08 00 a0 e1                                      mov r0, r8
0057f650  0f e0 a0 e1                                      mov lr, pc
0057f654  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0057f658  05 10 a0 e1                                      mov r1, r5
0057f65c  6c 20 80 e2                                      add r2, r0, #0x6c
0057f660  01 50 85 e2                                      add r5, r5, #1
0057f664  04 00 a0 e1                                      mov r0, r4
0057f668  14 37 fe eb                                      bl #0x50d2c0
0057f66c  0a 00 55 e1                                      cmp r5, sl
0057f670  14 60 86 e2                                      add r6, r6, #0x14
0057f674  b0 ff ff 1a                                      bne #0x57f53c
0057f678  cb ff ff ea                                      b #0x57f5ac
0057f67c  04 00 a0 e1                                      mov r0, r4
0057f680  5e fc ff eb                                      bl #0x57e800
0057f684  ce ff ff ea                                      b #0x57f5c4
0057f688  05 10 a0 e1                                      mov r1, r5
0057f68c  04 00 a0 e1                                      mov r0, r4
0057f690  00 20 a0 e3                                      mov r2, #0
0057f694  01 50 85 e2                                      add r5, r5, #1
0057f698  be 36 fe eb                                      bl #0x50d198
0057f69c  0a 00 55 e1                                      cmp r5, sl
0057f6a0  14 60 86 e2                                      add r6, r6, #0x14
0057f6a4  a4 ff ff 1a                                      bne #0x57f53c
0057f6a8  bf ff ff ea                                      b #0x57f5ac
0057f6ac  04 00 a0 e1                                      mov r0, r4
0057f6b0  00 10 a0 e3                                      mov r1, #0
0057f6b4  e5 fb ff eb                                      bl #0x57e650
0057f6b8  00 00 50 e3                                      cmp r0, #0
0057f6bc  c0 ff ff 0a                                      beq #0x57f5c4
0057f6c0  10 01 94 e5                                      ldr r0, [r4, #0x110]
0057f6c4  00 30 a0 e3                                      mov r3, #0
0057f6c8  18 50 8d e2                                      add r5, sp, #0x18
0057f6cc  00 20 90 e5                                      ldr r2, [r0]
0057f6d0  04 10 a0 e1                                      mov r1, r4
0057f6d4  24 c0 92 e5                                      ldr ip, [r2, #0x24]
0057f6d8  03 20 a0 e3                                      mov r2, #3
0057f6dc  04 30 25 e5                                      str r3, [r5, #-4]!
0057f6e0  00 20 8d e5                                      str r2, [sp]
0057f6e4  02 21 e0 e3                                      mvn r2, #0x80000000
0057f6e8  08 20 8d e5                                      str r2, [sp, #8]
0057f6ec  04 30 8d e5                                      str r3, [sp, #4]
0057f6f0  05 20 a0 e1                                      mov r2, r5
0057f6f4  3c ff 2f e1                                      blx ip
0057f6f8  05 00 a0 e1                                      mov r0, r5
0057f6fc  39 45 f6 eb                                      bl #0x310be8
0057f700  af ff ff ea                                      b #0x57f5c4

; FUNCTION 0x0057f704, declared_size=368, range_size=368, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode13updateIndicesEjRKN5boost13intrusive_ptrINS_5video7IBufferEEERKNS3_IKS5_EE
; demangled: glitch::scene::CBatchSceneNode::updateIndices(unsigned int, boost::intrusive_ptr<glitch::video::IBuffer> const&, boost::intrusive_ptr<glitch::video::IBuffer const> const&)
; decoder-mode: arm
0057f704  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057f708  0c d0 4d e2                                      sub sp, sp, #0xc
0057f70c  00 20 8d e5                                      str r2, [sp]
0057f710  14 60 a0 e3                                      mov r6, #0x14
0057f714  96 01 06 e0                                      mul r6, r6, r1
0057f718  00 40 a0 e1                                      mov r4, r0
0057f71c  02 10 a0 e3                                      mov r1, #2
0057f720  00 00 92 e5                                      ldr r0, [r2]
0057f724  03 b0 a0 e1                                      mov fp, r3
0057f728  58 71 94 e5                                      ldr r7, [r4, #0x158]
0057f72c  af 88 00 eb                                      bl #0x5a19f0
0057f730  01 10 a0 e3                                      mov r1, #1
0057f734  00 50 a0 e1                                      mov r5, r0
0057f738  00 00 9b e5                                      ldr r0, [fp]
0057f73c  e6 88 00 eb                                      bl #0x5a1adc
0057f740  58 31 94 e5                                      ldr r3, [r4, #0x158]
0057f744  06 a0 97 e7                                      ldr sl, [r7, r6]
0057f748  06 70 87 e0                                      add r7, r7, r6
0057f74c  04 70 8d e5                                      str r7, [sp, #4]
0057f750  06 60 83 e0                                      add r6, r3, r6
0057f754  10 40 96 e5                                      ldr r4, [r6, #0x10]
0057f758  00 90 a0 e1                                      mov sb, r0
0057f75c  04 41 83 e0                                      add r4, r3, r4, lsl #2
0057f760  0a a1 84 e0                                      add sl, r4, sl, lsl #2
0057f764  04 00 5a e1                                      cmp sl, r4
0057f768  00 80 a0 03                                      moveq r8, #0
0057f76c  0d 00 00 0a                                      beq #0x57f7a8
0057f770  00 80 a0 e3                                      mov r8, #0
0057f774  04 30 94 e4                                      ldr r3, [r4], #4
0057f778  05 00 a0 e1                                      mov r0, r5
0057f77c  10 10 93 e5                                      ldr r1, [r3, #0x10]
0057f780  14 60 93 e5                                      ldr r6, [r3, #0x14]
0057f784  06 60 61 e0                                      rsb r6, r1, r6
0057f788  86 70 a0 e1                                      lsl r7, r6, #1
0057f78c  81 10 89 e0                                      add r1, sb, r1, lsl #1
0057f790  07 20 a0 e1                                      mov r2, r7
0057f794  33 3c f6 eb                                      bl #0x30e868
0057f798  04 00 5a e1                                      cmp sl, r4
0057f79c  07 50 85 e0                                      add r5, r5, r7
0057f7a0  06 80 88 e0                                      add r8, r8, r6
0057f7a4  f2 ff ff 1a                                      bne #0x57f774
0057f7a8  00 20 9d e5                                      ldr r2, [sp]
0057f7ac  00 40 92 e5                                      ldr r4, [r2]
0057f7b0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0057f7b4  1f 20 03 e2                                      and r2, r3, #0x1f
0057f7b8  01 00 52 e3                                      cmp r2, #1
0057f7bc  12 00 00 9a                                      bls #0x57f80c
0057f7c0  01 20 42 e2                                      sub r2, r2, #1
0057f7c4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0057f7c8  03 30 82 e1                                      orr r3, r2, r3
0057f7cc  13 30 c4 e5                                      strb r3, [r4, #0x13]
0057f7d0  00 40 9b e5                                      ldr r4, [fp]
0057f7d4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0057f7d8  1f 20 03 e2                                      and r2, r3, #0x1f
0057f7dc  01 00 52 e3                                      cmp r2, #1
0057f7e0  13 00 00 9a                                      bls #0x57f834
0057f7e4  01 20 42 e2                                      sub r2, r2, #1
0057f7e8  1f 30 c3 e3                                      bic r3, r3, #0x1f
0057f7ec  03 30 82 e1                                      orr r3, r2, r3
0057f7f0  13 30 c4 e5                                      strb r3, [r4, #0x13]
0057f7f4  04 20 9d e5                                      ldr r2, [sp, #4]
0057f7f8  00 30 a0 e3                                      mov r3, #0
0057f7fc  08 00 a0 e1                                      mov r0, r8
0057f800  0c 30 82 e5                                      str r3, [r2, #0xc]
0057f804  0c d0 8d e2                                      add sp, sp, #0xc
0057f808  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057f80c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0057f810  20 00 13 e3                                      tst r3, #0x20
0057f814  0c 00 00 1a                                      bne #0x57f84c
0057f818  00 30 a0 e3                                      mov r3, #0
0057f81c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0057f820  00 40 9b e5                                      ldr r4, [fp]
0057f824  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0057f828  1f 20 03 e2                                      and r2, r3, #0x1f
0057f82c  01 00 52 e3                                      cmp r2, #1
0057f830  eb ff ff 8a                                      bhi #0x57f7e4
0057f834  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0057f838  20 00 13 e3                                      tst r3, #0x20
0057f83c  07 00 00 1a                                      bne #0x57f860
0057f840  00 30 a0 e3                                      mov r3, #0
0057f844  13 30 c4 e5                                      strb r3, [r4, #0x13]
0057f848  e9 ff ff ea                                      b #0x57f7f4
0057f84c  00 30 94 e5                                      ldr r3, [r4]
0057f850  04 00 a0 e1                                      mov r0, r4
0057f854  0f e0 a0 e1                                      mov lr, pc
0057f858  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057f85c  ed ff ff ea                                      b #0x57f818
0057f860  00 30 94 e5                                      ldr r3, [r4]
0057f864  04 00 a0 e1                                      mov r0, r4
0057f868  0f e0 a0 e1                                      mov lr, pc
0057f86c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057f870  f2 ff ff ea                                      b #0x57f840

; FUNCTION 0x0057f874, declared_size=332, range_size=332, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC1EiRN5boost13intrusive_ptrINS0_10CBatchMeshEEEb
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int, boost::intrusive_ptr<glitch::scene::CBatchMesh>&, bool)
; decoder-mode: arm
0057f874  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057f878  30 61 9f e5                                      ldr r6, [pc, #0x130]
0057f87c  30 e1 9f e5                                      ldr lr, [pc, #0x130]
0057f880  30 c1 9f e5                                      ldr ip, [pc, #0x130]
0057f884  06 60 8f e0                                      add r6, pc, r6
0057f888  0e 50 96 e7                                      ldr r5, [r6, lr]
0057f88c  0c c0 96 e7                                      ldr ip, [r6, ip]
0057f890  01 70 a0 e3                                      mov r7, #1
0057f894  24 e0 95 e5                                      ldr lr, [r5, #0x24]
0057f898  08 c0 8c e2                                      add ip, ip, #8
0057f89c  60 c1 80 e5                                      str ip, [r0, #0x160]
0057f8a0  00 e0 80 e5                                      str lr, [r0]
0057f8a4  64 71 80 e5                                      str r7, [r0, #0x164]
0057f8a8  0c 70 1e e5                                      ldr r7, [lr, #-0xc]
0057f8ac  28 80 95 e5                                      ldr r8, [r5, #0x28]
0057f8b0  34 d0 4d e2                                      sub sp, sp, #0x34
0057f8b4  00 c0 a0 e3                                      mov ip, #0
0057f8b8  07 80 80 e7                                      str r8, [r0, r7]
0057f8bc  08 70 8d e2                                      add r7, sp, #8
0057f8c0  fe e5 a0 e3                                      mov lr, #0x3f800000
0057f8c4  02 80 a0 e1                                      mov r8, r2
0057f8c8  03 a0 a0 e1                                      mov sl, r3
0057f8cc  01 20 a0 e1                                      mov r2, r1
0057f8d0  24 30 8d e2                                      add r3, sp, #0x24
0057f8d4  08 10 85 e2                                      add r1, r5, #8
0057f8d8  00 70 8d e5                                      str r7, [sp]
0057f8dc  18 70 8d e2                                      add r7, sp, #0x18
0057f8e0  00 40 a0 e1                                      mov r4, r0
0057f8e4  10 c0 8d e5                                      str ip, [sp, #0x10]
0057f8e8  20 e0 8d e5                                      str lr, [sp, #0x20]
0057f8ec  04 70 8d e5                                      str r7, [sp, #4]
0057f8f0  24 c0 8d e5                                      str ip, [sp, #0x24]
0057f8f4  28 c0 8d e5                                      str ip, [sp, #0x28]
0057f8f8  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057f8fc  08 c0 8d e5                                      str ip, [sp, #8]
0057f900  0c c0 8d e5                                      str ip, [sp, #0xc]
0057f904  14 e0 8d e5                                      str lr, [sp, #0x14]
0057f908  18 e0 8d e5                                      str lr, [sp, #0x18]
0057f90c  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057f910  ea 65 00 eb                                      bl #0x5990c0
0057f914  04 20 95 e5                                      ldr r2, [r5, #4]
0057f918  14 10 95 e5                                      ldr r1, [r5, #0x14]
0057f91c  98 30 9f e5                                      ldr r3, [pc, #0x98]
0057f920  00 20 84 e5                                      str r2, [r4]
0057f924  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0057f928  03 30 96 e7                                      ldr r3, [r6, r3]
0057f92c  18 00 95 e5                                      ldr r0, [r5, #0x18]
0057f930  02 10 84 e7                                      str r1, [r4, r2]
0057f934  00 10 94 e5                                      ldr r1, [r4]
0057f938  4f 2f 83 e2                                      add r2, r3, #0x13c
0057f93c  1c 30 83 e2                                      add r3, r3, #0x1c
0057f940  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0057f944  01 00 84 e7                                      str r0, [r4, r1]
0057f948  60 21 84 e5                                      str r2, [r4, #0x160]
0057f94c  00 30 84 e5                                      str r3, [r4]
0057f950  00 30 98 e5                                      ldr r3, [r8]
0057f954  02 10 a0 e3                                      mov r1, #2
0057f958  01 00 a0 e3                                      mov r0, #1
0057f95c  00 00 53 e3                                      cmp r3, #0
0057f960  30 31 84 e5                                      str r3, [r4, #0x130]
0057f964  04 20 93 15                                      ldrne r2, [r3, #4]
0057f968  01 20 82 12                                      addne r2, r2, #1
0057f96c  04 20 83 15                                      strne r2, [r3, #4]
0057f970  00 30 a0 e3                                      mov r3, #0
0057f974  00 20 e0 e3                                      mvn r2, #0
0057f978  50 01 c4 e5                                      strb r0, [r4, #0x150]
0057f97c  38 11 84 e5                                      str r1, [r4, #0x138]
0057f980  48 a1 c4 e5                                      strb sl, [r4, #0x148]
0057f984  58 31 84 e5                                      str r3, [r4, #0x158]
0057f988  5c 21 84 e5                                      str r2, [r4, #0x15c]
0057f98c  34 11 84 e5                                      str r1, [r4, #0x134]
0057f990  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057f994  40 31 84 e5                                      str r3, [r4, #0x140]
0057f998  44 21 84 e5                                      str r2, [r4, #0x144]
0057f99c  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057f9a0  54 31 84 e5                                      str r3, [r4, #0x154]
0057f9a4  04 00 a0 e1                                      mov r0, r4
0057f9a8  34 d0 8d e2                                      add sp, sp, #0x34
0057f9ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0057f9b0  0c 52 41 00 c8 23 00 00 44 2b 00 00 20 31 00 00  .byte 0x0c, 0x52, 0x41, 0x00, 0xc8, 0x23, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x20, 0x31, 0x00, 0x00

; FUNCTION 0x0057f9c0, declared_size=312, range_size=312, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC2Ei
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int)
; decoder-mode: arm
0057f9c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0057f9c4  30 d0 4d e2                                      sub sp, sp, #0x30
0057f9c8  04 60 81 e2                                      add r6, r1, #4
0057f9cc  08 40 8d e2                                      add r4, sp, #8
0057f9d0  00 c0 a0 e3                                      mov ip, #0
0057f9d4  fe e5 a0 e3                                      mov lr, #0x3f800000
0057f9d8  01 50 a0 e1                                      mov r5, r1
0057f9dc  24 30 8d e2                                      add r3, sp, #0x24
0057f9e0  04 10 86 e2                                      add r1, r6, #4
0057f9e4  00 40 8d e5                                      str r4, [sp]
0057f9e8  18 40 8d e2                                      add r4, sp, #0x18
0057f9ec  10 c0 8d e5                                      str ip, [sp, #0x10]
0057f9f0  20 e0 8d e5                                      str lr, [sp, #0x20]
0057f9f4  04 40 8d e5                                      str r4, [sp, #4]
0057f9f8  24 c0 8d e5                                      str ip, [sp, #0x24]
0057f9fc  00 40 a0 e1                                      mov r4, r0
0057fa00  28 c0 8d e5                                      str ip, [sp, #0x28]
0057fa04  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057fa08  08 c0 8d e5                                      str ip, [sp, #8]
0057fa0c  0c c0 8d e5                                      str ip, [sp, #0xc]
0057fa10  14 e0 8d e5                                      str lr, [sp, #0x14]
0057fa14  18 e0 8d e5                                      str lr, [sp, #0x18]
0057fa18  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057fa1c  a7 65 00 eb                                      bl #0x5990c0
0057fa20  04 20 95 e5                                      ldr r2, [r5, #4]
0057fa24  00 30 a0 e3                                      mov r3, #0
0057fa28  00 c0 e0 e3                                      mvn ip, #0
0057fa2c  00 20 84 e5                                      str r2, [r4]
0057fa30  1c 10 12 e5                                      ldr r1, [r2, #-0x1c]
0057fa34  10 00 96 e5                                      ldr r0, [r6, #0x10]
0057fa38  01 20 a0 e3                                      mov r2, #1
0057fa3c  01 00 84 e7                                      str r0, [r4, r1]
0057fa40  00 00 94 e5                                      ldr r0, [r4]
0057fa44  14 60 96 e5                                      ldr r6, [r6, #0x14]
0057fa48  03 10 a0 e1                                      mov r1, r3
0057fa4c  0c e0 10 e5                                      ldr lr, [r0, #-0xc]
0057fa50  7c 00 a0 e3                                      mov r0, #0x7c
0057fa54  0e 60 84 e7                                      str r6, [r4, lr]
0057fa58  00 e0 95 e5                                      ldr lr, [r5]
0057fa5c  00 e0 84 e5                                      str lr, [r4]
0057fa60  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
0057fa64  1c 60 95 e5                                      ldr r6, [r5, #0x1c]
0057fa68  0e 60 84 e7                                      str r6, [r4, lr]
0057fa6c  00 e0 94 e5                                      ldr lr, [r4]
0057fa70  20 50 95 e5                                      ldr r5, [r5, #0x20]
0057fa74  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
0057fa78  0e 50 84 e7                                      str r5, [r4, lr]
0057fa7c  02 e0 a0 e3                                      mov lr, #2
0057fa80  30 31 84 e5                                      str r3, [r4, #0x130]
0057fa84  34 31 84 e5                                      str r3, [r4, #0x134]
0057fa88  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057fa8c  40 31 84 e5                                      str r3, [r4, #0x140]
0057fa90  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057fa94  54 31 84 e5                                      str r3, [r4, #0x154]
0057fa98  58 31 84 e5                                      str r3, [r4, #0x158]
0057fa9c  38 e1 84 e5                                      str lr, [r4, #0x138]
0057faa0  50 21 c4 e5                                      strb r2, [r4, #0x150]
0057faa4  5c c1 84 e5                                      str ip, [r4, #0x15c]
0057faa8  44 c1 84 e5                                      str ip, [r4, #0x144]
0057faac  48 21 c4 e5                                      strb r2, [r4, #0x148]
0057fab0  bd d1 fe eb                                      bl #0x5341ac
0057fab4  00 50 a0 e1                                      mov r5, r0
0057fab8  c9 e3 ff eb                                      bl #0x5789e4
0057fabc  00 00 55 e3                                      cmp r5, #0
0057fac0  04 30 95 15                                      ldrne r3, [r5, #4]
0057fac4  01 30 83 12                                      addne r3, r3, #1
0057fac8  04 30 85 15                                      strne r3, [r5, #4]
0057facc  30 01 94 e5                                      ldr r0, [r4, #0x130]
0057fad0  30 51 84 e5                                      str r5, [r4, #0x130]
0057fad4  00 00 50 e3                                      cmp r0, #0
0057fad8  00 00 00 0a                                      beq #0x57fae0
0057fadc  a8 76 f6 eb                                      bl #0x31d584
0057fae0  04 00 a0 e1                                      mov r0, r4
0057fae4  02 10 a0 e3                                      mov r1, #2
0057fae8  ab 5d 00 eb                                      bl #0x59719c
0057faec  04 00 a0 e1                                      mov r0, r4
0057faf0  30 d0 8d e2                                      add sp, sp, #0x30
0057faf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057faf8, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC2EiRKN5boost13intrusive_ptrINS0_10CBatchMeshEEE
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int, boost::intrusive_ptr<glitch::scene::CBatchMesh> const&)
; decoder-mode: arm
0057faf8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0057fafc  34 d0 4d e2                                      sub sp, sp, #0x34
0057fb00  04 60 81 e2                                      add r6, r1, #4
0057fb04  08 40 8d e2                                      add r4, sp, #8
0057fb08  00 c0 a0 e3                                      mov ip, #0
0057fb0c  01 50 a0 e1                                      mov r5, r1
0057fb10  fe e5 a0 e3                                      mov lr, #0x3f800000
0057fb14  03 70 a0 e1                                      mov r7, r3
0057fb18  04 10 86 e2                                      add r1, r6, #4
0057fb1c  24 30 8d e2                                      add r3, sp, #0x24
0057fb20  00 40 8d e5                                      str r4, [sp]
0057fb24  18 40 8d e2                                      add r4, sp, #0x18
0057fb28  04 40 8d e5                                      str r4, [sp, #4]
0057fb2c  10 c0 8d e5                                      str ip, [sp, #0x10]
0057fb30  00 40 a0 e1                                      mov r4, r0
0057fb34  20 e0 8d e5                                      str lr, [sp, #0x20]
0057fb38  24 c0 8d e5                                      str ip, [sp, #0x24]
0057fb3c  28 c0 8d e5                                      str ip, [sp, #0x28]
0057fb40  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057fb44  08 c0 8d e5                                      str ip, [sp, #8]
0057fb48  0c c0 8d e5                                      str ip, [sp, #0xc]
0057fb4c  14 e0 8d e5                                      str lr, [sp, #0x14]
0057fb50  18 e0 8d e5                                      str lr, [sp, #0x18]
0057fb54  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057fb58  58 65 00 eb                                      bl #0x5990c0
0057fb5c  04 30 95 e5                                      ldr r3, [r5, #4]
0057fb60  02 00 a0 e3                                      mov r0, #2
0057fb64  00 10 e0 e3                                      mvn r1, #0
0057fb68  00 30 84 e5                                      str r3, [r4]
0057fb6c  10 20 96 e5                                      ldr r2, [r6, #0x10]
0057fb70  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057fb74  03 20 84 e7                                      str r2, [r4, r3]
0057fb78  00 30 94 e5                                      ldr r3, [r4]
0057fb7c  14 20 96 e5                                      ldr r2, [r6, #0x14]
0057fb80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057fb84  03 20 84 e7                                      str r2, [r4, r3]
0057fb88  00 30 95 e5                                      ldr r3, [r5]
0057fb8c  00 30 84 e5                                      str r3, [r4]
0057fb90  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0057fb94  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057fb98  03 20 84 e7                                      str r2, [r4, r3]
0057fb9c  00 30 94 e5                                      ldr r3, [r4]
0057fba0  20 20 95 e5                                      ldr r2, [r5, #0x20]
0057fba4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057fba8  03 20 84 e7                                      str r2, [r4, r3]
0057fbac  00 30 97 e5                                      ldr r3, [r7]
0057fbb0  00 00 53 e3                                      cmp r3, #0
0057fbb4  30 31 84 e5                                      str r3, [r4, #0x130]
0057fbb8  04 20 93 15                                      ldrne r2, [r3, #4]
0057fbbc  01 20 82 12                                      addne r2, r2, #1
0057fbc0  04 20 83 15                                      strne r2, [r3, #4]
0057fbc4  00 30 a0 e3                                      mov r3, #0
0057fbc8  01 20 a0 e3                                      mov r2, #1
0057fbcc  38 01 84 e5                                      str r0, [r4, #0x138]
0057fbd0  34 01 84 e5                                      str r0, [r4, #0x134]
0057fbd4  50 21 c4 e5                                      strb r2, [r4, #0x150]
0057fbd8  58 31 84 e5                                      str r3, [r4, #0x158]
0057fbdc  5c 11 84 e5                                      str r1, [r4, #0x15c]
0057fbe0  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057fbe4  40 31 84 e5                                      str r3, [r4, #0x140]
0057fbe8  44 11 84 e5                                      str r1, [r4, #0x144]
0057fbec  48 21 c4 e5                                      strb r2, [r4, #0x148]
0057fbf0  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057fbf4  54 31 84 e5                                      str r3, [r4, #0x154]
0057fbf8  04 00 a0 e1                                      mov r0, r4
0057fbfc  34 d0 8d e2                                      add sp, sp, #0x34
0057fc00  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0057fc04, declared_size=368, range_size=368, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC1Ei
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int)
; decoder-mode: arm
0057fc04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057fc08  54 61 9f e5                                      ldr r6, [pc, #0x154]
0057fc0c  54 21 9f e5                                      ldr r2, [pc, #0x154]
0057fc10  54 31 9f e5                                      ldr r3, [pc, #0x154]
0057fc14  06 60 8f e0                                      add r6, pc, r6
0057fc18  02 50 96 e7                                      ldr r5, [r6, r2]
0057fc1c  03 30 96 e7                                      ldr r3, [r6, r3]
0057fc20  01 80 a0 e3                                      mov r8, #1
0057fc24  24 20 95 e5                                      ldr r2, [r5, #0x24]
0057fc28  08 30 83 e2                                      add r3, r3, #8
0057fc2c  60 31 80 e5                                      str r3, [r0, #0x160]
0057fc30  00 20 80 e5                                      str r2, [r0]
0057fc34  64 81 80 e5                                      str r8, [r0, #0x164]
0057fc38  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
0057fc3c  28 70 95 e5                                      ldr r7, [r5, #0x28]
0057fc40  30 d0 4d e2                                      sub sp, sp, #0x30
0057fc44  00 c0 a0 e3                                      mov ip, #0
0057fc48  03 70 80 e7                                      str r7, [r0, r3]
0057fc4c  08 70 8d e2                                      add r7, sp, #8
0057fc50  fe e5 a0 e3                                      mov lr, #0x3f800000
0057fc54  01 20 a0 e1                                      mov r2, r1
0057fc58  24 30 8d e2                                      add r3, sp, #0x24
0057fc5c  08 10 85 e2                                      add r1, r5, #8
0057fc60  00 70 8d e5                                      str r7, [sp]
0057fc64  18 70 8d e2                                      add r7, sp, #0x18
0057fc68  00 40 a0 e1                                      mov r4, r0
0057fc6c  10 c0 8d e5                                      str ip, [sp, #0x10]
0057fc70  20 e0 8d e5                                      str lr, [sp, #0x20]
0057fc74  24 c0 8d e5                                      str ip, [sp, #0x24]
0057fc78  28 c0 8d e5                                      str ip, [sp, #0x28]
0057fc7c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057fc80  08 c0 8d e5                                      str ip, [sp, #8]
0057fc84  0c c0 8d e5                                      str ip, [sp, #0xc]
0057fc88  14 e0 8d e5                                      str lr, [sp, #0x14]
0057fc8c  18 e0 8d e5                                      str lr, [sp, #0x18]
0057fc90  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057fc94  04 70 8d e5                                      str r7, [sp, #4]
0057fc98  08 65 00 eb                                      bl #0x5990c0
0057fc9c  04 30 95 e5                                      ldr r3, [r5, #4]
0057fca0  14 10 95 e5                                      ldr r1, [r5, #0x14]
0057fca4  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
0057fca8  00 30 84 e5                                      str r3, [r4]
0057fcac  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057fcb0  02 20 96 e7                                      ldr r2, [r6, r2]
0057fcb4  18 e0 95 e5                                      ldr lr, [r5, #0x18]
0057fcb8  03 10 84 e7                                      str r1, [r4, r3]
0057fcbc  00 00 94 e5                                      ldr r0, [r4]
0057fcc0  4f 1f 82 e2                                      add r1, r2, #0x13c
0057fcc4  00 30 a0 e3                                      mov r3, #0
0057fcc8  0c c0 10 e5                                      ldr ip, [r0, #-0xc]
0057fccc  1c 00 82 e2                                      add r0, r2, #0x1c
0057fcd0  00 20 e0 e3                                      mvn r2, #0
0057fcd4  0c e0 84 e7                                      str lr, [r4, ip]
0057fcd8  60 11 84 e5                                      str r1, [r4, #0x160]
0057fcdc  02 10 a0 e3                                      mov r1, #2
0057fce0  30 31 84 e5                                      str r3, [r4, #0x130]
0057fce4  34 31 84 e5                                      str r3, [r4, #0x134]
0057fce8  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057fcec  40 31 84 e5                                      str r3, [r4, #0x140]
0057fcf0  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057fcf4  54 31 84 e5                                      str r3, [r4, #0x154]
0057fcf8  58 31 84 e5                                      str r3, [r4, #0x158]
0057fcfc  00 00 84 e5                                      str r0, [r4]
0057fd00  38 11 84 e5                                      str r1, [r4, #0x138]
0057fd04  5c 21 84 e5                                      str r2, [r4, #0x15c]
0057fd08  03 10 a0 e1                                      mov r1, r3
0057fd0c  44 21 84 e5                                      str r2, [r4, #0x144]
0057fd10  50 81 c4 e5                                      strb r8, [r4, #0x150]
0057fd14  48 81 c4 e5                                      strb r8, [r4, #0x148]
0057fd18  7c 00 a0 e3                                      mov r0, #0x7c
0057fd1c  22 d1 fe eb                                      bl #0x5341ac
0057fd20  00 50 a0 e1                                      mov r5, r0
0057fd24  2e e3 ff eb                                      bl #0x5789e4
0057fd28  00 00 55 e3                                      cmp r5, #0
0057fd2c  04 30 95 15                                      ldrne r3, [r5, #4]
0057fd30  08 30 83 10                                      addne r3, r3, r8
0057fd34  04 30 85 15                                      strne r3, [r5, #4]
0057fd38  30 01 94 e5                                      ldr r0, [r4, #0x130]
0057fd3c  30 51 84 e5                                      str r5, [r4, #0x130]
0057fd40  00 00 50 e3                                      cmp r0, #0
0057fd44  00 00 00 0a                                      beq #0x57fd4c
0057fd48  0d 76 f6 eb                                      bl #0x31d584
0057fd4c  04 00 a0 e1                                      mov r0, r4
0057fd50  02 10 a0 e3                                      mov r1, #2
0057fd54  10 5d 00 eb                                      bl #0x59719c
0057fd58  04 00 a0 e1                                      mov r0, r4
0057fd5c  30 d0 8d e2                                      add sp, sp, #0x30
0057fd60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0057fd64  7c 4e 41 00 c8 23 00 00 44 2b 00 00 20 31 00 00  .byte 0x7c, 0x4e, 0x41, 0x00, 0xc8, 0x23, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x20, 0x31, 0x00, 0x00

; FUNCTION 0x0057fd74, declared_size=272, range_size=272, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC2EiRN5boost13intrusive_ptrINS0_10CBatchMeshEEEb
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int, boost::intrusive_ptr<glitch::scene::CBatchMesh>&, bool)
; decoder-mode: arm
0057fd74  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057fd78  30 d0 4d e2                                      sub sp, sp, #0x30
0057fd7c  04 60 81 e2                                      add r6, r1, #4
0057fd80  08 40 8d e2                                      add r4, sp, #8
0057fd84  00 c0 a0 e3                                      mov ip, #0
0057fd88  01 50 a0 e1                                      mov r5, r1
0057fd8c  fe e5 a0 e3                                      mov lr, #0x3f800000
0057fd90  03 70 a0 e1                                      mov r7, r3
0057fd94  04 10 86 e2                                      add r1, r6, #4
0057fd98  24 30 8d e2                                      add r3, sp, #0x24
0057fd9c  00 40 8d e5                                      str r4, [sp]
0057fda0  18 40 8d e2                                      add r4, sp, #0x18
0057fda4  04 40 8d e5                                      str r4, [sp, #4]
0057fda8  48 80 dd e5                                      ldrb r8, [sp, #0x48]
0057fdac  00 40 a0 e1                                      mov r4, r0
0057fdb0  10 c0 8d e5                                      str ip, [sp, #0x10]
0057fdb4  20 e0 8d e5                                      str lr, [sp, #0x20]
0057fdb8  24 c0 8d e5                                      str ip, [sp, #0x24]
0057fdbc  28 c0 8d e5                                      str ip, [sp, #0x28]
0057fdc0  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057fdc4  08 c0 8d e5                                      str ip, [sp, #8]
0057fdc8  0c c0 8d e5                                      str ip, [sp, #0xc]
0057fdcc  14 e0 8d e5                                      str lr, [sp, #0x14]
0057fdd0  18 e0 8d e5                                      str lr, [sp, #0x18]
0057fdd4  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057fdd8  b8 64 00 eb                                      bl #0x5990c0
0057fddc  04 30 95 e5                                      ldr r3, [r5, #4]
0057fde0  02 10 a0 e3                                      mov r1, #2
0057fde4  01 00 a0 e3                                      mov r0, #1
0057fde8  00 30 84 e5                                      str r3, [r4]
0057fdec  10 20 96 e5                                      ldr r2, [r6, #0x10]
0057fdf0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057fdf4  03 20 84 e7                                      str r2, [r4, r3]
0057fdf8  00 30 94 e5                                      ldr r3, [r4]
0057fdfc  14 20 96 e5                                      ldr r2, [r6, #0x14]
0057fe00  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057fe04  03 20 84 e7                                      str r2, [r4, r3]
0057fe08  00 30 95 e5                                      ldr r3, [r5]
0057fe0c  00 30 84 e5                                      str r3, [r4]
0057fe10  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0057fe14  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0057fe18  03 20 84 e7                                      str r2, [r4, r3]
0057fe1c  00 30 94 e5                                      ldr r3, [r4]
0057fe20  20 20 95 e5                                      ldr r2, [r5, #0x20]
0057fe24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0057fe28  03 20 84 e7                                      str r2, [r4, r3]
0057fe2c  00 30 97 e5                                      ldr r3, [r7]
0057fe30  00 00 53 e3                                      cmp r3, #0
0057fe34  30 31 84 e5                                      str r3, [r4, #0x130]
0057fe38  04 20 93 15                                      ldrne r2, [r3, #4]
0057fe3c  01 20 82 12                                      addne r2, r2, #1
0057fe40  04 20 83 15                                      strne r2, [r3, #4]
0057fe44  00 30 a0 e3                                      mov r3, #0
0057fe48  00 20 e0 e3                                      mvn r2, #0
0057fe4c  50 01 c4 e5                                      strb r0, [r4, #0x150]
0057fe50  38 11 84 e5                                      str r1, [r4, #0x138]
0057fe54  48 81 c4 e5                                      strb r8, [r4, #0x148]
0057fe58  58 31 84 e5                                      str r3, [r4, #0x158]
0057fe5c  5c 21 84 e5                                      str r2, [r4, #0x15c]
0057fe60  34 11 84 e5                                      str r1, [r4, #0x134]
0057fe64  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057fe68  40 31 84 e5                                      str r3, [r4, #0x140]
0057fe6c  44 21 84 e5                                      str r2, [r4, #0x144]
0057fe70  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057fe74  54 31 84 e5                                      str r3, [r4, #0x154]
0057fe78  04 00 a0 e1                                      mov r0, r4
0057fe7c  30 d0 8d e2                                      add sp, sp, #0x30
0057fe80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0057fe84, declared_size=336, range_size=336, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC1EiRKN5boost13intrusive_ptrINS0_10CBatchMeshEEEPNS0_13CSceneManagerE
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int, boost::intrusive_ptr<glitch::scene::CBatchMesh> const&, glitch::scene::CSceneManager*)
; decoder-mode: arm
0057fe84  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057fe88  34 61 9f e5                                      ldr r6, [pc, #0x134]
0057fe8c  34 e1 9f e5                                      ldr lr, [pc, #0x134]
0057fe90  34 c1 9f e5                                      ldr ip, [pc, #0x134]
0057fe94  06 60 8f e0                                      add r6, pc, r6
0057fe98  0e 50 96 e7                                      ldr r5, [r6, lr]
0057fe9c  0c c0 96 e7                                      ldr ip, [r6, ip]
0057fea0  01 70 a0 e3                                      mov r7, #1
0057fea4  24 e0 95 e5                                      ldr lr, [r5, #0x24]
0057fea8  08 c0 8c e2                                      add ip, ip, #8
0057feac  60 c1 80 e5                                      str ip, [r0, #0x160]
0057feb0  00 e0 80 e5                                      str lr, [r0]
0057feb4  64 71 80 e5                                      str r7, [r0, #0x164]
0057feb8  0c 70 1e e5                                      ldr r7, [lr, #-0xc]
0057febc  28 80 95 e5                                      ldr r8, [r5, #0x28]
0057fec0  34 d0 4d e2                                      sub sp, sp, #0x34
0057fec4  00 c0 a0 e3                                      mov ip, #0
0057fec8  07 80 80 e7                                      str r8, [r0, r7]
0057fecc  08 70 8d e2                                      add r7, sp, #8
0057fed0  fe e5 a0 e3                                      mov lr, #0x3f800000
0057fed4  02 80 a0 e1                                      mov r8, r2
0057fed8  03 a0 a0 e1                                      mov sl, r3
0057fedc  01 20 a0 e1                                      mov r2, r1
0057fee0  24 30 8d e2                                      add r3, sp, #0x24
0057fee4  08 10 85 e2                                      add r1, r5, #8
0057fee8  00 70 8d e5                                      str r7, [sp]
0057feec  18 70 8d e2                                      add r7, sp, #0x18
0057fef0  00 40 a0 e1                                      mov r4, r0
0057fef4  10 c0 8d e5                                      str ip, [sp, #0x10]
0057fef8  20 e0 8d e5                                      str lr, [sp, #0x20]
0057fefc  04 70 8d e5                                      str r7, [sp, #4]
0057ff00  24 c0 8d e5                                      str ip, [sp, #0x24]
0057ff04  28 c0 8d e5                                      str ip, [sp, #0x28]
0057ff08  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057ff0c  08 c0 8d e5                                      str ip, [sp, #8]
0057ff10  0c c0 8d e5                                      str ip, [sp, #0xc]
0057ff14  14 e0 8d e5                                      str lr, [sp, #0x14]
0057ff18  18 e0 8d e5                                      str lr, [sp, #0x18]
0057ff1c  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057ff20  66 64 00 eb                                      bl #0x5990c0
0057ff24  04 20 95 e5                                      ldr r2, [r5, #4]
0057ff28  14 10 95 e5                                      ldr r1, [r5, #0x14]
0057ff2c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0057ff30  00 20 84 e5                                      str r2, [r4]
0057ff34  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0057ff38  03 30 96 e7                                      ldr r3, [r6, r3]
0057ff3c  18 00 95 e5                                      ldr r0, [r5, #0x18]
0057ff40  02 10 84 e7                                      str r1, [r4, r2]
0057ff44  00 10 94 e5                                      ldr r1, [r4]
0057ff48  4f 2f 83 e2                                      add r2, r3, #0x13c
0057ff4c  1c 30 83 e2                                      add r3, r3, #0x1c
0057ff50  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0057ff54  01 00 84 e7                                      str r0, [r4, r1]
0057ff58  60 21 84 e5                                      str r2, [r4, #0x160]
0057ff5c  00 30 84 e5                                      str r3, [r4]
0057ff60  00 30 98 e5                                      ldr r3, [r8]
0057ff64  02 00 a0 e3                                      mov r0, #2
0057ff68  00 10 e0 e3                                      mvn r1, #0
0057ff6c  00 00 53 e3                                      cmp r3, #0
0057ff70  30 31 84 e5                                      str r3, [r4, #0x130]
0057ff74  04 20 93 15                                      ldrne r2, [r3, #4]
0057ff78  01 20 82 12                                      addne r2, r2, #1
0057ff7c  04 20 83 15                                      strne r2, [r3, #4]
0057ff80  00 30 a0 e3                                      mov r3, #0
0057ff84  01 20 a0 e3                                      mov r2, #1
0057ff88  38 01 84 e5                                      str r0, [r4, #0x138]
0057ff8c  34 01 84 e5                                      str r0, [r4, #0x134]
0057ff90  50 21 c4 e5                                      strb r2, [r4, #0x150]
0057ff94  58 31 84 e5                                      str r3, [r4, #0x158]
0057ff98  5c 11 84 e5                                      str r1, [r4, #0x15c]
0057ff9c  10 a1 84 e5                                      str sl, [r4, #0x110]
0057ffa0  3c 31 84 e5                                      str r3, [r4, #0x13c]
0057ffa4  40 31 84 e5                                      str r3, [r4, #0x140]
0057ffa8  44 11 84 e5                                      str r1, [r4, #0x144]
0057ffac  48 21 c4 e5                                      strb r2, [r4, #0x148]
0057ffb0  4c 31 84 e5                                      str r3, [r4, #0x14c]
0057ffb4  54 31 84 e5                                      str r3, [r4, #0x154]
0057ffb8  04 00 a0 e1                                      mov r0, r4
0057ffbc  34 d0 8d e2                                      add sp, sp, #0x34
0057ffc0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0057ffc4  fc 4b 41 00 c8 23 00 00 44 2b 00 00 20 31 00 00  .byte 0xfc, 0x4b, 0x41, 0x00, 0xc8, 0x23, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x20, 0x31, 0x00, 0x00

; FUNCTION 0x0057ffd4, declared_size=276, range_size=276, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNodeC2EiRKN5boost13intrusive_ptrINS0_10CBatchMeshEEEPNS0_13CSceneManagerE
; demangled: glitch::scene::CBatchSceneNode::CBatchSceneNode(int, boost::intrusive_ptr<glitch::scene::CBatchMesh> const&, glitch::scene::CSceneManager*)
; decoder-mode: arm
0057ffd4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0057ffd8  34 d0 4d e2                                      sub sp, sp, #0x34
0057ffdc  04 60 81 e2                                      add r6, r1, #4
0057ffe0  08 40 8d e2                                      add r4, sp, #8
0057ffe4  00 c0 a0 e3                                      mov ip, #0
0057ffe8  01 50 a0 e1                                      mov r5, r1
0057ffec  fe e5 a0 e3                                      mov lr, #0x3f800000
0057fff0  03 70 a0 e1                                      mov r7, r3
0057fff4  04 10 86 e2                                      add r1, r6, #4
0057fff8  24 30 8d e2                                      add r3, sp, #0x24
0057fffc  00 40 8d e5                                      str r4, [sp]
00580000  18 40 8d e2                                      add r4, sp, #0x18
00580004  10 c0 8d e5                                      str ip, [sp, #0x10]
00580008  04 40 8d e5                                      str r4, [sp, #4]
0058000c  24 c0 8d e5                                      str ip, [sp, #0x24]
00580010  00 40 a0 e1                                      mov r4, r0
00580014  28 c0 8d e5                                      str ip, [sp, #0x28]
00580018  2c c0 8d e5                                      str ip, [sp, #0x2c]
0058001c  08 c0 8d e5                                      str ip, [sp, #8]
00580020  0c c0 8d e5                                      str ip, [sp, #0xc]
00580024  20 e0 8d e5                                      str lr, [sp, #0x20]
00580028  14 e0 8d e5                                      str lr, [sp, #0x14]
0058002c  18 e0 8d e5                                      str lr, [sp, #0x18]
00580030  1c e0 8d e5                                      str lr, [sp, #0x1c]
00580034  21 64 00 eb                                      bl #0x5990c0
00580038  04 30 95 e5                                      ldr r3, [r5, #4]
0058003c  02 00 a0 e3                                      mov r0, #2
00580040  00 10 e0 e3                                      mvn r1, #0
00580044  00 30 84 e5                                      str r3, [r4]
00580048  10 20 96 e5                                      ldr r2, [r6, #0x10]
0058004c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00580050  03 20 84 e7                                      str r2, [r4, r3]
00580054  00 30 94 e5                                      ldr r3, [r4]
00580058  14 20 96 e5                                      ldr r2, [r6, #0x14]
0058005c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00580060  03 20 84 e7                                      str r2, [r4, r3]
00580064  00 30 95 e5                                      ldr r3, [r5]
00580068  00 30 84 e5                                      str r3, [r4]
0058006c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00580070  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00580074  03 20 84 e7                                      str r2, [r4, r3]
00580078  00 30 94 e5                                      ldr r3, [r4]
0058007c  20 20 95 e5                                      ldr r2, [r5, #0x20]
00580080  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00580084  03 20 84 e7                                      str r2, [r4, r3]
00580088  00 30 97 e5                                      ldr r3, [r7]
0058008c  30 31 84 e5                                      str r3, [r4, #0x130]
00580090  00 00 53 e3                                      cmp r3, #0
00580094  04 20 93 15                                      ldrne r2, [r3, #4]
00580098  01 20 82 12                                      addne r2, r2, #1
0058009c  04 20 83 15                                      strne r2, [r3, #4]
005800a0  00 30 a0 e3                                      mov r3, #0
005800a4  01 20 a0 e3                                      mov r2, #1
005800a8  38 01 84 e5                                      str r0, [r4, #0x138]
005800ac  50 21 c4 e5                                      strb r2, [r4, #0x150]
005800b0  58 31 84 e5                                      str r3, [r4, #0x158]
005800b4  5c 11 84 e5                                      str r1, [r4, #0x15c]
005800b8  48 c0 9d e5                                      ldr ip, [sp, #0x48]
005800bc  34 01 84 e5                                      str r0, [r4, #0x134]
005800c0  3c 31 84 e5                                      str r3, [r4, #0x13c]
005800c4  10 c1 84 e5                                      str ip, [r4, #0x110]
005800c8  40 31 84 e5                                      str r3, [r4, #0x140]
005800cc  44 11 84 e5                                      str r1, [r4, #0x144]
005800d0  48 21 c4 e5                                      strb r2, [r4, #0x148]
005800d4  04 00 a0 e1                                      mov r0, r4
005800d8  4c 31 84 e5                                      str r3, [r4, #0x14c]
005800dc  54 31 84 e5                                      str r3, [r4, #0x154]
005800e0  34 d0 8d e2                                      add sp, sp, #0x34
005800e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005800e8, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode16renderSolidBatchEPNS_5video12IVideoDriverEj
; demangled: glitch::scene::CBatchSceneNode::renderSolidBatch(glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
005800e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005800ec  14 50 a0 e3                                      mov r5, #0x14
005800f0  95 02 05 e0                                      mul r5, r5, r2
005800f4  58 61 90 e5                                      ldr r6, [r0, #0x158]
005800f8  5c d0 4d e2                                      sub sp, sp, #0x5c
005800fc  00 40 a0 e1                                      mov r4, r0
00580100  05 30 96 e7                                      ldr r3, [r6, r5]
00580104  02 70 a0 e1                                      mov r7, r2
00580108  01 a0 a0 e1                                      mov sl, r1
0058010c  00 00 53 e3                                      cmp r3, #0
00580110  05 90 86 e0                                      add sb, r6, r5
00580114  02 00 00 1a                                      bne #0x580124
00580118  04 30 89 e5                                      str r3, [sb, #4]
0058011c  5c d0 8d e2                                      add sp, sp, #0x5c
00580120  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00580124  30 31 90 e5                                      ldr r3, [r0, #0x130]
00580128  50 00 8d e2                                      add r0, sp, #0x50
0058012c  20 c0 93 e5                                      ldr ip, [r3, #0x20]
00580130  03 10 a0 e1                                      mov r1, r3
00580134  00 30 93 e5                                      ldr r3, [r3]
00580138  05 80 9c e7                                      ldr r8, [ip, r5]
0058013c  0f e0 a0 e1                                      mov lr, pc
00580140  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00580144  50 30 9d e5                                      ldr r3, [sp, #0x50]
00580148  00 00 53 e3                                      cmp r3, #0
0058014c  54 30 8d e5                                      str r3, [sp, #0x54]
00580150  0a 00 00 0a                                      beq #0x580180
00580154  00 20 93 e5                                      ldr r2, [r3]
00580158  01 20 82 e2                                      add r2, r2, #1
0058015c  00 20 83 e5                                      str r2, [r3]
00580160  50 b0 9d e5                                      ldr fp, [sp, #0x50]
00580164  00 00 5b e3                                      cmp fp, #0
00580168  04 00 00 0a                                      beq #0x580180
0058016c  00 30 9b e5                                      ldr r3, [fp]
00580170  01 30 43 e2                                      sub r3, r3, #1
00580174  00 00 53 e3                                      cmp r3, #0
00580178  00 30 8b e5                                      str r3, [fp]
0058017c  92 00 00 0a                                      beq #0x5803cc
00580180  50 21 d4 e5                                      ldrb r2, [r4, #0x150]
00580184  00 30 a0 e3                                      mov r3, #0
00580188  4c 30 8d e5                                      str r3, [sp, #0x4c]
0058018c  03 00 52 e1                                      cmp r2, r3
00580190  4e 00 00 0a                                      beq #0x5802d0
00580194  0c 20 a0 e3                                      mov r2, #0xc
00580198  92 07 02 e0                                      mul r2, r2, r7
0058019c  14 20 8d e5                                      str r2, [sp, #0x14]
005801a0  54 b1 94 e5                                      ldr fp, [r4, #0x154]
005801a4  02 10 8b e0                                      add r1, fp, r2
005801a8  04 20 91 e5                                      ldr r2, [r1, #4]
005801ac  08 10 91 e5                                      ldr r1, [r1, #8]
005801b0  03 00 52 e1                                      cmp r2, r3
005801b4  8e 00 00 1a                                      bne #0x5803f4
005801b8  14 10 9d e5                                      ldr r1, [sp, #0x14]
005801bc  01 30 9b e7                                      ldr r3, [fp, r1]
005801c0  00 10 a0 e3                                      mov r1, #0
005801c4  14 10 8d e5                                      str r1, [sp, #0x14]
005801c8  bc c2 d8 e1                                      ldrh ip, [r8, #0x2c]
005801cc  28 e0 98 e5                                      ldr lr, [r8, #0x28]
005801d0  be 12 d8 e1                                      ldrh r1, [r8, #0x2e]
005801d4  24 b0 98 e5                                      ldr fp, [r8, #0x24]
005801d8  00 00 52 e3                                      cmp r2, #0
005801dc  1c 20 8d e5                                      str r2, [sp, #0x1c]
005801e0  04 00 92 15                                      ldrne r0, [r2, #4]
005801e4  01 00 80 12                                      addne r0, r0, #1
005801e8  04 00 82 15                                      strne r0, [r2, #4]
005801ec  30 01 94 e5                                      ldr r0, [r4, #0x130]
005801f0  00 20 a0 e3                                      mov r2, #0
005801f4  2c e0 8d e5                                      str lr, [sp, #0x2c]
005801f8  b0 c3 cd e1                                      strh ip, [sp, #0x30]
005801fc  38 40 8d e2                                      add r4, sp, #0x38
00580200  20 20 8d e5                                      str r2, [sp, #0x20]
00580204  b2 13 cd e1                                      strh r1, [sp, #0x32]
00580208  24 30 8d e5                                      str r3, [sp, #0x24]
0058020c  28 b0 8d e5                                      str fp, [sp, #0x28]
00580210  00 30 90 e5                                      ldr r3, [r0]
00580214  00 10 a0 e1                                      mov r1, r0
00580218  07 20 a0 e1                                      mov r2, r7
0058021c  04 00 a0 e1                                      mov r0, r4
00580220  0f e0 a0 e1                                      mov lr, pc
00580224  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00580228  54 20 8d e2                                      add r2, sp, #0x54
0058022c  04 10 a0 e1                                      mov r1, r4
00580230  0a 00 a0 e1                                      mov r0, sl
00580234  35 7a f7 eb                                      bl #0x35eb10
00580238  04 00 a0 e1                                      mov r0, r4
0058023c  69 42 f6 eb                                      bl #0x310be8
00580240  14 30 98 e5                                      ldr r3, [r8, #0x14]
00580244  34 40 8d e2                                      add r4, sp, #0x34
00580248  0a 00 a0 e1                                      mov r0, sl
0058024c  00 00 53 e3                                      cmp r3, #0
00580250  34 30 8d e5                                      str r3, [sp, #0x34]
00580254  00 20 93 15                                      ldrne r2, [r3]
00580258  04 10 a0 e1                                      mov r1, r4
0058025c  01 20 82 12                                      addne r2, r2, #1
00580260  00 20 83 15                                      strne r2, [r3]
00580264  1c 20 8d e2                                      add r2, sp, #0x1c
00580268  26 fc ff eb                                      bl #0x57f308
0058026c  04 00 a0 e1                                      mov r0, r4
00580270  46 7a f7 eb                                      bl #0x35eb90
00580274  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00580278  00 00 50 e3                                      cmp r0, #0
0058027c  00 00 00 0a                                      beq #0x580284
00580280  bf 74 f6 eb                                      bl #0x31d584
00580284  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00580288  00 00 50 e3                                      cmp r0, #0
0058028c  00 00 00 0a                                      beq #0x580294
00580290  bb 74 f6 eb                                      bl #0x31d584
00580294  14 20 9d e5                                      ldr r2, [sp, #0x14]
00580298  00 00 52 e3                                      cmp r2, #0
0058029c  01 00 00 0a                                      beq #0x5802a8
005802a0  02 00 a0 e1                                      mov r0, r2
005802a4  f7 d0 fe eb                                      bl #0x534688
005802a8  54 40 9d e5                                      ldr r4, [sp, #0x54]
005802ac  00 00 54 e3                                      cmp r4, #0
005802b0  04 00 00 0a                                      beq #0x5802c8
005802b4  00 30 94 e5                                      ldr r3, [r4]
005802b8  01 30 43 e2                                      sub r3, r3, #1
005802bc  00 00 53 e3                                      cmp r3, #0
005802c0  00 30 84 e5                                      str r3, [r4]
005802c4  3a 00 00 0a                                      beq #0x5803b4
005802c8  05 30 96 e7                                      ldr r3, [r6, r5]
005802cc  91 ff ff ea                                      b #0x580118
005802d0  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
005802d4  00 00 53 e3                                      cmp r3, #0
005802d8  79 00 00 0a                                      beq #0x5804c4
005802dc  83 30 a0 e1                                      lsl r3, r3, #1
005802e0  03 00 a0 e1                                      mov r0, r3
005802e4  10 30 8d e5                                      str r3, [sp, #0x10]
005802e8  c1 d0 fe eb                                      bl #0x5345f4
005802ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
005802f0  04 00 8d e5                                      str r0, [sp, #4]
005802f4  01 20 a0 e3                                      mov r2, #1
005802f8  00 30 8d e5                                      str r3, [sp]
005802fc  00 30 a0 e3                                      mov r3, #0
00580300  08 30 8d e5                                      str r3, [sp, #8]
00580304  00 b0 a0 e1                                      mov fp, r0
00580308  04 30 a0 e3                                      mov r3, #4
0058030c  40 00 8d e2                                      add r0, sp, #0x40
00580310  00 c0 9a e5                                      ldr ip, [sl]
00580314  0a 10 a0 e1                                      mov r1, sl
00580318  0f e0 a0 e1                                      mov lr, pc
0058031c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00580320  40 30 9d e5                                      ldr r3, [sp, #0x40]
00580324  00 00 53 e3                                      cmp r3, #0
00580328  04 20 93 15                                      ldrne r2, [r3, #4]
0058032c  01 20 82 12                                      addne r2, r2, #1
00580330  04 20 83 15                                      strne r2, [r3, #4]
00580334  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00580338  4c 30 8d e5                                      str r3, [sp, #0x4c]
0058033c  00 00 50 e3                                      cmp r0, #0
00580340  00 00 00 0a                                      beq #0x580348
00580344  8e 74 f6 eb                                      bl #0x31d584
00580348  40 00 9d e5                                      ldr r0, [sp, #0x40]
0058034c  00 00 50 e3                                      cmp r0, #0
00580350  00 00 00 0a                                      beq #0x580358
00580354  8a 74 f6 eb                                      bl #0x31d584
00580358  00 20 94 e5                                      ldr r2, [r4]
0058035c  18 30 98 e5                                      ldr r3, [r8, #0x18]
00580360  04 00 a0 e1                                      mov r0, r4
00580364  0c c1 92 e5                                      ldr ip, [r2, #0x10c]
00580368  00 00 53 e3                                      cmp r3, #0
0058036c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00580370  04 20 93 15                                      ldrne r2, [r3, #4]
00580374  07 10 a0 e1                                      mov r1, r7
00580378  01 20 82 12                                      addne r2, r2, #1
0058037c  04 20 83 15                                      strne r2, [r3, #4]
00580380  3c 30 8d e2                                      add r3, sp, #0x3c
00580384  4c 20 8d e2                                      add r2, sp, #0x4c
00580388  3c ff 2f e1                                      blx ip
0058038c  00 30 a0 e1                                      mov r3, r0
00580390  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00580394  00 00 50 e3                                      cmp r0, #0
00580398  51 00 00 0a                                      beq #0x5804e4
0058039c  10 30 8d e5                                      str r3, [sp, #0x10]
005803a0  77 74 f6 eb                                      bl #0x31d584
005803a4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005803a8  14 b0 8d e5                                      str fp, [sp, #0x14]
005803ac  10 30 9d e5                                      ldr r3, [sp, #0x10]
005803b0  84 ff ff ea                                      b #0x5801c8
005803b4  04 00 a0 e1                                      mov r0, r4
005803b8  e5 7c 01 eb                                      bl #0x5df754
005803bc  04 00 a0 e1                                      mov r0, r4
005803c0  ba 37 f6 eb                                      bl #0x30e2b0
005803c4  05 30 96 e7                                      ldr r3, [r6, r5]
005803c8  52 ff ff ea                                      b #0x580118
005803cc  0b 00 a0 e1                                      mov r0, fp
005803d0  df 7c 01 eb                                      bl #0x5df754
005803d4  0b 00 a0 e1                                      mov r0, fp
005803d8  b4 37 f6 eb                                      bl #0x30e2b0
005803dc  50 21 d4 e5                                      ldrb r2, [r4, #0x150]
005803e0  00 30 a0 e3                                      mov r3, #0
005803e4  4c 30 8d e5                                      str r3, [sp, #0x4c]
005803e8  03 00 52 e1                                      cmp r2, r3
005803ec  b7 ff ff 0a                                      beq #0x5802d0
005803f0  67 ff ff ea                                      b #0x580194
005803f4  82 20 a0 e1                                      lsl r2, r2, #1
005803f8  81 10 8b e0                                      add r1, fp, r1, lsl #1
005803fc  00 20 8d e5                                      str r2, [sp]
00580400  0a 00 8d e9                                      stmib sp, {r1, r3}
00580404  01 20 a0 e3                                      mov r2, #1
00580408  48 00 8d e2                                      add r0, sp, #0x48
0058040c  04 30 a0 e3                                      mov r3, #4
00580410  00 c0 9a e5                                      ldr ip, [sl]
00580414  0a 10 a0 e1                                      mov r1, sl
00580418  0f e0 a0 e1                                      mov lr, pc
0058041c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00580420  48 30 9d e5                                      ldr r3, [sp, #0x48]
00580424  00 00 53 e3                                      cmp r3, #0
00580428  04 20 93 15                                      ldrne r2, [r3, #4]
0058042c  01 20 82 12                                      addne r2, r2, #1
00580430  04 20 83 15                                      strne r2, [r3, #4]
00580434  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00580438  4c 30 8d e5                                      str r3, [sp, #0x4c]
0058043c  00 00 50 e3                                      cmp r0, #0
00580440  00 00 00 0a                                      beq #0x580448
00580444  4e 74 f6 eb                                      bl #0x31d584
00580448  48 00 9d e5                                      ldr r0, [sp, #0x48]
0058044c  00 00 50 e3                                      cmp r0, #0
00580450  00 00 00 0a                                      beq #0x580458
00580454  4a 74 f6 eb                                      bl #0x31d584
00580458  0c 30 99 e5                                      ldr r3, [sb, #0xc]
0058045c  00 00 53 e3                                      cmp r3, #0
00580460  13 00 00 0a                                      beq #0x5804b4
00580464  00 20 94 e5                                      ldr r2, [r4]
00580468  18 30 98 e5                                      ldr r3, [r8, #0x18]
0058046c  07 10 a0 e1                                      mov r1, r7
00580470  0c c1 92 e5                                      ldr ip, [r2, #0x10c]
00580474  00 00 53 e3                                      cmp r3, #0
00580478  44 30 8d e5                                      str r3, [sp, #0x44]
0058047c  04 20 93 15                                      ldrne r2, [r3, #4]
00580480  04 00 a0 e1                                      mov r0, r4
00580484  01 20 82 12                                      addne r2, r2, #1
00580488  04 20 83 15                                      strne r2, [r3, #4]
0058048c  44 30 8d e2                                      add r3, sp, #0x44
00580490  4c 20 8d e2                                      add r2, sp, #0x4c
00580494  3c ff 2f e1                                      blx ip
00580498  14 10 9d e5                                      ldr r1, [sp, #0x14]
0058049c  00 30 a0 e1                                      mov r3, r0
005804a0  01 00 8b e7                                      str r0, [fp, r1]
005804a4  44 00 9d e5                                      ldr r0, [sp, #0x44]
005804a8  00 00 50 e3                                      cmp r0, #0
005804ac  02 00 00 0a                                      beq #0x5804bc
005804b0  33 74 f6 eb                                      bl #0x31d584
005804b4  14 20 9d e5                                      ldr r2, [sp, #0x14]
005804b8  02 30 9b e7                                      ldr r3, [fp, r2]
005804bc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005804c0  3e ff ff ea                                      b #0x5801c0
005804c4  04 00 a0 e1                                      mov r0, r4
005804c8  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
005804cc  38 f8 ff eb                                      bl #0x57e5b4
005804d0  00 30 50 e2                                      subs r3, r0, #0
005804d4  80 ff ff 1a                                      bne #0x5802dc
005804d8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005804dc  14 30 8d e5                                      str r3, [sp, #0x14]
005804e0  38 ff ff ea                                      b #0x5801c8
005804e4  14 b0 8d e5                                      str fp, [sp, #0x14]
005804e8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005804ec  35 ff ff ea                                      b #0x5801c8

; FUNCTION 0x005804f0, declared_size=688, range_size=688, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode21flushTransparentBatchEPNS_5video12IVideoDriverE
; demangled: glitch::scene::CBatchSceneNode::flushTransparentBatch(glitch::video::IVideoDriver*)
; decoder-mode: arm
005804f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005804f4  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
005804f8  14 50 a0 e3                                      mov r5, #0x14
005804fc  58 61 90 e5                                      ldr r6, [r0, #0x158]
00580500  95 02 05 e0                                      mul r5, r5, r2
00580504  40 d0 4d e2                                      sub sp, sp, #0x40
00580508  05 30 96 e7                                      ldr r3, [r6, r5]
0058050c  00 40 a0 e1                                      mov r4, r0
00580510  01 70 a0 e1                                      mov r7, r1
00580514  00 00 53 e3                                      cmp r3, #0
00580518  01 00 00 1a                                      bne #0x580524
0058051c  40 d0 8d e2                                      add sp, sp, #0x40
00580520  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00580524  30 31 90 e5                                      ldr r3, [r0, #0x130]
00580528  38 00 8d e2                                      add r0, sp, #0x38
0058052c  20 c0 93 e5                                      ldr ip, [r3, #0x20]
00580530  03 10 a0 e1                                      mov r1, r3
00580534  00 30 93 e5                                      ldr r3, [r3]
00580538  05 80 9c e7                                      ldr r8, [ip, r5]
0058053c  0f e0 a0 e1                                      mov lr, pc
00580540  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00580544  38 30 9d e5                                      ldr r3, [sp, #0x38]
00580548  00 00 53 e3                                      cmp r3, #0
0058054c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00580550  0a 00 00 0a                                      beq #0x580580
00580554  00 20 93 e5                                      ldr r2, [r3]
00580558  01 20 82 e2                                      add r2, r2, #1
0058055c  00 20 83 e5                                      str r2, [r3]
00580560  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00580564  00 00 5a e3                                      cmp sl, #0
00580568  04 00 00 0a                                      beq #0x580580
0058056c  00 30 9a e5                                      ldr r3, [sl]
00580570  01 30 43 e2                                      sub r3, r3, #1
00580574  00 00 53 e3                                      cmp r3, #0
00580578  00 30 8a e5                                      str r3, [sl]
0058057c  61 00 00 0a                                      beq #0x580708
00580580  40 01 94 e5                                      ldr r0, [r4, #0x140]
00580584  00 00 50 e3                                      cmp r0, #0
00580588  65 00 00 0a                                      beq #0x580724
0058058c  80 90 a0 e1                                      lsl sb, r0, #1
00580590  09 00 a0 e1                                      mov r0, sb
00580594  16 d0 fe eb                                      bl #0x5345f4
00580598  00 a0 a0 e1                                      mov sl, r0
0058059c  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
005805a0  00 00 50 e3                                      cmp r0, #0
005805a4  65 00 00 0a                                      beq #0x580740
005805a8  09 10 a0 e1                                      mov r1, sb
005805ac  0a 20 a0 e1                                      mov r2, sl
005805b0  00 30 a0 e3                                      mov r3, #0
005805b4  be 85 00 eb                                      bl #0x5a1cb4
005805b8  18 30 98 e5                                      ldr r3, [r8, #0x18]
005805bc  04 00 a0 e1                                      mov r0, r4
005805c0  00 00 53 e3                                      cmp r3, #0
005805c4  30 30 8d e5                                      str r3, [sp, #0x30]
005805c8  04 20 93 15                                      ldrne r2, [r3, #4]
005805cc  01 20 82 12                                      addne r2, r2, #1
005805d0  04 20 83 15                                      strne r2, [r3, #4]
005805d4  00 c0 94 e5                                      ldr ip, [r4]
005805d8  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
005805dc  53 2f 84 e2                                      add r2, r4, #0x14c
005805e0  30 30 8d e2                                      add r3, sp, #0x30
005805e4  0f e0 a0 e1                                      mov lr, pc
005805e8  0c f1 9c e5                                      ldr pc, [ip, #0x10c]
005805ec  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
005805f0  24 e0 98 e5                                      ldr lr, [r8, #0x24]
005805f4  28 c0 98 e5                                      ldr ip, [r8, #0x28]
005805f8  be 22 d8 e1                                      ldrh r2, [r8, #0x2e]
005805fc  bc 12 d8 e1                                      ldrh r1, [r8, #0x2c]
00580600  00 00 53 e3                                      cmp r3, #0
00580604  10 30 8d e5                                      str r3, [sp, #0x10]
00580608  04 90 93 15                                      ldrne sb, [r3, #4]
0058060c  01 90 89 12                                      addne sb, sb, #1
00580610  04 90 83 15                                      strne sb, [r3, #4]
00580614  30 31 94 e5                                      ldr r3, [r4, #0x130]
00580618  00 90 a0 e3                                      mov sb, #0
0058061c  1c e0 8d e5                                      str lr, [sp, #0x1c]
00580620  20 c0 8d e5                                      str ip, [sp, #0x20]
00580624  14 90 8d e5                                      str sb, [sp, #0x14]
00580628  18 00 8d e5                                      str r0, [sp, #0x18]
0058062c  b4 12 cd e1                                      strh r1, [sp, #0x24]
00580630  b6 22 cd e1                                      strh r2, [sp, #0x26]
00580634  2c 90 8d e2                                      add sb, sp, #0x2c
00580638  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
0058063c  03 10 a0 e1                                      mov r1, r3
00580640  09 00 a0 e1                                      mov r0, sb
00580644  00 30 93 e5                                      ldr r3, [r3]
00580648  0f e0 a0 e1                                      mov lr, pc
0058064c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00580650  3c 20 8d e2                                      add r2, sp, #0x3c
00580654  09 10 a0 e1                                      mov r1, sb
00580658  07 00 a0 e1                                      mov r0, r7
0058065c  2b 79 f7 eb                                      bl #0x35eb10
00580660  09 00 a0 e1                                      mov r0, sb
00580664  5f 41 f6 eb                                      bl #0x310be8
00580668  14 30 98 e5                                      ldr r3, [r8, #0x14]
0058066c  28 40 8d e2                                      add r4, sp, #0x28
00580670  07 00 a0 e1                                      mov r0, r7
00580674  00 00 53 e3                                      cmp r3, #0
00580678  28 30 8d e5                                      str r3, [sp, #0x28]
0058067c  00 20 93 15                                      ldrne r2, [r3]
00580680  04 10 a0 e1                                      mov r1, r4
00580684  01 20 82 12                                      addne r2, r2, #1
00580688  00 20 83 15                                      strne r2, [r3]
0058068c  10 20 8d e2                                      add r2, sp, #0x10
00580690  1c fb ff eb                                      bl #0x57f308
00580694  04 00 a0 e1                                      mov r0, r4
00580698  3c 79 f7 eb                                      bl #0x35eb90
0058069c  10 00 9d e5                                      ldr r0, [sp, #0x10]
005806a0  00 00 50 e3                                      cmp r0, #0
005806a4  00 00 00 0a                                      beq #0x5806ac
005806a8  b5 73 f6 eb                                      bl #0x31d584
005806ac  30 00 9d e5                                      ldr r0, [sp, #0x30]
005806b0  00 00 50 e3                                      cmp r0, #0
005806b4  00 00 00 0a                                      beq #0x5806bc
005806b8  b1 73 f6 eb                                      bl #0x31d584
005806bc  00 30 a0 e3                                      mov r3, #0
005806c0  00 00 5a e3                                      cmp sl, #0
005806c4  05 30 86 e7                                      str r3, [r6, r5]
005806c8  01 00 00 0a                                      beq #0x5806d4
005806cc  0a 00 a0 e1                                      mov r0, sl
005806d0  ec cf fe eb                                      bl #0x534688
005806d4  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
005806d8  00 00 54 e3                                      cmp r4, #0
005806dc  8e ff ff 0a                                      beq #0x58051c
005806e0  00 30 94 e5                                      ldr r3, [r4]
005806e4  01 30 43 e2                                      sub r3, r3, #1
005806e8  00 00 53 e3                                      cmp r3, #0
005806ec  00 30 84 e5                                      str r3, [r4]
005806f0  89 ff ff 1a                                      bne #0x58051c
005806f4  04 00 a0 e1                                      mov r0, r4
005806f8  15 7c 01 eb                                      bl #0x5df754
005806fc  04 00 a0 e1                                      mov r0, r4
00580700  ea 36 f6 eb                                      bl #0x30e2b0
00580704  84 ff ff ea                                      b #0x58051c
00580708  0a 00 a0 e1                                      mov r0, sl
0058070c  10 7c 01 eb                                      bl #0x5df754
00580710  0a 00 a0 e1                                      mov r0, sl
00580714  e5 36 f6 eb                                      bl #0x30e2b0
00580718  40 01 94 e5                                      ldr r0, [r4, #0x140]
0058071c  00 00 50 e3                                      cmp r0, #0
00580720  99 ff ff 1a                                      bne #0x58058c
00580724  04 00 a0 e1                                      mov r0, r4
00580728  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
0058072c  a0 f7 ff eb                                      bl #0x57e5b4
00580730  00 00 50 e3                                      cmp r0, #0
00580734  05 00 86 07                                      streq r0, [r6, r5]
00580738  e5 ff ff 0a                                      beq #0x5806d4
0058073c  92 ff ff ea                                      b #0x58058c
00580740  08 00 8d e5                                      str r0, [sp, #8]
00580744  00 06 8d e8                                      stm sp, {sb, sl}
00580748  01 20 a0 e3                                      mov r2, #1
0058074c  34 00 8d e2                                      add r0, sp, #0x34
00580750  04 30 a0 e3                                      mov r3, #4
00580754  00 c0 97 e5                                      ldr ip, [r7]
00580758  07 10 a0 e1                                      mov r1, r7
0058075c  0f e0 a0 e1                                      mov lr, pc
00580760  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00580764  34 30 9d e5                                      ldr r3, [sp, #0x34]
00580768  00 00 53 e3                                      cmp r3, #0
0058076c  04 20 93 15                                      ldrne r2, [r3, #4]
00580770  01 20 82 12                                      addne r2, r2, #1
00580774  04 20 83 15                                      strne r2, [r3, #4]
00580778  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
0058077c  4c 31 84 e5                                      str r3, [r4, #0x14c]
00580780  00 00 50 e3                                      cmp r0, #0
00580784  00 00 00 0a                                      beq #0x58078c
00580788  7d 73 f6 eb                                      bl #0x31d584
0058078c  34 00 9d e5                                      ldr r0, [sp, #0x34]
00580790  00 00 50 e3                                      cmp r0, #0
00580794  87 ff ff 0a                                      beq #0x5805b8
00580798  79 73 f6 eb                                      bl #0x31d584
0058079c  85 ff ff ea                                      b #0x5805b8

; FUNCTION 0x005807a0, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode24renderTransparentSegmentEPNS_5video12IVideoDriverERNS0_10CBatchMesh8SSegmentE
; demangled: glitch::scene::CBatchSceneNode::renderTransparentSegment(glitch::video::IVideoDriver*, glitch::scene::CBatchMesh::SSegment&)
; decoder-mode: arm
005807a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005807a4  08 10 92 e8                                      ldm r2, {r3, ip}
005807a8  14 80 a0 e3                                      mov r8, #0x14
005807ac  00 30 93 e5                                      ldr r3, [r3]
005807b0  02 40 a0 e1                                      mov r4, r2
005807b4  58 21 90 e5                                      ldr r2, [r0, #0x158]
005807b8  8c 31 93 e7                                      ldr r3, [r3, ip, lsl #3]
005807bc  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
005807c0  00 50 a0 e1                                      mov r5, r0
005807c4  98 03 03 e0                                      mul r3, r8, r3
005807c8  07 70 8f e0                                      add r7, pc, r7
005807cc  03 c0 92 e7                                      ldr ip, [r2, r3]
005807d0  01 60 a0 e1                                      mov r6, r1
005807d4  03 30 82 e0                                      add r3, r2, r3
005807d8  00 00 5c e3                                      cmp ip, #0
005807dc  22 00 00 0a                                      beq #0x58086c
005807e0  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
005807e4  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005807e8  08 c0 93 e5                                      ldr ip, [r3, #8]
005807ec  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005807f0  02 20 97 e7                                      ldr r2, [r7, r2]
005807f4  01 00 5c e1                                      cmp ip, r1
005807f8  00 10 a0 01                                      moveq r1, r0
005807fc  01 10 80 13                                      orrne r1, r0, #1
00580800  0c 10 83 e5                                      str r1, [r3, #0xc]
00580804  00 20 92 e5                                      ldr r2, [r2]
00580808  00 30 94 e5                                      ldr r3, [r4]
0058080c  04 00 94 e5                                      ldr r0, [r4, #4]
00580810  1c 20 84 e5                                      str r2, [r4, #0x1c]
00580814  00 20 93 e5                                      ldr r2, [r3]
00580818  14 c0 a0 e3                                      mov ip, #0x14
0058081c  58 31 95 e5                                      ldr r3, [r5, #0x158]
00580820  80 01 92 e7                                      ldr r0, [r2, r0, lsl #3]
00580824  00 10 a0 e3                                      mov r1, #0
00580828  01 20 a0 e1                                      mov r2, r1
0058082c  9c 00 00 e0                                      mul r0, ip, r0
00580830  00 c0 83 e0                                      add ip, r3, r0
00580834  10 70 9c e5                                      ldr r7, [ip, #0x10]
00580838  00 c0 93 e7                                      ldr ip, [r3, r0]
0058083c  07 71 83 e0                                      add r7, r3, r7, lsl #2
00580840  01 e0 8c e2                                      add lr, ip, #1
00580844  0c 41 87 e7                                      str r4, [r7, ip, lsl #2]
00580848  00 e0 83 e7                                      str lr, [r3, r0]
0058084c  10 01 95 e5                                      ldr r0, [r5, #0x110]
00580850  38 23 00 eb                                      bl #0x589538
00580854  00 00 55 e1                                      cmp r5, r0
00580858  10 00 00 0a                                      beq #0x5808a0
0058085c  05 00 a0 e1                                      mov r0, r5
00580860  06 10 a0 e1                                      mov r1, r6
00580864  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00580868  20 ff ff ea                                      b #0x5804f0
0058086c  1f ff ff eb                                      bl #0x5804f0
00580870  00 20 94 e5                                      ldr r2, [r4]
00580874  04 10 94 e5                                      ldr r1, [r4, #4]
00580878  58 31 95 e5                                      ldr r3, [r5, #0x158]
0058087c  00 20 92 e5                                      ldr r2, [r2]
00580880  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
00580884  5c 21 85 e5                                      str r2, [r5, #0x15c]
00580888  00 20 94 e5                                      ldr r2, [r4]
0058088c  04 10 94 e5                                      ldr r1, [r4, #4]
00580890  00 20 92 e5                                      ldr r2, [r2]
00580894  81 21 92 e7                                      ldr r2, [r2, r1, lsl #3]
00580898  98 32 23 e0                                      mla r3, r8, r2, r3
0058089c  cf ff ff ea                                      b #0x5807e0
005808a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005808a4  c8 42 41 00 b0 07 00 00                          .byte 0xc8, 0x42, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x005808ac, declared_size=276, range_size=276, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZN6glitch5scene15CBatchSceneNode6renderEPv
; demangled: glitch::scene::CBatchSceneNode::render(void*)
; decoder-mode: arm
005808ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005808b0  10 31 90 e5                                      ldr r3, [r0, #0x110]
005808b4  00 50 a0 e1                                      mov r5, r0
005808b8  01 60 a0 e1                                      mov r6, r1
005808bc  14 40 93 e5                                      ldr r4, [r3, #0x14]
005808c0  00 00 54 e3                                      cmp r4, #0
005808c4  19 00 00 0a                                      beq #0x580930
005808c8  00 30 94 e5                                      ldr r3, [r4]
005808cc  04 00 a0 e1                                      mov r0, r4
005808d0  01 10 a0 e3                                      mov r1, #1
005808d4  24 20 85 e2                                      add r2, r5, #0x24
005808d8  0f e0 a0 e1                                      mov lr, pc
005808dc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005808e0  88 70 94 e5                                      ldr r7, [r4, #0x88]
005808e4  57 74 e0 e7                                      ubfx r7, r7, #8, #1
005808e8  00 00 57 e3                                      cmp r7, #0
005808ec  1f 00 00 1a                                      bne #0x580970
005808f0  00 00 56 e3                                      cmp r6, #0
005808f4  25 00 00 0a                                      beq #0x580990
005808f8  01 08 56 e3                                      cmp r6, #0x10000
005808fc  0c 00 00 2a                                      bhs #0x580934
00580900  05 00 a0 e1                                      mov r0, r5
00580904  01 20 46 e2                                      sub r2, r6, #1
00580908  04 10 a0 e1                                      mov r1, r4
0058090c  f5 fd ff eb                                      bl #0x5800e8
00580910  00 00 57 e3                                      cmp r7, #0
00580914  05 00 00 0a                                      beq #0x580930
00580918  04 00 a0 e1                                      mov r0, r4
0058091c  00 30 94 e5                                      ldr r3, [r4]
00580920  01 1c a0 e3                                      mov r1, #0x100
00580924  01 20 a0 e3                                      mov r2, #1
00580928  0f e0 a0 e1                                      mov lr, pc
0058092c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00580930  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00580934  30 21 95 e5                                      ldr r2, [r5, #0x130]
00580938  76 10 ff e6                                      uxth r1, r6
0058093c  14 c0 a0 e3                                      mov ip, #0x14
00580940  20 00 92 e5                                      ldr r0, [r2, #0x20]
00580944  08 30 92 e5                                      ldr r3, [r2, #8]
00580948  70 20 92 e5                                      ldr r2, [r2, #0x70]
0058094c  9c 01 21 e0                                      mla r1, ip, r1, r0
00580950  05 00 a0 e1                                      mov r0, r5
00580954  bc c0 d1 e1                                      ldrh ip, [r1, #0xc]
00580958  04 10 a0 e1                                      mov r1, r4
0058095c  01 c0 4c e2                                      sub ip, ip, #1
00580960  26 68 8c e0                                      add r6, ip, r6, lsr #16
00580964  92 36 22 e0                                      mla r2, r2, r6, r3
00580968  8c ff ff eb                                      bl #0x5807a0
0058096c  e7 ff ff ea                                      b #0x580910
00580970  00 30 94 e5                                      ldr r3, [r4]
00580974  04 00 a0 e1                                      mov r0, r4
00580978  01 1c a0 e3                                      mov r1, #0x100
0058097c  00 20 a0 e3                                      mov r2, #0
00580980  0f e0 a0 e1                                      mov lr, pc
00580984  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00580988  00 00 56 e3                                      cmp r6, #0
0058098c  d9 ff ff 1a                                      bne #0x5808f8
00580990  44 31 95 e5                                      ldr r3, [r5, #0x144]
00580994  00 00 53 e3                                      cmp r3, #0
00580998  dc ff ff 0a                                      beq #0x580910
0058099c  06 20 a0 e1                                      mov r2, r6
005809a0  05 00 a0 e1                                      mov r0, r5
005809a4  04 10 a0 e1                                      mov r1, r4
005809a8  ce fd ff eb                                      bl #0x5800e8
005809ac  44 31 95 e5                                      ldr r3, [r5, #0x144]
005809b0  01 60 86 e2                                      add r6, r6, #1
005809b4  06 00 53 e1                                      cmp r3, r6
005809b8  f7 ff ff 8a                                      bhi #0x58099c
005809bc  d3 ff ff ea                                      b #0x580910

; FUNCTION 0x005809c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZTv0_n24_N6glitch5scene15CBatchSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
005809c0  00 30 90 e5                                      ldr r3, [r0]
005809c4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005809c8  03 00 80 e0                                      add r0, r0, r3
005809cc  b2 fa ff ea                                      b #0x57f49c

; FUNCTION 0x005809d0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZTv0_n12_N6glitch5scene15CBatchSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
005809d0  00 30 90 e5                                      ldr r3, [r0]
005809d4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005809d8  03 00 80 e0                                      add r0, r0, r3
005809dc  ae fa ff ea                                      b #0x57f49c

; FUNCTION 0x005809e0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZTv0_n24_N6glitch5scene15CBatchSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
005809e0  00 30 90 e5                                      ldr r3, [r0]
005809e4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005809e8  03 00 80 e0                                      add r0, r0, r3
005809ec  7e fa ff ea                                      b #0x57f3ec

; FUNCTION 0x005809f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZTv0_n12_N6glitch5scene15CBatchSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CBatchSceneNode::~CBatchSceneNode()
; decoder-mode: arm
005809f0  00 30 90 e5                                      ldr r3, [r0]
005809f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005809f8  03 00 80 e0                                      add r0, r0, r3
005809fc  7a fa ff ea                                      b #0x57f3ec

; FUNCTION 0x00580a00, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZTv0_n20_N6glitch5scene15CBatchSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CBatchSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00580a00  00 30 90 e5                                      ldr r3, [r0]
00580a04  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00580a08  03 00 80 e0                                      add r0, r0, r3
00580a0c  e1 f8 ff ea                                      b #0x57ed98

; FUNCTION 0x00580a10, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBatchSceneNode
; alias: _ZTv0_n16_NK6glitch5scene15CBatchSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CBatchSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00580a10  00 30 90 e5                                      ldr r3, [r0]
00580a14  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00580a18  03 00 80 e0                                      add r0, r0, r3
00580a1c  35 f7 ff ea                                      b #0x57e6f8
