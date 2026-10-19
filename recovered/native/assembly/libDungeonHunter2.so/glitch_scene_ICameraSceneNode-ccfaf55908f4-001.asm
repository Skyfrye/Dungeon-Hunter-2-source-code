; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035beb0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZNK6glitch5scene16ICameraSceneNode13getTargetNodeEv
; demangled: glitch::scene::ICameraSceneNode::getTargetNode() const
; decoder-mode: arm
0035beb0  00 00 a0 e3                                      mov r0, #0
0035beb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0035beb8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZN6glitch5scene16ICameraSceneNode13getTargetNodeEv
; demangled: glitch::scene::ICameraSceneNode::getTargetNode()
; decoder-mode: arm
0035beb8  00 00 a0 e3                                      mov r0, #0
0035bebc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0035bec0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZNK6glitch5scene16ICameraSceneNode12isOrthogonalEv
; demangled: glitch::scene::ICameraSceneNode::isOrthogonal() const
; decoder-mode: arm
0035bec0  34 01 d0 e5                                      ldrb r0, [r0, #0x134]
0035bec4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0035c3bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZThn304_N6glitch5scene16ICameraSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035c3bc  13 0e 40 e2                                      sub r0, r0, #0x130
0035c3c0  ff ff ff ea                                      b #0x35c3c4

; FUNCTION 0x0035c3c4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZN6glitch5scene16ICameraSceneNodeD1Ev
; demangled: glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035c3c4  48 30 9f e5                                      ldr r3, [pc, #0x48]
0035c3c8  48 20 9f e5                                      ldr r2, [pc, #0x48]
0035c3cc  48 c0 9f e5                                      ldr ip, [pc, #0x48]
0035c3d0  48 10 9f e5                                      ldr r1, [pc, #0x48]
0035c3d4  03 30 8f e0                                      add r3, pc, r3
0035c3d8  02 20 93 e7                                      ldr r2, [r3, r2]
0035c3dc  0c c0 93 e7                                      ldr ip, [r3, ip]
0035c3e0  01 10 93 e7                                      ldr r1, [r3, r1]
0035c3e4  10 40 2d e9                                      push {r4, lr}
0035c3e8  65 ef 82 e2                                      add lr, r2, #0x194
0035c3ec  08 c0 8c e2                                      add ip, ip, #8
0035c3f0  1c 20 82 e2                                      add r2, r2, #0x1c
0035c3f4  00 40 a0 e1                                      mov r4, r0
0035c3f8  00 20 80 e5                                      str r2, [r0]
0035c3fc  38 e1 80 e5                                      str lr, [r0, #0x138]
0035c400  30 c1 80 e5                                      str ip, [r0, #0x130]
0035c404  04 10 81 e2                                      add r1, r1, #4
0035c408  2b f2 08 eb                                      bl #0x598cbc
0035c40c  04 00 a0 e1                                      mov r0, r4
0035c410  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035c414  bc 86 63 00 d0 2e 00 00 4c 27 00 00 50 19 00 00  .byte 0xbc, 0x86, 0x63, 0x00, 0xd0, 0x2e, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x50, 0x19, 0x00, 0x00

; FUNCTION 0x0035c424, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZTv0_n24_N6glitch5scene16ICameraSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035c424  00 30 90 e5                                      ldr r3, [r0]
0035c428  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035c42c  03 00 80 e0                                      add r0, r0, r3
0035c430  e3 ff ff ea                                      b #0x35c3c4

; FUNCTION 0x0035c434, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZTv0_n12_N6glitch5scene16ICameraSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035c434  00 30 90 e5                                      ldr r3, [r0]
0035c438  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035c43c  03 00 80 e0                                      add r0, r0, r3
0035c440  df ff ff ea                                      b #0x35c3c4

; FUNCTION 0x0035dba0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZThn304_N6glitch5scene16ICameraSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035dba0  13 0e 40 e2                                      sub r0, r0, #0x130
0035dba4  ff ff ff ea                                      b #0x35dba8

; FUNCTION 0x0035dba8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZN6glitch5scene16ICameraSceneNodeD0Ev
; demangled: glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035dba8  70 40 2d e9                                      push {r4, r5, r6, lr}
0035dbac  70 50 9f e5                                      ldr r5, [pc, #0x70]
0035dbb0  70 30 9f e5                                      ldr r3, [pc, #0x70]
0035dbb4  70 20 9f e5                                      ldr r2, [pc, #0x70]
0035dbb8  70 60 9f e5                                      ldr r6, [pc, #0x70]
0035dbbc  05 50 8f e0                                      add r5, pc, r5
0035dbc0  03 30 95 e7                                      ldr r3, [r5, r3]
0035dbc4  02 20 95 e7                                      ldr r2, [r5, r2]
0035dbc8  06 60 95 e7                                      ldr r6, [r5, r6]
0035dbcc  65 1f 83 e2                                      add r1, r3, #0x194
0035dbd0  08 20 82 e2                                      add r2, r2, #8
0035dbd4  1c 30 83 e2                                      add r3, r3, #0x1c
0035dbd8  00 30 80 e5                                      str r3, [r0]
0035dbdc  38 11 80 e5                                      str r1, [r0, #0x138]
0035dbe0  30 21 80 e5                                      str r2, [r0, #0x130]
0035dbe4  04 10 86 e2                                      add r1, r6, #4
0035dbe8  00 40 a0 e1                                      mov r4, r0
0035dbec  32 ec 08 eb                                      bl #0x598cbc
0035dbf0  18 20 96 e5                                      ldr r2, [r6, #0x18]
0035dbf4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0035dbf8  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0035dbfc  00 20 84 e5                                      str r2, [r4]
0035dc00  03 30 95 e7                                      ldr r3, [r5, r3]
0035dc04  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035dc08  04 00 a0 e1                                      mov r0, r4
0035dc0c  08 30 83 e2                                      add r3, r3, #8
0035dc10  02 10 84 e7                                      str r1, [r4, r2]
0035dc14  38 31 84 e5                                      str r3, [r4, #0x138]
0035dc18  08 ca fe eb                                      bl #0x310440
0035dc1c  04 00 a0 e1                                      mov r0, r4
0035dc20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035dc24  d4 6e 63 00 d0 2e 00 00 4c 27 00 00 50 19 00 00  .byte 0xd4, 0x6e, 0x63, 0x00, 0xd0, 0x2e, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00, 0x50, 0x19, 0x00, 0x00
0035dc34  44 2b 00 00                                      .byte 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035dc38, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZTv0_n24_N6glitch5scene16ICameraSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035dc38  00 30 90 e5                                      ldr r3, [r0]
0035dc3c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035dc40  03 00 80 e0                                      add r0, r0, r3
0035dc44  d7 ff ff ea                                      b #0x35dba8

; FUNCTION 0x0035dc48, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZTv0_n12_N6glitch5scene16ICameraSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::ICameraSceneNode::~ICameraSceneNode()
; decoder-mode: arm
0035dc48  00 30 90 e5                                      ldr r3, [r0]
0035dc4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035dc50  03 00 80 e0                                      add r0, r0, r3
0035dc54  d3 ff ff ea                                      b #0x35dba8

; FUNCTION 0x00582b18, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::ICameraSceneNode
; alias: _ZN6glitch5scene16ICameraSceneNodeC2EiRKNS_4core8vector3dIfEES6_S6_
; demangled: glitch::scene::ICameraSceneNode::ICameraSceneNode(int, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00582b18  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00582b1c  1c d0 4d e2                                      sub sp, sp, #0x1c
00582b20  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00582b24  08 60 8d e2                                      add r6, sp, #8
00582b28  00 40 a0 e1                                      mov r4, r0
00582b2c  01 50 a0 e1                                      mov r5, r1
00582b30  02 80 a0 e1                                      mov r8, r2
00582b34  03 a0 a0 e1                                      mov sl, r3
00582b38  00 10 9c e5                                      ldr r1, [ip]
00582b3c  08 30 9c e5                                      ldr r3, [ip, #8]
00582b40  04 20 9c e5                                      ldr r2, [ip, #4]
00582b44  06 00 a0 e1                                      mov r0, r6
00582b48  a2 67 f7 eb                                      bl #0x35c9d8
00582b4c  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00582b50  04 70 85 e2                                      add r7, r5, #4
00582b54  07 10 a0 e1                                      mov r1, r7
00582b58  08 20 a0 e1                                      mov r2, r8
00582b5c  0a 30 a0 e1                                      mov r3, sl
00582b60  04 00 a0 e1                                      mov r0, r4
00582b64  60 70 9f e5                                      ldr r7, [pc, #0x60]
00582b68  40 10 8d e8                                      stm sp, {r6, ip}
00582b6c  53 59 00 eb                                      bl #0x5990c0
00582b70  58 30 9f e5                                      ldr r3, [pc, #0x58]
00582b74  07 70 8f e0                                      add r7, pc, r7
00582b78  54 20 9f e5                                      ldr r2, [pc, #0x54]
00582b7c  03 30 97 e7                                      ldr r3, [r7, r3]
00582b80  04 00 a0 e1                                      mov r0, r4
00582b84  02 20 97 e7                                      ldr r2, [r7, r2]
00582b88  08 30 83 e2                                      add r3, r3, #8
00582b8c  30 31 84 e5                                      str r3, [r4, #0x130]
00582b90  00 30 95 e5                                      ldr r3, [r5]
00582b94  5e 2f 82 e2                                      add r2, r2, #0x178
00582b98  00 30 84 e5                                      str r3, [r4]
00582b9c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00582ba0  10 10 95 e5                                      ldr r1, [r5, #0x10]
00582ba4  03 10 84 e7                                      str r1, [r4, r3]
00582ba8  00 30 94 e5                                      ldr r3, [r4]
00582bac  14 10 95 e5                                      ldr r1, [r5, #0x14]
00582bb0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00582bb4  03 10 84 e7                                      str r1, [r4, r3]
00582bb8  00 30 a0 e3                                      mov r3, #0
00582bbc  30 21 84 e5                                      str r2, [r4, #0x130]
00582bc0  34 31 c4 e5                                      strb r3, [r4, #0x134]
00582bc4  1c d0 8d e2                                      add sp, sp, #0x1c
00582bc8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00582bcc  1c 1f 41 00 4c 27 00 00 d0 2e 00 00              .byte 0x1c, 0x1f, 0x41, 0x00, 0x4c, 0x27, 0x00, 0x00, 0xd0, 0x2e, 0x00, 0x00
