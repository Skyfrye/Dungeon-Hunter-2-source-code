; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065b2e0, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNode6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::CCameraSceneNode::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0065b2e0  70 40 2d e9                                      push {r4, r5, r6, lr}
0065b2e4  94 33 90 e5                                      ldr r3, [r0, #0x394]
0065b2e8  00 40 a0 e1                                      mov r4, r0
0065b2ec  18 30 93 e5                                      ldr r3, [r3, #0x18]
0065b2f0  d0 20 d3 e1                                      ldrsb r2, [r3]
0065b2f4  00 00 52 e3                                      cmp r2, #0
0065b2f8  00 00 00 1a                                      bne #0x65b300
0065b2fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0065b300  01 00 a0 e1                                      mov r0, r1
0065b304  01 10 83 e2                                      add r1, r3, #1
0065b308  b5 f4 fc eb                                      bl #0x5985e4
0065b30c  00 50 50 e2                                      subs r5, r0, #0
0065b310  05 00 00 0a                                      beq #0x65b32c
0065b314  00 30 95 e5                                      ldr r3, [r5]
0065b318  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065b31c  03 30 85 e0                                      add r3, r5, r3
0065b320  04 20 93 e5                                      ldr r2, [r3, #4]
0065b324  01 20 82 e2                                      add r2, r2, #1
0065b328  04 20 83 e5                                      str r2, [r3, #4]
0065b32c  90 33 94 e5                                      ldr r3, [r4, #0x390]
0065b330  00 00 53 e3                                      cmp r3, #0
0065b334  03 00 00 0a                                      beq #0x65b348
0065b338  00 20 93 e5                                      ldr r2, [r3]
0065b33c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0065b340  00 00 83 e0                                      add r0, r3, r0
0065b344  8e 08 f3 eb                                      bl #0x31d584
0065b348  90 53 84 e5                                      str r5, [r4, #0x390]
0065b34c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006e5160, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZNK6glitch7collada16CCameraSceneNode13getTargetNodeEv
; demangled: glitch::collada::CCameraSceneNode::getTargetNode() const
; decoder-mode: arm
006e5160  90 03 90 e5                                      ldr r0, [r0, #0x390]
006e5164  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e5168, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZNK6glitch7collada16CCameraSceneNode7getTypeEv
; demangled: glitch::collada::CCameraSceneNode::getType() const
; decoder-mode: arm
006e5168  64 01 06 e3                                      movw r0, #0x6164
006e516c  65 03 46 e3                                      movt r0, #0x6365
006e5170  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e5174, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZNK6glitch7collada16CCameraSceneNode6getUIDEv
; demangled: glitch::collada::CCameraSceneNode::getUID() const
; decoder-mode: arm
006e5174  94 33 90 e5                                      ldr r3, [r0, #0x394]
006e5178  00 00 93 e5                                      ldr r0, [r3]
006e517c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e5238, declared_size=472, range_size=472, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNode19onRegisterSceneNodeEv
; demangled: glitch::collada::CCameraSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006e5238  70 40 2d e9                                      push {r4, r5, r6, lr}
006e523c  90 13 90 e5                                      ldr r1, [r0, #0x390]
006e5240  28 d0 4d e2                                      sub sp, sp, #0x28
006e5244  00 40 a0 e1                                      mov r4, r0
006e5248  00 00 51 e3                                      cmp r1, #0
006e524c  2b 00 00 0a                                      beq #0x6e5300
006e5250  1c 00 8d e2                                      add r0, sp, #0x1c
006e5254  c9 c7 fa eb                                      bl #0x597180
006e5258  20 20 9d e5                                      ldr r2, [sp, #0x20]
006e525c  24 30 9d e5                                      ldr r3, [sp, #0x24]
006e5260  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006e5264  04 00 a0 e1                                      mov r0, r4
006e5268  3c 21 84 e5                                      str r2, [r4, #0x13c]
006e526c  38 11 84 e5                                      str r1, [r4, #0x138]
006e5270  40 31 84 e5                                      str r3, [r4, #0x140]
006e5274  00 10 a0 e3                                      mov r1, #0
006e5278  00 30 94 e5                                      ldr r3, [r4]
006e527c  0f e0 a0 e1                                      mov lr, pc
006e5280  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
006e5284  10 00 8d e2                                      add r0, sp, #0x10
006e5288  04 10 a0 e1                                      mov r1, r4
006e528c  bb c7 fa eb                                      bl #0x597180
006e5290  10 10 9d e5                                      ldr r1, [sp, #0x10]
006e5294  38 01 94 e5                                      ldr r0, [r4, #0x138]
006e5298  43 a4 f0 eb                                      bl #0x30e3ac
006e529c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006e52a0  00 60 a0 e1                                      mov r6, r0
006e52a4  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
006e52a8  3f a4 f0 eb                                      bl #0x30e3ac
006e52ac  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e52b0  00 50 a0 e1                                      mov r5, r0
006e52b4  40 01 94 e5                                      ldr r0, [r4, #0x140]
006e52b8  3b a4 f0 eb                                      bl #0x30e3ac
006e52bc  06 10 a0 e1                                      mov r1, r6
006e52c0  00 30 a0 e1                                      mov r3, r0
006e52c4  05 20 a0 e1                                      mov r2, r5
006e52c8  0d 00 a0 e1                                      mov r0, sp
006e52cc  c1 dd f1 eb                                      bl #0x35c9d8
006e52d0  04 10 9d e5                                      ldr r1, [sp, #4]
006e52d4  08 20 9d e5                                      ldr r2, [sp, #8]
006e52d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006e52dc  00 00 9d e5                                      ldr r0, [sp]
006e52e0  bc 10 84 e5                                      str r1, [r4, #0xbc]
006e52e4  c0 20 84 e5                                      str r2, [r4, #0xc0]
006e52e8  b8 00 84 e5                                      str r0, [r4, #0xb8]
006e52ec  c4 30 84 e5                                      str r3, [r4, #0xc4]
006e52f0  04 00 a0 e1                                      mov r0, r4
006e52f4  8e 78 fa eb                                      bl #0x583534
006e52f8  28 d0 8d e2                                      add sp, sp, #0x28
006e52fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e5300  00 30 90 e5                                      ldr r3, [r0]
006e5304  0f e0 a0 e1                                      mov lr, pc
006e5308  38 f0 93 e5                                      ldr pc, [r3, #0x38]
006e530c  00 10 a0 e3                                      mov r1, #0
006e5310  00 50 a0 e1                                      mov r5, r0
006e5314  00 00 90 e5                                      ldr r0, [r0]
006e5318  93 a6 f0 eb                                      bl #0x30ed6c
006e531c  00 10 a0 e3                                      mov r1, #0
006e5320  00 60 a0 e1                                      mov r6, r0
006e5324  10 00 95 e5                                      ldr r0, [r5, #0x10]
006e5328  8f a6 f0 eb                                      bl #0x30ed6c
006e532c  00 10 a0 e1                                      mov r1, r0
006e5330  06 00 a0 e1                                      mov r0, r6
006e5334  1a a6 f0 eb                                      bl #0x30eba4
006e5338  c2 14 a0 e3                                      mov r1, #0xc2000000
006e533c  00 60 a0 e1                                      mov r6, r0
006e5340  32 17 81 e2                                      add r1, r1, #0xc80000
006e5344  20 00 95 e5                                      ldr r0, [r5, #0x20]
006e5348  87 a6 f0 eb                                      bl #0x30ed6c
006e534c  00 10 a0 e1                                      mov r1, r0
006e5350  06 00 a0 e1                                      mov r0, r6
006e5354  12 a6 f0 eb                                      bl #0x30eba4
006e5358  30 10 95 e5                                      ldr r1, [r5, #0x30]
006e535c  10 a6 f0 eb                                      bl #0x30eba4
006e5360  38 01 84 e5                                      str r0, [r4, #0x138]
006e5364  04 00 95 e5                                      ldr r0, [r5, #4]
006e5368  00 10 a0 e3                                      mov r1, #0
006e536c  7e a6 f0 eb                                      bl #0x30ed6c
006e5370  00 10 a0 e3                                      mov r1, #0
006e5374  00 60 a0 e1                                      mov r6, r0
006e5378  14 00 95 e5                                      ldr r0, [r5, #0x14]
006e537c  7a a6 f0 eb                                      bl #0x30ed6c
006e5380  00 10 a0 e1                                      mov r1, r0
006e5384  06 00 a0 e1                                      mov r0, r6
006e5388  05 a6 f0 eb                                      bl #0x30eba4
006e538c  c2 14 a0 e3                                      mov r1, #0xc2000000
006e5390  00 60 a0 e1                                      mov r6, r0
006e5394  32 17 81 e2                                      add r1, r1, #0xc80000
006e5398  24 00 95 e5                                      ldr r0, [r5, #0x24]
006e539c  72 a6 f0 eb                                      bl #0x30ed6c
006e53a0  00 10 a0 e1                                      mov r1, r0
006e53a4  06 00 a0 e1                                      mov r0, r6
006e53a8  fd a5 f0 eb                                      bl #0x30eba4
006e53ac  34 10 95 e5                                      ldr r1, [r5, #0x34]
006e53b0  fb a5 f0 eb                                      bl #0x30eba4
006e53b4  3c 01 84 e5                                      str r0, [r4, #0x13c]
006e53b8  08 00 95 e5                                      ldr r0, [r5, #8]
006e53bc  00 10 a0 e3                                      mov r1, #0
006e53c0  69 a6 f0 eb                                      bl #0x30ed6c
006e53c4  00 10 a0 e3                                      mov r1, #0
006e53c8  00 60 a0 e1                                      mov r6, r0
006e53cc  18 00 95 e5                                      ldr r0, [r5, #0x18]
006e53d0  65 a6 f0 eb                                      bl #0x30ed6c
006e53d4  00 10 a0 e1                                      mov r1, r0
006e53d8  06 00 a0 e1                                      mov r0, r6
006e53dc  f0 a5 f0 eb                                      bl #0x30eba4
006e53e0  c2 14 a0 e3                                      mov r1, #0xc2000000
006e53e4  00 60 a0 e1                                      mov r6, r0
006e53e8  32 17 81 e2                                      add r1, r1, #0xc80000
006e53ec  28 00 95 e5                                      ldr r0, [r5, #0x28]
006e53f0  5d a6 f0 eb                                      bl #0x30ed6c
006e53f4  00 10 a0 e1                                      mov r1, r0
006e53f8  06 00 a0 e1                                      mov r0, r6
006e53fc  e8 a5 f0 eb                                      bl #0x30eba4
006e5400  38 10 95 e5                                      ldr r1, [r5, #0x38]
006e5404  e6 a5 f0 eb                                      bl #0x30eba4
006e5408  40 01 84 e5                                      str r0, [r4, #0x140]
006e540c  b7 ff ff ea                                      b #0x6e52f0

; FUNCTION 0x006e5410, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZThn304_N6glitch7collada16CCameraSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e5410  13 0e 40 e2                                      sub r0, r0, #0x130
006e5414  ff ff ff ea                                      b #0x6e5418

; FUNCTION 0x006e5418, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNodeD1Ev
; demangled: glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e5418  70 40 2d e9                                      push {r4, r5, r6, lr}
006e541c  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
006e5420  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
006e5424  90 23 90 e5                                      ldr r2, [r0, #0x390]
006e5428  05 50 8f e0                                      add r5, pc, r5
006e542c  03 30 95 e7                                      ldr r3, [r5, r3]
006e5430  00 40 a0 e1                                      mov r4, r0
006e5434  00 00 52 e3                                      cmp r2, #0
006e5438  06 1d 83 e2                                      add r1, r3, #0x180
006e543c  1c 00 83 e2                                      add r0, r3, #0x1c
006e5440  67 3f 83 e2                                      add r3, r3, #0x19c
006e5444  00 00 84 e5                                      str r0, [r4]
006e5448  98 33 84 e5                                      str r3, [r4, #0x398]
006e544c  30 11 84 e5                                      str r1, [r4, #0x130]
006e5450  03 00 00 0a                                      beq #0x6e5464
006e5454  00 30 92 e5                                      ldr r3, [r2]
006e5458  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006e545c  00 00 82 e0                                      add r0, r2, r0
006e5460  47 e0 f0 eb                                      bl #0x31d584
006e5464  00 30 a0 e3                                      mov r3, #0
006e5468  90 33 84 e5                                      str r3, [r4, #0x390]
006e546c  e2 0f 84 e2                                      add r0, r4, #0x388
006e5470  ff cf fc eb                                      bl #0x619474
006e5474  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
006e5478  04 00 a0 e1                                      mov r0, r4
006e547c  01 10 95 e7                                      ldr r1, [r5, r1]
006e5480  04 10 81 e2                                      add r1, r1, #4
006e5484  45 ff ff eb                                      bl #0x6e51a0
006e5488  04 00 a0 e1                                      mov r0, r4
006e548c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e5490  68 f6 2a 00 dc 13 00 00 88 14 00 00              .byte 0x68, 0xf6, 0x2a, 0x00, 0xdc, 0x13, 0x00, 0x00, 0x88, 0x14, 0x00, 0x00

; FUNCTION 0x006e549c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZThn304_N6glitch7collada16CCameraSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e549c  13 0e 40 e2                                      sub r0, r0, #0x130
006e54a0  ff ff ff ea                                      b #0x6e54a4

; FUNCTION 0x006e54a4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNodeD0Ev
; demangled: glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e54a4  10 40 2d e9                                      push {r4, lr}
006e54a8  00 40 a0 e1                                      mov r4, r0
006e54ac  d9 ff ff eb                                      bl #0x6e5418
006e54b0  04 00 a0 e1                                      mov r0, r4
006e54b4  7d a3 f0 eb                                      bl #0x30e2b0
006e54b8  04 00 a0 e1                                      mov r0, r4
006e54bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e54c0, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNodeD2Ev
; demangled: glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e54c0  70 40 2d e9                                      push {r4, r5, r6, lr}
006e54c4  00 30 91 e5                                      ldr r3, [r1]
006e54c8  01 50 a0 e1                                      mov r5, r1
006e54cc  00 40 a0 e1                                      mov r4, r0
006e54d0  00 30 80 e5                                      str r3, [r0]
006e54d4  1c 10 13 e5                                      ldr r1, [r3, #-0x1c]
006e54d8  28 00 95 e5                                      ldr r0, [r5, #0x28]
006e54dc  64 20 9f e5                                      ldr r2, [pc, #0x64]
006e54e0  64 30 9f e5                                      ldr r3, [pc, #0x64]
006e54e4  01 00 84 e7                                      str r0, [r4, r1]
006e54e8  00 10 94 e5                                      ldr r1, [r4]
006e54ec  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
006e54f0  02 20 8f e0                                      add r2, pc, r2
006e54f4  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
006e54f8  03 30 92 e7                                      ldr r3, [r2, r3]
006e54fc  01 00 84 e7                                      str r0, [r4, r1]
006e5500  90 23 94 e5                                      ldr r2, [r4, #0x390]
006e5504  06 3d 83 e2                                      add r3, r3, #0x180
006e5508  30 31 84 e5                                      str r3, [r4, #0x130]
006e550c  00 00 52 e3                                      cmp r2, #0
006e5510  03 00 00 0a                                      beq #0x6e5524
006e5514  00 30 92 e5                                      ldr r3, [r2]
006e5518  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
006e551c  00 00 82 e0                                      add r0, r2, r0
006e5520  17 e0 f0 eb                                      bl #0x31d584
006e5524  00 30 a0 e3                                      mov r3, #0
006e5528  90 33 84 e5                                      str r3, [r4, #0x390]
006e552c  e2 0f 84 e2                                      add r0, r4, #0x388
006e5530  cf cf fc eb                                      bl #0x619474
006e5534  04 00 a0 e1                                      mov r0, r4
006e5538  04 10 85 e2                                      add r1, r5, #4
006e553c  17 ff ff eb                                      bl #0x6e51a0
006e5540  04 00 a0 e1                                      mov r0, r4
006e5544  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e5548  a0 f5 2a 00 dc 13 00 00                          .byte 0xa0, 0xf5, 0x2a, 0x00, 0xdc, 0x13, 0x00, 0x00

; FUNCTION 0x006e5550, declared_size=608, range_size=608, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_7SCameraE
; demangled: glitch::collada::CCameraSceneNode::CCameraSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SCamera&)
; decoder-mode: arm
006e5550  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e5554  40 52 9f e5                                      ldr r5, [pc, #0x240]
006e5558  40 32 9f e5                                      ldr r3, [pc, #0x240]
006e555c  40 c2 9f e5                                      ldr ip, [pc, #0x240]
006e5560  05 50 8f e0                                      add r5, pc, r5
006e5564  03 30 95 e7                                      ldr r3, [r5, r3]
006e5568  0c c0 95 e7                                      ldr ip, [r5, ip]
006e556c  01 60 a0 e3                                      mov r6, #1
006e5570  30 e0 93 e5                                      ldr lr, [r3, #0x30]
006e5574  08 c0 8c e2                                      add ip, ip, #8
006e5578  9c 63 80 e5                                      str r6, [r0, #0x39c]
006e557c  98 c3 80 e5                                      str ip, [r0, #0x398]
006e5580  00 e0 80 e5                                      str lr, [r0]
006e5584  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
006e5588  34 60 93 e5                                      ldr r6, [r3, #0x34]
006e558c  4c d0 4d e2                                      sub sp, sp, #0x4c
006e5590  00 c0 a0 e3                                      mov ip, #0
006e5594  0e 60 80 e7                                      str r6, [r0, lr]
006e5598  42 e4 a0 e3                                      mov lr, #0x42000000
006e559c  32 e7 8e e2                                      add lr, lr, #0xc80000
006e55a0  38 e0 8d e5                                      str lr, [sp, #0x38]
006e55a4  30 e0 8d e2                                      add lr, sp, #0x30
006e55a8  01 70 a0 e1                                      mov r7, r1
006e55ac  00 e0 8d e5                                      str lr, [sp]
006e55b0  04 10 83 e2                                      add r1, r3, #4
006e55b4  00 e0 a0 e3                                      mov lr, #0
006e55b8  3c 30 8d e2                                      add r3, sp, #0x3c
006e55bc  02 60 a0 e1                                      mov r6, r2
006e55c0  00 20 e0 e3                                      mvn r2, #0
006e55c4  00 40 a0 e1                                      mov r4, r0
006e55c8  34 c0 8d e5                                      str ip, [sp, #0x34]
006e55cc  04 e0 8d e5                                      str lr, [sp, #4]
006e55d0  3c c0 8d e5                                      str ip, [sp, #0x3c]
006e55d4  40 c0 8d e5                                      str ip, [sp, #0x40]
006e55d8  44 c0 8d e5                                      str ip, [sp, #0x44]
006e55dc  30 c0 8d e5                                      str ip, [sp, #0x30]
006e55e0  a4 78 fa eb                                      bl #0x583878
006e55e4  00 30 97 e5                                      ldr r3, [r7]
006e55e8  88 33 84 e5                                      str r3, [r4, #0x388]
006e55ec  04 20 97 e5                                      ldr r2, [r7, #4]
006e55f0  00 00 53 e3                                      cmp r3, #0
006e55f4  8c 23 84 e5                                      str r2, [r4, #0x38c]
006e55f8  03 00 00 0a                                      beq #0x6e560c
006e55fc  04 20 93 e5                                      ldr r2, [r3, #4]
006e5600  00 00 52 e3                                      cmp r2, #0
006e5604  01 20 82 12                                      addne r2, r2, #1
006e5608  04 20 83 15                                      strne r2, [r3, #4]
006e560c  94 21 9f e5                                      ldr r2, [pc, #0x194]
006e5610  94 31 9f e5                                      ldr r3, [pc, #0x194]
006e5614  00 10 a0 e3                                      mov r1, #0
006e5618  02 20 95 e7                                      ldr r2, [r5, r2]
006e561c  03 30 95 e7                                      ldr r3, [r5, r3]
006e5620  90 13 84 e5                                      str r1, [r4, #0x390]
006e5624  04 20 82 e2                                      add r2, r2, #4
006e5628  06 1d 83 e2                                      add r1, r3, #0x180
006e562c  1c 00 83 e2                                      add r0, r3, #0x1c
006e5630  67 3f 83 e2                                      add r3, r3, #0x19c
006e5634  84 23 84 e5                                      str r2, [r4, #0x384]
006e5638  00 00 84 e5                                      str r0, [r4]
006e563c  98 33 84 e5                                      str r3, [r4, #0x398]
006e5640  30 11 84 e5                                      str r1, [r4, #0x130]
006e5644  94 63 84 e5                                      str r6, [r4, #0x394]
006e5648  00 30 96 e5                                      ldr r3, [r6]
006e564c  84 33 84 e5                                      str r3, [r4, #0x384]
006e5650  00 30 97 e5                                      ldr r3, [r7]
006e5654  24 30 93 e5                                      ldr r3, [r3, #0x24]
006e5658  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e565c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006e5660  01 00 53 e3                                      cmp r3, #1
006e5664  42 00 00 0a                                      beq #0x6e5774
006e5668  27 00 00 3a                                      blo #0x6e570c
006e566c  02 00 53 e3                                      cmp r3, #2
006e5670  08 00 00 1a                                      bne #0x6e5698
006e5674  00 30 a0 e3                                      mov r3, #0
006e5678  fe 25 a0 e3                                      mov r2, #0x3f800000
006e567c  04 00 a0 e1                                      mov r0, r4
006e5680  0c 10 8d e2                                      add r1, sp, #0xc
006e5684  10 30 8d e5                                      str r3, [sp, #0x10]
006e5688  14 20 8d e5                                      str r2, [sp, #0x14]
006e568c  0c 30 8d e5                                      str r3, [sp, #0xc]
006e5690  5c 72 fa eb                                      bl #0x582008
006e5694  94 63 94 e5                                      ldr r6, [r4, #0x394]
006e5698  04 30 96 e5                                      ldr r3, [r6, #4]
006e569c  00 00 53 e3                                      cmp r3, #0
006e56a0  25 00 00 1a                                      bne #0x6e573c
006e56a4  35 1a 0f e3                                      movw r1, #0xfa35
006e56a8  8e 1c 43 e3                                      movt r1, #0x3c8e
006e56ac  08 00 96 e5                                      ldr r0, [r6, #8]
006e56b0  ad a5 f0 eb                                      bl #0x30ed6c
006e56b4  3f 14 a0 e3                                      mov r1, #0x3f000000
006e56b8  ab a5 f0 eb                                      bl #0x30ed6c
006e56bc  1a a2 f0 eb                                      bl #0x30df2c
006e56c0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
006e56c4  72 a5 f0 eb                                      bl #0x30ec94
006e56c8  33 a4 f0 eb                                      bl #0x30e79c
006e56cc  00 10 a0 e1                                      mov r1, r0
006e56d0  33 a5 f0 eb                                      bl #0x30eba4
006e56d4  00 10 a0 e1                                      mov r1, r0
006e56d8  04 00 a0 e1                                      mov r0, r4
006e56dc  6e 72 fa eb                                      bl #0x58209c
006e56e0  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e56e4  04 00 a0 e1                                      mov r0, r4
006e56e8  10 10 93 e5                                      ldr r1, [r3, #0x10]
006e56ec  58 72 fa eb                                      bl #0x582054
006e56f0  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e56f4  04 00 a0 e1                                      mov r0, r4
006e56f8  14 10 93 e5                                      ldr r1, [r3, #0x14]
006e56fc  5a 72 fa eb                                      bl #0x58206c
006e5700  04 00 a0 e1                                      mov r0, r4
006e5704  4c d0 8d e2                                      add sp, sp, #0x4c
006e5708  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e570c  00 30 a0 e3                                      mov r3, #0
006e5710  fe 25 a0 e3                                      mov r2, #0x3f800000
006e5714  04 00 a0 e1                                      mov r0, r4
006e5718  24 10 8d e2                                      add r1, sp, #0x24
006e571c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006e5720  28 30 8d e5                                      str r3, [sp, #0x28]
006e5724  24 20 8d e5                                      str r2, [sp, #0x24]
006e5728  36 72 fa eb                                      bl #0x582008
006e572c  94 63 94 e5                                      ldr r6, [r4, #0x394]
006e5730  04 30 96 e5                                      ldr r3, [r6, #4]
006e5734  00 00 53 e3                                      cmp r3, #0
006e5738  d9 ff ff 0a                                      beq #0x6e56a4
006e573c  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5740  01 20 a0 e3                                      mov r2, #1
006e5744  34 21 c4 e5                                      strb r2, [r4, #0x134]
006e5748  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006e574c  04 00 a0 e1                                      mov r0, r4
006e5750  4b 72 fa eb                                      bl #0x582084
006e5754  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5758  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006e575c  08 00 93 e5                                      ldr r0, [r3, #8]
006e5760  4b a5 f0 eb                                      bl #0x30ec94
006e5764  00 10 a0 e1                                      mov r1, r0
006e5768  04 00 a0 e1                                      mov r0, r4
006e576c  50 72 fa eb                                      bl #0x5820b4
006e5770  da ff ff ea                                      b #0x6e56e0
006e5774  00 30 a0 e3                                      mov r3, #0
006e5778  fe 25 a0 e3                                      mov r2, #0x3f800000
006e577c  04 00 a0 e1                                      mov r0, r4
006e5780  18 10 8d e2                                      add r1, sp, #0x18
006e5784  1c 20 8d e5                                      str r2, [sp, #0x1c]
006e5788  20 30 8d e5                                      str r3, [sp, #0x20]
006e578c  18 30 8d e5                                      str r3, [sp, #0x18]
006e5790  1c 72 fa eb                                      bl #0x582008
006e5794  94 63 94 e5                                      ldr r6, [r4, #0x394]
006e5798  be ff ff ea                                      b #0x6e5698
; mapping-symbol data/literal pool
006e579c  30 f5 2a 00 88 14 00 00 44 2b 00 00 b4 17 00 00  .byte 0x30, 0xf5, 0x2a, 0x00, 0x88, 0x14, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
006e57ac  dc 13 00 00                                      .byte 0xdc, 0x13, 0x00, 0x00

; FUNCTION 0x006e57b0, declared_size=572, range_size=572, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZN6glitch7collada16CCameraSceneNodeC2ERKNS0_16CColladaDatabaseERNS0_7SCameraE
; demangled: glitch::collada::CCameraSceneNode::CCameraSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SCamera&)
; decoder-mode: arm
006e57b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e57b4  42 e4 a0 e3                                      mov lr, #0x42000000
006e57b8  4c d0 4d e2                                      sub sp, sp, #0x4c
006e57bc  32 e7 8e e2                                      add lr, lr, #0xc80000
006e57c0  38 e0 8d e5                                      str lr, [sp, #0x38]
006e57c4  30 e0 8d e2                                      add lr, sp, #0x30
006e57c8  00 c0 a0 e3                                      mov ip, #0
006e57cc  02 70 a0 e1                                      mov r7, r2
006e57d0  00 e0 8d e5                                      str lr, [sp]
006e57d4  00 20 e0 e3                                      mvn r2, #0
006e57d8  00 e0 a0 e3                                      mov lr, #0
006e57dc  01 60 a0 e1                                      mov r6, r1
006e57e0  03 50 a0 e1                                      mov r5, r3
006e57e4  04 10 81 e2                                      add r1, r1, #4
006e57e8  3c 30 8d e2                                      add r3, sp, #0x3c
006e57ec  00 40 a0 e1                                      mov r4, r0
006e57f0  34 c0 8d e5                                      str ip, [sp, #0x34]
006e57f4  04 e0 8d e5                                      str lr, [sp, #4]
006e57f8  3c c0 8d e5                                      str ip, [sp, #0x3c]
006e57fc  40 c0 8d e5                                      str ip, [sp, #0x40]
006e5800  44 c0 8d e5                                      str ip, [sp, #0x44]
006e5804  30 c0 8d e5                                      str ip, [sp, #0x30]
006e5808  1a 78 fa eb                                      bl #0x583878
006e580c  00 20 97 e5                                      ldr r2, [r7]
006e5810  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
006e5814  88 23 84 e5                                      str r2, [r4, #0x388]
006e5818  04 10 97 e5                                      ldr r1, [r7, #4]
006e581c  00 00 52 e3                                      cmp r2, #0
006e5820  03 30 8f e0                                      add r3, pc, r3
006e5824  8c 13 84 e5                                      str r1, [r4, #0x38c]
006e5828  03 00 00 0a                                      beq #0x6e583c
006e582c  04 10 92 e5                                      ldr r1, [r2, #4]
006e5830  00 00 51 e3                                      cmp r1, #0
006e5834  01 10 81 12                                      addne r1, r1, #1
006e5838  04 10 82 15                                      strne r1, [r2, #4]
006e583c  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
006e5840  a0 21 9f e5                                      ldr r2, [pc, #0x1a0]
006e5844  01 10 93 e7                                      ldr r1, [r3, r1]
006e5848  02 20 93 e7                                      ldr r2, [r3, r2]
006e584c  04 10 81 e2                                      add r1, r1, #4
006e5850  84 13 84 e5                                      str r1, [r4, #0x384]
006e5854  00 30 96 e5                                      ldr r3, [r6]
006e5858  06 2d 82 e2                                      add r2, r2, #0x180
006e585c  00 30 84 e5                                      str r3, [r4]
006e5860  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006e5864  28 10 96 e5                                      ldr r1, [r6, #0x28]
006e5868  03 10 84 e7                                      str r1, [r4, r3]
006e586c  00 30 94 e5                                      ldr r3, [r4]
006e5870  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
006e5874  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e5878  03 10 84 e7                                      str r1, [r4, r3]
006e587c  00 30 a0 e3                                      mov r3, #0
006e5880  30 21 84 e5                                      str r2, [r4, #0x130]
006e5884  90 33 84 e5                                      str r3, [r4, #0x390]
006e5888  94 53 84 e5                                      str r5, [r4, #0x394]
006e588c  00 30 95 e5                                      ldr r3, [r5]
006e5890  84 33 84 e5                                      str r3, [r4, #0x384]
006e5894  00 30 97 e5                                      ldr r3, [r7]
006e5898  24 30 93 e5                                      ldr r3, [r3, #0x24]
006e589c  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e58a0  0c 30 93 e5                                      ldr r3, [r3, #0xc]
006e58a4  01 00 53 e3                                      cmp r3, #1
006e58a8  42 00 00 0a                                      beq #0x6e59b8
006e58ac  27 00 00 3a                                      blo #0x6e5950
006e58b0  02 00 53 e3                                      cmp r3, #2
006e58b4  08 00 00 1a                                      bne #0x6e58dc
006e58b8  00 30 a0 e3                                      mov r3, #0
006e58bc  fe 25 a0 e3                                      mov r2, #0x3f800000
006e58c0  04 00 a0 e1                                      mov r0, r4
006e58c4  0c 10 8d e2                                      add r1, sp, #0xc
006e58c8  10 30 8d e5                                      str r3, [sp, #0x10]
006e58cc  14 20 8d e5                                      str r2, [sp, #0x14]
006e58d0  0c 30 8d e5                                      str r3, [sp, #0xc]
006e58d4  cb 71 fa eb                                      bl #0x582008
006e58d8  94 53 94 e5                                      ldr r5, [r4, #0x394]
006e58dc  04 30 95 e5                                      ldr r3, [r5, #4]
006e58e0  00 00 53 e3                                      cmp r3, #0
006e58e4  25 00 00 1a                                      bne #0x6e5980
006e58e8  35 1a 0f e3                                      movw r1, #0xfa35
006e58ec  8e 1c 43 e3                                      movt r1, #0x3c8e
006e58f0  08 00 95 e5                                      ldr r0, [r5, #8]
006e58f4  1c a5 f0 eb                                      bl #0x30ed6c
006e58f8  3f 14 a0 e3                                      mov r1, #0x3f000000
006e58fc  1a a5 f0 eb                                      bl #0x30ed6c
006e5900  89 a1 f0 eb                                      bl #0x30df2c
006e5904  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006e5908  e1 a4 f0 eb                                      bl #0x30ec94
006e590c  a2 a3 f0 eb                                      bl #0x30e79c
006e5910  00 10 a0 e1                                      mov r1, r0
006e5914  a2 a4 f0 eb                                      bl #0x30eba4
006e5918  00 10 a0 e1                                      mov r1, r0
006e591c  04 00 a0 e1                                      mov r0, r4
006e5920  dd 71 fa eb                                      bl #0x58209c
006e5924  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5928  04 00 a0 e1                                      mov r0, r4
006e592c  10 10 93 e5                                      ldr r1, [r3, #0x10]
006e5930  c7 71 fa eb                                      bl #0x582054
006e5934  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5938  04 00 a0 e1                                      mov r0, r4
006e593c  14 10 93 e5                                      ldr r1, [r3, #0x14]
006e5940  c9 71 fa eb                                      bl #0x58206c
006e5944  04 00 a0 e1                                      mov r0, r4
006e5948  4c d0 8d e2                                      add sp, sp, #0x4c
006e594c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e5950  00 30 a0 e3                                      mov r3, #0
006e5954  fe 25 a0 e3                                      mov r2, #0x3f800000
006e5958  04 00 a0 e1                                      mov r0, r4
006e595c  24 10 8d e2                                      add r1, sp, #0x24
006e5960  2c 30 8d e5                                      str r3, [sp, #0x2c]
006e5964  28 30 8d e5                                      str r3, [sp, #0x28]
006e5968  24 20 8d e5                                      str r2, [sp, #0x24]
006e596c  a5 71 fa eb                                      bl #0x582008
006e5970  94 53 94 e5                                      ldr r5, [r4, #0x394]
006e5974  04 30 95 e5                                      ldr r3, [r5, #4]
006e5978  00 00 53 e3                                      cmp r3, #0
006e597c  d9 ff ff 0a                                      beq #0x6e58e8
006e5980  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e5984  01 20 a0 e3                                      mov r2, #1
006e5988  34 21 c4 e5                                      strb r2, [r4, #0x134]
006e598c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006e5990  04 00 a0 e1                                      mov r0, r4
006e5994  ba 71 fa eb                                      bl #0x582084
006e5998  94 33 94 e5                                      ldr r3, [r4, #0x394]
006e599c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
006e59a0  08 00 93 e5                                      ldr r0, [r3, #8]
006e59a4  ba a4 f0 eb                                      bl #0x30ec94
006e59a8  00 10 a0 e1                                      mov r1, r0
006e59ac  04 00 a0 e1                                      mov r0, r4
006e59b0  bf 71 fa eb                                      bl #0x5820b4
006e59b4  da ff ff ea                                      b #0x6e5924
006e59b8  00 30 a0 e3                                      mov r3, #0
006e59bc  fe 25 a0 e3                                      mov r2, #0x3f800000
006e59c0  04 00 a0 e1                                      mov r0, r4
006e59c4  18 10 8d e2                                      add r1, sp, #0x18
006e59c8  1c 20 8d e5                                      str r2, [sp, #0x1c]
006e59cc  20 30 8d e5                                      str r3, [sp, #0x20]
006e59d0  18 30 8d e5                                      str r3, [sp, #0x18]
006e59d4  8b 71 fa eb                                      bl #0x582008
006e59d8  94 53 94 e5                                      ldr r5, [r4, #0x394]
006e59dc  be ff ff ea                                      b #0x6e58dc
; mapping-symbol data/literal pool
006e59e0  70 f2 2a 00 b4 17 00 00 dc 13 00 00              .byte 0x70, 0xf2, 0x2a, 0x00, 0xb4, 0x17, 0x00, 0x00, 0xdc, 0x13, 0x00, 0x00

; FUNCTION 0x006e59ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZTv0_n24_N6glitch7collada16CCameraSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e59ec  00 30 90 e5                                      ldr r3, [r0]
006e59f0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006e59f4  03 00 80 e0                                      add r0, r0, r3
006e59f8  a9 fe ff ea                                      b #0x6e54a4

; FUNCTION 0x006e59fc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZTv0_n12_N6glitch7collada16CCameraSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e59fc  00 30 90 e5                                      ldr r3, [r0]
006e5a00  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e5a04  03 00 80 e0                                      add r0, r0, r3
006e5a08  a5 fe ff ea                                      b #0x6e54a4

; FUNCTION 0x006e5a0c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZTv0_n24_N6glitch7collada16CCameraSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e5a0c  00 30 90 e5                                      ldr r3, [r0]
006e5a10  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006e5a14  03 00 80 e0                                      add r0, r0, r3
006e5a18  7e fe ff ea                                      b #0x6e5418

; FUNCTION 0x006e5a1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCameraSceneNode
; alias: _ZTv0_n12_N6glitch7collada16CCameraSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e5a1c  00 30 90 e5                                      ldr r3, [r0]
006e5a20  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e5a24  03 00 80 e0                                      add r0, r0, r3
006e5a28  7a fe ff ea                                      b #0x6e5418
