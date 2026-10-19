; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ce3bc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZNK6glitch5scene16CSkyBoxSceneNode7getTypeEv
; demangled: glitch::scene::CSkyBoxSceneNode::getType() const
; decoder-mode: arm
006ce3bc  73 0b 06 e3                                      movw r0, #0x6b73
006ce3c0  79 0f 45 e3                                      movt r0, #0x5f79
006ce3c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ce3c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZNK6glitch5scene16CSkyBoxSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CSkyBoxSceneNode::getBoundingBox() const
; decoder-mode: arm
006ce3c8  13 0e 80 e2                                      add r0, r0, #0x130
006ce3cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ce3d0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZNK6glitch5scene16CSkyBoxSceneNode11getMaterialEj
; demangled: glitch::scene::CSkyBoxSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
006ce3d0  02 21 81 e0                                      add r2, r1, r2, lsl #2
006ce3d4  4c 31 92 e5                                      ldr r3, [r2, #0x14c]
006ce3d8  00 00 53 e3                                      cmp r3, #0
006ce3dc  00 30 80 e5                                      str r3, [r0]
006ce3e0  00 20 93 15                                      ldrne r2, [r3]
006ce3e4  01 20 82 12                                      addne r2, r2, #1
006ce3e8  00 20 83 15                                      strne r2, [r3]
006ce3ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ce3f0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZNK6glitch5scene16CSkyBoxSceneNode16getMaterialCountEv
; demangled: glitch::scene::CSkyBoxSceneNode::getMaterialCount() const
; decoder-mode: arm
006ce3f0  06 00 a0 e3                                      mov r0, #6
006ce3f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006ce418, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CSkyBoxSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006ce418  10 40 2d e9                                      push {r4, lr}
006ce41c  00 10 a0 e1                                      mov r1, r0
006ce420  10 01 90 e5                                      ldr r0, [r0, #0x110]
006ce424  18 d0 4d e2                                      sub sp, sp, #0x18
006ce428  00 20 a0 e3                                      mov r2, #0
006ce42c  00 30 90 e5                                      ldr r3, [r0]
006ce430  18 40 8d e2                                      add r4, sp, #0x18
006ce434  24 c0 93 e5                                      ldr ip, [r3, #0x24]
006ce438  02 30 a0 e3                                      mov r3, #2
006ce43c  04 20 24 e5                                      str r2, [r4, #-4]!
006ce440  00 30 8d e5                                      str r3, [sp]
006ce444  02 31 e0 e3                                      mvn r3, #0x80000000
006ce448  0c 00 8d e9                                      stmib sp, {r2, r3}
006ce44c  02 30 a0 e1                                      mov r3, r2
006ce450  04 20 a0 e1                                      mov r2, r4
006ce454  3c ff 2f e1                                      blx ip
006ce458  04 00 a0 e1                                      mov r0, r4
006ce45c  e1 09 f1 eb                                      bl #0x310be8
006ce460  01 00 a0 e3                                      mov r0, #1
006ce464  18 d0 8d e2                                      add sp, sp, #0x18
006ce468  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ce53c, declared_size=1156, range_size=1156, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNode6renderEPv
; demangled: glitch::scene::CSkyBoxSceneNode::render(void*)
; decoder-mode: arm
006ce53c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ce540  10 31 90 e5                                      ldr r3, [r0, #0x110]
006ce544  cc d0 4d e2                                      sub sp, sp, #0xcc
006ce548  00 40 a0 e1                                      mov r4, r0
006ce54c  e4 50 93 e5                                      ldr r5, [r3, #0xe4]
006ce550  14 60 93 e5                                      ldr r6, [r3, #0x14]
006ce554  00 00 55 e3                                      cmp r5, #0
006ce558  00 00 56 13                                      cmpne r6, #0
006ce55c  01 00 00 1a                                      bne #0x6ce568
006ce560  cc d0 8d e2                                      add sp, sp, #0xcc
006ce564  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ce568  00 30 95 e5                                      ldr r3, [r5]
006ce56c  05 00 a0 e1                                      mov r0, r5
006ce570  0f e0 a0 e1                                      mov lr, pc
006ce574  50 f1 93 e5                                      ldr pc, [r3, #0x150]
006ce578  00 70 50 e2                                      subs r7, r0, #0
006ce57c  81 00 00 1a                                      bne #0x6ce788
006ce580  28 80 8d e2                                      add r8, sp, #0x28
006ce584  41 20 a0 e3                                      mov r2, #0x41
006ce588  24 10 84 e2                                      add r1, r4, #0x24
006ce58c  08 00 a0 e1                                      mov r0, r8
006ce590  68 70 cd e5                                      strb r7, [sp, #0x68]
006ce594  b3 00 f1 eb                                      bl #0x30e868
006ce598  05 10 a0 e1                                      mov r1, r5
006ce59c  ac 00 8d e2                                      add r0, sp, #0xac
006ce5a0  f6 22 fb eb                                      bl #0x597180
006ce5a4  ac 30 9d e5                                      ldr r3, [sp, #0xac]
006ce5a8  68 70 cd e5                                      strb r7, [sp, #0x68]
006ce5ac  08 20 a0 e1                                      mov r2, r8
006ce5b0  58 30 8d e5                                      str r3, [sp, #0x58]
006ce5b4  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006ce5b8  06 00 a0 e1                                      mov r0, r6
006ce5bc  01 10 a0 e3                                      mov r1, #1
006ce5c0  5c 30 8d e5                                      str r3, [sp, #0x5c]
006ce5c4  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
006ce5c8  04 a0 a0 e1                                      mov sl, r4
006ce5cc  04 80 a0 e3                                      mov r8, #4
006ce5d0  60 30 8d e5                                      str r3, [sp, #0x60]
006ce5d4  00 30 96 e5                                      ldr r3, [r6]
006ce5d8  0f e0 a0 e1                                      mov lr, pc
006ce5dc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006ce5e0  c4 30 8d e2                                      add r3, sp, #0xc4
006ce5e4  18 30 8d e5                                      str r3, [sp, #0x18]
006ce5e8  c0 30 8d e2                                      add r3, sp, #0xc0
006ce5ec  1c 30 8d e5                                      str r3, [sp, #0x1c]
006ce5f0  6c 30 8d e2                                      add r3, sp, #0x6c
006ce5f4  20 30 8d e5                                      str r3, [sp, #0x20]
006ce5f8  b8 30 8d e2                                      add r3, sp, #0xb8
006ce5fc  07 90 a0 e1                                      mov sb, r7
006ce600  bc b0 8d e2                                      add fp, sp, #0xbc
006ce604  07 50 a0 e1                                      mov r5, r7
006ce608  24 30 8d e5                                      str r3, [sp, #0x24]
006ce60c  01 00 00 ea                                      b #0x6ce618
006ce610  08 90 a0 e1                                      mov sb, r8
006ce614  04 80 88 e2                                      add r8, r8, #4
006ce618  bc 50 8d e5                                      str r5, [sp, #0xbc]
006ce61c  5a 3f a0 e3                                      mov r3, #0x168
006ce620  b3 10 94 e1                                      ldrh r1, [r4, r3]
006ce624  4c 01 9a e5                                      ldr r0, [sl, #0x14c]
006ce628  05 20 a0 e1                                      mov r2, r5
006ce62c  0b 30 a0 e1                                      mov r3, fp
006ce630  21 fd fb eb                                      bl #0x5cdabc
006ce634  00 00 50 e3                                      cmp r0, #0
006ce638  49 00 00 0a                                      beq #0x6ce764
006ce63c  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
006ce640  00 00 53 e3                                      cmp r3, #0
006ce644  4a 00 00 0a                                      beq #0x6ce774
006ce648  64 31 94 e5                                      ldr r3, [r4, #0x164]
006ce64c  07 11 84 e0                                      add r1, r4, r7, lsl #2
006ce650  53 1f 81 e2                                      add r1, r1, #0x14c
006ce654  00 00 53 e3                                      cmp r3, #0
006ce658  c4 30 8d e5                                      str r3, [sp, #0xc4]
006ce65c  00 20 93 15                                      ldrne r2, [r3]
006ce660  06 00 a0 e1                                      mov r0, r6
006ce664  01 20 82 12                                      addne r2, r2, #1
006ce668  00 20 83 15                                      strne r2, [r3]
006ce66c  18 20 9d e5                                      ldr r2, [sp, #0x18]
006ce670  26 41 f2 eb                                      bl #0x35eb10
006ce674  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
006ce678  00 00 53 e3                                      cmp r3, #0
006ce67c  0a 00 00 0a                                      beq #0x6ce6ac
006ce680  00 20 93 e5                                      ldr r2, [r3]
006ce684  01 20 42 e2                                      sub r2, r2, #1
006ce688  00 00 52 e3                                      cmp r2, #0
006ce68c  00 20 83 e5                                      str r2, [r3]
006ce690  05 00 00 1a                                      bne #0x6ce6ac
006ce694  03 00 a0 e1                                      mov r0, r3
006ce698  14 30 8d e5                                      str r3, [sp, #0x14]
006ce69c  2c 44 fc eb                                      bl #0x5df754
006ce6a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006ce6a4  03 00 a0 e1                                      mov r0, r3
006ce6a8  00 ff f0 eb                                      bl #0x30e2b0
006ce6ac  48 31 94 e5                                      ldr r3, [r4, #0x148]
006ce6b0  06 00 a0 e1                                      mov r0, r6
006ce6b4  00 00 53 e3                                      cmp r3, #0
006ce6b8  c0 30 8d e5                                      str r3, [sp, #0xc0]
006ce6bc  00 20 93 15                                      ldrne r2, [r3]
006ce6c0  01 20 82 12                                      addne r2, r2, #1
006ce6c4  00 20 83 15                                      strne r2, [r3]
006ce6c8  08 30 69 e0                                      rsb r3, sb, r8
006ce6cc  74 30 8d e5                                      str r3, [sp, #0x74]
006ce6d0  ff 30 a0 e3                                      mov r3, #0xff
006ce6d4  b0 38 cd e1                                      strh r3, [sp, #0x80]
006ce6d8  05 30 a0 e3                                      mov r3, #5
006ce6dc  78 90 8d e5                                      str sb, [sp, #0x78]
006ce6e0  6c 50 8d e5                                      str r5, [sp, #0x6c]
006ce6e4  70 50 8d e5                                      str r5, [sp, #0x70]
006ce6e8  7c 80 8d e5                                      str r8, [sp, #0x7c]
006ce6ec  b2 38 cd e1                                      strh r3, [sp, #0x82]
006ce6f0  00 30 96 e5                                      ldr r3, [r6]
006ce6f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006ce6f8  20 20 9d e5                                      ldr r2, [sp, #0x20]
006ce6fc  58 c0 93 e5                                      ldr ip, [r3, #0x58]
006ce700  24 30 9d e5                                      ldr r3, [sp, #0x24]
006ce704  b8 50 8d e5                                      str r5, [sp, #0xb8]
006ce708  00 30 8d e5                                      str r3, [sp]
006ce70c  05 30 a0 e1                                      mov r3, r5
006ce710  3c ff 2f e1                                      blx ip
006ce714  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
006ce718  00 00 50 e3                                      cmp r0, #0
006ce71c  00 00 00 0a                                      beq #0x6ce724
006ce720  97 3b f1 eb                                      bl #0x31d584
006ce724  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006ce728  00 00 50 e3                                      cmp r0, #0
006ce72c  00 00 00 0a                                      beq #0x6ce734
006ce730  93 3b f1 eb                                      bl #0x31d584
006ce734  c0 90 9d e5                                      ldr sb, [sp, #0xc0]
006ce738  00 00 59 e3                                      cmp sb, #0
006ce73c  08 00 00 0a                                      beq #0x6ce764
006ce740  00 30 99 e5                                      ldr r3, [sb]
006ce744  01 30 43 e2                                      sub r3, r3, #1
006ce748  00 00 53 e3                                      cmp r3, #0
006ce74c  00 30 89 e5                                      str r3, [sb]
006ce750  03 00 00 1a                                      bne #0x6ce764
006ce754  09 00 a0 e1                                      mov r0, sb
006ce758  af 48 fb eb                                      bl #0x5a0a1c
006ce75c  09 00 a0 e1                                      mov r0, sb
006ce760  d2 fe f0 eb                                      bl #0x30e2b0
006ce764  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
006ce768  00 00 50 e3                                      cmp r0, #0
006ce76c  00 00 00 0a                                      beq #0x6ce774
006ce770  83 3b f1 eb                                      bl #0x31d584
006ce774  01 70 87 e2                                      add r7, r7, #1
006ce778  06 00 57 e3                                      cmp r7, #6
006ce77c  04 a0 8a e2                                      add sl, sl, #4
006ce780  a2 ff ff 1a                                      bne #0x6ce610
006ce784  75 ff ff ea                                      b #0x6ce560
006ce788  00 30 95 e5                                      ldr r3, [r5]
006ce78c  05 00 a0 e1                                      mov r0, r5
006ce790  0f e0 a0 e1                                      mov lr, pc
006ce794  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006ce798  05 10 a0 e1                                      mov r1, r5
006ce79c  00 70 a0 e1                                      mov r7, r0
006ce7a0  94 00 8d e2                                      add r0, sp, #0x94
006ce7a4  75 22 fb eb                                      bl #0x597180
006ce7a8  04 00 97 e5                                      ldr r0, [r7, #4]
006ce7ac  98 10 9d e5                                      ldr r1, [sp, #0x98]
006ce7b0  fd fe f0 eb                                      bl #0x30e3ac
006ce7b4  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
006ce7b8  00 80 a0 e1                                      mov r8, r0
006ce7bc  08 00 97 e5                                      ldr r0, [r7, #8]
006ce7c0  f9 fe f0 eb                                      bl #0x30e3ac
006ce7c4  94 10 9d e5                                      ldr r1, [sp, #0x94]
006ce7c8  00 50 a0 e1                                      mov r5, r0
006ce7cc  00 00 97 e5                                      ldr r0, [r7]
006ce7d0  f5 fe f0 eb                                      bl #0x30e3ac
006ce7d4  a0 00 8d e5                                      str r0, [sp, #0xa0]
006ce7d8  a0 00 8d e2                                      add r0, sp, #0xa0
006ce7dc  a4 80 8d e5                                      str r8, [sp, #0xa4]
006ce7e0  a8 50 8d e5                                      str r5, [sp, #0xa8]
006ce7e4  3d 40 f2 eb                                      bl #0x35e8e0
006ce7e8  a0 70 9d e5                                      ldr r7, [sp, #0xa0]
006ce7ec  00 10 a0 e3                                      mov r1, #0
006ce7f0  07 00 a0 e1                                      mov r0, r7
006ce7f4  c4 ff f0 eb                                      bl #0x30e70c
006ce7f8  a4 a0 9d e5                                      ldr sl, [sp, #0xa4]
006ce7fc  00 00 50 e3                                      cmp r0, #0
006ce800  00 10 a0 e3                                      mov r1, #0
006ce804  0a 00 a0 e1                                      mov r0, sl
006ce808  07 50 a0 01                                      moveq r5, r7
006ce80c  02 51 87 12                                      addne r5, r7, #0x80000000
006ce810  bd ff f0 eb                                      bl #0x30e70c
006ce814  a8 90 9d e5                                      ldr sb, [sp, #0xa8]
006ce818  00 00 50 e3                                      cmp r0, #0
006ce81c  00 10 a0 e3                                      mov r1, #0
006ce820  09 00 a0 e1                                      mov r0, sb
006ce824  0a 80 a0 01                                      moveq r8, sl
006ce828  02 81 8a 12                                      addne r8, sl, #0x80000000
006ce82c  b6 ff f0 eb                                      bl #0x30e70c
006ce830  00 00 50 e3                                      cmp r0, #0
006ce834  02 31 89 12                                      addne r3, sb, #0x80000000
006ce838  05 00 a0 e1                                      mov r0, r5
006ce83c  08 10 a0 e1                                      mov r1, r8
006ce840  09 b0 a0 01                                      moveq fp, sb
006ce844  03 b0 a0 11                                      movne fp, r3
006ce848  19 ff f0 eb                                      bl #0x30e4b4
006ce84c  00 00 50 e3                                      cmp r0, #0
006ce850  04 00 00 0a                                      beq #0x6ce868
006ce854  05 00 a0 e1                                      mov r0, r5
006ce858  0b 10 a0 e1                                      mov r1, fp
006ce85c  14 ff f0 eb                                      bl #0x30e4b4
006ce860  00 00 50 e3                                      cmp r0, #0
006ce864  42 00 00 1a                                      bne #0x6ce974
006ce868  05 00 a0 e1                                      mov r0, r5
006ce86c  08 10 a0 e1                                      mov r1, r8
006ce870  4d 00 f1 eb                                      bl #0x30e9ac
006ce874  00 00 50 e3                                      cmp r0, #0
006ce878  0b 00 00 0a                                      beq #0x6ce8ac
006ce87c  08 00 a0 e1                                      mov r0, r8
006ce880  0b 10 a0 e1                                      mov r1, fp
006ce884  0a ff f0 eb                                      bl #0x30e4b4
006ce888  00 00 50 e3                                      cmp r0, #0
006ce88c  06 00 00 0a                                      beq #0x6ce8ac
006ce890  0a 00 a0 e1                                      mov r0, sl
006ce894  00 10 a0 e3                                      mov r1, #0
006ce898  96 fe f0 eb                                      bl #0x30e2f8
006ce89c  00 00 50 e3                                      cmp r0, #0
006ce8a0  04 30 a0 13                                      movne r3, #4
006ce8a4  05 30 a0 03                                      moveq r3, #5
006ce8a8  05 00 00 ea                                      b #0x6ce8c4
006ce8ac  05 00 a0 e1                                      mov r0, r5
006ce8b0  0b 10 a0 e1                                      mov r1, fp
006ce8b4  3c 00 f1 eb                                      bl #0x30e9ac
006ce8b8  00 00 50 e3                                      cmp r0, #0
006ce8bc  33 00 00 1a                                      bne #0x6ce990
006ce8c0  00 30 a0 e3                                      mov r3, #0
006ce8c4  00 50 a0 e3                                      mov r5, #0
006ce8c8  c8 70 8d e2                                      add r7, sp, #0xc8
006ce8cc  0c 50 27 e5                                      str r5, [r7, #-0xc]!
006ce8d0  03 31 84 e0                                      add r3, r4, r3, lsl #2
006ce8d4  5a 2f a0 e3                                      mov r2, #0x168
006ce8d8  b2 10 94 e1                                      ldrh r1, [r4, r2]
006ce8dc  4c 01 93 e5                                      ldr r0, [r3, #0x14c]
006ce8e0  05 20 a0 e1                                      mov r2, r5
006ce8e4  07 30 a0 e1                                      mov r3, r7
006ce8e8  73 fc fb eb                                      bl #0x5cdabc
006ce8ec  05 00 50 e1                                      cmp r0, r5
006ce8f0  1a 00 00 0a                                      beq #0x6ce960
006ce8f4  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
006ce8f8  00 00 53 e3                                      cmp r3, #0
006ce8fc  17 ff ff 0a                                      beq #0x6ce560
006ce900  cc 20 96 e5                                      ldr r2, [r6, #0xcc]
006ce904  00 10 e0 e3                                      mvn r1, #0
006ce908  06 00 a0 e1                                      mov r0, r6
006ce90c  04 20 12 e5                                      ldr r2, [r2, #-4]
006ce910  84 10 8d e5                                      str r1, [sp, #0x84]
006ce914  88 50 8d e5                                      str r5, [sp, #0x88]
006ce918  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006ce91c  10 20 92 e5                                      ldr r2, [r2, #0x10]
006ce920  28 50 8d e5                                      str r5, [sp, #0x28]
006ce924  01 10 41 e2                                      sub r1, r1, #1
006ce928  8c 10 8d e5                                      str r1, [sp, #0x8c]
006ce92c  90 20 8d e5                                      str r2, [sp, #0x90]
006ce930  2c 50 8d e5                                      str r5, [sp, #0x2c]
006ce934  20 e0 93 e5                                      ldr lr, [r3, #0x20]
006ce938  24 c0 93 e5                                      ldr ip, [r3, #0x24]
006ce93c  07 10 a0 e1                                      mov r1, r7
006ce940  84 20 8d e2                                      add r2, sp, #0x84
006ce944  28 30 8d e2                                      add r3, sp, #0x28
006ce948  30 e0 8d e5                                      str lr, [sp, #0x30]
006ce94c  34 c0 8d e5                                      str ip, [sp, #0x34]
006ce950  08 50 8d e5                                      str r5, [sp, #8]
006ce954  00 50 8d e5                                      str r5, [sp]
006ce958  04 50 8d e5                                      str r5, [sp, #4]
006ce95c  03 44 fb eb                                      bl #0x59f970
006ce960  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
006ce964  00 00 50 e3                                      cmp r0, #0
006ce968  fc fe ff 0a                                      beq #0x6ce560
006ce96c  04 3b f1 eb                                      bl #0x31d584
006ce970  fa fe ff ea                                      b #0x6ce560
006ce974  07 00 a0 e1                                      mov r0, r7
006ce978  00 10 a0 e3                                      mov r1, #0
006ce97c  5d fe f0 eb                                      bl #0x30e2f8
006ce980  00 00 50 e3                                      cmp r0, #0
006ce984  02 30 a0 03                                      moveq r3, #2
006ce988  cd ff ff 0a                                      beq #0x6ce8c4
006ce98c  cb ff ff ea                                      b #0x6ce8c0
006ce990  08 00 a0 e1                                      mov r0, r8
006ce994  0b 10 a0 e1                                      mov r1, fp
006ce998  03 00 f1 eb                                      bl #0x30e9ac
006ce99c  00 00 50 e3                                      cmp r0, #0
006ce9a0  c6 ff ff 0a                                      beq #0x6ce8c0
006ce9a4  09 00 a0 e1                                      mov r0, sb
006ce9a8  00 10 a0 e3                                      mov r1, #0
006ce9ac  51 fe f0 eb                                      bl #0x30e2f8
006ce9b0  00 00 50 e3                                      cmp r0, #0
006ce9b4  01 30 a0 13                                      movne r3, #1
006ce9b8  03 30 a0 03                                      moveq r3, #3
006ce9bc  c0 ff ff ea                                      b #0x6ce8c4

; FUNCTION 0x006cea98, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNodeD1Ev
; demangled: glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode()
; decoder-mode: arm
006cea98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cea9c  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
006ceaa0  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
006ceaa4  64 51 90 e5                                      ldr r5, [r0, #0x164]
006ceaa8  07 70 8f e0                                      add r7, pc, r7
006ceaac  03 30 97 e7                                      ldr r3, [r7, r3]
006ceab0  00 00 55 e3                                      cmp r5, #0
006ceab4  00 40 a0 e1                                      mov r4, r0
006ceab8  49 2f 83 e2                                      add r2, r3, #0x124
006ceabc  1c 30 83 e2                                      add r3, r3, #0x1c
006ceac0  00 30 80 e5                                      str r3, [r0]
006ceac4  6c 21 80 e5                                      str r2, [r0, #0x16c]
006ceac8  04 00 00 0a                                      beq #0x6ceae0
006ceacc  00 30 95 e5                                      ldr r3, [r5]
006cead0  01 30 43 e2                                      sub r3, r3, #1
006cead4  00 00 53 e3                                      cmp r3, #0
006cead8  00 30 85 e5                                      str r3, [r5]
006ceadc  1a 00 00 0a                                      beq #0x6ceb4c
006ceae0  53 6f 84 e2                                      add r6, r4, #0x14c
006ceae4  59 5f 84 e2                                      add r5, r4, #0x164
006ceae8  04 50 45 e2                                      sub r5, r5, #4
006ceaec  05 00 a0 e1                                      mov r0, r5
006ceaf0  3c 08 f1 eb                                      bl #0x310be8
006ceaf4  06 00 55 e1                                      cmp r5, r6
006ceaf8  fa ff ff 1a                                      bne #0x6ceae8
006ceafc  48 51 94 e5                                      ldr r5, [r4, #0x148]
006ceb00  00 00 55 e3                                      cmp r5, #0
006ceb04  04 00 00 0a                                      beq #0x6ceb1c
006ceb08  00 30 95 e5                                      ldr r3, [r5]
006ceb0c  01 30 43 e2                                      sub r3, r3, #1
006ceb10  00 00 53 e3                                      cmp r3, #0
006ceb14  00 30 85 e5                                      str r3, [r5]
006ceb18  06 00 00 0a                                      beq #0x6ceb38
006ceb1c  44 10 9f e5                                      ldr r1, [pc, #0x44]
006ceb20  04 00 a0 e1                                      mov r0, r4
006ceb24  01 10 97 e7                                      ldr r1, [r7, r1]
006ceb28  04 10 81 e2                                      add r1, r1, #4
006ceb2c  62 28 fb eb                                      bl #0x598cbc
006ceb30  04 00 a0 e1                                      mov r0, r4
006ceb34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006ceb38  05 00 a0 e1                                      mov r0, r5
006ceb3c  b6 47 fb eb                                      bl #0x5a0a1c
006ceb40  05 00 a0 e1                                      mov r0, r5
006ceb44  d9 fd f0 eb                                      bl #0x30e2b0
006ceb48  f3 ff ff ea                                      b #0x6ceb1c
006ceb4c  05 00 a0 e1                                      mov r0, r5
006ceb50  ff 42 fc eb                                      bl #0x5df754
006ceb54  05 00 a0 e1                                      mov r0, r5
006ceb58  d4 fd f0 eb                                      bl #0x30e2b0
006ceb5c  df ff ff ea                                      b #0x6ceae0
; mapping-symbol data/literal pool
006ceb60  e8 5f 2c 00 94 2f 00 00 48 3e 00 00              .byte 0xe8, 0x5f, 0x2c, 0x00, 0x94, 0x2f, 0x00, 0x00, 0x48, 0x3e, 0x00, 0x00

; FUNCTION 0x006ceb6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZTv0_n24_N6glitch5scene16CSkyBoxSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode()
; decoder-mode: arm
006ceb6c  00 30 90 e5                                      ldr r3, [r0]
006ceb70  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006ceb74  03 00 80 e0                                      add r0, r0, r3
006ceb78  c6 ff ff ea                                      b #0x6cea98

; FUNCTION 0x006ceb7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZTv0_n12_N6glitch5scene16CSkyBoxSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode()
; decoder-mode: arm
006ceb7c  00 30 90 e5                                      ldr r3, [r0]
006ceb80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006ceb84  03 00 80 e0                                      add r0, r0, r3
006ceb88  c2 ff ff ea                                      b #0x6cea98

; FUNCTION 0x006ceb8c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNodeD0Ev
; demangled: glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode()
; decoder-mode: arm
006ceb8c  10 40 2d e9                                      push {r4, lr}
006ceb90  00 40 a0 e1                                      mov r4, r0
006ceb94  bf ff ff eb                                      bl #0x6cea98
006ceb98  04 00 a0 e1                                      mov r0, r4
006ceb9c  c3 fd f0 eb                                      bl #0x30e2b0
006ceba0  04 00 a0 e1                                      mov r0, r4
006ceba4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ceba8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZTv0_n24_N6glitch5scene16CSkyBoxSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode()
; decoder-mode: arm
006ceba8  00 30 90 e5                                      ldr r3, [r0]
006cebac  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006cebb0  03 00 80 e0                                      add r0, r0, r3
006cebb4  f4 ff ff ea                                      b #0x6ceb8c

; FUNCTION 0x006cebb8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZTv0_n12_N6glitch5scene16CSkyBoxSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CSkyBoxSceneNode::~CSkyBoxSceneNode()
; decoder-mode: arm
006cebb8  00 30 90 e5                                      ldr r3, [r0]
006cebbc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006cebc0  03 00 80 e0                                      add r0, r0, r3
006cebc4  f0 ff ff ea                                      b #0x6ceb8c

; FUNCTION 0x006cebc8, declared_size=2460, range_size=2460, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNodeC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS2_8ITextureEEESA_SA_SA_SA_SA_i
; demangled: glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, int)
; decoder-mode: arm
006cebc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cebcc  e4 d0 4d e2                                      sub sp, sp, #0xe4
006cebd0  8c e0 8d e2                                      add lr, sp, #0x8c
006cebd4  00 c0 a0 e3                                      mov ip, #0
006cebd8  fe 65 a0 e3                                      mov r6, #0x3f800000
006cebdc  01 70 a0 e1                                      mov r7, r1
006cebe0  1c 20 8d e5                                      str r2, [sp, #0x1c]
006cebe4  04 10 81 e2                                      add r1, r1, #4
006cebe8  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
006cebec  00 e0 8d e5                                      str lr, [sp]
006cebf0  03 50 a0 e1                                      mov r5, r3
006cebf4  9c e0 8d e2                                      add lr, sp, #0x9c
006cebf8  a8 30 8d e2                                      add r3, sp, #0xa8
006cebfc  00 40 a0 e1                                      mov r4, r0
006cec00  94 c0 8d e5                                      str ip, [sp, #0x94]
006cec04  04 e0 8d e5                                      str lr, [sp, #4]
006cec08  a8 c0 8d e5                                      str ip, [sp, #0xa8]
006cec0c  ac c0 8d e5                                      str ip, [sp, #0xac]
006cec10  b0 c0 8d e5                                      str ip, [sp, #0xb0]
006cec14  8c c0 8d e5                                      str ip, [sp, #0x8c]
006cec18  90 c0 8d e5                                      str ip, [sp, #0x90]
006cec1c  98 60 8d e5                                      str r6, [sp, #0x98]
006cec20  9c 60 8d e5                                      str r6, [sp, #0x9c]
006cec24  a0 60 8d e5                                      str r6, [sp, #0xa0]
006cec28  a4 60 8d e5                                      str r6, [sp, #0xa4]
006cec2c  23 29 fb eb                                      bl #0x5990c0
006cec30  00 30 97 e5                                      ldr r3, [r7]
006cec34  20 89 9f e5                                      ldr r8, [pc, #0x920]
006cec38  bf 04 a0 e3                                      mov r0, #0xbf000000
006cec3c  00 30 84 e5                                      str r3, [r4]
006cec40  10 10 97 e5                                      ldr r1, [r7, #0x10]
006cec44  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006cec48  02 05 80 e2                                      add r0, r0, #0x800000
006cec4c  00 c0 a0 e3                                      mov ip, #0
006cec50  03 10 84 e7                                      str r1, [r4, r3]
006cec54  00 30 94 e5                                      ldr r3, [r4]
006cec58  14 70 97 e5                                      ldr r7, [r7, #0x14]
006cec5c  0c 20 a0 e1                                      mov r2, ip
006cec60  0c e0 13 e5                                      ldr lr, [r3, #-0xc]
006cec64  53 1f 84 e2                                      add r1, r4, #0x14c
006cec68  0c 30 a0 e1                                      mov r3, ip
006cec6c  0e 70 84 e7                                      str r7, [r4, lr]
006cec70  08 80 8f e0                                      add r8, pc, r8
006cec74  38 01 84 e5                                      str r0, [r4, #0x138]
006cec78  44 61 84 e5                                      str r6, [r4, #0x144]
006cec7c  30 01 84 e5                                      str r0, [r4, #0x130]
006cec80  34 01 84 e5                                      str r0, [r4, #0x134]
006cec84  3c 61 84 e5                                      str r6, [r4, #0x13c]
006cec88  40 61 84 e5                                      str r6, [r4, #0x140]
006cec8c  48 c1 84 e5                                      str ip, [r4, #0x148]
006cec90  02 30 81 e7                                      str r3, [r1, r2]
006cec94  04 20 82 e2                                      add r2, r2, #4
006cec98  18 00 52 e3                                      cmp r2, #0x18
006cec9c  fb ff ff 1a                                      bne #0x6cec90
006ceca0  5a 2f a0 e3                                      mov r2, #0x168
006ceca4  00 10 e0 e3                                      mvn r1, #0
006ceca8  b2 10 84 e1                                      strh r1, [r4, r2]
006cecac  04 00 a0 e1                                      mov r0, r4
006cecb0  03 10 a0 e1                                      mov r1, r3
006cecb4  64 31 84 e5                                      str r3, [r4, #0x164]
006cecb8  37 21 fb eb                                      bl #0x59719c
006cecbc  00 30 a0 e3                                      mov r3, #0
006cecc0  38 31 84 e5                                      str r3, [r4, #0x138]
006cecc4  3c 31 84 e5                                      str r3, [r4, #0x13c]
006cecc8  40 31 84 e5                                      str r3, [r4, #0x140]
006ceccc  44 31 84 e5                                      str r3, [r4, #0x144]
006cecd0  30 31 84 e5                                      str r3, [r4, #0x130]
006cecd4  34 31 84 e5                                      str r3, [r4, #0x134]
006cecd8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006cecdc  0b 10 a0 e3                                      mov r1, #0xb
006cece0  dc 90 92 e5                                      ldr sb, [r2, #0xdc]
006cece4  09 00 a0 e1                                      mov r0, sb
006cece8  8e 27 fc eb                                      bl #0x5d8b28
006cecec  18 30 99 e5                                      ldr r3, [sb, #0x18]
006cecf0  1c 20 99 e5                                      ldr r2, [sb, #0x1c]
006cecf4  02 20 63 e0                                      rsb r2, r3, r2
006cecf8  c2 01 50 e1                                      cmp r0, r2, asr #3
006cecfc  80 31 83 30                                      addlo r3, r3, r0, lsl #3
006ced00  58 38 9f 25                                      ldrhs r3, [pc, #0x858]
006ced04  03 30 98 27                                      ldrhs r3, [r8, r3]
006ced08  00 00 93 e5                                      ldr r0, [r3]
006ced0c  02 10 a0 e3                                      mov r1, #2
006ced10  00 20 a0 e3                                      mov r2, #0
006ced14  00 00 50 e3                                      cmp r0, #0
006ced18  dc 00 8d e5                                      str r0, [sp, #0xdc]
006ced1c  00 30 90 15                                      ldrne r3, [r0]
006ced20  00 60 a0 e3                                      mov r6, #0
006ced24  d8 80 8d e2                                      add r8, sp, #0xd8
006ced28  01 30 83 12                                      addne r3, r3, #1
006ced2c  00 30 80 15                                      strne r3, [r0]
006ced30  dc 00 9d 15                                      ldrne r0, [sp, #0xdc]
006ced34  73 00 fc eb                                      bl #0x5cef08
006ced38  5a 3f a0 e3                                      mov r3, #0x168
006ced3c  b3 00 84 e1                                      strh r0, [r4, r3]
006ced40  00 20 a0 e3                                      mov r2, #0
006ced44  06 10 a0 e3                                      mov r1, #6
006ced48  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
006ced4c  6d 00 fc eb                                      bl #0x5cef08
006ced50  14 31 9d e5                                      ldr r3, [sp, #0x114]
006ced54  d4 c0 8d e2                                      add ip, sp, #0xd4
006ced58  00 a0 a0 e1                                      mov sl, r0
006ced5c  00 30 93 e5                                      ldr r3, [r3]
006ced60  54 70 8d e2                                      add r7, sp, #0x54
006ced64  00 b0 e0 e3                                      mvn fp, #0
006ced68  54 30 8d e5                                      str r3, [sp, #0x54]
006ced6c  00 00 53 e3                                      cmp r3, #0
006ced70  04 20 93 15                                      ldrne r2, [r3, #4]
006ced74  01 20 82 12                                      addne r2, r2, #1
006ced78  04 20 83 15                                      strne r2, [r3, #4]
006ced7c  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
006ced80  00 30 93 e5                                      ldr r3, [r3]
006ced84  58 30 8d e5                                      str r3, [sp, #0x58]
006ced88  00 00 53 e3                                      cmp r3, #0
006ced8c  04 20 93 15                                      ldrne r2, [r3, #4]
006ced90  01 20 82 12                                      addne r2, r2, #1
006ced94  04 20 83 15                                      strne r2, [r3, #4]
006ced98  18 31 9d e5                                      ldr r3, [sp, #0x118]
006ced9c  00 30 93 e5                                      ldr r3, [r3]
006ceda0  5c 30 8d e5                                      str r3, [sp, #0x5c]
006ceda4  00 00 53 e3                                      cmp r3, #0
006ceda8  04 20 93 15                                      ldrne r2, [r3, #4]
006cedac  01 20 82 12                                      addne r2, r2, #1
006cedb0  04 20 83 15                                      strne r2, [r3, #4]
006cedb4  10 31 9d e5                                      ldr r3, [sp, #0x110]
006cedb8  00 30 93 e5                                      ldr r3, [r3]
006cedbc  60 30 8d e5                                      str r3, [sp, #0x60]
006cedc0  00 00 53 e3                                      cmp r3, #0
006cedc4  04 20 93 15                                      ldrne r2, [r3, #4]
006cedc8  01 20 82 12                                      addne r2, r2, #1
006cedcc  04 20 83 15                                      strne r2, [r3, #4]
006cedd0  00 30 95 e5                                      ldr r3, [r5]
006cedd4  04 50 a0 e1                                      mov r5, r4
006cedd8  64 30 8d e5                                      str r3, [sp, #0x64]
006ceddc  00 00 53 e3                                      cmp r3, #0
006cede0  04 20 93 15                                      ldrne r2, [r3, #4]
006cede4  01 20 82 12                                      addne r2, r2, #1
006cede8  04 20 83 15                                      strne r2, [r3, #4]
006cedec  08 31 9d e5                                      ldr r3, [sp, #0x108]
006cedf0  00 30 93 e5                                      ldr r3, [r3]
006cedf4  00 00 53 e3                                      cmp r3, #0
006cedf8  68 30 8d e5                                      str r3, [sp, #0x68]
006cedfc  04 20 93 15                                      ldrne r2, [r3, #4]
006cee00  01 20 82 12                                      addne r2, r2, #1
006cee04  04 20 83 15                                      strne r2, [r3, #4]
006cee08  bc 30 8d e2                                      add r3, sp, #0xbc
006cee0c  14 30 8d e5                                      str r3, [sp, #0x14]
006cee10  18 c0 8d e5                                      str ip, [sp, #0x18]
006cee14  09 10 a0 e1                                      mov r1, sb
006cee18  0b 20 a0 e3                                      mov r2, #0xb
006cee1c  08 00 a0 e1                                      mov r0, r8
006cee20  32 2b fc eb                                      bl #0x5d9af0
006cee24  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
006cee28  06 e1 a0 e1                                      lsl lr, r6, #2
006cee2c  bc 20 8d e5                                      str r2, [sp, #0xbc]
006cee30  00 00 52 e3                                      cmp r2, #0
006cee34  00 30 92 15                                      ldrne r3, [r2]
006cee38  01 30 83 12                                      addne r3, r3, #1
006cee3c  00 30 82 15                                      strne r3, [r2]
006cee40  4c 31 95 e5                                      ldr r3, [r5, #0x14c]
006cee44  bc 20 9d 15                                      ldrne r2, [sp, #0xbc]
006cee48  10 e0 8d e5                                      str lr, [sp, #0x10]
006cee4c  bc 30 8d e5                                      str r3, [sp, #0xbc]
006cee50  14 00 9d e5                                      ldr r0, [sp, #0x14]
006cee54  4c 21 85 e5                                      str r2, [r5, #0x14c]
006cee58  62 07 f1 eb                                      bl #0x310be8
006cee5c  08 00 a0 e1                                      mov r0, r8
006cee60  60 07 f1 eb                                      bl #0x310be8
006cee64  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
006cee68  01 60 86 e2                                      add r6, r6, #1
006cee6c  00 00 53 e2                                      subs r0, r3, #0
006cee70  13 00 00 0a                                      beq #0x6ceec4
006cee74  7c fd ff eb                                      bl #0x6ce46c
006cee78  10 10 9d e5                                      ldr r1, [sp, #0x10]
006cee7c  5a 2f a0 e3                                      mov r2, #0x168
006cee80  4c 01 95 e5                                      ldr r0, [r5, #0x14c]
006cee84  01 30 87 e0                                      add r3, r7, r1
006cee88  b2 10 94 e1                                      ldrh r1, [r4, r2]
006cee8c  00 20 a0 e3                                      mov r2, #0
006cee90  23 f9 fb eb                                      bl #0x5cd324
006cee94  ff 3f 0f e3                                      movw r3, #0xffff
006cee98  03 00 5a e1                                      cmp sl, r3
006cee9c  0a 10 a0 e1                                      mov r1, sl
006ceea0  00 20 a0 e3                                      mov r2, #0
006ceea4  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ceea8  05 00 00 0a                                      beq #0x6ceec4
006ceeac  4c 01 95 e5                                      ldr r0, [r5, #0x14c]
006ceeb0  d4 b0 cd e5                                      strb fp, [sp, #0xd4]
006ceeb4  d5 b0 cd e5                                      strb fp, [sp, #0xd5]
006ceeb8  d6 b0 cd e5                                      strb fp, [sp, #0xd6]
006ceebc  d7 b0 cd e5                                      strb fp, [sp, #0xd7]
006ceec0  9c ef fb eb                                      bl #0x5cad38
006ceec4  06 00 56 e3                                      cmp r6, #6
006ceec8  04 50 85 e2                                      add r5, r5, #4
006ceecc  d0 ff ff 1a                                      bne #0x6cee14
006ceed0  18 50 87 e2                                      add r5, r7, #0x18
006ceed4  04 00 15 e5                                      ldr r0, [r5, #-4]
006ceed8  00 00 50 e3                                      cmp r0, #0
006ceedc  00 00 00 0a                                      beq #0x6ceee4
006ceee0  a7 39 f1 eb                                      bl #0x31d584
006ceee4  04 50 45 e2                                      sub r5, r5, #4
006ceee8  07 00 55 e1                                      cmp r5, r7
006ceeec  f8 ff ff 1a                                      bne #0x6ceed4
006ceef0  00 20 a0 e3                                      mov r2, #0
006ceef4  d0 00 8d e2                                      add r0, sp, #0xd0
006ceef8  01 10 a0 e3                                      mov r1, #1
006ceefc  40 49 fb eb                                      bl #0x5a1404
006cef00  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
006cef04  00 00 53 e3                                      cmp r3, #0
006cef08  00 20 93 15                                      ldrne r2, [r3]
006cef0c  01 20 82 12                                      addne r2, r2, #1
006cef10  00 20 83 15                                      strne r2, [r3]
006cef14  48 51 94 e5                                      ldr r5, [r4, #0x148]
006cef18  48 31 84 e5                                      str r3, [r4, #0x148]
006cef1c  00 00 55 e3                                      cmp r5, #0
006cef20  04 00 00 0a                                      beq #0x6cef38
006cef24  00 30 95 e5                                      ldr r3, [r5]
006cef28  01 30 43 e2                                      sub r3, r3, #1
006cef2c  00 00 53 e3                                      cmp r3, #0
006cef30  00 30 85 e5                                      str r3, [r5]
006cef34  78 01 00 0a                                      beq #0x6cf51c
006cef38  d0 50 9d e5                                      ldr r5, [sp, #0xd0]
006cef3c  00 00 55 e3                                      cmp r5, #0
006cef40  04 00 00 0a                                      beq #0x6cef58
006cef44  00 30 95 e5                                      ldr r3, [r5]
006cef48  01 30 43 e2                                      sub r3, r3, #1
006cef4c  00 00 53 e3                                      cmp r3, #0
006cef50  00 30 85 e5                                      str r3, [r5]
006cef54  6b 01 00 0a                                      beq #0x6cf508
006cef58  01 10 a0 e3                                      mov r1, #1
006cef5c  08 10 8d e5                                      str r1, [sp, #8]
006cef60  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006cef64  00 30 a0 e3                                      mov r3, #0
006cef68  00 30 8d e5                                      str r3, [sp]
006cef6c  04 30 8d e5                                      str r3, [sp, #4]
006cef70  03 20 a0 e1                                      mov r2, r3
006cef74  00 c0 91 e5                                      ldr ip, [r1]
006cef78  cc 00 8d e2                                      add r0, sp, #0xcc
006cef7c  0f e0 a0 e1                                      mov lr, pc
006cef80  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006cef84  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006cef88  48 01 94 e5                                      ldr r0, [r4, #0x148]
006cef8c  03 e0 a0 e3                                      mov lr, #3
006cef90  00 00 53 e3                                      cmp r3, #0
006cef94  7c 30 8d e5                                      str r3, [sp, #0x7c]
006cef98  04 20 93 15                                      ldrne r2, [r3, #4]
006cef9c  14 10 80 e2                                      add r1, r0, #0x14
006cefa0  01 20 82 12                                      addne r2, r2, #1
006cefa4  04 20 83 15                                      strne r2, [r3, #4]
006cefa8  08 30 a0 e3                                      mov r3, #8
006cefac  80 30 8d e5                                      str r3, [sp, #0x80]
006cefb0  06 30 a0 e3                                      mov r3, #6
006cefb4  84 30 8d e5                                      str r3, [sp, #0x84]
006cefb8  7c 20 8d e2                                      add r2, sp, #0x7c
006cefbc  14 30 a0 e3                                      mov r3, #0x14
006cefc0  b8 e8 cd e1                                      strh lr, [sp, #0x88]
006cefc4  ba 38 cd e1                                      strh r3, [sp, #0x8a]
006cefc8  41 fd ff eb                                      bl #0x6ce4d4
006cefcc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006cefd0  00 00 50 e3                                      cmp r0, #0
006cefd4  00 00 00 0a                                      beq #0x6cefdc
006cefd8  69 39 f1 eb                                      bl #0x31d584
006cefdc  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006cefe0  48 01 94 e5                                      ldr r0, [r4, #0x148]
006cefe4  02 c0 a0 e3                                      mov ip, #2
006cefe8  00 00 53 e3                                      cmp r3, #0
006cefec  6c 30 8d e5                                      str r3, [sp, #0x6c]
006ceff0  04 20 93 15                                      ldrne r2, [r3, #4]
006ceff4  24 10 80 e2                                      add r1, r0, #0x24
006ceff8  14 e0 a0 e3                                      mov lr, #0x14
006ceffc  01 20 82 12                                      addne r2, r2, #1
006cf000  04 20 83 15                                      strne r2, [r3, #4]
006cf004  00 30 a0 e3                                      mov r3, #0
006cf008  70 30 8d e5                                      str r3, [sp, #0x70]
006cf00c  6c 20 8d e2                                      add r2, sp, #0x6c
006cf010  06 30 a0 e3                                      mov r3, #6
006cf014  74 30 8d e5                                      str r3, [sp, #0x74]
006cf018  b8 c7 cd e1                                      strh ip, [sp, #0x78]
006cf01c  ba e7 cd e1                                      strh lr, [sp, #0x7a]
006cf020  2b fd ff eb                                      bl #0x6ce4d4
006cf024  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006cf028  00 00 50 e3                                      cmp r0, #0
006cf02c  00 00 00 0a                                      beq #0x6cf034
006cf030  53 39 f1 eb                                      bl #0x31d584
006cf034  48 31 94 e5                                      ldr r3, [r4, #0x148]
006cf038  18 20 a0 e3                                      mov r2, #0x18
006cf03c  00 10 a0 e3                                      mov r1, #0
006cf040  08 20 83 e5                                      str r2, [r3, #8]
006cf044  1e 0e a0 e3                                      mov r0, #0x1e0
006cf048  cc 50 9d e5                                      ldr r5, [sp, #0xcc]
006cf04c  55 94 f9 eb                                      bl #0x5341a8
006cf050  01 30 a0 e3                                      mov r3, #1
006cf054  00 20 a0 e1                                      mov r2, r0
006cf058  1e 1e a0 e3                                      mov r1, #0x1e0
006cf05c  05 00 a0 e1                                      mov r0, r5
006cf060  13 4b fb eb                                      bl #0x5a1cb4
006cf064  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006cf068  04 10 a0 e3                                      mov r1, #4
006cf06c  00 00 50 e3                                      cmp r0, #0
006cf070  b4 00 8d e5                                      str r0, [sp, #0xb4]
006cf074  04 30 90 15                                      ldrne r3, [r0, #4]
006cf078  01 30 83 12                                      addne r3, r3, #1
006cf07c  04 30 80 15                                      strne r3, [r0, #4]
006cf080  cc 00 9d 15                                      ldrne r0, [sp, #0xcc]
006cf084  59 4a fb eb                                      bl #0x5a19f0
006cf088  48 31 94 e5                                      ldr r3, [r4, #0x148]
006cf08c  b8 00 8d e5                                      str r0, [sp, #0xb8]
006cf090  dc 10 8d e2                                      add r1, sp, #0xdc
006cf094  00 00 53 e3                                      cmp r3, #0
006cf098  c8 30 8d e5                                      str r3, [sp, #0xc8]
006cf09c  00 20 93 15                                      ldrne r2, [r3]
006cf0a0  00 50 a0 e1                                      mov r5, r0
006cf0a4  c4 00 8d e2                                      add r0, sp, #0xc4
006cf0a8  01 20 82 12                                      addne r2, r2, #1
006cf0ac  00 20 83 15                                      strne r2, [r3]
006cf0b0  c8 20 8d e2                                      add r2, sp, #0xc8
006cf0b4  4c 10 8d e5                                      str r1, [sp, #0x4c]
006cf0b8  59 41 fc eb                                      bl #0x5df624
006cf0bc  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
006cf0c0  00 00 53 e3                                      cmp r3, #0
006cf0c4  00 20 93 15                                      ldrne r2, [r3]
006cf0c8  01 20 82 12                                      addne r2, r2, #1
006cf0cc  00 20 83 15                                      strne r2, [r3]
006cf0d0  64 61 94 e5                                      ldr r6, [r4, #0x164]
006cf0d4  64 31 84 e5                                      str r3, [r4, #0x164]
006cf0d8  00 00 56 e3                                      cmp r6, #0
006cf0dc  04 00 00 0a                                      beq #0x6cf0f4
006cf0e0  00 30 96 e5                                      ldr r3, [r6]
006cf0e4  01 30 43 e2                                      sub r3, r3, #1
006cf0e8  00 00 53 e3                                      cmp r3, #0
006cf0ec  00 30 86 e5                                      str r3, [r6]
006cf0f0  ff 00 00 0a                                      beq #0x6cf4f4
006cf0f4  c4 60 9d e5                                      ldr r6, [sp, #0xc4]
006cf0f8  00 00 56 e3                                      cmp r6, #0
006cf0fc  04 00 00 0a                                      beq #0x6cf114
006cf100  00 30 96 e5                                      ldr r3, [r6]
006cf104  01 30 43 e2                                      sub r3, r3, #1
006cf108  00 00 53 e3                                      cmp r3, #0
006cf10c  00 30 86 e5                                      str r3, [r6]
006cf110  f2 00 00 0a                                      beq #0x6cf4e0
006cf114  c8 60 9d e5                                      ldr r6, [sp, #0xc8]
006cf118  00 00 56 e3                                      cmp r6, #0
006cf11c  04 00 00 0a                                      beq #0x6cf134
006cf120  00 30 96 e5                                      ldr r3, [r6]
006cf124  01 30 43 e2                                      sub r3, r3, #1
006cf128  00 00 53 e3                                      cmp r3, #0
006cf12c  00 30 86 e5                                      str r3, [r6]
006cf130  e5 00 00 0a                                      beq #0x6cf4cc
006cf134  a0 c0 85 e2                                      add ip, r5, #0xa0
006cf138  48 c0 8d e5                                      str ip, [sp, #0x48]
006cf13c  b4 c0 85 e2                                      add ip, r5, #0xb4
006cf140  44 c0 8d e5                                      str ip, [sp, #0x44]
006cf144  c8 c0 85 e2                                      add ip, r5, #0xc8
006cf148  40 c0 8d e5                                      str ip, [sp, #0x40]
006cf14c  dc c0 85 e2                                      add ip, r5, #0xdc
006cf150  3c c0 8d e5                                      str ip, [sp, #0x3c]
006cf154  f0 c0 85 e2                                      add ip, r5, #0xf0
006cf158  38 c0 8d e5                                      str ip, [sp, #0x38]
006cf15c  41 cf 85 e2                                      add ip, r5, #0x104
006cf160  34 c0 8d e5                                      str ip, [sp, #0x34]
006cf164  46 cf 85 e2                                      add ip, r5, #0x118
006cf168  30 c0 8d e5                                      str ip, [sp, #0x30]
006cf16c  4b cf 85 e2                                      add ip, r5, #0x12c
006cf170  2c c0 8d e5                                      str ip, [sp, #0x2c]
006cf174  05 cd 85 e2                                      add ip, r5, #0x140
006cf178  28 c0 8d e5                                      str ip, [sp, #0x28]
006cf17c  55 cf 85 e2                                      add ip, r5, #0x154
006cf180  24 c0 8d e5                                      str ip, [sp, #0x24]
006cf184  5a cf 85 e2                                      add ip, r5, #0x168
006cf188  20 c0 8d e5                                      str ip, [sp, #0x20]
006cf18c  5f cf 85 e2                                      add ip, r5, #0x17c
006cf190  1c c0 8d e5                                      str ip, [sp, #0x1c]
006cf194  19 ce 85 e2                                      add ip, r5, #0x190
006cf198  18 c0 8d e5                                      str ip, [sp, #0x18]
006cf19c  c1 34 a0 e3                                      mov r3, #0xc1000000
006cf1a0  69 cf 85 e2                                      add ip, r5, #0x1a4
006cf1a4  41 24 a0 e3                                      mov r2, #0x41000000
006cf1a8  02 36 83 e2                                      add r3, r3, #0x200000
006cf1ac  02 26 82 e2                                      add r2, r2, #0x200000
006cf1b0  fe 15 a0 e3                                      mov r1, #0x3f800000
006cf1b4  00 00 a0 e3                                      mov r0, #0
006cf1b8  14 c0 8d e5                                      str ip, [sp, #0x14]
006cf1bc  8c e0 85 e2                                      add lr, r5, #0x8c
006cf1c0  14 b0 85 e2                                      add fp, r5, #0x14
006cf1c4  28 90 85 e2                                      add sb, r5, #0x28
006cf1c8  3c a0 85 e2                                      add sl, r5, #0x3c
006cf1cc  50 80 85 e2                                      add r8, r5, #0x50
006cf1d0  64 70 85 e2                                      add r7, r5, #0x64
006cf1d4  78 60 85 e2                                      add r6, r5, #0x78
006cf1d8  6e cf 85 e2                                      add ip, r5, #0x1b8
006cf1dc  10 c0 8d e5                                      str ip, [sp, #0x10]
006cf1e0  00 10 85 e5                                      str r1, [r5]
006cf1e4  04 10 85 e5                                      str r1, [r5, #4]
006cf1e8  08 30 85 e5                                      str r3, [r5, #8]
006cf1ec  0c 30 85 e5                                      str r3, [r5, #0xc]
006cf1f0  10 30 85 e5                                      str r3, [r5, #0x10]
006cf1f4  14 00 85 e5                                      str r0, [r5, #0x14]
006cf1f8  10 30 8b e5                                      str r3, [fp, #0x10]
006cf1fc  04 10 8b e5                                      str r1, [fp, #4]
006cf200  08 20 8b e5                                      str r2, [fp, #8]
006cf204  0c 30 8b e5                                      str r3, [fp, #0xc]
006cf208  28 00 85 e5                                      str r0, [r5, #0x28]
006cf20c  10 30 89 e5                                      str r3, [sb, #0x10]
006cf210  04 00 89 e5                                      str r0, [sb, #4]
006cf214  08 20 89 e5                                      str r2, [sb, #8]
006cf218  0c 20 89 e5                                      str r2, [sb, #0xc]
006cf21c  3c 10 85 e5                                      str r1, [r5, #0x3c]
006cf220  10 30 8a e5                                      str r3, [sl, #0x10]
006cf224  04 00 8a e5                                      str r0, [sl, #4]
006cf228  08 30 8a e5                                      str r3, [sl, #8]
006cf22c  0c 20 8a e5                                      str r2, [sl, #0xc]
006cf230  50 10 85 e5                                      str r1, [r5, #0x50]
006cf234  10 30 88 e5                                      str r3, [r8, #0x10]
006cf238  04 10 88 e5                                      str r1, [r8, #4]
006cf23c  08 20 88 e5                                      str r2, [r8, #8]
006cf240  0c 30 88 e5                                      str r3, [r8, #0xc]
006cf244  64 00 85 e5                                      str r0, [r5, #0x64]
006cf248  10 20 87 e5                                      str r2, [r7, #0x10]
006cf24c  04 10 87 e5                                      str r1, [r7, #4]
006cf250  08 20 87 e5                                      str r2, [r7, #8]
006cf254  0c 30 87 e5                                      str r3, [r7, #0xc]
006cf258  78 00 85 e5                                      str r0, [r5, #0x78]
006cf25c  04 00 86 e5                                      str r0, [r6, #4]
006cf260  08 20 86 e5                                      str r2, [r6, #8]
006cf264  0c 20 86 e5                                      str r2, [r6, #0xc]
006cf268  10 20 86 e5                                      str r2, [r6, #0x10]
006cf26c  8c 10 85 e5                                      str r1, [r5, #0x8c]
006cf270  10 30 8e e5                                      str r3, [lr, #0x10]
006cf274  04 00 8e e5                                      str r0, [lr, #4]
006cf278  08 20 8e e5                                      str r2, [lr, #8]
006cf27c  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf280  a0 10 85 e5                                      str r1, [r5, #0xa0]
006cf284  48 e0 9d e5                                      ldr lr, [sp, #0x48]
006cf288  73 cf 85 e2                                      add ip, r5, #0x1cc
006cf28c  10 20 8e e5                                      str r2, [lr, #0x10]
006cf290  04 10 8e e5                                      str r1, [lr, #4]
006cf294  08 20 8e e5                                      str r2, [lr, #8]
006cf298  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf29c  b4 00 85 e5                                      str r0, [r5, #0xb4]
006cf2a0  44 e0 9d e5                                      ldr lr, [sp, #0x44]
006cf2a4  10 20 8e e5                                      str r2, [lr, #0x10]
006cf2a8  04 10 8e e5                                      str r1, [lr, #4]
006cf2ac  08 30 8e e5                                      str r3, [lr, #8]
006cf2b0  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf2b4  c8 00 85 e5                                      str r0, [r5, #0xc8]
006cf2b8  40 e0 9d e5                                      ldr lr, [sp, #0x40]
006cf2bc  10 20 8e e5                                      str r2, [lr, #0x10]
006cf2c0  04 00 8e e5                                      str r0, [lr, #4]
006cf2c4  08 30 8e e5                                      str r3, [lr, #8]
006cf2c8  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf2cc  dc 10 85 e5                                      str r1, [r5, #0xdc]
006cf2d0  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
006cf2d4  10 20 8e e5                                      str r2, [lr, #0x10]
006cf2d8  04 00 8e e5                                      str r0, [lr, #4]
006cf2dc  08 20 8e e5                                      str r2, [lr, #8]
006cf2e0  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf2e4  f0 10 85 e5                                      str r1, [r5, #0xf0]
006cf2e8  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006cf2ec  10 20 8e e5                                      str r2, [lr, #0x10]
006cf2f0  04 10 8e e5                                      str r1, [lr, #4]
006cf2f4  08 30 8e e5                                      str r3, [lr, #8]
006cf2f8  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf2fc  04 01 85 e5                                      str r0, [r5, #0x104]
006cf300  34 e0 9d e5                                      ldr lr, [sp, #0x34]
006cf304  04 10 8e e5                                      str r1, [lr, #4]
006cf308  10 30 8e e5                                      str r3, [lr, #0x10]
006cf30c  08 30 8e e5                                      str r3, [lr, #8]
006cf310  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf314  18 01 85 e5                                      str r0, [r5, #0x118]
006cf318  30 e0 9d e5                                      ldr lr, [sp, #0x30]
006cf31c  10 30 8e e5                                      str r3, [lr, #0x10]
006cf320  04 00 8e e5                                      str r0, [lr, #4]
006cf324  08 30 8e e5                                      str r3, [lr, #8]
006cf328  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf32c  2c 11 85 e5                                      str r1, [r5, #0x12c]
006cf330  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
006cf334  10 20 8e e5                                      str r2, [lr, #0x10]
006cf338  04 00 8e e5                                      str r0, [lr, #4]
006cf33c  08 30 8e e5                                      str r3, [lr, #8]
006cf340  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf344  40 11 85 e5                                      str r1, [r5, #0x140]
006cf348  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006cf34c  10 30 8e e5                                      str r3, [lr, #0x10]
006cf350  04 10 8e e5                                      str r1, [lr, #4]
006cf354  08 20 8e e5                                      str r2, [lr, #8]
006cf358  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf35c  54 01 85 e5                                      str r0, [r5, #0x154]
006cf360  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006cf364  10 20 8e e5                                      str r2, [lr, #0x10]
006cf368  04 10 8e e5                                      str r1, [lr, #4]
006cf36c  08 20 8e e5                                      str r2, [lr, #8]
006cf370  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf374  68 01 85 e5                                      str r0, [r5, #0x168]
006cf378  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006cf37c  10 20 8e e5                                      str r2, [lr, #0x10]
006cf380  04 00 8e e5                                      str r0, [lr, #4]
006cf384  08 30 8e e5                                      str r3, [lr, #8]
006cf388  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf38c  7c 11 85 e5                                      str r1, [r5, #0x17c]
006cf390  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006cf394  10 30 8e e5                                      str r3, [lr, #0x10]
006cf398  04 00 8e e5                                      str r0, [lr, #4]
006cf39c  08 30 8e e5                                      str r3, [lr, #8]
006cf3a0  0c 20 8e e5                                      str r2, [lr, #0xc]
006cf3a4  90 01 85 e5                                      str r0, [r5, #0x190]
006cf3a8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006cf3ac  04 00 8e e5                                      str r0, [lr, #4]
006cf3b0  10 20 8e e5                                      str r2, [lr, #0x10]
006cf3b4  08 20 8e e5                                      str r2, [lr, #8]
006cf3b8  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf3bc  a4 11 85 e5                                      str r1, [r5, #0x1a4]
006cf3c0  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006cf3c4  10 30 8e e5                                      str r3, [lr, #0x10]
006cf3c8  04 00 8e e5                                      str r0, [lr, #4]
006cf3cc  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf3d0  08 20 8e e5                                      str r2, [lr, #8]
006cf3d4  b8 11 85 e5                                      str r1, [r5, #0x1b8]
006cf3d8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
006cf3dc  10 30 8e e5                                      str r3, [lr, #0x10]
006cf3e0  04 10 8e e5                                      str r1, [lr, #4]
006cf3e4  08 30 8e e5                                      str r3, [lr, #8]
006cf3e8  0c 30 8e e5                                      str r3, [lr, #0xc]
006cf3ec  cc 01 85 e5                                      str r0, [r5, #0x1cc]
006cf3f0  04 10 8c e5                                      str r1, [ip, #4]
006cf3f4  0c 30 8c e5                                      str r3, [ip, #0xc]
006cf3f8  08 30 8c e5                                      str r3, [ip, #8]
006cf3fc  10 20 8c e5                                      str r2, [ip, #0x10]
006cf400  b4 00 8d e2                                      add r0, sp, #0xb4
006cf404  00 30 a0 e3                                      mov r3, #0
006cf408  c0 10 8d e2                                      add r1, sp, #0xc0
006cf40c  c0 30 8d e5                                      str r3, [sp, #0xc0]
006cf410  6a fd ff eb                                      bl #0x6ce9c0
006cf414  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
006cf418  00 00 50 e3                                      cmp r0, #0
006cf41c  00 00 00 0a                                      beq #0x6cf424
006cf420  57 38 f1 eb                                      bl #0x31d584
006cf424  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006cf428  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006cf42c  08 00 12 e3                                      tst r2, #8
006cf430  01 00 00 0a                                      beq #0x6cf43c
006cf434  02 00 12 e3                                      tst r2, #2
006cf438  07 00 00 0a                                      beq #0x6cf45c
006cf43c  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006cf440  04 00 52 e3                                      cmp r2, #4
006cf444  04 00 00 0a                                      beq #0x6cf45c
006cf448  03 00 a0 e1                                      mov r0, r3
006cf44c  01 10 a0 e3                                      mov r1, #1
006cf450  00 30 93 e5                                      ldr r3, [r3]
006cf454  0f e0 a0 e1                                      mov lr, pc
006cf458  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006cf45c  48 01 94 e5                                      ldr r0, [r4, #0x148]
006cf460  00 10 a0 e3                                      mov r1, #0
006cf464  6e 46 fb eb                                      bl #0x5a0e24
006cf468  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
006cf46c  00 00 53 e3                                      cmp r3, #0
006cf470  08 00 00 0a                                      beq #0x6cf498
006cf474  b4 50 9d e5                                      ldr r5, [sp, #0xb4]
006cf478  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006cf47c  1f 20 03 e2                                      and r2, r3, #0x1f
006cf480  01 00 52 e3                                      cmp r2, #1
006cf484  29 00 00 9a                                      bls #0x6cf530
006cf488  01 20 42 e2                                      sub r2, r2, #1
006cf48c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006cf490  03 30 82 e1                                      orr r3, r2, r3
006cf494  13 30 c5 e5                                      strb r3, [r5, #0x13]
006cf498  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006cf49c  00 00 50 e3                                      cmp r0, #0
006cf4a0  00 00 00 0a                                      beq #0x6cf4a8
006cf4a4  36 38 f1 eb                                      bl #0x31d584
006cf4a8  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006cf4ac  00 00 50 e3                                      cmp r0, #0
006cf4b0  00 00 00 0a                                      beq #0x6cf4b8
006cf4b4  32 38 f1 eb                                      bl #0x31d584
006cf4b8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006cf4bc  7d 0b f2 eb                                      bl #0x3522b8
006cf4c0  04 00 a0 e1                                      mov r0, r4
006cf4c4  e4 d0 8d e2                                      add sp, sp, #0xe4
006cf4c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006cf4cc  06 00 a0 e1                                      mov r0, r6
006cf4d0  51 45 fb eb                                      bl #0x5a0a1c
006cf4d4  06 00 a0 e1                                      mov r0, r6
006cf4d8  74 fb f0 eb                                      bl #0x30e2b0
006cf4dc  14 ff ff ea                                      b #0x6cf134
006cf4e0  06 00 a0 e1                                      mov r0, r6
006cf4e4  9a 40 fc eb                                      bl #0x5df754
006cf4e8  06 00 a0 e1                                      mov r0, r6
006cf4ec  6f fb f0 eb                                      bl #0x30e2b0
006cf4f0  07 ff ff ea                                      b #0x6cf114
006cf4f4  06 00 a0 e1                                      mov r0, r6
006cf4f8  95 40 fc eb                                      bl #0x5df754
006cf4fc  06 00 a0 e1                                      mov r0, r6
006cf500  6a fb f0 eb                                      bl #0x30e2b0
006cf504  fa fe ff ea                                      b #0x6cf0f4
006cf508  05 00 a0 e1                                      mov r0, r5
006cf50c  42 45 fb eb                                      bl #0x5a0a1c
006cf510  05 00 a0 e1                                      mov r0, r5
006cf514  65 fb f0 eb                                      bl #0x30e2b0
006cf518  8e fe ff ea                                      b #0x6cef58
006cf51c  05 00 a0 e1                                      mov r0, r5
006cf520  3d 45 fb eb                                      bl #0x5a0a1c
006cf524  05 00 a0 e1                                      mov r0, r5
006cf528  60 fb f0 eb                                      bl #0x30e2b0
006cf52c  81 fe ff ea                                      b #0x6cef38
006cf530  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006cf534  20 00 13 e3                                      tst r3, #0x20
006cf538  02 00 00 1a                                      bne #0x6cf548
006cf53c  00 30 a0 e3                                      mov r3, #0
006cf540  13 30 c5 e5                                      strb r3, [r5, #0x13]
006cf544  d3 ff ff ea                                      b #0x6cf498
006cf548  00 30 95 e5                                      ldr r3, [r5]
006cf54c  05 00 a0 e1                                      mov r0, r5
006cf550  0f e0 a0 e1                                      mov lr, pc
006cf554  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006cf558  f7 ff ff ea                                      b #0x6cf53c
; mapping-symbol data/literal pool
006cf55c  20 5e 2c 00 dc 30 00 00                          .byte 0x20, 0x5e, 0x2c, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x006cf564, declared_size=2508, range_size=2508, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNodeC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrINS2_8ITextureEEESA_SA_SA_SA_SA_i
; demangled: glitch::scene::CSkyBoxSceneNode::CSkyBoxSceneNode(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, boost::intrusive_ptr<glitch::video::ITexture> const&, int)
; decoder-mode: arm
006cf564  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006cf568  ac 69 9f e5                                      ldr r6, [pc, #0x9ac]
006cf56c  ac e9 9f e5                                      ldr lr, [pc, #0x9ac]
006cf570  ac c9 9f e5                                      ldr ip, [pc, #0x9ac]
006cf574  06 60 8f e0                                      add r6, pc, r6
006cf578  0e e0 96 e7                                      ldr lr, [r6, lr]
006cf57c  0c c0 96 e7                                      ldr ip, [r6, ip]
006cf580  01 70 a0 e3                                      mov r7, #1
006cf584  18 50 9e e5                                      ldr r5, [lr, #0x18]
006cf588  08 c0 8c e2                                      add ip, ip, #8
006cf58c  70 71 80 e5                                      str r7, [r0, #0x170]
006cf590  6c c1 80 e5                                      str ip, [r0, #0x16c]
006cf594  00 50 80 e5                                      str r5, [r0]
006cf598  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
006cf59c  1c 80 9e e5                                      ldr r8, [lr, #0x1c]
006cf5a0  e4 d0 4d e2                                      sub sp, sp, #0xe4
006cf5a4  00 c0 a0 e3                                      mov ip, #0
006cf5a8  05 80 80 e7                                      str r8, [r0, r5]
006cf5ac  1c 10 8d e5                                      str r1, [sp, #0x1c]
006cf5b0  04 10 8e e2                                      add r1, lr, #4
006cf5b4  8c e0 8d e2                                      add lr, sp, #0x8c
006cf5b8  fe 75 a0 e3                                      mov r7, #0x3f800000
006cf5bc  00 e0 8d e5                                      str lr, [sp]
006cf5c0  02 50 a0 e1                                      mov r5, r2
006cf5c4  9c e0 8d e2                                      add lr, sp, #0x9c
006cf5c8  18 21 9d e5                                      ldr r2, [sp, #0x118]
006cf5cc  03 80 a0 e1                                      mov r8, r3
006cf5d0  a8 30 8d e2                                      add r3, sp, #0xa8
006cf5d4  00 40 a0 e1                                      mov r4, r0
006cf5d8  94 c0 8d e5                                      str ip, [sp, #0x94]
006cf5dc  a8 c0 8d e5                                      str ip, [sp, #0xa8]
006cf5e0  ac c0 8d e5                                      str ip, [sp, #0xac]
006cf5e4  b0 c0 8d e5                                      str ip, [sp, #0xb0]
006cf5e8  8c c0 8d e5                                      str ip, [sp, #0x8c]
006cf5ec  90 c0 8d e5                                      str ip, [sp, #0x90]
006cf5f0  04 e0 8d e5                                      str lr, [sp, #4]
006cf5f4  98 70 8d e5                                      str r7, [sp, #0x98]
006cf5f8  9c 70 8d e5                                      str r7, [sp, #0x9c]
006cf5fc  a0 70 8d e5                                      str r7, [sp, #0xa0]
006cf600  a4 70 8d e5                                      str r7, [sp, #0xa4]
006cf604  ad 26 fb eb                                      bl #0x5990c0
006cf608  18 39 9f e5                                      ldr r3, [pc, #0x918]
006cf60c  bf 14 a0 e3                                      mov r1, #0xbf000000
006cf610  02 15 81 e2                                      add r1, r1, #0x800000
006cf614  03 30 96 e7                                      ldr r3, [r6, r3]
006cf618  00 00 a0 e3                                      mov r0, #0
006cf61c  38 11 84 e5                                      str r1, [r4, #0x138]
006cf620  49 cf 83 e2                                      add ip, r3, #0x124
006cf624  1c 30 83 e2                                      add r3, r3, #0x1c
006cf628  00 30 84 e5                                      str r3, [r4]
006cf62c  30 11 84 e5                                      str r1, [r4, #0x130]
006cf630  34 11 84 e5                                      str r1, [r4, #0x134]
006cf634  00 20 a0 e1                                      mov r2, r0
006cf638  6c c1 84 e5                                      str ip, [r4, #0x16c]
006cf63c  44 71 84 e5                                      str r7, [r4, #0x144]
006cf640  3c 71 84 e5                                      str r7, [r4, #0x13c]
006cf644  40 71 84 e5                                      str r7, [r4, #0x140]
006cf648  48 01 84 e5                                      str r0, [r4, #0x148]
006cf64c  53 1f 84 e2                                      add r1, r4, #0x14c
006cf650  00 30 a0 e1                                      mov r3, r0
006cf654  02 30 81 e7                                      str r3, [r1, r2]
006cf658  04 20 82 e2                                      add r2, r2, #4
006cf65c  18 00 52 e3                                      cmp r2, #0x18
006cf660  fb ff ff 1a                                      bne #0x6cf654
006cf664  5a 2f a0 e3                                      mov r2, #0x168
006cf668  00 10 e0 e3                                      mvn r1, #0
006cf66c  b2 10 84 e1                                      strh r1, [r4, r2]
006cf670  04 00 a0 e1                                      mov r0, r4
006cf674  03 10 a0 e1                                      mov r1, r3
006cf678  64 31 84 e5                                      str r3, [r4, #0x164]
006cf67c  c6 1e fb eb                                      bl #0x59719c
006cf680  00 30 a0 e3                                      mov r3, #0
006cf684  38 31 84 e5                                      str r3, [r4, #0x138]
006cf688  3c 31 84 e5                                      str r3, [r4, #0x13c]
006cf68c  40 31 84 e5                                      str r3, [r4, #0x140]
006cf690  44 31 84 e5                                      str r3, [r4, #0x144]
006cf694  30 31 84 e5                                      str r3, [r4, #0x130]
006cf698  34 31 84 e5                                      str r3, [r4, #0x134]
006cf69c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006cf6a0  0b 10 a0 e3                                      mov r1, #0xb
006cf6a4  dc 90 92 e5                                      ldr sb, [r2, #0xdc]
006cf6a8  09 00 a0 e1                                      mov r0, sb
006cf6ac  1d 25 fc eb                                      bl #0x5d8b28
006cf6b0  18 30 99 e5                                      ldr r3, [sb, #0x18]
006cf6b4  1c 20 99 e5                                      ldr r2, [sb, #0x1c]
006cf6b8  02 20 63 e0                                      rsb r2, r3, r2
006cf6bc  c2 01 50 e1                                      cmp r0, r2, asr #3
006cf6c0  80 31 83 30                                      addlo r3, r3, r0, lsl #3
006cf6c4  60 38 9f 25                                      ldrhs r3, [pc, #0x860]
006cf6c8  03 30 96 27                                      ldrhs r3, [r6, r3]
006cf6cc  00 00 93 e5                                      ldr r0, [r3]
006cf6d0  02 10 a0 e3                                      mov r1, #2
006cf6d4  00 20 a0 e3                                      mov r2, #0
006cf6d8  00 00 50 e3                                      cmp r0, #0
006cf6dc  dc 00 8d e5                                      str r0, [sp, #0xdc]
006cf6e0  00 30 90 15                                      ldrne r3, [r0]
006cf6e4  00 60 a0 e3                                      mov r6, #0
006cf6e8  54 70 8d e2                                      add r7, sp, #0x54
006cf6ec  01 30 83 12                                      addne r3, r3, #1
006cf6f0  00 30 80 15                                      strne r3, [r0]
006cf6f4  dc 00 9d 15                                      ldrne r0, [sp, #0xdc]
006cf6f8  02 fe fb eb                                      bl #0x5cef08
006cf6fc  5a 3f a0 e3                                      mov r3, #0x168
006cf700  b3 00 84 e1                                      strh r0, [r4, r3]
006cf704  00 20 a0 e3                                      mov r2, #0
006cf708  06 10 a0 e3                                      mov r1, #6
006cf70c  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
006cf710  fc fd fb eb                                      bl #0x5cef08
006cf714  10 31 9d e5                                      ldr r3, [sp, #0x110]
006cf718  d4 c0 8d e2                                      add ip, sp, #0xd4
006cf71c  00 a0 a0 e1                                      mov sl, r0
006cf720  00 30 93 e5                                      ldr r3, [r3]
006cf724  00 b0 e0 e3                                      mvn fp, #0
006cf728  54 30 8d e5                                      str r3, [sp, #0x54]
006cf72c  00 00 53 e3                                      cmp r3, #0
006cf730  04 20 93 15                                      ldrne r2, [r3, #4]
006cf734  01 20 82 12                                      addne r2, r2, #1
006cf738  04 20 83 15                                      strne r2, [r3, #4]
006cf73c  08 31 9d e5                                      ldr r3, [sp, #0x108]
006cf740  00 30 93 e5                                      ldr r3, [r3]
006cf744  58 30 8d e5                                      str r3, [sp, #0x58]
006cf748  00 00 53 e3                                      cmp r3, #0
006cf74c  04 20 93 15                                      ldrne r2, [r3, #4]
006cf750  01 20 82 12                                      addne r2, r2, #1
006cf754  04 20 83 15                                      strne r2, [r3, #4]
006cf758  14 31 9d e5                                      ldr r3, [sp, #0x114]
006cf75c  00 30 93 e5                                      ldr r3, [r3]
006cf760  5c 30 8d e5                                      str r3, [sp, #0x5c]
006cf764  00 00 53 e3                                      cmp r3, #0
006cf768  04 20 93 15                                      ldrne r2, [r3, #4]
006cf76c  01 20 82 12                                      addne r2, r2, #1
006cf770  04 20 83 15                                      strne r2, [r3, #4]
006cf774  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
006cf778  00 30 93 e5                                      ldr r3, [r3]
006cf77c  60 30 8d e5                                      str r3, [sp, #0x60]
006cf780  00 00 53 e3                                      cmp r3, #0
006cf784  04 20 93 15                                      ldrne r2, [r3, #4]
006cf788  01 20 82 12                                      addne r2, r2, #1
006cf78c  04 20 83 15                                      strne r2, [r3, #4]
006cf790  00 30 95 e5                                      ldr r3, [r5]
006cf794  04 50 a0 e1                                      mov r5, r4
006cf798  00 00 53 e3                                      cmp r3, #0
006cf79c  64 30 8d e5                                      str r3, [sp, #0x64]
006cf7a0  04 20 93 15                                      ldrne r2, [r3, #4]
006cf7a4  01 20 82 12                                      addne r2, r2, #1
006cf7a8  04 20 83 15                                      strne r2, [r3, #4]
006cf7ac  00 30 98 e5                                      ldr r3, [r8]
006cf7b0  d8 80 8d e2                                      add r8, sp, #0xd8
006cf7b4  00 00 53 e3                                      cmp r3, #0
006cf7b8  68 30 8d e5                                      str r3, [sp, #0x68]
006cf7bc  04 20 93 15                                      ldrne r2, [r3, #4]
006cf7c0  01 20 82 12                                      addne r2, r2, #1
006cf7c4  04 20 83 15                                      strne r2, [r3, #4]
006cf7c8  bc 30 8d e2                                      add r3, sp, #0xbc
006cf7cc  14 30 8d e5                                      str r3, [sp, #0x14]
006cf7d0  18 c0 8d e5                                      str ip, [sp, #0x18]
006cf7d4  09 10 a0 e1                                      mov r1, sb
006cf7d8  0b 20 a0 e3                                      mov r2, #0xb
006cf7dc  08 00 a0 e1                                      mov r0, r8
006cf7e0  c2 28 fc eb                                      bl #0x5d9af0
006cf7e4  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
006cf7e8  06 e1 a0 e1                                      lsl lr, r6, #2
006cf7ec  bc 20 8d e5                                      str r2, [sp, #0xbc]
006cf7f0  00 00 52 e3                                      cmp r2, #0
006cf7f4  00 30 92 15                                      ldrne r3, [r2]
006cf7f8  01 30 83 12                                      addne r3, r3, #1
006cf7fc  00 30 82 15                                      strne r3, [r2]
006cf800  4c 31 95 e5                                      ldr r3, [r5, #0x14c]
006cf804  bc 20 9d 15                                      ldrne r2, [sp, #0xbc]
006cf808  10 e0 8d e5                                      str lr, [sp, #0x10]
006cf80c  bc 30 8d e5                                      str r3, [sp, #0xbc]
006cf810  14 00 9d e5                                      ldr r0, [sp, #0x14]
006cf814  4c 21 85 e5                                      str r2, [r5, #0x14c]
006cf818  f2 04 f1 eb                                      bl #0x310be8
006cf81c  08 00 a0 e1                                      mov r0, r8
006cf820  f0 04 f1 eb                                      bl #0x310be8
006cf824  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
006cf828  01 60 86 e2                                      add r6, r6, #1
006cf82c  00 00 53 e2                                      subs r0, r3, #0
006cf830  13 00 00 0a                                      beq #0x6cf884
006cf834  0c fb ff eb                                      bl #0x6ce46c
006cf838  10 10 9d e5                                      ldr r1, [sp, #0x10]
006cf83c  5a 2f a0 e3                                      mov r2, #0x168
006cf840  4c 01 95 e5                                      ldr r0, [r5, #0x14c]
006cf844  01 30 87 e0                                      add r3, r7, r1
006cf848  b2 10 94 e1                                      ldrh r1, [r4, r2]
006cf84c  00 20 a0 e3                                      mov r2, #0
006cf850  b3 f6 fb eb                                      bl #0x5cd324
006cf854  ff 3f 0f e3                                      movw r3, #0xffff
006cf858  03 00 5a e1                                      cmp sl, r3
006cf85c  0a 10 a0 e1                                      mov r1, sl
006cf860  00 20 a0 e3                                      mov r2, #0
006cf864  18 30 9d e5                                      ldr r3, [sp, #0x18]
006cf868  05 00 00 0a                                      beq #0x6cf884
006cf86c  4c 01 95 e5                                      ldr r0, [r5, #0x14c]
006cf870  d4 b0 cd e5                                      strb fp, [sp, #0xd4]
006cf874  d5 b0 cd e5                                      strb fp, [sp, #0xd5]
006cf878  d6 b0 cd e5                                      strb fp, [sp, #0xd6]
006cf87c  d7 b0 cd e5                                      strb fp, [sp, #0xd7]
006cf880  2c ed fb eb                                      bl #0x5cad38
006cf884  06 00 56 e3                                      cmp r6, #6
006cf888  04 50 85 e2                                      add r5, r5, #4
006cf88c  d0 ff ff 1a                                      bne #0x6cf7d4
006cf890  18 50 87 e2                                      add r5, r7, #0x18
006cf894  04 00 15 e5                                      ldr r0, [r5, #-4]
006cf898  00 00 50 e3                                      cmp r0, #0
006cf89c  00 00 00 0a                                      beq #0x6cf8a4
006cf8a0  37 37 f1 eb                                      bl #0x31d584
006cf8a4  04 50 45 e2                                      sub r5, r5, #4
006cf8a8  07 00 55 e1                                      cmp r5, r7
006cf8ac  f8 ff ff 1a                                      bne #0x6cf894
006cf8b0  00 20 a0 e3                                      mov r2, #0
006cf8b4  d0 00 8d e2                                      add r0, sp, #0xd0
006cf8b8  01 10 a0 e3                                      mov r1, #1
006cf8bc  d0 46 fb eb                                      bl #0x5a1404
006cf8c0  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
006cf8c4  00 00 53 e3                                      cmp r3, #0
006cf8c8  00 20 93 15                                      ldrne r2, [r3]
006cf8cc  01 20 82 12                                      addne r2, r2, #1
006cf8d0  00 20 83 15                                      strne r2, [r3]
006cf8d4  48 51 94 e5                                      ldr r5, [r4, #0x148]
006cf8d8  48 31 84 e5                                      str r3, [r4, #0x148]
006cf8dc  00 00 55 e3                                      cmp r5, #0
006cf8e0  04 00 00 0a                                      beq #0x6cf8f8
006cf8e4  00 30 95 e5                                      ldr r3, [r5]
006cf8e8  01 30 43 e2                                      sub r3, r3, #1
006cf8ec  00 00 53 e3                                      cmp r3, #0
006cf8f0  00 30 85 e5                                      str r3, [r5]
006cf8f4  78 01 00 0a                                      beq #0x6cfedc
006cf8f8  d0 50 9d e5                                      ldr r5, [sp, #0xd0]
006cf8fc  00 00 55 e3                                      cmp r5, #0
006cf900  04 00 00 0a                                      beq #0x6cf918
006cf904  00 30 95 e5                                      ldr r3, [r5]
006cf908  01 30 43 e2                                      sub r3, r3, #1
006cf90c  00 00 53 e3                                      cmp r3, #0
006cf910  00 30 85 e5                                      str r3, [r5]
006cf914  6b 01 00 0a                                      beq #0x6cfec8
006cf918  01 10 a0 e3                                      mov r1, #1
006cf91c  08 10 8d e5                                      str r1, [sp, #8]
006cf920  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006cf924  00 30 a0 e3                                      mov r3, #0
006cf928  00 30 8d e5                                      str r3, [sp]
006cf92c  04 30 8d e5                                      str r3, [sp, #4]
006cf930  03 20 a0 e1                                      mov r2, r3
006cf934  00 c0 91 e5                                      ldr ip, [r1]
006cf938  cc 00 8d e2                                      add r0, sp, #0xcc
006cf93c  0f e0 a0 e1                                      mov lr, pc
006cf940  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006cf944  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006cf948  48 01 94 e5                                      ldr r0, [r4, #0x148]
006cf94c  03 e0 a0 e3                                      mov lr, #3
006cf950  00 00 53 e3                                      cmp r3, #0
006cf954  7c 30 8d e5                                      str r3, [sp, #0x7c]
006cf958  04 20 93 15                                      ldrne r2, [r3, #4]
006cf95c  14 10 80 e2                                      add r1, r0, #0x14
006cf960  01 20 82 12                                      addne r2, r2, #1
006cf964  04 20 83 15                                      strne r2, [r3, #4]
006cf968  08 30 a0 e3                                      mov r3, #8
006cf96c  80 30 8d e5                                      str r3, [sp, #0x80]
006cf970  06 30 a0 e3                                      mov r3, #6
006cf974  84 30 8d e5                                      str r3, [sp, #0x84]
006cf978  7c 20 8d e2                                      add r2, sp, #0x7c
006cf97c  14 30 a0 e3                                      mov r3, #0x14
006cf980  b8 e8 cd e1                                      strh lr, [sp, #0x88]
006cf984  ba 38 cd e1                                      strh r3, [sp, #0x8a]
006cf988  d1 fa ff eb                                      bl #0x6ce4d4
006cf98c  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006cf990  00 00 50 e3                                      cmp r0, #0
006cf994  00 00 00 0a                                      beq #0x6cf99c
006cf998  f9 36 f1 eb                                      bl #0x31d584
006cf99c  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006cf9a0  48 01 94 e5                                      ldr r0, [r4, #0x148]
006cf9a4  02 c0 a0 e3                                      mov ip, #2
006cf9a8  00 00 53 e3                                      cmp r3, #0
006cf9ac  6c 30 8d e5                                      str r3, [sp, #0x6c]
006cf9b0  04 20 93 15                                      ldrne r2, [r3, #4]
006cf9b4  24 10 80 e2                                      add r1, r0, #0x24
006cf9b8  14 e0 a0 e3                                      mov lr, #0x14
006cf9bc  01 20 82 12                                      addne r2, r2, #1
006cf9c0  04 20 83 15                                      strne r2, [r3, #4]
006cf9c4  00 30 a0 e3                                      mov r3, #0
006cf9c8  70 30 8d e5                                      str r3, [sp, #0x70]
006cf9cc  6c 20 8d e2                                      add r2, sp, #0x6c
006cf9d0  06 30 a0 e3                                      mov r3, #6
006cf9d4  74 30 8d e5                                      str r3, [sp, #0x74]
006cf9d8  b8 c7 cd e1                                      strh ip, [sp, #0x78]
006cf9dc  ba e7 cd e1                                      strh lr, [sp, #0x7a]
006cf9e0  bb fa ff eb                                      bl #0x6ce4d4
006cf9e4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006cf9e8  00 00 50 e3                                      cmp r0, #0
006cf9ec  00 00 00 0a                                      beq #0x6cf9f4
006cf9f0  e3 36 f1 eb                                      bl #0x31d584
006cf9f4  48 31 94 e5                                      ldr r3, [r4, #0x148]
006cf9f8  18 20 a0 e3                                      mov r2, #0x18
006cf9fc  00 10 a0 e3                                      mov r1, #0
006cfa00  08 20 83 e5                                      str r2, [r3, #8]
006cfa04  1e 0e a0 e3                                      mov r0, #0x1e0
006cfa08  cc 50 9d e5                                      ldr r5, [sp, #0xcc]
006cfa0c  e5 91 f9 eb                                      bl #0x5341a8
006cfa10  01 30 a0 e3                                      mov r3, #1
006cfa14  00 20 a0 e1                                      mov r2, r0
006cfa18  1e 1e a0 e3                                      mov r1, #0x1e0
006cfa1c  05 00 a0 e1                                      mov r0, r5
006cfa20  a3 48 fb eb                                      bl #0x5a1cb4
006cfa24  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006cfa28  04 10 a0 e3                                      mov r1, #4
006cfa2c  00 00 50 e3                                      cmp r0, #0
006cfa30  b4 00 8d e5                                      str r0, [sp, #0xb4]
006cfa34  04 30 90 15                                      ldrne r3, [r0, #4]
006cfa38  01 30 83 12                                      addne r3, r3, #1
006cfa3c  04 30 80 15                                      strne r3, [r0, #4]
006cfa40  cc 00 9d 15                                      ldrne r0, [sp, #0xcc]
006cfa44  e9 47 fb eb                                      bl #0x5a19f0
006cfa48  48 31 94 e5                                      ldr r3, [r4, #0x148]
006cfa4c  b8 00 8d e5                                      str r0, [sp, #0xb8]
006cfa50  dc 10 8d e2                                      add r1, sp, #0xdc
006cfa54  00 00 53 e3                                      cmp r3, #0
006cfa58  c8 30 8d e5                                      str r3, [sp, #0xc8]
006cfa5c  00 20 93 15                                      ldrne r2, [r3]
006cfa60  00 50 a0 e1                                      mov r5, r0
006cfa64  c4 00 8d e2                                      add r0, sp, #0xc4
006cfa68  01 20 82 12                                      addne r2, r2, #1
006cfa6c  00 20 83 15                                      strne r2, [r3]
006cfa70  c8 20 8d e2                                      add r2, sp, #0xc8
006cfa74  4c 10 8d e5                                      str r1, [sp, #0x4c]
006cfa78  e9 3e fc eb                                      bl #0x5df624
006cfa7c  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
006cfa80  00 00 53 e3                                      cmp r3, #0
006cfa84  00 20 93 15                                      ldrne r2, [r3]
006cfa88  01 20 82 12                                      addne r2, r2, #1
006cfa8c  00 20 83 15                                      strne r2, [r3]
006cfa90  64 61 94 e5                                      ldr r6, [r4, #0x164]
006cfa94  64 31 84 e5                                      str r3, [r4, #0x164]
006cfa98  00 00 56 e3                                      cmp r6, #0
006cfa9c  04 00 00 0a                                      beq #0x6cfab4
006cfaa0  00 30 96 e5                                      ldr r3, [r6]
006cfaa4  01 30 43 e2                                      sub r3, r3, #1
006cfaa8  00 00 53 e3                                      cmp r3, #0
006cfaac  00 30 86 e5                                      str r3, [r6]
006cfab0  ff 00 00 0a                                      beq #0x6cfeb4
006cfab4  c4 60 9d e5                                      ldr r6, [sp, #0xc4]
006cfab8  00 00 56 e3                                      cmp r6, #0
006cfabc  04 00 00 0a                                      beq #0x6cfad4
006cfac0  00 30 96 e5                                      ldr r3, [r6]
006cfac4  01 30 43 e2                                      sub r3, r3, #1
006cfac8  00 00 53 e3                                      cmp r3, #0
006cfacc  00 30 86 e5                                      str r3, [r6]
006cfad0  f2 00 00 0a                                      beq #0x6cfea0
006cfad4  c8 60 9d e5                                      ldr r6, [sp, #0xc8]
006cfad8  00 00 56 e3                                      cmp r6, #0
006cfadc  04 00 00 0a                                      beq #0x6cfaf4
006cfae0  00 30 96 e5                                      ldr r3, [r6]
006cfae4  01 30 43 e2                                      sub r3, r3, #1
006cfae8  00 00 53 e3                                      cmp r3, #0
006cfaec  00 30 86 e5                                      str r3, [r6]
006cfaf0  e5 00 00 0a                                      beq #0x6cfe8c
006cfaf4  a0 c0 85 e2                                      add ip, r5, #0xa0
006cfaf8  48 c0 8d e5                                      str ip, [sp, #0x48]
006cfafc  b4 c0 85 e2                                      add ip, r5, #0xb4
006cfb00  44 c0 8d e5                                      str ip, [sp, #0x44]
006cfb04  c8 c0 85 e2                                      add ip, r5, #0xc8
006cfb08  40 c0 8d e5                                      str ip, [sp, #0x40]
006cfb0c  dc c0 85 e2                                      add ip, r5, #0xdc
006cfb10  3c c0 8d e5                                      str ip, [sp, #0x3c]
006cfb14  f0 c0 85 e2                                      add ip, r5, #0xf0
006cfb18  38 c0 8d e5                                      str ip, [sp, #0x38]
006cfb1c  41 cf 85 e2                                      add ip, r5, #0x104
006cfb20  34 c0 8d e5                                      str ip, [sp, #0x34]
006cfb24  46 cf 85 e2                                      add ip, r5, #0x118
006cfb28  30 c0 8d e5                                      str ip, [sp, #0x30]
006cfb2c  4b cf 85 e2                                      add ip, r5, #0x12c
006cfb30  2c c0 8d e5                                      str ip, [sp, #0x2c]
006cfb34  05 cd 85 e2                                      add ip, r5, #0x140
006cfb38  28 c0 8d e5                                      str ip, [sp, #0x28]
006cfb3c  55 cf 85 e2                                      add ip, r5, #0x154
006cfb40  24 c0 8d e5                                      str ip, [sp, #0x24]
006cfb44  5a cf 85 e2                                      add ip, r5, #0x168
006cfb48  20 c0 8d e5                                      str ip, [sp, #0x20]
006cfb4c  5f cf 85 e2                                      add ip, r5, #0x17c
006cfb50  1c c0 8d e5                                      str ip, [sp, #0x1c]
006cfb54  19 ce 85 e2                                      add ip, r5, #0x190
006cfb58  18 c0 8d e5                                      str ip, [sp, #0x18]
006cfb5c  c1 34 a0 e3                                      mov r3, #0xc1000000
006cfb60  69 cf 85 e2                                      add ip, r5, #0x1a4
006cfb64  41 24 a0 e3                                      mov r2, #0x41000000
006cfb68  02 36 83 e2                                      add r3, r3, #0x200000
006cfb6c  02 26 82 e2                                      add r2, r2, #0x200000
006cfb70  fe 15 a0 e3                                      mov r1, #0x3f800000
006cfb74  00 00 a0 e3                                      mov r0, #0
006cfb78  14 c0 8d e5                                      str ip, [sp, #0x14]
006cfb7c  8c e0 85 e2                                      add lr, r5, #0x8c
006cfb80  14 b0 85 e2                                      add fp, r5, #0x14
006cfb84  28 90 85 e2                                      add sb, r5, #0x28
006cfb88  3c a0 85 e2                                      add sl, r5, #0x3c
006cfb8c  50 80 85 e2                                      add r8, r5, #0x50
006cfb90  64 70 85 e2                                      add r7, r5, #0x64
006cfb94  78 60 85 e2                                      add r6, r5, #0x78
006cfb98  6e cf 85 e2                                      add ip, r5, #0x1b8
006cfb9c  10 c0 8d e5                                      str ip, [sp, #0x10]
006cfba0  00 10 85 e5                                      str r1, [r5]
006cfba4  04 10 85 e5                                      str r1, [r5, #4]
006cfba8  08 30 85 e5                                      str r3, [r5, #8]
006cfbac  0c 30 85 e5                                      str r3, [r5, #0xc]
006cfbb0  10 30 85 e5                                      str r3, [r5, #0x10]
006cfbb4  14 00 85 e5                                      str r0, [r5, #0x14]
006cfbb8  10 30 8b e5                                      str r3, [fp, #0x10]
006cfbbc  04 10 8b e5                                      str r1, [fp, #4]
006cfbc0  08 20 8b e5                                      str r2, [fp, #8]
006cfbc4  0c 30 8b e5                                      str r3, [fp, #0xc]
006cfbc8  28 00 85 e5                                      str r0, [r5, #0x28]
006cfbcc  10 30 89 e5                                      str r3, [sb, #0x10]
006cfbd0  04 00 89 e5                                      str r0, [sb, #4]
006cfbd4  08 20 89 e5                                      str r2, [sb, #8]
006cfbd8  0c 20 89 e5                                      str r2, [sb, #0xc]
006cfbdc  3c 10 85 e5                                      str r1, [r5, #0x3c]
006cfbe0  10 30 8a e5                                      str r3, [sl, #0x10]
006cfbe4  04 00 8a e5                                      str r0, [sl, #4]
006cfbe8  08 30 8a e5                                      str r3, [sl, #8]
006cfbec  0c 20 8a e5                                      str r2, [sl, #0xc]
006cfbf0  50 10 85 e5                                      str r1, [r5, #0x50]
006cfbf4  10 30 88 e5                                      str r3, [r8, #0x10]
006cfbf8  04 10 88 e5                                      str r1, [r8, #4]
006cfbfc  08 20 88 e5                                      str r2, [r8, #8]
006cfc00  0c 30 88 e5                                      str r3, [r8, #0xc]
006cfc04  64 00 85 e5                                      str r0, [r5, #0x64]
006cfc08  10 20 87 e5                                      str r2, [r7, #0x10]
006cfc0c  04 10 87 e5                                      str r1, [r7, #4]
006cfc10  08 20 87 e5                                      str r2, [r7, #8]
006cfc14  0c 30 87 e5                                      str r3, [r7, #0xc]
006cfc18  78 00 85 e5                                      str r0, [r5, #0x78]
006cfc1c  04 00 86 e5                                      str r0, [r6, #4]
006cfc20  08 20 86 e5                                      str r2, [r6, #8]
006cfc24  0c 20 86 e5                                      str r2, [r6, #0xc]
006cfc28  10 20 86 e5                                      str r2, [r6, #0x10]
006cfc2c  8c 10 85 e5                                      str r1, [r5, #0x8c]
006cfc30  10 30 8e e5                                      str r3, [lr, #0x10]
006cfc34  04 00 8e e5                                      str r0, [lr, #4]
006cfc38  08 20 8e e5                                      str r2, [lr, #8]
006cfc3c  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfc40  a0 10 85 e5                                      str r1, [r5, #0xa0]
006cfc44  48 e0 9d e5                                      ldr lr, [sp, #0x48]
006cfc48  73 cf 85 e2                                      add ip, r5, #0x1cc
006cfc4c  10 20 8e e5                                      str r2, [lr, #0x10]
006cfc50  04 10 8e e5                                      str r1, [lr, #4]
006cfc54  08 20 8e e5                                      str r2, [lr, #8]
006cfc58  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfc5c  b4 00 85 e5                                      str r0, [r5, #0xb4]
006cfc60  44 e0 9d e5                                      ldr lr, [sp, #0x44]
006cfc64  10 20 8e e5                                      str r2, [lr, #0x10]
006cfc68  04 10 8e e5                                      str r1, [lr, #4]
006cfc6c  08 30 8e e5                                      str r3, [lr, #8]
006cfc70  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfc74  c8 00 85 e5                                      str r0, [r5, #0xc8]
006cfc78  40 e0 9d e5                                      ldr lr, [sp, #0x40]
006cfc7c  10 20 8e e5                                      str r2, [lr, #0x10]
006cfc80  04 00 8e e5                                      str r0, [lr, #4]
006cfc84  08 30 8e e5                                      str r3, [lr, #8]
006cfc88  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfc8c  dc 10 85 e5                                      str r1, [r5, #0xdc]
006cfc90  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
006cfc94  10 20 8e e5                                      str r2, [lr, #0x10]
006cfc98  04 00 8e e5                                      str r0, [lr, #4]
006cfc9c  08 20 8e e5                                      str r2, [lr, #8]
006cfca0  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfca4  f0 10 85 e5                                      str r1, [r5, #0xf0]
006cfca8  38 e0 9d e5                                      ldr lr, [sp, #0x38]
006cfcac  10 20 8e e5                                      str r2, [lr, #0x10]
006cfcb0  04 10 8e e5                                      str r1, [lr, #4]
006cfcb4  08 30 8e e5                                      str r3, [lr, #8]
006cfcb8  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfcbc  04 01 85 e5                                      str r0, [r5, #0x104]
006cfcc0  34 e0 9d e5                                      ldr lr, [sp, #0x34]
006cfcc4  04 10 8e e5                                      str r1, [lr, #4]
006cfcc8  10 30 8e e5                                      str r3, [lr, #0x10]
006cfccc  08 30 8e e5                                      str r3, [lr, #8]
006cfcd0  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfcd4  18 01 85 e5                                      str r0, [r5, #0x118]
006cfcd8  30 e0 9d e5                                      ldr lr, [sp, #0x30]
006cfcdc  10 30 8e e5                                      str r3, [lr, #0x10]
006cfce0  04 00 8e e5                                      str r0, [lr, #4]
006cfce4  08 30 8e e5                                      str r3, [lr, #8]
006cfce8  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfcec  2c 11 85 e5                                      str r1, [r5, #0x12c]
006cfcf0  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
006cfcf4  10 20 8e e5                                      str r2, [lr, #0x10]
006cfcf8  04 00 8e e5                                      str r0, [lr, #4]
006cfcfc  08 30 8e e5                                      str r3, [lr, #8]
006cfd00  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfd04  40 11 85 e5                                      str r1, [r5, #0x140]
006cfd08  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006cfd0c  10 30 8e e5                                      str r3, [lr, #0x10]
006cfd10  04 10 8e e5                                      str r1, [lr, #4]
006cfd14  08 20 8e e5                                      str r2, [lr, #8]
006cfd18  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfd1c  54 01 85 e5                                      str r0, [r5, #0x154]
006cfd20  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006cfd24  10 20 8e e5                                      str r2, [lr, #0x10]
006cfd28  04 10 8e e5                                      str r1, [lr, #4]
006cfd2c  08 20 8e e5                                      str r2, [lr, #8]
006cfd30  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfd34  68 01 85 e5                                      str r0, [r5, #0x168]
006cfd38  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006cfd3c  10 20 8e e5                                      str r2, [lr, #0x10]
006cfd40  04 00 8e e5                                      str r0, [lr, #4]
006cfd44  08 30 8e e5                                      str r3, [lr, #8]
006cfd48  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfd4c  7c 11 85 e5                                      str r1, [r5, #0x17c]
006cfd50  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006cfd54  10 30 8e e5                                      str r3, [lr, #0x10]
006cfd58  04 00 8e e5                                      str r0, [lr, #4]
006cfd5c  08 30 8e e5                                      str r3, [lr, #8]
006cfd60  0c 20 8e e5                                      str r2, [lr, #0xc]
006cfd64  90 01 85 e5                                      str r0, [r5, #0x190]
006cfd68  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006cfd6c  04 00 8e e5                                      str r0, [lr, #4]
006cfd70  10 20 8e e5                                      str r2, [lr, #0x10]
006cfd74  08 20 8e e5                                      str r2, [lr, #8]
006cfd78  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfd7c  a4 11 85 e5                                      str r1, [r5, #0x1a4]
006cfd80  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006cfd84  10 30 8e e5                                      str r3, [lr, #0x10]
006cfd88  04 00 8e e5                                      str r0, [lr, #4]
006cfd8c  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfd90  08 20 8e e5                                      str r2, [lr, #8]
006cfd94  b8 11 85 e5                                      str r1, [r5, #0x1b8]
006cfd98  10 e0 9d e5                                      ldr lr, [sp, #0x10]
006cfd9c  10 30 8e e5                                      str r3, [lr, #0x10]
006cfda0  04 10 8e e5                                      str r1, [lr, #4]
006cfda4  08 30 8e e5                                      str r3, [lr, #8]
006cfda8  0c 30 8e e5                                      str r3, [lr, #0xc]
006cfdac  cc 01 85 e5                                      str r0, [r5, #0x1cc]
006cfdb0  04 10 8c e5                                      str r1, [ip, #4]
006cfdb4  0c 30 8c e5                                      str r3, [ip, #0xc]
006cfdb8  08 30 8c e5                                      str r3, [ip, #8]
006cfdbc  10 20 8c e5                                      str r2, [ip, #0x10]
006cfdc0  b4 00 8d e2                                      add r0, sp, #0xb4
006cfdc4  00 30 a0 e3                                      mov r3, #0
006cfdc8  c0 10 8d e2                                      add r1, sp, #0xc0
006cfdcc  c0 30 8d e5                                      str r3, [sp, #0xc0]
006cfdd0  fa fa ff eb                                      bl #0x6ce9c0
006cfdd4  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
006cfdd8  00 00 50 e3                                      cmp r0, #0
006cfddc  00 00 00 0a                                      beq #0x6cfde4
006cfde0  e7 35 f1 eb                                      bl #0x31d584
006cfde4  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006cfde8  12 20 d3 e5                                      ldrb r2, [r3, #0x12]
006cfdec  08 00 12 e3                                      tst r2, #8
006cfdf0  01 00 00 0a                                      beq #0x6cfdfc
006cfdf4  02 00 12 e3                                      tst r2, #2
006cfdf8  07 00 00 0a                                      beq #0x6cfe1c
006cfdfc  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
006cfe00  04 00 52 e3                                      cmp r2, #4
006cfe04  04 00 00 0a                                      beq #0x6cfe1c
006cfe08  03 00 a0 e1                                      mov r0, r3
006cfe0c  01 10 a0 e3                                      mov r1, #1
006cfe10  00 30 93 e5                                      ldr r3, [r3]
006cfe14  0f e0 a0 e1                                      mov lr, pc
006cfe18  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006cfe1c  48 01 94 e5                                      ldr r0, [r4, #0x148]
006cfe20  00 10 a0 e3                                      mov r1, #0
006cfe24  fe 43 fb eb                                      bl #0x5a0e24
006cfe28  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
006cfe2c  00 00 53 e3                                      cmp r3, #0
006cfe30  08 00 00 0a                                      beq #0x6cfe58
006cfe34  b4 50 9d e5                                      ldr r5, [sp, #0xb4]
006cfe38  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006cfe3c  1f 20 03 e2                                      and r2, r3, #0x1f
006cfe40  01 00 52 e3                                      cmp r2, #1
006cfe44  29 00 00 9a                                      bls #0x6cfef0
006cfe48  01 20 42 e2                                      sub r2, r2, #1
006cfe4c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006cfe50  03 30 82 e1                                      orr r3, r2, r3
006cfe54  13 30 c5 e5                                      strb r3, [r5, #0x13]
006cfe58  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006cfe5c  00 00 50 e3                                      cmp r0, #0
006cfe60  00 00 00 0a                                      beq #0x6cfe68
006cfe64  c6 35 f1 eb                                      bl #0x31d584
006cfe68  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006cfe6c  00 00 50 e3                                      cmp r0, #0
006cfe70  00 00 00 0a                                      beq #0x6cfe78
006cfe74  c2 35 f1 eb                                      bl #0x31d584
006cfe78  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006cfe7c  0d 09 f2 eb                                      bl #0x3522b8
006cfe80  04 00 a0 e1                                      mov r0, r4
006cfe84  e4 d0 8d e2                                      add sp, sp, #0xe4
006cfe88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006cfe8c  06 00 a0 e1                                      mov r0, r6
006cfe90  e1 42 fb eb                                      bl #0x5a0a1c
006cfe94  06 00 a0 e1                                      mov r0, r6
006cfe98  04 f9 f0 eb                                      bl #0x30e2b0
006cfe9c  14 ff ff ea                                      b #0x6cfaf4
006cfea0  06 00 a0 e1                                      mov r0, r6
006cfea4  2a 3e fc eb                                      bl #0x5df754
006cfea8  06 00 a0 e1                                      mov r0, r6
006cfeac  ff f8 f0 eb                                      bl #0x30e2b0
006cfeb0  07 ff ff ea                                      b #0x6cfad4
006cfeb4  06 00 a0 e1                                      mov r0, r6
006cfeb8  25 3e fc eb                                      bl #0x5df754
006cfebc  06 00 a0 e1                                      mov r0, r6
006cfec0  fa f8 f0 eb                                      bl #0x30e2b0
006cfec4  fa fe ff ea                                      b #0x6cfab4
006cfec8  05 00 a0 e1                                      mov r0, r5
006cfecc  d2 42 fb eb                                      bl #0x5a0a1c
006cfed0  05 00 a0 e1                                      mov r0, r5
006cfed4  f5 f8 f0 eb                                      bl #0x30e2b0
006cfed8  8e fe ff ea                                      b #0x6cf918
006cfedc  05 00 a0 e1                                      mov r0, r5
006cfee0  cd 42 fb eb                                      bl #0x5a0a1c
006cfee4  05 00 a0 e1                                      mov r0, r5
006cfee8  f0 f8 f0 eb                                      bl #0x30e2b0
006cfeec  81 fe ff ea                                      b #0x6cf8f8
006cfef0  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006cfef4  20 00 13 e3                                      tst r3, #0x20
006cfef8  02 00 00 1a                                      bne #0x6cff08
006cfefc  00 30 a0 e3                                      mov r3, #0
006cff00  13 30 c5 e5                                      strb r3, [r5, #0x13]
006cff04  d3 ff ff ea                                      b #0x6cfe58
006cff08  00 30 95 e5                                      ldr r3, [r5]
006cff0c  05 00 a0 e1                                      mov r0, r5
006cff10  0f e0 a0 e1                                      mov lr, pc
006cff14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006cff18  f7 ff ff ea                                      b #0x6cfefc
; mapping-symbol data/literal pool
006cff1c  1c 55 2c 00 48 3e 00 00 44 2b 00 00 94 2f 00 00  .byte 0x1c, 0x55, 0x2c, 0x00, 0x48, 0x3e, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x94, 0x2f, 0x00, 0x00
006cff2c  dc 30 00 00                                      .byte 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x006cff30, declared_size=324, range_size=324, mode=arm
; class-group: glitch::scene::CSkyBoxSceneNode
; alias: _ZN6glitch5scene16CSkyBoxSceneNode5cloneEPNS0_10ISceneNodeEPNS0_13CSceneManagerE
; demangled: glitch::scene::CSkyBoxSceneNode::clone(glitch::scene::ISceneNode*, glitch::scene::CSceneManager*)
; decoder-mode: arm
006cff30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cff34  00 00 52 e3                                      cmp r2, #0
006cff38  10 21 90 05                                      ldreq r2, [r0, #0x110]
006cff3c  00 30 a0 e3                                      mov r3, #0
006cff40  38 d0 4d e2                                      sub sp, sp, #0x38
006cff44  03 10 a0 e1                                      mov r1, r3
006cff48  00 40 a0 e1                                      mov r4, r0
006cff4c  5d 0f a0 e3                                      mov r0, #0x174
006cff50  14 60 92 e5                                      ldr r6, [r2, #0x14]
006cff54  34 30 8d e5                                      str r3, [sp, #0x34]
006cff58  30 30 8d e5                                      str r3, [sp, #0x30]
006cff5c  2c 30 8d e5                                      str r3, [sp, #0x2c]
006cff60  28 30 8d e5                                      str r3, [sp, #0x28]
006cff64  24 30 8d e5                                      str r3, [sp, #0x24]
006cff68  20 30 8d e5                                      str r3, [sp, #0x20]
006cff6c  8e 90 f9 eb                                      bl #0x5341ac
006cff70  2c e0 8d e2                                      add lr, sp, #0x2c
006cff74  0c c1 94 e5                                      ldr ip, [r4, #0x10c]
006cff78  00 e0 8d e5                                      str lr, [sp]
006cff7c  28 e0 8d e2                                      add lr, sp, #0x28
006cff80  04 e0 8d e5                                      str lr, [sp, #4]
006cff84  24 e0 8d e2                                      add lr, sp, #0x24
006cff88  08 e0 8d e5                                      str lr, [sp, #8]
006cff8c  06 10 a0 e1                                      mov r1, r6
006cff90  20 e0 8d e2                                      add lr, sp, #0x20
006cff94  34 20 8d e2                                      add r2, sp, #0x34
006cff98  30 30 8d e2                                      add r3, sp, #0x30
006cff9c  00 50 a0 e1                                      mov r5, r0
006cffa0  0c e0 8d e5                                      str lr, [sp, #0xc]
006cffa4  10 c0 8d e5                                      str ip, [sp, #0x10]
006cffa8  6d fd ff eb                                      bl #0x6cf564
006cffac  20 00 9d e5                                      ldr r0, [sp, #0x20]
006cffb0  00 00 50 e3                                      cmp r0, #0
006cffb4  00 00 00 0a                                      beq #0x6cffbc
006cffb8  71 35 f1 eb                                      bl #0x31d584
006cffbc  24 00 9d e5                                      ldr r0, [sp, #0x24]
006cffc0  00 00 50 e3                                      cmp r0, #0
006cffc4  00 00 00 0a                                      beq #0x6cffcc
006cffc8  6d 35 f1 eb                                      bl #0x31d584
006cffcc  28 00 9d e5                                      ldr r0, [sp, #0x28]
006cffd0  00 00 50 e3                                      cmp r0, #0
006cffd4  00 00 00 0a                                      beq #0x6cffdc
006cffd8  69 35 f1 eb                                      bl #0x31d584
006cffdc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006cffe0  00 00 50 e3                                      cmp r0, #0
006cffe4  00 00 00 0a                                      beq #0x6cffec
006cffe8  65 35 f1 eb                                      bl #0x31d584
006cffec  30 00 9d e5                                      ldr r0, [sp, #0x30]
006cfff0  00 00 50 e3                                      cmp r0, #0
006cfff4  00 00 00 0a                                      beq #0x6cfffc
006cfff8  61 35 f1 eb                                      bl #0x31d584
006cfffc  34 00 9d e5                                      ldr r0, [sp, #0x34]
006d0000  00 00 50 e3                                      cmp r0, #0
006d0004  00 00 00 0a                                      beq #0x6d000c
006d0008  5d 35 f1 eb                                      bl #0x31d584
006d000c  05 00 a0 e1                                      mov r0, r5
006d0010  04 10 a0 e1                                      mov r1, r4
006d0014  6c 1f fb eb                                      bl #0x597dcc
006d0018  05 60 a0 e1                                      mov r6, r5
006d001c  00 70 a0 e3                                      mov r7, #0
006d0020  1c 80 8d e2                                      add r8, sp, #0x1c
006d0024  4c 21 94 e5                                      ldr r2, [r4, #0x14c]
006d0028  01 70 87 e2                                      add r7, r7, #1
006d002c  08 00 a0 e1                                      mov r0, r8
006d0030  1c 20 8d e5                                      str r2, [sp, #0x1c]
006d0034  00 00 52 e3                                      cmp r2, #0
006d0038  00 30 92 15                                      ldrne r3, [r2]
006d003c  04 40 84 e2                                      add r4, r4, #4
006d0040  01 30 83 12                                      addne r3, r3, #1
006d0044  00 30 82 15                                      strne r3, [r2]
006d0048  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
006d004c  4c 31 96 e5                                      ldr r3, [r6, #0x14c]
006d0050  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d0054  4c 21 86 e5                                      str r2, [r6, #0x14c]
006d0058  e2 02 f1 eb                                      bl #0x310be8
006d005c  06 00 57 e3                                      cmp r7, #6
006d0060  04 60 86 e2                                      add r6, r6, #4
006d0064  ee ff ff 1a                                      bne #0x6d0024
006d0068  05 00 a0 e1                                      mov r0, r5
006d006c  38 d0 8d e2                                      add sp, sp, #0x38
006d0070  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
