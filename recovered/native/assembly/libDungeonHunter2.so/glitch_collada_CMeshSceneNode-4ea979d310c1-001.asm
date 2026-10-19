; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00646148, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode6getUIDEv
; demangled: glitch::collada::CMeshSceneNode::getUID() const
; decoder-mode: arm
00646148  30 31 90 e5                                      ldr r3, [r0, #0x130]
0064614c  00 00 53 e3                                      cmp r3, #0
00646150  34 31 90 05                                      ldreq r3, [r0, #0x134]
00646154  00 00 93 15                                      ldrne r0, [r3]
00646158  08 00 93 05                                      ldreq r0, [r3, #8]
0064615c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646160, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode7getTypeEv
; demangled: glitch::collada::CMeshSceneNode::getType() const
; decoder-mode: arm
00646160  64 01 06 e3                                      movw r0, #0x6164
00646164  65 0d 46 e3                                      movt r0, #0x6d65
00646168  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064616c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode7getMeshEv
; demangled: glitch::collada::CMeshSceneNode::getMesh() const
; decoder-mode: arm
0064616c  34 31 91 e5                                      ldr r3, [r1, #0x134]
00646170  00 00 53 e3                                      cmp r3, #0
00646174  00 30 80 e5                                      str r3, [r0]
00646178  04 20 93 15                                      ldrne r2, [r3, #4]
0064617c  01 20 82 12                                      addne r2, r2, #1
00646180  04 20 83 15                                      strne r2, [r3, #4]
00646184  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646188, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS_5scene5IMeshEEE
; demangled: glitch::collada::CMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&)
; decoder-mode: arm
00646188  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064618c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode14getBoundingBoxEv
; demangled: glitch::collada::CMeshSceneNode::getBoundingBox() const
; decoder-mode: arm
0064618c  10 40 2d e9                                      push {r4, lr}
00646190  34 31 90 e5                                      ldr r3, [r0, #0x134]
00646194  03 00 a0 e1                                      mov r0, r3
00646198  00 30 93 e5                                      ldr r3, [r3]
0064619c  0f e0 a0 e1                                      mov lr, pc
006461a0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006461a4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006461a8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode11getMaterialEj
; demangled: glitch::collada::CMeshSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
006461a8  10 40 2d e9                                      push {r4, lr}
006461ac  34 31 91 e5                                      ldr r3, [r1, #0x134]
006461b0  00 40 a0 e1                                      mov r4, r0
006461b4  03 10 a0 e1                                      mov r1, r3
006461b8  00 30 93 e5                                      ldr r3, [r3]
006461bc  0f e0 a0 e1                                      mov lr, pc
006461c0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006461c4  04 00 a0 e1                                      mov r0, r4
006461c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006461cc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode16getMaterialCountEv
; demangled: glitch::collada::CMeshSceneNode::getMaterialCount() const
; decoder-mode: arm
006461cc  10 40 2d e9                                      push {r4, lr}
006461d0  34 31 90 e5                                      ldr r3, [r0, #0x134]
006461d4  03 00 a0 e1                                      mov r0, r3
006461d8  00 30 93 e5                                      ldr r3, [r3]
006461dc  0f e0 a0 e1                                      mov lr, pc
006461e0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006461e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00646208, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNode9onAnimateEj
; demangled: glitch::collada::CMeshSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
00646208  70 40 2d e9                                      push {r4, r5, r6, lr}
0064620c  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00646210  00 40 a0 e1                                      mov r4, r0
00646214  01 50 a0 e1                                      mov r5, r1
00646218  01 00 13 e3                                      tst r3, #1
0064621c  06 00 00 0a                                      beq #0x64623c
00646220  d1 42 fd eb                                      bl #0x596d6c
00646224  34 31 94 e5                                      ldr r3, [r4, #0x134]
00646228  05 10 a0 e1                                      mov r1, r5
0064622c  03 00 a0 e1                                      mov r0, r3
00646230  00 30 93 e5                                      ldr r3, [r3]
00646234  0f e0 a0 e1                                      mov lr, pc
00646238  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0064623c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00646240, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNodeD1Ev
; demangled: glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00646240  70 40 2d e9                                      push {r4, r5, r6, lr}
00646244  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00646248  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0064624c  00 40 a0 e1                                      mov r4, r0
00646250  05 50 8f e0                                      add r5, pc, r5
00646254  34 01 90 e5                                      ldr r0, [r0, #0x134]
00646258  03 30 95 e7                                      ldr r3, [r5, r3]
0064625c  00 00 50 e3                                      cmp r0, #0
00646260  4a 2f 83 e2                                      add r2, r3, #0x128
00646264  1c 30 83 e2                                      add r3, r3, #0x1c
00646268  00 30 84 e5                                      str r3, [r4]
0064626c  38 21 84 e5                                      str r2, [r4, #0x138]
00646270  00 00 00 0a                                      beq #0x646278
00646274  c2 5c f3 eb                                      bl #0x31d584
00646278  40 30 9f e5                                      ldr r3, [pc, #0x40]
0064627c  04 00 a0 e1                                      mov r0, r4
00646280  03 10 95 e7                                      ldr r1, [r5, r3]
00646284  04 30 91 e5                                      ldr r3, [r1, #4]
00646288  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0064628c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00646290  00 30 84 e5                                      str r3, [r4]
00646294  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00646298  08 10 81 e2                                      add r1, r1, #8
0064629c  03 c0 84 e7                                      str ip, [r4, r3]
006462a0  00 30 94 e5                                      ldr r3, [r4]
006462a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006462a8  03 20 84 e7                                      str r2, [r4, r3]
006462ac  82 4a fd eb                                      bl #0x598cbc
006462b0  04 00 a0 e1                                      mov r0, r4
006462b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006462b8  40 e8 34 00 7c 43 00 00 00 27 00 00              .byte 0x40, 0xe8, 0x34, 0x00, 0x7c, 0x43, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00

; FUNCTION 0x006462c4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNodeD0Ev
; demangled: glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
006462c4  10 40 2d e9                                      push {r4, lr}
006462c8  00 40 a0 e1                                      mov r4, r0
006462cc  db ff ff eb                                      bl #0x646240
006462d0  04 00 a0 e1                                      mov r0, r4
006462d4  f5 1f f3 eb                                      bl #0x30e2b0
006462d8  04 00 a0 e1                                      mov r0, r4
006462dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006462e0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNodeD2Ev
; demangled: glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
006462e0  70 40 2d e9                                      push {r4, r5, r6, lr}
006462e4  00 30 91 e5                                      ldr r3, [r1]
006462e8  00 40 a0 e1                                      mov r4, r0
006462ec  01 50 a0 e1                                      mov r5, r1
006462f0  00 30 80 e5                                      str r3, [r0]
006462f4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006462f8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006462fc  03 20 80 e7                                      str r2, [r0, r3]
00646300  00 30 90 e5                                      ldr r3, [r0]
00646304  20 20 91 e5                                      ldr r2, [r1, #0x20]
00646308  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064630c  03 20 80 e7                                      str r2, [r0, r3]
00646310  34 01 90 e5                                      ldr r0, [r0, #0x134]
00646314  00 00 50 e3                                      cmp r0, #0
00646318  00 00 00 0a                                      beq #0x646320
0064631c  98 5c f3 eb                                      bl #0x31d584
00646320  04 30 95 e5                                      ldr r3, [r5, #4]
00646324  04 50 85 e2                                      add r5, r5, #4
00646328  04 10 85 e2                                      add r1, r5, #4
0064632c  00 30 84 e5                                      str r3, [r4]
00646330  10 20 95 e5                                      ldr r2, [r5, #0x10]
00646334  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00646338  04 00 a0 e1                                      mov r0, r4
0064633c  03 20 84 e7                                      str r2, [r4, r3]
00646340  00 30 94 e5                                      ldr r3, [r4]
00646344  14 20 95 e5                                      ldr r2, [r5, #0x14]
00646348  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064634c  03 20 84 e7                                      str r2, [r4, r3]
00646350  59 4a fd eb                                      bl #0x598cbc
00646354  04 00 a0 e1                                      mov r0, r4
00646358  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064635c, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZNK6glitch7collada14CMeshSceneNode20getRenderVertexCountEPv
; demangled: glitch::collada::CMeshSceneNode::getRenderVertexCount(void*) const
; decoder-mode: arm
0064635c  10 40 2d e9                                      push {r4, lr}
00646360  34 31 90 e5                                      ldr r3, [r0, #0x134]
00646364  08 d0 4d e2                                      sub sp, sp, #8
00646368  01 20 41 e2                                      sub r2, r1, #1
0064636c  04 00 8d e2                                      add r0, sp, #4
00646370  03 10 a0 e1                                      mov r1, r3
00646374  00 30 93 e5                                      ldr r3, [r3]
00646378  0f e0 a0 e1                                      mov lr, pc
0064637c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00646380  04 40 9d e5                                      ldr r4, [sp, #4]
00646384  00 00 54 e3                                      cmp r4, #0
00646388  01 00 00 0a                                      beq #0x646394
0064638c  04 00 a0 e1                                      mov r0, r4
00646390  7b 5c f3 eb                                      bl #0x31d584
00646394  14 30 94 e5                                      ldr r3, [r4, #0x14]
00646398  0d 00 a0 e1                                      mov r0, sp
0064639c  00 00 53 e3                                      cmp r3, #0
006463a0  00 30 8d e5                                      str r3, [sp]
006463a4  00 20 93 15                                      ldrne r2, [r3]
006463a8  01 20 82 12                                      addne r2, r2, #1
006463ac  00 20 83 15                                      strne r2, [r3]
006463b0  00 30 9d 15                                      ldrne r3, [sp]
006463b4  08 40 93 e5                                      ldr r4, [r3, #8]
006463b8  f4 61 f4 eb                                      bl #0x35eb90
006463bc  04 00 a0 e1                                      mov r0, r4
006463c0  08 d0 8d e2                                      add sp, sp, #8
006463c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006463c8, declared_size=448, range_size=448, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNode19onRegisterSceneNodeEv
; demangled: glitch::collada::CMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006463c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006463cc  34 31 90 e5                                      ldr r3, [r0, #0x134]
006463d0  24 d0 4d e2                                      sub sp, sp, #0x24
006463d4  00 50 a0 e1                                      mov r5, r0
006463d8  00 00 53 e3                                      cmp r3, #0
006463dc  60 00 00 0a                                      beq #0x646564
006463e0  10 21 90 e5                                      ldr r2, [r0, #0x110]
006463e4  14 90 92 e5                                      ldr sb, [r2, #0x14]
006463e8  00 00 59 e3                                      cmp sb, #0
006463ec  5c 00 00 0a                                      beq #0x646564
006463f0  03 00 a0 e1                                      mov r0, r3
006463f4  00 30 93 e5                                      ldr r3, [r3]
006463f8  0f e0 a0 e1                                      mov lr, pc
006463fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00646400  00 70 50 e2                                      subs r7, r0, #0
00646404  56 00 00 0a                                      beq #0x646564
00646408  01 40 a0 e3                                      mov r4, #1
0064640c  1c a0 8d e2                                      add sl, sp, #0x1c
00646410  18 60 8d e2                                      add r6, sp, #0x18
00646414  07 80 a0 e1                                      mov r8, r7
00646418  06 00 00 ea                                      b #0x646438
0064641c  05 00 50 e3                                      cmp r0, #5
00646420  52 00 00 0a                                      beq #0x646570
00646424  06 00 a0 e1                                      mov r0, r6
00646428  ee 29 f3 eb                                      bl #0x310be8
0064642c  04 00 58 e1                                      cmp r8, r4
00646430  01 40 84 e2                                      add r4, r4, #1
00646434  4a 00 00 9a                                      bls #0x646564
00646438  34 31 95 e5                                      ldr r3, [r5, #0x134]
0064643c  01 70 44 e2                                      sub r7, r4, #1
00646440  0a 00 a0 e1                                      mov r0, sl
00646444  03 10 a0 e1                                      mov r1, r3
00646448  07 20 a0 e1                                      mov r2, r7
0064644c  00 30 93 e5                                      ldr r3, [r3]
00646450  0f e0 a0 e1                                      mov lr, pc
00646454  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00646458  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0064645c  00 00 53 e2                                      subs r0, r3, #0
00646460  f1 ff ff 0a                                      beq #0x64642c
00646464  46 5c f3 eb                                      bl #0x31d584
00646468  34 31 95 e5                                      ldr r3, [r5, #0x134]
0064646c  06 00 a0 e1                                      mov r0, r6
00646470  07 20 a0 e1                                      mov r2, r7
00646474  03 10 a0 e1                                      mov r1, r3
00646478  00 30 93 e5                                      ldr r3, [r3]
0064647c  0f e0 a0 e1                                      mov lr, pc
00646480  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00646484  34 c1 95 e5                                      ldr ip, [r5, #0x134]
00646488  07 30 a0 e1                                      mov r3, r7
0064648c  09 20 a0 e1                                      mov r2, sb
00646490  0c 00 a0 e1                                      mov r0, ip
00646494  00 10 a0 e3                                      mov r1, #0
00646498  00 c0 9c e5                                      ldr ip, [ip]
0064649c  0f e0 a0 e1                                      mov lr, pc
006464a0  38 f0 9c e5                                      ldr pc, [ip, #0x38]
006464a4  04 00 50 e3                                      cmp r0, #4
006464a8  10 00 50 13                                      cmpne r0, #0x10
006464ac  da ff ff 1a                                      bne #0x64641c
006464b0  10 71 95 e5                                      ldr r7, [r5, #0x110]
006464b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006464b8  00 20 97 e5                                      ldr r2, [r7]
006464bc  03 00 a0 e1                                      mov r0, r3
006464c0  24 b0 92 e5                                      ldr fp, [r2, #0x24]
006464c4  14 30 8d e5                                      str r3, [sp, #0x14]
006464c8  19 fe fd eb                                      bl #0x5c5d34
006464cc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006464d0  0c e0 a0 e3                                      mov lr, #0xc
006464d4  05 10 a0 e1                                      mov r1, r5
006464d8  04 20 93 e5                                      ldr r2, [r3, #4]
006464dc  04 30 a0 e1                                      mov r3, r4
006464e0  18 c0 92 e5                                      ldr ip, [r2, #0x18]
006464e4  06 20 a0 e1                                      mov r2, r6
006464e8  9e c0 2c e0                                      mla ip, lr, r0, ip
006464ec  00 e0 a0 e3                                      mov lr, #0
006464f0  08 c0 9c e5                                      ldr ip, [ip, #8]
006464f4  07 00 a0 e1                                      mov r0, r7
006464f8  04 c0 9c e5                                      ldr ip, [ip, #4]
006464fc  04 e0 8d e5                                      str lr, [sp, #4]
00646500  02 e1 e0 e3                                      mvn lr, #0x80000000
00646504  01 08 1c e3                                      tst ip, #0x10000
00646508  08 c0 a0 13                                      movne ip, #8
0064650c  04 c0 a0 03                                      moveq ip, #4
00646510  08 e0 8d e5                                      str lr, [sp, #8]
00646514  00 c0 8d e5                                      str ip, [sp]
00646518  3b ff 2f e1                                      blx fp
0064651c  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
00646520  02 0b 13 e3                                      tst r3, #0x800
00646524  be ff ff 0a                                      beq #0x646424
00646528  10 31 95 e5                                      ldr r3, [r5, #0x110]
0064652c  00 e0 a0 e3                                      mov lr, #0
00646530  05 10 a0 e1                                      mov r1, r5
00646534  00 c0 93 e5                                      ldr ip, [r3]
00646538  03 00 a0 e1                                      mov r0, r3
0064653c  07 30 a0 e3                                      mov r3, #7
00646540  00 30 8d e5                                      str r3, [sp]
00646544  02 31 e0 e3                                      mvn r3, #0x80000000
00646548  08 30 8d e5                                      str r3, [sp, #8]
0064654c  06 20 a0 e1                                      mov r2, r6
00646550  04 e0 8d e5                                      str lr, [sp, #4]
00646554  04 30 a0 e1                                      mov r3, r4
00646558  0f e0 a0 e1                                      mov lr, pc
0064655c  24 f0 9c e5                                      ldr pc, [ip, #0x24]
00646560  af ff ff ea                                      b #0x646424
00646564  01 00 a0 e3                                      mov r0, #1
00646568  24 d0 8d e2                                      add sp, sp, #0x24
0064656c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00646570  34 31 95 e5                                      ldr r3, [r5, #0x134]
00646574  03 00 a0 e1                                      mov r0, r3
00646578  00 30 93 e5                                      ldr r3, [r3]
0064657c  0f e0 a0 e1                                      mov lr, pc
00646580  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00646584  a6 ff ff ea                                      b #0x646424

; FUNCTION 0x00646588, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::collada::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::collada::SNode*, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00646588  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064658c  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
00646590  d4 e0 9f e5                                      ldr lr, [pc, #0xd4]
00646594  d4 c0 9f e5                                      ldr ip, [pc, #0xd4]
00646598  06 60 8f e0                                      add r6, pc, r6
0064659c  0e 50 96 e7                                      ldr r5, [r6, lr]
006465a0  0c c0 96 e7                                      ldr ip, [r6, ip]
006465a4  01 70 a0 e3                                      mov r7, #1
006465a8  24 e0 95 e5                                      ldr lr, [r5, #0x24]
006465ac  08 c0 8c e2                                      add ip, ip, #8
006465b0  3c 71 80 e5                                      str r7, [r0, #0x13c]
006465b4  00 e0 80 e5                                      str lr, [r0]
006465b8  38 c1 80 e5                                      str ip, [r0, #0x138]
006465bc  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
006465c0  28 e0 95 e5                                      ldr lr, [r5, #0x28]
006465c4  08 d0 4d e2                                      sub sp, sp, #8
006465c8  01 80 a0 e1                                      mov r8, r1
006465cc  0c e0 80 e7                                      str lr, [r0, ip]
006465d0  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006465d4  02 70 a0 e1                                      mov r7, r2
006465d8  08 10 85 e2                                      add r1, r5, #8
006465dc  00 c0 8d e5                                      str ip, [sp]
006465e0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006465e4  03 20 a0 e1                                      mov r2, r3
006465e8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006465ec  00 40 a0 e1                                      mov r4, r0
006465f0  04 c0 8d e5                                      str ip, [sp, #4]
006465f4  b1 4a fd eb                                      bl #0x5990c0
006465f8  04 20 95 e5                                      ldr r2, [r5, #4]
006465fc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00646600  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00646604  00 20 84 e5                                      str r2, [r4]
00646608  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0064660c  03 30 96 e7                                      ldr r3, [r6, r3]
00646610  18 00 95 e5                                      ldr r0, [r5, #0x18]
00646614  02 10 84 e7                                      str r1, [r4, r2]
00646618  00 10 94 e5                                      ldr r1, [r4]
0064661c  4a 2f 83 e2                                      add r2, r3, #0x128
00646620  1c 30 83 e2                                      add r3, r3, #0x1c
00646624  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00646628  01 00 84 e7                                      str r0, [r4, r1]
0064662c  38 21 84 e5                                      str r2, [r4, #0x138]
00646630  00 30 84 e5                                      str r3, [r4]
00646634  30 71 84 e5                                      str r7, [r4, #0x130]
00646638  00 30 98 e5                                      ldr r3, [r8]
0064663c  04 00 a0 e1                                      mov r0, r4
00646640  02 10 a0 e3                                      mov r1, #2
00646644  00 00 53 e3                                      cmp r3, #0
00646648  34 31 84 e5                                      str r3, [r4, #0x134]
0064664c  04 20 93 15                                      ldrne r2, [r3, #4]
00646650  01 20 82 12                                      addne r2, r2, #1
00646654  04 20 83 15                                      strne r2, [r3, #4]
00646658  cf 42 fd eb                                      bl #0x59719c
0064665c  04 00 a0 e1                                      mov r0, r4
00646660  08 d0 8d e2                                      add sp, sp, #8
00646664  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00646668  f8 e4 34 00 00 27 00 00 44 2b 00 00 7c 43 00 00  .byte 0xf8, 0xe4, 0x34, 0x00, 0x00, 0x27, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x7c, 0x43, 0x00, 0x00

; FUNCTION 0x00646678, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::collada::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::collada::SNode*, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00646678  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064667c  08 d0 4d e2                                      sub sp, sp, #8
00646680  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00646684  04 60 81 e2                                      add r6, r1, #4
00646688  01 50 a0 e1                                      mov r5, r1
0064668c  00 c0 8d e5                                      str ip, [sp]
00646690  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00646694  02 80 a0 e1                                      mov r8, r2
00646698  03 70 a0 e1                                      mov r7, r3
0064669c  04 10 86 e2                                      add r1, r6, #4
006466a0  20 20 9d e5                                      ldr r2, [sp, #0x20]
006466a4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006466a8  00 40 a0 e1                                      mov r4, r0
006466ac  04 c0 8d e5                                      str ip, [sp, #4]
006466b0  82 4a fd eb                                      bl #0x5990c0
006466b4  04 30 95 e5                                      ldr r3, [r5, #4]
006466b8  04 00 a0 e1                                      mov r0, r4
006466bc  02 10 a0 e3                                      mov r1, #2
006466c0  00 30 84 e5                                      str r3, [r4]
006466c4  10 20 96 e5                                      ldr r2, [r6, #0x10]
006466c8  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006466cc  03 20 84 e7                                      str r2, [r4, r3]
006466d0  00 30 94 e5                                      ldr r3, [r4]
006466d4  14 20 96 e5                                      ldr r2, [r6, #0x14]
006466d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006466dc  03 20 84 e7                                      str r2, [r4, r3]
006466e0  00 30 95 e5                                      ldr r3, [r5]
006466e4  00 30 84 e5                                      str r3, [r4]
006466e8  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
006466ec  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006466f0  03 20 84 e7                                      str r2, [r4, r3]
006466f4  00 30 94 e5                                      ldr r3, [r4]
006466f8  20 20 95 e5                                      ldr r2, [r5, #0x20]
006466fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00646700  03 20 84 e7                                      str r2, [r4, r3]
00646704  30 71 84 e5                                      str r7, [r4, #0x130]
00646708  00 30 98 e5                                      ldr r3, [r8]
0064670c  00 00 53 e3                                      cmp r3, #0
00646710  34 31 84 e5                                      str r3, [r4, #0x134]
00646714  04 20 93 15                                      ldrne r2, [r3, #4]
00646718  01 20 82 12                                      addne r2, r2, #1
0064671c  04 20 83 15                                      strne r2, [r3, #4]
00646720  9d 42 fd eb                                      bl #0x59719c
00646724  04 00 a0 e1                                      mov r0, r4
00646728  08 d0 8d e2                                      add sp, sp, #8
0064672c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00646730, declared_size=504, range_size=504, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZN6glitch7collada14CMeshSceneNode6renderEPv
; demangled: glitch::collada::CMeshSceneNode::render(void*)
; decoder-mode: arm
00646730  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00646734  34 31 90 e5                                      ldr r3, [r0, #0x134]
00646738  10 21 90 e5                                      ldr r2, [r0, #0x110]
0064673c  1c d0 4d e2                                      sub sp, sp, #0x1c
00646740  00 00 53 e3                                      cmp r3, #0
00646744  00 40 a0 e1                                      mov r4, r0
00646748  01 60 a0 e1                                      mov r6, r1
0064674c  14 50 92 e5                                      ldr r5, [r2, #0x14]
00646750  61 00 00 0a                                      beq #0x6468dc
00646754  00 00 55 e3                                      cmp r5, #0
00646758  5f 00 00 0a                                      beq #0x6468dc
0064675c  03 00 a0 e1                                      mov r0, r3
00646760  05 10 a0 e1                                      mov r1, r5
00646764  00 30 93 e5                                      ldr r3, [r3]
00646768  24 20 84 e2                                      add r2, r4, #0x24
0064676c  0f e0 a0 e1                                      mov lr, pc
00646770  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00646774  00 00 56 e3                                      cmp r6, #0
00646778  57 00 00 0a                                      beq #0x6468dc
0064677c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00646780  01 60 46 e2                                      sub r6, r6, #1
00646784  14 00 8d e2                                      add r0, sp, #0x14
00646788  03 10 a0 e1                                      mov r1, r3
0064678c  06 20 a0 e1                                      mov r2, r6
00646790  00 30 93 e5                                      ldr r3, [r3]
00646794  0f e0 a0 e1                                      mov lr, pc
00646798  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064679c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006467a0  00 00 53 e3                                      cmp r3, #0
006467a4  4c 00 00 0a                                      beq #0x6468dc
006467a8  34 31 94 e5                                      ldr r3, [r4, #0x134]
006467ac  1f 00 06 e2                                      and r0, r6, #0x1f
006467b0  01 10 a0 e3                                      mov r1, #1
006467b4  14 20 93 e5                                      ldr r2, [r3, #0x14]
006467b8  11 20 12 e0                                      ands r2, r2, r1, lsl r0
006467bc  00 80 a0 13                                      movne r8, #0
006467c0  47 00 00 0a                                      beq #0x6468e4
006467c4  10 70 8d e2                                      add r7, sp, #0x10
006467c8  03 10 a0 e1                                      mov r1, r3
006467cc  07 00 a0 e1                                      mov r0, r7
006467d0  06 20 a0 e1                                      mov r2, r6
006467d4  00 30 93 e5                                      ldr r3, [r3]
006467d8  0f e0 a0 e1                                      mov lr, pc
006467dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006467e0  34 31 94 e5                                      ldr r3, [r4, #0x134]
006467e4  08 00 8d e2                                      add r0, sp, #8
006467e8  06 20 a0 e1                                      mov r2, r6
006467ec  03 10 a0 e1                                      mov r1, r3
006467f0  00 30 93 e5                                      ldr r3, [r3]
006467f4  0f e0 a0 e1                                      mov lr, pc
006467f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006467fc  08 30 9d e5                                      ldr r3, [sp, #8]
00646800  00 00 53 e3                                      cmp r3, #0
00646804  0c 30 8d e5                                      str r3, [sp, #0xc]
00646808  0e 00 00 0a                                      beq #0x646848
0064680c  00 20 93 e5                                      ldr r2, [r3]
00646810  01 20 82 e2                                      add r2, r2, #1
00646814  00 20 83 e5                                      str r2, [r3]
00646818  08 a0 9d e5                                      ldr sl, [sp, #8]
0064681c  00 00 5a e3                                      cmp sl, #0
00646820  08 00 00 0a                                      beq #0x646848
00646824  00 30 9a e5                                      ldr r3, [sl]
00646828  01 30 43 e2                                      sub r3, r3, #1
0064682c  00 00 53 e3                                      cmp r3, #0
00646830  00 30 8a e5                                      str r3, [sl]
00646834  03 00 00 1a                                      bne #0x646848
00646838  0a 00 a0 e1                                      mov r0, sl
0064683c  c4 63 fe eb                                      bl #0x5df754
00646840  0a 00 a0 e1                                      mov r0, sl
00646844  99 1e f3 eb                                      bl #0x30e2b0
00646848  0c 20 8d e2                                      add r2, sp, #0xc
0064684c  05 00 a0 e1                                      mov r0, r5
00646850  07 10 a0 e1                                      mov r1, r7
00646854  ad 60 f4 eb                                      bl #0x35eb10
00646858  14 30 9d e5                                      ldr r3, [sp, #0x14]
0064685c  05 00 a0 e1                                      mov r0, r5
00646860  04 10 8d e2                                      add r1, sp, #4
00646864  00 00 53 e3                                      cmp r3, #0
00646868  04 30 8d e5                                      str r3, [sp, #4]
0064686c  04 20 93 15                                      ldrne r2, [r3, #4]
00646870  01 20 82 12                                      addne r2, r2, #1
00646874  04 20 83 15                                      strne r2, [r3, #4]
00646878  d4 60 f4 eb                                      bl #0x35ebd0
0064687c  04 00 9d e5                                      ldr r0, [sp, #4]
00646880  00 00 50 e3                                      cmp r0, #0
00646884  00 00 00 0a                                      beq #0x64688c
00646888  3d 5b f3 eb                                      bl #0x31d584
0064688c  00 00 58 e3                                      cmp r8, #0
00646890  1c 00 00 1a                                      bne #0x646908
00646894  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00646898  00 00 54 e3                                      cmp r4, #0
0064689c  08 00 00 0a                                      beq #0x6468c4
006468a0  00 30 94 e5                                      ldr r3, [r4]
006468a4  01 30 43 e2                                      sub r3, r3, #1
006468a8  00 00 53 e3                                      cmp r3, #0
006468ac  00 30 84 e5                                      str r3, [r4]
006468b0  03 00 00 1a                                      bne #0x6468c4
006468b4  04 00 a0 e1                                      mov r0, r4
006468b8  a5 63 fe eb                                      bl #0x5df754
006468bc  04 00 a0 e1                                      mov r0, r4
006468c0  7a 1e f3 eb                                      bl #0x30e2b0
006468c4  07 00 a0 e1                                      mov r0, r7
006468c8  c6 28 f3 eb                                      bl #0x310be8
006468cc  14 00 9d e5                                      ldr r0, [sp, #0x14]
006468d0  00 00 50 e3                                      cmp r0, #0
006468d4  00 00 00 0a                                      beq #0x6468dc
006468d8  29 5b f3 eb                                      bl #0x31d584
006468dc  1c d0 8d e2                                      add sp, sp, #0x1c
006468e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006468e4  03 00 a0 e1                                      mov r0, r3
006468e8  00 c0 93 e5                                      ldr ip, [r3]
006468ec  05 20 a0 e1                                      mov r2, r5
006468f0  06 30 a0 e1                                      mov r3, r6
006468f4  0f e0 a0 e1                                      mov lr, pc
006468f8  38 f0 9c e5                                      ldr pc, [ip, #0x38]
006468fc  34 31 94 e5                                      ldr r3, [r4, #0x134]
00646900  04 80 00 e2                                      and r8, r0, #4
00646904  ae ff ff ea                                      b #0x6467c4
00646908  34 31 94 e5                                      ldr r3, [r4, #0x134]
0064690c  05 10 a0 e1                                      mov r1, r5
00646910  06 20 a0 e1                                      mov r2, r6
00646914  03 00 a0 e1                                      mov r0, r3
00646918  00 30 93 e5                                      ldr r3, [r3]
0064691c  0f e0 a0 e1                                      mov lr, pc
00646920  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00646924  da ff ff ea                                      b #0x646894

; FUNCTION 0x00646928, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZTv0_n24_N6glitch7collada14CMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00646928  00 30 90 e5                                      ldr r3, [r0]
0064692c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00646930  03 00 80 e0                                      add r0, r0, r3
00646934  62 fe ff ea                                      b #0x6462c4

; FUNCTION 0x00646938, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZTv0_n12_N6glitch7collada14CMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00646938  00 30 90 e5                                      ldr r3, [r0]
0064693c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00646940  03 00 80 e0                                      add r0, r0, r3
00646944  5e fe ff ea                                      b #0x6462c4

; FUNCTION 0x00646948, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZTv0_n24_N6glitch7collada14CMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00646948  00 30 90 e5                                      ldr r3, [r0]
0064694c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00646950  03 00 80 e0                                      add r0, r0, r3
00646954  39 fe ff ea                                      b #0x646240

; FUNCTION 0x00646958, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CMeshSceneNode
; alias: _ZTv0_n12_N6glitch7collada14CMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00646958  00 30 90 e5                                      ldr r3, [r0]
0064695c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00646960  03 00 80 e0                                      add r0, r0, r3
00646964  35 fe ff ea                                      b #0x646240
