; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f65ac, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::IAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22IAnimatedMeshSceneNodeD1Ev
; demangled: glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode()
; decoder-mode: arm
006f65ac  38 30 9f e5                                      ldr r3, [pc, #0x38]
006f65b0  38 20 9f e5                                      ldr r2, [pc, #0x38]
006f65b4  38 10 9f e5                                      ldr r1, [pc, #0x38]
006f65b8  03 30 8f e0                                      add r3, pc, r3
006f65bc  02 20 93 e7                                      ldr r2, [r3, r2]
006f65c0  01 10 93 e7                                      ldr r1, [r3, r1]
006f65c4  10 40 2d e9                                      push {r4, lr}
006f65c8  15 ce 82 e2                                      add ip, r2, #0x150
006f65cc  1c 20 82 e2                                      add r2, r2, #0x1c
006f65d0  00 40 a0 e1                                      mov r4, r0
006f65d4  00 20 80 e5                                      str r2, [r0]
006f65d8  30 c1 80 e5                                      str ip, [r0, #0x130]
006f65dc  04 10 81 e2                                      add r1, r1, #4
006f65e0  b5 89 fa eb                                      bl #0x598cbc
006f65e4  04 00 a0 e1                                      mov r0, r4
006f65e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f65ec  d8 e4 29 00 ac 4b 00 00 4c 11 00 00              .byte 0xd8, 0xe4, 0x29, 0x00, 0xac, 0x4b, 0x00, 0x00, 0x4c, 0x11, 0x00, 0x00

; FUNCTION 0x006f65f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IAnimatedMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene22IAnimatedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode()
; decoder-mode: arm
006f65f8  00 30 90 e5                                      ldr r3, [r0]
006f65fc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f6600  03 00 80 e0                                      add r0, r0, r3
006f6604  e8 ff ff ea                                      b #0x6f65ac

; FUNCTION 0x006f6608, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IAnimatedMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene22IAnimatedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode()
; decoder-mode: arm
006f6608  00 30 90 e5                                      ldr r3, [r0]
006f660c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f6610  03 00 80 e0                                      add r0, r0, r3
006f6614  e4 ff ff ea                                      b #0x6f65ac

; FUNCTION 0x006f72bc, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IAnimatedMeshSceneNode
; alias: _ZN6glitch5scene22IAnimatedMeshSceneNodeD0Ev
; demangled: glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode()
; decoder-mode: arm
006f72bc  40 30 9f e5                                      ldr r3, [pc, #0x40]
006f72c0  40 20 9f e5                                      ldr r2, [pc, #0x40]
006f72c4  40 10 9f e5                                      ldr r1, [pc, #0x40]
006f72c8  03 30 8f e0                                      add r3, pc, r3
006f72cc  02 20 93 e7                                      ldr r2, [r3, r2]
006f72d0  01 10 93 e7                                      ldr r1, [r3, r1]
006f72d4  10 40 2d e9                                      push {r4, lr}
006f72d8  15 ce 82 e2                                      add ip, r2, #0x150
006f72dc  1c 20 82 e2                                      add r2, r2, #0x1c
006f72e0  00 40 a0 e1                                      mov r4, r0
006f72e4  00 20 80 e5                                      str r2, [r0]
006f72e8  30 c1 80 e5                                      str ip, [r0, #0x130]
006f72ec  04 10 81 e2                                      add r1, r1, #4
006f72f0  71 86 fa eb                                      bl #0x598cbc
006f72f4  04 00 a0 e1                                      mov r0, r4
006f72f8  ec 5b f0 eb                                      bl #0x30e2b0
006f72fc  04 00 a0 e1                                      mov r0, r4
006f7300  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006f7304  c8 d7 29 00 ac 4b 00 00 4c 11 00 00              .byte 0xc8, 0xd7, 0x29, 0x00, 0xac, 0x4b, 0x00, 0x00, 0x4c, 0x11, 0x00, 0x00

; FUNCTION 0x006f7310, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IAnimatedMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene22IAnimatedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode()
; decoder-mode: arm
006f7310  00 30 90 e5                                      ldr r3, [r0]
006f7314  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006f7318  03 00 80 e0                                      add r0, r0, r3
006f731c  e6 ff ff ea                                      b #0x6f72bc

; FUNCTION 0x006f7320, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IAnimatedMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene22IAnimatedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode()
; decoder-mode: arm
006f7320  00 30 90 e5                                      ldr r3, [r0]
006f7324  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006f7328  03 00 80 e0                                      add r0, r0, r3
006f732c  e2 ff ff ea                                      b #0x6f72bc
