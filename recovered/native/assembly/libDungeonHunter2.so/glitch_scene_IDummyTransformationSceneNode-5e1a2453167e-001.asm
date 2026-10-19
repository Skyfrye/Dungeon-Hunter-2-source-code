; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bb568, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZN6glitch5scene29IDummyTransformationSceneNodeD1Ev
; demangled: glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode()
; decoder-mode: arm
006bb568  38 30 9f e5                                      ldr r3, [pc, #0x38]
006bb56c  38 20 9f e5                                      ldr r2, [pc, #0x38]
006bb570  38 10 9f e5                                      ldr r1, [pc, #0x38]
006bb574  03 30 8f e0                                      add r3, pc, r3
006bb578  02 20 93 e7                                      ldr r2, [r3, r2]
006bb57c  01 10 93 e7                                      ldr r1, [r3, r1]
006bb580  10 40 2d e9                                      push {r4, lr}
006bb584  4a cf 82 e2                                      add ip, r2, #0x128
006bb588  1c 20 82 e2                                      add r2, r2, #0x1c
006bb58c  00 40 a0 e1                                      mov r4, r0
006bb590  00 20 80 e5                                      str r2, [r0]
006bb594  30 c1 80 e5                                      str ip, [r0, #0x130]
006bb598  04 10 81 e2                                      add r1, r1, #4
006bb59c  c6 75 fb eb                                      bl #0x598cbc
006bb5a0  04 00 a0 e1                                      mov r0, r4
006bb5a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006bb5a8  1c 95 2d 00 28 18 00 00 78 0e 00 00              .byte 0x1c, 0x95, 0x2d, 0x00, 0x28, 0x18, 0x00, 0x00, 0x78, 0x0e, 0x00, 0x00

; FUNCTION 0x006bb5b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZTv0_n24_N6glitch5scene29IDummyTransformationSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode()
; decoder-mode: arm
006bb5b4  00 30 90 e5                                      ldr r3, [r0]
006bb5b8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006bb5bc  03 00 80 e0                                      add r0, r0, r3
006bb5c0  e8 ff ff ea                                      b #0x6bb568

; FUNCTION 0x006bb5c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZTv0_n12_N6glitch5scene29IDummyTransformationSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode()
; decoder-mode: arm
006bb5c4  00 30 90 e5                                      ldr r3, [r0]
006bb5c8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006bb5cc  03 00 80 e0                                      add r0, r0, r3
006bb5d0  e4 ff ff ea                                      b #0x6bb568

; FUNCTION 0x006bb6f0, declared_size=140, range_size=140, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZN6glitch5scene29IDummyTransformationSceneNodeC2Ei
; demangled: glitch::scene::IDummyTransformationSceneNode::IDummyTransformationSceneNode(int)
; decoder-mode: arm
006bb6f0  30 40 2d e9                                      push {r4, r5, lr}
006bb6f4  34 d0 4d e2                                      sub sp, sp, #0x34
006bb6f8  08 40 8d e2                                      add r4, sp, #8
006bb6fc  00 c0 a0 e3                                      mov ip, #0
006bb700  fe e5 a0 e3                                      mov lr, #0x3f800000
006bb704  01 50 a0 e1                                      mov r5, r1
006bb708  24 30 8d e2                                      add r3, sp, #0x24
006bb70c  00 40 8d e5                                      str r4, [sp]
006bb710  04 10 81 e2                                      add r1, r1, #4
006bb714  18 40 8d e2                                      add r4, sp, #0x18
006bb718  04 40 8d e5                                      str r4, [sp, #4]
006bb71c  10 c0 8d e5                                      str ip, [sp, #0x10]
006bb720  00 40 a0 e1                                      mov r4, r0
006bb724  20 e0 8d e5                                      str lr, [sp, #0x20]
006bb728  24 c0 8d e5                                      str ip, [sp, #0x24]
006bb72c  28 c0 8d e5                                      str ip, [sp, #0x28]
006bb730  2c c0 8d e5                                      str ip, [sp, #0x2c]
006bb734  08 c0 8d e5                                      str ip, [sp, #8]
006bb738  0c c0 8d e5                                      str ip, [sp, #0xc]
006bb73c  14 e0 8d e5                                      str lr, [sp, #0x14]
006bb740  18 e0 8d e5                                      str lr, [sp, #0x18]
006bb744  1c e0 8d e5                                      str lr, [sp, #0x1c]
006bb748  5c 76 fb eb                                      bl #0x5990c0
006bb74c  00 30 95 e5                                      ldr r3, [r5]
006bb750  04 00 a0 e1                                      mov r0, r4
006bb754  00 30 84 e5                                      str r3, [r4]
006bb758  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006bb75c  10 20 95 e5                                      ldr r2, [r5, #0x10]
006bb760  03 20 84 e7                                      str r2, [r4, r3]
006bb764  00 30 94 e5                                      ldr r3, [r4]
006bb768  14 20 95 e5                                      ldr r2, [r5, #0x14]
006bb76c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006bb770  03 20 84 e7                                      str r2, [r4, r3]
006bb774  34 d0 8d e2                                      add sp, sp, #0x34
006bb778  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006bb8cc, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZN6glitch5scene29IDummyTransformationSceneNodeD0Ev
; demangled: glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode()
; decoder-mode: arm
006bb8cc  40 30 9f e5                                      ldr r3, [pc, #0x40]
006bb8d0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006bb8d4  40 10 9f e5                                      ldr r1, [pc, #0x40]
006bb8d8  03 30 8f e0                                      add r3, pc, r3
006bb8dc  02 20 93 e7                                      ldr r2, [r3, r2]
006bb8e0  01 10 93 e7                                      ldr r1, [r3, r1]
006bb8e4  10 40 2d e9                                      push {r4, lr}
006bb8e8  4a cf 82 e2                                      add ip, r2, #0x128
006bb8ec  1c 20 82 e2                                      add r2, r2, #0x1c
006bb8f0  00 40 a0 e1                                      mov r4, r0
006bb8f4  00 20 80 e5                                      str r2, [r0]
006bb8f8  30 c1 80 e5                                      str ip, [r0, #0x130]
006bb8fc  04 10 81 e2                                      add r1, r1, #4
006bb900  ed 74 fb eb                                      bl #0x598cbc
006bb904  04 00 a0 e1                                      mov r0, r4
006bb908  68 4a f1 eb                                      bl #0x30e2b0
006bb90c  04 00 a0 e1                                      mov r0, r4
006bb910  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006bb914  b8 91 2d 00 28 18 00 00 78 0e 00 00              .byte 0xb8, 0x91, 0x2d, 0x00, 0x28, 0x18, 0x00, 0x00, 0x78, 0x0e, 0x00, 0x00

; FUNCTION 0x006bb920, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZTv0_n24_N6glitch5scene29IDummyTransformationSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode()
; decoder-mode: arm
006bb920  00 30 90 e5                                      ldr r3, [r0]
006bb924  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006bb928  03 00 80 e0                                      add r0, r0, r3
006bb92c  e6 ff ff ea                                      b #0x6bb8cc

; FUNCTION 0x006bb930, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IDummyTransformationSceneNode
; alias: _ZTv0_n12_N6glitch5scene29IDummyTransformationSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IDummyTransformationSceneNode::~IDummyTransformationSceneNode()
; decoder-mode: arm
006bb930  00 30 90 e5                                      ldr r3, [r0]
006bb934  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006bb938  03 00 80 e0                                      add r0, r0, r3
006bb93c  e2 ff ff ea                                      b #0x6bb8cc
