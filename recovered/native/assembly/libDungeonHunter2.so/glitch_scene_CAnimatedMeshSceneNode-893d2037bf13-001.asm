; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f5fa8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode7getMeshEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getMesh() const
; decoder-mode: arm
006f5fa8  30 31 91 e5                                      ldr r3, [r1, #0x130]
006f5fac  00 00 53 e3                                      cmp r3, #0
006f5fb0  00 30 80 e5                                      str r3, [r0]
006f5fb4  04 20 93 15                                      ldrne r2, [r3, #4]
006f5fb8  01 20 82 12                                      addne r2, r2, #1
006f5fbc  04 20 83 15                                      strne r2, [r3, #4]
006f5fc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f5fc4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode7getTypeEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getType() const
; decoder-mode: arm
006f5fc4  61 0d 06 e3                                      movw r0, #0x6d61
006f5fc8  73 08 46 e3                                      movt r0, #0x6873
006f5fcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f5fd0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode10getFrameNrEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getFrameNr() const
; decoder-mode: arm
006f5fd0  44 01 90 e5                                      ldr r0, [r0, #0x144]
006f5fd4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f5fd8, declared_size=504, range_size=504, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode12buildFrameNrEj
; demangled: glitch::scene::CAnimatedMeshSceneNode::buildFrameNr(unsigned int)
; decoder-mode: arm
006f5fd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006f5fdc  4c 61 90 e5                                      ldr r6, [r0, #0x14c]
006f5fe0  00 50 a0 e3                                      mov r5, #0
006f5fe4  00 40 a0 e1                                      mov r4, r0
006f5fe8  01 80 a0 e1                                      mov r8, r1
006f5fec  06 00 a0 e1                                      mov r0, r6
006f5ff0  05 10 a0 e1                                      mov r1, r5
006f5ff4  e4 5f f0 eb                                      bl #0x30df8c
006f5ff8  00 00 50 e3                                      cmp r0, #0
006f5ffc  0b 00 00 1a                                      bne #0x6f6030
006f6000  34 01 94 e5                                      ldr r0, [r4, #0x134]
006f6004  08 00 60 e0                                      rsb r0, r0, r8
006f6008  b4 60 f0 eb                                      bl #0x30e2e0
006f600c  00 10 a0 e1                                      mov r1, r0
006f6010  06 00 a0 e1                                      mov r0, r6
006f6014  54 63 f0 eb                                      bl #0x30ed6c
006f6018  fe 15 a0 e3                                      mov r1, #0x3f800000
006f601c  50 01 84 e5                                      str r0, [r4, #0x150]
006f6020  b4 60 f0 eb                                      bl #0x30e2f8
006f6024  00 00 50 e3                                      cmp r0, #0
006f6028  50 51 84 15                                      strne r5, [r4, #0x150]
006f602c  4c 51 84 15                                      strne r5, [r4, #0x14c]
006f6030  38 51 94 e5                                      ldr r5, [r4, #0x138]
006f6034  3c 71 94 e5                                      ldr r7, [r4, #0x13c]
006f6038  07 00 55 e1                                      cmp r5, r7
006f603c  26 00 00 0a                                      beq #0x6f60dc
006f6040  40 61 94 e5                                      ldr r6, [r4, #0x140]
006f6044  00 10 a0 e3                                      mov r1, #0
006f6048  06 00 a0 e1                                      mov r0, r6
006f604c  ce 5f f0 eb                                      bl #0x30df8c
006f6050  00 00 50 e3                                      cmp r0, #0
006f6054  20 00 00 1a                                      bne #0x6f60dc
006f6058  54 31 d4 e5                                      ldrb r3, [r4, #0x154]
006f605c  00 00 53 e3                                      cmp r3, #0
006f6060  22 00 00 0a                                      beq #0x6f60f0
006f6064  07 00 65 e0                                      rsb r0, r5, r7
006f6068  3d 62 f0 eb                                      bl #0x30e964
006f606c  06 10 a0 e1                                      mov r1, r6
006f6070  07 63 f0 eb                                      bl #0x30ec94
006f6074  14 61 f0 eb                                      bl #0x30e4cc
006f6078  00 10 a0 e3                                      mov r1, #0
006f607c  c0 af 20 e0                                      eor sl, r0, r0, asr #31
006f6080  c0 af 4a e0                                      sub sl, sl, r0, asr #31
006f6084  06 00 a0 e1                                      mov r0, r6
006f6088  9a 60 f0 eb                                      bl #0x30e2f8
006f608c  00 00 50 e3                                      cmp r0, #0
006f6090  05 00 a0 11                                      movne r0, r5
006f6094  07 00 a0 01                                      moveq r0, r7
006f6098  31 62 f0 eb                                      bl #0x30e964
006f609c  00 50 a0 e1                                      mov r5, r0
006f60a0  34 01 94 e5                                      ldr r0, [r4, #0x134]
006f60a4  0a 10 a0 e1                                      mov r1, sl
006f60a8  08 00 60 e0                                      rsb r0, r0, r8
006f60ac  9e 62 f0 eb                                      bl #0x30eb2c
006f60b0  01 00 a0 e1                                      mov r0, r1
006f60b4  89 60 f0 eb                                      bl #0x30e2e0
006f60b8  00 10 a0 e1                                      mov r1, r0
006f60bc  06 00 a0 e1                                      mov r0, r6
006f60c0  29 63 f0 eb                                      bl #0x30ed6c
006f60c4  00 10 a0 e1                                      mov r1, r0
006f60c8  05 00 a0 e1                                      mov r0, r5
006f60cc  b4 62 f0 eb                                      bl #0x30eba4
006f60d0  00 50 a0 e1                                      mov r5, r0
006f60d4  05 00 a0 e1                                      mov r0, r5
006f60d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006f60dc  05 00 a0 e1                                      mov r0, r5
006f60e0  1f 62 f0 eb                                      bl #0x30e964
006f60e4  00 50 a0 e1                                      mov r5, r0
006f60e8  05 00 a0 e1                                      mov r0, r5
006f60ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006f60f0  06 00 a0 e1                                      mov r0, r6
006f60f4  00 10 a0 e3                                      mov r1, #0
006f60f8  7e 60 f0 eb                                      bl #0x30e2f8
006f60fc  00 00 50 e3                                      cmp r0, #0
006f6100  1c 00 00 0a                                      beq #0x6f6178
006f6104  05 00 a0 e1                                      mov r0, r5
006f6108  15 62 f0 eb                                      bl #0x30e964
006f610c  00 50 a0 e1                                      mov r5, r0
006f6110  34 01 94 e5                                      ldr r0, [r4, #0x134]
006f6114  08 00 60 e0                                      rsb r0, r0, r8
006f6118  70 60 f0 eb                                      bl #0x30e2e0
006f611c  00 10 a0 e1                                      mov r1, r0
006f6120  06 00 a0 e1                                      mov r0, r6
006f6124  10 63 f0 eb                                      bl #0x30ed6c
006f6128  00 10 a0 e1                                      mov r1, r0
006f612c  05 00 a0 e1                                      mov r0, r5
006f6130  9b 62 f0 eb                                      bl #0x30eba4
006f6134  00 60 a0 e1                                      mov r6, r0
006f6138  07 00 a0 e1                                      mov r0, r7
006f613c  08 62 f0 eb                                      bl #0x30e964
006f6140  06 10 a0 e1                                      mov r1, r6
006f6144  00 50 a0 e1                                      mov r5, r0
006f6148  6f 61 f0 eb                                      bl #0x30e70c
006f614c  00 00 50 e3                                      cmp r0, #0
006f6150  1b 00 00 0a                                      beq #0x6f61c4
006f6154  58 31 94 e5                                      ldr r3, [r4, #0x158]
006f6158  00 00 53 e3                                      cmp r3, #0
006f615c  e1 ff ff 0a                                      beq #0x6f60e8
006f6160  03 00 a0 e1                                      mov r0, r3
006f6164  04 10 a0 e1                                      mov r1, r4
006f6168  00 30 93 e5                                      ldr r3, [r3]
006f616c  0f e0 a0 e1                                      mov lr, pc
006f6170  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006f6174  db ff ff ea                                      b #0x6f60e8
006f6178  07 00 a0 e1                                      mov r0, r7
006f617c  f8 61 f0 eb                                      bl #0x30e964
006f6180  00 70 a0 e1                                      mov r7, r0
006f6184  34 01 94 e5                                      ldr r0, [r4, #0x134]
006f6188  08 00 60 e0                                      rsb r0, r0, r8
006f618c  53 60 f0 eb                                      bl #0x30e2e0
006f6190  02 11 86 e2                                      add r1, r6, #0x80000000
006f6194  f4 62 f0 eb                                      bl #0x30ed6c
006f6198  00 10 a0 e1                                      mov r1, r0
006f619c  07 00 a0 e1                                      mov r0, r7
006f61a0  81 60 f0 eb                                      bl #0x30e3ac
006f61a4  00 60 a0 e1                                      mov r6, r0
006f61a8  05 00 a0 e1                                      mov r0, r5
006f61ac  ec 61 f0 eb                                      bl #0x30e964
006f61b0  06 10 a0 e1                                      mov r1, r6
006f61b4  00 50 a0 e1                                      mov r5, r0
006f61b8  4e 60 f0 eb                                      bl #0x30e2f8
006f61bc  00 00 50 e3                                      cmp r0, #0
006f61c0  e3 ff ff 1a                                      bne #0x6f6154
006f61c4  06 50 a0 e1                                      mov r5, r6
006f61c8  05 00 a0 e1                                      mov r0, r5
006f61cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006f61d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode13getStartFrameEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getStartFrame() const
; decoder-mode: arm
006f61d0  38 01 90 e5                                      ldr r0, [r0, #0x138]
006f61d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f61d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode11getEndFrameEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getEndFrame() const
; decoder-mode: arm
006f61d8  3c 01 90 e5                                      ldr r0, [r0, #0x13c]
006f61dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f61e0, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode12setFrameLoopEii
; demangled: glitch::scene::CAnimatedMeshSceneNode::setFrameLoop(int, int)
; decoder-mode: arm
006f61e0  70 40 2d e9                                      push {r4, r5, r6, lr}
006f61e4  30 31 90 e5                                      ldr r3, [r0, #0x130]
006f61e8  00 40 a0 e1                                      mov r4, r0
006f61ec  01 50 a0 e1                                      mov r5, r1
006f61f0  03 00 a0 e1                                      mov r0, r3
006f61f4  00 30 93 e5                                      ldr r3, [r3]
006f61f8  02 60 a0 e1                                      mov r6, r2
006f61fc  0f e0 a0 e1                                      mov lr, pc
006f6200  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006f6204  05 00 56 e1                                      cmp r6, r5
006f6208  01 30 40 e2                                      sub r3, r0, #1
006f620c  1e 00 00 ba                                      blt #0x6f628c
006f6210  00 00 55 e3                                      cmp r5, #0
006f6214  00 50 a0 b3                                      movlt r5, #0
006f6218  05 20 63 e0                                      rsb r2, r3, r5
006f621c  c2 2f a0 e1                                      asr r2, r2, #0x1f
006f6220  00 00 52 e3                                      cmp r2, #0
006f6224  03 00 a0 01                                      moveq r0, r3
006f6228  05 50 02 e0                                      and r5, r2, r5
006f622c  00 00 a0 13                                      movne r0, #0
006f6230  05 00 80 e1                                      orr r0, r0, r5
006f6234  06 20 60 e0                                      rsb r2, r0, r6
006f6238  c2 2f a0 e1                                      asr r2, r2, #0x1f
006f623c  00 00 52 e3                                      cmp r2, #0
006f6240  00 60 a0 13                                      movne r6, #0
006f6244  00 20 02 e0                                      and r2, r2, r0
006f6248  02 60 86 e1                                      orr r6, r6, r2
006f624c  06 20 63 e0                                      rsb r2, r3, r6
006f6250  c2 2f a0 e1                                      asr r2, r2, #0x1f
006f6254  00 00 52 e3                                      cmp r2, #0
006f6258  00 30 a0 13                                      movne r3, #0
006f625c  06 60 02 e0                                      and r6, r2, r6
006f6260  06 60 83 e1                                      orr r6, r3, r6
006f6264  3c 61 84 e5                                      str r6, [r4, #0x13c]
006f6268  38 01 84 e5                                      str r0, [r4, #0x138]
006f626c  bc 61 f0 eb                                      bl #0x30e964
006f6270  00 50 94 e5                                      ldr r5, [r4]
006f6274  00 10 a0 e1                                      mov r1, r0
006f6278  04 00 a0 e1                                      mov r0, r4
006f627c  0f e0 a0 e1                                      mov lr, pc
006f6280  f4 f0 95 e5                                      ldr pc, [r5, #0xf4]
006f6284  01 00 a0 e3                                      mov r0, #1
006f6288  70 80 bd e8                                      pop {r4, r5, r6, pc}
006f628c  00 00 56 e3                                      cmp r6, #0
006f6290  00 60 a0 b3                                      movlt r6, #0
006f6294  06 20 63 e0                                      rsb r2, r3, r6
006f6298  c2 2f a0 e1                                      asr r2, r2, #0x1f
006f629c  00 00 52 e3                                      cmp r2, #0
006f62a0  03 00 a0 01                                      moveq r0, r3
006f62a4  06 60 02 e0                                      and r6, r2, r6
006f62a8  00 00 a0 13                                      movne r0, #0
006f62ac  06 00 80 e1                                      orr r0, r0, r6
006f62b0  05 20 60 e0                                      rsb r2, r0, r5
006f62b4  c2 2f a0 e1                                      asr r2, r2, #0x1f
006f62b8  00 00 52 e3                                      cmp r2, #0
006f62bc  00 50 a0 13                                      movne r5, #0
006f62c0  00 20 02 e0                                      and r2, r2, r0
006f62c4  02 50 85 e1                                      orr r5, r5, r2
006f62c8  05 20 63 e0                                      rsb r2, r3, r5
006f62cc  c2 2f a0 e1                                      asr r2, r2, #0x1f
006f62d0  00 00 52 e3                                      cmp r2, #0
006f62d4  00 30 a0 13                                      movne r3, #0
006f62d8  05 50 02 e0                                      and r5, r2, r5
006f62dc  05 50 83 e1                                      orr r5, r3, r5
006f62e0  3c 51 84 e5                                      str r5, [r4, #0x13c]
006f62e4  38 01 84 e5                                      str r0, [r4, #0x138]
006f62e8  df ff ff ea                                      b #0x6f626c

; FUNCTION 0x006f62ec, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode17setAnimationSpeedEf
; demangled: glitch::scene::CAnimatedMeshSceneNode::setAnimationSpeed(float)
; decoder-mode: arm
006f62ec  10 40 2d e9                                      push {r4, lr}
006f62f0  00 40 a0 e1                                      mov r4, r0
006f62f4  01 00 a0 e1                                      mov r0, r1
006f62f8  6f 12 01 e3                                      movw r1, #0x126f
006f62fc  83 1a 43 e3                                      movt r1, #0x3a83
006f6300  99 62 f0 eb                                      bl #0x30ed6c
006f6304  40 01 84 e5                                      str r0, [r4, #0x140]
006f6308  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f630c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getBoundingBox() const
; decoder-mode: arm
006f630c  10 40 2d e9                                      push {r4, lr}
006f6310  30 31 90 e5                                      ldr r3, [r0, #0x130]
006f6314  03 00 a0 e1                                      mov r0, r3
006f6318  00 30 93 e5                                      ldr r3, [r3]
006f631c  0f e0 a0 e1                                      mov lr, pc
006f6320  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006f6324  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f6328, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode11getMaterialEj
; demangled: glitch::scene::CAnimatedMeshSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
006f6328  70 40 2d e9                                      push {r4, r5, r6, lr}
006f632c  00 40 a0 e1                                      mov r4, r0
006f6330  00 30 91 e5                                      ldr r3, [r1]
006f6334  01 00 a0 e1                                      mov r0, r1
006f6338  02 60 a0 e1                                      mov r6, r2
006f633c  01 50 a0 e1                                      mov r5, r1
006f6340  0f e0 a0 e1                                      mov lr, pc
006f6344  88 f0 93 e5                                      ldr pc, [r3, #0x88]
006f6348  06 00 50 e1                                      cmp r0, r6
006f634c  00 30 a0 93                                      movls r3, #0
006f6350  00 30 84 95                                      strls r3, [r4]
006f6354  01 00 00 8a                                      bhi #0x6f6360
006f6358  04 00 a0 e1                                      mov r0, r4
006f635c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006f6360  30 31 95 e5                                      ldr r3, [r5, #0x130]
006f6364  04 00 a0 e1                                      mov r0, r4
006f6368  06 20 a0 e1                                      mov r2, r6
006f636c  03 10 a0 e1                                      mov r1, r3
006f6370  00 30 93 e5                                      ldr r3, [r3]
006f6374  0f e0 a0 e1                                      mov lr, pc
006f6378  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006f637c  04 00 a0 e1                                      mov r0, r4
006f6380  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006f6384, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode16getMaterialCountEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::getMaterialCount() const
; decoder-mode: arm
006f6384  10 40 2d e9                                      push {r4, lr}
006f6388  30 31 90 e5                                      ldr r3, [r0, #0x130]
006f638c  00 00 53 e3                                      cmp r3, #0
006f6390  04 00 00 0a                                      beq #0x6f63a8
006f6394  03 00 a0 e1                                      mov r0, r3
006f6398  00 30 93 e5                                      ldr r3, [r3]
006f639c  0f e0 a0 e1                                      mov lr, pc
006f63a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006f63a4  10 80 bd e8                                      pop {r4, pc}
006f63a8  03 00 a0 e1                                      mov r0, r3
006f63ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f63b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode11setLoopModeEb
; demangled: glitch::scene::CAnimatedMeshSceneNode::setLoopMode(bool)
; decoder-mode: arm
006f63b0  54 11 c0 e5                                      strb r1, [r0, #0x154]
006f63b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f63b8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode23setAnimationEndCallbackEPNS0_21IAnimationEndCallBackE
; demangled: glitch::scene::CAnimatedMeshSceneNode::setAnimationEndCallback(glitch::scene::IAnimationEndCallBack*)
; decoder-mode: arm
006f63b8  70 40 2d e9                                      push {r4, r5, r6, lr}
006f63bc  00 40 a0 e1                                      mov r4, r0
006f63c0  58 01 90 e5                                      ldr r0, [r0, #0x158]
006f63c4  01 50 a0 e1                                      mov r5, r1
006f63c8  00 00 50 e3                                      cmp r0, #0
006f63cc  00 00 00 0a                                      beq #0x6f63d4
006f63d0  6b 9c f0 eb                                      bl #0x31d584
006f63d4  00 00 55 e3                                      cmp r5, #0
006f63d8  58 51 84 e5                                      str r5, [r4, #0x158]
006f63dc  04 30 95 15                                      ldrne r3, [r5, #4]
006f63e0  01 30 83 12                                      addne r3, r3, #1
006f63e4  04 30 85 15                                      strne r3, [r5, #4]
006f63e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006f63ec, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEE
; demangled: glitch::scene::CAnimatedMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&)
; decoder-mode: arm
006f63ec  70 40 2d e9                                      push {r4, r5, r6, lr}
006f63f0  00 30 91 e5                                      ldr r3, [r1]
006f63f4  00 50 a0 e1                                      mov r5, r0
006f63f8  00 00 53 e3                                      cmp r3, #0
006f63fc  12 00 00 0a                                      beq #0x6f644c
006f6400  04 20 93 e5                                      ldr r2, [r3, #4]
006f6404  01 20 82 e2                                      add r2, r2, #1
006f6408  04 20 83 e5                                      str r2, [r3, #4]
006f640c  30 01 90 e5                                      ldr r0, [r0, #0x130]
006f6410  30 31 85 e5                                      str r3, [r5, #0x130]
006f6414  00 00 50 e3                                      cmp r0, #0
006f6418  01 00 00 0a                                      beq #0x6f6424
006f641c  58 9c f0 eb                                      bl #0x31d584
006f6420  30 31 95 e5                                      ldr r3, [r5, #0x130]
006f6424  00 20 95 e5                                      ldr r2, [r5]
006f6428  03 00 a0 e1                                      mov r0, r3
006f642c  00 30 93 e5                                      ldr r3, [r3]
006f6430  f8 40 92 e5                                      ldr r4, [r2, #0xf8]
006f6434  0f e0 a0 e1                                      mov lr, pc
006f6438  30 f0 93 e5                                      ldr pc, [r3, #0x30]
006f643c  00 10 a0 e3                                      mov r1, #0
006f6440  00 20 a0 e1                                      mov r2, r0
006f6444  05 00 a0 e1                                      mov r0, r5
006f6448  34 ff 2f e1                                      blx r4
006f644c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006f6450, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode21setRenderFromIdentityEb
; demangled: glitch::scene::CAnimatedMeshSceneNode::setRenderFromIdentity(bool)
; decoder-mode: arm
006f6450  70 11 c0 e5                                      strb r1, [r0, #0x170]
006f6454  1e ff 2f e1                                      bx lr

; FUNCTION 0x006f6478, declared_size=200, range_size=200, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZNK6glitch5scene22CAnimatedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CAnimatedMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f6478  70 40 2d e9                                      push {r4, r5, r6, lr}
006f647c  00 50 a0 e1                                      mov r5, r0
006f6480  08 d0 4d e2                                      sub sp, sp, #8
006f6484  01 40 a0 e1                                      mov r4, r1
006f6488  85 83 fa eb                                      bl #0x5972a4
006f648c  10 11 95 e5                                      ldr r1, [r5, #0x110]
006f6490  00 30 94 e5                                      ldr r3, [r4]
006f6494  30 21 95 e5                                      ldr r2, [r5, #0x130]
006f6498  70 01 91 e5                                      ldr r0, [r1, #0x170]
006f649c  7c 60 93 e5                                      ldr r6, [r3, #0x7c]
006f64a0  00 00 52 e3                                      cmp r2, #0
006f64a4  00 30 90 e5                                      ldr r3, [r0]
006f64a8  30 30 93 e5                                      ldr r3, [r3, #0x30]
006f64ac  04 20 8d e5                                      str r2, [sp, #4]
006f64b0  04 10 92 15                                      ldrne r1, [r2, #4]
006f64b4  01 10 81 12                                      addne r1, r1, #1
006f64b8  04 10 82 15                                      strne r1, [r2, #4]
006f64bc  04 10 8d e2                                      add r1, sp, #4
006f64c0  33 ff 2f e1                                      blx r3
006f64c4  68 10 9f e5                                      ldr r1, [pc, #0x68]
006f64c8  00 20 a0 e1                                      mov r2, r0
006f64cc  00 30 a0 e3                                      mov r3, #0
006f64d0  04 00 a0 e1                                      mov r0, r4
006f64d4  01 10 8f e0                                      add r1, pc, r1
006f64d8  36 ff 2f e1                                      blx r6
006f64dc  04 00 9d e5                                      ldr r0, [sp, #4]
006f64e0  00 00 50 e3                                      cmp r0, #0
006f64e4  00 00 00 0a                                      beq #0x6f64ec
006f64e8  25 9c f0 eb                                      bl #0x31d584
006f64ec  44 10 9f e5                                      ldr r1, [pc, #0x44]
006f64f0  04 00 a0 e1                                      mov r0, r4
006f64f4  54 21 d5 e5                                      ldrb r2, [r5, #0x154]
006f64f8  00 c0 94 e5                                      ldr ip, [r4]
006f64fc  01 10 8f e0                                      add r1, pc, r1
006f6500  00 30 a0 e3                                      mov r3, #0
006f6504  0f e0 a0 e1                                      mov lr, pc
006f6508  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
006f650c  28 10 9f e5                                      ldr r1, [pc, #0x28]
006f6510  04 00 a0 e1                                      mov r0, r4
006f6514  40 21 95 e5                                      ldr r2, [r5, #0x140]
006f6518  01 10 8f e0                                      add r1, pc, r1
006f651c  00 c0 94 e5                                      ldr ip, [r4]
006f6520  00 30 a0 e3                                      mov r3, #0
006f6524  0f e0 a0 e1                                      mov lr, pc
006f6528  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006f652c  08 d0 8d e2                                      add sp, sp, #8
006f6530  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006f6534  c4 4e 1f 00 bc b7 1f 00 a8 b7 1f 00              .byte 0xc4, 0x4e, 0x1f, 0x00, 0xbc, 0xb7, 0x1f, 0x00, 0xa8, 0xb7, 0x1f, 0x00

; FUNCTION 0x006f6540, declared_size=36, range_size=36, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode9onAnimateEj
; demangled: glitch::scene::CAnimatedMeshSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
006f6540  70 40 2d e9                                      push {r4, r5, r6, lr}
006f6544  00 40 a0 e1                                      mov r4, r0
006f6548  01 50 a0 e1                                      mov r5, r1
006f654c  a1 fe ff eb                                      bl #0x6f5fd8
006f6550  05 10 a0 e1                                      mov r1, r5
006f6554  44 01 84 e5                                      str r0, [r4, #0x144]
006f6558  04 00 a0 e1                                      mov r0, r4
006f655c  70 40 bd e8                                      pop {r4, r5, r6, lr}
006f6560  01 82 fa ea                                      b #0x596d6c

; FUNCTION 0x006f6564, declared_size=72, range_size=72, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode11removeChildEPNS0_10ISceneNodeE
; demangled: glitch::scene::CAnimatedMeshSceneNode::removeChild(glitch::scene::ISceneNode*)
; decoder-mode: arm
006f6564  00 00 51 e3                                      cmp r1, #0
006f6568  10 40 2d e9                                      push {r4, lr}
006f656c  00 40 a0 e1                                      mov r4, r0
006f6570  02 00 00 0a                                      beq #0x6f6580
006f6574  60 31 90 e5                                      ldr r3, [r0, #0x160]
006f6578  01 00 53 e1                                      cmp r3, r1
006f657c  02 00 00 0a                                      beq #0x6f658c
006f6580  04 00 a0 e1                                      mov r0, r4
006f6584  10 40 bd e8                                      pop {r4, lr}
006f6588  9d 82 fa ea                                      b #0x597004
006f658c  00 20 93 e5                                      ldr r2, [r3]
006f6590  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006f6594  00 00 83 e0                                      add r0, r3, r0
006f6598  f9 9b f0 eb                                      bl #0x31d584
006f659c  00 30 a0 e3                                      mov r3, #0
006f65a0  60 31 84 e5                                      str r3, [r4, #0x160]
006f65a4  01 00 a0 e3                                      mov r0, #1
006f65a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f6618, declared_size=196, range_size=196, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNodeD1Ev
; demangled: glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f6618  70 40 2d e9                                      push {r4, r5, r6, lr}
006f661c  ac 50 9f e5                                      ldr r5, [pc, #0xac]
006f6620  ac 30 9f e5                                      ldr r3, [pc, #0xac]
006f6624  60 21 90 e5                                      ldr r2, [r0, #0x160]
006f6628  05 50 8f e0                                      add r5, pc, r5
006f662c  03 30 95 e7                                      ldr r3, [r5, r3]
006f6630  00 00 52 e3                                      cmp r2, #0
006f6634  00 40 a0 e1                                      mov r4, r0
006f6638  15 1e 83 e2                                      add r1, r3, #0x150
006f663c  1c 30 83 e2                                      add r3, r3, #0x1c
006f6640  00 30 80 e5                                      str r3, [r0]
006f6644  74 11 80 e5                                      str r1, [r0, #0x174]
006f6648  03 00 00 0a                                      beq #0x6f665c
006f664c  00 30 92 e5                                      ldr r3, [r2]
006f6650  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006f6654  00 00 82 e0                                      add r0, r2, r0
006f6658  c9 9b f0 eb                                      bl #0x31d584
006f665c  58 01 94 e5                                      ldr r0, [r4, #0x158]
006f6660  00 00 50 e3                                      cmp r0, #0
006f6664  00 00 00 0a                                      beq #0x6f666c
006f6668  c5 9b f0 eb                                      bl #0x31d584
006f666c  64 31 94 e5                                      ldr r3, [r4, #0x164]
006f6670  00 00 53 e3                                      cmp r3, #0
006f6674  01 00 00 0a                                      beq #0x6f6680
006f6678  04 00 13 e5                                      ldr r0, [r3, #-4]
006f667c  73 67 f0 eb                                      bl #0x310450
006f6680  30 01 94 e5                                      ldr r0, [r4, #0x130]
006f6684  00 00 50 e3                                      cmp r0, #0
006f6688  00 00 00 0a                                      beq #0x6f6690
006f668c  bc 9b f0 eb                                      bl #0x31d584
006f6690  40 30 9f e5                                      ldr r3, [pc, #0x40]
006f6694  04 00 a0 e1                                      mov r0, r4
006f6698  03 10 95 e7                                      ldr r1, [r5, r3]
006f669c  04 30 91 e5                                      ldr r3, [r1, #4]
006f66a0  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006f66a4  18 20 91 e5                                      ldr r2, [r1, #0x18]
006f66a8  00 30 84 e5                                      str r3, [r4]
006f66ac  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006f66b0  08 10 81 e2                                      add r1, r1, #8
006f66b4  03 c0 84 e7                                      str ip, [r4, r3]
006f66b8  00 30 94 e5                                      ldr r3, [r4]
006f66bc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f66c0  03 20 84 e7                                      str r2, [r4, r3]
006f66c4  7c 89 fa eb                                      bl #0x598cbc
006f66c8  04 00 a0 e1                                      mov r0, r4
006f66cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006f66d0  68 e4 29 00 68 3f 00 00 7c 3f 00 00              .byte 0x68, 0xe4, 0x29, 0x00, 0x68, 0x3f, 0x00, 0x00, 0x7c, 0x3f, 0x00, 0x00

; FUNCTION 0x006f66dc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNodeD0Ev
; demangled: glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f66dc  10 40 2d e9                                      push {r4, lr}
006f66e0  00 40 a0 e1                                      mov r4, r0
006f66e4  cb ff ff eb                                      bl #0x6f6618
006f66e8  04 00 a0 e1                                      mov r0, r4
006f66ec  ef 5e f0 eb                                      bl #0x30e2b0
006f66f0  04 00 a0 e1                                      mov r0, r4
006f66f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006f66f8, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNodeD2Ev
; demangled: glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f66f8  70 40 2d e9                                      push {r4, r5, r6, lr}
006f66fc  00 30 91 e5                                      ldr r3, [r1]
006f6700  01 50 a0 e1                                      mov r5, r1
006f6704  00 40 a0 e1                                      mov r4, r0
006f6708  00 30 80 e5                                      str r3, [r0]
006f670c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006f6710  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006f6714  03 20 80 e7                                      str r2, [r0, r3]
006f6718  00 30 90 e5                                      ldr r3, [r0]
006f671c  20 20 91 e5                                      ldr r2, [r1, #0x20]
006f6720  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f6724  03 20 80 e7                                      str r2, [r0, r3]
006f6728  60 31 90 e5                                      ldr r3, [r0, #0x160]
006f672c  00 00 53 e3                                      cmp r3, #0
006f6730  03 00 00 0a                                      beq #0x6f6744
006f6734  00 20 93 e5                                      ldr r2, [r3]
006f6738  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006f673c  00 00 83 e0                                      add r0, r3, r0
006f6740  8f 9b f0 eb                                      bl #0x31d584
006f6744  58 01 94 e5                                      ldr r0, [r4, #0x158]
006f6748  00 00 50 e3                                      cmp r0, #0
006f674c  00 00 00 0a                                      beq #0x6f6754
006f6750  8b 9b f0 eb                                      bl #0x31d584
006f6754  64 31 94 e5                                      ldr r3, [r4, #0x164]
006f6758  00 00 53 e3                                      cmp r3, #0
006f675c  01 00 00 0a                                      beq #0x6f6768
006f6760  04 00 13 e5                                      ldr r0, [r3, #-4]
006f6764  39 67 f0 eb                                      bl #0x310450
006f6768  30 01 94 e5                                      ldr r0, [r4, #0x130]
006f676c  00 00 50 e3                                      cmp r0, #0
006f6770  00 00 00 0a                                      beq #0x6f6778
006f6774  82 9b f0 eb                                      bl #0x31d584
006f6778  04 30 95 e5                                      ldr r3, [r5, #4]
006f677c  04 50 85 e2                                      add r5, r5, #4
006f6780  04 10 85 e2                                      add r1, r5, #4
006f6784  00 30 84 e5                                      str r3, [r4]
006f6788  10 20 95 e5                                      ldr r2, [r5, #0x10]
006f678c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006f6790  04 00 a0 e1                                      mov r0, r4
006f6794  03 20 84 e7                                      str r2, [r4, r3]
006f6798  00 30 94 e5                                      ldr r3, [r4]
006f679c  14 20 95 e5                                      ldr r2, [r5, #0x14]
006f67a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f67a4  03 20 84 e7                                      str r2, [r4, r3]
006f67a8  43 89 fa eb                                      bl #0x598cbc
006f67ac  04 00 a0 e1                                      mov r0, r4
006f67b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006f6818, declared_size=320, range_size=320, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode24addShadowVolumeSceneNodeERKN5boost13intrusive_ptrIKNS0_5IMeshEEEibf
; demangled: glitch::scene::CAnimatedMeshSceneNode::addShadowVolumeSceneNode(boost::intrusive_ptr<glitch::scene::IMesh const> const&, int, bool, float)
; decoder-mode: arm
006f6818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f681c  00 10 91 e5                                      ldr r1, [r1]
006f6820  10 d0 4d e2                                      sub sp, sp, #0x10
006f6824  03 80 a0 e1                                      mov r8, r3
006f6828  0c 10 8d e5                                      str r1, [sp, #0xc]
006f682c  00 00 51 e3                                      cmp r1, #0
006f6830  04 30 91 15                                      ldrne r3, [r1, #4]
006f6834  02 70 a0 e1                                      mov r7, r2
006f6838  00 40 a0 e1                                      mov r4, r0
006f683c  01 30 83 12                                      addne r3, r3, #1
006f6840  04 30 81 15                                      strne r3, [r1, #4]
006f6844  10 21 90 e5                                      ldr r2, [r0, #0x110]
006f6848  14 60 92 e5                                      ldr r6, [r2, #0x14]
006f684c  9c 30 96 e5                                      ldr r3, [r6, #0x9c]
006f6850  08 30 13 e2                                      ands r3, r3, #8
006f6854  03 40 a0 01                                      moveq r4, r3
006f6858  1f 00 00 0a                                      beq #0x6f68dc
006f685c  60 31 94 e5                                      ldr r3, [r4, #0x160]
006f6860  00 00 53 e3                                      cmp r3, #0
006f6864  23 00 00 1a                                      bne #0x6f68f8
006f6868  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006f686c  00 00 53 e3                                      cmp r3, #0
006f6870  26 00 00 0a                                      beq #0x6f6910
006f6874  00 10 a0 e3                                      mov r1, #0
006f6878  65 0f a0 e3                                      mov r0, #0x194
006f687c  4a f6 f8 eb                                      bl #0x5341ac
006f6880  00 00 58 e3                                      cmp r8, #0
006f6884  20 c0 a0 13                                      movne ip, #0x20
006f6888  10 c0 a0 03                                      moveq ip, #0x10
006f688c  00 c0 8d e5                                      str ip, [sp]
006f6890  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006f6894  00 50 a0 e1                                      mov r5, r0
006f6898  0c 20 8d e2                                      add r2, sp, #0xc
006f689c  07 30 a0 e1                                      mov r3, r7
006f68a0  06 10 a0 e1                                      mov r1, r6
006f68a4  04 c0 8d e5                                      str ip, [sp, #4]
006f68a8  9b 24 00 eb                                      bl #0x6ffb1c
006f68ac  04 00 a0 e1                                      mov r0, r4
006f68b0  00 30 94 e5                                      ldr r3, [r4]
006f68b4  05 10 a0 e1                                      mov r1, r5
006f68b8  60 51 84 e5                                      str r5, [r4, #0x160]
006f68bc  0f e0 a0 e1                                      mov lr, pc
006f68c0  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
006f68c4  60 31 94 e5                                      ldr r3, [r4, #0x160]
006f68c8  00 20 93 e5                                      ldr r2, [r3]
006f68cc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006f68d0  00 00 83 e0                                      add r0, r3, r0
006f68d4  2a 9b f0 eb                                      bl #0x31d584
006f68d8  60 41 94 e5                                      ldr r4, [r4, #0x160]
006f68dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006f68e0  00 00 50 e3                                      cmp r0, #0
006f68e4  00 00 00 0a                                      beq #0x6f68ec
006f68e8  25 9b f0 eb                                      bl #0x31d584
006f68ec  04 00 a0 e1                                      mov r0, r4
006f68f0  10 d0 8d e2                                      add sp, sp, #0x10
006f68f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006f68f8  54 00 9f e5                                      ldr r0, [pc, #0x54]
006f68fc  02 10 a0 e3                                      mov r1, #2
006f6900  00 40 a0 e3                                      mov r4, #0
006f6904  00 00 8f e0                                      add r0, pc, r0
006f6908  e4 50 fc eb                                      bl #0x60aca0
006f690c  f2 ff ff ea                                      b #0x6f68dc
006f6910  30 31 94 e5                                      ldr r3, [r4, #0x130]
006f6914  00 00 53 e3                                      cmp r3, #0
006f6918  0a 00 00 0a                                      beq #0x6f6948
006f691c  04 20 93 e5                                      ldr r2, [r3, #4]
006f6920  01 20 82 e2                                      add r2, r2, #1
006f6924  04 20 83 e5                                      str r2, [r3, #4]
006f6928  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006f692c  0c 30 8d e5                                      str r3, [sp, #0xc]
006f6930  00 00 50 e3                                      cmp r0, #0
006f6934  00 00 00 0a                                      beq #0x6f693c
006f6938  11 9b f0 eb                                      bl #0x31d584
006f693c  10 31 94 e5                                      ldr r3, [r4, #0x110]
006f6940  14 60 93 e5                                      ldr r6, [r3, #0x14]
006f6944  ca ff ff ea                                      b #0x6f6874
006f6948  0c 30 8d e5                                      str r3, [sp, #0xc]
006f694c  14 60 92 e5                                      ldr r6, [r2, #0x14]
006f6950  c7 ff ff ea                                      b #0x6f6874
; mapping-symbol data/literal pool
006f6954  cc b3 1f 00                                      .byte 0xcc, 0xb3, 0x1f, 0x00

; FUNCTION 0x006f6958, declared_size=416, range_size=416, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006f6958  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f695c  00 60 a0 e3                                      mov r6, #0
006f6960  24 d0 4d e2                                      sub sp, sp, #0x24
006f6964  5c 61 80 e5                                      str r6, [r0, #0x15c]
006f6968  00 30 90 e5                                      ldr r3, [r0]
006f696c  00 50 a0 e1                                      mov r5, r0
006f6970  0f e0 a0 e1                                      mov lr, pc
006f6974  88 f0 93 e5                                      ldr pc, [r3, #0x88]
006f6978  00 90 50 e2                                      subs sb, r0, #0
006f697c  41 00 00 0a                                      beq #0x6f6a88
006f6980  06 70 a0 e1                                      mov r7, r6
006f6984  06 40 a0 e1                                      mov r4, r6
006f6988  1c 80 8d e2                                      add r8, sp, #0x1c
006f698c  0c a0 a0 e3                                      mov sl, #0xc
006f6990  01 00 00 ea                                      b #0x6f699c
006f6994  09 00 56 e1                                      cmp r6, sb
006f6998  53 00 00 0a                                      beq #0x6f6aec
006f699c  30 31 95 e5                                      ldr r3, [r5, #0x130]
006f69a0  06 20 a0 e1                                      mov r2, r6
006f69a4  08 00 a0 e1                                      mov r0, r8
006f69a8  03 10 a0 e1                                      mov r1, r3
006f69ac  00 30 93 e5                                      ldr r3, [r3]
006f69b0  0f e0 a0 e1                                      mov lr, pc
006f69b4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006f69b8  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
006f69bc  01 60 86 e2                                      add r6, r6, #1
006f69c0  0b 00 a0 e1                                      mov r0, fp
006f69c4  da 3c fb eb                                      bl #0x5c5d34
006f69c8  04 30 9b e5                                      ldr r3, [fp, #4]
006f69cc  18 30 93 e5                                      ldr r3, [r3, #0x18]
006f69d0  9a 30 23 e0                                      mla r3, sl, r0, r3
006f69d4  08 00 a0 e1                                      mov r0, r8
006f69d8  08 30 93 e5                                      ldr r3, [r3, #8]
006f69dc  04 b0 93 e5                                      ldr fp, [r3, #4]
006f69e0  80 68 f0 eb                                      bl #0x310be8
006f69e4  5b b8 e0 e7                                      ubfx fp, fp, #0x10, #1
006f69e8  00 00 5b e3                                      cmp fp, #0
006f69ec  01 40 84 12                                      addne r4, r4, #1
006f69f0  01 70 87 02                                      addeq r7, r7, #1
006f69f4  00 00 54 e3                                      cmp r4, #0
006f69f8  00 00 57 13                                      cmpne r7, #0
006f69fc  e4 ff ff 0a                                      beq #0x6f6994
006f6a00  10 01 95 e5                                      ldr r0, [r5, #0x110]
006f6a04  00 30 a0 e3                                      mov r3, #0
006f6a08  20 60 8d e2                                      add r6, sp, #0x20
006f6a0c  00 20 90 e5                                      ldr r2, [r0]
006f6a10  05 10 a0 e1                                      mov r1, r5
006f6a14  24 c0 92 e5                                      ldr ip, [r2, #0x24]
006f6a18  04 20 a0 e3                                      mov r2, #4
006f6a1c  08 30 26 e5                                      str r3, [r6, #-8]!
006f6a20  00 20 8d e5                                      str r2, [sp]
006f6a24  02 21 e0 e3                                      mvn r2, #0x80000000
006f6a28  08 20 8d e5                                      str r2, [sp, #8]
006f6a2c  04 30 8d e5                                      str r3, [sp, #4]
006f6a30  06 20 a0 e1                                      mov r2, r6
006f6a34  3c ff 2f e1                                      blx ip
006f6a38  06 00 a0 e1                                      mov r0, r6
006f6a3c  69 68 f0 eb                                      bl #0x310be8
006f6a40  00 00 54 e3                                      cmp r4, #0
006f6a44  0f 00 00 0a                                      beq #0x6f6a88
006f6a48  10 01 95 e5                                      ldr r0, [r5, #0x110]
006f6a4c  00 30 a0 e3                                      mov r3, #0
006f6a50  20 40 8d e2                                      add r4, sp, #0x20
006f6a54  00 20 90 e5                                      ldr r2, [r0]
006f6a58  05 10 a0 e1                                      mov r1, r5
006f6a5c  24 c0 92 e5                                      ldr ip, [r2, #0x24]
006f6a60  08 20 a0 e3                                      mov r2, #8
006f6a64  0c 30 24 e5                                      str r3, [r4, #-0xc]!
006f6a68  00 20 8d e5                                      str r2, [sp]
006f6a6c  02 21 e0 e3                                      mvn r2, #0x80000000
006f6a70  08 20 8d e5                                      str r2, [sp, #8]
006f6a74  04 30 8d e5                                      str r3, [sp, #4]
006f6a78  04 20 a0 e1                                      mov r2, r4
006f6a7c  3c ff 2f e1                                      blx ip
006f6a80  04 00 a0 e1                                      mov r0, r4
006f6a84  57 68 f0 eb                                      bl #0x310be8
006f6a88  30 31 95 e5                                      ldr r3, [r5, #0x130]
006f6a8c  00 00 53 e3                                      cmp r3, #0
006f6a90  12 00 00 0a                                      beq #0x6f6ae0
006f6a94  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
006f6a98  02 0b 13 e3                                      tst r3, #0x800
006f6a9c  0f 00 00 0a                                      beq #0x6f6ae0
006f6aa0  10 01 95 e5                                      ldr r0, [r5, #0x110]
006f6aa4  00 30 a0 e3                                      mov r3, #0
006f6aa8  20 40 8d e2                                      add r4, sp, #0x20
006f6aac  00 20 90 e5                                      ldr r2, [r0]
006f6ab0  05 10 a0 e1                                      mov r1, r5
006f6ab4  24 c0 92 e5                                      ldr ip, [r2, #0x24]
006f6ab8  07 20 a0 e3                                      mov r2, #7
006f6abc  10 30 24 e5                                      str r3, [r4, #-0x10]!
006f6ac0  00 20 8d e5                                      str r2, [sp]
006f6ac4  02 21 e0 e3                                      mvn r2, #0x80000000
006f6ac8  08 20 8d e5                                      str r2, [sp, #8]
006f6acc  04 30 8d e5                                      str r3, [sp, #4]
006f6ad0  04 20 a0 e1                                      mov r2, r4
006f6ad4  3c ff 2f e1                                      blx ip
006f6ad8  04 00 a0 e1                                      mov r0, r4
006f6adc  41 68 f0 eb                                      bl #0x310be8
006f6ae0  01 00 a0 e3                                      mov r0, #1
006f6ae4  24 d0 8d e2                                      add sp, sp, #0x24
006f6ae8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006f6aec  00 00 57 e3                                      cmp r7, #0
006f6af0  d2 ff ff 0a                                      beq #0x6f6a40
006f6af4  c1 ff ff ea                                      b #0x6f6a00

; FUNCTION 0x006f6af8, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode15setCurrentFrameEf
; demangled: glitch::scene::CAnimatedMeshSceneNode::setCurrentFrame(float)
; decoder-mode: arm
006f6af8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f6afc  00 40 a0 e1                                      mov r4, r0
006f6b00  38 01 90 e5                                      ldr r0, [r0, #0x138]
006f6b04  01 70 a0 e1                                      mov r7, r1
006f6b08  95 5f f0 eb                                      bl #0x30e964
006f6b0c  00 50 a0 e1                                      mov r5, r0
006f6b10  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
006f6b14  92 5f f0 eb                                      bl #0x30e964
006f6b18  07 10 a0 e1                                      mov r1, r7
006f6b1c  00 60 a0 e1                                      mov r6, r0
006f6b20  05 00 a0 e1                                      mov r0, r5
006f6b24  f3 5d f0 eb                                      bl #0x30e2f8
006f6b28  00 00 50 e3                                      cmp r0, #0
006f6b2c  07 50 a0 01                                      moveq r5, r7
006f6b30  05 10 a0 e1                                      mov r1, r5
006f6b34  06 00 a0 e1                                      mov r0, r6
006f6b38  ee 5d f0 eb                                      bl #0x30e2f8
006f6b3c  00 00 50 e3                                      cmp r0, #0
006f6b40  06 50 a0 01                                      moveq r5, r6
006f6b44  44 51 84 e5                                      str r5, [r4, #0x144]
006f6b48  e5 50 fc eb                                      bl #0x60aee4
006f6b4c  00 50 a0 e1                                      mov r5, r0
006f6b50  38 01 94 e5                                      ldr r0, [r4, #0x138]
006f6b54  82 5f f0 eb                                      bl #0x30e964
006f6b58  00 10 a0 e1                                      mov r1, r0
006f6b5c  44 01 94 e5                                      ldr r0, [r4, #0x144]
006f6b60  11 5e f0 eb                                      bl #0x30e3ac
006f6b64  40 11 94 e5                                      ldr r1, [r4, #0x140]
006f6b68  49 60 f0 eb                                      bl #0x30ec94
006f6b6c  56 5e f0 eb                                      bl #0x30e4cc
006f6b70  05 00 60 e0                                      rsb r0, r0, r5
006f6b74  34 01 84 e5                                      str r0, [r4, #0x134]
006f6b78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006f6b7c, declared_size=292, range_size=292, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
; demangled: glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f6b7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f6b80  08 61 9f e5                                      ldr r6, [pc, #0x108]
006f6b84  08 e1 9f e5                                      ldr lr, [pc, #0x108]
006f6b88  08 c1 9f e5                                      ldr ip, [pc, #0x108]
006f6b8c  06 60 8f e0                                      add r6, pc, r6
006f6b90  0e 50 96 e7                                      ldr r5, [r6, lr]
006f6b94  0c c0 96 e7                                      ldr ip, [r6, ip]
006f6b98  01 70 a0 e3                                      mov r7, #1
006f6b9c  24 e0 95 e5                                      ldr lr, [r5, #0x24]
006f6ba0  08 c0 8c e2                                      add ip, ip, #8
006f6ba4  78 71 80 e5                                      str r7, [r0, #0x178]
006f6ba8  00 e0 80 e5                                      str lr, [r0]
006f6bac  74 c1 80 e5                                      str ip, [r0, #0x174]
006f6bb0  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
006f6bb4  28 e0 95 e5                                      ldr lr, [r5, #0x28]
006f6bb8  08 d0 4d e2                                      sub sp, sp, #8
006f6bbc  01 80 a0 e1                                      mov r8, r1
006f6bc0  0c e0 80 e7                                      str lr, [r0, ip]
006f6bc4  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006f6bc8  08 10 85 e2                                      add r1, r5, #8
006f6bcc  00 40 a0 e1                                      mov r4, r0
006f6bd0  00 c0 8d e5                                      str ip, [sp]
006f6bd4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006f6bd8  04 c0 8d e5                                      str ip, [sp, #4]
006f6bdc  37 89 fa eb                                      bl #0x5990c0
006f6be0  04 30 95 e5                                      ldr r3, [r5, #4]
006f6be4  14 10 95 e5                                      ldr r1, [r5, #0x14]
006f6be8  ac 20 9f e5                                      ldr r2, [pc, #0xac]
006f6bec  00 30 84 e5                                      str r3, [r4]
006f6bf0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006f6bf4  02 20 96 e7                                      ldr r2, [r6, r2]
006f6bf8  18 e0 95 e5                                      ldr lr, [r5, #0x18]
006f6bfc  03 10 84 e7                                      str r1, [r4, r3]
006f6c00  00 30 94 e5                                      ldr r3, [r4]
006f6c04  15 0e 82 e2                                      add r0, r2, #0x150
006f6c08  1c 20 82 e2                                      add r2, r2, #0x1c
006f6c0c  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
006f6c10  00 10 a0 e3                                      mov r1, #0
006f6c14  00 30 a0 e3                                      mov r3, #0
006f6c18  0c e0 84 e7                                      str lr, [r4, ip]
006f6c1c  00 20 84 e5                                      str r2, [r4]
006f6c20  cd 2c 0c e3                                      movw r2, #0xcccd
006f6c24  cc 2c 43 e3                                      movt r2, #0x3ccc
006f6c28  40 21 84 e5                                      str r2, [r4, #0x140]
006f6c2c  50 11 84 e5                                      str r1, [r4, #0x150]
006f6c30  70 31 c4 e5                                      strb r3, [r4, #0x170]
006f6c34  30 31 84 e5                                      str r3, [r4, #0x130]
006f6c38  34 31 84 e5                                      str r3, [r4, #0x134]
006f6c3c  38 31 84 e5                                      str r3, [r4, #0x138]
006f6c40  3c 31 84 e5                                      str r3, [r4, #0x13c]
006f6c44  44 11 84 e5                                      str r1, [r4, #0x144]
006f6c48  48 31 84 e5                                      str r3, [r4, #0x148]
006f6c4c  4c 11 84 e5                                      str r1, [r4, #0x14c]
006f6c50  58 31 84 e5                                      str r3, [r4, #0x158]
006f6c54  5c 31 84 e5                                      str r3, [r4, #0x15c]
006f6c58  60 31 84 e5                                      str r3, [r4, #0x160]
006f6c5c  64 31 84 e5                                      str r3, [r4, #0x164]
006f6c60  68 31 84 e5                                      str r3, [r4, #0x168]
006f6c64  6c 31 84 e5                                      str r3, [r4, #0x16c]
006f6c68  74 01 84 e5                                      str r0, [r4, #0x174]
006f6c6c  54 71 c4 e5                                      strb r7, [r4, #0x154]
006f6c70  9b 50 fc eb                                      bl #0x60aee4
006f6c74  08 10 a0 e1                                      mov r1, r8
006f6c78  34 01 84 e5                                      str r0, [r4, #0x134]
006f6c7c  04 00 a0 e1                                      mov r0, r4
006f6c80  d9 fd ff eb                                      bl #0x6f63ec
006f6c84  04 00 a0 e1                                      mov r0, r4
006f6c88  08 d0 8d e2                                      add sp, sp, #8
006f6c8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006f6c90  04 df 29 00 7c 3f 00 00 44 2b 00 00 68 3f 00 00  .byte 0x04, 0xdf, 0x29, 0x00, 0x7c, 0x3f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x68, 0x3f, 0x00, 0x00

; FUNCTION 0x006f6ca0, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
; demangled: glitch::scene::CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(boost::intrusive_ptr<glitch::scene::IAnimatedMesh> const&, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006f6ca0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006f6ca4  0c d0 4d e2                                      sub sp, sp, #0xc
006f6ca8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006f6cac  04 60 81 e2                                      add r6, r1, #4
006f6cb0  01 50 a0 e1                                      mov r5, r1
006f6cb4  00 c0 8d e5                                      str ip, [sp]
006f6cb8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006f6cbc  02 70 a0 e1                                      mov r7, r2
006f6cc0  04 10 86 e2                                      add r1, r6, #4
006f6cc4  03 20 a0 e1                                      mov r2, r3
006f6cc8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006f6ccc  00 40 a0 e1                                      mov r4, r0
006f6cd0  04 c0 8d e5                                      str ip, [sp, #4]
006f6cd4  f9 88 fa eb                                      bl #0x5990c0
006f6cd8  04 30 95 e5                                      ldr r3, [r5, #4]
006f6cdc  00 20 a0 e3                                      mov r2, #0
006f6ce0  00 30 84 e5                                      str r3, [r4]
006f6ce4  1c 10 13 e5                                      ldr r1, [r3, #-0x1c]
006f6ce8  10 00 96 e5                                      ldr r0, [r6, #0x10]
006f6cec  00 30 a0 e3                                      mov r3, #0
006f6cf0  01 00 84 e7                                      str r0, [r4, r1]
006f6cf4  00 10 94 e5                                      ldr r1, [r4]
006f6cf8  14 00 96 e5                                      ldr r0, [r6, #0x14]
006f6cfc  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006f6d00  01 00 84 e7                                      str r0, [r4, r1]
006f6d04  00 10 95 e5                                      ldr r1, [r5]
006f6d08  00 10 84 e5                                      str r1, [r4]
006f6d0c  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
006f6d10  1c 10 11 e5                                      ldr r1, [r1, #-0x1c]
006f6d14  01 00 84 e7                                      str r0, [r4, r1]
006f6d18  00 10 94 e5                                      ldr r1, [r4]
006f6d1c  20 00 95 e5                                      ldr r0, [r5, #0x20]
006f6d20  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006f6d24  01 00 84 e7                                      str r0, [r4, r1]
006f6d28  cd 1c 0c e3                                      movw r1, #0xcccd
006f6d2c  cc 1c 43 e3                                      movt r1, #0x3ccc
006f6d30  40 11 84 e5                                      str r1, [r4, #0x140]
006f6d34  01 10 a0 e3                                      mov r1, #1
006f6d38  50 21 84 e5                                      str r2, [r4, #0x150]
006f6d3c  54 11 c4 e5                                      strb r1, [r4, #0x154]
006f6d40  30 31 84 e5                                      str r3, [r4, #0x130]
006f6d44  34 31 84 e5                                      str r3, [r4, #0x134]
006f6d48  38 31 84 e5                                      str r3, [r4, #0x138]
006f6d4c  3c 31 84 e5                                      str r3, [r4, #0x13c]
006f6d50  44 21 84 e5                                      str r2, [r4, #0x144]
006f6d54  48 31 84 e5                                      str r3, [r4, #0x148]
006f6d58  4c 21 84 e5                                      str r2, [r4, #0x14c]
006f6d5c  58 31 84 e5                                      str r3, [r4, #0x158]
006f6d60  5c 31 84 e5                                      str r3, [r4, #0x15c]
006f6d64  60 31 84 e5                                      str r3, [r4, #0x160]
006f6d68  64 31 84 e5                                      str r3, [r4, #0x164]
006f6d6c  68 31 84 e5                                      str r3, [r4, #0x168]
006f6d70  6c 31 84 e5                                      str r3, [r4, #0x16c]
006f6d74  70 31 c4 e5                                      strb r3, [r4, #0x170]
006f6d78  59 50 fc eb                                      bl #0x60aee4
006f6d7c  07 10 a0 e1                                      mov r1, r7
006f6d80  34 01 84 e5                                      str r0, [r4, #0x134]
006f6d84  04 00 a0 e1                                      mov r0, r4
006f6d88  97 fd ff eb                                      bl #0x6f63ec
006f6d8c  04 00 a0 e1                                      mov r0, r4
006f6d90  0c d0 8d e2                                      add sp, sp, #0xc
006f6d94  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006f6d98, declared_size=464, range_size=464, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006f6d98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006f6d9c  b0 41 9f e5                                      ldr r4, [pc, #0x1b0]
006f6da0  b0 81 9f e5                                      ldr r8, [pc, #0x1b0]
006f6da4  40 d0 4d e2                                      sub sp, sp, #0x40
006f6da8  04 40 8f e0                                      add r4, pc, r4
006f6dac  08 30 94 e7                                      ldr r3, [r4, r8]
006f6db0  00 60 a0 e1                                      mov r6, r0
006f6db4  01 50 a0 e1                                      mov r5, r1
006f6db8  00 30 93 e5                                      ldr r3, [r3]
006f6dbc  24 70 8d e2                                      add r7, sp, #0x24
006f6dc0  3c 30 8d e5                                      str r3, [sp, #0x3c]
006f6dc4  a3 84 fa eb                                      bl #0x598058
006f6dc8  10 31 96 e5                                      ldr r3, [r6, #0x110]
006f6dcc  30 21 96 e5                                      ldr r2, [r6, #0x130]
006f6dd0  70 01 93 e5                                      ldr r0, [r3, #0x170]
006f6dd4  00 00 52 e3                                      cmp r2, #0
006f6dd8  00 30 90 e5                                      ldr r3, [r0]
006f6ddc  30 30 93 e5                                      ldr r3, [r3, #0x30]
006f6de0  08 20 8d e5                                      str r2, [sp, #8]
006f6de4  04 10 92 15                                      ldrne r1, [r2, #4]
006f6de8  01 10 81 12                                      addne r1, r1, #1
006f6dec  04 10 82 15                                      strne r1, [r2, #4]
006f6df0  08 10 8d e2                                      add r1, sp, #8
006f6df4  33 ff 2f e1                                      blx r3
006f6df8  34 70 8d e5                                      str r7, [sp, #0x34]
006f6dfc  00 a0 a0 e1                                      mov sl, r0
006f6e00  38 70 8d e5                                      str r7, [sp, #0x38]
006f6e04  12 5c f0 eb                                      bl #0x30de54
006f6e08  0a 10 a0 e1                                      mov r1, sl
006f6e0c  00 20 8a e0                                      add r2, sl, r0
006f6e10  07 00 a0 e1                                      mov r0, r7
006f6e14  76 bc f0 eb                                      bl #0x325ff4
006f6e18  08 00 9d e5                                      ldr r0, [sp, #8]
006f6e1c  00 00 50 e3                                      cmp r0, #0
006f6e20  00 00 00 0a                                      beq #0x6f6e28
006f6e24  d6 99 f0 eb                                      bl #0x31d584
006f6e28  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
006f6e2c  0c a0 8d e2                                      add sl, sp, #0xc
006f6e30  05 10 a0 e1                                      mov r1, r5
006f6e34  02 20 8f e0                                      add r2, pc, r2
006f6e38  00 30 95 e5                                      ldr r3, [r5]
006f6e3c  0a 00 a0 e1                                      mov r0, sl
006f6e40  0f e0 a0 e1                                      mov lr, pc
006f6e44  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006f6e48  10 11 9f e5                                      ldr r1, [pc, #0x110]
006f6e4c  00 30 95 e5                                      ldr r3, [r5]
006f6e50  05 00 a0 e1                                      mov r0, r5
006f6e54  01 10 8f e0                                      add r1, pc, r1
006f6e58  0f e0 a0 e1                                      mov lr, pc
006f6e5c  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
006f6e60  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
006f6e64  54 01 c6 e5                                      strb r0, [r6, #0x154]
006f6e68  00 30 95 e5                                      ldr r3, [r5]
006f6e6c  05 00 a0 e1                                      mov r0, r5
006f6e70  01 10 8f e0                                      add r1, pc, r1
006f6e74  0f e0 a0 e1                                      mov lr, pc
006f6e78  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006f6e7c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006f6e80  20 50 9d e5                                      ldr r5, [sp, #0x20]
006f6e84  40 01 86 e5                                      str r0, [r6, #0x140]
006f6e88  05 00 53 e1                                      cmp r3, r5
006f6e8c  17 00 00 0a                                      beq #0x6f6ef0
006f6e90  38 00 9d e5                                      ldr r0, [sp, #0x38]
006f6e94  34 20 9d e5                                      ldr r2, [sp, #0x34]
006f6e98  03 30 65 e0                                      rsb r3, r5, r3
006f6e9c  02 20 60 e0                                      rsb r2, r0, r2
006f6ea0  03 00 52 e1                                      cmp r2, r3
006f6ea4  24 00 00 0a                                      beq #0x6f6f3c
006f6ea8  04 90 8d e2                                      add sb, sp, #4
006f6eac  05 20 a0 e1                                      mov r2, r5
006f6eb0  09 00 a0 e1                                      mov r0, sb
006f6eb4  10 11 96 e5                                      ldr r1, [r6, #0x110]
006f6eb8  59 5e fa eb                                      bl #0x58e824
006f6ebc  04 30 9d e5                                      ldr r3, [sp, #4]
006f6ec0  00 00 53 e3                                      cmp r3, #0
006f6ec4  08 00 00 0a                                      beq #0x6f6eec
006f6ec8  06 00 a0 e1                                      mov r0, r6
006f6ecc  09 10 a0 e1                                      mov r1, sb
006f6ed0  00 30 96 e5                                      ldr r3, [r6]
006f6ed4  0f e0 a0 e1                                      mov lr, pc
006f6ed8  18 f1 93 e5                                      ldr pc, [r3, #0x118]
006f6edc  04 00 9d e5                                      ldr r0, [sp, #4]
006f6ee0  00 00 50 e3                                      cmp r0, #0
006f6ee4  00 00 00 0a                                      beq #0x6f6eec
006f6ee8  a5 99 f0 eb                                      bl #0x31d584
006f6eec  20 50 9d e5                                      ldr r5, [sp, #0x20]
006f6ef0  0a 00 55 e1                                      cmp r5, sl
006f6ef4  03 00 00 0a                                      beq #0x6f6f08
006f6ef8  00 00 55 e3                                      cmp r5, #0
006f6efc  01 00 00 0a                                      beq #0x6f6f08
006f6f00  05 00 a0 e1                                      mov r0, r5
006f6f04  51 65 f0 eb                                      bl #0x310450
006f6f08  38 00 9d e5                                      ldr r0, [sp, #0x38]
006f6f0c  07 00 50 e1                                      cmp r0, r7
006f6f10  02 00 00 0a                                      beq #0x6f6f20
006f6f14  00 00 50 e3                                      cmp r0, #0
006f6f18  00 00 00 0a                                      beq #0x6f6f20
006f6f1c  4b 65 f0 eb                                      bl #0x310450
006f6f20  08 30 94 e7                                      ldr r3, [r4, r8]
006f6f24  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006f6f28  00 30 93 e5                                      ldr r3, [r3]
006f6f2c  03 00 52 e1                                      cmp r2, r3
006f6f30  06 00 00 1a                                      bne #0x6f6f50
006f6f34  40 d0 8d e2                                      add sp, sp, #0x40
006f6f38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006f6f3c  05 10 a0 e1                                      mov r1, r5
006f6f40  a6 5d f0 eb                                      bl #0x30e5e0
006f6f44  00 00 50 e3                                      cmp r0, #0
006f6f48  e8 ff ff 0a                                      beq #0x6f6ef0
006f6f4c  d5 ff ff ea                                      b #0x6f6ea8
006f6f50  ee 5c f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006f6f54  e8 dc 29 00 ac 40 00 00 64 45 1f 00 64 ae 1f 00  .byte 0xe8, 0xdc, 0x29, 0x00, 0xac, 0x40, 0x00, 0x00, 0x64, 0x45, 0x1f, 0x00, 0x64, 0xae, 0x1f, 0x00
006f6f64  50 ae 1f 00                                      .byte 0x50, 0xae, 0x1f, 0x00

; FUNCTION 0x006f71cc, declared_size=240, range_size=240, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode5cloneEv
; demangled: glitch::scene::CAnimatedMeshSceneNode::clone()
; decoder-mode: arm
006f71cc  30 40 2d e9                                      push {r4, r5, lr}
006f71d0  00 10 a0 e3                                      mov r1, #0
006f71d4  00 40 a0 e1                                      mov r4, r0
006f71d8  0c d0 4d e2                                      sub sp, sp, #0xc
006f71dc  5f 0f a0 e3                                      mov r0, #0x17c
006f71e0  f1 f3 f8 eb                                      bl #0x5341ac
006f71e4  0c 21 94 e5                                      ldr r2, [r4, #0x10c]
006f71e8  00 50 a0 e1                                      mov r5, r0
006f71ec  ac 30 84 e2                                      add r3, r4, #0xac
006f71f0  b8 e0 84 e2                                      add lr, r4, #0xb8
006f71f4  c8 c0 84 e2                                      add ip, r4, #0xc8
006f71f8  13 1e 84 e2                                      add r1, r4, #0x130
006f71fc  00 e0 8d e5                                      str lr, [sp]
006f7200  04 c0 8d e5                                      str ip, [sp, #4]
006f7204  5c fe ff eb                                      bl #0x6f6b7c
006f7208  05 00 a0 e1                                      mov r0, r5
006f720c  04 10 a0 e1                                      mov r1, r4
006f7210  ed 82 fa eb                                      bl #0x597dcc
006f7214  30 31 94 e5                                      ldr r3, [r4, #0x130]
006f7218  00 00 53 e3                                      cmp r3, #0
006f721c  04 20 93 15                                      ldrne r2, [r3, #4]
006f7220  01 20 82 12                                      addne r2, r2, #1
006f7224  04 20 83 15                                      strne r2, [r3, #4]
006f7228  30 01 95 e5                                      ldr r0, [r5, #0x130]
006f722c  30 31 85 e5                                      str r3, [r5, #0x130]
006f7230  00 00 50 e3                                      cmp r0, #0
006f7234  00 00 00 0a                                      beq #0x6f723c
006f7238  d1 98 f0 eb                                      bl #0x31d584
006f723c  34 31 94 e5                                      ldr r3, [r4, #0x134]
006f7240  59 0f 85 e2                                      add r0, r5, #0x164
006f7244  59 1f 84 e2                                      add r1, r4, #0x164
006f7248  34 31 85 e5                                      str r3, [r5, #0x134]
006f724c  38 31 94 e5                                      ldr r3, [r4, #0x138]
006f7250  38 31 85 e5                                      str r3, [r5, #0x138]
006f7254  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
006f7258  3c 31 85 e5                                      str r3, [r5, #0x13c]
006f725c  40 31 94 e5                                      ldr r3, [r4, #0x140]
006f7260  40 31 85 e5                                      str r3, [r5, #0x140]
006f7264  44 31 94 e5                                      ldr r3, [r4, #0x144]
006f7268  44 31 85 e5                                      str r3, [r5, #0x144]
006f726c  48 31 94 e5                                      ldr r3, [r4, #0x148]
006f7270  48 31 85 e5                                      str r3, [r5, #0x148]
006f7274  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
006f7278  4c 31 85 e5                                      str r3, [r5, #0x14c]
006f727c  50 31 94 e5                                      ldr r3, [r4, #0x150]
006f7280  50 31 85 e5                                      str r3, [r5, #0x150]
006f7284  54 31 d4 e5                                      ldrb r3, [r4, #0x154]
006f7288  54 31 c5 e5                                      strb r3, [r5, #0x154]
006f728c  58 31 94 e5                                      ldr r3, [r4, #0x158]
006f7290  58 31 85 e5                                      str r3, [r5, #0x158]
006f7294  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
006f7298  5c 31 85 e5                                      str r3, [r5, #0x15c]
006f729c  60 31 94 e5                                      ldr r3, [r4, #0x160]
006f72a0  60 31 85 e5                                      str r3, [r5, #0x160]
006f72a4  56 ff ff eb                                      bl #0x6f7004
006f72a8  70 31 d4 e5                                      ldrb r3, [r4, #0x170]
006f72ac  05 00 a0 e1                                      mov r0, r5
006f72b0  70 31 c5 e5                                      strb r3, [r5, #0x170]
006f72b4  0c d0 8d e2                                      add sp, sp, #0xc
006f72b8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006f7330, declared_size=832, range_size=832, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22CAnimatedMeshSceneNode6renderEPv
; demangled: glitch::scene::CAnimatedMeshSceneNode::render(void*)
; decoder-mode: arm
006f7330  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006f7334  30 21 90 e5                                      ldr r2, [r0, #0x130]
006f7338  10 31 90 e5                                      ldr r3, [r0, #0x110]
006f733c  84 d0 4d e2                                      sub sp, sp, #0x84
006f7340  00 00 52 e3                                      cmp r2, #0
006f7344  00 40 a0 e1                                      mov r4, r0
006f7348  14 50 93 e5                                      ldr r5, [r3, #0x14]
006f734c  5a 00 00 0a                                      beq #0x6f74bc
006f7350  00 00 55 e3                                      cmp r5, #0
006f7354  58 00 00 0a                                      beq #0x6f74bc
006f7358  5c 21 90 e5                                      ldr r2, [r0, #0x15c]
006f735c  74 61 93 e5                                      ldr r6, [r3, #0x174]
006f7360  00 30 90 e5                                      ldr r3, [r0]
006f7364  01 20 82 e2                                      add r2, r2, #1
006f7368  5c 21 80 e5                                      str r2, [r0, #0x15c]
006f736c  0f e0 a0 e1                                      mov lr, pc
006f7370  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006f7374  54 5c f0 eb                                      bl #0x30e4cc
006f7378  30 71 94 e5                                      ldr r7, [r4, #0x130]
006f737c  38 e1 94 e5                                      ldr lr, [r4, #0x138]
006f7380  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
006f7384  00 c0 97 e5                                      ldr ip, [r7]
006f7388  00 20 a0 e1                                      mov r2, r0
006f738c  07 10 a0 e1                                      mov r1, r7
006f7390  7c 00 8d e2                                      add r0, sp, #0x7c
006f7394  00 e0 8d e5                                      str lr, [sp]
006f7398  04 30 8d e5                                      str r3, [sp, #4]
006f739c  ff 30 a0 e3                                      mov r3, #0xff
006f73a0  0f e0 a0 e1                                      mov lr, pc
006f73a4  34 f0 9c e5                                      ldr pc, [ip, #0x34]
006f73a8  00 30 95 e5                                      ldr r3, [r5]
006f73ac  05 00 a0 e1                                      mov r0, r5
006f73b0  01 10 a0 e3                                      mov r1, #1
006f73b4  24 20 84 e2                                      add r2, r4, #0x24
006f73b8  0f e0 a0 e1                                      mov lr, pc
006f73bc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006f73c0  60 31 94 e5                                      ldr r3, [r4, #0x160]
006f73c4  08 00 56 e3                                      cmp r6, #8
006f73c8  00 60 a0 13                                      movne r6, #0
006f73cc  01 60 a0 03                                      moveq r6, #1
006f73d0  00 00 53 e3                                      cmp r3, #0
006f73d4  02 00 00 0a                                      beq #0x6f73e4
006f73d8  5c 21 94 e5                                      ldr r2, [r4, #0x15c]
006f73dc  01 00 52 e3                                      cmp r2, #1
006f73e0  9d 00 00 0a                                      beq #0x6f765c
006f73e4  6c 30 8d e2                                      add r3, sp, #0x6c
006f73e8  10 30 8d e5                                      str r3, [sp, #0x10]
006f73ec  74 20 8d e2                                      add r2, sp, #0x74
006f73f0  64 30 8d e2                                      add r3, sp, #0x64
006f73f4  0c 20 8d e5                                      str r2, [sp, #0xc]
006f73f8  18 30 8d e5                                      str r3, [sp, #0x18]
006f73fc  68 20 8d e2                                      add r2, sp, #0x68
006f7400  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006f7404  14 20 8d e5                                      str r2, [sp, #0x14]
006f7408  20 20 8d e2                                      add r2, sp, #0x20
006f740c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006f7410  03 00 a0 e1                                      mov r0, r3
006f7414  00 30 93 e5                                      ldr r3, [r3]
006f7418  0f e0 a0 e1                                      mov lr, pc
006f741c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006f7420  00 70 a0 e3                                      mov r7, #0
006f7424  00 00 57 e1                                      cmp r7, r0
006f7428  78 80 8d e2                                      add r8, sp, #0x78
006f742c  0c 90 a0 e3                                      mov sb, #0xc
006f7430  70 b0 8d e2                                      add fp, sp, #0x70
006f7434  05 a0 a0 e1                                      mov sl, r5
006f7438  1b 00 00 2a                                      bhs #0x6f74ac
006f743c  30 31 94 e5                                      ldr r3, [r4, #0x130]
006f7440  07 20 a0 e1                                      mov r2, r7
006f7444  08 00 a0 e1                                      mov r0, r8
006f7448  03 10 a0 e1                                      mov r1, r3
006f744c  00 30 93 e5                                      ldr r3, [r3]
006f7450  0f e0 a0 e1                                      mov lr, pc
006f7454  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006f7458  78 50 9d e5                                      ldr r5, [sp, #0x78]
006f745c  05 00 a0 e1                                      mov r0, r5
006f7460  33 3a fb eb                                      bl #0x5c5d34
006f7464  04 30 95 e5                                      ldr r3, [r5, #4]
006f7468  18 30 93 e5                                      ldr r3, [r3, #0x18]
006f746c  99 30 23 e0                                      mla r3, sb, r0, r3
006f7470  08 00 a0 e1                                      mov r0, r8
006f7474  08 30 93 e5                                      ldr r3, [r3, #8]
006f7478  04 50 93 e5                                      ldr r5, [r3, #4]
006f747c  d9 65 f0 eb                                      bl #0x310be8
006f7480  55 58 e0 e7                                      ubfx r5, r5, #0x10, #1
006f7484  05 00 56 e1                                      cmp r6, r5
006f7488  0d 00 00 0a                                      beq #0x6f74c4
006f748c  01 70 87 e2                                      add r7, r7, #1
006f7490  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006f7494  03 00 a0 e1                                      mov r0, r3
006f7498  00 30 93 e5                                      ldr r3, [r3]
006f749c  0f e0 a0 e1                                      mov lr, pc
006f74a0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006f74a4  00 00 57 e1                                      cmp r7, r0
006f74a8  e3 ff ff 3a                                      blo #0x6f743c
006f74ac  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006f74b0  00 00 50 e3                                      cmp r0, #0
006f74b4  00 00 00 0a                                      beq #0x6f74bc
006f74b8  31 98 f0 eb                                      bl #0x31d584
006f74bc  84 d0 8d e2                                      add sp, sp, #0x84
006f74c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006f74c4  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006f74c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006f74cc  07 20 a0 e1                                      mov r2, r7
006f74d0  03 10 a0 e1                                      mov r1, r3
006f74d4  00 30 93 e5                                      ldr r3, [r3]
006f74d8  0f e0 a0 e1                                      mov lr, pc
006f74dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006f74e0  74 50 9d e5                                      ldr r5, [sp, #0x74]
006f74e4  00 00 55 e3                                      cmp r5, #0
006f74e8  01 00 00 0a                                      beq #0x6f74f4
006f74ec  05 00 a0 e1                                      mov r0, r5
006f74f0  23 98 f0 eb                                      bl #0x31d584
006f74f4  70 31 d4 e5                                      ldrb r3, [r4, #0x170]
006f74f8  00 00 53 e3                                      cmp r3, #0
006f74fc  43 00 00 1a                                      bne #0x6f7610
006f7500  30 31 94 e5                                      ldr r3, [r4, #0x130]
006f7504  0b 00 a0 e1                                      mov r0, fp
006f7508  07 20 a0 e1                                      mov r2, r7
006f750c  03 10 a0 e1                                      mov r1, r3
006f7510  00 30 93 e5                                      ldr r3, [r3]
006f7514  0f e0 a0 e1                                      mov lr, pc
006f7518  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006f751c  30 31 94 e5                                      ldr r3, [r4, #0x130]
006f7520  07 20 a0 e1                                      mov r2, r7
006f7524  10 00 9d e5                                      ldr r0, [sp, #0x10]
006f7528  03 10 a0 e1                                      mov r1, r3
006f752c  00 30 93 e5                                      ldr r3, [r3]
006f7530  0f e0 a0 e1                                      mov lr, pc
006f7534  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006f7538  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006f753c  0a 00 a0 e1                                      mov r0, sl
006f7540  0b 10 a0 e1                                      mov r1, fp
006f7544  00 00 53 e3                                      cmp r3, #0
006f7548  68 30 8d e5                                      str r3, [sp, #0x68]
006f754c  00 20 93 15                                      ldrne r2, [r3]
006f7550  01 20 82 12                                      addne r2, r2, #1
006f7554  00 20 83 15                                      strne r2, [r3]
006f7558  14 20 9d e5                                      ldr r2, [sp, #0x14]
006f755c  6b 9d f1 eb                                      bl #0x35eb10
006f7560  68 30 9d e5                                      ldr r3, [sp, #0x68]
006f7564  00 00 53 e3                                      cmp r3, #0
006f7568  0a 00 00 0a                                      beq #0x6f7598
006f756c  00 20 93 e5                                      ldr r2, [r3]
006f7570  01 20 42 e2                                      sub r2, r2, #1
006f7574  00 00 52 e3                                      cmp r2, #0
006f7578  00 20 83 e5                                      str r2, [r3]
006f757c  05 00 00 1a                                      bne #0x6f7598
006f7580  03 00 a0 e1                                      mov r0, r3
006f7584  08 30 8d e5                                      str r3, [sp, #8]
006f7588  71 a0 fb eb                                      bl #0x5df754
006f758c  08 30 9d e5                                      ldr r3, [sp, #8]
006f7590  03 00 a0 e1                                      mov r0, r3
006f7594  45 5b f0 eb                                      bl #0x30e2b0
006f7598  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006f759c  00 00 53 e3                                      cmp r3, #0
006f75a0  0a 00 00 0a                                      beq #0x6f75d0
006f75a4  00 20 93 e5                                      ldr r2, [r3]
006f75a8  01 20 42 e2                                      sub r2, r2, #1
006f75ac  00 00 52 e3                                      cmp r2, #0
006f75b0  00 20 83 e5                                      str r2, [r3]
006f75b4  05 00 00 1a                                      bne #0x6f75d0
006f75b8  03 00 a0 e1                                      mov r0, r3
006f75bc  08 30 8d e5                                      str r3, [sp, #8]
006f75c0  63 a0 fb eb                                      bl #0x5df754
006f75c4  08 30 9d e5                                      ldr r3, [sp, #8]
006f75c8  03 00 a0 e1                                      mov r0, r3
006f75cc  37 5b f0 eb                                      bl #0x30e2b0
006f75d0  0b 00 a0 e1                                      mov r0, fp
006f75d4  83 65 f0 eb                                      bl #0x310be8
006f75d8  00 00 55 e3                                      cmp r5, #0
006f75dc  64 50 8d e5                                      str r5, [sp, #0x64]
006f75e0  04 30 95 15                                      ldrne r3, [r5, #4]
006f75e4  0a 00 a0 e1                                      mov r0, sl
006f75e8  01 30 83 12                                      addne r3, r3, #1
006f75ec  04 30 85 15                                      strne r3, [r5, #4]
006f75f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006f75f4  75 9d f1 eb                                      bl #0x35ebd0
006f75f8  64 00 9d e5                                      ldr r0, [sp, #0x64]
006f75fc  00 00 50 e3                                      cmp r0, #0
006f7600  a1 ff ff 0a                                      beq #0x6f748c
006f7604  de 97 f0 eb                                      bl #0x31d584
006f7608  01 70 87 e2                                      add r7, r7, #1
006f760c  9f ff ff ea                                      b #0x6f7490
006f7610  00 30 9a e5                                      ldr r3, [sl]
006f7614  00 10 a0 e3                                      mov r1, #0
006f7618  40 20 a0 e3                                      mov r2, #0x40
006f761c  6c 30 93 e5                                      ldr r3, [r3, #0x6c]
006f7620  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006f7624  08 30 8d e5                                      str r3, [sp, #8]
006f7628  8c 5b f0 eb                                      bl #0x30e460
006f762c  fe 25 a0 e3                                      mov r2, #0x3f800000
006f7630  01 10 a0 e3                                      mov r1, #1
006f7634  20 20 8d e5                                      str r2, [sp, #0x20]
006f7638  34 20 8d e5                                      str r2, [sp, #0x34]
006f763c  48 20 8d e5                                      str r2, [sp, #0x48]
006f7640  5c 20 8d e5                                      str r2, [sp, #0x5c]
006f7644  60 10 cd e5                                      strb r1, [sp, #0x60]
006f7648  0a 00 a0 e1                                      mov r0, sl
006f764c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006f7650  08 30 9d e5                                      ldr r3, [sp, #8]
006f7654  33 ff 2f e1                                      blx r3
006f7658  a8 ff ff ea                                      b #0x6f7500
006f765c  03 00 a0 e1                                      mov r0, r3
006f7660  00 30 93 e5                                      ldr r3, [r3]
006f7664  0f e0 a0 e1                                      mov lr, pc
006f7668  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
006f766c  5c ff ff ea                                      b #0x6f73e4

; FUNCTION 0x006f7670, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZTv0_n20_N6glitch5scene22CAnimatedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CAnimatedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006f7670  00 30 90 e5                                      ldr r3, [r0]
006f7674  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006f7678  03 00 80 e0                                      add r0, r0, r3
006f767c  c5 fd ff ea                                      b #0x6f6d98

; FUNCTION 0x006f7680, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene22CAnimatedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f7680  00 30 90 e5                                      ldr r3, [r0]
006f7684  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f7688  03 00 80 e0                                      add r0, r0, r3
006f768c  12 fc ff ea                                      b #0x6f66dc

; FUNCTION 0x006f7690, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene22CAnimatedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f7690  00 30 90 e5                                      ldr r3, [r0]
006f7694  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f7698  03 00 80 e0                                      add r0, r0, r3
006f769c  0e fc ff ea                                      b #0x6f66dc

; FUNCTION 0x006f76a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene22CAnimatedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f76a0  00 30 90 e5                                      ldr r3, [r0]
006f76a4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f76a8  03 00 80 e0                                      add r0, r0, r3
006f76ac  d9 fb ff ea                                      b #0x6f6618

; FUNCTION 0x006f76b0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene22CAnimatedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode()
; decoder-mode: arm
006f76b0  00 30 90 e5                                      ldr r3, [r0]
006f76b4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f76b8  03 00 80 e0                                      add r0, r0, r3
006f76bc  d5 fb ff ea                                      b #0x6f6618

; FUNCTION 0x006f76c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CAnimatedMeshSceneNode
; alias: _ZTv0_n16_NK6glitch5scene22CAnimatedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CAnimatedMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006f76c0  00 30 90 e5                                      ldr r3, [r0]
006f76c4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006f76c8  03 00 80 e0                                      add r0, r0, r3
006f76cc  69 fb ff ea                                      b #0x6f6478
