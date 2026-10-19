; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d0074, declared_size=36, range_size=36, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode11getMaterialEj
; demangled: glitch::scene::CTerrainSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
006d0074  10 40 2d e9                                      push {r4, lr}
006d0078  ac 31 91 e5                                      ldr r3, [r1, #0x1ac]
006d007c  00 40 a0 e1                                      mov r4, r0
006d0080  03 10 a0 e1                                      mov r1, r3
006d0084  00 30 93 e5                                      ldr r3, [r3]
006d0088  0f e0 a0 e1                                      mov lr, pc
006d008c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d0090  04 00 a0 e1                                      mov r0, r4
006d0094  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d0098, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode16getMaterialCountEv
; demangled: glitch::scene::CTerrainSceneNode::getMaterialCount() const
; decoder-mode: arm
006d0098  10 40 2d e9                                      push {r4, lr}
006d009c  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
006d00a0  03 00 a0 e1                                      mov r0, r3
006d00a4  00 30 93 e5                                      ldr r3, [r3]
006d00a8  0f e0 a0 e1                                      mov lr, pc
006d00ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d00b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d00b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode8getScaleEv
; demangled: glitch::scene::CTerrainSceneNode::getScale() const
; decoder-mode: arm
006d00b4  57 0f 80 e2                                      add r0, r0, #0x15c
006d00b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d00bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode11getRotationEv
; demangled: glitch::scene::CTerrainSceneNode::getRotation() const
; decoder-mode: arm
006d00bc  05 0d 80 e2                                      add r0, r0, #0x140
006d00c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d00c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode11getPositionEv
; demangled: glitch::scene::CTerrainSceneNode::getPosition() const
; decoder-mode: arm
006d00c4  4d 0f 80 e2                                      add r0, r0, #0x134
006d00c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d00cc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode7getTypeEv
; demangled: glitch::scene::CTerrainSceneNode::getType() const
; decoder-mode: arm
006d00cc  74 05 06 e3                                      movw r0, #0x6574
006d00d0  72 02 47 e3                                      movt r0, #0x7272
006d00d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d00d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode15getRenderBufferEv
; demangled: glitch::scene::CTerrainSceneNode::getRenderBuffer() const
; decoder-mode: arm
006d00d8  b0 31 91 e5                                      ldr r3, [r1, #0x1b0]
006d00dc  00 00 53 e3                                      cmp r3, #0
006d00e0  00 30 80 e5                                      str r3, [r0]
006d00e4  04 20 93 15                                      ldrne r2, [r3, #4]
006d00e8  01 20 82 12                                      addne r2, r2, #1
006d00ec  04 20 83 15                                      strne r2, [r3, #4]
006d00f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d01c4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode16setRotationPivotERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CTerrainSceneNode::setRotationPivot(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d01c4  00 30 a0 e3                                      mov r3, #0
006d01c8  be 31 c0 e5                                      strb r3, [r0, #0x1be]
006d01cc  00 30 91 e5                                      ldr r3, [r1]
006d01d0  50 31 80 e5                                      str r3, [r0, #0x150]
006d01d4  04 30 91 e5                                      ldr r3, [r1, #4]
006d01d8  54 31 80 e5                                      str r3, [r0, #0x154]
006d01dc  08 30 91 e5                                      ldr r3, [r1, #8]
006d01e0  58 31 80 e5                                      str r3, [r0, #0x158]
006d01e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d01e8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CTerrainSceneNode::getBoundingBox() const
; decoder-mode: arm
006d01e8  61 0f 80 e2                                      add r0, r0, #0x184
006d01ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d01f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode16loadHeightMapRAWEPNS_2io9IReadFileEiNS_5video6SColorEi
; demangled: glitch::scene::CTerrainSceneNode::loadHeightMapRAW(glitch::io::IReadFile*, int, glitch::video::SColor, int)
; decoder-mode: arm
006d01f0  08 d0 4d e2                                      sub sp, sp, #8
006d01f4  00 00 a0 e3                                      mov r0, #0
006d01f8  08 d0 8d e2                                      add sp, sp, #8
006d01fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d0200, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode14getBoundingBoxEii
; demangled: glitch::scene::CTerrainSceneNode::getBoundingBox(int, int) const
; decoder-mode: arm
006d0200  7c c1 90 e5                                      ldr ip, [r0, #0x17c]
006d0204  a8 31 90 e5                                      ldr r3, [r0, #0x1a8]
006d0208  9c 21 22 e0                                      mla r2, ip, r1, r2
006d020c  38 c0 a0 e3                                      mov ip, #0x38
006d0210  9c 32 23 e0                                      mla r3, ip, r2, r3
006d0214  04 00 83 e2                                      add r0, r3, #4
006d0218  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d021c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode13setLODOfPatchEiii
; demangled: glitch::scene::CTerrainSceneNode::setLODOfPatch(int, int, int)
; decoder-mode: arm
006d021c  7c c1 90 e5                                      ldr ip, [r0, #0x17c]
006d0220  a8 01 90 e5                                      ldr r0, [r0, #0x1a8]
006d0224  9c 21 22 e0                                      mla r2, ip, r1, r2
006d0228  38 c0 a0 e3                                      mov ip, #0x38
006d022c  9c 02 0c e0                                      mul ip, ip, r2
006d0230  0c 30 80 e7                                      str r3, [r0, ip]
006d0234  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d0238, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode19overrideLODDistanceEid
; demangled: glitch::scene::CTerrainSceneNode::overrideLODDistance(int, double)
; decoder-mode: arm
006d0238  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006d023c  01 40 a0 e3                                      mov r4, #1
006d0240  00 50 51 e2                                      subs r5, r1, #0
006d0244  00 c0 a0 e1                                      mov ip, r0
006d0248  bd 41 c0 e5                                      strb r4, [r0, #0x1bd]
006d024c  02 60 a0 e1                                      mov r6, r2
006d0250  03 70 a0 e1                                      mov r7, r3
006d0254  0a 00 00 ba                                      blt #0x6d0284
006d0258  80 11 90 e5                                      ldr r1, [r0, #0x180]
006d025c  01 00 55 e1                                      cmp r5, r1
006d0260  07 00 00 aa                                      bge #0x6d0284
006d0264  02 00 a0 e1                                      mov r0, r2
006d0268  03 10 a0 e1                                      mov r1, r3
006d026c  9c 61 9c e5                                      ldr r6, [ip, #0x19c]
006d0270  0f fa f0 eb                                      bl #0x30eab4
006d0274  85 51 a0 e1                                      lsl r5, r5, #3
006d0278  f5 00 86 e1                                      strd r0, r1, [r6, r5]
006d027c  04 00 a0 e1                                      mov r0, r4
006d0280  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006d0284  00 00 a0 e3                                      mov r0, #0
006d0288  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006d028c, declared_size=356, range_size=356, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode8getIndexEiiijj
; demangled: glitch::scene::CTerrainSceneNode::getIndex(int, int, int, unsigned int, unsigned int) const
; decoder-mode: arm
006d028c  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
006d0290  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d0294  14 40 9d e5                                      ldr r4, [sp, #0x14]
006d0298  00 00 5c e3                                      cmp ip, #0
006d029c  3e 00 00 1a                                      bne #0x6d039c
006d02a0  38 60 a0 e3                                      mov r6, #0x38
006d02a4  96 03 06 e0                                      mul r6, r6, r3
006d02a8  a8 71 90 e5                                      ldr r7, [r0, #0x1a8]
006d02ac  06 50 87 e0                                      add r5, r7, r6
006d02b0  28 50 95 e5                                      ldr r5, [r5, #0x28]
006d02b4  00 00 55 e3                                      cmp r5, #0
006d02b8  09 00 00 0a                                      beq #0x6d02e4
006d02bc  06 60 97 e7                                      ldr r6, [r7, r6]
006d02c0  00 50 95 e5                                      ldr r5, [r5]
006d02c4  05 00 56 e1                                      cmp r6, r5
006d02c8  05 00 00 aa                                      bge #0x6d02e4
006d02cc  01 60 a0 e3                                      mov r6, #1
006d02d0  16 55 a0 e1                                      lsl r5, r6, r5
006d02d4  01 60 45 e2                                      sub r6, r5, #1
006d02d8  06 00 14 e1                                      tst r4, r6
006d02dc  00 50 65 12                                      rsbne r5, r5, #0
006d02e0  05 40 04 10                                      andne r4, r4, r5
006d02e4  78 51 90 e5                                      ldr r5, [r0, #0x178]
006d02e8  00 00 54 e3                                      cmp r4, #0
006d02ec  1c 00 00 1a                                      bne #0x6d0364
006d02f0  38 60 a0 e3                                      mov r6, #0x38
006d02f4  96 03 03 e0                                      mul r3, r6, r3
006d02f8  a8 71 90 e5                                      ldr r7, [r0, #0x1a8]
006d02fc  03 60 87 e0                                      add r6, r7, r3
006d0300  34 60 96 e5                                      ldr r6, [r6, #0x34]
006d0304  00 00 56 e3                                      cmp r6, #0
006d0308  09 00 00 0a                                      beq #0x6d0334
006d030c  03 70 97 e7                                      ldr r7, [r7, r3]
006d0310  00 30 96 e5                                      ldr r3, [r6]
006d0314  03 00 57 e1                                      cmp r7, r3
006d0318  05 00 00 aa                                      bge #0x6d0334
006d031c  01 60 a0 e3                                      mov r6, #1
006d0320  16 33 a0 e1                                      lsl r3, r6, r3
006d0324  01 60 43 e2                                      sub r6, r3, #1
006d0328  06 00 1c e1                                      tst ip, r6
006d032c  00 30 63 12                                      rsbne r3, r3, #0
006d0330  03 c0 0c 10                                      andne ip, ip, r3
006d0334  74 31 90 e5                                      ldr r3, [r0, #0x174]
006d0338  91 05 01 e0                                      mul r1, r1, r5
006d033c  03 00 5c e1                                      cmp ip, r3
006d0340  05 c0 a0 21                                      movhs ip, r5
006d0344  92 c5 2c e0                                      mla ip, r2, r5, ip
006d0348  30 01 90 e5                                      ldr r0, [r0, #0x130]
006d034c  03 00 54 e1                                      cmp r4, r3
006d0350  05 40 a0 21                                      movhs r4, r5
006d0354  90 1c 20 e0                                      mla r0, r0, ip, r1
006d0358  04 00 80 e0                                      add r0, r0, r4
006d035c  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
006d0360  1e ff 2f e1                                      bx lr
006d0364  04 00 55 e1                                      cmp r5, r4
006d0368  f1 ff ff 1a                                      bne #0x6d0334
006d036c  38 60 a0 e3                                      mov r6, #0x38
006d0370  96 03 03 e0                                      mul r3, r6, r3
006d0374  a8 71 90 e5                                      ldr r7, [r0, #0x1a8]
006d0378  03 60 87 e0                                      add r6, r7, r3
006d037c  30 60 96 e5                                      ldr r6, [r6, #0x30]
006d0380  00 00 56 e3                                      cmp r6, #0
006d0384  ea ff ff 0a                                      beq #0x6d0334
006d0388  03 70 97 e7                                      ldr r7, [r7, r3]
006d038c  00 30 96 e5                                      ldr r3, [r6]
006d0390  03 00 57 e1                                      cmp r7, r3
006d0394  e6 ff ff aa                                      bge #0x6d0334
006d0398  df ff ff ea                                      b #0x6d031c
006d039c  78 51 90 e5                                      ldr r5, [r0, #0x178]
006d03a0  0c 00 55 e1                                      cmp r5, ip
006d03a4  cf ff ff 1a                                      bne #0x6d02e8
006d03a8  38 70 a0 e3                                      mov r7, #0x38
006d03ac  97 03 07 e0                                      mul r7, r7, r3
006d03b0  a8 81 90 e5                                      ldr r8, [r0, #0x1a8]
006d03b4  07 60 88 e0                                      add r6, r8, r7
006d03b8  2c 60 96 e5                                      ldr r6, [r6, #0x2c]
006d03bc  00 00 56 e3                                      cmp r6, #0
006d03c0  c8 ff ff 0a                                      beq #0x6d02e8
006d03c4  07 70 98 e7                                      ldr r7, [r8, r7]
006d03c8  00 60 96 e5                                      ldr r6, [r6]
006d03cc  06 00 57 e1                                      cmp r7, r6
006d03d0  c4 ff ff aa                                      bge #0x6d02e8
006d03d4  01 70 a0 e3                                      mov r7, #1
006d03d8  17 66 a0 e1                                      lsl r6, r7, r6
006d03dc  01 70 46 e2                                      sub r7, r6, #1
006d03e0  07 00 14 e1                                      tst r4, r7
006d03e4  00 60 66 12                                      rsbne r6, r6, #0
006d03e8  06 40 04 10                                      andne r4, r4, r6
006d03ec  bd ff ff ea                                      b #0x6d02e8

; FUNCTION 0x006d03f0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode22setCurrentLODOfPatchesEi
; demangled: glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches(int)
; decoder-mode: arm
006d03f0  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
006d03f4  04 40 2d e5                                      str r4, [sp, #-4]!
006d03f8  93 03 03 e0                                      mul r3, r3, r3
006d03fc  00 00 53 e3                                      cmp r3, #0
006d0400  07 00 00 da                                      ble #0x6d0424
006d0404  00 20 a0 e3                                      mov r2, #0
006d0408  02 c0 a0 e1                                      mov ip, r2
006d040c  a8 41 90 e5                                      ldr r4, [r0, #0x1a8]
006d0410  01 c0 8c e2                                      add ip, ip, #1
006d0414  03 00 5c e1                                      cmp ip, r3
006d0418  02 10 84 e7                                      str r1, [r4, r2]
006d041c  38 20 82 e2                                      add r2, r2, #0x38
006d0420  f9 ff ff 1a                                      bne #0x6d040c
006d0424  10 00 bd e8                                      ldm sp!, {r4}
006d0428  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d042c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode22setCurrentLODOfPatchesERKSt6vectorIiNS_4core10SAllocatorIiLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CTerrainSceneNode::setCurrentLODOfPatches(std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
006d042c  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
006d0430  30 00 2d e9                                      push {r4, r5}
006d0434  93 03 03 e0                                      mul r3, r3, r3
006d0438  00 00 53 e3                                      cmp r3, #0
006d043c  09 00 00 da                                      ble #0x6d0468
006d0440  00 c0 a0 e3                                      mov ip, #0
006d0444  0c 20 a0 e1                                      mov r2, ip
006d0448  00 50 91 e5                                      ldr r5, [r1]
006d044c  a8 41 90 e5                                      ldr r4, [r0, #0x1a8]
006d0450  02 51 95 e7                                      ldr r5, [r5, r2, lsl #2]
006d0454  01 20 82 e2                                      add r2, r2, #1
006d0458  03 00 52 e1                                      cmp r2, r3
006d045c  0c 50 84 e7                                      str r5, [r4, ip]
006d0460  38 c0 8c e2                                      add ip, ip, #0x38
006d0464  f7 ff ff 1a                                      bne #0x6d0448
006d0468  30 00 bd e8                                      pop {r4, r5}
006d046c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d083c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CTerrainSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006d083c  70 40 2d e9                                      push {r4, r5, r6, lr}
006d0840  01 40 a0 e1                                      mov r4, r1
006d0844  00 50 a0 e1                                      mov r5, r0
006d0848  95 1a fb eb                                      bl #0x5972a4
006d084c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
006d0850  04 00 a0 e1                                      mov r0, r4
006d0854  04 22 95 e5                                      ldr r2, [r5, #0x204]
006d0858  00 c0 94 e5                                      ldr ip, [r4]
006d085c  01 10 8f e0                                      add r1, pc, r1
006d0860  00 30 a0 e3                                      mov r3, #0
006d0864  0f e0 a0 e1                                      mov lr, pc
006d0868  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
006d086c  40 10 9f e5                                      ldr r1, [pc, #0x40]
006d0870  04 00 a0 e1                                      mov r0, r4
006d0874  e8 21 95 e5                                      ldr r2, [r5, #0x1e8]
006d0878  00 c0 94 e5                                      ldr ip, [r4]
006d087c  01 10 8f e0                                      add r1, pc, r1
006d0880  00 30 a0 e3                                      mov r3, #0
006d0884  0f e0 a0 e1                                      mov lr, pc
006d0888  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006d088c  24 10 9f e5                                      ldr r1, [pc, #0x24]
006d0890  04 00 a0 e1                                      mov r0, r4
006d0894  ec 21 95 e5                                      ldr r2, [r5, #0x1ec]
006d0898  01 10 8f e0                                      add r1, pc, r1
006d089c  00 c0 94 e5                                      ldr ip, [r4]
006d08a0  00 30 a0 e3                                      mov r3, #0
006d08a4  0f e0 a0 e1                                      mov lr, pc
006d08a8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006d08ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d08b0  f4 ab 21 00 e4 ab 21 00 d8 ab 21 00              .byte 0xf4, 0xab, 0x21, 0x00, 0xe4, 0xab, 0x21, 0x00, 0xd8, 0xab, 0x21, 0x00

; FUNCTION 0x006d0cfc, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode13createPatchesEv
; demangled: glitch::scene::CTerrainSceneNode::createPatches()
; decoder-mode: arm
006d0cfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006d0d00  00 50 a0 e1                                      mov r5, r0
006d0d04  30 01 90 e5                                      ldr r0, [r0, #0x130]
006d0d08  78 11 95 e5                                      ldr r1, [r5, #0x178]
006d0d0c  01 00 40 e2                                      sub r0, r0, #1
006d0d10  63 f5 f0 eb                                      bl #0x30e2a4
006d0d14  a8 31 95 e5                                      ldr r3, [r5, #0x1a8]
006d0d18  7c 01 85 e5                                      str r0, [r5, #0x17c]
006d0d1c  00 00 53 e3                                      cmp r3, #0
006d0d20  02 00 00 0a                                      beq #0x6d0d30
006d0d24  03 00 a0 e1                                      mov r0, r3
006d0d28  e2 f4 f0 eb                                      bl #0x30e0b8
006d0d2c  7c 01 95 e5                                      ldr r0, [r5, #0x17c]
006d0d30  90 00 04 e0                                      mul r4, r0, r0
006d0d34  38 00 a0 e3                                      mov r0, #0x38
006d0d38  90 04 00 e0                                      mul r0, r0, r4
006d0d3c  00 10 a0 e3                                      mov r1, #0
006d0d40  18 8d f9 eb                                      bl #0x5341a8
006d0d44  00 00 54 e3                                      cmp r4, #0
006d0d48  19 00 00 0a                                      beq #0x6d0db4
006d0d4c  bf 74 a0 e3                                      mov r7, #0xbf000000
006d0d50  00 10 a0 e3                                      mov r1, #0
006d0d54  02 75 87 e2                                      add r7, r7, #0x800000
006d0d58  fe 65 a0 e3                                      mov r6, #0x3f800000
006d0d5c  00 c0 a0 e3                                      mov ip, #0
006d0d60  38 30 80 e2                                      add r3, r0, #0x38
006d0d64  00 80 e0 e3                                      mvn r8, #0
006d0d68  01 20 a0 e1                                      mov r2, r1
006d0d6c  01 10 81 e2                                      add r1, r1, #1
006d0d70  01 00 54 e1                                      cmp r4, r1
006d0d74  38 80 03 e5                                      str r8, [r3, #-0x38]
006d0d78  34 70 03 e5                                      str r7, [r3, #-0x34]
006d0d7c  30 70 03 e5                                      str r7, [r3, #-0x30]
006d0d80  2c 70 03 e5                                      str r7, [r3, #-0x2c]
006d0d84  28 60 03 e5                                      str r6, [r3, #-0x28]
006d0d88  24 60 03 e5                                      str r6, [r3, #-0x24]
006d0d8c  20 60 03 e5                                      str r6, [r3, #-0x20]
006d0d90  1c c0 03 e5                                      str ip, [r3, #-0x1c]
006d0d94  18 c0 03 e5                                      str ip, [r3, #-0x18]
006d0d98  14 c0 03 e5                                      str ip, [r3, #-0x14]
006d0d9c  10 20 03 e5                                      str r2, [r3, #-0x10]
006d0da0  0c 20 03 e5                                      str r2, [r3, #-0xc]
006d0da4  08 20 03 e5                                      str r2, [r3, #-8]
006d0da8  04 20 03 e5                                      str r2, [r3, #-4]
006d0dac  38 30 83 e2                                      add r3, r3, #0x38
006d0db0  ed ff ff 1a                                      bne #0x6d0d6c
006d0db4  a8 01 85 e5                                      str r0, [r5, #0x1a8]
006d0db8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006d0dbc, declared_size=1048, range_size=1048, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode24preRenderLODCalculationsEv
; demangled: glitch::scene::CTerrainSceneNode::preRenderLODCalculations()
; decoder-mode: arm
006d0dbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d0dc0  10 71 90 e5                                      ldr r7, [r0, #0x110]
006d0dc4  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
006d0dc8  64 d0 4d e2                                      sub sp, sp, #0x64
006d0dcc  00 c0 97 e5                                      ldr ip, [r7]
006d0dd0  5c 40 8d e2                                      add r4, sp, #0x5c
006d0dd4  00 60 a0 e1                                      mov r6, r0
006d0dd8  03 10 a0 e1                                      mov r1, r3
006d0ddc  04 00 a0 e1                                      mov r0, r4
006d0de0  00 20 a0 e3                                      mov r2, #0
006d0de4  00 30 93 e5                                      ldr r3, [r3]
006d0de8  24 50 9c e5                                      ldr r5, [ip, #0x24]
006d0dec  0f e0 a0 e1                                      mov lr, pc
006d0df0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d0df4  03 30 a0 e3                                      mov r3, #3
006d0df8  00 30 8d e5                                      str r3, [sp]
006d0dfc  00 30 a0 e3                                      mov r3, #0
006d0e00  04 30 8d e5                                      str r3, [sp, #4]
006d0e04  02 31 e0 e3                                      mvn r3, #0x80000000
006d0e08  04 20 a0 e1                                      mov r2, r4
006d0e0c  06 10 a0 e1                                      mov r1, r6
006d0e10  08 30 8d e5                                      str r3, [sp, #8]
006d0e14  07 00 a0 e1                                      mov r0, r7
006d0e18  01 30 a0 e3                                      mov r3, #1
006d0e1c  35 ff 2f e1                                      blx r5
006d0e20  04 00 a0 e1                                      mov r0, r4
006d0e24  6f ff f0 eb                                      bl #0x310be8
006d0e28  10 31 96 e5                                      ldr r3, [r6, #0x110]
006d0e2c  50 00 8d e2                                      add r0, sp, #0x50
006d0e30  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
006d0e34  d1 18 fb eb                                      bl #0x597180
006d0e38  10 31 96 e5                                      ldr r3, [r6, #0x110]
006d0e3c  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
006d0e40  03 00 a0 e1                                      mov r0, r3
006d0e44  00 30 93 e5                                      ldr r3, [r3]
006d0e48  0f e0 a0 e1                                      mov lr, pc
006d0e4c  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006d0e50  50 10 9d e5                                      ldr r1, [sp, #0x50]
006d0e54  00 30 a0 e1                                      mov r3, r0
006d0e58  00 00 90 e5                                      ldr r0, [r0]
006d0e5c  04 50 93 e5                                      ldr r5, [r3, #4]
006d0e60  08 40 93 e5                                      ldr r4, [r3, #8]
006d0e64  50 f5 f0 eb                                      bl #0x30e3ac
006d0e68  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d0e6c  38 00 8d e5                                      str r0, [sp, #0x38]
006d0e70  05 00 a0 e1                                      mov r0, r5
006d0e74  4c f5 f0 eb                                      bl #0x30e3ac
006d0e78  58 10 9d e5                                      ldr r1, [sp, #0x58]
006d0e7c  3c 00 8d e5                                      str r0, [sp, #0x3c]
006d0e80  04 00 a0 e1                                      mov r0, r4
006d0e84  48 f5 f0 eb                                      bl #0x30e3ac
006d0e88  38 10 8d e2                                      add r1, sp, #0x38
006d0e8c  40 00 8d e5                                      str r0, [sp, #0x40]
006d0e90  44 00 8d e2                                      add r0, sp, #0x44
006d0e94  34 db ff eb                                      bl #0x6c7b6c
006d0e98  10 31 96 e5                                      ldr r3, [r6, #0x110]
006d0e9c  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
006d0ea0  03 00 a0 e1                                      mov r0, r3
006d0ea4  00 30 93 e5                                      ldr r3, [r3]
006d0ea8  0f e0 a0 e1                                      mov lr, pc
006d0eac  28 f1 93 e5                                      ldr pc, [r3, #0x128]
006d0eb0  bf 31 d6 e5                                      ldrb r3, [r6, #0x1bf]
006d0eb4  00 50 a0 e1                                      mov r5, r0
006d0eb8  00 00 53 e3                                      cmp r3, #0
006d0ebc  08 00 00 1a                                      bne #0x6d0ee4
006d0ec0  cc 11 96 e5                                      ldr r1, [r6, #0x1cc]
006d0ec4  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d0ec8  37 f5 f0 eb                                      bl #0x30e3ac
006d0ecc  e0 41 96 e5                                      ldr r4, [r6, #0x1e0]
006d0ed0  02 11 c0 e3                                      bic r1, r0, #0x80000000
006d0ed4  04 00 a0 e1                                      mov r0, r4
006d0ed8  06 f5 f0 eb                                      bl #0x30e2f8
006d0edc  00 00 50 e3                                      cmp r0, #0
006d0ee0  90 00 00 1a                                      bne #0x6d1128
006d0ee4  50 40 9d e5                                      ldr r4, [sp, #0x50]
006d0ee8  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d0eec  54 e0 9d e5                                      ldr lr, [sp, #0x54]
006d0ef0  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006d0ef4  48 10 9d e5                                      ldr r1, [sp, #0x48]
006d0ef8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006d0efc  10 31 96 e5                                      ldr r3, [r6, #0x110]
006d0f00  cc 01 86 e5                                      str r0, [r6, #0x1cc]
006d0f04  c0 41 86 e5                                      str r4, [r6, #0x1c0]
006d0f08  c4 e1 86 e5                                      str lr, [r6, #0x1c4]
006d0f0c  c8 c1 86 e5                                      str ip, [r6, #0x1c8]
006d0f10  d0 11 86 e5                                      str r1, [r6, #0x1d0]
006d0f14  d4 21 86 e5                                      str r2, [r6, #0x1d4]
006d0f18  d8 51 86 e5                                      str r5, [r6, #0x1d8]
006d0f1c  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
006d0f20  03 00 a0 e1                                      mov r0, r3
006d0f24  00 30 93 e5                                      ldr r3, [r3]
006d0f28  0f e0 a0 e1                                      mov lr, pc
006d0f2c  44 f1 93 e5                                      ldr pc, [r3, #0x144]
006d0f30  7c 31 96 e5                                      ldr r3, [r6, #0x17c]
006d0f34  00 b0 a0 e1                                      mov fp, r0
006d0f38  93 03 03 e0                                      mul r3, r3, r3
006d0f3c  00 00 53 e3                                      cmp r3, #0
006d0f40  30 30 8d e5                                      str r3, [sp, #0x30]
006d0f44  72 00 00 da                                      ble #0x6d1114
006d0f48  00 a0 a0 e3                                      mov sl, #0
006d0f4c  0a 90 a0 e1                                      mov sb, sl
006d0f50  0a 80 a0 e1                                      mov r8, sl
006d0f54  a8 51 96 e5                                      ldr r5, [r6, #0x1a8]
006d0f58  6c 00 9b e5                                      ldr r0, [fp, #0x6c]
006d0f5c  0a 40 85 e0                                      add r4, r5, sl
006d0f60  10 10 94 e5                                      ldr r1, [r4, #0x10]
006d0f64  90 f6 f0 eb                                      bl #0x30e9ac
006d0f68  00 00 50 e3                                      cmp r0, #0
006d0f6c  2c 50 8d e5                                      str r5, [sp, #0x2c]
006d0f70  69 00 00 0a                                      beq #0x6d111c
006d0f74  70 00 9b e5                                      ldr r0, [fp, #0x70]
006d0f78  14 10 94 e5                                      ldr r1, [r4, #0x14]
006d0f7c  8a f6 f0 eb                                      bl #0x30e9ac
006d0f80  00 00 50 e3                                      cmp r0, #0
006d0f84  64 00 00 0a                                      beq #0x6d111c
006d0f88  74 00 9b e5                                      ldr r0, [fp, #0x74]
006d0f8c  18 10 94 e5                                      ldr r1, [r4, #0x18]
006d0f90  85 f6 f0 eb                                      bl #0x30e9ac
006d0f94  00 00 50 e3                                      cmp r0, #0
006d0f98  5f 00 00 0a                                      beq #0x6d111c
006d0f9c  78 00 9b e5                                      ldr r0, [fp, #0x78]
006d0fa0  04 10 94 e5                                      ldr r1, [r4, #4]
006d0fa4  42 f5 f0 eb                                      bl #0x30e4b4
006d0fa8  00 00 50 e3                                      cmp r0, #0
006d0fac  5a 00 00 0a                                      beq #0x6d111c
006d0fb0  7c 00 9b e5                                      ldr r0, [fp, #0x7c]
006d0fb4  08 10 94 e5                                      ldr r1, [r4, #8]
006d0fb8  3d f5 f0 eb                                      bl #0x30e4b4
006d0fbc  00 00 50 e3                                      cmp r0, #0
006d0fc0  55 00 00 0a                                      beq #0x6d111c
006d0fc4  80 00 9b e5                                      ldr r0, [fp, #0x80]
006d0fc8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006d0fcc  38 f5 f0 eb                                      bl #0x30e4b4
006d0fd0  00 00 50 e3                                      cmp r0, #0
006d0fd4  50 00 00 0a                                      beq #0x6d111c
006d0fd8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006d0fdc  80 c1 96 e5                                      ldr ip, [r6, #0x180]
006d0fe0  24 10 94 e5                                      ldr r1, [r4, #0x24]
006d0fe4  20 30 8d e5                                      str r3, [sp, #0x20]
006d0fe8  01 70 5c e2                                      subs r7, ip, #1
006d0fec  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d0ff0  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d0ff4  20 40 94 e5                                      ldr r4, [r4, #0x20]
006d0ff8  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d0ffc  3f 00 00 4a                                      bmi #0x6d1100
006d1000  14 c0 8d e5                                      str ip, [sp, #0x14]
006d1004  18 20 8d e5                                      str r2, [sp, #0x18]
006d1008  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d100c  e6 f4 f0 eb                                      bl #0x30e3ac
006d1010  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d1014  04 10 a0 e1                                      mov r1, r4
006d1018  34 00 8d e5                                      str r0, [sp, #0x34]
006d101c  03 00 a0 e1                                      mov r0, r3
006d1020  e1 f4 f0 eb                                      bl #0x30e3ac
006d1024  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d1028  00 40 a0 e1                                      mov r4, r0
006d102c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d1030  02 00 a0 e1                                      mov r0, r2
006d1034  dc f4 f0 eb                                      bl #0x30e3ac
006d1038  00 10 a0 e1                                      mov r1, r0
006d103c  4a f7 f0 eb                                      bl #0x30ed6c
006d1040  04 10 a0 e1                                      mov r1, r4
006d1044  00 30 a0 e1                                      mov r3, r0
006d1048  04 00 a0 e1                                      mov r0, r4
006d104c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d1050  45 f7 f0 eb                                      bl #0x30ed6c
006d1054  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d1058  00 10 a0 e1                                      mov r1, r0
006d105c  03 00 a0 e1                                      mov r0, r3
006d1060  cf f6 f0 eb                                      bl #0x30eba4
006d1064  00 40 a0 e1                                      mov r4, r0
006d1068  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d106c  00 10 a0 e1                                      mov r1, r0
006d1070  3d f7 f0 eb                                      bl #0x30ed6c
006d1074  00 10 a0 e1                                      mov r1, r0
006d1078  04 00 a0 e1                                      mov r0, r4
006d107c  c8 f6 f0 eb                                      bl #0x30eba4
006d1080  07 f6 f0 eb                                      bl #0x30e8a4
006d1084  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
006d1088  9c 21 96 e5                                      ldr r2, [r6, #0x19c]
006d108c  87 31 a0 e1                                      lsl r3, r7, #3
006d1090  02 30 83 e0                                      add r3, r3, r2
006d1094  d0 20 c3 e1                                      ldrd r2, r3, [r3]
006d1098  cc f4 f0 eb                                      bl #0x30e3d0
006d109c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006d10a0  00 00 50 e3                                      cmp r0, #0
006d10a4  02 c0 4c 02                                      subeq ip, ip, #2
006d10a8  8c 41 a0 01                                      lsleq r4, ip, #3
006d10ac  01 00 00 0a                                      beq #0x6d10b8
006d10b0  10 00 00 ea                                      b #0x6d10f8
006d10b4  a8 51 96 e5                                      ldr r5, [r6, #0x1a8]
006d10b8  01 70 47 e2                                      sub r7, r7, #1
006d10bc  01 00 77 e3                                      cmn r7, #1
006d10c0  d0 02 cd e1                                      ldrd r0, r1, [sp, #0x20]
006d10c4  0a 80 85 e7                                      str r8, [r5, sl]
006d10c8  0c 00 00 0a                                      beq #0x6d1100
006d10cc  9c 31 96 e5                                      ldr r3, [r6, #0x19c]
006d10d0  08 50 a0 e1                                      mov r5, r8
006d10d4  d4 20 83 e1                                      ldrd r2, r3, [r3, r4]
006d10d8  bc f4 f0 eb                                      bl #0x30e3d0
006d10dc  00 00 50 e3                                      cmp r0, #0
006d10e0  01 50 a0 13                                      movne r5, #1
006d10e4  ff 00 15 e3                                      tst r5, #0xff
006d10e8  08 40 44 e2                                      sub r4, r4, #8
006d10ec  f0 ff ff 0a                                      beq #0x6d10b4
006d10f0  a8 31 96 e5                                      ldr r3, [r6, #0x1a8]
006d10f4  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d10f8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006d10fc  0a 70 83 e7                                      str r7, [r3, sl]
006d1100  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d1104  01 90 89 e2                                      add sb, sb, #1
006d1108  38 a0 8a e2                                      add sl, sl, #0x38
006d110c  03 00 59 e1                                      cmp sb, r3
006d1110  8f ff ff 1a                                      bne #0x6d0f54
006d1114  64 d0 8d e2                                      add sp, sp, #0x64
006d1118  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d111c  00 30 e0 e3                                      mvn r3, #0
006d1120  00 30 84 e5                                      str r3, [r4]
006d1124  f5 ff ff ea                                      b #0x6d1100
006d1128  d0 11 96 e5                                      ldr r1, [r6, #0x1d0]
006d112c  48 00 9d e5                                      ldr r0, [sp, #0x48]
006d1130  9d f4 f0 eb                                      bl #0x30e3ac
006d1134  02 11 c0 e3                                      bic r1, r0, #0x80000000
006d1138  04 00 a0 e1                                      mov r0, r4
006d113c  6d f4 f0 eb                                      bl #0x30e2f8
006d1140  00 00 50 e3                                      cmp r0, #0
006d1144  66 ff ff 0a                                      beq #0x6d0ee4
006d1148  50 40 9d e5                                      ldr r4, [sp, #0x50]
006d114c  c0 11 96 e5                                      ldr r1, [r6, #0x1c0]
006d1150  dc 71 96 e5                                      ldr r7, [r6, #0x1dc]
006d1154  04 00 a0 e1                                      mov r0, r4
006d1158  93 f4 f0 eb                                      bl #0x30e3ac
006d115c  02 11 c0 e3                                      bic r1, r0, #0x80000000
006d1160  07 00 a0 e1                                      mov r0, r7
006d1164  63 f4 f0 eb                                      bl #0x30e2f8
006d1168  00 00 50 e3                                      cmp r0, #0
006d116c  5d ff ff 0a                                      beq #0x6d0ee8
006d1170  c4 11 96 e5                                      ldr r1, [r6, #0x1c4]
006d1174  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d1178  8b f4 f0 eb                                      bl #0x30e3ac
006d117c  02 11 c0 e3                                      bic r1, r0, #0x80000000
006d1180  07 00 a0 e1                                      mov r0, r7
006d1184  5b f4 f0 eb                                      bl #0x30e2f8
006d1188  00 00 50 e3                                      cmp r0, #0
006d118c  55 ff ff 0a                                      beq #0x6d0ee8
006d1190  c8 11 96 e5                                      ldr r1, [r6, #0x1c8]
006d1194  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d1198  83 f4 f0 eb                                      bl #0x30e3ac
006d119c  02 11 c0 e3                                      bic r1, r0, #0x80000000
006d11a0  07 00 a0 e1                                      mov r0, r7
006d11a4  53 f4 f0 eb                                      bl #0x30e2f8
006d11a8  00 00 50 e3                                      cmp r0, #0
006d11ac  4d ff ff 0a                                      beq #0x6d0ee8
006d11b0  d8 11 96 e5                                      ldr r1, [r6, #0x1d8]
006d11b4  05 00 a0 e1                                      mov r0, r5
006d11b8  7b f4 f0 eb                                      bl #0x30e3ac
006d11bc  02 11 c0 e3                                      bic r1, r0, #0x80000000
006d11c0  e4 01 96 e5                                      ldr r0, [r6, #0x1e4]
006d11c4  4b f4 f0 eb                                      bl #0x30e2f8
006d11c8  00 00 50 e3                                      cmp r0, #0
006d11cc  45 ff ff 0a                                      beq #0x6d0ee8
006d11d0  cf ff ff ea                                      b #0x6d1114

; FUNCTION 0x006d127c, declared_size=176, range_size=176, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNodeD2Ev
; demangled: glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d127c  70 40 2d e9                                      push {r4, r5, r6, lr}
006d1280  00 30 91 e5                                      ldr r3, [r1]
006d1284  00 40 a0 e1                                      mov r4, r0
006d1288  01 50 a0 e1                                      mov r5, r1
006d128c  00 30 80 e5                                      str r3, [r0]
006d1290  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006d1294  10 20 91 e5                                      ldr r2, [r1, #0x10]
006d1298  03 20 80 e7                                      str r2, [r0, r3]
006d129c  00 30 90 e5                                      ldr r3, [r0]
006d12a0  14 20 91 e5                                      ldr r2, [r1, #0x14]
006d12a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d12a8  03 20 80 e7                                      str r2, [r0, r3]
006d12ac  a8 01 90 e5                                      ldr r0, [r0, #0x1a8]
006d12b0  00 00 50 e3                                      cmp r0, #0
006d12b4  00 00 00 0a                                      beq #0x6d12bc
006d12b8  7e f3 f0 eb                                      bl #0x30e0b8
006d12bc  08 02 94 e5                                      ldr r0, [r4, #0x208]
006d12c0  00 00 50 e3                                      cmp r0, #0
006d12c4  00 00 00 0a                                      beq #0x6d12cc
006d12c8  ad 30 f1 eb                                      bl #0x31d584
006d12cc  1f 3e 84 e2                                      add r3, r4, #0x1f0
006d12d0  14 00 93 e5                                      ldr r0, [r3, #0x14]
006d12d4  03 00 50 e1                                      cmp r0, r3
006d12d8  02 00 00 0a                                      beq #0x6d12e8
006d12dc  00 00 50 e3                                      cmp r0, #0
006d12e0  00 00 00 0a                                      beq #0x6d12e8
006d12e4  59 fc f0 eb                                      bl #0x310450
006d12e8  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006d12ec  00 00 50 e3                                      cmp r0, #0
006d12f0  00 00 00 0a                                      beq #0x6d12f8
006d12f4  a2 30 f1 eb                                      bl #0x31d584
006d12f8  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
006d12fc  00 00 50 e3                                      cmp r0, #0
006d1300  00 00 00 0a                                      beq #0x6d1308
006d1304  9e 30 f1 eb                                      bl #0x31d584
006d1308  9c 01 94 e5                                      ldr r0, [r4, #0x19c]
006d130c  00 00 50 e3                                      cmp r0, #0
006d1310  00 00 00 0a                                      beq #0x6d1318
006d1314  4d fc f0 eb                                      bl #0x310450
006d1318  04 10 85 e2                                      add r1, r5, #4
006d131c  04 00 a0 e1                                      mov r0, r4
006d1320  65 1e fb eb                                      bl #0x598cbc
006d1324  04 00 a0 e1                                      mov r0, r4
006d1328  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006d132c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNodeD1Ev
; demangled: glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d132c  70 40 2d e9                                      push {r4, r5, r6, lr}
006d1330  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
006d1334  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
006d1338  00 40 a0 e1                                      mov r4, r0
006d133c  05 50 8f e0                                      add r5, pc, r5
006d1340  a8 01 90 e5                                      ldr r0, [r0, #0x1a8]
006d1344  03 30 95 e7                                      ldr r3, [r5, r3]
006d1348  00 00 50 e3                                      cmp r0, #0
006d134c  4a 2f 83 e2                                      add r2, r3, #0x128
006d1350  1c 30 83 e2                                      add r3, r3, #0x1c
006d1354  00 30 84 e5                                      str r3, [r4]
006d1358  0c 22 84 e5                                      str r2, [r4, #0x20c]
006d135c  00 00 00 0a                                      beq #0x6d1364
006d1360  54 f3 f0 eb                                      bl #0x30e0b8
006d1364  08 02 94 e5                                      ldr r0, [r4, #0x208]
006d1368  00 00 50 e3                                      cmp r0, #0
006d136c  00 00 00 0a                                      beq #0x6d1374
006d1370  83 30 f1 eb                                      bl #0x31d584
006d1374  1f 3e 84 e2                                      add r3, r4, #0x1f0
006d1378  14 00 93 e5                                      ldr r0, [r3, #0x14]
006d137c  03 00 50 e1                                      cmp r0, r3
006d1380  02 00 00 0a                                      beq #0x6d1390
006d1384  00 00 50 e3                                      cmp r0, #0
006d1388  00 00 00 0a                                      beq #0x6d1390
006d138c  2f fc f0 eb                                      bl #0x310450
006d1390  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006d1394  00 00 50 e3                                      cmp r0, #0
006d1398  00 00 00 0a                                      beq #0x6d13a0
006d139c  78 30 f1 eb                                      bl #0x31d584
006d13a0  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
006d13a4  00 00 50 e3                                      cmp r0, #0
006d13a8  00 00 00 0a                                      beq #0x6d13b0
006d13ac  74 30 f1 eb                                      bl #0x31d584
006d13b0  9c 01 94 e5                                      ldr r0, [r4, #0x19c]
006d13b4  00 00 50 e3                                      cmp r0, #0
006d13b8  00 00 00 0a                                      beq #0x6d13c0
006d13bc  23 fc f0 eb                                      bl #0x310450
006d13c0  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
006d13c4  04 00 a0 e1                                      mov r0, r4
006d13c8  01 10 95 e7                                      ldr r1, [r5, r1]
006d13cc  04 10 81 e2                                      add r1, r1, #4
006d13d0  39 1e fb eb                                      bl #0x598cbc
006d13d4  04 00 a0 e1                                      mov r0, r4
006d13d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d13dc  54 37 2c 00 e8 12 00 00 7c 06 00 00              .byte 0x54, 0x37, 0x2c, 0x00, 0xe8, 0x12, 0x00, 0x00, 0x7c, 0x06, 0x00, 0x00

; FUNCTION 0x006d13e8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNodeD0Ev
; demangled: glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d13e8  10 40 2d e9                                      push {r4, lr}
006d13ec  00 40 a0 e1                                      mov r4, r0
006d13f0  cd ff ff eb                                      bl #0x6d132c
006d13f4  04 00 a0 e1                                      mov r0, r4
006d13f8  ac f3 f0 eb                                      bl #0x30e2b0
006d13fc  04 00 a0 e1                                      mov r0, r4
006d1400  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d1650, declared_size=284, range_size=284, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode27calculateDistanceThresholdsEb
; demangled: glitch::scene::CTerrainSceneNode::calculateDistanceThresholds(bool)
; decoder-mode: arm
006d1650  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d1654  bd 31 d0 e5                                      ldrb r3, [r0, #0x1bd]
006d1658  24 d0 4d e2                                      sub sp, sp, #0x24
006d165c  00 40 a0 e1                                      mov r4, r0
006d1660  00 00 53 e3                                      cmp r3, #0
006d1664  01 00 00 0a                                      beq #0x6d1670
006d1668  24 d0 8d e2                                      add sp, sp, #0x24
006d166c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d1670  a0 11 90 e5                                      ldr r1, [r0, #0x1a0]
006d1674  9c 31 90 e5                                      ldr r3, [r0, #0x19c]
006d1678  00 60 a0 e3                                      mov r6, #0
006d167c  00 70 a0 e3                                      mov r7, #0
006d1680  01 20 63 e0                                      rsb r2, r3, r1
006d1684  c2 21 b0 e1                                      asrs r2, r2, #3
006d1688  f0 61 cd e1                                      strd r6, r7, [sp, #0x10]
006d168c  67 8f 80 e2                                      add r8, r0, #0x19c
006d1690  31 00 00 0a                                      beq #0x6d175c
006d1694  03 00 51 e1                                      cmp r1, r3
006d1698  a0 31 80 15                                      strne r3, [r0, #0x1a0]
006d169c  80 11 94 e5                                      ldr r1, [r4, #0x180]
006d16a0  08 00 a0 e1                                      mov r0, r8
006d16a4  6a fd ff eb                                      bl #0x6d0c54
006d16a8  74 01 94 e5                                      ldr r0, [r4, #0x174]
006d16ac  08 90 8d e2                                      add sb, sp, #8
006d16b0  1c b0 8d e2                                      add fp, sp, #0x1c
006d16b4  90 00 00 e0                                      mul r0, r0, r0
006d16b8  a9 f4 f0 eb                                      bl #0x30e964
006d16bc  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006d16c0  a9 f5 f0 eb                                      bl #0x30ed6c
006d16c4  64 11 94 e5                                      ldr r1, [r4, #0x164]
006d16c8  a7 f5 f0 eb                                      bl #0x30ed6c
006d16cc  74 f4 f0 eb                                      bl #0x30e8a4
006d16d0  01 a0 a0 e3                                      mov sl, #1
006d16d4  00 60 a0 e1                                      mov r6, r0
006d16d8  01 70 a0 e1                                      mov r7, r1
006d16dc  00 30 a0 e3                                      mov r3, #0
006d16e0  80 21 94 e5                                      ldr r2, [r4, #0x180]
006d16e4  01 50 83 e2                                      add r5, r3, #1
006d16e8  c3 00 85 e0                                      add r0, r5, r3, asr #1
006d16ec  02 00 53 e1                                      cmp r3, r2
006d16f0  90 00 00 e0                                      mul r0, r0, r0
006d16f4  db ff ff aa                                      bge #0x6d1668
006d16f8  8c f5 f0 eb                                      bl #0x30ed30
006d16fc  06 20 a0 e1                                      mov r2, r6
006d1700  07 30 a0 e1                                      mov r3, r7
006d1704  ea f4 f0 eb                                      bl #0x30eab4
006d1708  00 20 a0 e1                                      mov r2, r0
006d170c  01 30 a0 e1                                      mov r3, r1
006d1710  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
006d1714  a0 11 94 e5                                      ldr r1, [r4, #0x1a0]
006d1718  f8 20 cd e1                                      strd r2, r3, [sp, #8]
006d171c  00 00 51 e1                                      cmp r1, r0
006d1720  05 00 00 0a                                      beq #0x6d173c
006d1724  f0 20 c1 e1                                      strd r2, r3, [r1]
006d1728  a0 31 94 e5                                      ldr r3, [r4, #0x1a0]
006d172c  08 30 83 e2                                      add r3, r3, #8
006d1730  a0 31 84 e5                                      str r3, [r4, #0x1a0]
006d1734  05 30 a0 e1                                      mov r3, r5
006d1738  e8 ff ff ea                                      b #0x6d16e0
006d173c  0b 30 a0 e1                                      mov r3, fp
006d1740  08 00 a0 e1                                      mov r0, r8
006d1744  09 20 a0 e1                                      mov r2, sb
006d1748  00 a0 8d e5                                      str sl, [sp]
006d174c  04 a0 8d e5                                      str sl, [sp, #4]
006d1750  70 ff ff eb                                      bl #0x6d1518
006d1754  05 30 a0 e1                                      mov r3, r5
006d1758  e0 ff ff ea                                      b #0x6d16e0
006d175c  08 00 a0 e1                                      mov r0, r8
006d1760  10 30 8d e2                                      add r3, sp, #0x10
006d1764  9b ff ff eb                                      bl #0x6d15d8
006d1768  cb ff ff ea                                      b #0x6d169c

; FUNCTION 0x006d176c, declared_size=336, range_size=336, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode6renderEPv
; demangled: glitch::scene::CTerrainSceneNode::render(void*)
; decoder-mode: arm
006d176c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006d1770  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
006d1774  38 71 9f e5                                      ldr r7, [pc, #0x138]
006d1778  14 d0 4d e2                                      sub sp, sp, #0x14
006d177c  01 00 13 e3                                      tst r3, #1
006d1780  00 40 a0 e1                                      mov r4, r0
006d1784  01 50 a0 e1                                      mov r5, r1
006d1788  07 70 8f e0                                      add r7, pc, r7
006d178c  0a 00 00 0a                                      beq #0x6d17bc
006d1790  10 31 90 e5                                      ldr r3, [r0, #0x110]
006d1794  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
006d1798  00 00 53 e3                                      cmp r3, #0
006d179c  06 00 00 0a                                      beq #0x6d17bc
006d17a0  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
006d17a4  03 00 a0 e1                                      mov r0, r3
006d17a8  00 30 93 e5                                      ldr r3, [r3]
006d17ac  0f e0 a0 e1                                      mov lr, pc
006d17b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d17b4  00 00 50 e3                                      cmp r0, #0
006d17b8  01 00 00 1a                                      bne #0x6d17c4
006d17bc  14 d0 8d e2                                      add sp, sp, #0x14
006d17c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006d17c4  10 31 94 e5                                      ldr r3, [r4, #0x110]
006d17c8  01 10 a0 e3                                      mov r1, #1
006d17cc  14 60 93 e5                                      ldr r6, [r3, #0x14]
006d17d0  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
006d17d4  06 00 a0 e1                                      mov r0, r6
006d17d8  03 20 97 e7                                      ldr r2, [r7, r3]
006d17dc  00 30 96 e5                                      ldr r3, [r6]
006d17e0  0f e0 a0 e1                                      mov lr, pc
006d17e4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006d17e8  00 00 55 e3                                      cmp r5, #0
006d17ec  f2 ff ff 0a                                      beq #0x6d17bc
006d17f0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006d17f4  0c 50 8d e2                                      add r5, sp, #0xc
006d17f8  05 00 a0 e1                                      mov r0, r5
006d17fc  03 10 a0 e1                                      mov r1, r3
006d1800  00 20 a0 e3                                      mov r2, #0
006d1804  00 30 93 e5                                      ldr r3, [r3]
006d1808  0f e0 a0 e1                                      mov lr, pc
006d180c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d1810  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006d1814  00 20 a0 e3                                      mov r2, #0
006d1818  08 00 8d e2                                      add r0, sp, #8
006d181c  03 10 a0 e1                                      mov r1, r3
006d1820  00 30 93 e5                                      ldr r3, [r3]
006d1824  0f e0 a0 e1                                      mov lr, pc
006d1828  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006d182c  08 30 9d e5                                      ldr r3, [sp, #8]
006d1830  06 00 a0 e1                                      mov r0, r6
006d1834  05 10 a0 e1                                      mov r1, r5
006d1838  00 00 53 e3                                      cmp r3, #0
006d183c  04 30 8d e5                                      str r3, [sp, #4]
006d1840  00 20 93 15                                      ldrne r2, [r3]
006d1844  01 20 82 12                                      addne r2, r2, #1
006d1848  00 20 83 15                                      strne r2, [r3]
006d184c  04 20 8d e2                                      add r2, sp, #4
006d1850  ae 34 f2 eb                                      bl #0x35eb10
006d1854  04 00 9d e5                                      ldr r0, [sp, #4]
006d1858  00 00 50 e3                                      cmp r0, #0
006d185c  00 00 00 0a                                      beq #0x6d1864
006d1860  c0 42 f2 eb                                      bl #0x362368
006d1864  08 00 9d e5                                      ldr r0, [sp, #8]
006d1868  00 00 50 e3                                      cmp r0, #0
006d186c  00 00 00 0a                                      beq #0x6d1874
006d1870  bc 42 f2 eb                                      bl #0x362368
006d1874  05 00 a0 e1                                      mov r0, r5
006d1878  da fc f0 eb                                      bl #0x310be8
006d187c  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
006d1880  06 00 a0 e1                                      mov r0, r6
006d1884  0d 10 a0 e1                                      mov r1, sp
006d1888  00 00 53 e3                                      cmp r3, #0
006d188c  00 30 8d e5                                      str r3, [sp]
006d1890  04 20 93 15                                      ldrne r2, [r3, #4]
006d1894  01 20 82 12                                      addne r2, r2, #1
006d1898  04 20 83 15                                      strne r2, [r3, #4]
006d189c  cb 34 f2 eb                                      bl #0x35ebd0
006d18a0  00 00 9d e5                                      ldr r0, [sp]
006d18a4  00 00 50 e3                                      cmp r0, #0
006d18a8  c3 ff ff 0a                                      beq #0x6d17bc
006d18ac  34 2f f1 eb                                      bl #0x31d584
006d18b0  c1 ff ff ea                                      b #0x6d17bc
; mapping-symbol data/literal pool
006d18b4  08 33 2c 00 30 28 00 00                          .byte 0x08, 0x33, 0x2c, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x006d18bc, declared_size=672, range_size=672, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNodeC2ERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEijiNS0_20E_TERRAIN_PATCH_SIZEERKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::scene::CTerrainSceneNode::CTerrainSceneNode(boost::intrusive_ptr<glitch::io::IFileSystem> const&, int, unsigned int, int, glitch::scene::E_TERRAIN_PATCH_SIZE, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d18bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006d18c0  48 d0 4d e2                                      sub sp, sp, #0x48
006d18c4  74 70 9d e5                                      ldr r7, [sp, #0x74]
006d18c8  78 60 9d e5                                      ldr r6, [sp, #0x78]
006d18cc  7c 80 9d e5                                      ldr r8, [sp, #0x7c]
006d18d0  01 50 a0 e1                                      mov r5, r1
006d18d4  02 a0 a0 e1                                      mov sl, r2
006d18d8  04 10 81 e2                                      add r1, r1, #4
006d18dc  03 20 a0 e1                                      mov r2, r3
006d18e0  07 30 a0 e1                                      mov r3, r7
006d18e4  00 40 a0 e1                                      mov r4, r0
006d18e8  68 90 9d e5                                      ldr sb, [sp, #0x68]
006d18ec  40 01 8d e8                                      stm sp, {r6, r8}
006d18f0  f2 1d fb eb                                      bl #0x5990c0
006d18f4  00 10 95 e5                                      ldr r1, [r5]
006d18f8  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006d18fc  07 30 a0 e1                                      mov r3, r7
006d1900  00 10 84 e5                                      str r1, [r4]
006d1904  1c c0 11 e5                                      ldr ip, [r1, #-0x1c]
006d1908  10 e0 95 e5                                      ldr lr, [r5, #0x10]
006d190c  70 10 9d e5                                      ldr r1, [sp, #0x70]
006d1910  13 0e 84 e2                                      add r0, r4, #0x130
006d1914  0c e0 84 e7                                      str lr, [r4, ip]
006d1918  00 c0 94 e5                                      ldr ip, [r4]
006d191c  14 e0 95 e5                                      ldr lr, [r5, #0x14]
006d1920  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006d1924  40 01 8d e8                                      stm sp, {r6, r8}
006d1928  0c e0 84 e7                                      str lr, [r4, ip]
006d192c  f0 f9 ff eb                                      bl #0x6d00f4
006d1930  00 10 a0 e3                                      mov r1, #0
006d1934  2c 00 a0 e3                                      mov r0, #0x2c
006d1938  1b 8a f9 eb                                      bl #0x5341ac
006d193c  00 50 a0 e1                                      mov r5, r0
006d1940  63 a8 ff eb                                      bl #0x6bbad4
006d1944  00 00 55 e3                                      cmp r5, #0
006d1948  ac 51 84 e5                                      str r5, [r4, #0x1ac]
006d194c  04 30 95 15                                      ldrne r3, [r5, #4]
006d1950  01 10 a0 e3                                      mov r1, #1
006d1954  fe 25 a0 e3                                      mov r2, #0x3f800000
006d1958  01 30 83 12                                      addne r3, r3, #1
006d195c  04 30 85 15                                      strne r3, [r5, #4]
006d1960  be 11 c4 e5                                      strb r1, [r4, #0x1be]
006d1964  41 14 a0 e3                                      mov r1, #0x41000000
006d1968  02 16 81 e2                                      add r1, r1, #0x200000
006d196c  dc 11 84 e5                                      str r1, [r4, #0x1dc]
006d1970  f3 3f 04 e3                                      movw r3, #0x4ff3
006d1974  cd 1c 0c e3                                      movw r1, #0xcccd
006d1978  00 50 a0 e3                                      mov r5, #0
006d197c  c3 37 4c e3                                      movt r3, #0xc7c3
006d1980  1f 0e 84 e2                                      add r0, r4, #0x1f0
006d1984  cc 1d 43 e3                                      movt r1, #0x3dcc
006d1988  ec 21 84 e5                                      str r2, [r4, #0x1ec]
006d198c  e0 21 84 e5                                      str r2, [r4, #0x1e0]
006d1990  e8 21 84 e5                                      str r2, [r4, #0x1e8]
006d1994  d4 31 84 e5                                      str r3, [r4, #0x1d4]
006d1998  e4 11 84 e5                                      str r1, [r4, #0x1e4]
006d199c  b0 51 84 e5                                      str r5, [r4, #0x1b0]
006d19a0  b4 51 84 e5                                      str r5, [r4, #0x1b4]
006d19a4  b8 51 84 e5                                      str r5, [r4, #0x1b8]
006d19a8  bc 51 c4 e5                                      strb r5, [r4, #0x1bc]
006d19ac  bd 51 c4 e5                                      strb r5, [r4, #0x1bd]
006d19b0  bf 51 c4 e5                                      strb r5, [r4, #0x1bf]
006d19b4  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006d19b8  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006d19bc  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006d19c0  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006d19c4  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006d19c8  00 02 84 e5                                      str r0, [r4, #0x200]
006d19cc  04 02 84 e5                                      str r0, [r4, #0x204]
006d19d0  28 fe ff eb                                      bl #0x6d1278
006d19d4  00 32 94 e5                                      ldr r3, [r4, #0x200]
006d19d8  38 00 a0 e3                                      mov r0, #0x38
006d19dc  00 50 c3 e5                                      strb r5, [r3]
006d19e0  00 30 9a e5                                      ldr r3, [sl]
006d19e4  08 32 84 e5                                      str r3, [r4, #0x208]
006d19e8  05 00 53 e1                                      cmp r3, r5
006d19ec  04 20 93 15                                      ldrne r2, [r3, #4]
006d19f0  01 20 82 12                                      addne r2, r2, #1
006d19f4  04 20 83 15                                      strne r2, [r3, #4]
006d19f8  00 30 a0 e3                                      mov r3, #0
006d19fc  03 10 a0 e1                                      mov r1, r3
006d1a00  24 30 8d e5                                      str r3, [sp, #0x24]
006d1a04  28 30 8d e5                                      str r3, [sp, #0x28]
006d1a08  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d1a0c  30 30 8d e5                                      str r3, [sp, #0x30]
006d1a10  34 30 8d e5                                      str r3, [sp, #0x34]
006d1a14  ff 30 a0 e3                                      mov r3, #0xff
006d1a18  b8 33 cd e1                                      strh r3, [sp, #0x38]
006d1a1c  06 30 a0 e3                                      mov r3, #6
006d1a20  ba 33 cd e1                                      strh r3, [sp, #0x3a]
006d1a24  e0 89 f9 eb                                      bl #0x5341ac
006d1a28  09 10 a0 e1                                      mov r1, sb
006d1a2c  24 20 8d e2                                      add r2, sp, #0x24
006d1a30  00 50 a0 e1                                      mov r5, r0
006d1a34  e6 fd ff eb                                      bl #0x6d11d4
006d1a38  00 00 55 e3                                      cmp r5, #0
006d1a3c  44 50 8d e5                                      str r5, [sp, #0x44]
006d1a40  04 30 95 15                                      ldrne r3, [r5, #4]
006d1a44  01 30 83 12                                      addne r3, r3, #1
006d1a48  04 30 85 15                                      strne r3, [r5, #4]
006d1a4c  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d1a50  00 00 50 e3                                      cmp r0, #0
006d1a54  00 00 00 0a                                      beq #0x6d1a5c
006d1a58  c9 2e f1 eb                                      bl #0x31d584
006d1a5c  40 50 8d e2                                      add r5, sp, #0x40
006d1a60  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
006d1a64  00 c0 a0 e3                                      mov ip, #0
006d1a68  44 10 8d e2                                      add r1, sp, #0x44
006d1a6c  05 20 a0 e1                                      mov r2, r5
006d1a70  3c 30 8d e2                                      add r3, sp, #0x3c
006d1a74  3c c0 8d e5                                      str ip, [sp, #0x3c]
006d1a78  40 c0 8d e5                                      str ip, [sp, #0x40]
006d1a7c  f8 aa ff eb                                      bl #0x6bc664
006d1a80  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
006d1a84  00 00 56 e3                                      cmp r6, #0
006d1a88  04 00 00 0a                                      beq #0x6d1aa0
006d1a8c  00 30 96 e5                                      ldr r3, [r6]
006d1a90  01 30 43 e2                                      sub r3, r3, #1
006d1a94  00 00 53 e3                                      cmp r3, #0
006d1a98  00 30 86 e5                                      str r3, [r6]
006d1a9c  29 00 00 0a                                      beq #0x6d1b48
006d1aa0  05 00 a0 e1                                      mov r0, r5
006d1aa4  4f fc f0 eb                                      bl #0x310be8
006d1aa8  00 30 a0 e3                                      mov r3, #0
006d1aac  03 10 a0 e1                                      mov r1, r3
006d1ab0  0c 30 8d e5                                      str r3, [sp, #0xc]
006d1ab4  10 30 8d e5                                      str r3, [sp, #0x10]
006d1ab8  14 30 8d e5                                      str r3, [sp, #0x14]
006d1abc  18 30 8d e5                                      str r3, [sp, #0x18]
006d1ac0  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d1ac4  ff 30 a0 e3                                      mov r3, #0xff
006d1ac8  b0 32 cd e1                                      strh r3, [sp, #0x20]
006d1acc  38 00 a0 e3                                      mov r0, #0x38
006d1ad0  06 30 a0 e3                                      mov r3, #6
006d1ad4  b2 32 cd e1                                      strh r3, [sp, #0x22]
006d1ad8  b3 89 f9 eb                                      bl #0x5341ac
006d1adc  09 10 a0 e1                                      mov r1, sb
006d1ae0  0c 20 8d e2                                      add r2, sp, #0xc
006d1ae4  00 50 a0 e1                                      mov r5, r0
006d1ae8  b9 fd ff eb                                      bl #0x6d11d4
006d1aec  00 00 55 e3                                      cmp r5, #0
006d1af0  04 30 95 15                                      ldrne r3, [r5, #4]
006d1af4  01 30 83 12                                      addne r3, r3, #1
006d1af8  04 30 85 15                                      strne r3, [r5, #4]
006d1afc  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006d1b00  b0 51 84 e5                                      str r5, [r4, #0x1b0]
006d1b04  00 00 50 e3                                      cmp r0, #0
006d1b08  00 00 00 0a                                      beq #0x6d1b10
006d1b0c  9c 2e f1 eb                                      bl #0x31d584
006d1b10  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006d1b14  00 00 50 e3                                      cmp r0, #0
006d1b18  00 00 00 0a                                      beq #0x6d1b20
006d1b1c  98 2e f1 eb                                      bl #0x31d584
006d1b20  04 00 a0 e1                                      mov r0, r4
006d1b24  00 10 a0 e3                                      mov r1, #0
006d1b28  9b 15 fb eb                                      bl #0x59719c
006d1b2c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d1b30  00 00 50 e3                                      cmp r0, #0
006d1b34  00 00 00 0a                                      beq #0x6d1b3c
006d1b38  91 2e f1 eb                                      bl #0x31d584
006d1b3c  04 00 a0 e1                                      mov r0, r4
006d1b40  48 d0 8d e2                                      add sp, sp, #0x48
006d1b44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006d1b48  06 00 a0 e1                                      mov r0, r6
006d1b4c  00 37 fc eb                                      bl #0x5df754
006d1b50  06 00 a0 e1                                      mov r0, r6
006d1b54  d5 f1 f0 eb                                      bl #0x30e2b0
006d1b58  d0 ff ff ea                                      b #0x6d1aa0

; FUNCTION 0x006d1b5c, declared_size=728, range_size=728, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNodeC1ERKN5boost13intrusive_ptrINS_2io11IFileSystemEEEijiNS0_20E_TERRAIN_PATCH_SIZEERKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::scene::CTerrainSceneNode::CTerrainSceneNode(boost::intrusive_ptr<glitch::io::IFileSystem> const&, int, unsigned int, int, glitch::scene::E_TERRAIN_PATCH_SIZE, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d1b5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006d1b60  bc 52 9f e5                                      ldr r5, [pc, #0x2bc]
006d1b64  bc c2 9f e5                                      ldr ip, [pc, #0x2bc]
006d1b68  bc e2 9f e5                                      ldr lr, [pc, #0x2bc]
006d1b6c  05 50 8f e0                                      add r5, pc, r5
006d1b70  0c c0 95 e7                                      ldr ip, [r5, ip]
006d1b74  0e e0 95 e7                                      ldr lr, [r5, lr]
006d1b78  01 70 a0 e3                                      mov r7, #1
006d1b7c  18 60 9c e5                                      ldr r6, [ip, #0x18]
006d1b80  08 e0 8e e2                                      add lr, lr, #8
006d1b84  48 d0 4d e2                                      sub sp, sp, #0x48
006d1b88  00 60 80 e5                                      str r6, [r0]
006d1b8c  10 72 80 e5                                      str r7, [r0, #0x210]
006d1b90  0c e2 80 e5                                      str lr, [r0, #0x20c]
006d1b94  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
006d1b98  70 70 9d e5                                      ldr r7, [sp, #0x70]
006d1b9c  1c 60 9c e5                                      ldr r6, [ip, #0x1c]
006d1ba0  74 80 9d e5                                      ldr r8, [sp, #0x74]
006d1ba4  78 90 9d e5                                      ldr sb, [sp, #0x78]
006d1ba8  01 a0 a0 e1                                      mov sl, r1
006d1bac  0e 60 80 e7                                      str r6, [r0, lr]
006d1bb0  04 10 8c e2                                      add r1, ip, #4
006d1bb4  03 60 a0 e1                                      mov r6, r3
006d1bb8  07 30 a0 e1                                      mov r3, r7
006d1bbc  00 40 a0 e1                                      mov r4, r0
006d1bc0  00 03 8d e8                                      stm sp, {r8, sb}
006d1bc4  3d 1d fb eb                                      bl #0x5990c0
006d1bc8  60 c2 9f e5                                      ldr ip, [pc, #0x260]
006d1bcc  07 30 a0 e1                                      mov r3, r7
006d1bd0  68 20 9d e5                                      ldr r2, [sp, #0x68]
006d1bd4  0c c0 95 e7                                      ldr ip, [r5, ip]
006d1bd8  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d1bdc  13 0e 84 e2                                      add r0, r4, #0x130
006d1be0  4a ef 8c e2                                      add lr, ip, #0x128
006d1be4  1c c0 8c e2                                      add ip, ip, #0x1c
006d1be8  00 c0 84 e5                                      str ip, [r4]
006d1bec  0c e2 84 e5                                      str lr, [r4, #0x20c]
006d1bf0  00 03 8d e8                                      stm sp, {r8, sb}
006d1bf4  3e f9 ff eb                                      bl #0x6d00f4
006d1bf8  00 10 a0 e3                                      mov r1, #0
006d1bfc  2c 00 a0 e3                                      mov r0, #0x2c
006d1c00  69 89 f9 eb                                      bl #0x5341ac
006d1c04  00 50 a0 e1                                      mov r5, r0
006d1c08  b1 a7 ff eb                                      bl #0x6bbad4
006d1c0c  00 00 55 e3                                      cmp r5, #0
006d1c10  ac 51 84 e5                                      str r5, [r4, #0x1ac]
006d1c14  04 30 95 15                                      ldrne r3, [r5, #4]
006d1c18  01 10 a0 e3                                      mov r1, #1
006d1c1c  fe 25 a0 e3                                      mov r2, #0x3f800000
006d1c20  01 30 83 12                                      addne r3, r3, #1
006d1c24  04 30 85 15                                      strne r3, [r5, #4]
006d1c28  be 11 c4 e5                                      strb r1, [r4, #0x1be]
006d1c2c  41 14 a0 e3                                      mov r1, #0x41000000
006d1c30  02 16 81 e2                                      add r1, r1, #0x200000
006d1c34  dc 11 84 e5                                      str r1, [r4, #0x1dc]
006d1c38  f3 3f 04 e3                                      movw r3, #0x4ff3
006d1c3c  cd 1c 0c e3                                      movw r1, #0xcccd
006d1c40  00 50 a0 e3                                      mov r5, #0
006d1c44  c3 37 4c e3                                      movt r3, #0xc7c3
006d1c48  1f 0e 84 e2                                      add r0, r4, #0x1f0
006d1c4c  cc 1d 43 e3                                      movt r1, #0x3dcc
006d1c50  ec 21 84 e5                                      str r2, [r4, #0x1ec]
006d1c54  e0 21 84 e5                                      str r2, [r4, #0x1e0]
006d1c58  e8 21 84 e5                                      str r2, [r4, #0x1e8]
006d1c5c  d4 31 84 e5                                      str r3, [r4, #0x1d4]
006d1c60  e4 11 84 e5                                      str r1, [r4, #0x1e4]
006d1c64  b0 51 84 e5                                      str r5, [r4, #0x1b0]
006d1c68  b4 51 84 e5                                      str r5, [r4, #0x1b4]
006d1c6c  b8 51 84 e5                                      str r5, [r4, #0x1b8]
006d1c70  bc 51 c4 e5                                      strb r5, [r4, #0x1bc]
006d1c74  bd 51 c4 e5                                      strb r5, [r4, #0x1bd]
006d1c78  bf 51 c4 e5                                      strb r5, [r4, #0x1bf]
006d1c7c  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006d1c80  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006d1c84  c8 31 84 e5                                      str r3, [r4, #0x1c8]
006d1c88  cc 31 84 e5                                      str r3, [r4, #0x1cc]
006d1c8c  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006d1c90  00 02 84 e5                                      str r0, [r4, #0x200]
006d1c94  04 02 84 e5                                      str r0, [r4, #0x204]
006d1c98  76 fd ff eb                                      bl #0x6d1278
006d1c9c  00 32 94 e5                                      ldr r3, [r4, #0x200]
006d1ca0  38 00 a0 e3                                      mov r0, #0x38
006d1ca4  00 50 c3 e5                                      strb r5, [r3]
006d1ca8  00 30 9a e5                                      ldr r3, [sl]
006d1cac  08 32 84 e5                                      str r3, [r4, #0x208]
006d1cb0  05 00 53 e1                                      cmp r3, r5
006d1cb4  04 20 93 15                                      ldrne r2, [r3, #4]
006d1cb8  01 20 82 12                                      addne r2, r2, #1
006d1cbc  04 20 83 15                                      strne r2, [r3, #4]
006d1cc0  00 30 a0 e3                                      mov r3, #0
006d1cc4  03 10 a0 e1                                      mov r1, r3
006d1cc8  24 30 8d e5                                      str r3, [sp, #0x24]
006d1ccc  28 30 8d e5                                      str r3, [sp, #0x28]
006d1cd0  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d1cd4  30 30 8d e5                                      str r3, [sp, #0x30]
006d1cd8  34 30 8d e5                                      str r3, [sp, #0x34]
006d1cdc  ff 30 a0 e3                                      mov r3, #0xff
006d1ce0  b8 33 cd e1                                      strh r3, [sp, #0x38]
006d1ce4  06 30 a0 e3                                      mov r3, #6
006d1ce8  ba 33 cd e1                                      strh r3, [sp, #0x3a]
006d1cec  2e 89 f9 eb                                      bl #0x5341ac
006d1cf0  06 10 a0 e1                                      mov r1, r6
006d1cf4  24 20 8d e2                                      add r2, sp, #0x24
006d1cf8  00 50 a0 e1                                      mov r5, r0
006d1cfc  34 fd ff eb                                      bl #0x6d11d4
006d1d00  00 00 55 e3                                      cmp r5, #0
006d1d04  44 50 8d e5                                      str r5, [sp, #0x44]
006d1d08  04 30 95 15                                      ldrne r3, [r5, #4]
006d1d0c  01 30 83 12                                      addne r3, r3, #1
006d1d10  04 30 85 15                                      strne r3, [r5, #4]
006d1d14  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d1d18  00 00 50 e3                                      cmp r0, #0
006d1d1c  00 00 00 0a                                      beq #0x6d1d24
006d1d20  17 2e f1 eb                                      bl #0x31d584
006d1d24  40 50 8d e2                                      add r5, sp, #0x40
006d1d28  ac 01 94 e5                                      ldr r0, [r4, #0x1ac]
006d1d2c  00 c0 a0 e3                                      mov ip, #0
006d1d30  44 10 8d e2                                      add r1, sp, #0x44
006d1d34  05 20 a0 e1                                      mov r2, r5
006d1d38  3c 30 8d e2                                      add r3, sp, #0x3c
006d1d3c  3c c0 8d e5                                      str ip, [sp, #0x3c]
006d1d40  40 c0 8d e5                                      str ip, [sp, #0x40]
006d1d44  46 aa ff eb                                      bl #0x6bc664
006d1d48  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
006d1d4c  00 00 57 e3                                      cmp r7, #0
006d1d50  04 00 00 0a                                      beq #0x6d1d68
006d1d54  00 30 97 e5                                      ldr r3, [r7]
006d1d58  01 30 43 e2                                      sub r3, r3, #1
006d1d5c  00 00 53 e3                                      cmp r3, #0
006d1d60  00 30 87 e5                                      str r3, [r7]
006d1d64  29 00 00 0a                                      beq #0x6d1e10
006d1d68  05 00 a0 e1                                      mov r0, r5
006d1d6c  9d fb f0 eb                                      bl #0x310be8
006d1d70  00 30 a0 e3                                      mov r3, #0
006d1d74  03 10 a0 e1                                      mov r1, r3
006d1d78  0c 30 8d e5                                      str r3, [sp, #0xc]
006d1d7c  10 30 8d e5                                      str r3, [sp, #0x10]
006d1d80  14 30 8d e5                                      str r3, [sp, #0x14]
006d1d84  18 30 8d e5                                      str r3, [sp, #0x18]
006d1d88  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d1d8c  ff 30 a0 e3                                      mov r3, #0xff
006d1d90  b0 32 cd e1                                      strh r3, [sp, #0x20]
006d1d94  38 00 a0 e3                                      mov r0, #0x38
006d1d98  06 30 a0 e3                                      mov r3, #6
006d1d9c  b2 32 cd e1                                      strh r3, [sp, #0x22]
006d1da0  01 89 f9 eb                                      bl #0x5341ac
006d1da4  06 10 a0 e1                                      mov r1, r6
006d1da8  0c 20 8d e2                                      add r2, sp, #0xc
006d1dac  00 50 a0 e1                                      mov r5, r0
006d1db0  07 fd ff eb                                      bl #0x6d11d4
006d1db4  00 00 55 e3                                      cmp r5, #0
006d1db8  04 30 95 15                                      ldrne r3, [r5, #4]
006d1dbc  01 30 83 12                                      addne r3, r3, #1
006d1dc0  04 30 85 15                                      strne r3, [r5, #4]
006d1dc4  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006d1dc8  b0 51 84 e5                                      str r5, [r4, #0x1b0]
006d1dcc  00 00 50 e3                                      cmp r0, #0
006d1dd0  00 00 00 0a                                      beq #0x6d1dd8
006d1dd4  ea 2d f1 eb                                      bl #0x31d584
006d1dd8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006d1ddc  00 00 50 e3                                      cmp r0, #0
006d1de0  00 00 00 0a                                      beq #0x6d1de8
006d1de4  e6 2d f1 eb                                      bl #0x31d584
006d1de8  04 00 a0 e1                                      mov r0, r4
006d1dec  00 10 a0 e3                                      mov r1, #0
006d1df0  e9 14 fb eb                                      bl #0x59719c
006d1df4  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d1df8  00 00 50 e3                                      cmp r0, #0
006d1dfc  00 00 00 0a                                      beq #0x6d1e04
006d1e00  df 2d f1 eb                                      bl #0x31d584
006d1e04  04 00 a0 e1                                      mov r0, r4
006d1e08  48 d0 8d e2                                      add sp, sp, #0x48
006d1e0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006d1e10  07 00 a0 e1                                      mov r0, r7
006d1e14  4e 36 fc eb                                      bl #0x5df754
006d1e18  07 00 a0 e1                                      mov r0, r7
006d1e1c  23 f1 f0 eb                                      bl #0x30e2b0
006d1e20  d0 ff ff ea                                      b #0x6d1d68
; mapping-symbol data/literal pool
006d1e24  24 2f 2c 00 7c 06 00 00 44 2b 00 00 e8 12 00 00  .byte 0x24, 0x2f, 0x2c, 0x00, 0x7c, 0x06, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe8, 0x12, 0x00, 0x00

; FUNCTION 0x006d1e34, declared_size=888, range_size=888, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode9getHeightEff
; demangled: glitch::scene::CTerrainSceneNode::getHeight(float, float) const
; decoder-mode: arm
006d1e34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d1e38  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
006d1e3c  ac d0 4d e2                                      sub sp, sp, #0xac
006d1e40  00 40 a0 e1                                      mov r4, r0
006d1e44  03 00 a0 e1                                      mov r0, r3
006d1e48  00 30 93 e5                                      ldr r3, [r3]
006d1e4c  01 60 a0 e1                                      mov r6, r1
006d1e50  02 50 a0 e1                                      mov r5, r2
006d1e54  0f e0 a0 e1                                      mov lr, pc
006d1e58  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d1e5c  00 00 50 e3                                      cmp r0, #0
006d1e60  00 00 a0 03                                      moveq r0, #0
006d1e64  01 00 00 1a                                      bne #0x6d1e70
006d1e68  ac d0 8d e2                                      add sp, sp, #0xac
006d1e6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d1e70  00 70 a0 e3                                      mov r7, #0
006d1e74  54 80 8d e2                                      add r8, sp, #0x54
006d1e78  07 10 a0 e1                                      mov r1, r7
006d1e7c  10 a0 8d e2                                      add sl, sp, #0x10
006d1e80  40 20 a0 e3                                      mov r2, #0x40
006d1e84  08 00 a0 e1                                      mov r0, r8
006d1e88  74 f1 f0 eb                                      bl #0x30e460
006d1e8c  fe 35 a0 e3                                      mov r3, #0x3f800000
006d1e90  0a 00 a0 e1                                      mov r0, sl
006d1e94  01 20 a0 e3                                      mov r2, #1
006d1e98  05 1d 84 e2                                      add r1, r4, #0x140
006d1e9c  90 30 8d e5                                      str r3, [sp, #0x90]
006d1ea0  54 30 8d e5                                      str r3, [sp, #0x54]
006d1ea4  68 30 8d e5                                      str r3, [sp, #0x68]
006d1ea8  7c 30 8d e5                                      str r3, [sp, #0x7c]
006d1eac  94 20 cd e5                                      strb r2, [sp, #0x94]
006d1eb0  dd fd ff eb                                      bl #0x6d162c
006d1eb4  41 20 a0 e3                                      mov r2, #0x41
006d1eb8  0a 10 a0 e1                                      mov r1, sl
006d1ebc  08 00 a0 e1                                      mov r0, r8
006d1ec0  68 f2 f0 eb                                      bl #0x30e868
006d1ec4  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d1ec8  06 00 a0 e1                                      mov r0, r6
006d1ecc  a6 f3 f0 eb                                      bl #0x30ed6c
006d1ed0  00 10 a0 e3                                      mov r1, #0
006d1ed4  00 80 a0 e1                                      mov r8, r0
006d1ed8  64 00 9d e5                                      ldr r0, [sp, #0x64]
006d1edc  a2 f3 f0 eb                                      bl #0x30ed6c
006d1ee0  00 10 a0 e1                                      mov r1, r0
006d1ee4  08 00 a0 e1                                      mov r0, r8
006d1ee8  2d f3 f0 eb                                      bl #0x30eba4
006d1eec  74 10 9d e5                                      ldr r1, [sp, #0x74]
006d1ef0  00 80 a0 e1                                      mov r8, r0
006d1ef4  05 00 a0 e1                                      mov r0, r5
006d1ef8  9b f3 f0 eb                                      bl #0x30ed6c
006d1efc  00 10 a0 e1                                      mov r1, r0
006d1f00  08 00 a0 e1                                      mov r0, r8
006d1f04  26 f3 f0 eb                                      bl #0x30eba4
006d1f08  58 10 9d e5                                      ldr r1, [sp, #0x58]
006d1f0c  00 a0 a0 e1                                      mov sl, r0
006d1f10  06 00 a0 e1                                      mov r0, r6
006d1f14  94 f3 f0 eb                                      bl #0x30ed6c
006d1f18  00 10 a0 e3                                      mov r1, #0
006d1f1c  00 80 a0 e1                                      mov r8, r0
006d1f20  68 00 9d e5                                      ldr r0, [sp, #0x68]
006d1f24  90 f3 f0 eb                                      bl #0x30ed6c
006d1f28  00 10 a0 e1                                      mov r1, r0
006d1f2c  08 00 a0 e1                                      mov r0, r8
006d1f30  1b f3 f0 eb                                      bl #0x30eba4
006d1f34  78 10 9d e5                                      ldr r1, [sp, #0x78]
006d1f38  00 80 a0 e1                                      mov r8, r0
006d1f3c  05 00 a0 e1                                      mov r0, r5
006d1f40  89 f3 f0 eb                                      bl #0x30ed6c
006d1f44  00 10 a0 e1                                      mov r1, r0
006d1f48  08 00 a0 e1                                      mov r0, r8
006d1f4c  14 f3 f0 eb                                      bl #0x30eba4
006d1f50  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006d1f54  00 80 a0 e1                                      mov r8, r0
006d1f58  06 00 a0 e1                                      mov r0, r6
006d1f5c  82 f3 f0 eb                                      bl #0x30ed6c
006d1f60  00 10 a0 e3                                      mov r1, #0
006d1f64  00 60 a0 e1                                      mov r6, r0
006d1f68  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006d1f6c  7e f3 f0 eb                                      bl #0x30ed6c
006d1f70  00 10 a0 e1                                      mov r1, r0
006d1f74  06 00 a0 e1                                      mov r0, r6
006d1f78  09 f3 f0 eb                                      bl #0x30eba4
006d1f7c  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006d1f80  00 60 a0 e1                                      mov r6, r0
006d1f84  05 00 a0 e1                                      mov r0, r5
006d1f88  77 f3 f0 eb                                      bl #0x30ed6c
006d1f8c  00 10 a0 e1                                      mov r1, r0
006d1f90  06 00 a0 e1                                      mov r0, r6
006d1f94  02 f3 f0 eb                                      bl #0x30eba4
006d1f98  34 11 94 e5                                      ldr r1, [r4, #0x134]
006d1f9c  00 50 a0 e1                                      mov r5, r0
006d1fa0  0a 00 a0 e1                                      mov r0, sl
006d1fa4  00 f1 f0 eb                                      bl #0x30e3ac
006d1fa8  98 00 8d e5                                      str r0, [sp, #0x98]
006d1fac  38 11 94 e5                                      ldr r1, [r4, #0x138]
006d1fb0  08 00 a0 e1                                      mov r0, r8
006d1fb4  fc f0 f0 eb                                      bl #0x30e3ac
006d1fb8  9c 00 8d e5                                      str r0, [sp, #0x9c]
006d1fbc  3c 11 94 e5                                      ldr r1, [r4, #0x13c]
006d1fc0  05 00 a0 e1                                      mov r0, r5
006d1fc4  f8 f0 f0 eb                                      bl #0x30e3ac
006d1fc8  57 1f 84 e2                                      add r1, r4, #0x15c
006d1fcc  a0 00 8d e5                                      str r0, [sp, #0xa0]
006d1fd0  98 00 8d e2                                      add r0, sp, #0x98
006d1fd4  36 41 fb eb                                      bl #0x5a24b4
006d1fd8  98 00 9d e5                                      ldr r0, [sp, #0x98]
006d1fdc  35 f3 f0 eb                                      bl #0x30ecb8
006d1fe0  39 f1 f0 eb                                      bl #0x30e4cc
006d1fe4  00 50 a0 e1                                      mov r5, r0
006d1fe8  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006d1fec  31 f3 f0 eb                                      bl #0x30ecb8
006d1ff0  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006d1ff4  07 20 a0 e1                                      mov r2, r7
006d1ff8  00 60 a0 e1                                      mov r6, r0
006d1ffc  03 10 a0 e1                                      mov r1, r3
006d2000  a4 00 8d e2                                      add r0, sp, #0xa4
006d2004  00 30 93 e5                                      ldr r3, [r3]
006d2008  0f e0 a0 e1                                      mov lr, pc
006d200c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d2010  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
006d2014  14 80 90 e5                                      ldr r8, [r0, #0x14]
006d2018  14 30 98 e5                                      ldr r3, [r8, #0x14]
006d201c  14 80 88 e2                                      add r8, r8, #0x14
006d2020  04 70 98 e5                                      ldr r7, [r8, #4]
006d2024  08 b0 93 e5                                      ldr fp, [r3, #8]
006d2028  55 2d f1 eb                                      bl #0x31d584
006d202c  00 00 55 e3                                      cmp r5, #0
006d2030  42 00 00 ba                                      blt #0x6d2140
006d2034  06 00 a0 e1                                      mov r0, r6
006d2038  23 f1 f0 eb                                      bl #0x30e4cc
006d203c  30 31 94 e5                                      ldr r3, [r4, #0x130]
006d2040  00 60 a0 e1                                      mov r6, r0
006d2044  00 00 50 e3                                      cmp r0, #0
006d2048  05 00 53 a1                                      cmpge r3, r5
006d204c  3b 00 00 da                                      ble #0x6d2140
006d2050  00 00 53 e1                                      cmp r3, r0
006d2054  39 00 00 da                                      ble #0x6d2140
006d2058  95 33 29 e0                                      mla sb, r5, r3, r3
006d205c  93 05 03 e0                                      mul r3, r3, r5
006d2060  be 80 d8 e1                                      ldrh r8, [r8, #0xe]
006d2064  01 a0 80 e2                                      add sl, r0, #1
006d2068  06 10 83 e0                                      add r1, r3, r6
006d206c  07 70 8b e0                                      add r7, fp, r7
006d2070  0a 20 89 e0                                      add r2, sb, sl
006d2074  98 72 22 e0                                      mla r2, r8, r2, r7
006d2078  98 71 21 e0                                      mla r1, r8, r1, r7
006d207c  05 00 a0 e1                                      mov r0, r5
006d2080  04 30 8d e5                                      str r3, [sp, #4]
006d2084  08 20 8d e5                                      str r2, [sp, #8]
006d2088  0c 10 8d e5                                      str r1, [sp, #0xc]
006d208c  34 f2 f0 eb                                      bl #0x30e964
006d2090  00 10 a0 e1                                      mov r1, r0
006d2094  98 00 9d e5                                      ldr r0, [sp, #0x98]
006d2098  c3 f0 f0 eb                                      bl #0x30e3ac
006d209c  00 b0 a0 e1                                      mov fp, r0
006d20a0  06 00 a0 e1                                      mov r0, r6
006d20a4  2e f2 f0 eb                                      bl #0x30e964
006d20a8  00 10 a0 e1                                      mov r1, r0
006d20ac  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
006d20b0  bd f0 f0 eb                                      bl #0x30e3ac
006d20b4  00 50 a0 e1                                      mov r5, r0
006d20b8  05 10 a0 e1                                      mov r1, r5
006d20bc  0b 00 a0 e1                                      mov r0, fp
006d20c0  8c f0 f0 eb                                      bl #0x30e2f8
006d20c4  00 00 50 e3                                      cmp r0, #0
006d20c8  04 30 9d e5                                      ldr r3, [sp, #4]
006d20cc  1e 00 00 1a                                      bne #0x6d214c
006d20d0  03 30 8a e0                                      add r3, sl, r3
006d20d4  98 73 27 e0                                      mla r7, r8, r3, r7
006d20d8  08 30 9d e5                                      ldr r3, [sp, #8]
006d20dc  04 70 97 e5                                      ldr r7, [r7, #4]
006d20e0  04 00 93 e5                                      ldr r0, [r3, #4]
006d20e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d20e8  07 10 a0 e1                                      mov r1, r7
006d20ec  04 60 93 e5                                      ldr r6, [r3, #4]
006d20f0  ad f0 f0 eb                                      bl #0x30e3ac
006d20f4  0b 10 a0 e1                                      mov r1, fp
006d20f8  1b f3 f0 eb                                      bl #0x30ed6c
006d20fc  00 10 a0 e1                                      mov r1, r0
006d2100  06 00 a0 e1                                      mov r0, r6
006d2104  a6 f2 f0 eb                                      bl #0x30eba4
006d2108  06 10 a0 e1                                      mov r1, r6
006d210c  00 80 a0 e1                                      mov r8, r0
006d2110  07 00 a0 e1                                      mov r0, r7
006d2114  a4 f0 f0 eb                                      bl #0x30e3ac
006d2118  05 10 a0 e1                                      mov r1, r5
006d211c  12 f3 f0 eb                                      bl #0x30ed6c
006d2120  00 10 a0 e1                                      mov r1, r0
006d2124  08 00 a0 e1                                      mov r0, r8
006d2128  9d f2 f0 eb                                      bl #0x30eba4
006d212c  60 11 94 e5                                      ldr r1, [r4, #0x160]
006d2130  0d f3 f0 eb                                      bl #0x30ed6c
006d2134  38 11 94 e5                                      ldr r1, [r4, #0x138]
006d2138  99 f2 f0 eb                                      bl #0x30eba4
006d213c  49 ff ff ea                                      b #0x6d1e68
006d2140  fe 03 02 e3                                      movw r0, #0x23fe
006d2144  74 09 4c e3                                      movt r0, #0xc974
006d2148  46 ff ff ea                                      b #0x6d1e68
006d214c  06 60 89 e0                                      add r6, sb, r6
006d2150  98 76 27 e0                                      mla r7, r8, r6, r7
006d2154  08 30 9d e5                                      ldr r3, [sp, #8]
006d2158  04 70 97 e5                                      ldr r7, [r7, #4]
006d215c  04 00 93 e5                                      ldr r0, [r3, #4]
006d2160  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d2164  07 10 a0 e1                                      mov r1, r7
006d2168  04 60 93 e5                                      ldr r6, [r3, #4]
006d216c  8e f0 f0 eb                                      bl #0x30e3ac
006d2170  05 10 a0 e1                                      mov r1, r5
006d2174  fc f2 f0 eb                                      bl #0x30ed6c
006d2178  00 10 a0 e1                                      mov r1, r0
006d217c  06 00 a0 e1                                      mov r0, r6
006d2180  87 f2 f0 eb                                      bl #0x30eba4
006d2184  06 10 a0 e1                                      mov r1, r6
006d2188  00 50 a0 e1                                      mov r5, r0
006d218c  07 00 a0 e1                                      mov r0, r7
006d2190  85 f0 f0 eb                                      bl #0x30e3ac
006d2194  0b 10 a0 e1                                      mov r1, fp
006d2198  f3 f2 f0 eb                                      bl #0x30ed6c
006d219c  00 10 a0 e1                                      mov r1, r0
006d21a0  05 00 a0 e1                                      mov r0, r5
006d21a4  7e f2 f0 eb                                      bl #0x30eba4
006d21a8  df ff ff ea                                      b #0x6d212c

; FUNCTION 0x006d21ac, declared_size=324, range_size=324, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZNK6glitch5scene17CTerrainSceneNode22getCurrentLODOfPatchesERSt6vectorIiNS_4core10SAllocatorIiLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::CTerrainSceneNode::getCurrentLODOfPatches(std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >&) const
; decoder-mode: arm
006d21ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d21b0  00 30 91 e5                                      ldr r3, [r1]
006d21b4  04 20 91 e5                                      ldr r2, [r1, #4]
006d21b8  0c d0 4d e2                                      sub sp, sp, #0xc
006d21bc  01 40 a0 e1                                      mov r4, r1
006d21c0  02 00 53 e1                                      cmp r3, r2
006d21c4  04 30 81 15                                      strne r3, [r1, #4]
006d21c8  7c 71 90 e5                                      ldr r7, [r0, #0x17c]
006d21cc  00 80 a0 e1                                      mov r8, r0
006d21d0  03 a0 a0 e1                                      mov sl, r3
006d21d4  97 07 07 e0                                      mul r7, r7, r7
006d21d8  00 00 57 e3                                      cmp r7, #0
006d21dc  12 00 00 da                                      ble #0x6d222c
006d21e0  00 50 a0 e3                                      mov r5, #0
006d21e4  05 60 a0 e1                                      mov r6, r5
006d21e8  00 00 00 ea                                      b #0x6d21f0
006d21ec  04 a0 94 e5                                      ldr sl, [r4, #4]
006d21f0  08 20 94 e5                                      ldr r2, [r4, #8]
006d21f4  a8 31 98 e5                                      ldr r3, [r8, #0x1a8]
006d21f8  0a 00 52 e1                                      cmp r2, sl
006d21fc  05 90 83 e0                                      add sb, r3, r5
006d2200  0d 00 00 0a                                      beq #0x6d223c
006d2204  05 30 93 e7                                      ldr r3, [r3, r5]
006d2208  00 30 8a e5                                      str r3, [sl]
006d220c  04 a0 94 e5                                      ldr sl, [r4, #4]
006d2210  04 a0 8a e2                                      add sl, sl, #4
006d2214  04 a0 84 e5                                      str sl, [r4, #4]
006d2218  01 60 86 e2                                      add r6, r6, #1
006d221c  07 00 56 e1                                      cmp r6, r7
006d2220  38 50 85 e2                                      add r5, r5, #0x38
006d2224  f0 ff ff 1a                                      bne #0x6d21ec
006d2228  00 30 94 e5                                      ldr r3, [r4]
006d222c  0a a0 63 e0                                      rsb sl, r3, sl
006d2230  4a 01 a0 e1                                      asr r0, sl, #2
006d2234  0c d0 8d e2                                      add sp, sp, #0xc
006d2238  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d223c  04 20 94 e5                                      ldr r2, [r4, #4]
006d2240  00 30 94 e5                                      ldr r3, [r4]
006d2244  02 30 63 e0                                      rsb r3, r3, r2
006d2248  43 31 a0 e1                                      asr r3, r3, #2
006d224c  01 00 53 e3                                      cmp r3, #1
006d2250  03 20 83 20                                      addhs r2, r3, r3
006d2254  01 20 83 32                                      addlo r2, r3, #1
006d2258  07 01 72 e3                                      cmn r2, #0xc0000001
006d225c  13 00 00 9a                                      bls #0x6d22b0
006d2260  03 20 e0 e3                                      mvn r2, #3
006d2264  04 20 8d e5                                      str r2, [sp, #4]
006d2268  00 10 a0 e3                                      mov r1, #0
006d226c  04 00 9d e5                                      ldr r0, [sp, #4]
006d2270  bc f8 f0 eb                                      bl #0x310568
006d2274  00 10 94 e5                                      ldr r1, [r4]
006d2278  00 b0 a0 e1                                      mov fp, r0
006d227c  01 a0 5a e0                                      subs sl, sl, r1
006d2280  00 a0 a0 01                                      moveq sl, r0
006d2284  15 00 00 1a                                      bne #0x6d22e0
006d2288  00 30 99 e5                                      ldr r3, [sb]
006d228c  04 30 8a e4                                      str r3, [sl], #4
006d2290  00 00 94 e5                                      ldr r0, [r4]
006d2294  6d f8 f0 eb                                      bl #0x310450
006d2298  04 20 9d e5                                      ldr r2, [sp, #4]
006d229c  00 b0 84 e5                                      str fp, [r4]
006d22a0  04 a0 84 e5                                      str sl, [r4, #4]
006d22a4  02 30 8b e0                                      add r3, fp, r2
006d22a8  08 30 84 e5                                      str r3, [r4, #8]
006d22ac  d9 ff ff ea                                      b #0x6d2218
006d22b0  02 00 53 e1                                      cmp r3, r2
006d22b4  02 21 a0 91                                      lslls r2, r2, #2
006d22b8  04 20 8d 95                                      strls r2, [sp, #4]
006d22bc  e7 ff ff 8a                                      bhi #0x6d2260
006d22c0  00 10 a0 e3                                      mov r1, #0
006d22c4  04 00 9d e5                                      ldr r0, [sp, #4]
006d22c8  a6 f8 f0 eb                                      bl #0x310568
006d22cc  00 10 94 e5                                      ldr r1, [r4]
006d22d0  00 b0 a0 e1                                      mov fp, r0
006d22d4  01 a0 5a e0                                      subs sl, sl, r1
006d22d8  00 a0 a0 01                                      moveq sl, r0
006d22dc  e9 ff ff 0a                                      beq #0x6d2288
006d22e0  0a 20 a0 e1                                      mov r2, sl
006d22e4  13 ef f0 eb                                      bl #0x30df38
006d22e8  0a a0 80 e0                                      add sl, r0, sl
006d22ec  e5 ff ff ea                                      b #0x6d2288

; FUNCTION 0x006d22f0, declared_size=580, range_size=580, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode18getIndicesForPatchERSt6vectorIjNS_4core10SAllocatorIjLNS_6memory13E_MEMORY_HINTE0EEEEiii
; demangled: glitch::scene::CTerrainSceneNode::getIndicesForPatch(std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >&, int, int, int)
; decoder-mode: arm
006d22f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d22f4  00 80 52 e2                                      subs r8, r2, #0
006d22f8  3c d0 4d e2                                      sub sp, sp, #0x3c
006d22fc  01 70 a0 e1                                      mov r7, r1
006d2300  03 50 a0 e1                                      mov r5, r3
006d2304  00 60 a0 e1                                      mov r6, r0
006d2308  60 a0 9d e5                                      ldr sl, [sp, #0x60]
006d230c  03 00 00 aa                                      bge #0x6d2320
006d2310  00 40 e0 e3                                      mvn r4, #0
006d2314  04 00 a0 e1                                      mov r0, r4
006d2318  3c d0 8d e2                                      add sp, sp, #0x3c
006d231c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d2320  7c 21 90 e5                                      ldr r2, [r0, #0x17c]
006d2324  08 00 52 e1                                      cmp r2, r8
006d2328  00 30 a0 c3                                      movgt r3, #0
006d232c  01 30 a0 d3                                      movle r3, #1
006d2330  a5 3f 93 e1                                      orrs r3, r3, r5, lsr #31
006d2334  f5 ff ff 1a                                      bne #0x6d2310
006d2338  05 00 52 e1                                      cmp r2, r5
006d233c  f3 ff ff da                                      ble #0x6d2310
006d2340  01 00 7a e3                                      cmn sl, #1
006d2344  f1 ff ff ba                                      blt #0x6d2310
006d2348  80 11 90 e5                                      ldr r1, [r0, #0x180]
006d234c  01 00 5a e1                                      cmp sl, r1
006d2350  ee ff ff aa                                      bge #0x6d2310
006d2354  01 00 7a e3                                      cmn sl, #1
006d2358  28 30 8d e5                                      str r3, [sp, #0x28]
006d235c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d2360  30 30 8d e5                                      str r3, [sp, #0x30]
006d2364  6a 00 00 1a                                      bne #0x6d2514
006d2368  92 58 22 e0                                      mla r2, r2, r8, r5
006d236c  38 10 a0 e3                                      mov r1, #0x38
006d2370  91 02 02 e0                                      mul r2, r1, r2
006d2374  a8 11 90 e5                                      ldr r1, [r0, #0x1a8]
006d2378  20 30 8d e5                                      str r3, [sp, #0x20]
006d237c  02 a0 91 e7                                      ldr sl, [r1, r2]
006d2380  00 00 5a e3                                      cmp sl, #0
006d2384  01 40 e0 b3                                      mvnlt r4, #1
006d2388  5c 00 00 ba                                      blt #0x6d2500
006d238c  01 c0 a0 e3                                      mov ip, #1
006d2390  1c ca a0 e1                                      lsl ip, ip, sl
006d2394  74 21 96 e5                                      ldr r2, [r6, #0x174]
006d2398  7c 31 96 e5                                      ldr r3, [r6, #0x17c]
006d239c  00 40 a0 e3                                      mov r4, #0
006d23a0  92 02 01 e0                                      mul r1, r2, r2
006d23a4  93 58 23 e0                                      mla r3, r3, r8, r5
006d23a8  38 20 8d e2                                      add r2, sp, #0x38
006d23ac  06 00 a0 e3                                      mov r0, #6
006d23b0  04 40 22 e5                                      str r4, [r2, #-4]!
006d23b4  90 01 01 e0                                      mul r1, r0, r1
006d23b8  07 00 a0 e1                                      mov r0, r7
006d23bc  1c c0 8d e5                                      str ip, [sp, #0x1c]
006d23c0  10 30 8d e5                                      str r3, [sp, #0x10]
006d23c4  42 fc ff eb                                      bl #0x6d14d4
006d23c8  78 c1 96 e5                                      ldr ip, [r6, #0x178]
006d23cc  04 90 a0 e3                                      mov sb, #4
006d23d0  04 b0 a0 e1                                      mov fp, r4
006d23d4  04 a0 a0 e1                                      mov sl, r4
006d23d8  24 c0 8d e5                                      str ip, [sp, #0x24]
006d23dc  37 00 00 ea                                      b #0x6d24c0
006d23e0  00 0c 8d e8                                      stm sp, {sl, fp}
006d23e4  a8 f7 ff eb                                      bl #0x6d028c
006d23e8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d23ec  00 c0 a0 e1                                      mov ip, r0
006d23f0  05 10 a0 e1                                      mov r1, r5
006d23f4  03 a0 8a e0                                      add sl, sl, r3
006d23f8  08 20 a0 e1                                      mov r2, r8
006d23fc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d2400  06 00 a0 e1                                      mov r0, r6
006d2404  0c c0 8d e5                                      str ip, [sp, #0xc]
006d2408  00 0c 8d e8                                      stm sp, {sl, fp}
006d240c  9e f7 ff eb                                      bl #0x6d028c
006d2410  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006d2414  24 00 8d e5                                      str r0, [sp, #0x24]
006d2418  05 10 a0 e1                                      mov r1, r5
006d241c  00 e0 8d e5                                      str lr, [sp]
006d2420  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006d2424  08 20 a0 e1                                      mov r2, r8
006d2428  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d242c  06 00 a0 e1                                      mov r0, r6
006d2430  04 e0 8d e5                                      str lr, [sp, #4]
006d2434  94 f7 ff eb                                      bl #0x6d028c
006d2438  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006d243c  18 00 8d e5                                      str r0, [sp, #0x18]
006d2440  08 20 a0 e1                                      mov r2, r8
006d2444  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d2448  05 10 a0 e1                                      mov r1, r5
006d244c  06 00 a0 e1                                      mov r0, r6
006d2450  00 44 8d e8                                      stm sp, {sl, lr}
006d2454  8c f7 ff eb                                      bl #0x6d028c
006d2458  00 30 97 e5                                      ldr r3, [r7]
006d245c  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d2460  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
006d2464  00 30 97 e5                                      ldr r3, [r7]
006d2468  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006d246c  06 40 84 e2                                      add r4, r4, #6
006d2470  09 c0 83 e7                                      str ip, [r3, sb]
006d2474  00 30 97 e5                                      ldr r3, [r7]
006d2478  09 30 83 e0                                      add r3, r3, sb
006d247c  04 00 83 e5                                      str r0, [r3, #4]
006d2480  00 30 97 e5                                      ldr r3, [r7]
006d2484  09 30 83 e0                                      add r3, r3, sb
006d2488  08 00 83 e5                                      str r0, [r3, #8]
006d248c  00 30 97 e5                                      ldr r3, [r7]
006d2490  09 30 83 e0                                      add r3, r3, sb
006d2494  0c c0 83 e5                                      str ip, [r3, #0xc]
006d2498  00 30 97 e5                                      ldr r3, [r7]
006d249c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006d24a0  09 30 83 e0                                      add r3, r3, sb
006d24a4  10 c0 83 e5                                      str ip, [r3, #0x10]
006d24a8  78 21 96 e5                                      ldr r2, [r6, #0x178]
006d24ac  18 90 89 e2                                      add sb, sb, #0x18
006d24b0  02 00 5a e1                                      cmp sl, r2
006d24b4  14 b0 9d a5                                      ldrge fp, [sp, #0x14]
006d24b8  24 20 8d e5                                      str r2, [sp, #0x24]
006d24bc  00 a0 a0 a3                                      movge sl, #0
006d24c0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006d24c4  05 10 a0 e1                                      mov r1, r5
006d24c8  08 20 a0 e1                                      mov r2, r8
006d24cc  0c c0 8b e0                                      add ip, fp, ip
006d24d0  14 c0 8d e5                                      str ip, [sp, #0x14]
006d24d4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006d24d8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d24dc  06 00 a0 e1                                      mov r0, r6
006d24e0  0c 00 5b e1                                      cmp fp, ip
006d24e4  18 a0 8d e5                                      str sl, [sp, #0x18]
006d24e8  bc ff ff ba                                      blt #0x6d23e0
006d24ec  20 20 9d e5                                      ldr r2, [sp, #0x20]
006d24f0  00 00 52 e3                                      cmp r2, #0
006d24f4  01 00 00 0a                                      beq #0x6d2500
006d24f8  28 10 8d e2                                      add r1, sp, #0x28
006d24fc  ca f7 ff eb                                      bl #0x6d042c
006d2500  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d2504  00 00 50 e3                                      cmp r0, #0
006d2508  81 ff ff 0a                                      beq #0x6d2314
006d250c  cf f7 f0 eb                                      bl #0x310450
006d2510  7f ff ff ea                                      b #0x6d2314
006d2514  28 10 8d e2                                      add r1, sp, #0x28
006d2518  23 ff ff eb                                      bl #0x6d21ac
006d251c  06 00 a0 e1                                      mov r0, r6
006d2520  0a 10 a0 e1                                      mov r1, sl
006d2524  b1 f7 ff eb                                      bl #0x6d03f0
006d2528  01 20 a0 e3                                      mov r2, #1
006d252c  20 20 8d e5                                      str r2, [sp, #0x20]
006d2530  92 ff ff ea                                      b #0x6d2380

; FUNCTION 0x006d2534, declared_size=1492, range_size=1492, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode18calculatePatchDataEv
; demangled: glitch::scene::CTerrainSceneNode::calculatePatchData()
; decoder-mode: arm
006d2534  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d2538  fe 23 02 e3                                      movw r2, #0x23fe
006d253c  b0 11 90 e5                                      ldr r1, [r0, #0x1b0]
006d2540  fe 33 02 e3                                      movw r3, #0x23fe
006d2544  74 39 4c e3                                      movt r3, #0xc974
006d2548  74 29 44 e3                                      movt r2, #0x4974
006d254c  98 31 80 e5                                      str r3, [r0, #0x198]
006d2550  90 31 80 e5                                      str r3, [r0, #0x190]
006d2554  94 31 80 e5                                      str r3, [r0, #0x194]
006d2558  8c 21 80 e5                                      str r2, [r0, #0x18c]
006d255c  84 21 80 e5                                      str r2, [r0, #0x184]
006d2560  88 21 80 e5                                      str r2, [r0, #0x188]
006d2564  14 10 91 e5                                      ldr r1, [r1, #0x14]
006d2568  2c d0 4d e2                                      sub sp, sp, #0x2c
006d256c  00 a0 a0 e1                                      mov sl, r0
006d2570  24 10 8d e5                                      str r1, [sp, #0x24]
006d2574  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d2578  00 10 a0 e3                                      mov r1, #0
006d257c  14 00 92 e5                                      ldr r0, [r2, #0x14]
006d2580  55 3d fb eb                                      bl #0x5a1adc
006d2584  24 30 9d e5                                      ldr r3, [sp, #0x24]
006d2588  14 30 83 e2                                      add r3, r3, #0x14
006d258c  0c 30 8d e5                                      str r3, [sp, #0xc]
006d2590  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006d2594  7c 31 9a e5                                      ldr r3, [sl, #0x17c]
006d2598  04 90 9c e5                                      ldr sb, [ip, #4]
006d259c  00 00 53 e3                                      cmp r3, #0
006d25a0  09 90 80 e0                                      add sb, r0, sb
006d25a4  00 00 a0 c3                                      movgt r0, #0
006d25a8  18 00 8d c5                                      strgt r0, [sp, #0x18]
006d25ac  0a 01 00 da                                      ble #0x6d29dc
006d25b0  00 00 53 e3                                      cmp r3, #0
006d25b4  18 c0 9d d5                                      ldrle ip, [sp, #0x18]
006d25b8  01 c0 8c d2                                      addle ip, ip, #1
006d25bc  14 c0 8d d5                                      strle ip, [sp, #0x14]
006d25c0  01 01 00 da                                      ble #0x6d29cc
006d25c4  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d25c8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d25cc  01 10 a0 e3                                      mov r1, #1
006d25d0  01 00 80 e2                                      add r0, r0, #1
006d25d4  00 20 a0 e3                                      mov r2, #0
006d25d8  01 c0 4c e2                                      sub ip, ip, #1
006d25dc  14 00 8d e5                                      str r0, [sp, #0x14]
006d25e0  04 10 8d e5                                      str r1, [sp, #4]
006d25e4  10 20 8d e5                                      str r2, [sp, #0x10]
006d25e8  20 c0 8d e5                                      str ip, [sp, #0x20]
006d25ec  18 10 9d e5                                      ldr r1, [sp, #0x18]
006d25f0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006d25f4  38 c0 a0 e3                                      mov ip, #0x38
006d25f8  00 00 a0 e3                                      mov r0, #0
006d25fc  91 23 23 e0                                      mla r3, r1, r3, r2
006d2600  a8 21 9a e5                                      ldr r2, [sl, #0x1a8]
006d2604  9c 03 03 e0                                      mul r3, ip, r3
006d2608  ca c2 0f e3                                      movw ip, #0xf2ca
006d260c  08 30 8d e5                                      str r3, [sp, #8]
006d2610  03 00 82 e7                                      str r0, [r2, r3]
006d2614  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d2618  08 10 9d e5                                      ldr r1, [sp, #8]
006d261c  ca 22 0f e3                                      movw r2, #0xf2ca
006d2620  49 21 4f e3                                      movt r2, #0xf149
006d2624  01 30 83 e0                                      add r3, r3, r1
006d2628  49 c1 47 e3                                      movt ip, #0x7149
006d262c  18 20 83 e5                                      str r2, [r3, #0x18]
006d2630  10 20 83 e5                                      str r2, [r3, #0x10]
006d2634  14 20 83 e5                                      str r2, [r3, #0x14]
006d2638  04 c0 83 e5                                      str ip, [r3, #4]
006d263c  08 c0 83 e5                                      str ip, [r3, #8]
006d2640  0c c0 83 e5                                      str ip, [r3, #0xc]
006d2644  78 31 9a e5                                      ldr r3, [sl, #0x178]
006d2648  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d264c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d2650  93 00 0b e0                                      mul fp, r3, r0
006d2654  91 03 02 e0                                      mul r2, r1, r3
006d2658  02 00 5b e1                                      cmp fp, r2
006d265c  04 20 9d c5                                      ldrgt r2, [sp, #4]
006d2660  1c 20 8d c5                                      strgt r2, [sp, #0x1c]
006d2664  3c 00 00 ca                                      bgt #0x6d275c
006d2668  04 c0 9d e5                                      ldr ip, [sp, #4]
006d266c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006d2670  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d2674  04 10 9d e5                                      ldr r1, [sp, #4]
006d2678  93 00 05 e0                                      mul r5, r3, r0
006d267c  91 03 02 e0                                      mul r2, r1, r3
006d2680  02 00 55 e1                                      cmp r5, r2
006d2684  2f 00 00 ca                                      bgt #0x6d2748
006d2688  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006d268c  30 31 9a e5                                      ldr r3, [sl, #0x130]
006d2690  08 00 9d e5                                      ldr r0, [sp, #8]
006d2694  be 20 dc e1                                      ldrh r2, [ip, #0xe]
006d2698  93 5b 23 e0                                      mla r3, r3, fp, r5
006d269c  a8 41 9a e5                                      ldr r4, [sl, #0x1a8]
006d26a0  92 03 03 e0                                      mul r3, r2, r3
006d26a4  00 40 84 e0                                      add r4, r4, r0
006d26a8  03 80 99 e7                                      ldr r8, [sb, r3]
006d26ac  10 10 94 e5                                      ldr r1, [r4, #0x10]
006d26b0  03 30 89 e0                                      add r3, sb, r3
006d26b4  08 00 a0 e1                                      mov r0, r8
006d26b8  08 60 93 e5                                      ldr r6, [r3, #8]
006d26bc  04 70 93 e5                                      ldr r7, [r3, #4]
006d26c0  0c ef f0 eb                                      bl #0x30e2f8
006d26c4  00 00 50 e3                                      cmp r0, #0
006d26c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
006d26cc  10 80 84 15                                      strne r8, [r4, #0x10]
006d26d0  07 00 a0 e1                                      mov r0, r7
006d26d4  07 ef f0 eb                                      bl #0x30e2f8
006d26d8  00 00 50 e3                                      cmp r0, #0
006d26dc  18 10 94 e5                                      ldr r1, [r4, #0x18]
006d26e0  14 70 84 15                                      strne r7, [r4, #0x14]
006d26e4  06 00 a0 e1                                      mov r0, r6
006d26e8  02 ef f0 eb                                      bl #0x30e2f8
006d26ec  00 00 50 e3                                      cmp r0, #0
006d26f0  04 10 94 e5                                      ldr r1, [r4, #4]
006d26f4  18 60 84 15                                      strne r6, [r4, #0x18]
006d26f8  08 00 a0 e1                                      mov r0, r8
006d26fc  02 f0 f0 eb                                      bl #0x30e70c
006d2700  00 00 50 e3                                      cmp r0, #0
006d2704  08 10 94 e5                                      ldr r1, [r4, #8]
006d2708  04 80 84 15                                      strne r8, [r4, #4]
006d270c  07 00 a0 e1                                      mov r0, r7
006d2710  fd ef f0 eb                                      bl #0x30e70c
006d2714  00 00 50 e3                                      cmp r0, #0
006d2718  0c 10 94 e5                                      ldr r1, [r4, #0xc]
006d271c  08 70 84 15                                      strne r7, [r4, #8]
006d2720  06 00 a0 e1                                      mov r0, r6
006d2724  f8 ef f0 eb                                      bl #0x30e70c
006d2728  00 00 50 e3                                      cmp r0, #0
006d272c  0c 60 84 15                                      strne r6, [r4, #0xc]
006d2730  78 31 9a e5                                      ldr r3, [sl, #0x178]
006d2734  04 10 9d e5                                      ldr r1, [sp, #4]
006d2738  01 50 85 e2                                      add r5, r5, #1
006d273c  91 03 02 e0                                      mul r2, r1, r3
006d2740  05 00 52 e1                                      cmp r2, r5
006d2744  cf ff ff aa                                      bge #0x6d2688
006d2748  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006d274c  01 b0 8b e2                                      add fp, fp, #1
006d2750  9c 03 02 e0                                      mul r2, ip, r3
006d2754  0b 00 52 e1                                      cmp r2, fp
006d2758  c4 ff ff aa                                      bge #0x6d2670
006d275c  08 00 9d e5                                      ldr r0, [sp, #8]
006d2760  a8 81 9a e5                                      ldr r8, [sl, #0x1a8]
006d2764  90 11 9a e5                                      ldr r1, [sl, #0x190]
006d2768  00 40 88 e0                                      add r4, r8, r0
006d276c  10 60 94 e5                                      ldr r6, [r4, #0x10]
006d2770  14 70 94 e5                                      ldr r7, [r4, #0x14]
006d2774  18 50 94 e5                                      ldr r5, [r4, #0x18]
006d2778  06 00 a0 e1                                      mov r0, r6
006d277c  dd ee f0 eb                                      bl #0x30e2f8
006d2780  00 00 50 e3                                      cmp r0, #0
006d2784  94 11 9a e5                                      ldr r1, [sl, #0x194]
006d2788  90 61 8a 15                                      strne r6, [sl, #0x190]
006d278c  07 00 a0 e1                                      mov r0, r7
006d2790  d8 ee f0 eb                                      bl #0x30e2f8
006d2794  00 00 50 e3                                      cmp r0, #0
006d2798  98 11 9a e5                                      ldr r1, [sl, #0x198]
006d279c  94 71 8a 15                                      strne r7, [sl, #0x194]
006d27a0  05 00 a0 e1                                      mov r0, r5
006d27a4  d3 ee f0 eb                                      bl #0x30e2f8
006d27a8  00 00 50 e3                                      cmp r0, #0
006d27ac  84 11 9a e5                                      ldr r1, [sl, #0x184]
006d27b0  98 51 8a 15                                      strne r5, [sl, #0x198]
006d27b4  06 00 a0 e1                                      mov r0, r6
006d27b8  d3 ef f0 eb                                      bl #0x30e70c
006d27bc  00 00 50 e3                                      cmp r0, #0
006d27c0  88 11 9a e5                                      ldr r1, [sl, #0x188]
006d27c4  84 61 8a 15                                      strne r6, [sl, #0x184]
006d27c8  07 00 a0 e1                                      mov r0, r7
006d27cc  ce ef f0 eb                                      bl #0x30e70c
006d27d0  00 00 50 e3                                      cmp r0, #0
006d27d4  8c 11 9a e5                                      ldr r1, [sl, #0x18c]
006d27d8  88 71 8a 15                                      strne r7, [sl, #0x188]
006d27dc  05 00 a0 e1                                      mov r0, r5
006d27e0  c9 ef f0 eb                                      bl #0x30e70c
006d27e4  00 00 50 e3                                      cmp r0, #0
006d27e8  8c 51 8a 15                                      strne r5, [sl, #0x18c]
006d27ec  04 60 94 e5                                      ldr r6, [r4, #4]
006d27f0  90 11 9a e5                                      ldr r1, [sl, #0x190]
006d27f4  0c 50 94 e5                                      ldr r5, [r4, #0xc]
006d27f8  06 00 a0 e1                                      mov r0, r6
006d27fc  bd ee f0 eb                                      bl #0x30e2f8
006d2800  08 40 94 e5                                      ldr r4, [r4, #8]
006d2804  00 00 50 e3                                      cmp r0, #0
006d2808  94 11 9a e5                                      ldr r1, [sl, #0x194]
006d280c  90 61 8a 15                                      strne r6, [sl, #0x190]
006d2810  04 00 a0 e1                                      mov r0, r4
006d2814  b7 ee f0 eb                                      bl #0x30e2f8
006d2818  00 00 50 e3                                      cmp r0, #0
006d281c  98 11 9a e5                                      ldr r1, [sl, #0x198]
006d2820  94 41 8a 15                                      strne r4, [sl, #0x194]
006d2824  05 00 a0 e1                                      mov r0, r5
006d2828  b2 ee f0 eb                                      bl #0x30e2f8
006d282c  00 00 50 e3                                      cmp r0, #0
006d2830  84 11 9a e5                                      ldr r1, [sl, #0x184]
006d2834  98 51 8a 15                                      strne r5, [sl, #0x198]
006d2838  06 00 a0 e1                                      mov r0, r6
006d283c  b2 ef f0 eb                                      bl #0x30e70c
006d2840  00 00 50 e3                                      cmp r0, #0
006d2844  88 11 9a e5                                      ldr r1, [sl, #0x188]
006d2848  84 61 8a 15                                      strne r6, [sl, #0x184]
006d284c  04 00 a0 e1                                      mov r0, r4
006d2850  ad ef f0 eb                                      bl #0x30e70c
006d2854  00 00 50 e3                                      cmp r0, #0
006d2858  8c 11 9a e5                                      ldr r1, [sl, #0x18c]
006d285c  88 41 8a 15                                      strne r4, [sl, #0x188]
006d2860  05 00 a0 e1                                      mov r0, r5
006d2864  a8 ef f0 eb                                      bl #0x30e70c
006d2868  00 00 50 e3                                      cmp r0, #0
006d286c  8c 51 8a 15                                      strne r5, [sl, #0x18c]
006d2870  08 10 9d e5                                      ldr r1, [sp, #8]
006d2874  01 40 88 e0                                      add r4, r8, r1
006d2878  14 10 94 e5                                      ldr r1, [r4, #0x14]
006d287c  08 00 94 e5                                      ldr r0, [r4, #8]
006d2880  c7 f0 f0 eb                                      bl #0x30eba4
006d2884  3f 14 a0 e3                                      mov r1, #0x3f000000
006d2888  37 f1 f0 eb                                      bl #0x30ed6c
006d288c  18 10 94 e5                                      ldr r1, [r4, #0x18]
006d2890  00 60 a0 e1                                      mov r6, r0
006d2894  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006d2898  c1 f0 f0 eb                                      bl #0x30eba4
006d289c  3f 14 a0 e3                                      mov r1, #0x3f000000
006d28a0  31 f1 f0 eb                                      bl #0x30ed6c
006d28a4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006d28a8  00 50 a0 e1                                      mov r5, r0
006d28ac  04 00 94 e5                                      ldr r0, [r4, #4]
006d28b0  bb f0 f0 eb                                      bl #0x30eba4
006d28b4  3f 14 a0 e3                                      mov r1, #0x3f000000
006d28b8  2b f1 f0 eb                                      bl #0x30ed6c
006d28bc  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d28c0  24 50 84 e5                                      str r5, [r4, #0x24]
006d28c4  1c 00 84 e5                                      str r0, [r4, #0x1c]
006d28c8  00 00 52 e3                                      cmp r2, #0
006d28cc  20 60 84 e5                                      str r6, [r4, #0x20]
006d28d0  7c 00 00 0a                                      beq #0x6d2ac8
006d28d4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006d28d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d28dc  7c 11 9a e5                                      ldr r1, [sl, #0x17c]
006d28e0  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d28e4  91 0c 21 e0                                      mla r1, r1, ip, r0
006d28e8  08 c0 9d e5                                      ldr ip, [sp, #8]
006d28ec  38 00 a0 e3                                      mov r0, #0x38
006d28f0  0c 20 83 e0                                      add r2, r3, ip
006d28f4  90 31 23 e0                                      mla r3, r0, r1, r3
006d28f8  28 30 82 e5                                      str r3, [r2, #0x28]
006d28fc  7c 31 9a e5                                      ldr r3, [sl, #0x17c]
006d2900  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d2904  01 20 43 e2                                      sub r2, r3, #1
006d2908  02 00 5c e1                                      cmp ip, r2
006d290c  5f 00 00 aa                                      bge #0x6d2a90
006d2910  14 00 9d e5                                      ldr r0, [sp, #0x14]
006d2914  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d2918  a8 21 9a e5                                      ldr r2, [sl, #0x1a8]
006d291c  38 c0 a0 e3                                      mov ip, #0x38
006d2920  90 13 23 e0                                      mla r3, r0, r3, r1
006d2924  08 00 9d e5                                      ldr r0, [sp, #8]
006d2928  9c 23 23 e0                                      mla r3, ip, r3, r2
006d292c  00 20 82 e0                                      add r2, r2, r0
006d2930  2c 30 82 e5                                      str r3, [r2, #0x2c]
006d2934  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d2938  00 00 53 e3                                      cmp r3, #0
006d293c  5b 00 00 da                                      ble #0x6d2ab0
006d2940  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d2944  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d2948  7c 11 9a e5                                      ldr r1, [sl, #0x17c]
006d294c  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d2950  91 0c 21 e0                                      mla r1, r1, ip, r0
006d2954  08 c0 9d e5                                      ldr ip, [sp, #8]
006d2958  01 10 41 e2                                      sub r1, r1, #1
006d295c  38 00 a0 e3                                      mov r0, #0x38
006d2960  0c 20 83 e0                                      add r2, r3, ip
006d2964  90 31 23 e0                                      mla r3, r0, r1, r3
006d2968  34 30 82 e5                                      str r3, [r2, #0x34]
006d296c  7c 31 9a e5                                      ldr r3, [sl, #0x17c]
006d2970  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006d2974  01 20 43 e2                                      sub r2, r3, #1
006d2978  02 00 5c e1                                      cmp ip, r2
006d297c  3d 00 00 aa                                      bge #0x6d2a78
006d2980  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d2984  a8 21 9a e5                                      ldr r2, [sl, #0x1a8]
006d2988  93 c0 23 e0                                      mla r3, r3, r0, ip
006d298c  38 c0 a0 e3                                      mov ip, #0x38
006d2990  93 cc 21 e0                                      mla r1, r3, ip, ip
006d2994  08 00 9d e5                                      ldr r0, [sp, #8]
006d2998  00 30 82 e0                                      add r3, r2, r0
006d299c  01 20 82 e0                                      add r2, r2, r1
006d29a0  30 20 83 e5                                      str r2, [r3, #0x30]
006d29a4  7c 31 9a e5                                      ldr r3, [sl, #0x17c]
006d29a8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006d29ac  04 00 9d e5                                      ldr r0, [sp, #4]
006d29b0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006d29b4  01 c0 8c e2                                      add ip, ip, #1
006d29b8  01 00 80 e2                                      add r0, r0, #1
006d29bc  01 00 53 e1                                      cmp r3, r1
006d29c0  10 c0 8d e5                                      str ip, [sp, #0x10]
006d29c4  04 00 8d e5                                      str r0, [sp, #4]
006d29c8  07 ff ff ca                                      bgt #0x6d25ec
006d29cc  14 20 9d e5                                      ldr r2, [sp, #0x14]
006d29d0  02 00 53 e1                                      cmp r3, r2
006d29d4  18 20 8d e5                                      str r2, [sp, #0x18]
006d29d8  f4 fe ff ca                                      bgt #0x6d25b0
006d29dc  90 11 9a e5                                      ldr r1, [sl, #0x190]
006d29e0  84 01 9a e5                                      ldr r0, [sl, #0x184]
006d29e4  6e f0 f0 eb                                      bl #0x30eba4
006d29e8  3f 14 a0 e3                                      mov r1, #0x3f000000
006d29ec  de f0 f0 eb                                      bl #0x30ed6c
006d29f0  94 11 9a e5                                      ldr r1, [sl, #0x194]
006d29f4  00 50 a0 e1                                      mov r5, r0
006d29f8  88 01 9a e5                                      ldr r0, [sl, #0x188]
006d29fc  68 f0 f0 eb                                      bl #0x30eba4
006d2a00  3f 14 a0 e3                                      mov r1, #0x3f000000
006d2a04  d8 f0 f0 eb                                      bl #0x30ed6c
006d2a08  98 11 9a e5                                      ldr r1, [sl, #0x198]
006d2a0c  00 40 a0 e1                                      mov r4, r0
006d2a10  8c 01 9a e5                                      ldr r0, [sl, #0x18c]
006d2a14  62 f0 f0 eb                                      bl #0x30eba4
006d2a18  3f 14 a0 e3                                      mov r1, #0x3f000000
006d2a1c  d2 f0 f0 eb                                      bl #0x30ed6c
006d2a20  be 31 da e5                                      ldrb r3, [sl, #0x1be]
006d2a24  68 51 8a e5                                      str r5, [sl, #0x168]
006d2a28  6c 41 8a e5                                      str r4, [sl, #0x16c]
006d2a2c  00 00 53 e3                                      cmp r3, #0
006d2a30  58 01 8a 15                                      strne r0, [sl, #0x158]
006d2a34  50 51 8a 15                                      strne r5, [sl, #0x150]
006d2a38  54 41 8a 15                                      strne r4, [sl, #0x154]
006d2a3c  00 00 59 e3                                      cmp sb, #0
006d2a40  70 01 8a e5                                      str r0, [sl, #0x170]
006d2a44  09 00 00 0a                                      beq #0x6d2a70
006d2a48  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d2a4c  14 40 90 e5                                      ldr r4, [r0, #0x14]
006d2a50  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d2a54  1f 20 03 e2                                      and r2, r3, #0x1f
006d2a58  01 00 52 e3                                      cmp r2, #1
006d2a5c  1f 00 00 9a                                      bls #0x6d2ae0
006d2a60  01 20 42 e2                                      sub r2, r2, #1
006d2a64  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d2a68  03 30 82 e1                                      orr r3, r2, r3
006d2a6c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d2a70  2c d0 8d e2                                      add sp, sp, #0x2c
006d2a74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d2a78  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d2a7c  08 10 9d e5                                      ldr r1, [sp, #8]
006d2a80  00 20 a0 e3                                      mov r2, #0
006d2a84  01 30 83 e0                                      add r3, r3, r1
006d2a88  30 20 83 e5                                      str r2, [r3, #0x30]
006d2a8c  c4 ff ff ea                                      b #0x6d29a4
006d2a90  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d2a94  08 10 9d e5                                      ldr r1, [sp, #8]
006d2a98  00 20 a0 e3                                      mov r2, #0
006d2a9c  01 30 83 e0                                      add r3, r3, r1
006d2aa0  2c 20 83 e5                                      str r2, [r3, #0x2c]
006d2aa4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d2aa8  00 00 53 e3                                      cmp r3, #0
006d2aac  a3 ff ff ca                                      bgt #0x6d2940
006d2ab0  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d2ab4  08 10 9d e5                                      ldr r1, [sp, #8]
006d2ab8  00 20 a0 e3                                      mov r2, #0
006d2abc  01 30 83 e0                                      add r3, r3, r1
006d2ac0  34 20 83 e5                                      str r2, [r3, #0x34]
006d2ac4  a8 ff ff ea                                      b #0x6d296c
006d2ac8  a8 31 9a e5                                      ldr r3, [sl, #0x1a8]
006d2acc  08 10 9d e5                                      ldr r1, [sp, #8]
006d2ad0  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d2ad4  01 30 83 e0                                      add r3, r3, r1
006d2ad8  28 20 83 e5                                      str r2, [r3, #0x28]
006d2adc  86 ff ff ea                                      b #0x6d28fc
006d2ae0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d2ae4  20 00 13 e3                                      tst r3, #0x20
006d2ae8  03 00 00 0a                                      beq #0x6d2afc
006d2aec  00 30 94 e5                                      ldr r3, [r4]
006d2af0  04 00 a0 e1                                      mov r0, r4
006d2af4  0f e0 a0 e1                                      mov lr, pc
006d2af8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d2afc  00 30 a0 e3                                      mov r3, #0
006d2b00  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d2b04  d9 ff ff ea                                      b #0x6d2a70

; FUNCTION 0x006d2b08, declared_size=952, range_size=952, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode19applyTransformationEv
; demangled: glitch::scene::CTerrainSceneNode::applyTransformation()
; decoder-mode: arm
006d2b08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d2b0c  ac 31 90 e5                                      ldr r3, [r0, #0x1ac]
006d2b10  bc d0 4d e2                                      sub sp, sp, #0xbc
006d2b14  00 40 a0 e1                                      mov r4, r0
006d2b18  03 00 a0 e1                                      mov r0, r3
006d2b1c  00 30 93 e5                                      ldr r3, [r3]
006d2b20  0f e0 a0 e1                                      mov lr, pc
006d2b24  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d2b28  00 00 50 e3                                      cmp r0, #0
006d2b2c  01 00 00 1a                                      bne #0x6d2b38
006d2b30  bc d0 8d e2                                      add sp, sp, #0xbc
006d2b34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d2b38  00 60 a0 e3                                      mov r6, #0
006d2b3c  6c 50 8d e2                                      add r5, sp, #0x6c
006d2b40  06 10 a0 e1                                      mov r1, r6
006d2b44  40 20 a0 e3                                      mov r2, #0x40
006d2b48  05 00 a0 e1                                      mov r0, r5
006d2b4c  28 70 8d e2                                      add r7, sp, #0x28
006d2b50  42 ee f0 eb                                      bl #0x30e460
006d2b54  fe 35 a0 e3                                      mov r3, #0x3f800000
006d2b58  01 20 a0 e3                                      mov r2, #1
006d2b5c  07 00 a0 e1                                      mov r0, r7
006d2b60  05 1d 84 e2                                      add r1, r4, #0x140
006d2b64  a8 30 8d e5                                      str r3, [sp, #0xa8]
006d2b68  6c 30 8d e5                                      str r3, [sp, #0x6c]
006d2b6c  80 30 8d e5                                      str r3, [sp, #0x80]
006d2b70  94 30 8d e5                                      str r3, [sp, #0x94]
006d2b74  ac 20 cd e5                                      strb r2, [sp, #0xac]
006d2b78  ab fa ff eb                                      bl #0x6d162c
006d2b7c  41 20 a0 e3                                      mov r2, #0x41
006d2b80  05 00 a0 e1                                      mov r0, r5
006d2b84  07 10 a0 e1                                      mov r1, r7
006d2b88  36 ef f0 eb                                      bl #0x30e868
006d2b8c  b0 31 94 e5                                      ldr r3, [r4, #0x1b0]
006d2b90  02 10 a0 e3                                      mov r1, #2
006d2b94  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d2b98  24 30 8d e5                                      str r3, [sp, #0x24]
006d2b9c  14 00 93 e5                                      ldr r0, [r3, #0x14]
006d2ba0  92 3b fb eb                                      bl #0x5a19f0
006d2ba4  24 10 9d e5                                      ldr r1, [sp, #0x24]
006d2ba8  06 20 a0 e1                                      mov r2, r6
006d2bac  14 10 81 e2                                      add r1, r1, #0x14
006d2bb0  14 10 8d e5                                      str r1, [sp, #0x14]
006d2bb4  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006d2bb8  04 50 91 e5                                      ldr r5, [r1, #4]
006d2bbc  03 10 a0 e1                                      mov r1, r3
006d2bc0  05 50 80 e0                                      add r5, r0, r5
006d2bc4  00 30 93 e5                                      ldr r3, [r3]
006d2bc8  b4 00 8d e2                                      add r0, sp, #0xb4
006d2bcc  0f e0 a0 e1                                      mov lr, pc
006d2bd0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d2bd4  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006d2bd8  14 30 90 e5                                      ldr r3, [r0, #0x14]
006d2bdc  14 20 93 e5                                      ldr r2, [r3, #0x14]
006d2be0  14 30 83 e2                                      add r3, r3, #0x14
006d2be4  10 30 8d e5                                      str r3, [sp, #0x10]
006d2be8  08 20 92 e5                                      ldr r2, [r2, #8]
006d2bec  04 30 93 e5                                      ldr r3, [r3, #4]
006d2bf0  03 30 82 e0                                      add r3, r2, r3
006d2bf4  08 30 8d e5                                      str r3, [sp, #8]
006d2bf8  61 2a f1 eb                                      bl #0x31d584
006d2bfc  50 11 94 e5                                      ldr r1, [r4, #0x150]
006d2c00  34 01 94 e5                                      ldr r0, [r4, #0x134]
006d2c04  e8 ed f0 eb                                      bl #0x30e3ac
006d2c08  18 00 8d e5                                      str r0, [sp, #0x18]
006d2c0c  54 11 94 e5                                      ldr r1, [r4, #0x154]
006d2c10  38 01 94 e5                                      ldr r0, [r4, #0x138]
006d2c14  e4 ed f0 eb                                      bl #0x30e3ac
006d2c18  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d2c1c  58 11 94 e5                                      ldr r1, [r4, #0x158]
006d2c20  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
006d2c24  e0 ed f0 eb                                      bl #0x30e3ac
006d2c28  20 00 8d e5                                      str r0, [sp, #0x20]
006d2c2c  ac 31 94 e5                                      ldr r3, [r4, #0x1ac]
006d2c30  06 20 a0 e1                                      mov r2, r6
006d2c34  b0 00 8d e2                                      add r0, sp, #0xb0
006d2c38  03 10 a0 e1                                      mov r1, r3
006d2c3c  00 30 93 e5                                      ldr r3, [r3]
006d2c40  0f e0 a0 e1                                      mov lr, pc
006d2c44  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d2c48  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006d2c4c  14 60 93 e5                                      ldr r6, [r3, #0x14]
006d2c50  00 00 56 e3                                      cmp r6, #0
006d2c54  00 30 96 15                                      ldrne r3, [r6]
006d2c58  08 20 96 e5                                      ldr r2, [r6, #8]
006d2c5c  01 30 83 12                                      addne r3, r3, #1
006d2c60  00 30 86 15                                      strne r3, [r6]
006d2c64  00 30 96 e5                                      ldr r3, [r6]
006d2c68  0c 20 8d e5                                      str r2, [sp, #0xc]
006d2c6c  01 30 43 e2                                      sub r3, r3, #1
006d2c70  00 00 53 e3                                      cmp r3, #0
006d2c74  00 30 86 e5                                      str r3, [r6]
006d2c78  86 00 00 0a                                      beq #0x6d2e98
006d2c7c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006d2c80  00 00 50 e3                                      cmp r0, #0
006d2c84  00 00 00 0a                                      beq #0x6d2c8c
006d2c88  3d 2a f1 eb                                      bl #0x31d584
006d2c8c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d2c90  00 00 53 e3                                      cmp r3, #0
006d2c94  67 00 00 0a                                      beq #0x6d2e38
006d2c98  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d2c9c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006d2ca0  00 60 a0 e3                                      mov r6, #0
006d2ca4  be 70 d1 e1                                      ldrh r7, [r1, #0xe]
006d2ca8  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d2cac  03 00 00 ea                                      b #0x6d2cc0
006d2cb0  10 20 9d e5                                      ldr r2, [sp, #0x10]
006d2cb4  14 30 9d e5                                      ldr r3, [sp, #0x14]
006d2cb8  be 70 d2 e1                                      ldrh r7, [r2, #0xe]
006d2cbc  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d2cc0  08 30 9d e5                                      ldr r3, [sp, #8]
006d2cc4  96 07 07 e0                                      mul r7, r6, r7
006d2cc8  5c 11 94 e5                                      ldr r1, [r4, #0x15c]
006d2ccc  07 00 93 e7                                      ldr r0, [r3, r7]
006d2cd0  07 70 83 e0                                      add r7, r3, r7
006d2cd4  04 20 8d e5                                      str r2, [sp, #4]
006d2cd8  23 f0 f0 eb                                      bl #0x30ed6c
006d2cdc  00 10 a0 e1                                      mov r1, r0
006d2ce0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d2ce4  ae ef f0 eb                                      bl #0x30eba4
006d2ce8  60 11 94 e5                                      ldr r1, [r4, #0x160]
006d2cec  00 a0 a0 e1                                      mov sl, r0
006d2cf0  04 00 97 e5                                      ldr r0, [r7, #4]
006d2cf4  1c f0 f0 eb                                      bl #0x30ed6c
006d2cf8  00 10 a0 e1                                      mov r1, r0
006d2cfc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d2d00  a7 ef f0 eb                                      bl #0x30eba4
006d2d04  64 11 94 e5                                      ldr r1, [r4, #0x164]
006d2d08  00 80 a0 e1                                      mov r8, r0
006d2d0c  08 00 97 e5                                      ldr r0, [r7, #8]
006d2d10  15 f0 f0 eb                                      bl #0x30ed6c
006d2d14  00 10 a0 e1                                      mov r1, r0
006d2d18  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d2d1c  a0 ef f0 eb                                      bl #0x30eba4
006d2d20  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006d2d24  00 70 a0 e1                                      mov r7, r0
006d2d28  0a 00 a0 e1                                      mov r0, sl
006d2d2c  0e f0 f0 eb                                      bl #0x30ed6c
006d2d30  80 10 9d e5                                      ldr r1, [sp, #0x80]
006d2d34  00 90 a0 e1                                      mov sb, r0
006d2d38  08 00 a0 e1                                      mov r0, r8
006d2d3c  0a f0 f0 eb                                      bl #0x30ed6c
006d2d40  00 10 a0 e1                                      mov r1, r0
006d2d44  09 00 a0 e1                                      mov r0, sb
006d2d48  95 ef f0 eb                                      bl #0x30eba4
006d2d4c  84 10 9d e5                                      ldr r1, [sp, #0x84]
006d2d50  00 90 a0 e1                                      mov sb, r0
006d2d54  07 00 a0 e1                                      mov r0, r7
006d2d58  03 f0 f0 eb                                      bl #0x30ed6c
006d2d5c  00 10 a0 e1                                      mov r1, r0
006d2d60  09 00 a0 e1                                      mov r0, sb
006d2d64  8e ef f0 eb                                      bl #0x30eba4
006d2d68  54 11 94 e5                                      ldr r1, [r4, #0x154]
006d2d6c  8c ef f0 eb                                      bl #0x30eba4
006d2d70  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
006d2d74  00 90 a0 e1                                      mov sb, r0
006d2d78  0a 00 a0 e1                                      mov r0, sl
006d2d7c  fa ef f0 eb                                      bl #0x30ed6c
006d2d80  90 10 9d e5                                      ldr r1, [sp, #0x90]
006d2d84  00 b0 a0 e1                                      mov fp, r0
006d2d88  08 00 a0 e1                                      mov r0, r8
006d2d8c  f6 ef f0 eb                                      bl #0x30ed6c
006d2d90  00 10 a0 e1                                      mov r1, r0
006d2d94  0b 00 a0 e1                                      mov r0, fp
006d2d98  81 ef f0 eb                                      bl #0x30eba4
006d2d9c  94 10 9d e5                                      ldr r1, [sp, #0x94]
006d2da0  00 b0 a0 e1                                      mov fp, r0
006d2da4  07 00 a0 e1                                      mov r0, r7
006d2da8  ef ef f0 eb                                      bl #0x30ed6c
006d2dac  00 10 a0 e1                                      mov r1, r0
006d2db0  0b 00 a0 e1                                      mov r0, fp
006d2db4  7a ef f0 eb                                      bl #0x30eba4
006d2db8  58 11 94 e5                                      ldr r1, [r4, #0x158]
006d2dbc  78 ef f0 eb                                      bl #0x30eba4
006d2dc0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d2dc4  00 b0 a0 e1                                      mov fp, r0
006d2dc8  0a 00 a0 e1                                      mov r0, sl
006d2dcc  e6 ef f0 eb                                      bl #0x30ed6c
006d2dd0  70 10 9d e5                                      ldr r1, [sp, #0x70]
006d2dd4  00 a0 a0 e1                                      mov sl, r0
006d2dd8  08 00 a0 e1                                      mov r0, r8
006d2ddc  e2 ef f0 eb                                      bl #0x30ed6c
006d2de0  00 10 a0 e1                                      mov r1, r0
006d2de4  0a 00 a0 e1                                      mov r0, sl
006d2de8  6d ef f0 eb                                      bl #0x30eba4
006d2dec  74 10 9d e5                                      ldr r1, [sp, #0x74]
006d2df0  00 80 a0 e1                                      mov r8, r0
006d2df4  07 00 a0 e1                                      mov r0, r7
006d2df8  db ef f0 eb                                      bl #0x30ed6c
006d2dfc  00 10 a0 e1                                      mov r1, r0
006d2e00  08 00 a0 e1                                      mov r0, r8
006d2e04  66 ef f0 eb                                      bl #0x30eba4
006d2e08  50 11 94 e5                                      ldr r1, [r4, #0x150]
006d2e0c  64 ef f0 eb                                      bl #0x30eba4
006d2e10  04 20 9d e5                                      ldr r2, [sp, #4]
006d2e14  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d2e18  96 02 02 e0                                      mul r2, r6, r2
006d2e1c  01 60 86 e2                                      add r6, r6, #1
006d2e20  02 30 85 e0                                      add r3, r5, r2
006d2e24  01 00 56 e1                                      cmp r6, r1
006d2e28  02 00 85 e7                                      str r0, [r5, r2]
006d2e2c  08 b0 83 e5                                      str fp, [r3, #8]
006d2e30  04 90 83 e5                                      str sb, [r3, #4]
006d2e34  9d ff ff 1a                                      bne #0x6d2cb0
006d2e38  01 10 a0 e3                                      mov r1, #1
006d2e3c  04 00 a0 e1                                      mov r0, r4
006d2e40  02 fa ff eb                                      bl #0x6d1650
006d2e44  04 00 a0 e1                                      mov r0, r4
006d2e48  b9 fd ff eb                                      bl #0x6d2534
006d2e4c  00 00 55 e3                                      cmp r5, #0
006d2e50  36 ff ff 0a                                      beq #0x6d2b30
006d2e54  24 10 9d e5                                      ldr r1, [sp, #0x24]
006d2e58  14 40 91 e5                                      ldr r4, [r1, #0x14]
006d2e5c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d2e60  1f 20 03 e2                                      and r2, r3, #0x1f
006d2e64  01 00 52 e3                                      cmp r2, #1
006d2e68  04 00 00 9a                                      bls #0x6d2e80
006d2e6c  01 20 42 e2                                      sub r2, r2, #1
006d2e70  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d2e74  03 30 82 e1                                      orr r3, r2, r3
006d2e78  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d2e7c  2b ff ff ea                                      b #0x6d2b30
006d2e80  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d2e84  20 00 13 e3                                      tst r3, #0x20
006d2e88  07 00 00 1a                                      bne #0x6d2eac
006d2e8c  00 30 a0 e3                                      mov r3, #0
006d2e90  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d2e94  25 ff ff ea                                      b #0x6d2b30
006d2e98  06 00 a0 e1                                      mov r0, r6
006d2e9c  de 36 fb eb                                      bl #0x5a0a1c
006d2ea0  06 00 a0 e1                                      mov r0, r6
006d2ea4  01 ed f0 eb                                      bl #0x30e2b0
006d2ea8  73 ff ff ea                                      b #0x6d2c7c
006d2eac  00 30 94 e5                                      ldr r3, [r4]
006d2eb0  04 00 a0 e1                                      mov r0, r4
006d2eb4  0f e0 a0 e1                                      mov lr, pc
006d2eb8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d2ebc  f2 ff ff ea                                      b #0x6d2e8c

; FUNCTION 0x006d2ec0, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode11setPositionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CTerrainSceneNode::setPosition(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d2ec0  00 30 91 e5                                      ldr r3, [r1]
006d2ec4  10 40 2d e9                                      push {r4, lr}
006d2ec8  34 31 80 e5                                      str r3, [r0, #0x134]
006d2ecc  04 30 91 e5                                      ldr r3, [r1, #4]
006d2ed0  00 40 a0 e1                                      mov r4, r0
006d2ed4  38 31 80 e5                                      str r3, [r0, #0x138]
006d2ed8  08 30 91 e5                                      ldr r3, [r1, #8]
006d2edc  3c 31 80 e5                                      str r3, [r0, #0x13c]
006d2ee0  08 ff ff eb                                      bl #0x6d2b08
006d2ee4  01 30 a0 e3                                      mov r3, #1
006d2ee8  bf 31 c4 e5                                      strb r3, [r4, #0x1bf]
006d2eec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d2ef0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode11setRotationERKNS_4core10quaternionE
; demangled: glitch::scene::CTerrainSceneNode::setRotation(glitch::core::quaternion const&)
; decoder-mode: arm
006d2ef0  00 30 91 e5                                      ldr r3, [r1]
006d2ef4  10 40 2d e9                                      push {r4, lr}
006d2ef8  40 31 80 e5                                      str r3, [r0, #0x140]
006d2efc  04 30 91 e5                                      ldr r3, [r1, #4]
006d2f00  00 40 a0 e1                                      mov r4, r0
006d2f04  44 31 80 e5                                      str r3, [r0, #0x144]
006d2f08  08 30 91 e5                                      ldr r3, [r1, #8]
006d2f0c  48 31 80 e5                                      str r3, [r0, #0x148]
006d2f10  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006d2f14  4c 31 80 e5                                      str r3, [r0, #0x14c]
006d2f18  fa fe ff eb                                      bl #0x6d2b08
006d2f1c  01 30 a0 e3                                      mov r3, #1
006d2f20  bf 31 c4 e5                                      strb r3, [r4, #0x1bf]
006d2f24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d2f28, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode8setScaleERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CTerrainSceneNode::setScale(glitch::core::vector3d<float> const&)
; decoder-mode: arm
006d2f28  00 30 91 e5                                      ldr r3, [r1]
006d2f2c  10 40 2d e9                                      push {r4, lr}
006d2f30  5c 31 80 e5                                      str r3, [r0, #0x15c]
006d2f34  04 30 91 e5                                      ldr r3, [r1, #4]
006d2f38  00 40 a0 e1                                      mov r4, r0
006d2f3c  60 31 80 e5                                      str r3, [r0, #0x160]
006d2f40  08 30 91 e5                                      ldr r3, [r1, #8]
006d2f44  64 31 80 e5                                      str r3, [r0, #0x164]
006d2f48  ee fe ff eb                                      bl #0x6d2b08
006d2f4c  01 30 a0 e3                                      mov r3, #1
006d2f50  bf 31 c4 e5                                      strb r3, [r4, #0x1bf]
006d2f54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d2ff0, declared_size=364, range_size=364, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode13smoothTerrainERKN5boost13intrusive_ptrINS0_11CMeshBufferEEEi
; demangled: glitch::scene::CTerrainSceneNode::smoothTerrain(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, int)
; decoder-mode: arm
006d2ff0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d2ff4  00 30 91 e5                                      ldr r3, [r1]
006d2ff8  14 d0 4d e2                                      sub sp, sp, #0x14
006d2ffc  03 10 a0 e3                                      mov r1, #3
006d3000  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d3004  08 20 8d e5                                      str r2, [sp, #8]
006d3008  00 40 a0 e1                                      mov r4, r0
006d300c  0c 30 8d e5                                      str r3, [sp, #0xc]
006d3010  14 00 93 e5                                      ldr r0, [r3, #0x14]
006d3014  75 3a fb eb                                      bl #0x5a19f0
006d3018  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d301c  08 20 9d e5                                      ldr r2, [sp, #8]
006d3020  14 b0 81 e2                                      add fp, r1, #0x14
006d3024  04 70 9b e5                                      ldr r7, [fp, #4]
006d3028  00 00 52 e3                                      cmp r2, #0
006d302c  07 70 80 e0                                      add r7, r0, r7
006d3030  31 00 00 da                                      ble #0x6d30fc
006d3034  00 10 a0 e3                                      mov r1, #0
006d3038  30 31 94 e5                                      ldr r3, [r4, #0x130]
006d303c  04 10 8d e5                                      str r1, [sp, #4]
006d3040  02 00 53 e3                                      cmp r3, #2
006d3044  01 20 a0 c3                                      movgt r2, #1
006d3048  03 90 a0 c1                                      movgt sb, r3
006d304c  00 20 8d c5                                      strgt r2, [sp]
006d3050  23 00 00 da                                      ble #0x6d30e4
006d3054  01 50 89 e2                                      add r5, sb, #1
006d3058  01 60 a0 e3                                      mov r6, #1
006d305c  be a0 db e1                                      ldrh sl, [fp, #0xe]
006d3060  05 30 63 e0                                      rsb r3, r3, r5
006d3064  01 60 86 e2                                      add r6, r6, #1
006d3068  9a 73 23 e0                                      mla r3, sl, r3, r7
006d306c  01 10 45 e2                                      sub r1, r5, #1
006d3070  09 20 86 e0                                      add r2, r6, sb
006d3074  92 7a 22 e0                                      mla r2, r2, sl, r7
006d3078  91 7a 21 e0                                      mla r1, r1, sl, r7
006d307c  04 80 93 e5                                      ldr r8, [r3, #4]
006d3080  04 00 91 e5                                      ldr r0, [r1, #4]
006d3084  04 10 92 e5                                      ldr r1, [r2, #4]
006d3088  c5 ee f0 eb                                      bl #0x30eba4
006d308c  08 10 a0 e1                                      mov r1, r8
006d3090  c3 ee f0 eb                                      bl #0x30eba4
006d3094  00 10 a0 e1                                      mov r1, r0
006d3098  08 00 a0 e1                                      mov r0, r8
006d309c  c0 ee f0 eb                                      bl #0x30eba4
006d30a0  fa 15 a0 e3                                      mov r1, #0x3e800000
006d30a4  30 ef f0 eb                                      bl #0x30ed6c
006d30a8  9a 75 2a e0                                      mla sl, sl, r5, r7
006d30ac  01 50 85 e2                                      add r5, r5, #1
006d30b0  04 00 8a e5                                      str r0, [sl, #4]
006d30b4  30 31 94 e5                                      ldr r3, [r4, #0x130]
006d30b8  01 20 43 e2                                      sub r2, r3, #1
006d30bc  06 00 52 e1                                      cmp r2, r6
006d30c0  e5 ff ff ca                                      bgt #0x6d305c
006d30c4  00 10 9d e5                                      ldr r1, [sp]
006d30c8  01 10 81 e2                                      add r1, r1, #1
006d30cc  01 00 52 e1                                      cmp r2, r1
006d30d0  00 10 8d e5                                      str r1, [sp]
006d30d4  02 00 00 da                                      ble #0x6d30e4
006d30d8  02 00 53 e3                                      cmp r3, #2
006d30dc  03 90 89 e0                                      add sb, sb, r3
006d30e0  db ff ff ca                                      bgt #0x6d3054
006d30e4  04 20 9d e5                                      ldr r2, [sp, #4]
006d30e8  08 10 9d e5                                      ldr r1, [sp, #8]
006d30ec  01 20 82 e2                                      add r2, r2, #1
006d30f0  01 00 52 e1                                      cmp r2, r1
006d30f4  04 20 8d e5                                      str r2, [sp, #4]
006d30f8  d0 ff ff 1a                                      bne #0x6d3040
006d30fc  00 00 57 e3                                      cmp r7, #0
006d3100  09 00 00 0a                                      beq #0x6d312c
006d3104  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006d3108  14 40 92 e5                                      ldr r4, [r2, #0x14]
006d310c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d3110  1f 20 03 e2                                      and r2, r3, #0x1f
006d3114  01 00 52 e3                                      cmp r2, #1
006d3118  05 00 00 9a                                      bls #0x6d3134
006d311c  01 20 42 e2                                      sub r2, r2, #1
006d3120  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d3124  03 30 82 e1                                      orr r3, r2, r3
006d3128  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d312c  14 d0 8d e2                                      add sp, sp, #0x14
006d3130  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d3134  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d3138  20 00 13 e3                                      tst r3, #0x20
006d313c  03 00 00 0a                                      beq #0x6d3150
006d3140  00 30 94 e5                                      ldr r3, [r4]
006d3144  04 00 a0 e1                                      mov r0, r4
006d3148  0f e0 a0 e1                                      mov lr, pc
006d314c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d3150  00 30 a0 e3                                      mov r3, #0
006d3154  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d3158  f3 ff ff ea                                      b #0x6d312c

; FUNCTION 0x006d315c, declared_size=740, range_size=740, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode12scaleTextureEff
; demangled: glitch::scene::CTerrainSceneNode::scaleTexture(float, float)
; decoder-mode: arm
006d315c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d3160  2c d0 4d e2                                      sub sp, sp, #0x2c
006d3164  00 00 8d e5                                      str r0, [sp]
006d3168  b0 31 90 e5                                      ldr r3, [r0, #0x1b0]
006d316c  08 20 8d e5                                      str r2, [sp, #8]
006d3170  01 40 a0 e1                                      mov r4, r1
006d3174  14 20 93 e5                                      ldr r2, [r3, #0x14]
006d3178  04 20 92 e5                                      ldr r2, [r2, #4]
006d317c  ff 24 c2 e3                                      bic r2, r2, #0xff000000
006d3180  fe 28 c2 e3                                      bic r2, r2, #0xfe0000
006d3184  01 20 c2 e3                                      bic r2, r2, #1
006d3188  00 00 52 e3                                      cmp r2, #0
006d318c  01 00 00 1a                                      bne #0x6d3198
006d3190  2c d0 8d e2                                      add sp, sp, #0x2c
006d3194  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d3198  e8 11 80 e5                                      str r1, [r0, #0x1e8]
006d319c  08 10 9d e5                                      ldr r1, [sp, #8]
006d31a0  ec 11 80 e5                                      str r1, [r0, #0x1ec]
006d31a4  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d31a8  02 10 a0 e3                                      mov r1, #2
006d31ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d31b0  24 00 93 e5                                      ldr r0, [r3, #0x24]
006d31b4  0d 3a fb eb                                      bl #0x5a19f0
006d31b8  00 30 9d e5                                      ldr r3, [sp]
006d31bc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006d31c0  b0 21 93 e5                                      ldr r2, [r3, #0x1b0]
006d31c4  24 10 81 e2                                      add r1, r1, #0x24
006d31c8  00 30 a0 e3                                      mov r3, #0
006d31cc  0c 10 8d e5                                      str r1, [sp, #0xc]
006d31d0  04 a0 91 e5                                      ldr sl, [r1, #4]
006d31d4  24 30 8d e5                                      str r3, [sp, #0x24]
006d31d8  20 30 8d e5                                      str r3, [sp, #0x20]
006d31dc  14 10 92 e5                                      ldr r1, [r2, #0x14]
006d31e0  0a a0 80 e0                                      add sl, r0, sl
006d31e4  04 30 91 e5                                      ldr r3, [r1, #4]
006d31e8  04 00 13 e3                                      tst r3, #4
006d31ec  85 00 00 1a                                      bne #0x6d3408
006d31f0  00 20 9d e5                                      ldr r2, [sp]
006d31f4  30 51 92 e5                                      ldr r5, [r2, #0x130]
006d31f8  01 00 45 e2                                      sub r0, r5, #1
006d31fc  d8 ed f0 eb                                      bl #0x30e964
006d3200  00 60 a0 e1                                      mov r6, r0
006d3204  06 10 a0 e1                                      mov r1, r6
006d3208  04 00 a0 e1                                      mov r0, r4
006d320c  a0 ee f0 eb                                      bl #0x30ec94
006d3210  06 10 a0 e1                                      mov r1, r6
006d3214  14 00 8d e5                                      str r0, [sp, #0x14]
006d3218  08 00 9d e5                                      ldr r0, [sp, #8]
006d321c  9c ee f0 eb                                      bl #0x30ec94
006d3220  00 00 55 e3                                      cmp r5, #0
006d3224  10 00 8d e5                                      str r0, [sp, #0x10]
006d3228  4d 00 00 da                                      ble #0x6d3364
006d322c  00 30 a0 e3                                      mov r3, #0
006d3230  00 00 a0 e3                                      mov r0, #0
006d3234  04 30 8d e5                                      str r3, [sp, #4]
006d3238  18 00 8d e5                                      str r0, [sp, #0x18]
006d323c  00 40 a0 e1                                      mov r4, r0
006d3240  03 90 a0 e1                                      mov sb, r3
006d3244  00 80 a0 e3                                      mov r8, #0
006d3248  00 60 a0 e3                                      mov r6, #0
006d324c  08 50 a0 e1                                      mov r5, r8
006d3250  13 00 00 ea                                      b #0x6d32a4
006d3254  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d3258  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006d325c  93 04 03 e0                                      mul r3, r3, r4
006d3260  03 20 8b e0                                      add r2, fp, r3
006d3264  03 70 8b e7                                      str r7, [fp, r3]
006d3268  04 50 82 e5                                      str r5, [r2, #4]
006d326c  00 30 9d e5                                      ldr r3, [sp]
006d3270  01 60 86 e2                                      add r6, r6, #1
006d3274  01 40 84 e2                                      add r4, r4, #1
006d3278  30 71 93 e5                                      ldr r7, [r3, #0x130]
006d327c  06 00 57 e1                                      cmp r7, r6
006d3280  28 00 00 da                                      ble #0x6d3328
006d3284  05 00 a0 e1                                      mov r0, r5
006d3288  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d328c  44 ee f0 eb                                      bl #0x30eba4
006d3290  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3294  00 50 a0 e1                                      mov r5, r0
006d3298  08 00 a0 e1                                      mov r0, r8
006d329c  40 ee f0 eb                                      bl #0x30eba4
006d32a0  00 80 a0 e1                                      mov r8, r0
006d32a4  09 10 a0 e1                                      mov r1, sb
006d32a8  fe 05 a0 e3                                      mov r0, #0x3f800000
006d32ac  3e ec f0 eb                                      bl #0x30e3ac
006d32b0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006d32b4  00 70 a0 e1                                      mov r7, r0
006d32b8  08 00 9d e5                                      ldr r0, [sp, #8]
006d32bc  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
006d32c0  00 10 a0 e3                                      mov r1, #0
006d32c4  93 04 03 e0                                      mul r3, r3, r4
006d32c8  03 20 8a e0                                      add r2, sl, r3
006d32cc  03 70 8a e7                                      str r7, [sl, r3]
006d32d0  04 50 82 e5                                      str r5, [r2, #4]
006d32d4  24 b0 9d e5                                      ldr fp, [sp, #0x24]
006d32d8  00 00 5b e3                                      cmp fp, #0
006d32dc  e2 ff ff 0a                                      beq #0x6d326c
006d32e0  29 eb f0 eb                                      bl #0x30df8c
006d32e4  00 00 50 e3                                      cmp r0, #0
006d32e8  04 10 9d e5                                      ldr r1, [sp, #4]
006d32ec  fe 05 a0 e3                                      mov r0, #0x3f800000
006d32f0  d7 ff ff 1a                                      bne #0x6d3254
006d32f4  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d32f8  01 60 86 e2                                      add r6, r6, #1
006d32fc  be 70 d3 e1                                      ldrh r7, [r3, #0xe]
006d3300  29 ec f0 eb                                      bl #0x30e3ac
006d3304  97 04 07 e0                                      mul r7, r7, r4
006d3308  01 40 84 e2                                      add r4, r4, #1
006d330c  07 30 8b e0                                      add r3, fp, r7
006d3310  07 00 8b e7                                      str r0, [fp, r7]
006d3314  04 80 83 e5                                      str r8, [r3, #4]
006d3318  00 30 9d e5                                      ldr r3, [sp]
006d331c  30 71 93 e5                                      ldr r7, [r3, #0x130]
006d3320  06 00 57 e1                                      cmp r7, r6
006d3324  d6 ff ff ca                                      bgt #0x6d3284
006d3328  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d332c  01 00 80 e2                                      add r0, r0, #1
006d3330  00 00 57 e1                                      cmp r7, r0
006d3334  18 00 8d e5                                      str r0, [sp, #0x18]
006d3338  09 00 00 da                                      ble #0x6d3364
006d333c  09 00 a0 e1                                      mov r0, sb
006d3340  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3344  16 ee f0 eb                                      bl #0x30eba4
006d3348  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d334c  00 90 a0 e1                                      mov sb, r0
006d3350  04 00 9d e5                                      ldr r0, [sp, #4]
006d3354  12 ee f0 eb                                      bl #0x30eba4
006d3358  00 00 57 e3                                      cmp r7, #0
006d335c  04 00 8d e5                                      str r0, [sp, #4]
006d3360  b7 ff ff ca                                      bgt #0x6d3244
006d3364  24 30 9d e5                                      ldr r3, [sp, #0x24]
006d3368  00 00 53 e3                                      cmp r3, #0
006d336c  0c 00 00 0a                                      beq #0x6d33a4
006d3370  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d3374  00 40 93 e5                                      ldr r4, [r3]
006d3378  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d337c  1f 20 03 e2                                      and r2, r3, #0x1f
006d3380  01 00 52 e3                                      cmp r2, #1
006d3384  19 00 00 9a                                      bls #0x6d33f0
006d3388  01 20 42 e2                                      sub r2, r2, #1
006d338c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d3390  03 30 82 e1                                      orr r3, r2, r3
006d3394  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d3398  00 30 a0 e3                                      mov r3, #0
006d339c  24 30 8d e5                                      str r3, [sp, #0x24]
006d33a0  20 30 8d e5                                      str r3, [sp, #0x20]
006d33a4  00 00 5a e3                                      cmp sl, #0
006d33a8  78 ff ff 0a                                      beq #0x6d3190
006d33ac  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006d33b0  24 40 91 e5                                      ldr r4, [r1, #0x24]
006d33b4  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d33b8  1f 20 03 e2                                      and r2, r3, #0x1f
006d33bc  01 00 52 e3                                      cmp r2, #1
006d33c0  04 00 00 9a                                      bls #0x6d33d8
006d33c4  01 20 42 e2                                      sub r2, r2, #1
006d33c8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d33cc  03 30 82 e1                                      orr r3, r2, r3
006d33d0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d33d4  6d ff ff ea                                      b #0x6d3190
006d33d8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d33dc  20 00 13 e3                                      tst r3, #0x20
006d33e0  0c 00 00 1a                                      bne #0x6d3418
006d33e4  00 30 a0 e3                                      mov r3, #0
006d33e8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d33ec  67 ff ff ea                                      b #0x6d3190
006d33f0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d33f4  20 00 13 e3                                      tst r3, #0x20
006d33f8  0b 00 00 1a                                      bne #0x6d342c
006d33fc  00 30 a0 e3                                      mov r3, #0
006d3400  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d3404  e3 ff ff ea                                      b #0x6d3398
006d3408  34 10 81 e2                                      add r1, r1, #0x34
006d340c  20 00 8d e2                                      add r0, sp, #0x20
006d3410  d0 fe ff eb                                      bl #0x6d2f58
006d3414  75 ff ff ea                                      b #0x6d31f0
006d3418  00 30 94 e5                                      ldr r3, [r4]
006d341c  04 00 a0 e1                                      mov r0, r4
006d3420  0f e0 a0 e1                                      mov lr, pc
006d3424  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d3428  ed ff ff ea                                      b #0x6d33e4
006d342c  00 30 94 e5                                      ldr r3, [r4]
006d3430  04 00 a0 e1                                      mov r0, r4
006d3434  0f e0 a0 e1                                      mov lr, pc
006d3438  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d343c  ee ff ff ea                                      b #0x6d33fc

; FUNCTION 0x006d3440, declared_size=260, range_size=260, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode28preRenderIndicesCalculationsEv
; demangled: glitch::scene::CTerrainSceneNode::preRenderIndicesCalculations()
; decoder-mode: arm
006d3440  70 40 2d e9                                      push {r4, r5, r6, lr}
006d3444  b0 41 90 e5                                      ldr r4, [r0, #0x1b0]
006d3448  00 50 a0 e1                                      mov r5, r0
006d344c  bc 12 d4 e1                                      ldrh r1, [r4, #0x2c]
006d3450  01 00 51 e3                                      cmp r1, #1
006d3454  02 00 00 0a                                      beq #0x6d3464
006d3458  02 00 51 e3                                      cmp r1, #2
006d345c  14 00 00 0a                                      beq #0x6d34b4
006d3460  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d3464  02 10 a0 e3                                      mov r1, #2
006d3468  18 00 94 e5                                      ldr r0, [r4, #0x18]
006d346c  5f 39 fb eb                                      bl #0x5a19f0
006d3470  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
006d3474  06 60 80 e0                                      add r6, r0, r6
006d3478  06 10 a0 e1                                      mov r1, r6
006d347c  05 00 a0 e1                                      mov r0, r5
006d3480  fa f3 ff eb                                      bl #0x6d0470
006d3484  00 00 56 e3                                      cmp r6, #0
006d3488  f4 ff ff 0a                                      beq #0x6d3460
006d348c  18 40 94 e5                                      ldr r4, [r4, #0x18]
006d3490  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d3494  1f 20 03 e2                                      and r2, r3, #0x1f
006d3498  01 00 52 e3                                      cmp r2, #1
006d349c  18 00 00 9a                                      bls #0x6d3504
006d34a0  01 20 42 e2                                      sub r2, r2, #1
006d34a4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d34a8  03 30 82 e1                                      orr r3, r2, r3
006d34ac  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d34b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d34b4  18 00 94 e5                                      ldr r0, [r4, #0x18]
006d34b8  4c 39 fb eb                                      bl #0x5a19f0
006d34bc  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
006d34c0  06 60 80 e0                                      add r6, r0, r6
006d34c4  06 10 a0 e1                                      mov r1, r6
006d34c8  05 00 a0 e1                                      mov r0, r5
006d34cc  63 f4 ff eb                                      bl #0x6d0660
006d34d0  00 00 56 e3                                      cmp r6, #0
006d34d4  e1 ff ff 0a                                      beq #0x6d3460
006d34d8  18 40 94 e5                                      ldr r4, [r4, #0x18]
006d34dc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d34e0  1f 20 03 e2                                      and r2, r3, #0x1f
006d34e4  01 00 52 e3                                      cmp r2, #1
006d34e8  ec ff ff 8a                                      bhi #0x6d34a0
006d34ec  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d34f0  20 00 13 e3                                      tst r3, #0x20
006d34f4  08 00 00 1a                                      bne #0x6d351c
006d34f8  00 30 a0 e3                                      mov r3, #0
006d34fc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d3500  d6 ff ff ea                                      b #0x6d3460
006d3504  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d3508  20 00 13 e3                                      tst r3, #0x20
006d350c  07 00 00 1a                                      bne #0x6d3530
006d3510  00 30 a0 e3                                      mov r3, #0
006d3514  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d3518  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d351c  00 30 94 e5                                      ldr r3, [r4]
006d3520  04 00 a0 e1                                      mov r0, r4
006d3524  0f e0 a0 e1                                      mov lr, pc
006d3528  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d352c  f1 ff ff ea                                      b #0x6d34f8
006d3530  00 30 94 e5                                      ldr r3, [r4]
006d3534  04 00 a0 e1                                      mov r0, r4
006d3538  0f e0 a0 e1                                      mov lr, pc
006d353c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d3540  f2 ff ff ea                                      b #0x6d3510

; FUNCTION 0x006d3544, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CTerrainSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006d3544  10 40 2d e9                                      push {r4, lr}
006d3548  10 31 90 e5                                      ldr r3, [r0, #0x110]
006d354c  00 40 a0 e1                                      mov r4, r0
006d3550  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
006d3554  00 00 53 e3                                      cmp r3, #0
006d3558  04 00 00 0a                                      beq #0x6d3570
006d355c  16 f6 ff eb                                      bl #0x6d0dbc
006d3560  04 00 a0 e1                                      mov r0, r4
006d3564  b5 ff ff eb                                      bl #0x6d3440
006d3568  00 30 a0 e3                                      mov r3, #0
006d356c  bf 31 c4 e5                                      strb r3, [r4, #0x1bf]
006d3570  01 00 a0 e3                                      mov r0, #1
006d3574  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d3578, declared_size=3804, range_size=3804, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode16calculateNormalsERKN5boost13intrusive_ptrINS0_11CMeshBufferEEE
; demangled: glitch::scene::CTerrainSceneNode::calculateNormals(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&)
; decoder-mode: arm
006d3578  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d357c  00 30 91 e5                                      ldr r3, [r1]
006d3580  74 d0 4d e2                                      sub sp, sp, #0x74
006d3584  24 00 8d e5                                      str r0, [sp, #0x24]
006d3588  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d358c  01 40 a0 e1                                      mov r4, r1
006d3590  4c 30 8d e5                                      str r3, [sp, #0x4c]
006d3594  04 30 93 e5                                      ldr r3, [r3, #4]
006d3598  02 08 13 e3                                      tst r3, #0x20000
006d359c  01 00 00 1a                                      bne #0x6d35a8
006d35a0  74 d0 8d e2                                      add sp, sp, #0x74
006d35a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d35a8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
006d35ac  03 10 a0 e3                                      mov r1, #3
006d35b0  00 70 a0 e3                                      mov r7, #0
006d35b4  14 00 92 e5                                      ldr r0, [r2, #0x14]
006d35b8  0c 39 fb eb                                      bl #0x5a19f0
006d35bc  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
006d35c0  00 30 94 e5                                      ldr r3, [r4]
006d35c4  03 10 a0 e3                                      mov r1, #3
006d35c8  14 e0 8e e2                                      add lr, lr, #0x14
006d35cc  30 e0 8d e5                                      str lr, [sp, #0x30]
006d35d0  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d35d4  04 40 9e e5                                      ldr r4, [lr, #4]
006d35d8  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
006d35dc  14 30 83 e2                                      add r3, r3, #0x14
006d35e0  50 30 8d e5                                      str r3, [sp, #0x50]
006d35e4  01 30 82 e2                                      add r3, r2, #1
006d35e8  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d35ec  73 30 ef e6                                      uxtb r3, r3
006d35f0  54 30 8d e5                                      str r3, [sp, #0x54]
006d35f4  04 40 80 e0                                      add r4, r0, r4
006d35f8  03 02 92 e7                                      ldr r0, [r2, r3, lsl #4]
006d35fc  fb 38 fb eb                                      bl #0x5a19f0
006d3600  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d3604  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d3608  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d360c  01 32 83 e0                                      add r3, r3, r1, lsl #4
006d3610  40 30 8d e5                                      str r3, [sp, #0x40]
006d3614  30 61 92 e5                                      ldr r6, [r2, #0x130]
006d3618  04 30 93 e5                                      ldr r3, [r3, #4]
006d361c  64 70 8d e5                                      str r7, [sp, #0x64]
006d3620  00 00 56 e3                                      cmp r6, #0
006d3624  03 30 80 e0                                      add r3, r0, r3
006d3628  2c 30 8d e5                                      str r3, [sp, #0x2c]
006d362c  68 70 8d e5                                      str r7, [sp, #0x68]
006d3630  6c 70 8d e5                                      str r7, [sp, #0x6c]
006d3634  55 03 00 da                                      ble #0x6d4390
006d3638  00 30 e0 e3                                      mvn r3, #0
006d363c  01 00 a0 e3                                      mov r0, #1
006d3640  64 10 8d e2                                      add r1, sp, #0x64
006d3644  58 20 8d e2                                      add r2, sp, #0x58
006d3648  38 30 8d e5                                      str r3, [sp, #0x38]
006d364c  3c 00 8d e5                                      str r0, [sp, #0x3c]
006d3650  00 80 a0 e3                                      mov r8, #0
006d3654  34 10 8d e5                                      str r1, [sp, #0x34]
006d3658  44 20 8d e5                                      str r2, [sp, #0x44]
006d365c  00 00 56 e3                                      cmp r6, #0
006d3660  3e 03 00 da                                      ble #0x6d4360
006d3664  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d3668  00 00 58 e3                                      cmp r8, #0
006d366c  00 30 a0 d3                                      movle r3, #0
006d3670  01 30 a0 c3                                      movgt r3, #1
006d3674  20 30 8d e5                                      str r3, [sp, #0x20]
006d3678  48 00 8d e5                                      str r0, [sp, #0x48]
006d367c  00 50 a0 e3                                      mov r5, #0
006d3680  da 00 00 ea                                      b #0x6d39f0
006d3684  05 00 53 e1                                      cmp r3, r5
006d3688  01 a0 85 d2                                      addle sl, r5, #1
006d368c  6e 02 00 ca                                      bgt #0x6d404c
006d3690  08 00 53 e1                                      cmp r3, r8
006d3694  00 20 a0 d3                                      movle r2, #0
006d3698  01 20 02 c2                                      andgt r2, r2, #1
006d369c  00 00 52 e3                                      cmp r2, #0
006d36a0  e6 00 00 0a                                      beq #0x6d3a40
006d36a4  30 20 9d e5                                      ldr r2, [sp, #0x30]
006d36a8  98 56 2b e0                                      mla fp, r8, r6, r5
006d36ac  be 90 d2 e1                                      ldrh sb, [r2, #0xe]
006d36b0  01 20 4b e2                                      sub r2, fp, #1
006d36b4  99 02 02 e0                                      mul r2, sb, r2
006d36b8  99 0b 0b e0                                      mul fp, sb, fp
006d36bc  02 30 94 e7                                      ldr r3, [r4, r2]
006d36c0  02 20 84 e0                                      add r2, r4, r2
006d36c4  04 e0 92 e5                                      ldr lr, [r2, #4]
006d36c8  03 10 a0 e1                                      mov r1, r3
006d36cc  10 e0 8d e5                                      str lr, [sp, #0x10]
006d36d0  08 20 92 e5                                      ldr r2, [r2, #8]
006d36d4  14 20 8d e5                                      str r2, [sp, #0x14]
006d36d8  0b 00 94 e7                                      ldr r0, [r4, fp]
006d36dc  0c 30 8d e5                                      str r3, [sp, #0xc]
006d36e0  31 eb f0 eb                                      bl #0x30e3ac
006d36e4  0b b0 84 e0                                      add fp, r4, fp
006d36e8  18 00 8d e5                                      str r0, [sp, #0x18]
006d36ec  04 00 9b e5                                      ldr r0, [fp, #4]
006d36f0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d36f4  2c eb f0 eb                                      bl #0x30e3ac
006d36f8  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d36fc  08 00 9b e5                                      ldr r0, [fp, #8]
006d3700  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3704  28 eb f0 eb                                      bl #0x30e3ac
006d3708  28 00 8d e5                                      str r0, [sp, #0x28]
006d370c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d3710  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3714  90 56 26 e0                                      mla r6, r0, r6, r5
006d3718  03 10 a0 e1                                      mov r1, r3
006d371c  99 06 09 e0                                      mul sb, sb, r6
006d3720  09 00 94 e7                                      ldr r0, [r4, sb]
006d3724  20 eb f0 eb                                      bl #0x30e3ac
006d3728  09 90 84 e0                                      add sb, r4, sb
006d372c  00 b0 a0 e1                                      mov fp, r0
006d3730  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3734  04 00 99 e5                                      ldr r0, [sb, #4]
006d3738  1b eb f0 eb                                      bl #0x30e3ac
006d373c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3740  00 60 a0 e1                                      mov r6, r0
006d3744  08 00 99 e5                                      ldr r0, [sb, #8]
006d3748  17 eb f0 eb                                      bl #0x30e3ac
006d374c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006d3750  0c 00 8d e5                                      str r0, [sp, #0xc]
006d3754  02 11 82 e2                                      add r1, r2, #0x80000000
006d3758  83 ed f0 eb                                      bl #0x30ed6c
006d375c  06 10 a0 e1                                      mov r1, r6
006d3760  00 90 a0 e1                                      mov sb, r0
006d3764  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d3768  7f ed f0 eb                                      bl #0x30ed6c
006d376c  00 10 a0 e1                                      mov r1, r0
006d3770  09 00 a0 e1                                      mov r0, sb
006d3774  0a ed f0 eb                                      bl #0x30eba4
006d3778  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006d377c  64 00 8d e5                                      str r0, [sp, #0x64]
006d3780  0b 00 a0 e1                                      mov r0, fp
006d3784  02 11 8e e2                                      add r1, lr, #0x80000000
006d3788  77 ed f0 eb                                      bl #0x30ed6c
006d378c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3790  00 90 a0 e1                                      mov sb, r0
006d3794  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d3798  03 10 a0 e1                                      mov r1, r3
006d379c  72 ed f0 eb                                      bl #0x30ed6c
006d37a0  00 10 a0 e1                                      mov r1, r0
006d37a4  09 00 a0 e1                                      mov r0, sb
006d37a8  fd ec f0 eb                                      bl #0x30eba4
006d37ac  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d37b0  68 00 8d e5                                      str r0, [sp, #0x68]
006d37b4  06 00 a0 e1                                      mov r0, r6
006d37b8  02 11 82 e2                                      add r1, r2, #0x80000000
006d37bc  6a ed f0 eb                                      bl #0x30ed6c
006d37c0  0b 10 a0 e1                                      mov r1, fp
006d37c4  00 60 a0 e1                                      mov r6, r0
006d37c8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d37cc  66 ed f0 eb                                      bl #0x30ed6c
006d37d0  00 10 a0 e1                                      mov r1, r0
006d37d4  06 00 a0 e1                                      mov r0, r6
006d37d8  f1 ec f0 eb                                      bl #0x30eba4
006d37dc  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d37e0  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d37e4  3d 2c f2 eb                                      bl #0x35e8e0
006d37e8  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d37ec  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d37f0  eb ec f0 eb                                      bl #0x30eba4
006d37f4  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d37f8  58 00 8d e5                                      str r0, [sp, #0x58]
006d37fc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d3800  e7 ec f0 eb                                      bl #0x30eba4
006d3804  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d3808  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d380c  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d3810  e3 ec f0 eb                                      bl #0x30eba4
006d3814  24 30 9d e5                                      ldr r3, [sp, #0x24]
006d3818  30 e0 9d e5                                      ldr lr, [sp, #0x30]
006d381c  30 91 93 e5                                      ldr sb, [r3, #0x130]
006d3820  60 00 8d e5                                      str r0, [sp, #0x60]
006d3824  be 60 de e1                                      ldrh r6, [lr, #0xe]
006d3828  98 09 02 e0                                      mul r2, r8, sb
006d382c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d3830  01 20 42 e2                                      sub r2, r2, #1
006d3834  05 20 82 e0                                      add r2, r2, r5
006d3838  96 02 02 e0                                      mul r2, r6, r2
006d383c  90 59 29 e0                                      mla sb, r0, sb, r5
006d3840  02 30 94 e7                                      ldr r3, [r4, r2]
006d3844  02 20 84 e0                                      add r2, r4, r2
006d3848  04 10 92 e5                                      ldr r1, [r2, #4]
006d384c  96 09 0b e0                                      mul fp, r6, sb
006d3850  10 10 8d e5                                      str r1, [sp, #0x10]
006d3854  08 20 92 e5                                      ldr r2, [r2, #8]
006d3858  03 10 a0 e1                                      mov r1, r3
006d385c  01 90 49 e2                                      sub sb, sb, #1
006d3860  14 20 8d e5                                      str r2, [sp, #0x14]
006d3864  0b 00 94 e7                                      ldr r0, [r4, fp]
006d3868  0c 30 8d e5                                      str r3, [sp, #0xc]
006d386c  ce ea f0 eb                                      bl #0x30e3ac
006d3870  0b b0 84 e0                                      add fp, r4, fp
006d3874  18 00 8d e5                                      str r0, [sp, #0x18]
006d3878  04 00 9b e5                                      ldr r0, [fp, #4]
006d387c  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3880  c9 ea f0 eb                                      bl #0x30e3ac
006d3884  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d3888  08 00 9b e5                                      ldr r0, [fp, #8]
006d388c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3890  c5 ea f0 eb                                      bl #0x30e3ac
006d3894  96 09 06 e0                                      mul r6, r6, sb
006d3898  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d389c  28 00 8d e5                                      str r0, [sp, #0x28]
006d38a0  06 00 94 e7                                      ldr r0, [r4, r6]
006d38a4  03 10 a0 e1                                      mov r1, r3
006d38a8  bf ea f0 eb                                      bl #0x30e3ac
006d38ac  06 60 84 e0                                      add r6, r4, r6
006d38b0  00 b0 a0 e1                                      mov fp, r0
006d38b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d38b8  04 00 96 e5                                      ldr r0, [r6, #4]
006d38bc  ba ea f0 eb                                      bl #0x30e3ac
006d38c0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d38c4  00 90 a0 e1                                      mov sb, r0
006d38c8  08 00 96 e5                                      ldr r0, [r6, #8]
006d38cc  b6 ea f0 eb                                      bl #0x30e3ac
006d38d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006d38d4  0c 00 8d e5                                      str r0, [sp, #0xc]
006d38d8  02 11 82 e2                                      add r1, r2, #0x80000000
006d38dc  22 ed f0 eb                                      bl #0x30ed6c
006d38e0  09 10 a0 e1                                      mov r1, sb
006d38e4  00 60 a0 e1                                      mov r6, r0
006d38e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d38ec  1e ed f0 eb                                      bl #0x30ed6c
006d38f0  00 10 a0 e1                                      mov r1, r0
006d38f4  06 00 a0 e1                                      mov r0, r6
006d38f8  a9 ec f0 eb                                      bl #0x30eba4
006d38fc  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006d3900  64 00 8d e5                                      str r0, [sp, #0x64]
006d3904  0b 00 a0 e1                                      mov r0, fp
006d3908  02 11 8e e2                                      add r1, lr, #0x80000000
006d390c  16 ed f0 eb                                      bl #0x30ed6c
006d3910  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3914  00 60 a0 e1                                      mov r6, r0
006d3918  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d391c  03 10 a0 e1                                      mov r1, r3
006d3920  11 ed f0 eb                                      bl #0x30ed6c
006d3924  00 10 a0 e1                                      mov r1, r0
006d3928  06 00 a0 e1                                      mov r0, r6
006d392c  9c ec f0 eb                                      bl #0x30eba4
006d3930  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d3934  68 00 8d e5                                      str r0, [sp, #0x68]
006d3938  09 00 a0 e1                                      mov r0, sb
006d393c  02 11 82 e2                                      add r1, r2, #0x80000000
006d3940  09 ed f0 eb                                      bl #0x30ed6c
006d3944  0b 10 a0 e1                                      mov r1, fp
006d3948  00 60 a0 e1                                      mov r6, r0
006d394c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d3950  05 ed f0 eb                                      bl #0x30ed6c
006d3954  00 10 a0 e1                                      mov r1, r0
006d3958  06 00 a0 e1                                      mov r0, r6
006d395c  90 ec f0 eb                                      bl #0x30eba4
006d3960  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d3964  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d3968  dc 2b f2 eb                                      bl #0x35e8e0
006d396c  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d3970  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d3974  8a ec f0 eb                                      bl #0x30eba4
006d3978  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d397c  58 00 8d e5                                      str r0, [sp, #0x58]
006d3980  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d3984  86 ec f0 eb                                      bl #0x30eba4
006d3988  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d398c  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d3990  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d3994  82 ec f0 eb                                      bl #0x30eba4
006d3998  60 00 8d e5                                      str r0, [sp, #0x60]
006d399c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d39a0  ce 2b f2 eb                                      bl #0x35e8e0
006d39a4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d39a8  58 30 9d e5                                      ldr r3, [sp, #0x58]
006d39ac  30 61 90 e5                                      ldr r6, [r0, #0x130]
006d39b0  40 00 9d e5                                      ldr r0, [sp, #0x40]
006d39b4  96 58 26 e0                                      mla r6, r6, r8, r5
006d39b8  be 20 d0 e1                                      ldrh r2, [r0, #0xe]
006d39bc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006d39c0  0a 50 a0 e1                                      mov r5, sl
006d39c4  92 06 06 e0                                      mul r6, r2, r6
006d39c8  06 30 81 e7                                      str r3, [r1, r6]
006d39cc  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
006d39d0  06 60 81 e0                                      add r6, r1, r6
006d39d4  04 30 86 e5                                      str r3, [r6, #4]
006d39d8  60 30 9d e5                                      ldr r3, [sp, #0x60]
006d39dc  08 30 86 e5                                      str r3, [r6, #8]
006d39e0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d39e4  30 61 92 e5                                      ldr r6, [r2, #0x130]
006d39e8  0a 00 56 e1                                      cmp r6, sl
006d39ec  5d 02 00 da                                      ble #0x6d4368
006d39f0  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d39f4  00 00 55 e3                                      cmp r5, #0
006d39f8  00 20 a0 d3                                      movle r2, #0
006d39fc  01 20 a0 c3                                      movgt r2, #1
006d3a00  58 70 8d e5                                      str r7, [sp, #0x58]
006d3a04  03 c0 12 e0                                      ands ip, r2, r3
006d3a08  5c 70 8d e5                                      str r7, [sp, #0x5c]
006d3a0c  60 70 8d e5                                      str r7, [sp, #0x60]
006d3a10  12 00 00 1a                                      bne #0x6d3a60
006d3a14  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d3a18  00 00 51 e3                                      cmp r1, #0
006d3a1c  01 30 46 02                                      subeq r3, r6, #1
006d3a20  01 c0 a0 01                                      moveq ip, r1
006d3a24  02 00 00 0a                                      beq #0x6d3a34
006d3a28  01 30 46 e2                                      sub r3, r6, #1
006d3a2c  05 00 53 e1                                      cmp r3, r5
006d3a30  ca 00 00 ca                                      bgt #0x6d3d60
006d3a34  08 00 53 e1                                      cmp r3, r8
006d3a38  01 a0 85 d2                                      addle sl, r5, #1
006d3a3c  10 ff ff ca                                      bgt #0x6d3684
006d3a40  00 00 5c e3                                      cmp ip, #0
006d3a44  d4 ff ff 1a                                      bne #0x6d399c
006d3a48  fe 15 a0 e3                                      mov r1, #0x3f800000
006d3a4c  58 70 8d e5                                      str r7, [sp, #0x58]
006d3a50  5c 10 8d e5                                      str r1, [sp, #0x5c]
006d3a54  60 70 8d e5                                      str r7, [sp, #0x60]
006d3a58  07 30 a0 e1                                      mov r3, r7
006d3a5c  d3 ff ff ea                                      b #0x6d39b0
006d3a60  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006d3a64  30 00 9d e5                                      ldr r0, [sp, #0x30]
006d3a68  02 c0 a0 e3                                      mov ip, #2
006d3a6c  9e 56 29 e0                                      mla sb, lr, r6, r5
006d3a70  be a0 d0 e1                                      ldrh sl, [r0, #0xe]
006d3a74  01 30 49 e2                                      sub r3, sb, #1
006d3a78  98 56 26 e0                                      mla r6, r8, r6, r5
006d3a7c  9a 03 03 e0                                      mul r3, sl, r3
006d3a80  9a 09 09 e0                                      mul sb, sl, sb
006d3a84  03 b0 94 e7                                      ldr fp, [r4, r3]
006d3a88  03 30 84 e0                                      add r3, r4, r3
006d3a8c  04 10 93 e5                                      ldr r1, [r3, #4]
006d3a90  9a 06 0a e0                                      mul sl, sl, r6
006d3a94  10 10 8d e5                                      str r1, [sp, #0x10]
006d3a98  08 30 93 e5                                      ldr r3, [r3, #8]
006d3a9c  0b 10 a0 e1                                      mov r1, fp
006d3aa0  14 30 8d e5                                      str r3, [sp, #0x14]
006d3aa4  09 00 94 e7                                      ldr r0, [r4, sb]
006d3aa8  04 10 8d e9                                      stmib sp, {r2, ip}
006d3aac  3e ea f0 eb                                      bl #0x30e3ac
006d3ab0  09 90 84 e0                                      add sb, r4, sb
006d3ab4  18 00 8d e5                                      str r0, [sp, #0x18]
006d3ab8  04 00 99 e5                                      ldr r0, [sb, #4]
006d3abc  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3ac0  39 ea f0 eb                                      bl #0x30e3ac
006d3ac4  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d3ac8  08 00 99 e5                                      ldr r0, [sb, #8]
006d3acc  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3ad0  35 ea f0 eb                                      bl #0x30e3ac
006d3ad4  0b 10 a0 e1                                      mov r1, fp
006d3ad8  00 90 a0 e1                                      mov sb, r0
006d3adc  0a 00 94 e7                                      ldr r0, [r4, sl]
006d3ae0  31 ea f0 eb                                      bl #0x30e3ac
006d3ae4  0a a0 84 e0                                      add sl, r4, sl
006d3ae8  00 b0 a0 e1                                      mov fp, r0
006d3aec  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3af0  04 00 9a e5                                      ldr r0, [sl, #4]
006d3af4  2c ea f0 eb                                      bl #0x30e3ac
006d3af8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3afc  00 60 a0 e1                                      mov r6, r0
006d3b00  08 00 9a e5                                      ldr r0, [sl, #8]
006d3b04  28 ea f0 eb                                      bl #0x30e3ac
006d3b08  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006d3b0c  0c 00 8d e5                                      str r0, [sp, #0xc]
006d3b10  02 11 8e e2                                      add r1, lr, #0x80000000
006d3b14  94 ec f0 eb                                      bl #0x30ed6c
006d3b18  06 10 a0 e1                                      mov r1, r6
006d3b1c  00 a0 a0 e1                                      mov sl, r0
006d3b20  09 00 a0 e1                                      mov r0, sb
006d3b24  90 ec f0 eb                                      bl #0x30ed6c
006d3b28  00 10 a0 e1                                      mov r1, r0
006d3b2c  0a 00 a0 e1                                      mov r0, sl
006d3b30  1b ec f0 eb                                      bl #0x30eba4
006d3b34  02 11 89 e2                                      add r1, sb, #0x80000000
006d3b38  64 00 8d e5                                      str r0, [sp, #0x64]
006d3b3c  0b 00 a0 e1                                      mov r0, fp
006d3b40  89 ec f0 eb                                      bl #0x30ed6c
006d3b44  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3b48  00 a0 a0 e1                                      mov sl, r0
006d3b4c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d3b50  03 10 a0 e1                                      mov r1, r3
006d3b54  84 ec f0 eb                                      bl #0x30ed6c
006d3b58  00 10 a0 e1                                      mov r1, r0
006d3b5c  0a 00 a0 e1                                      mov r0, sl
006d3b60  0f ec f0 eb                                      bl #0x30eba4
006d3b64  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d3b68  68 00 8d e5                                      str r0, [sp, #0x68]
006d3b6c  06 00 a0 e1                                      mov r0, r6
006d3b70  02 11 83 e2                                      add r1, r3, #0x80000000
006d3b74  7c ec f0 eb                                      bl #0x30ed6c
006d3b78  0b 10 a0 e1                                      mov r1, fp
006d3b7c  00 60 a0 e1                                      mov r6, r0
006d3b80  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d3b84  78 ec f0 eb                                      bl #0x30ed6c
006d3b88  00 10 a0 e1                                      mov r1, r0
006d3b8c  06 00 a0 e1                                      mov r0, r6
006d3b90  03 ec f0 eb                                      bl #0x30eba4
006d3b94  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d3b98  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d3b9c  4f 2b f2 eb                                      bl #0x35e8e0
006d3ba0  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d3ba4  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d3ba8  fd eb f0 eb                                      bl #0x30eba4
006d3bac  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d3bb0  58 00 8d e5                                      str r0, [sp, #0x58]
006d3bb4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d3bb8  f9 eb f0 eb                                      bl #0x30eba4
006d3bbc  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d3bc0  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d3bc4  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d3bc8  f5 eb f0 eb                                      bl #0x30eba4
006d3bcc  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006d3bd0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d3bd4  30 b1 9e e5                                      ldr fp, [lr, #0x130]
006d3bd8  60 00 8d e5                                      str r0, [sp, #0x60]
006d3bdc  30 00 9d e5                                      ldr r0, [sp, #0x30]
006d3be0  91 0b 03 e0                                      mul r3, r1, fp
006d3be4  be 60 d0 e1                                      ldrh r6, [r0, #0xe]
006d3be8  01 30 43 e2                                      sub r3, r3, #1
006d3bec  05 30 83 e0                                      add r3, r3, r5
006d3bf0  96 03 03 e0                                      mul r3, r6, r3
006d3bf4  98 5b 2b e0                                      mla fp, r8, fp, r5
006d3bf8  03 90 94 e7                                      ldr sb, [r4, r3]
006d3bfc  03 30 84 e0                                      add r3, r4, r3
006d3c00  04 e0 93 e5                                      ldr lr, [r3, #4]
006d3c04  01 a0 4b e2                                      sub sl, fp, #1
006d3c08  96 0a 0a e0                                      mul sl, r6, sl
006d3c0c  10 e0 8d e5                                      str lr, [sp, #0x10]
006d3c10  08 30 93 e5                                      ldr r3, [r3, #8]
006d3c14  09 10 a0 e1                                      mov r1, sb
006d3c18  96 0b 06 e0                                      mul r6, r6, fp
006d3c1c  14 30 8d e5                                      str r3, [sp, #0x14]
006d3c20  0a 00 94 e7                                      ldr r0, [r4, sl]
006d3c24  e0 e9 f0 eb                                      bl #0x30e3ac
006d3c28  0a a0 84 e0                                      add sl, r4, sl
006d3c2c  18 00 8d e5                                      str r0, [sp, #0x18]
006d3c30  04 00 9a e5                                      ldr r0, [sl, #4]
006d3c34  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3c38  db e9 f0 eb                                      bl #0x30e3ac
006d3c3c  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d3c40  08 00 9a e5                                      ldr r0, [sl, #8]
006d3c44  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3c48  d7 e9 f0 eb                                      bl #0x30e3ac
006d3c4c  09 10 a0 e1                                      mov r1, sb
006d3c50  00 a0 a0 e1                                      mov sl, r0
006d3c54  06 00 94 e7                                      ldr r0, [r4, r6]
006d3c58  d3 e9 f0 eb                                      bl #0x30e3ac
006d3c5c  06 60 84 e0                                      add r6, r4, r6
006d3c60  00 90 a0 e1                                      mov sb, r0
006d3c64  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3c68  04 00 96 e5                                      ldr r0, [r6, #4]
006d3c6c  ce e9 f0 eb                                      bl #0x30e3ac
006d3c70  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3c74  00 b0 a0 e1                                      mov fp, r0
006d3c78  08 00 96 e5                                      ldr r0, [r6, #8]
006d3c7c  ca e9 f0 eb                                      bl #0x30e3ac
006d3c80  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006d3c84  0c 00 8d e5                                      str r0, [sp, #0xc]
006d3c88  02 11 8e e2                                      add r1, lr, #0x80000000
006d3c8c  36 ec f0 eb                                      bl #0x30ed6c
006d3c90  0b 10 a0 e1                                      mov r1, fp
006d3c94  00 60 a0 e1                                      mov r6, r0
006d3c98  0a 00 a0 e1                                      mov r0, sl
006d3c9c  32 ec f0 eb                                      bl #0x30ed6c
006d3ca0  00 10 a0 e1                                      mov r1, r0
006d3ca4  06 00 a0 e1                                      mov r0, r6
006d3ca8  bd eb f0 eb                                      bl #0x30eba4
006d3cac  02 11 8a e2                                      add r1, sl, #0x80000000
006d3cb0  64 00 8d e5                                      str r0, [sp, #0x64]
006d3cb4  09 00 a0 e1                                      mov r0, sb
006d3cb8  2b ec f0 eb                                      bl #0x30ed6c
006d3cbc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3cc0  00 60 a0 e1                                      mov r6, r0
006d3cc4  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d3cc8  03 10 a0 e1                                      mov r1, r3
006d3ccc  26 ec f0 eb                                      bl #0x30ed6c
006d3cd0  00 10 a0 e1                                      mov r1, r0
006d3cd4  06 00 a0 e1                                      mov r0, r6
006d3cd8  b1 eb f0 eb                                      bl #0x30eba4
006d3cdc  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d3ce0  68 00 8d e5                                      str r0, [sp, #0x68]
006d3ce4  0b 00 a0 e1                                      mov r0, fp
006d3ce8  02 11 83 e2                                      add r1, r3, #0x80000000
006d3cec  1e ec f0 eb                                      bl #0x30ed6c
006d3cf0  09 10 a0 e1                                      mov r1, sb
006d3cf4  00 60 a0 e1                                      mov r6, r0
006d3cf8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d3cfc  1a ec f0 eb                                      bl #0x30ed6c
006d3d00  00 10 a0 e1                                      mov r1, r0
006d3d04  06 00 a0 e1                                      mov r0, r6
006d3d08  a5 eb f0 eb                                      bl #0x30eba4
006d3d0c  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d3d10  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d3d14  f1 2a f2 eb                                      bl #0x35e8e0
006d3d18  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d3d1c  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d3d20  9f eb f0 eb                                      bl #0x30eba4
006d3d24  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d3d28  58 00 8d e5                                      str r0, [sp, #0x58]
006d3d2c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d3d30  9b eb f0 eb                                      bl #0x30eba4
006d3d34  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d3d38  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d3d3c  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d3d40  97 eb f0 eb                                      bl #0x30eba4
006d3d44  60 00 8d e5                                      str r0, [sp, #0x60]
006d3d48  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d3d4c  04 10 9d e9                                      ldmib sp, {r2, ip}
006d3d50  30 61 90 e5                                      ldr r6, [r0, #0x130]
006d3d54  01 30 46 e2                                      sub r3, r6, #1
006d3d58  05 00 53 e1                                      cmp r3, r5
006d3d5c  34 ff ff da                                      ble #0x6d3a34
006d3d60  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006d3d64  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d3d68  02 c0 8c e2                                      add ip, ip, #2
006d3d6c  9e 56 29 e0                                      mla sb, lr, r6, r5
006d3d70  be a0 d3 e1                                      ldrh sl, [r3, #0xe]
006d3d74  98 56 26 e0                                      mla r6, r8, r6, r5
006d3d78  9a 09 03 e0                                      mul r3, sl, sb
006d3d7c  99 aa 29 e0                                      mla sb, sb, sl, sl
006d3d80  03 b0 94 e7                                      ldr fp, [r4, r3]
006d3d84  03 30 84 e0                                      add r3, r4, r3
006d3d88  04 00 93 e5                                      ldr r0, [r3, #4]
006d3d8c  0b 10 a0 e1                                      mov r1, fp
006d3d90  96 aa 2a e0                                      mla sl, r6, sl, sl
006d3d94  10 00 8d e5                                      str r0, [sp, #0x10]
006d3d98  08 30 93 e5                                      ldr r3, [r3, #8]
006d3d9c  14 30 8d e5                                      str r3, [sp, #0x14]
006d3da0  09 00 94 e7                                      ldr r0, [r4, sb]
006d3da4  04 10 8d e9                                      stmib sp, {r2, ip}
006d3da8  7f e9 f0 eb                                      bl #0x30e3ac
006d3dac  09 90 84 e0                                      add sb, r4, sb
006d3db0  18 00 8d e5                                      str r0, [sp, #0x18]
006d3db4  04 00 99 e5                                      ldr r0, [sb, #4]
006d3db8  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3dbc  7a e9 f0 eb                                      bl #0x30e3ac
006d3dc0  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d3dc4  08 00 99 e5                                      ldr r0, [sb, #8]
006d3dc8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3dcc  76 e9 f0 eb                                      bl #0x30e3ac
006d3dd0  0b 10 a0 e1                                      mov r1, fp
006d3dd4  00 90 a0 e1                                      mov sb, r0
006d3dd8  0a 00 94 e7                                      ldr r0, [r4, sl]
006d3ddc  72 e9 f0 eb                                      bl #0x30e3ac
006d3de0  0a a0 84 e0                                      add sl, r4, sl
006d3de4  00 b0 a0 e1                                      mov fp, r0
006d3de8  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3dec  04 00 9a e5                                      ldr r0, [sl, #4]
006d3df0  6d e9 f0 eb                                      bl #0x30e3ac
006d3df4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3df8  00 60 a0 e1                                      mov r6, r0
006d3dfc  08 00 9a e5                                      ldr r0, [sl, #8]
006d3e00  69 e9 f0 eb                                      bl #0x30e3ac
006d3e04  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006d3e08  0c 00 8d e5                                      str r0, [sp, #0xc]
006d3e0c  02 11 8e e2                                      add r1, lr, #0x80000000
006d3e10  d5 eb f0 eb                                      bl #0x30ed6c
006d3e14  06 10 a0 e1                                      mov r1, r6
006d3e18  00 a0 a0 e1                                      mov sl, r0
006d3e1c  09 00 a0 e1                                      mov r0, sb
006d3e20  d1 eb f0 eb                                      bl #0x30ed6c
006d3e24  00 10 a0 e1                                      mov r1, r0
006d3e28  0a 00 a0 e1                                      mov r0, sl
006d3e2c  5c eb f0 eb                                      bl #0x30eba4
006d3e30  02 11 89 e2                                      add r1, sb, #0x80000000
006d3e34  64 00 8d e5                                      str r0, [sp, #0x64]
006d3e38  0b 00 a0 e1                                      mov r0, fp
006d3e3c  ca eb f0 eb                                      bl #0x30ed6c
006d3e40  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3e44  00 a0 a0 e1                                      mov sl, r0
006d3e48  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d3e4c  03 10 a0 e1                                      mov r1, r3
006d3e50  c5 eb f0 eb                                      bl #0x30ed6c
006d3e54  00 10 a0 e1                                      mov r1, r0
006d3e58  0a 00 a0 e1                                      mov r0, sl
006d3e5c  50 eb f0 eb                                      bl #0x30eba4
006d3e60  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d3e64  68 00 8d e5                                      str r0, [sp, #0x68]
006d3e68  06 00 a0 e1                                      mov r0, r6
006d3e6c  02 11 83 e2                                      add r1, r3, #0x80000000
006d3e70  bd eb f0 eb                                      bl #0x30ed6c
006d3e74  0b 10 a0 e1                                      mov r1, fp
006d3e78  00 60 a0 e1                                      mov r6, r0
006d3e7c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d3e80  b9 eb f0 eb                                      bl #0x30ed6c
006d3e84  00 10 a0 e1                                      mov r1, r0
006d3e88  06 00 a0 e1                                      mov r0, r6
006d3e8c  44 eb f0 eb                                      bl #0x30eba4
006d3e90  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d3e94  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d3e98  90 2a f2 eb                                      bl #0x35e8e0
006d3e9c  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d3ea0  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d3ea4  3e eb f0 eb                                      bl #0x30eba4
006d3ea8  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d3eac  58 00 8d e5                                      str r0, [sp, #0x58]
006d3eb0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d3eb4  3a eb f0 eb                                      bl #0x30eba4
006d3eb8  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d3ebc  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d3ec0  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d3ec4  36 eb f0 eb                                      bl #0x30eba4
006d3ec8  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006d3ecc  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d3ed0  30 b1 9e e5                                      ldr fp, [lr, #0x130]
006d3ed4  60 00 8d e5                                      str r0, [sp, #0x60]
006d3ed8  30 00 9d e5                                      ldr r0, [sp, #0x30]
006d3edc  91 5b 23 e0                                      mla r3, r1, fp, r5
006d3ee0  be 60 d0 e1                                      ldrh r6, [r0, #0xe]
006d3ee4  98 5b 2b e0                                      mla fp, r8, fp, r5
006d3ee8  96 03 03 e0                                      mul r3, r6, r3
006d3eec  9b 66 2a e0                                      mla sl, fp, r6, r6
006d3ef0  03 90 94 e7                                      ldr sb, [r4, r3]
006d3ef4  03 30 84 e0                                      add r3, r4, r3
006d3ef8  04 e0 93 e5                                      ldr lr, [r3, #4]
006d3efc  09 10 a0 e1                                      mov r1, sb
006d3f00  96 0b 06 e0                                      mul r6, r6, fp
006d3f04  10 e0 8d e5                                      str lr, [sp, #0x10]
006d3f08  08 30 93 e5                                      ldr r3, [r3, #8]
006d3f0c  14 30 8d e5                                      str r3, [sp, #0x14]
006d3f10  0a 00 94 e7                                      ldr r0, [r4, sl]
006d3f14  24 e9 f0 eb                                      bl #0x30e3ac
006d3f18  0a a0 84 e0                                      add sl, r4, sl
006d3f1c  18 00 8d e5                                      str r0, [sp, #0x18]
006d3f20  04 00 9a e5                                      ldr r0, [sl, #4]
006d3f24  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3f28  1f e9 f0 eb                                      bl #0x30e3ac
006d3f2c  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d3f30  08 00 9a e5                                      ldr r0, [sl, #8]
006d3f34  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3f38  1b e9 f0 eb                                      bl #0x30e3ac
006d3f3c  09 10 a0 e1                                      mov r1, sb
006d3f40  00 a0 a0 e1                                      mov sl, r0
006d3f44  06 00 94 e7                                      ldr r0, [r4, r6]
006d3f48  17 e9 f0 eb                                      bl #0x30e3ac
006d3f4c  06 60 84 e0                                      add r6, r4, r6
006d3f50  00 90 a0 e1                                      mov sb, r0
006d3f54  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d3f58  04 00 96 e5                                      ldr r0, [r6, #4]
006d3f5c  12 e9 f0 eb                                      bl #0x30e3ac
006d3f60  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d3f64  00 b0 a0 e1                                      mov fp, r0
006d3f68  08 00 96 e5                                      ldr r0, [r6, #8]
006d3f6c  0e e9 f0 eb                                      bl #0x30e3ac
006d3f70  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006d3f74  0c 00 8d e5                                      str r0, [sp, #0xc]
006d3f78  02 11 8e e2                                      add r1, lr, #0x80000000
006d3f7c  7a eb f0 eb                                      bl #0x30ed6c
006d3f80  0b 10 a0 e1                                      mov r1, fp
006d3f84  00 60 a0 e1                                      mov r6, r0
006d3f88  0a 00 a0 e1                                      mov r0, sl
006d3f8c  76 eb f0 eb                                      bl #0x30ed6c
006d3f90  00 10 a0 e1                                      mov r1, r0
006d3f94  06 00 a0 e1                                      mov r0, r6
006d3f98  01 eb f0 eb                                      bl #0x30eba4
006d3f9c  02 11 8a e2                                      add r1, sl, #0x80000000
006d3fa0  64 00 8d e5                                      str r0, [sp, #0x64]
006d3fa4  09 00 a0 e1                                      mov r0, sb
006d3fa8  6f eb f0 eb                                      bl #0x30ed6c
006d3fac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d3fb0  00 60 a0 e1                                      mov r6, r0
006d3fb4  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d3fb8  03 10 a0 e1                                      mov r1, r3
006d3fbc  6a eb f0 eb                                      bl #0x30ed6c
006d3fc0  00 10 a0 e1                                      mov r1, r0
006d3fc4  06 00 a0 e1                                      mov r0, r6
006d3fc8  f5 ea f0 eb                                      bl #0x30eba4
006d3fcc  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d3fd0  68 00 8d e5                                      str r0, [sp, #0x68]
006d3fd4  0b 00 a0 e1                                      mov r0, fp
006d3fd8  02 11 83 e2                                      add r1, r3, #0x80000000
006d3fdc  62 eb f0 eb                                      bl #0x30ed6c
006d3fe0  09 10 a0 e1                                      mov r1, sb
006d3fe4  00 60 a0 e1                                      mov r6, r0
006d3fe8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d3fec  5e eb f0 eb                                      bl #0x30ed6c
006d3ff0  00 10 a0 e1                                      mov r1, r0
006d3ff4  06 00 a0 e1                                      mov r0, r6
006d3ff8  e9 ea f0 eb                                      bl #0x30eba4
006d3ffc  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d4000  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d4004  35 2a f2 eb                                      bl #0x35e8e0
006d4008  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d400c  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d4010  e3 ea f0 eb                                      bl #0x30eba4
006d4014  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d4018  58 00 8d e5                                      str r0, [sp, #0x58]
006d401c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d4020  df ea f0 eb                                      bl #0x30eba4
006d4024  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d4028  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d402c  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d4030  db ea f0 eb                                      bl #0x30eba4
006d4034  24 10 9d e5                                      ldr r1, [sp, #0x24]
006d4038  04 10 9d e9                                      ldmib sp, {r2, ip}
006d403c  30 61 91 e5                                      ldr r6, [r1, #0x130]
006d4040  60 00 8d e5                                      str r0, [sp, #0x60]
006d4044  01 30 46 e2                                      sub r3, r6, #1
006d4048  79 fe ff ea                                      b #0x6d3a34
006d404c  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d4050  98 56 2b e0                                      mla fp, r8, r6, r5
006d4054  be 90 d3 e1                                      ldrh sb, [r3, #0xe]
006d4058  01 a0 85 e2                                      add sl, r5, #1
006d405c  9b 99 21 e0                                      mla r1, fp, sb, sb
006d4060  99 0b 0b e0                                      mul fp, sb, fp
006d4064  01 30 94 e7                                      ldr r3, [r4, r1]
006d4068  01 10 84 e0                                      add r1, r4, r1
006d406c  04 e0 91 e5                                      ldr lr, [r1, #4]
006d4070  10 e0 8d e5                                      str lr, [sp, #0x10]
006d4074  08 10 91 e5                                      ldr r1, [r1, #8]
006d4078  14 10 8d e5                                      str r1, [sp, #0x14]
006d407c  0b 00 94 e7                                      ldr r0, [r4, fp]
006d4080  03 10 a0 e1                                      mov r1, r3
006d4084  04 20 8d e5                                      str r2, [sp, #4]
006d4088  0c 30 8d e5                                      str r3, [sp, #0xc]
006d408c  08 c0 8d e5                                      str ip, [sp, #8]
006d4090  c5 e8 f0 eb                                      bl #0x30e3ac
006d4094  0b b0 84 e0                                      add fp, r4, fp
006d4098  18 00 8d e5                                      str r0, [sp, #0x18]
006d409c  04 00 9b e5                                      ldr r0, [fp, #4]
006d40a0  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d40a4  c0 e8 f0 eb                                      bl #0x30e3ac
006d40a8  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d40ac  08 00 9b e5                                      ldr r0, [fp, #8]
006d40b0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d40b4  bc e8 f0 eb                                      bl #0x30e3ac
006d40b8  28 00 8d e5                                      str r0, [sp, #0x28]
006d40bc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d40c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d40c4  08 c0 9d e5                                      ldr ip, [sp, #8]
006d40c8  90 a6 26 e0                                      mla r6, r0, r6, sl
006d40cc  02 c0 8c e2                                      add ip, ip, #2
006d40d0  99 06 09 e0                                      mul sb, sb, r6
006d40d4  03 10 a0 e1                                      mov r1, r3
006d40d8  09 00 94 e7                                      ldr r0, [r4, sb]
006d40dc  08 c0 8d e5                                      str ip, [sp, #8]
006d40e0  b1 e8 f0 eb                                      bl #0x30e3ac
006d40e4  09 90 84 e0                                      add sb, r4, sb
006d40e8  00 b0 a0 e1                                      mov fp, r0
006d40ec  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d40f0  04 00 99 e5                                      ldr r0, [sb, #4]
006d40f4  ac e8 f0 eb                                      bl #0x30e3ac
006d40f8  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d40fc  00 60 a0 e1                                      mov r6, r0
006d4100  08 00 99 e5                                      ldr r0, [sb, #8]
006d4104  a8 e8 f0 eb                                      bl #0x30e3ac
006d4108  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006d410c  0c 00 8d e5                                      str r0, [sp, #0xc]
006d4110  02 11 8e e2                                      add r1, lr, #0x80000000
006d4114  14 eb f0 eb                                      bl #0x30ed6c
006d4118  06 10 a0 e1                                      mov r1, r6
006d411c  00 90 a0 e1                                      mov sb, r0
006d4120  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d4124  10 eb f0 eb                                      bl #0x30ed6c
006d4128  00 10 a0 e1                                      mov r1, r0
006d412c  09 00 a0 e1                                      mov r0, sb
006d4130  9b ea f0 eb                                      bl #0x30eba4
006d4134  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006d4138  64 00 8d e5                                      str r0, [sp, #0x64]
006d413c  0b 00 a0 e1                                      mov r0, fp
006d4140  02 11 8e e2                                      add r1, lr, #0x80000000
006d4144  08 eb f0 eb                                      bl #0x30ed6c
006d4148  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d414c  00 90 a0 e1                                      mov sb, r0
006d4150  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d4154  03 10 a0 e1                                      mov r1, r3
006d4158  03 eb f0 eb                                      bl #0x30ed6c
006d415c  00 10 a0 e1                                      mov r1, r0
006d4160  09 00 a0 e1                                      mov r0, sb
006d4164  8e ea f0 eb                                      bl #0x30eba4
006d4168  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d416c  68 00 8d e5                                      str r0, [sp, #0x68]
006d4170  06 00 a0 e1                                      mov r0, r6
006d4174  02 11 83 e2                                      add r1, r3, #0x80000000
006d4178  fb ea f0 eb                                      bl #0x30ed6c
006d417c  0b 10 a0 e1                                      mov r1, fp
006d4180  00 60 a0 e1                                      mov r6, r0
006d4184  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d4188  f7 ea f0 eb                                      bl #0x30ed6c
006d418c  00 10 a0 e1                                      mov r1, r0
006d4190  06 00 a0 e1                                      mov r0, r6
006d4194  82 ea f0 eb                                      bl #0x30eba4
006d4198  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d419c  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d41a0  ce 29 f2 eb                                      bl #0x35e8e0
006d41a4  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d41a8  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d41ac  7c ea f0 eb                                      bl #0x30eba4
006d41b0  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d41b4  58 00 8d e5                                      str r0, [sp, #0x58]
006d41b8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d41bc  78 ea f0 eb                                      bl #0x30eba4
006d41c0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d41c4  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d41c8  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d41cc  74 ea f0 eb                                      bl #0x30eba4
006d41d0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006d41d4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006d41d8  30 91 9e e5                                      ldr sb, [lr, #0x130]
006d41dc  60 00 8d e5                                      str r0, [sp, #0x60]
006d41e0  30 00 9d e5                                      ldr r0, [sp, #0x30]
006d41e4  98 59 21 e0                                      mla r1, r8, sb, r5
006d41e8  be 60 d0 e1                                      ldrh r6, [r0, #0xe]
006d41ec  93 59 29 e0                                      mla sb, r3, sb, r5
006d41f0  91 66 21 e0                                      mla r1, r1, r6, r6
006d41f4  99 66 2b e0                                      mla fp, sb, r6, r6
006d41f8  01 30 94 e7                                      ldr r3, [r4, r1]
006d41fc  01 10 84 e0                                      add r1, r4, r1
006d4200  04 e0 91 e5                                      ldr lr, [r1, #4]
006d4204  96 09 09 e0                                      mul sb, r6, sb
006d4208  10 e0 8d e5                                      str lr, [sp, #0x10]
006d420c  08 10 91 e5                                      ldr r1, [r1, #8]
006d4210  14 10 8d e5                                      str r1, [sp, #0x14]
006d4214  0b 00 94 e7                                      ldr r0, [r4, fp]
006d4218  03 10 a0 e1                                      mov r1, r3
006d421c  0c 30 8d e5                                      str r3, [sp, #0xc]
006d4220  61 e8 f0 eb                                      bl #0x30e3ac
006d4224  0b b0 84 e0                                      add fp, r4, fp
006d4228  18 00 8d e5                                      str r0, [sp, #0x18]
006d422c  04 00 9b e5                                      ldr r0, [fp, #4]
006d4230  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d4234  5c e8 f0 eb                                      bl #0x30e3ac
006d4238  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d423c  08 00 9b e5                                      ldr r0, [fp, #8]
006d4240  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d4244  58 e8 f0 eb                                      bl #0x30e3ac
006d4248  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d424c  28 00 8d e5                                      str r0, [sp, #0x28]
006d4250  09 00 94 e7                                      ldr r0, [r4, sb]
006d4254  03 10 a0 e1                                      mov r1, r3
006d4258  53 e8 f0 eb                                      bl #0x30e3ac
006d425c  09 90 84 e0                                      add sb, r4, sb
006d4260  00 b0 a0 e1                                      mov fp, r0
006d4264  10 10 9d e5                                      ldr r1, [sp, #0x10]
006d4268  04 00 99 e5                                      ldr r0, [sb, #4]
006d426c  4e e8 f0 eb                                      bl #0x30e3ac
006d4270  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d4274  00 60 a0 e1                                      mov r6, r0
006d4278  08 00 99 e5                                      ldr r0, [sb, #8]
006d427c  4a e8 f0 eb                                      bl #0x30e3ac
006d4280  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006d4284  0c 00 8d e5                                      str r0, [sp, #0xc]
006d4288  02 11 8e e2                                      add r1, lr, #0x80000000
006d428c  b6 ea f0 eb                                      bl #0x30ed6c
006d4290  06 10 a0 e1                                      mov r1, r6
006d4294  00 90 a0 e1                                      mov sb, r0
006d4298  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d429c  b2 ea f0 eb                                      bl #0x30ed6c
006d42a0  00 10 a0 e1                                      mov r1, r0
006d42a4  09 00 a0 e1                                      mov r0, sb
006d42a8  3d ea f0 eb                                      bl #0x30eba4
006d42ac  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006d42b0  64 00 8d e5                                      str r0, [sp, #0x64]
006d42b4  0b 00 a0 e1                                      mov r0, fp
006d42b8  02 11 8e e2                                      add r1, lr, #0x80000000
006d42bc  aa ea f0 eb                                      bl #0x30ed6c
006d42c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d42c4  00 90 a0 e1                                      mov sb, r0
006d42c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d42cc  03 10 a0 e1                                      mov r1, r3
006d42d0  a5 ea f0 eb                                      bl #0x30ed6c
006d42d4  00 10 a0 e1                                      mov r1, r0
006d42d8  09 00 a0 e1                                      mov r0, sb
006d42dc  30 ea f0 eb                                      bl #0x30eba4
006d42e0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d42e4  68 00 8d e5                                      str r0, [sp, #0x68]
006d42e8  06 00 a0 e1                                      mov r0, r6
006d42ec  02 11 83 e2                                      add r1, r3, #0x80000000
006d42f0  9d ea f0 eb                                      bl #0x30ed6c
006d42f4  0b 10 a0 e1                                      mov r1, fp
006d42f8  00 60 a0 e1                                      mov r6, r0
006d42fc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d4300  99 ea f0 eb                                      bl #0x30ed6c
006d4304  00 10 a0 e1                                      mov r1, r0
006d4308  06 00 a0 e1                                      mov r0, r6
006d430c  24 ea f0 eb                                      bl #0x30eba4
006d4310  6c 00 8d e5                                      str r0, [sp, #0x6c]
006d4314  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d4318  70 29 f2 eb                                      bl #0x35e8e0
006d431c  58 00 9d e5                                      ldr r0, [sp, #0x58]
006d4320  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d4324  1e ea f0 eb                                      bl #0x30eba4
006d4328  68 10 9d e5                                      ldr r1, [sp, #0x68]
006d432c  58 00 8d e5                                      str r0, [sp, #0x58]
006d4330  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d4334  1a ea f0 eb                                      bl #0x30eba4
006d4338  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d433c  5c 00 8d e5                                      str r0, [sp, #0x5c]
006d4340  60 00 9d e5                                      ldr r0, [sp, #0x60]
006d4344  16 ea f0 eb                                      bl #0x30eba4
006d4348  24 10 9d e5                                      ldr r1, [sp, #0x24]
006d434c  04 10 9d e9                                      ldmib sp, {r2, ip}
006d4350  30 61 91 e5                                      ldr r6, [r1, #0x130]
006d4354  60 00 8d e5                                      str r0, [sp, #0x60]
006d4358  01 30 46 e2                                      sub r3, r6, #1
006d435c  cb fc ff ea                                      b #0x6d3690
006d4360  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006d4364  48 20 8d e5                                      str r2, [sp, #0x48]
006d4368  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d436c  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d4370  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d4374  01 00 80 e2                                      add r0, r0, #1
006d4378  01 10 81 e2                                      add r1, r1, #1
006d437c  03 00 56 e1                                      cmp r6, r3
006d4380  01 80 88 e2                                      add r8, r8, #1
006d4384  3c 00 8d e5                                      str r0, [sp, #0x3c]
006d4388  38 10 8d e5                                      str r1, [sp, #0x38]
006d438c  b2 fc ff ca                                      bgt #0x6d365c
006d4390  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006d4394  00 00 51 e3                                      cmp r1, #0
006d4398  0a 00 00 0a                                      beq #0x6d43c8
006d439c  54 20 9d e5                                      ldr r2, [sp, #0x54]
006d43a0  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d43a4  02 52 93 e7                                      ldr r5, [r3, r2, lsl #4]
006d43a8  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006d43ac  1f 20 03 e2                                      and r2, r3, #0x1f
006d43b0  01 00 52 e3                                      cmp r2, #1
006d43b4  10 00 00 9a                                      bls #0x6d43fc
006d43b8  01 20 42 e2                                      sub r2, r2, #1
006d43bc  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d43c0  03 30 82 e1                                      orr r3, r2, r3
006d43c4  13 30 c5 e5                                      strb r3, [r5, #0x13]
006d43c8  00 00 54 e3                                      cmp r4, #0
006d43cc  73 fc ff 0a                                      beq #0x6d35a0
006d43d0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006d43d4  14 40 90 e5                                      ldr r4, [r0, #0x14]
006d43d8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d43dc  1f 20 03 e2                                      and r2, r3, #0x1f
006d43e0  01 00 52 e3                                      cmp r2, #1
006d43e4  0a 00 00 9a                                      bls #0x6d4414
006d43e8  01 20 42 e2                                      sub r2, r2, #1
006d43ec  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d43f0  03 30 82 e1                                      orr r3, r2, r3
006d43f4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d43f8  68 fc ff ea                                      b #0x6d35a0
006d43fc  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006d4400  20 00 13 e3                                      tst r3, #0x20
006d4404  08 00 00 1a                                      bne #0x6d442c
006d4408  00 30 a0 e3                                      mov r3, #0
006d440c  13 30 c5 e5                                      strb r3, [r5, #0x13]
006d4410  ec ff ff ea                                      b #0x6d43c8
006d4414  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4418  20 00 13 e3                                      tst r3, #0x20
006d441c  07 00 00 1a                                      bne #0x6d4440
006d4420  00 30 a0 e3                                      mov r3, #0
006d4424  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4428  5c fc ff ea                                      b #0x6d35a0
006d442c  00 30 95 e5                                      ldr r3, [r5]
006d4430  05 00 a0 e1                                      mov r0, r5
006d4434  0f e0 a0 e1                                      mov lr, pc
006d4438  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d443c  f1 ff ff ea                                      b #0x6d4408
006d4440  00 30 94 e5                                      ldr r3, [r4]
006d4444  04 00 a0 e1                                      mov r0, r4
006d4448  0f e0 a0 e1                                      mov lr, pc
006d444c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d4450  f2 ff ff ea                                      b #0x6d4420

; FUNCTION 0x006d4454, declared_size=3604, range_size=3604, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode13loadHeightMapEPNS_2io9IReadFileENS_5video6SColorEi
; demangled: glitch::scene::CTerrainSceneNode::loadHeightMap(glitch::io::IReadFile*, glitch::video::SColor, int)
; decoder-mode: arm
006d4454  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d4458  f4 4d 9f e5                                      ldr r4, [pc, #0xdf4]
006d445c  f4 cd 9f e5                                      ldr ip, [pc, #0xdf4]
006d4460  77 df 4d e2                                      sub sp, sp, #0x1dc
006d4464  04 40 8f e0                                      add r4, pc, r4
006d4468  84 20 8d e5                                      str r2, [sp, #0x84]
006d446c  0c 20 94 e7                                      ldr r2, [r4, ip]
006d4470  60 40 8d e5                                      str r4, [sp, #0x60]
006d4474  20 00 8d e5                                      str r0, [sp, #0x20]
006d4478  00 20 92 e5                                      ldr r2, [r2]
006d447c  00 40 51 e2                                      subs r4, r1, #0
006d4480  70 30 8d e5                                      str r3, [sp, #0x70]
006d4484  84 00 dd e5                                      ldrb r0, [sp, #0x84]
006d4488  d4 21 8d e5                                      str r2, [sp, #0x1d4]
006d448c  85 10 dd e5                                      ldrb r1, [sp, #0x85]
006d4490  86 20 dd e5                                      ldrb r2, [sp, #0x86]
006d4494  87 30 dd e5                                      ldrb r3, [sp, #0x87]
006d4498  68 c0 8d e5                                      str ip, [sp, #0x68]
006d449c  48 00 8d e5                                      str r0, [sp, #0x48]
006d44a0  44 10 8d e5                                      str r1, [sp, #0x44]
006d44a4  40 20 8d e5                                      str r2, [sp, #0x40]
006d44a8  3c 30 8d e5                                      str r3, [sp, #0x3c]
006d44ac  4a 02 00 0a                                      beq #0x6d4ddc
006d44b0  05 db fc eb                                      bl #0x60b0cc
006d44b4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006d44b8  74 00 8d e5                                      str r0, [sp, #0x74]
006d44bc  04 20 a0 e1                                      mov r2, r4
006d44c0  10 31 9c e5                                      ldr r3, [ip, #0x110]
006d44c4  d0 00 8d e2                                      add r0, sp, #0xd0
006d44c8  14 50 93 e5                                      ldr r5, [r3, #0x14]
006d44cc  e0 10 95 e5                                      ldr r1, [r5, #0xe0]
006d44d0  19 53 fc eb                                      bl #0x5e913c
006d44d4  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
006d44d8  00 00 53 e3                                      cmp r3, #0
006d44dc  c5 02 00 0a                                      beq #0x6d4ff8
006d44e0  00 30 94 e5                                      ldr r3, [r4]
006d44e4  04 00 a0 e1                                      mov r0, r4
006d44e8  0f e0 a0 e1                                      mov lr, pc
006d44ec  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006d44f0  00 40 a0 e1                                      mov r4, r0
006d44f4  56 e6 f0 eb                                      bl #0x30de54
006d44f8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d44fc  00 20 84 e0                                      add r2, r4, r0
006d4500  04 10 a0 e1                                      mov r1, r4
006d4504  1f 0e 83 e2                                      add r0, r3, #0x1f0
006d4508  9e 31 f1 eb                                      bl #0x320b88
006d450c  20 40 9d e5                                      ldr r4, [sp, #0x20]
006d4510  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
006d4514  74 31 94 e5                                      ldr r3, [r4, #0x174]
006d4518  10 c0 92 e5                                      ldr ip, [r2, #0x10]
006d451c  21 00 53 e3                                      cmp r3, #0x21
006d4520  30 c1 84 e5                                      str ip, [r4, #0x130]
006d4524  0a 00 00 0a                                      beq #0x6d4554
006d4528  35 02 00 ca                                      bgt #0x6d4e04
006d452c  09 00 53 e3                                      cmp r3, #9
006d4530  3d 02 00 0a                                      beq #0x6d4e2c
006d4534  11 00 53 e3                                      cmp r3, #0x11
006d4538  0a 00 00 1a                                      bne #0x6d4568
006d453c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d4540  80 31 91 e5                                      ldr r3, [r1, #0x180]
006d4544  04 00 53 e3                                      cmp r3, #4
006d4548  04 30 a0 c3                                      movgt r3, #4
006d454c  80 31 81 c5                                      strgt r3, [r1, #0x180]
006d4550  04 00 00 ea                                      b #0x6d4568
006d4554  20 20 9d e5                                      ldr r2, [sp, #0x20]
006d4558  80 31 92 e5                                      ldr r3, [r2, #0x180]
006d455c  05 00 53 e3                                      cmp r3, #5
006d4560  05 30 a0 c3                                      movgt r3, #5
006d4564  80 31 82 c5                                      strgt r3, [r2, #0x180]
006d4568  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d456c  9c 0c 0c e0                                      mul ip, ip, ip
006d4570  ac 31 91 e5                                      ldr r3, [r1, #0x1ac]
006d4574  cc 20 8d e2                                      add r2, sp, #0xcc
006d4578  6c 20 8d e5                                      str r2, [sp, #0x6c]
006d457c  02 00 a0 e1                                      mov r0, r2
006d4580  03 10 a0 e1                                      mov r1, r3
006d4584  00 20 a0 e3                                      mov r2, #0
006d4588  00 30 93 e5                                      ldr r3, [r3]
006d458c  50 c0 8d e5                                      str ip, [sp, #0x50]
006d4590  0f e0 a0 e1                                      mov lr, pc
006d4594  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d4598  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006d459c  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d45a0  54 30 8d e5                                      str r3, [sp, #0x54]
006d45a4  00 00 53 e3                                      cmp r3, #0
006d45a8  00 30 93 15                                      ldrne r3, [r3]
006d45ac  54 40 9d 15                                      ldrne r4, [sp, #0x54]
006d45b0  01 30 83 12                                      addne r3, r3, #1
006d45b4  00 30 84 15                                      strne r3, [r4]
006d45b8  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006d45bc  14 30 9c e5                                      ldr r3, [ip, #0x14]
006d45c0  14 00 8c e2                                      add r0, ip, #0x14
006d45c4  28 00 8d e5                                      str r0, [sp, #0x28]
006d45c8  c8 30 8d e5                                      str r3, [sp, #0xc8]
006d45cc  00 00 53 e3                                      cmp r3, #0
006d45d0  04 20 93 15                                      ldrne r2, [r3, #4]
006d45d4  01 20 82 12                                      addne r2, r2, #1
006d45d8  04 20 83 15                                      strne r2, [r3, #4]
006d45dc  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d45e0  b0 31 91 e5                                      ldr r3, [r1, #0x1b0]
006d45e4  14 30 93 e5                                      ldr r3, [r3, #0x14]
006d45e8  5c 30 8d e5                                      str r3, [sp, #0x5c]
006d45ec  00 00 53 e3                                      cmp r3, #0
006d45f0  00 30 93 15                                      ldrne r3, [r3]
006d45f4  5c 20 9d 15                                      ldrne r2, [sp, #0x5c]
006d45f8  01 30 83 12                                      addne r3, r3, #1
006d45fc  00 30 82 15                                      strne r3, [r2]
006d4600  5c 40 9d e5                                      ldr r4, [sp, #0x5c]
006d4604  14 30 94 e5                                      ldr r3, [r4, #0x14]
006d4608  14 c0 84 e2                                      add ip, r4, #0x14
006d460c  58 c0 8d e5                                      str ip, [sp, #0x58]
006d4610  00 00 53 e3                                      cmp r3, #0
006d4614  c4 30 8d e5                                      str r3, [sp, #0xc4]
006d4618  04 20 93 15                                      ldrne r2, [r3, #4]
006d461c  01 20 82 12                                      addne r2, r2, #1
006d4620  04 20 83 15                                      strne r2, [r3, #4]
006d4624  c8 40 9d e5                                      ldr r4, [sp, #0xc8]
006d4628  00 00 54 e3                                      cmp r4, #0
006d462c  d4 02 00 0a                                      beq #0x6d5184
006d4630  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d4634  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d4638  00 10 a0 e3                                      mov r1, #0
006d463c  be 30 d0 e1                                      ldrh r3, [r0, #0xe]
006d4640  93 02 03 e0                                      mul r3, r3, r2
006d4644  03 00 a0 e1                                      mov r0, r3
006d4648  64 30 8d e5                                      str r3, [sp, #0x64]
006d464c  d5 7e f9 eb                                      bl #0x5341a8
006d4650  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d4654  00 20 a0 e1                                      mov r2, r0
006d4658  01 30 a0 e3                                      mov r3, #1
006d465c  04 00 a0 e1                                      mov r0, r4
006d4660  93 35 fb eb                                      bl #0x5a1cb4
006d4664  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d4668  54 40 9d e5                                      ldr r4, [sp, #0x54]
006d466c  00 10 a0 e3                                      mov r1, #0
006d4670  08 30 84 e5                                      str r3, [r4, #8]
006d4674  64 00 9d e5                                      ldr r0, [sp, #0x64]
006d4678  c4 40 9d e5                                      ldr r4, [sp, #0xc4]
006d467c  c9 7e f9 eb                                      bl #0x5341a8
006d4680  64 10 9d e5                                      ldr r1, [sp, #0x64]
006d4684  00 20 a0 e1                                      mov r2, r0
006d4688  01 30 a0 e3                                      mov r3, #1
006d468c  04 00 a0 e1                                      mov r0, r4
006d4690  87 35 fb eb                                      bl #0x5a1cb4
006d4694  50 c0 9d e5                                      ldr ip, [sp, #0x50]
006d4698  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d469c  08 c0 80 e5                                      str ip, [r0, #8]
006d46a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d46a4  b0 31 91 e5                                      ldr r3, [r1, #0x1b0]
006d46a8  18 30 93 e5                                      ldr r3, [r3, #0x18]
006d46ac  00 00 53 e3                                      cmp r3, #0
006d46b0  b8 30 8d e5                                      str r3, [sp, #0xb8]
006d46b4  73 02 00 0a                                      beq #0x6d5088
006d46b8  04 20 93 e5                                      ldr r2, [r3, #4]
006d46bc  01 20 82 e2                                      add r2, r2, #1
006d46c0  04 20 83 e5                                      str r2, [r3, #4]
006d46c4  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
006d46c8  00 00 53 e3                                      cmp r3, #0
006d46cc  6d 02 00 0a                                      beq #0x6d5088
006d46d0  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d46d4  54 20 9d e5                                      ldr r2, [sp, #0x54]
006d46d8  14 00 91 e5                                      ldr r0, [r1, #0x14]
006d46dc  02 10 a0 e3                                      mov r1, #2
006d46e0  04 40 92 e5                                      ldr r4, [r2, #4]
006d46e4  c1 34 fb eb                                      bl #0x5a19f0
006d46e8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d46ec  02 00 14 e3                                      tst r4, #2
006d46f0  04 20 93 e5                                      ldr r2, [r3, #4]
006d46f4  00 30 a0 e3                                      mov r3, #0
006d46f8  ac 30 8d e5                                      str r3, [sp, #0xac]
006d46fc  02 20 80 e0                                      add r2, r0, r2
006d4700  18 20 8d e5                                      str r2, [sp, #0x18]
006d4704  a8 30 8d e5                                      str r3, [sp, #0xa8]
006d4708  14 02 00 1a                                      bne #0x6d4f60
006d470c  00 30 a0 e3                                      mov r3, #0
006d4710  04 00 14 e3                                      tst r4, #4
006d4714  a4 30 8d e5                                      str r3, [sp, #0xa4]
006d4718  a0 30 8d e5                                      str r3, [sp, #0xa0]
006d471c  f1 01 00 1a                                      bne #0x6d4ee8
006d4720  02 38 14 e2                                      ands r3, r4, #0x20000
006d4724  34 30 8d 05                                      streq r3, [sp, #0x34]
006d4728  03 90 a0 01                                      moveq sb, r3
006d472c  fa 01 00 1a                                      bne #0x6d4f1c
006d4730  01 37 14 e2                                      ands r3, r4, #0x40000
006d4734  38 30 8d 05                                      streq r3, [sp, #0x38]
006d4738  03 a0 a0 01                                      moveq sl, r3
006d473c  d2 01 00 1a                                      bne #0x6d4e8c
006d4740  20 20 9d e5                                      ldr r2, [sp, #0x20]
006d4744  30 b1 92 e5                                      ldr fp, [r2, #0x130]
006d4748  01 00 4b e2                                      sub r0, fp, #1
006d474c  84 e8 f0 eb                                      bl #0x30e964
006d4750  00 10 a0 e1                                      mov r1, r0
006d4754  fe 05 a0 e3                                      mov r0, #0x3f800000
006d4758  4d e9 f0 eb                                      bl #0x30ec94
006d475c  00 00 5b e3                                      cmp fp, #0
006d4760  30 00 8d e5                                      str r0, [sp, #0x30]
006d4764  90 00 00 da                                      ble #0x6d49ac
006d4768  00 30 a0 e3                                      mov r3, #0
006d476c  00 c0 a0 e3                                      mov ip, #0
006d4770  06 40 04 e2                                      and r4, r4, #6
006d4774  2c 40 8d e5                                      str r4, [sp, #0x2c]
006d4778  4c 30 8d e5                                      str r3, [sp, #0x4c]
006d477c  1c c0 8d e5                                      str ip, [sp, #0x1c]
006d4780  24 30 8d e5                                      str r3, [sp, #0x24]
006d4784  0c 40 a0 e1                                      mov r4, ip
006d4788  00 70 a0 e3                                      mov r7, #0
006d478c  00 50 a0 e3                                      mov r5, #0
006d4790  07 80 a0 e1                                      mov r8, r7
006d4794  07 00 00 ea                                      b #0x6d47b8
006d4798  08 00 a0 e1                                      mov r0, r8
006d479c  fe 15 a0 e3                                      mov r1, #0x3f800000
006d47a0  ff e8 f0 eb                                      bl #0x30eba4
006d47a4  30 10 9d e5                                      ldr r1, [sp, #0x30]
006d47a8  00 80 a0 e1                                      mov r8, r0
006d47ac  07 00 a0 e1                                      mov r0, r7
006d47b0  fb e8 f0 eb                                      bl #0x30eba4
006d47b4  00 70 a0 e1                                      mov r7, r0
006d47b8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d47bc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006d47c0  be 60 d0 e1                                      ldrh r6, [r0, #0xe]
006d47c4  0b 10 62 e0                                      rsb r1, r2, fp
006d47c8  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006d47cc  05 20 a0 e1                                      mov r2, r5
006d47d0  0c ac fc eb                                      bl #0x5ff808
006d47d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006d47d8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006d47dc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006d47e0  7a 20 cd e5                                      strb r2, [sp, #0x7a]
006d47e4  79 10 cd e5                                      strb r1, [sp, #0x79]
006d47e8  7b 30 cd e5                                      strb r3, [sp, #0x7b]
006d47ec  78 00 cd e5                                      strb r0, [sp, #0x78]
006d47f0  78 c0 9d e5                                      ldr ip, [sp, #0x78]
006d47f4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d47f8  94 06 06 e0                                      mul r6, r4, r6
006d47fc  7c 00 ef e6                                      uxtb r0, ip
006d4800  06 b0 83 e0                                      add fp, r3, r6
006d4804  b0 c0 8d e5                                      str ip, [sp, #0xb0]
006d4808  2c 34 a0 e1                                      lsr r3, ip, #8
006d480c  2c c8 a0 e1                                      lsr ip, ip, #0x10
006d4810  10 c0 8d e5                                      str ip, [sp, #0x10]
006d4814  14 30 8d e5                                      str r3, [sp, #0x14]
006d4818  51 e8 f0 eb                                      bl #0x30e964
006d481c  9a 19 09 e3                                      movw r1, #0x999a
006d4820  99 1e 43 e3                                      movt r1, #0x3e99
006d4824  50 e9 f0 eb                                      bl #0x30ed6c
006d4828  14 30 9d e5                                      ldr r3, [sp, #0x14]
006d482c  00 20 a0 e1                                      mov r2, r0
006d4830  14 20 8d e5                                      str r2, [sp, #0x14]
006d4834  73 00 ef e6                                      uxtb r0, r3
006d4838  49 e8 f0 eb                                      bl #0x30e964
006d483c  3d 1a 00 e3                                      movw r1, #0xa3d
006d4840  17 1f 43 e3                                      movt r1, #0x3f17
006d4844  48 e9 f0 eb                                      bl #0x30ed6c
006d4848  14 20 9d e5                                      ldr r2, [sp, #0x14]
006d484c  00 10 a0 e1                                      mov r1, r0
006d4850  02 00 a0 e1                                      mov r0, r2
006d4854  d2 e8 f0 eb                                      bl #0x30eba4
006d4858  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006d485c  00 30 a0 e1                                      mov r3, r0
006d4860  14 30 8d e5                                      str r3, [sp, #0x14]
006d4864  7c 00 ef e6                                      uxtb r0, ip
006d4868  3d e8 f0 eb                                      bl #0x30e964
006d486c  ae 17 04 e3                                      movw r1, #0x47ae
006d4870  e1 1d 43 e3                                      movt r1, #0x3de1
006d4874  3c e9 f0 eb                                      bl #0x30ed6c
006d4878  14 30 9d e5                                      ldr r3, [sp, #0x14]
006d487c  00 10 a0 e1                                      mov r1, r0
006d4880  03 00 a0 e1                                      mov r0, r3
006d4884  c6 e8 f0 eb                                      bl #0x30eba4
006d4888  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006d488c  24 10 9d e5                                      ldr r1, [sp, #0x24]
006d4890  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d4894  00 00 5c e3                                      cmp ip, #0
006d4898  06 10 82 e7                                      str r1, [r2, r6]
006d489c  04 00 8b e5                                      str r0, [fp, #4]
006d48a0  08 80 8b e5                                      str r8, [fp, #8]
006d48a4  12 00 00 0a                                      beq #0x6d48f4
006d48a8  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
006d48ac  fe 05 a0 e3                                      mov r0, #0x3f800000
006d48b0  bd e6 f0 eb                                      bl #0x30e3ac
006d48b4  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
006d48b8  ac 20 9d e5                                      ldr r2, [sp, #0xac]
006d48bc  be 30 d3 e1                                      ldrh r3, [r3, #0xe]
006d48c0  94 03 03 e0                                      mul r3, r4, r3
006d48c4  03 10 82 e0                                      add r1, r2, r3
006d48c8  03 00 82 e7                                      str r0, [r2, r3]
006d48cc  04 70 81 e5                                      str r7, [r1, #4]
006d48d0  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
006d48d4  00 00 53 e3                                      cmp r3, #0
006d48d8  05 00 00 0a                                      beq #0x6d48f4
006d48dc  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
006d48e0  be 20 d2 e1                                      ldrh r2, [r2, #0xe]
006d48e4  94 02 02 e0                                      mul r2, r4, r2
006d48e8  02 10 83 e0                                      add r1, r3, r2
006d48ec  02 00 83 e7                                      str r0, [r3, r2]
006d48f0  04 70 81 e5                                      str r7, [r1, #4]
006d48f4  00 00 59 e3                                      cmp sb, #0
006d48f8  08 00 00 0a                                      beq #0x6d4920
006d48fc  34 30 9d e5                                      ldr r3, [sp, #0x34]
006d4900  00 c0 a0 e3                                      mov ip, #0
006d4904  fe 05 a0 e3                                      mov r0, #0x3f800000
006d4908  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006d490c  94 02 02 e0                                      mul r2, r4, r2
006d4910  02 30 89 e0                                      add r3, sb, r2
006d4914  02 c0 89 e7                                      str ip, [sb, r2]
006d4918  08 c0 83 e5                                      str ip, [r3, #8]
006d491c  04 00 83 e5                                      str r0, [r3, #4]
006d4920  00 00 5a e3                                      cmp sl, #0
006d4924  0b 00 00 0a                                      beq #0x6d4958
006d4928  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d492c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
006d4930  be 20 d1 e1                                      ldrh r2, [r1, #0xe]
006d4934  94 02 02 e0                                      mul r2, r4, r2
006d4938  02 30 8a e0                                      add r3, sl, r2
006d493c  01 c0 c3 e5                                      strb ip, [r3, #1]
006d4940  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d4944  03 00 c3 e5                                      strb r0, [r3, #3]
006d4948  40 10 9d e5                                      ldr r1, [sp, #0x40]
006d494c  02 10 c3 e5                                      strb r1, [r3, #2]
006d4950  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d4954  02 30 ca e7                                      strb r3, [sl, r2]
006d4958  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006d495c  01 50 85 e2                                      add r5, r5, #1
006d4960  01 40 84 e2                                      add r4, r4, #1
006d4964  30 b1 9c e5                                      ldr fp, [ip, #0x130]
006d4968  05 00 5b e1                                      cmp fp, r5
006d496c  89 ff ff ca                                      bgt #0x6d4798
006d4970  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d4974  01 00 80 e2                                      add r0, r0, #1
006d4978  00 00 5b e1                                      cmp fp, r0
006d497c  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d4980  09 00 00 da                                      ble #0x6d49ac
006d4984  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d4988  fe 15 a0 e3                                      mov r1, #0x3f800000
006d498c  84 e8 f0 eb                                      bl #0x30eba4
006d4990  30 10 9d e5                                      ldr r1, [sp, #0x30]
006d4994  24 00 8d e5                                      str r0, [sp, #0x24]
006d4998  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006d499c  80 e8 f0 eb                                      bl #0x30eba4
006d49a0  00 00 5b e3                                      cmp fp, #0
006d49a4  4c 00 8d e5                                      str r0, [sp, #0x4c]
006d49a8  76 ff ff ca                                      bgt #0x6d4788
006d49ac  00 00 5a e3                                      cmp sl, #0
006d49b0  09 00 00 0a                                      beq #0x6d49dc
006d49b4  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d49b8  00 40 91 e5                                      ldr r4, [r1]
006d49bc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d49c0  1f 20 03 e2                                      and r2, r3, #0x1f
006d49c4  01 00 52 e3                                      cmp r2, #1
006d49c8  78 01 00 9a                                      bls #0x6d4fb0
006d49cc  01 20 42 e2                                      sub r2, r2, #1
006d49d0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d49d4  03 30 82 e1                                      orr r3, r2, r3
006d49d8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d49dc  00 00 59 e3                                      cmp sb, #0
006d49e0  09 00 00 0a                                      beq #0x6d4a0c
006d49e4  34 20 9d e5                                      ldr r2, [sp, #0x34]
006d49e8  00 40 92 e5                                      ldr r4, [r2]
006d49ec  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d49f0  1f 20 03 e2                                      and r2, r3, #0x1f
006d49f4  01 00 52 e3                                      cmp r2, #1
006d49f8  34 01 00 9a                                      bls #0x6d4ed0
006d49fc  01 20 42 e2                                      sub r2, r2, #1
006d4a00  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d4a04  03 30 82 e1                                      orr r3, r2, r3
006d4a08  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4a0c  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
006d4a10  00 00 53 e3                                      cmp r3, #0
006d4a14  0c 00 00 0a                                      beq #0x6d4a4c
006d4a18  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006d4a1c  00 40 93 e5                                      ldr r4, [r3]
006d4a20  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d4a24  1f 20 03 e2                                      and r2, r3, #0x1f
006d4a28  01 00 52 e3                                      cmp r2, #1
006d4a2c  65 01 00 9a                                      bls #0x6d4fc8
006d4a30  01 20 42 e2                                      sub r2, r2, #1
006d4a34  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d4a38  03 30 82 e1                                      orr r3, r2, r3
006d4a3c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4a40  00 30 a0 e3                                      mov r3, #0
006d4a44  a4 30 8d e5                                      str r3, [sp, #0xa4]
006d4a48  a0 30 8d e5                                      str r3, [sp, #0xa0]
006d4a4c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
006d4a50  00 00 53 e3                                      cmp r3, #0
006d4a54  0c 00 00 0a                                      beq #0x6d4a8c
006d4a58  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
006d4a5c  00 40 93 e5                                      ldr r4, [r3]
006d4a60  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d4a64  1f 20 03 e2                                      and r2, r3, #0x1f
006d4a68  01 00 52 e3                                      cmp r2, #1
006d4a6c  5b 01 00 9a                                      bls #0x6d4fe0
006d4a70  01 20 42 e2                                      sub r2, r2, #1
006d4a74  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d4a78  03 30 82 e1                                      orr r3, r2, r3
006d4a7c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4a80  00 30 a0 e3                                      mov r3, #0
006d4a84  ac 30 8d e5                                      str r3, [sp, #0xac]
006d4a88  a8 30 8d e5                                      str r3, [sp, #0xa8]
006d4a8c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006d4a90  00 00 53 e3                                      cmp r3, #0
006d4a94  09 00 00 0a                                      beq #0x6d4ac0
006d4a98  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006d4a9c  14 40 9c e5                                      ldr r4, [ip, #0x14]
006d4aa0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d4aa4  1f 20 03 e2                                      and r2, r3, #0x1f
006d4aa8  01 00 52 e3                                      cmp r2, #1
006d4aac  ea 00 00 9a                                      bls #0x6d4e5c
006d4ab0  01 20 42 e2                                      sub r2, r2, #1
006d4ab4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d4ab8  03 30 82 e1                                      orr r3, r2, r3
006d4abc  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4ac0  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006d4ac4  00 30 a0 e3                                      mov r3, #0
006d4ac8  d0 30 8d e5                                      str r3, [sp, #0xd0]
006d4acc  03 00 50 e1                                      cmp r0, r3
006d4ad0  00 00 00 0a                                      beq #0x6d4ad8
006d4ad4  aa 22 f1 eb                                      bl #0x31d584
006d4ad8  70 20 9d e5                                      ldr r2, [sp, #0x70]
006d4adc  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4ae0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d4ae4  41 f9 ff eb                                      bl #0x6d2ff0
006d4ae8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4aec  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006d4af0  a0 fa ff eb                                      bl #0x6d3578
006d4af4  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d4af8  28 10 9d e5                                      ldr r1, [sp, #0x28]
006d4afc  14 20 90 e5                                      ldr r2, [r0, #0x14]
006d4b00  04 30 91 e5                                      ldr r3, [r1, #4]
006d4b04  02 10 a0 e3                                      mov r1, #2
006d4b08  08 90 92 e5                                      ldr sb, [r2, #8]
006d4b0c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006d4b10  03 90 89 e0                                      add sb, sb, r3
006d4b14  14 00 92 e5                                      ldr r0, [r2, #0x14]
006d4b18  b4 33 fb eb                                      bl #0x5a19f0
006d4b1c  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d4b20  58 c0 9d e5                                      ldr ip, [sp, #0x58]
006d4b24  28 10 9d e5                                      ldr r1, [sp, #0x28]
006d4b28  14 20 93 e5                                      ldr r2, [r3, #0x14]
006d4b2c  04 40 9c e5                                      ldr r4, [ip, #4]
006d4b30  04 30 91 e5                                      ldr r3, [r1, #4]
006d4b34  08 10 92 e5                                      ldr r1, [r2, #8]
006d4b38  04 40 80 e0                                      add r4, r0, r4
006d4b3c  64 20 9d e5                                      ldr r2, [sp, #0x64]
006d4b40  03 10 81 e0                                      add r1, r1, r3
006d4b44  04 00 a0 e1                                      mov r0, r4
006d4b48  46 e7 f0 eb                                      bl #0x30e868
006d4b4c  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d4b50  00 00 52 e3                                      cmp r2, #0
006d4b54  26 00 00 0a                                      beq #0x6d4bf4
006d4b58  58 30 9d e5                                      ldr r3, [sp, #0x58]
006d4b5c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006d4b60  00 50 a0 e3                                      mov r5, #0
006d4b64  be 60 d3 e1                                      ldrh r6, [r3, #0xe]
006d4b68  be 70 dc e1                                      ldrh r7, [ip, #0xe]
006d4b6c  20 80 9d e5                                      ldr r8, [sp, #0x20]
006d4b70  03 00 00 ea                                      b #0x6d4b84
006d4b74  58 20 9d e5                                      ldr r2, [sp, #0x58]
006d4b78  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d4b7c  be 60 d2 e1                                      ldrh r6, [r2, #0xe]
006d4b80  be 70 d3 e1                                      ldrh r7, [r3, #0xe]
006d4b84  95 07 07 e0                                      mul r7, r5, r7
006d4b88  60 11 98 e5                                      ldr r1, [r8, #0x160]
006d4b8c  07 a0 89 e0                                      add sl, sb, r7
006d4b90  04 00 9a e5                                      ldr r0, [sl, #4]
006d4b94  74 e8 f0 eb                                      bl #0x30ed6c
006d4b98  38 11 98 e5                                      ldr r1, [r8, #0x138]
006d4b9c  00 e8 f0 eb                                      bl #0x30eba4
006d4ba0  64 11 98 e5                                      ldr r1, [r8, #0x164]
006d4ba4  00 b0 a0 e1                                      mov fp, r0
006d4ba8  08 00 9a e5                                      ldr r0, [sl, #8]
006d4bac  6e e8 f0 eb                                      bl #0x30ed6c
006d4bb0  3c 11 98 e5                                      ldr r1, [r8, #0x13c]
006d4bb4  fa e7 f0 eb                                      bl #0x30eba4
006d4bb8  5c 11 98 e5                                      ldr r1, [r8, #0x15c]
006d4bbc  00 a0 a0 e1                                      mov sl, r0
006d4bc0  07 00 99 e7                                      ldr r0, [sb, r7]
006d4bc4  68 e8 f0 eb                                      bl #0x30ed6c
006d4bc8  34 11 98 e5                                      ldr r1, [r8, #0x134]
006d4bcc  f4 e7 f0 eb                                      bl #0x30eba4
006d4bd0  95 06 06 e0                                      mul r6, r5, r6
006d4bd4  50 10 9d e5                                      ldr r1, [sp, #0x50]
006d4bd8  01 50 85 e2                                      add r5, r5, #1
006d4bdc  06 30 84 e0                                      add r3, r4, r6
006d4be0  05 00 51 e1                                      cmp r1, r5
006d4be4  06 00 84 e7                                      str r0, [r4, r6]
006d4be8  08 a0 83 e5                                      str sl, [r3, #8]
006d4bec  04 b0 83 e5                                      str fp, [r3, #4]
006d4bf0  df ff ff 1a                                      bne #0x6d4b74
006d4bf4  00 00 54 e3                                      cmp r4, #0
006d4bf8  09 00 00 0a                                      beq #0x6d4c24
006d4bfc  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
006d4c00  14 40 9c e5                                      ldr r4, [ip, #0x14]
006d4c04  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006d4c08  1f 20 03 e2                                      and r2, r3, #0x1f
006d4c0c  01 00 52 e3                                      cmp r2, #1
006d4c10  97 00 00 9a                                      bls #0x6d4e74
006d4c14  01 20 42 e2                                      sub r2, r2, #1
006d4c18  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d4c1c  03 30 82 e1                                      orr r3, r2, r3
006d4c20  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4c24  00 10 a0 e3                                      mov r1, #0
006d4c28  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4c2c  87 f2 ff eb                                      bl #0x6d1650
006d4c30  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4c34  30 f0 ff eb                                      bl #0x6d0cfc
006d4c38  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4c3c  3c f6 ff eb                                      bl #0x6d2534
006d4c40  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4c44  06 50 a0 e3                                      mov r5, #6
006d4c48  fe 6f 0f e3                                      movw r6, #0xfffe
006d4c4c  68 11 90 e5                                      ldr r1, [r0, #0x168]
006d4c50  6c 21 90 e5                                      ldr r2, [r0, #0x16c]
006d4c54  70 31 90 e5                                      ldr r3, [r0, #0x170]
006d4c58  50 11 80 e5                                      str r1, [r0, #0x150]
006d4c5c  54 21 80 e5                                      str r2, [r0, #0x154]
006d4c60  58 31 80 e5                                      str r3, [r0, #0x158]
006d4c64  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d4c68  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4c6c  e8 45 9f e5                                      ldr r4, [pc, #0x5e8]
006d4c70  40 31 91 e4                                      ldr r3, [r1], #0x140
006d4c74  0f e0 a0 e1                                      mov lr, pc
006d4c78  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
006d4c7c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d4c80  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006d4c84  50 00 9d e5                                      ldr r0, [sp, #0x50]
006d4c88  7c 21 91 e5                                      ldr r2, [r1, #0x17c]
006d4c8c  78 31 91 e5                                      ldr r3, [r1, #0x178]
006d4c90  06 00 50 e1                                      cmp r0, r6
006d4c94  92 02 02 e0                                      mul r2, r2, r2
006d4c98  01 60 a0 93                                      movls r6, #1
006d4c9c  95 02 05 e0                                      mul r5, r5, r2
006d4ca0  b8 25 9f e5                                      ldr r2, [pc, #0x5b8]
006d4ca4  93 05 05 e0                                      mul r5, r3, r5
006d4ca8  02 20 9c e7                                      ldr r2, [ip, r2]
006d4cac  02 60 a0 83                                      movhi r6, #2
006d4cb0  93 05 05 e0                                      mul r5, r3, r5
006d4cb4  06 71 92 e7                                      ldr r7, [r2, r6, lsl #2]
006d4cb8  00 10 a0 e3                                      mov r1, #0
006d4cbc  b8 80 9d e5                                      ldr r8, [sp, #0xb8]
006d4cc0  97 05 07 e0                                      mul r7, r7, r5
006d4cc4  04 40 8f e0                                      add r4, pc, r4
006d4cc8  07 00 a0 e1                                      mov r0, r7
006d4ccc  35 7d f9 eb                                      bl #0x5341a8
006d4cd0  07 10 a0 e1                                      mov r1, r7
006d4cd4  00 20 a0 e1                                      mov r2, r0
006d4cd8  01 30 a0 e3                                      mov r3, #1
006d4cdc  08 00 a0 e1                                      mov r0, r8
006d4ce0  f3 33 fb eb                                      bl #0x5a1cb4
006d4ce4  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d4ce8  50 20 9d e5                                      ldr r2, [sp, #0x50]
006d4cec  d4 70 8d e2                                      add r7, sp, #0xd4
006d4cf0  b0 31 91 e5                                      ldr r3, [r1, #0x1b0]
006d4cf4  28 20 83 e5                                      str r2, [r3, #0x28]
006d4cf8  00 20 a0 e3                                      mov r2, #0
006d4cfc  24 20 83 e5                                      str r2, [r3, #0x24]
006d4d00  20 50 83 e5                                      str r5, [r3, #0x20]
006d4d04  bc 62 c3 e1                                      strh r6, [r3, #0x2c]
006d4d08  ef d8 fc eb                                      bl #0x60b0cc
006d4d0c  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d4d10  74 c0 9d e5                                      ldr ip, [sp, #0x74]
006d4d14  30 51 93 e5                                      ldr r5, [r3, #0x130]
006d4d18  00 00 6c e0                                      rsb r0, ip, r0
006d4d1c  00 50 8d e5                                      str r5, [sp]
006d4d20  6e e5 f0 eb                                      bl #0x30e2e0
006d4d24  11 13 a0 e3                                      mov r1, #0x44000000
006d4d28  7a 18 81 e2                                      add r1, r1, #0x7a0000
006d4d2c  d8 e7 f0 eb                                      bl #0x30ec94
006d4d30  db e6 f0 eb                                      bl #0x30e8a4
006d4d34  04 20 a0 e1                                      mov r2, r4
006d4d38  f8 00 cd e1                                      strd r0, r1, [sp, #8]
006d4d3c  05 30 a0 e1                                      mov r3, r5
006d4d40  ff 10 a0 e3                                      mov r1, #0xff
006d4d44  07 00 a0 e1                                      mov r0, r7
006d4d48  3d e5 f0 eb                                      bl #0x30e244
006d4d4c  07 00 a0 e1                                      mov r0, r7
006d4d50  01 10 a0 e3                                      mov r1, #1
006d4d54  d1 d7 fc eb                                      bl #0x60aca0
006d4d58  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
006d4d5c  00 00 50 e3                                      cmp r0, #0
006d4d60  00 00 00 0a                                      beq #0x6d4d68
006d4d64  06 22 f1 eb                                      bl #0x31d584
006d4d68  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
006d4d6c  00 00 50 e3                                      cmp r0, #0
006d4d70  00 00 00 0a                                      beq #0x6d4d78
006d4d74  02 22 f1 eb                                      bl #0x31d584
006d4d78  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d4d7c  00 30 90 e5                                      ldr r3, [r0]
006d4d80  01 30 43 e2                                      sub r3, r3, #1
006d4d84  00 00 53 e3                                      cmp r3, #0
006d4d88  00 30 80 e5                                      str r3, [r0]
006d4d8c  82 00 00 0a                                      beq #0x6d4f9c
006d4d90  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
006d4d94  00 00 50 e3                                      cmp r0, #0
006d4d98  00 00 00 0a                                      beq #0x6d4da0
006d4d9c  f8 21 f1 eb                                      bl #0x31d584
006d4da0  54 10 9d e5                                      ldr r1, [sp, #0x54]
006d4da4  00 30 91 e5                                      ldr r3, [r1]
006d4da8  01 30 43 e2                                      sub r3, r3, #1
006d4dac  00 00 53 e3                                      cmp r3, #0
006d4db0  00 30 81 e5                                      str r3, [r1]
006d4db4  73 00 00 0a                                      beq #0x6d4f88
006d4db8  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006d4dbc  00 00 50 e3                                      cmp r0, #0
006d4dc0  00 00 00 0a                                      beq #0x6d4dc8
006d4dc4  ee 21 f1 eb                                      bl #0x31d584
006d4dc8  01 40 a0 e3                                      mov r4, #1
006d4dcc  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006d4dd0  00 00 50 e3                                      cmp r0, #0
006d4dd4  00 00 00 0a                                      beq #0x6d4ddc
006d4dd8  e9 21 f1 eb                                      bl #0x31d584
006d4ddc  68 20 9d e5                                      ldr r2, [sp, #0x68]
006d4de0  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006d4de4  04 00 a0 e1                                      mov r0, r4
006d4de8  02 30 9c e7                                      ldr r3, [ip, r2]
006d4dec  d4 21 9d e5                                      ldr r2, [sp, #0x1d4]
006d4df0  00 30 93 e5                                      ldr r3, [r3]
006d4df4  03 00 52 e1                                      cmp r2, r3
006d4df8  14 01 00 1a                                      bne #0x6d5250
006d4dfc  77 df 8d e2                                      add sp, sp, #0x1dc
006d4e00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d4e04  41 00 53 e3                                      cmp r3, #0x41
006d4e08  0d 00 00 0a                                      beq #0x6d4e44
006d4e0c  81 00 53 e3                                      cmp r3, #0x81
006d4e10  d4 fd ff 1a                                      bne #0x6d4568
006d4e14  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4e18  80 31 90 e5                                      ldr r3, [r0, #0x180]
006d4e1c  07 00 53 e3                                      cmp r3, #7
006d4e20  07 30 a0 c3                                      movgt r3, #7
006d4e24  80 31 80 c5                                      strgt r3, [r0, #0x180]
006d4e28  ce fd ff ea                                      b #0x6d4568
006d4e2c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d4e30  80 31 90 e5                                      ldr r3, [r0, #0x180]
006d4e34  03 00 53 e3                                      cmp r3, #3
006d4e38  03 30 a0 c3                                      movgt r3, #3
006d4e3c  80 31 80 c5                                      strgt r3, [r0, #0x180]
006d4e40  c8 fd ff ea                                      b #0x6d4568
006d4e44  20 40 9d e5                                      ldr r4, [sp, #0x20]
006d4e48  80 31 94 e5                                      ldr r3, [r4, #0x180]
006d4e4c  06 00 53 e3                                      cmp r3, #6
006d4e50  06 30 a0 c3                                      movgt r3, #6
006d4e54  80 31 84 c5                                      strgt r3, [r4, #0x180]
006d4e58  c2 fd ff ea                                      b #0x6d4568
006d4e5c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4e60  20 00 13 e3                                      tst r3, #0x20
006d4e64  69 00 00 1a                                      bne #0x6d5010
006d4e68  00 30 a0 e3                                      mov r3, #0
006d4e6c  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4e70  12 ff ff ea                                      b #0x6d4ac0
006d4e74  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4e78  20 00 13 e3                                      tst r3, #0x20
006d4e7c  68 00 00 1a                                      bne #0x6d5024
006d4e80  00 30 a0 e3                                      mov r3, #0
006d4e84  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4e88  65 ff ff ea                                      b #0x6d4c24
006d4e8c  54 30 9d e5                                      ldr r3, [sp, #0x54]
006d4e90  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006d4e94  12 10 a0 e3                                      mov r1, #0x12
006d4e98  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
006d4e9c  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d4ea0  10 30 93 e5                                      ldr r3, [r3, #0x10]
006d4ea4  01 20 82 e2                                      add r2, r2, #1
006d4ea8  02 22 8c e0                                      add r2, ip, r2, lsl #4
006d4eac  0f 2f fb eb                                      bl #0x5a0af0
006d4eb0  38 00 8d e5                                      str r0, [sp, #0x38]
006d4eb4  02 10 a0 e3                                      mov r1, #2
006d4eb8  00 00 90 e5                                      ldr r0, [r0]
006d4ebc  cb 32 fb eb                                      bl #0x5a19f0
006d4ec0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006d4ec4  04 a0 91 e5                                      ldr sl, [r1, #4]
006d4ec8  0a a0 80 e0                                      add sl, r0, sl
006d4ecc  1b fe ff ea                                      b #0x6d4740
006d4ed0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4ed4  20 00 13 e3                                      tst r3, #0x20
006d4ed8  56 00 00 1a                                      bne #0x6d5038
006d4edc  00 30 a0 e3                                      mov r3, #0
006d4ee0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4ee4  c8 fe ff ea                                      b #0x6d4a0c
006d4ee8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d4eec  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d4ef0  02 10 a0 e3                                      mov r1, #2
006d4ef4  20 20 83 e2                                      add r2, r3, #0x20
006d4ef8  10 30 90 e5                                      ldr r3, [r0, #0x10]
006d4efc  fb 2e fb eb                                      bl #0x5a0af0
006d4f00  00 10 a0 e1                                      mov r1, r0
006d4f04  a0 00 8d e2                                      add r0, sp, #0xa0
006d4f08  12 f8 ff eb                                      bl #0x6d2f58
006d4f0c  02 38 14 e2                                      ands r3, r4, #0x20000
006d4f10  34 30 8d 05                                      streq r3, [sp, #0x34]
006d4f14  03 90 a0 01                                      moveq sb, r3
006d4f18  04 fe ff 0a                                      beq #0x6d4730
006d4f1c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
006d4f20  28 00 9d e5                                      ldr r0, [sp, #0x28]
006d4f24  11 10 a0 e3                                      mov r1, #0x11
006d4f28  0c 20 dc e5                                      ldrb r2, [ip, #0xc]
006d4f2c  10 30 9c e5                                      ldr r3, [ip, #0x10]
006d4f30  01 20 82 e2                                      add r2, r2, #1
006d4f34  02 22 80 e0                                      add r2, r0, r2, lsl #4
006d4f38  0c 00 a0 e1                                      mov r0, ip
006d4f3c  eb 2e fb eb                                      bl #0x5a0af0
006d4f40  34 00 8d e5                                      str r0, [sp, #0x34]
006d4f44  02 10 a0 e3                                      mov r1, #2
006d4f48  00 00 90 e5                                      ldr r0, [r0]
006d4f4c  a7 32 fb eb                                      bl #0x5a19f0
006d4f50  34 10 9d e5                                      ldr r1, [sp, #0x34]
006d4f54  04 90 91 e5                                      ldr sb, [r1, #4]
006d4f58  09 90 80 e0                                      add sb, r0, sb
006d4f5c  f3 fd ff ea                                      b #0x6d4730
006d4f60  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d4f64  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006d4f68  01 10 a0 e3                                      mov r1, #1
006d4f6c  10 30 90 e5                                      ldr r3, [r0, #0x10]
006d4f70  10 20 8c e2                                      add r2, ip, #0x10
006d4f74  dd 2e fb eb                                      bl #0x5a0af0
006d4f78  00 10 a0 e1                                      mov r1, r0
006d4f7c  a8 00 8d e2                                      add r0, sp, #0xa8
006d4f80  f4 f7 ff eb                                      bl #0x6d2f58
006d4f84  e0 fd ff ea                                      b #0x6d470c
006d4f88  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d4f8c  a2 2e fb eb                                      bl #0x5a0a1c
006d4f90  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d4f94  c5 e4 f0 eb                                      bl #0x30e2b0
006d4f98  86 ff ff ea                                      b #0x6d4db8
006d4f9c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d4fa0  9d 2e fb eb                                      bl #0x5a0a1c
006d4fa4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d4fa8  c0 e4 f0 eb                                      bl #0x30e2b0
006d4fac  77 ff ff ea                                      b #0x6d4d90
006d4fb0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4fb4  20 00 13 e3                                      tst r3, #0x20
006d4fb8  23 00 00 1a                                      bne #0x6d504c
006d4fbc  00 30 a0 e3                                      mov r3, #0
006d4fc0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4fc4  84 fe ff ea                                      b #0x6d49dc
006d4fc8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4fcc  20 00 13 e3                                      tst r3, #0x20
006d4fd0  22 00 00 1a                                      bne #0x6d5060
006d4fd4  00 30 a0 e3                                      mov r3, #0
006d4fd8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4fdc  97 fe ff ea                                      b #0x6d4a40
006d4fe0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006d4fe4  20 00 13 e3                                      tst r3, #0x20
006d4fe8  21 00 00 1a                                      bne #0x6d5074
006d4fec  00 30 a0 e3                                      mov r3, #0
006d4ff0  13 30 c4 e5                                      strb r3, [r4, #0x13]
006d4ff4  a1 fe ff ea                                      b #0x6d4a80
006d4ff8  64 02 9f e5                                      ldr r0, [pc, #0x264]
006d4ffc  01 10 a0 e3                                      mov r1, #1
006d5000  03 40 a0 e1                                      mov r4, r3
006d5004  00 00 8f e0                                      add r0, pc, r0
006d5008  24 d7 fc eb                                      bl #0x60aca0
006d500c  6e ff ff ea                                      b #0x6d4dcc
006d5010  00 30 94 e5                                      ldr r3, [r4]
006d5014  04 00 a0 e1                                      mov r0, r4
006d5018  0f e0 a0 e1                                      mov lr, pc
006d501c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5020  90 ff ff ea                                      b #0x6d4e68
006d5024  00 30 94 e5                                      ldr r3, [r4]
006d5028  04 00 a0 e1                                      mov r0, r4
006d502c  0f e0 a0 e1                                      mov lr, pc
006d5030  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5034  91 ff ff ea                                      b #0x6d4e80
006d5038  00 30 94 e5                                      ldr r3, [r4]
006d503c  04 00 a0 e1                                      mov r0, r4
006d5040  0f e0 a0 e1                                      mov lr, pc
006d5044  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5048  a3 ff ff ea                                      b #0x6d4edc
006d504c  00 30 94 e5                                      ldr r3, [r4]
006d5050  04 00 a0 e1                                      mov r0, r4
006d5054  0f e0 a0 e1                                      mov lr, pc
006d5058  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d505c  d6 ff ff ea                                      b #0x6d4fbc
006d5060  00 30 94 e5                                      ldr r3, [r4]
006d5064  04 00 a0 e1                                      mov r0, r4
006d5068  0f e0 a0 e1                                      mov lr, pc
006d506c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5070  d7 ff ff ea                                      b #0x6d4fd4
006d5074  00 30 94 e5                                      ldr r3, [r4]
006d5078  04 00 a0 e1                                      mov r0, r4
006d507c  0f e0 a0 e1                                      mov lr, pc
006d5080  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5084  d8 ff ff ea                                      b #0x6d4fec
006d5088  00 00 a0 e3                                      mov r0, #0
006d508c  01 30 a0 e3                                      mov r3, #1
006d5090  b4 40 8d e2                                      add r4, sp, #0xb4
006d5094  00 c0 95 e5                                      ldr ip, [r5]
006d5098  03 20 a0 e1                                      mov r2, r3
006d509c  05 10 a0 e1                                      mov r1, r5
006d50a0  04 00 8d e5                                      str r0, [sp, #4]
006d50a4  00 00 8d e5                                      str r0, [sp]
006d50a8  08 30 8d e5                                      str r3, [sp, #8]
006d50ac  04 00 a0 e1                                      mov r0, r4
006d50b0  03 30 83 e2                                      add r3, r3, #3
006d50b4  0f e0 a0 e1                                      mov lr, pc
006d50b8  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006d50bc  04 10 a0 e1                                      mov r1, r4
006d50c0  b8 00 8d e2                                      add r0, sp, #0xb8
006d50c4  f0 9d ff eb                                      bl #0x6bc88c
006d50c8  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006d50cc  00 00 50 e3                                      cmp r0, #0
006d50d0  00 00 00 0a                                      beq #0x6d50d8
006d50d4  2a 21 f1 eb                                      bl #0x31d584
006d50d8  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
006d50dc  20 30 9d e5                                      ldr r3, [sp, #0x20]
006d50e0  b1 54 a0 e3                                      mov r5, #0xb1000000
006d50e4  00 00 52 e3                                      cmp r2, #0
006d50e8  b0 41 93 e5                                      ldr r4, [r3, #0x1b0]
006d50ec  88 20 8d e5                                      str r2, [sp, #0x88]
006d50f0  04 30 92 15                                      ldrne r3, [r2, #4]
006d50f4  4e 6f e0 e3                                      mvn r6, #0x138
006d50f8  01 c0 a0 e3                                      mov ip, #1
006d50fc  01 30 83 12                                      addne r3, r3, #1
006d5100  04 30 82 15                                      strne r3, [r2, #4]
006d5104  00 30 a0 e3                                      mov r3, #0
006d5108  76 2f 8d e2                                      add r2, sp, #0x1d8
006d510c  45 5b a0 e1                                      asr r5, r5, #0x16
006d5110  01 60 46 e2                                      sub r6, r6, #1
006d5114  98 30 8d e5                                      str r3, [sp, #0x98]
006d5118  8c 30 8d e5                                      str r3, [sp, #0x8c]
006d511c  90 30 8d e5                                      str r3, [sp, #0x90]
006d5120  94 30 8d e5                                      str r3, [sp, #0x94]
006d5124  06 30 a0 e3                                      mov r3, #6
006d5128  b5 c0 82 e1                                      strh ip, [r2, r5]
006d512c  b6 30 82 e1                                      strh r3, [r2, r6]
006d5130  18 00 84 e2                                      add r0, r4, #0x18
006d5134  88 10 8d e2                                      add r1, sp, #0x88
006d5138  d3 9d ff eb                                      bl #0x6bc88c
006d513c  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
006d5140  76 cf 8d e2                                      add ip, sp, #0x1d8
006d5144  1c 30 84 e5                                      str r3, [r4, #0x1c]
006d5148  90 30 9d e5                                      ldr r3, [sp, #0x90]
006d514c  20 30 84 e5                                      str r3, [r4, #0x20]
006d5150  94 30 9d e5                                      ldr r3, [sp, #0x94]
006d5154  24 30 84 e5                                      str r3, [r4, #0x24]
006d5158  98 30 9d e5                                      ldr r3, [sp, #0x98]
006d515c  28 30 84 e5                                      str r3, [r4, #0x28]
006d5160  b5 50 9c e1                                      ldrh r5, [ip, r5]
006d5164  bc 52 c4 e1                                      strh r5, [r4, #0x2c]
006d5168  b6 60 9c e1                                      ldrh r6, [ip, r6]
006d516c  be 62 c4 e1                                      strh r6, [r4, #0x2e]
006d5170  88 00 9d e5                                      ldr r0, [sp, #0x88]
006d5174  00 00 50 e3                                      cmp r0, #0
006d5178  54 fd ff 0a                                      beq #0x6d46d0
006d517c  00 21 f1 eb                                      bl #0x31d584
006d5180  52 fd ff ea                                      b #0x6d46d0
006d5184  c0 60 8d e2                                      add r6, sp, #0xc0
006d5188  01 30 a0 e3                                      mov r3, #1
006d518c  00 c0 95 e5                                      ldr ip, [r5]
006d5190  04 20 a0 e1                                      mov r2, r4
006d5194  08 30 8d e5                                      str r3, [sp, #8]
006d5198  00 40 8d e5                                      str r4, [sp]
006d519c  04 40 8d e5                                      str r4, [sp, #4]
006d51a0  06 00 a0 e1                                      mov r0, r6
006d51a4  05 10 a0 e1                                      mov r1, r5
006d51a8  03 30 83 e2                                      add r3, r3, #3
006d51ac  c8 40 8d e2                                      add r4, sp, #0xc8
006d51b0  0f e0 a0 e1                                      mov lr, pc
006d51b4  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006d51b8  06 10 a0 e1                                      mov r1, r6
006d51bc  04 00 a0 e1                                      mov r0, r4
006d51c0  b1 9d ff eb                                      bl #0x6bc88c
006d51c4  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
006d51c8  00 00 50 e3                                      cmp r0, #0
006d51cc  00 00 00 0a                                      beq #0x6d51d4
006d51d0  eb 20 f1 eb                                      bl #0x31d584
006d51d4  04 10 a0 e1                                      mov r1, r4
006d51d8  00 20 e0 e3                                      mvn r2, #0
006d51dc  54 00 9d e5                                      ldr r0, [sp, #0x54]
006d51e0  f6 30 fb eb                                      bl #0x5a15c0
006d51e4  bc 40 8d e2                                      add r4, sp, #0xbc
006d51e8  00 30 a0 e3                                      mov r3, #0
006d51ec  01 10 a0 e3                                      mov r1, #1
006d51f0  00 c0 95 e5                                      ldr ip, [r5]
006d51f4  03 20 a0 e1                                      mov r2, r3
006d51f8  08 10 8d e5                                      str r1, [sp, #8]
006d51fc  00 30 8d e5                                      str r3, [sp]
006d5200  04 30 8d e5                                      str r3, [sp, #4]
006d5204  04 00 a0 e1                                      mov r0, r4
006d5208  05 10 a0 e1                                      mov r1, r5
006d520c  04 30 83 e2                                      add r3, r3, #4
006d5210  c4 60 8d e2                                      add r6, sp, #0xc4
006d5214  0f e0 a0 e1                                      mov lr, pc
006d5218  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006d521c  04 10 a0 e1                                      mov r1, r4
006d5220  06 00 a0 e1                                      mov r0, r6
006d5224  98 9d ff eb                                      bl #0x6bc88c
006d5228  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
006d522c  00 00 50 e3                                      cmp r0, #0
006d5230  00 00 00 0a                                      beq #0x6d5238
006d5234  d2 20 f1 eb                                      bl #0x31d584
006d5238  06 10 a0 e1                                      mov r1, r6
006d523c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006d5240  00 20 e0 e3                                      mvn r2, #0
006d5244  dd 30 fb eb                                      bl #0x5a15c0
006d5248  c8 40 9d e5                                      ldr r4, [sp, #0xc8]
006d524c  f7 fc ff ea                                      b #0x6d4630
006d5250  2e e4 f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006d5254  2c 06 2c 00 ac 40 00 00 dc 67 21 00 9c 42 00 00  .byte 0x2c, 0x06, 0x2c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x67, 0x21, 0x00, 0x9c, 0x42, 0x00, 0x00
006d5264  7c 64 21 00                                      .byte 0x7c, 0x64, 0x21, 0x00

; FUNCTION 0x006d5268, declared_size=688, range_size=688, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CTerrainSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006d5268  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d526c  8c 62 9f e5                                      ldr r6, [pc, #0x28c]
006d5270  8c b2 9f e5                                      ldr fp, [pc, #0x28c]
006d5274  2c d0 4d e2                                      sub sp, sp, #0x2c
006d5278  06 60 8f e0                                      add r6, pc, r6
006d527c  0b 30 96 e7                                      ldr r3, [r6, fp]
006d5280  04 20 8d e5                                      str r2, [sp, #4]
006d5284  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
006d5288  00 30 93 e5                                      ldr r3, [r3]
006d528c  0c 90 8d e2                                      add sb, sp, #0xc
006d5290  02 20 8f e0                                      add r2, pc, r2
006d5294  24 30 8d e5                                      str r3, [sp, #0x24]
006d5298  00 30 91 e5                                      ldr r3, [r1]
006d529c  00 50 a0 e1                                      mov r5, r0
006d52a0  09 00 a0 e1                                      mov r0, sb
006d52a4  01 40 a0 e1                                      mov r4, r1
006d52a8  0f e0 a0 e1                                      mov lr, pc
006d52ac  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006d52b0  54 12 9f e5                                      ldr r1, [pc, #0x254]
006d52b4  00 30 94 e5                                      ldr r3, [r4]
006d52b8  04 00 a0 e1                                      mov r0, r4
006d52bc  01 10 8f e0                                      add r1, pc, r1
006d52c0  0f e0 a0 e1                                      mov lr, pc
006d52c4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006d52c8  40 12 9f e5                                      ldr r1, [pc, #0x240]
006d52cc  00 70 a0 e1                                      mov r7, r0
006d52d0  00 30 94 e5                                      ldr r3, [r4]
006d52d4  04 00 a0 e1                                      mov r0, r4
006d52d8  01 10 8f e0                                      add r1, pc, r1
006d52dc  0f e0 a0 e1                                      mov lr, pc
006d52e0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006d52e4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006d52e8  20 a0 9d e5                                      ldr sl, [sp, #0x20]
006d52ec  00 80 a0 e1                                      mov r8, r0
006d52f0  0a 00 52 e1                                      cmp r2, sl
006d52f4  19 00 00 0a                                      beq #0x6d5360
006d52f8  04 12 95 e5                                      ldr r1, [r5, #0x204]
006d52fc  00 32 95 e5                                      ldr r3, [r5, #0x200]
006d5300  02 20 6a e0                                      rsb r2, sl, r2
006d5304  03 30 61 e0                                      rsb r3, r1, r3
006d5308  03 00 52 e1                                      cmp r2, r3
006d530c  6f 00 00 0a                                      beq #0x6d54d0
006d5310  08 32 95 e5                                      ldr r3, [r5, #0x208]
006d5314  0a 10 a0 e1                                      mov r1, sl
006d5318  03 00 a0 e1                                      mov r0, r3
006d531c  00 30 93 e5                                      ldr r3, [r3]
006d5320  0f e0 a0 e1                                      mov lr, pc
006d5324  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006d5328  00 a0 50 e2                                      subs sl, r0, #0
006d532c  6c 00 00 0a                                      beq #0x6d54e4
006d5330  00 30 e0 e3                                      mvn r3, #0
006d5334  0b 30 cd e5                                      strb r3, [sp, #0xb]
006d5338  08 30 cd e5                                      strb r3, [sp, #8]
006d533c  09 30 cd e5                                      strb r3, [sp, #9]
006d5340  0a 30 cd e5                                      strb r3, [sp, #0xa]
006d5344  05 00 a0 e1                                      mov r0, r5
006d5348  0a 10 a0 e1                                      mov r1, sl
006d534c  08 20 9d e5                                      ldr r2, [sp, #8]
006d5350  00 30 a0 e3                                      mov r3, #0
006d5354  3e fc ff eb                                      bl #0x6d4454
006d5358  0a 00 a0 e1                                      mov r0, sl
006d535c  88 20 f1 eb                                      bl #0x31d584
006d5360  bd 17 03 e3                                      movw r1, #0x37bd
006d5364  86 15 43 e3                                      movt r1, #0x3586
006d5368  07 00 a0 e1                                      mov r0, r7
006d536c  0c e6 f0 eb                                      bl #0x30eba4
006d5370  00 10 a0 e3                                      mov r1, #0
006d5374  00 00 8d e5                                      str r0, [sp]
006d5378  4d e4 f0 eb                                      bl #0x30e4b4
006d537c  00 00 50 e3                                      cmp r0, #0
006d5380  0a 00 00 0a                                      beq #0x6d53b0
006d5384  bd 17 03 e3                                      movw r1, #0x37bd
006d5388  86 15 43 e3                                      movt r1, #0x3586
006d538c  07 00 a0 e1                                      mov r0, r7
006d5390  05 e4 f0 eb                                      bl #0x30e3ac
006d5394  00 10 a0 e3                                      mov r1, #0
006d5398  83 e5 f0 eb                                      bl #0x30e9ac
006d539c  00 00 50 e3                                      cmp r0, #0
006d53a0  fe 35 a0 13                                      movne r3, #0x3f800000
006d53a4  08 30 83 12                                      addne r3, r3, #8
006d53a8  00 30 8d 15                                      strne r3, [sp]
006d53ac  fe 75 a0 13                                      movne r7, #0x3f800000
006d53b0  bd 17 03 e3                                      movw r1, #0x37bd
006d53b4  86 15 43 e3                                      movt r1, #0x3586
006d53b8  08 00 a0 e1                                      mov r0, r8
006d53bc  f8 e5 f0 eb                                      bl #0x30eba4
006d53c0  00 10 a0 e3                                      mov r1, #0
006d53c4  3a e4 f0 eb                                      bl #0x30e4b4
006d53c8  00 00 50 e3                                      cmp r0, #0
006d53cc  07 00 00 0a                                      beq #0x6d53f0
006d53d0  bd 17 03 e3                                      movw r1, #0x37bd
006d53d4  86 15 43 e3                                      movt r1, #0x3586
006d53d8  08 00 a0 e1                                      mov r0, r8
006d53dc  f2 e3 f0 eb                                      bl #0x30e3ac
006d53e0  00 10 a0 e3                                      mov r1, #0
006d53e4  70 e5 f0 eb                                      bl #0x30e9ac
006d53e8  00 00 50 e3                                      cmp r0, #0
006d53ec  fe 85 a0 13                                      movne r8, #0x3f800000
006d53f0  e8 a1 95 e5                                      ldr sl, [r5, #0x1e8]
006d53f4  00 10 9d e5                                      ldr r1, [sp]
006d53f8  0a 00 a0 e1                                      mov r0, sl
006d53fc  6a e5 f0 eb                                      bl #0x30e9ac
006d5400  00 00 50 e3                                      cmp r0, #0
006d5404  14 00 00 1a                                      bne #0x6d545c
006d5408  07 10 a0 e1                                      mov r1, r7
006d540c  08 20 a0 e1                                      mov r2, r8
006d5410  05 00 a0 e1                                      mov r0, r5
006d5414  50 f7 ff eb                                      bl #0x6d315c
006d5418  05 00 a0 e1                                      mov r0, r5
006d541c  04 10 a0 e1                                      mov r1, r4
006d5420  04 20 9d e5                                      ldr r2, [sp, #4]
006d5424  0b 0b fb eb                                      bl #0x598058
006d5428  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d542c  09 00 50 e1                                      cmp r0, sb
006d5430  02 00 00 0a                                      beq #0x6d5440
006d5434  00 00 50 e3                                      cmp r0, #0
006d5438  00 00 00 0a                                      beq #0x6d5440
006d543c  03 ec f0 eb                                      bl #0x310450
006d5440  0b 30 96 e7                                      ldr r3, [r6, fp]
006d5444  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d5448  00 30 93 e5                                      ldr r3, [r3]
006d544c  03 00 52 e1                                      cmp r2, r3
006d5450  29 00 00 1a                                      bne #0x6d54fc
006d5454  2c d0 8d e2                                      add sp, sp, #0x2c
006d5458  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d545c  bd 17 03 e3                                      movw r1, #0x37bd
006d5460  86 15 43 e3                                      movt r1, #0x3586
006d5464  07 00 a0 e1                                      mov r0, r7
006d5468  cf e3 f0 eb                                      bl #0x30e3ac
006d546c  00 10 a0 e1                                      mov r1, r0
006d5470  0a 00 a0 e1                                      mov r0, sl
006d5474  0e e4 f0 eb                                      bl #0x30e4b4
006d5478  00 00 50 e3                                      cmp r0, #0
006d547c  e1 ff ff 0a                                      beq #0x6d5408
006d5480  bd 17 03 e3                                      movw r1, #0x37bd
006d5484  86 15 43 e3                                      movt r1, #0x3586
006d5488  08 00 a0 e1                                      mov r0, r8
006d548c  c4 e5 f0 eb                                      bl #0x30eba4
006d5490  ec a1 95 e5                                      ldr sl, [r5, #0x1ec]
006d5494  00 10 a0 e1                                      mov r1, r0
006d5498  0a 00 a0 e1                                      mov r0, sl
006d549c  42 e5 f0 eb                                      bl #0x30e9ac
006d54a0  00 00 50 e3                                      cmp r0, #0
006d54a4  d7 ff ff 0a                                      beq #0x6d5408
006d54a8  bd 17 03 e3                                      movw r1, #0x37bd
006d54ac  86 15 43 e3                                      movt r1, #0x3586
006d54b0  08 00 a0 e1                                      mov r0, r8
006d54b4  bc e3 f0 eb                                      bl #0x30e3ac
006d54b8  00 10 a0 e1                                      mov r1, r0
006d54bc  0a 00 a0 e1                                      mov r0, sl
006d54c0  fb e3 f0 eb                                      bl #0x30e4b4
006d54c4  00 00 50 e3                                      cmp r0, #0
006d54c8  d2 ff ff 1a                                      bne #0x6d5418
006d54cc  cd ff ff ea                                      b #0x6d5408
006d54d0  0a 00 a0 e1                                      mov r0, sl
006d54d4  41 e4 f0 eb                                      bl #0x30e5e0
006d54d8  00 00 50 e3                                      cmp r0, #0
006d54dc  9f ff ff 0a                                      beq #0x6d5360
006d54e0  8a ff ff ea                                      b #0x6d5310
006d54e4  28 00 9f e5                                      ldr r0, [pc, #0x28]
006d54e8  20 10 9d e5                                      ldr r1, [sp, #0x20]
006d54ec  01 20 a0 e3                                      mov r2, #1
006d54f0  00 00 8f e0                                      add r0, pc, r0
006d54f4  fb d5 fc eb                                      bl #0x60ace8
006d54f8  98 ff ff ea                                      b #0x6d5360
006d54fc  83 e3 f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006d5500  18 f8 2b 00 ac 40 00 00 c0 61 21 00 a4 61 21 00  .byte 0x18, 0xf8, 0x2b, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x61, 0x21, 0x00, 0xa4, 0x61, 0x21, 0x00
006d5510  98 61 21 00 e0 5f 21 00                          .byte 0x98, 0x61, 0x21, 0x00, 0xe0, 0x5f, 0x21, 0x00

; FUNCTION 0x006d5518, declared_size=704, range_size=704, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode5cloneEPNS0_10ISceneNodeE
; demangled: glitch::scene::CTerrainSceneNode::clone(glitch::scene::ISceneNode*)
; decoder-mode: arm
006d5518  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d551c  00 00 51 e3                                      cmp r1, #0
006d5520  3c d0 4d e2                                      sub sp, sp, #0x3c
006d5524  1c 10 8d e5                                      str r1, [sp, #0x1c]
006d5528  ec 30 90 05                                      ldreq r3, [r0, #0xec]
006d552c  00 50 a0 e1                                      mov r5, r0
006d5530  1c 30 8d 05                                      streq r3, [sp, #0x1c]
006d5534  b0 21 90 e5                                      ldr r2, [r0, #0x1b0]
006d5538  00 30 90 e5                                      ldr r3, [r0]
006d553c  14 20 92 e5                                      ldr r2, [r2, #0x14]
006d5540  04 a0 92 e5                                      ldr sl, [r2, #4]
006d5544  0f e0 a0 e1                                      mov lr, pc
006d5548  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
006d554c  00 30 95 e5                                      ldr r3, [r5]
006d5550  00 70 a0 e1                                      mov r7, r0
006d5554  05 00 a0 e1                                      mov r0, r5
006d5558  0f e0 a0 e1                                      mov lr, pc
006d555c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
006d5560  00 30 95 e5                                      ldr r3, [r5]
006d5564  00 40 a0 e1                                      mov r4, r0
006d5568  05 00 a0 e1                                      mov r0, r5
006d556c  0f e0 a0 e1                                      mov lr, pc
006d5570  90 f0 93 e5                                      ldr pc, [r3, #0x90]
006d5574  00 10 a0 e3                                      mov r1, #0
006d5578  00 80 a0 e1                                      mov r8, r0
006d557c  85 0f a0 e3                                      mov r0, #0x214
006d5580  09 7b f9 eb                                      bl #0x5341ac
006d5584  04 c0 a0 e3                                      mov ip, #4
006d5588  0c 21 95 e5                                      ldr r2, [r5, #0x10c]
006d558c  0a 30 a0 e1                                      mov r3, sl
006d5590  00 60 a0 e1                                      mov r6, r0
006d5594  82 1f 85 e2                                      add r1, r5, #0x208
006d5598  00 c0 8d e5                                      str ip, [sp]
006d559c  11 c0 a0 e3                                      mov ip, #0x11
006d55a0  04 c0 8d e5                                      str ip, [sp, #4]
006d55a4  0c 40 8d e5                                      str r4, [sp, #0xc]
006d55a8  08 70 8d e5                                      str r7, [sp, #8]
006d55ac  10 80 8d e5                                      str r8, [sp, #0x10]
006d55b0  69 f1 ff eb                                      bl #0x6d1b5c
006d55b4  06 00 a0 e1                                      mov r0, r6
006d55b8  05 10 a0 e1                                      mov r1, r5
006d55bc  02 0a fb eb                                      bl #0x597dcc
006d55c0  08 32 95 e5                                      ldr r3, [r5, #0x208]
006d55c4  04 12 95 e5                                      ldr r1, [r5, #0x204]
006d55c8  03 00 a0 e1                                      mov r0, r3
006d55cc  00 30 93 e5                                      ldr r3, [r3]
006d55d0  0f e0 a0 e1                                      mov lr, pc
006d55d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006d55d8  00 40 50 e2                                      subs r4, r0, #0
006d55dc  0b 00 00 0a                                      beq #0x6d5610
006d55e0  00 30 e0 e3                                      mvn r3, #0
006d55e4  37 30 cd e5                                      strb r3, [sp, #0x37]
006d55e8  34 30 cd e5                                      strb r3, [sp, #0x34]
006d55ec  35 30 cd e5                                      strb r3, [sp, #0x35]
006d55f0  36 30 cd e5                                      strb r3, [sp, #0x36]
006d55f4  06 00 a0 e1                                      mov r0, r6
006d55f8  04 10 a0 e1                                      mov r1, r4
006d55fc  34 20 9d e5                                      ldr r2, [sp, #0x34]
006d5600  00 30 a0 e3                                      mov r3, #0
006d5604  92 fb ff eb                                      bl #0x6d4454
006d5608  04 00 a0 e1                                      mov r0, r4
006d560c  dc 1f f1 eb                                      bl #0x31d584
006d5610  06 00 a0 e1                                      mov r0, r6
006d5614  e8 11 95 e5                                      ldr r1, [r5, #0x1e8]
006d5618  ec 21 95 e5                                      ldr r2, [r5, #0x1ec]
006d561c  ce f6 ff eb                                      bl #0x6d315c
006d5620  2c 30 8d e2                                      add r3, sp, #0x2c
006d5624  18 30 8d e5                                      str r3, [sp, #0x18]
006d5628  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
006d562c  00 40 a0 e3                                      mov r4, #0
006d5630  30 b0 8d e2                                      add fp, sp, #0x30
006d5634  03 00 a0 e1                                      mov r0, r3
006d5638  00 30 93 e5                                      ldr r3, [r3]
006d563c  0f e0 a0 e1                                      mov lr, pc
006d5640  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d5644  00 00 54 e1                                      cmp r4, r0
006d5648  28 70 8d e2                                      add r7, sp, #0x28
006d564c  24 a0 8d e2                                      add sl, sp, #0x24
006d5650  0e 00 00 2a                                      bhs #0x6d5690
006d5654  ac 31 96 e5                                      ldr r3, [r6, #0x1ac]
006d5658  03 00 a0 e1                                      mov r0, r3
006d565c  00 30 93 e5                                      ldr r3, [r3]
006d5660  0f e0 a0 e1                                      mov lr, pc
006d5664  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d5668  00 00 54 e1                                      cmp r4, r0
006d566c  16 00 00 3a                                      blo #0x6d56cc
006d5670  01 40 84 e2                                      add r4, r4, #1
006d5674  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
006d5678  03 00 a0 e1                                      mov r0, r3
006d567c  00 30 93 e5                                      ldr r3, [r3]
006d5680  0f e0 a0 e1                                      mov lr, pc
006d5684  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d5688  00 00 54 e1                                      cmp r4, r0
006d568c  f0 ff ff 3a                                      blo #0x6d5654
006d5690  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d5694  00 00 53 e3                                      cmp r3, #0
006d5698  08 00 00 0a                                      beq #0x6d56c0
006d569c  03 10 a0 e1                                      mov r1, r3
006d56a0  06 00 a0 e1                                      mov r0, r6
006d56a4  00 30 96 e5                                      ldr r3, [r6]
006d56a8  0f e0 a0 e1                                      mov lr, pc
006d56ac  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006d56b0  00 30 96 e5                                      ldr r3, [r6]
006d56b4  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006d56b8  00 00 86 e0                                      add r0, r6, r0
006d56bc  b0 1f f1 eb                                      bl #0x31d584
006d56c0  06 00 a0 e1                                      mov r0, r6
006d56c4  3c d0 8d e2                                      add sp, sp, #0x3c
006d56c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d56cc  ac 31 96 e5                                      ldr r3, [r6, #0x1ac]
006d56d0  0b 00 a0 e1                                      mov r0, fp
006d56d4  04 20 a0 e1                                      mov r2, r4
006d56d8  03 10 a0 e1                                      mov r1, r3
006d56dc  00 30 93 e5                                      ldr r3, [r3]
006d56e0  0f e0 a0 e1                                      mov lr, pc
006d56e4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d56e8  30 30 9d e5                                      ldr r3, [sp, #0x30]
006d56ec  00 00 53 e3                                      cmp r3, #0
006d56f0  de ff ff 0a                                      beq #0x6d5670
006d56f4  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
006d56f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006d56fc  04 20 a0 e1                                      mov r2, r4
006d5700  03 10 a0 e1                                      mov r1, r3
006d5704  00 30 93 e5                                      ldr r3, [r3]
006d5708  0f e0 a0 e1                                      mov lr, pc
006d570c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d5710  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006d5714  00 80 50 e2                                      subs r8, r0, #0
006d5718  01 80 a0 13                                      movne r8, #1
006d571c  00 00 58 e3                                      cmp r8, #0
006d5720  00 00 00 0a                                      beq #0x6d5728
006d5724  96 1f f1 eb                                      bl #0x31d584
006d5728  30 00 9d e5                                      ldr r0, [sp, #0x30]
006d572c  00 00 50 e3                                      cmp r0, #0
006d5730  00 00 00 0a                                      beq #0x6d5738
006d5734  92 1f f1 eb                                      bl #0x31d584
006d5738  00 00 58 e3                                      cmp r8, #0
006d573c  cb ff ff 0a                                      beq #0x6d5670
006d5740  ac 81 96 e5                                      ldr r8, [r6, #0x1ac]
006d5744  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
006d5748  07 00 a0 e1                                      mov r0, r7
006d574c  00 c0 98 e5                                      ldr ip, [r8]
006d5750  03 10 a0 e1                                      mov r1, r3
006d5754  04 20 a0 e1                                      mov r2, r4
006d5758  00 30 93 e5                                      ldr r3, [r3]
006d575c  20 90 9c e5                                      ldr sb, [ip, #0x20]
006d5760  0f e0 a0 e1                                      mov lr, pc
006d5764  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5768  ac 31 95 e5                                      ldr r3, [r5, #0x1ac]
006d576c  0a 00 a0 e1                                      mov r0, sl
006d5770  04 20 a0 e1                                      mov r2, r4
006d5774  03 10 a0 e1                                      mov r1, r3
006d5778  00 30 93 e5                                      ldr r3, [r3]
006d577c  0f e0 a0 e1                                      mov lr, pc
006d5780  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006d5784  08 00 a0 e1                                      mov r0, r8
006d5788  04 10 a0 e1                                      mov r1, r4
006d578c  07 20 a0 e1                                      mov r2, r7
006d5790  0a 30 a0 e1                                      mov r3, sl
006d5794  39 ff 2f e1                                      blx sb
006d5798  24 80 9d e5                                      ldr r8, [sp, #0x24]
006d579c  00 00 58 e3                                      cmp r8, #0
006d57a0  08 00 00 0a                                      beq #0x6d57c8
006d57a4  00 30 98 e5                                      ldr r3, [r8]
006d57a8  01 30 43 e2                                      sub r3, r3, #1
006d57ac  00 00 53 e3                                      cmp r3, #0
006d57b0  00 30 88 e5                                      str r3, [r8]
006d57b4  03 00 00 1a                                      bne #0x6d57c8
006d57b8  08 00 a0 e1                                      mov r0, r8
006d57bc  e4 27 fc eb                                      bl #0x5df754
006d57c0  08 00 a0 e1                                      mov r0, r8
006d57c4  b9 e2 f0 eb                                      bl #0x30e2b0
006d57c8  07 00 a0 e1                                      mov r0, r7
006d57cc  05 ed f0 eb                                      bl #0x310be8
006d57d0  01 40 84 e2                                      add r4, r4, #1
006d57d4  a6 ff ff ea                                      b #0x6d5674

; FUNCTION 0x006d57d8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZTv0_n20_N6glitch5scene17CTerrainSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CTerrainSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006d57d8  00 30 90 e5                                      ldr r3, [r0]
006d57dc  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006d57e0  03 00 80 e0                                      add r0, r0, r3
006d57e4  9f fe ff ea                                      b #0x6d5268

; FUNCTION 0x006d57e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZTv0_n24_N6glitch5scene17CTerrainSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d57e8  00 30 90 e5                                      ldr r3, [r0]
006d57ec  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d57f0  03 00 80 e0                                      add r0, r0, r3
006d57f4  fb ee ff ea                                      b #0x6d13e8

; FUNCTION 0x006d57f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZTv0_n12_N6glitch5scene17CTerrainSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d57f8  00 30 90 e5                                      ldr r3, [r0]
006d57fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d5800  03 00 80 e0                                      add r0, r0, r3
006d5804  f7 ee ff ea                                      b #0x6d13e8

; FUNCTION 0x006d5808, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZTv0_n24_N6glitch5scene17CTerrainSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d5808  00 30 90 e5                                      ldr r3, [r0]
006d580c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d5810  03 00 80 e0                                      add r0, r0, r3
006d5814  c4 ee ff ea                                      b #0x6d132c

; FUNCTION 0x006d5818, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZTv0_n12_N6glitch5scene17CTerrainSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CTerrainSceneNode::~CTerrainSceneNode()
; decoder-mode: arm
006d5818  00 30 90 e5                                      ldr r3, [r0]
006d581c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d5820  03 00 80 e0                                      add r0, r0, r3
006d5824  c0 ee ff ea                                      b #0x6d132c

; FUNCTION 0x006d5828, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTerrainSceneNode
; alias: _ZTv0_n16_NK6glitch5scene17CTerrainSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CTerrainSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006d5828  00 30 90 e5                                      ldr r3, [r0]
006d582c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d5830  03 00 80 e0                                      add r0, r0, r3
006d5834  00 ec ff ea                                      b #0x6d083c
