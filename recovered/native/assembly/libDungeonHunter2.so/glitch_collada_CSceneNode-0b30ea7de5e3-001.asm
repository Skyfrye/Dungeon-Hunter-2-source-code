; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035c444, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeD1Ev
; demangled: glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0035c444  70 40 2d e9                                      push {r4, r5, r6, lr}
0035c448  64 50 9f e5                                      ldr r5, [pc, #0x64]
0035c44c  64 30 9f e5                                      ldr r3, [pc, #0x64]
0035c450  00 40 a0 e1                                      mov r4, r0
0035c454  05 50 8f e0                                      add r5, pc, r5
0035c458  03 30 95 e7                                      ldr r3, [r5, r3]
0035c45c  53 0f 80 e2                                      add r0, r0, #0x14c
0035c460  49 2f 83 e2                                      add r2, r3, #0x124
0035c464  1c 30 83 e2                                      add r3, r3, #0x1c
0035c468  00 30 84 e5                                      str r3, [r4]
0035c46c  58 21 84 e5                                      str r2, [r4, #0x158]
0035c470  ff f3 0a eb                                      bl #0x619474
0035c474  40 30 9f e5                                      ldr r3, [pc, #0x40]
0035c478  04 00 a0 e1                                      mov r0, r4
0035c47c  03 10 95 e7                                      ldr r1, [r5, r3]
0035c480  04 30 91 e5                                      ldr r3, [r1, #4]
0035c484  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0035c488  18 20 91 e5                                      ldr r2, [r1, #0x18]
0035c48c  00 30 84 e5                                      str r3, [r4]
0035c490  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035c494  08 10 81 e2                                      add r1, r1, #8
0035c498  03 c0 84 e7                                      str ip, [r4, r3]
0035c49c  00 30 94 e5                                      ldr r3, [r4]
0035c4a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035c4a4  03 20 84 e7                                      str r2, [r4, r3]
0035c4a8  03 f2 08 eb                                      bl #0x598cbc
0035c4ac  04 00 a0 e1                                      mov r0, r4
0035c4b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035c4b4  3c 86 63 00 7c 34 00 00 44 40 00 00              .byte 0x3c, 0x86, 0x63, 0x00, 0x7c, 0x34, 0x00, 0x00, 0x44, 0x40, 0x00, 0x00

; FUNCTION 0x0035c4c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZTv0_n24_N6glitch7collada10CSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0035c4c0  00 30 90 e5                                      ldr r3, [r0]
0035c4c4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035c4c8  03 00 80 e0                                      add r0, r0, r3
0035c4cc  dc ff ff ea                                      b #0x35c444

; FUNCTION 0x0035c4d0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZTv0_n12_N6glitch7collada10CSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0035c4d0  00 30 90 e5                                      ldr r3, [r0]
0035c4d4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035c4d8  03 00 80 e0                                      add r0, r0, r3
0035c4dc  d8 ff ff ea                                      b #0x35c444

; FUNCTION 0x0035c4e0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeD0Ev
; demangled: glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0035c4e0  10 40 2d e9                                      push {r4, lr}
0035c4e4  00 40 a0 e1                                      mov r4, r0
0035c4e8  d5 ff ff eb                                      bl #0x35c444
0035c4ec  04 00 a0 e1                                      mov r0, r4
0035c4f0  d2 cf fe eb                                      bl #0x310440
0035c4f4  04 00 a0 e1                                      mov r0, r4
0035c4f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035c4fc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZTv0_n24_N6glitch7collada10CSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0035c4fc  00 30 90 e5                                      ldr r3, [r0]
0035c500  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035c504  03 00 80 e0                                      add r0, r0, r3
0035c508  f4 ff ff ea                                      b #0x35c4e0

; FUNCTION 0x0035c50c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZTv0_n12_N6glitch7collada10CSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0035c50c  00 30 90 e5                                      ldr r3, [r0]
0035c510  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035c514  03 00 80 e0                                      add r0, r0, r3
0035c518  f0 ff ff ea                                      b #0x35c4e0

; FUNCTION 0x0060ce44, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeD2Ev.clone.1
; demangled: glitch::collada::CSceneNode::~CSceneNode() [clone .clone.1]
; decoder-mode: arm
0060ce44  74 30 9f e5                                      ldr r3, [pc, #0x74]
0060ce48  74 20 9f e5                                      ldr r2, [pc, #0x74]
0060ce4c  70 40 2d e9                                      push {r4, r5, r6, lr}
0060ce50  03 30 8f e0                                      add r3, pc, r3
0060ce54  02 50 93 e7                                      ldr r5, [r3, r2]
0060ce58  00 40 a0 e1                                      mov r4, r0
0060ce5c  53 0f 80 e2                                      add r0, r0, #0x14c
0060ce60  04 30 95 e5                                      ldr r3, [r5, #4]
0060ce64  20 10 95 e5                                      ldr r1, [r5, #0x20]
0060ce68  24 20 95 e5                                      ldr r2, [r5, #0x24]
0060ce6c  00 30 84 e5                                      str r3, [r4]
0060ce70  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0060ce74  03 10 84 e7                                      str r1, [r4, r3]
0060ce78  00 30 94 e5                                      ldr r3, [r4]
0060ce7c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0060ce80  03 20 84 e7                                      str r2, [r4, r3]
0060ce84  7a 31 00 eb                                      bl #0x619474
0060ce88  08 30 95 e5                                      ldr r3, [r5, #8]
0060ce8c  18 c0 95 e5                                      ldr ip, [r5, #0x18]
0060ce90  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0060ce94  00 30 84 e5                                      str r3, [r4]
0060ce98  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0060ce9c  0c 10 85 e2                                      add r1, r5, #0xc
0060cea0  04 00 a0 e1                                      mov r0, r4
0060cea4  03 c0 84 e7                                      str ip, [r4, r3]
0060cea8  00 30 94 e5                                      ldr r3, [r4]
0060ceac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0060ceb0  03 20 84 e7                                      str r2, [r4, r3]
0060ceb4  80 2f fe eb                                      bl #0x598cbc
0060ceb8  04 00 a0 e1                                      mov r0, r4
0060cebc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0060cec0  40 7c 38 00 a0 0e 00 00                          .byte 0x40, 0x7c, 0x38, 0x00, 0xa0, 0x0e, 0x00, 0x00

; FUNCTION 0x0065af4c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeD2Ev
; demangled: glitch::collada::CSceneNode::~CSceneNode()
; decoder-mode: arm
0065af4c  70 40 2d e9                                      push {r4, r5, r6, lr}
0065af50  00 30 91 e5                                      ldr r3, [r1]
0065af54  00 40 a0 e1                                      mov r4, r0
0065af58  01 50 a0 e1                                      mov r5, r1
0065af5c  00 30 84 e5                                      str r3, [r4]
0065af60  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0065af64  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0065af68  53 0f 80 e2                                      add r0, r0, #0x14c
0065af6c  03 20 84 e7                                      str r2, [r4, r3]
0065af70  00 30 94 e5                                      ldr r3, [r4]
0065af74  20 20 91 e5                                      ldr r2, [r1, #0x20]
0065af78  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065af7c  03 20 84 e7                                      str r2, [r4, r3]
0065af80  3b f9 fe eb                                      bl #0x619474
0065af84  04 30 95 e5                                      ldr r3, [r5, #4]
0065af88  04 50 85 e2                                      add r5, r5, #4
0065af8c  04 10 85 e2                                      add r1, r5, #4
0065af90  00 30 84 e5                                      str r3, [r4]
0065af94  10 20 95 e5                                      ldr r2, [r5, #0x10]
0065af98  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0065af9c  04 00 a0 e1                                      mov r0, r4
0065afa0  03 20 84 e7                                      str r2, [r4, r3]
0065afa4  00 30 94 e5                                      ldr r3, [r4]
0065afa8  14 20 95 e5                                      ldr r2, [r5, #0x14]
0065afac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065afb0  03 20 84 e7                                      str r2, [r4, r3]
0065afb4  40 f7 fc eb                                      bl #0x598cbc
0065afb8  04 00 a0 e1                                      mov r0, r4
0065afbc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0065cc2c, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNode14resetTransformEb
; demangled: glitch::collada::CSceneNode::resetTransform(bool)
; decoder-mode: arm
0065cc2c  30 40 2d e9                                      push {r4, r5, lr}
0065cc30  54 31 90 e5                                      ldr r3, [r0, #0x154]
0065cc34  2c d0 4d e2                                      sub sp, sp, #0x2c
0065cc38  00 50 a0 e1                                      mov r5, r0
0065cc3c  00 00 53 e3                                      cmp r3, #0
0065cc40  01 40 a0 e1                                      mov r4, r1
0065cc44  23 00 00 0a                                      beq #0x65ccd8
0065cc48  0c c0 93 e5                                      ldr ip, [r3, #0xc]
0065cc4c  00 20 90 e5                                      ldr r2, [r0]
0065cc50  1c 10 8d e2                                      add r1, sp, #0x1c
0065cc54  a4 20 92 e5                                      ldr r2, [r2, #0xa4]
0065cc58  1c c0 8d e5                                      str ip, [sp, #0x1c]
0065cc5c  10 c0 93 e5                                      ldr ip, [r3, #0x10]
0065cc60  20 c0 8d e5                                      str ip, [sp, #0x20]
0065cc64  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065cc68  24 30 8d e5                                      str r3, [sp, #0x24]
0065cc6c  32 ff 2f e1                                      blx r2
0065cc70  54 21 95 e5                                      ldr r2, [r5, #0x154]
0065cc74  00 30 95 e5                                      ldr r3, [r5]
0065cc78  05 00 a0 e1                                      mov r0, r5
0065cc7c  18 c0 92 e5                                      ldr ip, [r2, #0x18]
0065cc80  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
0065cc84  0d 10 a0 e1                                      mov r1, sp
0065cc88  00 c0 8d e5                                      str ip, [sp]
0065cc8c  1c c0 92 e5                                      ldr ip, [r2, #0x1c]
0065cc90  04 c0 8d e5                                      str ip, [sp, #4]
0065cc94  20 c0 92 e5                                      ldr ip, [r2, #0x20]
0065cc98  08 c0 8d e5                                      str ip, [sp, #8]
0065cc9c  24 20 92 e5                                      ldr r2, [r2, #0x24]
0065cca0  0c 20 8d e5                                      str r2, [sp, #0xc]
0065cca4  33 ff 2f e1                                      blx r3
0065cca8  54 21 95 e5                                      ldr r2, [r5, #0x154]
0065ccac  00 30 95 e5                                      ldr r3, [r5]
0065ccb0  05 00 a0 e1                                      mov r0, r5
0065ccb4  28 c0 92 e5                                      ldr ip, [r2, #0x28]
0065ccb8  94 30 93 e5                                      ldr r3, [r3, #0x94]
0065ccbc  10 10 8d e2                                      add r1, sp, #0x10
0065ccc0  10 c0 8d e5                                      str ip, [sp, #0x10]
0065ccc4  2c c0 92 e5                                      ldr ip, [r2, #0x2c]
0065ccc8  14 c0 8d e5                                      str ip, [sp, #0x14]
0065cccc  30 20 92 e5                                      ldr r2, [r2, #0x30]
0065ccd0  18 20 8d e5                                      str r2, [sp, #0x18]
0065ccd4  33 ff 2f e1                                      blx r3
0065ccd8  00 00 54 e3                                      cmp r4, #0
0065ccdc  f4 40 b5 15                                      ldrne r4, [r5, #0xf4]!
0065cce0  09 00 00 1a                                      bne #0x65cd0c
0065cce4  0a 00 00 ea                                      b #0x65cd14
0065cce8  00 00 54 e3                                      cmp r4, #0
0065ccec  04 30 a0 01                                      moveq r3, r4
0065ccf0  04 30 44 12                                      subne r3, r4, #4
0065ccf4  03 00 a0 e1                                      mov r0, r3
0065ccf8  01 10 a0 e3                                      mov r1, #1
0065ccfc  00 30 93 e5                                      ldr r3, [r3]
0065cd00  0f e0 a0 e1                                      mov lr, pc
0065cd04  e0 f0 93 e5                                      ldr pc, [r3, #0xe0]
0065cd08  00 40 94 e5                                      ldr r4, [r4]
0065cd0c  04 00 55 e1                                      cmp r5, r4
0065cd10  f4 ff ff 1a                                      bne #0x65cce8
0065cd14  2c d0 8d e2                                      add sp, sp, #0x2c
0065cd18  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0065cd1c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZNK6glitch7collada10CSceneNode7getTypeEv
; demangled: glitch::collada::CSceneNode::getType() const
; decoder-mode: arm
0065cd1c  64 01 06 e3                                      movw r0, #0x6164
0065cd20  65 0e 46 e3                                      movt r0, #0x6e65
0065cd24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065cd28, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZNK6glitch7collada10CSceneNode6getUIDEv
; demangled: glitch::collada::CSceneNode::getUID() const
; decoder-mode: arm
0065cd28  54 31 90 e5                                      ldr r3, [r0, #0x154]
0065cd2c  00 00 53 e3                                      cmp r3, #0
0065cd30  01 00 00 0a                                      beq #0x65cd3c
0065cd34  00 00 93 e5                                      ldr r0, [r3]
0065cd38  1e ff 2f e1                                      bx lr
0065cd3c  04 00 9f e5                                      ldr r0, [pc, #4]
0065cd40  00 00 8f e0                                      add r0, pc, r0
0065cd44  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0065cd48  c8 ea 26 00                                      .byte 0xc8, 0xea, 0x26, 0x00

; FUNCTION 0x0065cd4c, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZNK6glitch7collada10CSceneNode10getScopeIDEv
; demangled: glitch::collada::CSceneNode::getScopeID() const
; decoder-mode: arm
0065cd4c  54 31 90 e5                                      ldr r3, [r0, #0x154]
0065cd50  00 00 53 e3                                      cmp r3, #0
0065cd54  01 00 00 0a                                      beq #0x65cd60
0065cd58  08 00 93 e5                                      ldr r0, [r3, #8]
0065cd5c  1e ff 2f e1                                      bx lr
0065cd60  04 00 9f e5                                      ldr r0, [pc, #4]
0065cd64  00 00 8f e0                                      add r0, pc, r0
0065cd68  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0065cd6c  a4 ea 26 00                                      .byte 0xa4, 0xea, 0x26, 0x00

; FUNCTION 0x0065cd70, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZNK6glitch7collada10CSceneNode15getUserPropertyEv
; demangled: glitch::collada::CSceneNode::getUserProperty() const
; decoder-mode: arm
0065cd70  54 01 90 e5                                      ldr r0, [r0, #0x154]
0065cd74  00 00 50 e3                                      cmp r0, #0
0065cd78  48 00 90 15                                      ldrne r0, [r0, #0x48]
0065cd7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0065cd80, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZNK6glitch7collada10CSceneNode18getUserPropertyStrEv
; demangled: glitch::collada::CSceneNode::getUserPropertyStr() const
; decoder-mode: arm
0065cd80  54 31 90 e5                                      ldr r3, [r0, #0x154]
0065cd84  00 00 53 e3                                      cmp r3, #0
0065cd88  01 00 00 1a                                      bne #0x65cd94
0065cd8c  00 00 a0 e3                                      mov r0, #0
0065cd90  1e ff 2f e1                                      bx lr
0065cd94  48 30 93 e5                                      ldr r3, [r3, #0x48]
0065cd98  00 00 53 e3                                      cmp r3, #0
0065cd9c  00 00 93 15                                      ldrne r0, [r3]
0065cda0  1e ff 2f 11                                      bxne lr
0065cda4  f8 ff ff ea                                      b #0x65cd8c

; FUNCTION 0x0065cda8, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNode18computeBoundingBoxEv
; demangled: glitch::collada::CSceneNode::computeBoundingBox()
; decoder-mode: arm
0065cda8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065cdac  64 31 06 e3                                      movw r3, #0x6164
0065cdb0  24 d0 4d e2                                      sub sp, sp, #0x24
0065cdb4  65 3d 44 e3                                      movt r3, #0x4d65
0065cdb8  00 70 a0 e1                                      mov r7, r0
0065cdbc  04 30 8d e5                                      str r3, [sp, #4]
0065cdc0  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
0065cdc4  64 a1 06 e3                                      movw sl, #0x6164
0065cdc8  64 81 06 e3                                      movw r8, #0x6164
0065cdcc  64 61 06 e3                                      movw r6, #0x6164
0065cdd0  08 30 8d e2                                      add r3, sp, #8
0065cdd4  04 00 57 e1                                      cmp r7, r4
0065cdd8  00 50 a0 e1                                      mov r5, r0
0065cddc  65 a3 47 e3                                      movt sl, #0x7365
0065cde0  65 8d 46 e3                                      movt r8, #0x6d65
0065cde4  65 6e 46 e3                                      movt r6, #0x6e65
0065cde8  13 be 80 e2                                      add fp, r0, #0x130
0065cdec  00 90 a0 e3                                      mov sb, #0
0065cdf0  00 30 8d e5                                      str r3, [sp]
0065cdf4  31 00 00 0a                                      beq #0x65cec0
0065cdf8  00 00 54 e3                                      cmp r4, #0
0065cdfc  04 30 a0 01                                      moveq r3, r4
0065ce00  04 30 44 12                                      subne r3, r4, #4
0065ce04  03 00 a0 e1                                      mov r0, r3
0065ce08  00 30 93 e5                                      ldr r3, [r3]
0065ce0c  0f e0 a0 e1                                      mov lr, pc
0065ce10  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0065ce14  08 00 50 e1                                      cmp r0, r8
0065ce18  0a 00 50 11                                      cmpne r0, sl
0065ce1c  03 00 00 0a                                      beq #0x65ce30
0065ce20  04 30 9d e5                                      ldr r3, [sp, #4]
0065ce24  03 00 50 e1                                      cmp r0, r3
0065ce28  06 00 50 11                                      cmpne r0, r6
0065ce2c  20 00 00 1a                                      bne #0x65ceb4
0065ce30  06 00 50 e1                                      cmp r0, r6
0065ce34  44 00 00 0a                                      beq #0x65cf4c
0065ce38  00 00 59 e3                                      cmp sb, #0
0065ce3c  21 00 00 1a                                      bne #0x65cec8
0065ce40  00 00 54 e3                                      cmp r4, #0
0065ce44  04 30 a0 01                                      moveq r3, r4
0065ce48  04 30 44 12                                      subne r3, r4, #4
0065ce4c  03 00 a0 e1                                      mov r0, r3
0065ce50  00 30 93 e5                                      ldr r3, [r3]
0065ce54  0f e0 a0 e1                                      mov lr, pc
0065ce58  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0065ce5c  00 30 90 e5                                      ldr r3, [r0]
0065ce60  00 00 54 e3                                      cmp r4, #0
0065ce64  01 90 a0 e3                                      mov sb, #1
0065ce68  30 31 85 e5                                      str r3, [r5, #0x130]
0065ce6c  04 30 90 e5                                      ldr r3, [r0, #4]
0065ce70  34 31 85 e5                                      str r3, [r5, #0x134]
0065ce74  08 30 90 e5                                      ldr r3, [r0, #8]
0065ce78  38 31 85 e5                                      str r3, [r5, #0x138]
0065ce7c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0065ce80  3c 31 85 e5                                      str r3, [r5, #0x13c]
0065ce84  10 30 90 e5                                      ldr r3, [r0, #0x10]
0065ce88  40 31 85 e5                                      str r3, [r5, #0x140]
0065ce8c  14 30 90 e5                                      ldr r3, [r0, #0x14]
0065ce90  44 31 85 e5                                      str r3, [r5, #0x144]
0065ce94  04 30 a0 01                                      moveq r3, r4
0065ce98  04 30 44 12                                      subne r3, r4, #4
0065ce9c  03 00 a0 e1                                      mov r0, r3
0065cea0  00 30 93 e5                                      ldr r3, [r3]
0065cea4  0f e0 a0 e1                                      mov lr, pc
0065cea8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0065ceac  0b 10 a0 e1                                      mov r1, fp
0065ceb0  a4 e9 fc eb                                      bl #0x597548
0065ceb4  00 40 94 e5                                      ldr r4, [r4]
0065ceb8  04 00 57 e1                                      cmp r7, r4
0065cebc  cd ff ff 1a                                      bne #0x65cdf8
0065cec0  24 d0 8d e2                                      add sp, sp, #0x24
0065cec4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065cec8  00 00 54 e3                                      cmp r4, #0
0065cecc  04 30 a0 01                                      moveq r3, r4
0065ced0  04 30 44 12                                      subne r3, r4, #4
0065ced4  03 00 a0 e1                                      mov r0, r3
0065ced8  00 30 93 e5                                      ldr r3, [r3]
0065cedc  0f e0 a0 e1                                      mov lr, pc
0065cee0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0065cee4  00 30 90 e5                                      ldr r3, [r0]
0065cee8  00 00 54 e3                                      cmp r4, #0
0065ceec  08 30 8d e5                                      str r3, [sp, #8]
0065cef0  04 30 90 e5                                      ldr r3, [r0, #4]
0065cef4  0c 30 8d e5                                      str r3, [sp, #0xc]
0065cef8  08 30 90 e5                                      ldr r3, [r0, #8]
0065cefc  10 30 8d e5                                      str r3, [sp, #0x10]
0065cf00  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0065cf04  14 30 8d e5                                      str r3, [sp, #0x14]
0065cf08  10 30 90 e5                                      ldr r3, [r0, #0x10]
0065cf0c  18 30 8d e5                                      str r3, [sp, #0x18]
0065cf10  14 30 90 e5                                      ldr r3, [r0, #0x14]
0065cf14  1c 30 8d e5                                      str r3, [sp, #0x1c]
0065cf18  04 30 a0 01                                      moveq r3, r4
0065cf1c  04 30 44 12                                      subne r3, r4, #4
0065cf20  03 00 a0 e1                                      mov r0, r3
0065cf24  00 30 93 e5                                      ldr r3, [r3]
0065cf28  0f e0 a0 e1                                      mov lr, pc
0065cf2c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0065cf30  00 10 9d e5                                      ldr r1, [sp]
0065cf34  83 e9 fc eb                                      bl #0x597548
0065cf38  0b 00 a0 e1                                      mov r0, fp
0065cf3c  00 10 9d e5                                      ldr r1, [sp]
0065cf40  82 fc f3 eb                                      bl #0x35c150
0065cf44  00 40 94 e5                                      ldr r4, [r4]
0065cf48  da ff ff ea                                      b #0x65ceb8
0065cf4c  00 00 54 e3                                      cmp r4, #0
0065cf50  04 30 a0 01                                      moveq r3, r4
0065cf54  04 30 44 12                                      subne r3, r4, #4
0065cf58  03 00 a0 e1                                      mov r0, r3
0065cf5c  00 30 93 e5                                      ldr r3, [r3]
0065cf60  0f e0 a0 e1                                      mov lr, pc
0065cf64  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0065cf68  b2 ff ff ea                                      b #0x65ce38

; FUNCTION 0x0065cf8c, declared_size=452, range_size=452, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZNK6glitch7collada10CSceneNode18computeBoundingBoxERNS_4core8aabbox3dIfEE
; demangled: glitch::collada::CSceneNode::computeBoundingBox(glitch::core::aabbox3d<float>&) const
; decoder-mode: arm
0065cf8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065cf90  24 d0 4d e2                                      sub sp, sp, #0x24
0065cf94  01 50 a0 e1                                      mov r5, r1
0065cf98  8a e8 fc eb                                      bl #0x5971c8
0065cf9c  00 60 a0 e1                                      mov r6, r0
0065cfa0  04 40 b6 e5                                      ldr r4, [r6, #4]!
0065cfa4  64 81 06 e3                                      movw r8, #0x6164
0065cfa8  64 71 06 e3                                      movw r7, #0x6164
0065cfac  64 91 06 e3                                      movw sb, #0x6164
0065cfb0  64 b1 06 e3                                      movw fp, #0x6164
0065cfb4  08 30 8d e2                                      add r3, sp, #8
0065cfb8  04 00 56 e1                                      cmp r6, r4
0065cfbc  65 83 47 e3                                      movt r8, #0x7365
0065cfc0  65 7d 46 e3                                      movt r7, #0x6d65
0065cfc4  65 9d 44 e3                                      movt sb, #0x4d65
0065cfc8  65 be 46 e3                                      movt fp, #0x6e65
0065cfcc  00 a0 a0 e3                                      mov sl, #0
0065cfd0  04 30 8d e5                                      str r3, [sp, #4]
0065cfd4  10 00 00 0a                                      beq #0x65d01c
0065cfd8  00 00 54 e3                                      cmp r4, #0
0065cfdc  04 30 a0 01                                      moveq r3, r4
0065cfe0  04 30 44 12                                      subne r3, r4, #4
0065cfe4  03 00 a0 e1                                      mov r0, r3
0065cfe8  00 30 93 e5                                      ldr r3, [r3]
0065cfec  0f e0 a0 e1                                      mov lr, pc
0065cff0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0065cff4  07 00 50 e1                                      cmp r0, r7
0065cff8  08 00 50 11                                      cmpne r0, r8
0065cffc  2a 00 00 0a                                      beq #0x65d0ac
0065d000  09 00 50 e1                                      cmp r0, sb
0065d004  28 00 00 0a                                      beq #0x65d0ac
0065d008  0b 00 50 e1                                      cmp r0, fp
0065d00c  05 00 00 0a                                      beq #0x65d028
0065d010  00 40 94 e5                                      ldr r4, [r4]
0065d014  04 00 56 e1                                      cmp r6, r4
0065d018  ee ff ff 1a                                      bne #0x65cfd8
0065d01c  0a 00 a0 e1                                      mov r0, sl
0065d020  24 d0 8d e2                                      add sp, sp, #0x24
0065d024  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065d028  bf 34 a0 e3                                      mov r3, #0xbf000000
0065d02c  00 00 54 e3                                      cmp r4, #0
0065d030  02 35 83 e2                                      add r3, r3, #0x800000
0065d034  08 30 8d e5                                      str r3, [sp, #8]
0065d038  0c 30 8d e5                                      str r3, [sp, #0xc]
0065d03c  10 30 8d e5                                      str r3, [sp, #0x10]
0065d040  04 00 a0 01                                      moveq r0, r4
0065d044  fe 35 a0 e3                                      mov r3, #0x3f800000
0065d048  04 00 44 12                                      subne r0, r4, #4
0065d04c  04 10 9d e5                                      ldr r1, [sp, #4]
0065d050  14 30 8d e5                                      str r3, [sp, #0x14]
0065d054  18 30 8d e5                                      str r3, [sp, #0x18]
0065d058  1c 30 8d e5                                      str r3, [sp, #0x1c]
0065d05c  ca ff ff eb                                      bl #0x65cf8c
0065d060  00 00 50 e3                                      cmp r0, #0
0065d064  e9 ff ff 0a                                      beq #0x65d010
0065d068  00 00 5a e3                                      cmp sl, #0
0065d06c  32 00 00 1a                                      bne #0x65d13c
0065d070  08 a0 9d e5                                      ldr sl, [sp, #8]
0065d074  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0065d078  10 00 9d e5                                      ldr r0, [sp, #0x10]
0065d07c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0065d080  18 20 9d e5                                      ldr r2, [sp, #0x18]
0065d084  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0065d088  00 a0 85 e5                                      str sl, [r5]
0065d08c  04 c0 85 e5                                      str ip, [r5, #4]
0065d090  08 00 85 e5                                      str r0, [r5, #8]
0065d094  0c 10 85 e5                                      str r1, [r5, #0xc]
0065d098  10 20 85 e5                                      str r2, [r5, #0x10]
0065d09c  14 30 85 e5                                      str r3, [r5, #0x14]
0065d0a0  01 a0 a0 e3                                      mov sl, #1
0065d0a4  00 40 94 e5                                      ldr r4, [r4]
0065d0a8  d9 ff ff ea                                      b #0x65d014
0065d0ac  00 00 5a e3                                      cmp sl, #0
0065d0b0  15 00 00 1a                                      bne #0x65d10c
0065d0b4  00 00 54 e3                                      cmp r4, #0
0065d0b8  04 30 a0 01                                      moveq r3, r4
0065d0bc  04 30 44 12                                      subne r3, r4, #4
0065d0c0  03 00 a0 e1                                      mov r0, r3
0065d0c4  00 30 93 e5                                      ldr r3, [r3]
0065d0c8  0f e0 a0 e1                                      mov lr, pc
0065d0cc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0065d0d0  00 30 90 e5                                      ldr r3, [r0]
0065d0d4  01 a0 a0 e3                                      mov sl, #1
0065d0d8  00 30 85 e5                                      str r3, [r5]
0065d0dc  04 30 90 e5                                      ldr r3, [r0, #4]
0065d0e0  04 30 85 e5                                      str r3, [r5, #4]
0065d0e4  08 30 90 e5                                      ldr r3, [r0, #8]
0065d0e8  08 30 85 e5                                      str r3, [r5, #8]
0065d0ec  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0065d0f0  0c 30 85 e5                                      str r3, [r5, #0xc]
0065d0f4  10 30 90 e5                                      ldr r3, [r0, #0x10]
0065d0f8  10 30 85 e5                                      str r3, [r5, #0x10]
0065d0fc  14 30 90 e5                                      ldr r3, [r0, #0x14]
0065d100  14 30 85 e5                                      str r3, [r5, #0x14]
0065d104  00 40 94 e5                                      ldr r4, [r4]
0065d108  c1 ff ff ea                                      b #0x65d014
0065d10c  00 00 54 e3                                      cmp r4, #0
0065d110  04 30 a0 01                                      moveq r3, r4
0065d114  04 30 44 12                                      subne r3, r4, #4
0065d118  03 00 a0 e1                                      mov r0, r3
0065d11c  00 30 93 e5                                      ldr r3, [r3]
0065d120  0f e0 a0 e1                                      mov lr, pc
0065d124  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0065d128  00 10 a0 e1                                      mov r1, r0
0065d12c  05 00 a0 e1                                      mov r0, r5
0065d130  06 fc f3 eb                                      bl #0x35c150
0065d134  00 40 94 e5                                      ldr r4, [r4]
0065d138  b5 ff ff ea                                      b #0x65d014
0065d13c  05 00 a0 e1                                      mov r0, r5
0065d140  04 10 9d e5                                      ldr r1, [sp, #4]
0065d144  01 fc f3 eb                                      bl #0x35c150
0065d148  00 40 94 e5                                      ldr r4, [r4]
0065d14c  b0 ff ff ea                                      b #0x65d014

; FUNCTION 0x0065d150, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeC1ERKNS0_16CColladaDatabaseEPNS0_5SNodeE
; demangled: glitch::collada::CSceneNode::CSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
0065d150  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065d154  44 51 9f e5                                      ldr r5, [pc, #0x144]
0065d158  44 31 9f e5                                      ldr r3, [pc, #0x144]
0065d15c  44 c1 9f e5                                      ldr ip, [pc, #0x144]
0065d160  05 50 8f e0                                      add r5, pc, r5
0065d164  03 30 95 e7                                      ldr r3, [r5, r3]
0065d168  0c c0 95 e7                                      ldr ip, [r5, ip]
0065d16c  01 60 a0 e3                                      mov r6, #1
0065d170  24 e0 93 e5                                      ldr lr, [r3, #0x24]
0065d174  08 c0 8c e2                                      add ip, ip, #8
0065d178  5c 61 80 e5                                      str r6, [r0, #0x15c]
0065d17c  00 e0 80 e5                                      str lr, [r0]
0065d180  58 c1 80 e5                                      str ip, [r0, #0x158]
0065d184  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
0065d188  28 e0 93 e5                                      ldr lr, [r3, #0x28]
0065d18c  01 70 a0 e1                                      mov r7, r1
0065d190  2c d0 4d e2                                      sub sp, sp, #0x2c
0065d194  04 10 83 e2                                      add r1, r3, #4
0065d198  02 60 a0 e1                                      mov r6, r2
0065d19c  0c e0 80 e7                                      str lr, [r0, ip]
0065d1a0  00 20 e0 e3                                      mvn r2, #0
0065d1a4  00 40 a0 e1                                      mov r4, r0
0065d1a8  61 9a fc eb                                      bl #0x583b34
0065d1ac  00 30 97 e5                                      ldr r3, [r7]
0065d1b0  4c 31 84 e5                                      str r3, [r4, #0x14c]
0065d1b4  04 20 97 e5                                      ldr r2, [r7, #4]
0065d1b8  00 00 53 e3                                      cmp r3, #0
0065d1bc  50 21 84 e5                                      str r2, [r4, #0x150]
0065d1c0  03 00 00 0a                                      beq #0x65d1d4
0065d1c4  04 20 93 e5                                      ldr r2, [r3, #4]
0065d1c8  00 00 52 e3                                      cmp r2, #0
0065d1cc  01 20 82 12                                      addne r2, r2, #1
0065d1d0  04 20 83 15                                      strne r2, [r3, #4]
0065d1d4  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
0065d1d8  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0065d1dc  00 00 56 e3                                      cmp r6, #0
0065d1e0  02 20 95 e7                                      ldr r2, [r5, r2]
0065d1e4  03 30 95 e7                                      ldr r3, [r5, r3]
0065d1e8  54 61 84 e5                                      str r6, [r4, #0x154]
0065d1ec  04 20 82 e2                                      add r2, r2, #4
0065d1f0  49 1f 83 e2                                      add r1, r3, #0x124
0065d1f4  1c 30 83 e2                                      add r3, r3, #0x1c
0065d1f8  48 21 84 e5                                      str r2, [r4, #0x148]
0065d1fc  00 30 84 e5                                      str r3, [r4]
0065d200  58 11 84 e5                                      str r1, [r4, #0x158]
0065d204  22 00 00 0a                                      beq #0x65d294
0065d208  04 10 96 e5                                      ldr r1, [r6, #4]
0065d20c  04 00 a0 e1                                      mov r0, r4
0065d210  fb ed fc eb                                      bl #0x598a04
0065d214  54 31 94 e5                                      ldr r3, [r4, #0x154]
0065d218  04 00 a0 e1                                      mov r0, r4
0065d21c  1c 10 8d e2                                      add r1, sp, #0x1c
0065d220  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0065d224  1c 20 8d e5                                      str r2, [sp, #0x1c]
0065d228  10 20 93 e5                                      ldr r2, [r3, #0x10]
0065d22c  20 20 8d e5                                      str r2, [sp, #0x20]
0065d230  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065d234  24 30 8d e5                                      str r3, [sp, #0x24]
0065d238  bb e7 fc eb                                      bl #0x59712c
0065d23c  54 31 94 e5                                      ldr r3, [r4, #0x154]
0065d240  04 00 a0 e1                                      mov r0, r4
0065d244  0d 10 a0 e1                                      mov r1, sp
0065d248  18 20 93 e5                                      ldr r2, [r3, #0x18]
0065d24c  00 20 8d e5                                      str r2, [sp]
0065d250  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0065d254  04 20 8d e5                                      str r2, [sp, #4]
0065d258  20 20 93 e5                                      ldr r2, [r3, #0x20]
0065d25c  08 20 8d e5                                      str r2, [sp, #8]
0065d260  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065d264  0c 30 8d e5                                      str r3, [sp, #0xc]
0065d268  a1 e7 fc eb                                      bl #0x5970f4
0065d26c  54 31 94 e5                                      ldr r3, [r4, #0x154]
0065d270  04 00 a0 e1                                      mov r0, r4
0065d274  10 10 8d e2                                      add r1, sp, #0x10
0065d278  28 20 93 e5                                      ldr r2, [r3, #0x28]
0065d27c  10 20 8d e5                                      str r2, [sp, #0x10]
0065d280  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
0065d284  14 20 8d e5                                      str r2, [sp, #0x14]
0065d288  30 30 93 e5                                      ldr r3, [r3, #0x30]
0065d28c  18 30 8d e5                                      str r3, [sp, #0x18]
0065d290  8b e7 fc eb                                      bl #0x5970c4
0065d294  04 00 a0 e1                                      mov r0, r4
0065d298  2c d0 8d e2                                      add sp, sp, #0x2c
0065d29c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065d2a0  30 79 33 00 44 40 00 00 44 2b 00 00 b4 17 00 00  .byte 0x30, 0x79, 0x33, 0x00, 0x44, 0x40, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
0065d2b0  7c 34 00 00                                      .byte 0x7c, 0x34, 0x00, 0x00

; FUNCTION 0x0065d2b4, declared_size=308, range_size=308, mode=arm
; class-group: glitch::collada::CSceneNode
; alias: _ZN6glitch7collada10CSceneNodeC2ERKNS0_16CColladaDatabaseEPNS0_5SNodeE
; demangled: glitch::collada::CSceneNode::CSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
0065d2b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0065d2b8  02 50 a0 e1                                      mov r5, r2
0065d2bc  2c d0 4d e2                                      sub sp, sp, #0x2c
0065d2c0  00 20 e0 e3                                      mvn r2, #0
0065d2c4  01 40 a0 e1                                      mov r4, r1
0065d2c8  04 10 81 e2                                      add r1, r1, #4
0065d2cc  00 60 a0 e1                                      mov r6, r0
0065d2d0  03 70 a0 e1                                      mov r7, r3
0065d2d4  16 9a fc eb                                      bl #0x583b34
0065d2d8  00 20 95 e5                                      ldr r2, [r5]
0065d2dc  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0065d2e0  4c 21 86 e5                                      str r2, [r6, #0x14c]
0065d2e4  04 10 95 e5                                      ldr r1, [r5, #4]
0065d2e8  00 00 52 e3                                      cmp r2, #0
0065d2ec  03 30 8f e0                                      add r3, pc, r3
0065d2f0  50 11 86 e5                                      str r1, [r6, #0x150]
0065d2f4  03 00 00 0a                                      beq #0x65d308
0065d2f8  04 10 92 e5                                      ldr r1, [r2, #4]
0065d2fc  00 00 51 e3                                      cmp r1, #0
0065d300  01 10 81 12                                      addne r1, r1, #1
0065d304  04 10 82 15                                      strne r1, [r2, #4]
0065d308  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
0065d30c  00 00 57 e3                                      cmp r7, #0
0065d310  02 20 93 e7                                      ldr r2, [r3, r2]
0065d314  04 20 82 e2                                      add r2, r2, #4
0065d318  48 21 86 e5                                      str r2, [r6, #0x148]
0065d31c  00 30 94 e5                                      ldr r3, [r4]
0065d320  00 30 86 e5                                      str r3, [r6]
0065d324  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0065d328  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0065d32c  03 20 86 e7                                      str r2, [r6, r3]
0065d330  00 30 96 e5                                      ldr r3, [r6]
0065d334  20 20 94 e5                                      ldr r2, [r4, #0x20]
0065d338  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065d33c  03 20 86 e7                                      str r2, [r6, r3]
0065d340  54 71 86 e5                                      str r7, [r6, #0x154]
0065d344  22 00 00 0a                                      beq #0x65d3d4
0065d348  04 10 97 e5                                      ldr r1, [r7, #4]
0065d34c  06 00 a0 e1                                      mov r0, r6
0065d350  ab ed fc eb                                      bl #0x598a04
0065d354  54 31 96 e5                                      ldr r3, [r6, #0x154]
0065d358  06 00 a0 e1                                      mov r0, r6
0065d35c  1c 10 8d e2                                      add r1, sp, #0x1c
0065d360  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0065d364  1c 20 8d e5                                      str r2, [sp, #0x1c]
0065d368  10 20 93 e5                                      ldr r2, [r3, #0x10]
0065d36c  20 20 8d e5                                      str r2, [sp, #0x20]
0065d370  14 30 93 e5                                      ldr r3, [r3, #0x14]
0065d374  24 30 8d e5                                      str r3, [sp, #0x24]
0065d378  6b e7 fc eb                                      bl #0x59712c
0065d37c  54 31 96 e5                                      ldr r3, [r6, #0x154]
0065d380  06 00 a0 e1                                      mov r0, r6
0065d384  0d 10 a0 e1                                      mov r1, sp
0065d388  18 20 93 e5                                      ldr r2, [r3, #0x18]
0065d38c  00 20 8d e5                                      str r2, [sp]
0065d390  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0065d394  04 20 8d e5                                      str r2, [sp, #4]
0065d398  20 20 93 e5                                      ldr r2, [r3, #0x20]
0065d39c  08 20 8d e5                                      str r2, [sp, #8]
0065d3a0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0065d3a4  0c 30 8d e5                                      str r3, [sp, #0xc]
0065d3a8  51 e7 fc eb                                      bl #0x5970f4
0065d3ac  54 31 96 e5                                      ldr r3, [r6, #0x154]
0065d3b0  06 00 a0 e1                                      mov r0, r6
0065d3b4  10 10 8d e2                                      add r1, sp, #0x10
0065d3b8  28 20 93 e5                                      ldr r2, [r3, #0x28]
0065d3bc  10 20 8d e5                                      str r2, [sp, #0x10]
0065d3c0  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
0065d3c4  14 20 8d e5                                      str r2, [sp, #0x14]
0065d3c8  30 30 93 e5                                      ldr r3, [r3, #0x30]
0065d3cc  18 30 8d e5                                      str r3, [sp, #0x18]
0065d3d0  3b e7 fc eb                                      bl #0x5970c4
0065d3d4  06 00 a0 e1                                      mov r0, r6
0065d3d8  2c d0 8d e2                                      add sp, sp, #0x2c
0065d3dc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0065d3e0  a4 77 33 00 b4 17 00 00                          .byte 0xa4, 0x77, 0x33, 0x00, 0xb4, 0x17, 0x00, 0x00
