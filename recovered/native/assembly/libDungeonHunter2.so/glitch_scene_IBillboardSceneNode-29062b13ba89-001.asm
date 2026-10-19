; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00580de8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19IBillboardSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
00580de8  04 00 40 e2                                      sub r0, r0, #4
00580dec  ff ff ff ea                                      b #0x580df0

; FUNCTION 0x00580df0, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZN6glitch5scene19IBillboardSceneNodeD1Ev
; demangled: glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
00580df0  44 30 9f e5                                      ldr r3, [pc, #0x44]
00580df4  44 20 9f e5                                      ldr r2, [pc, #0x44]
00580df8  44 10 9f e5                                      ldr r1, [pc, #0x44]
00580dfc  03 30 8f e0                                      add r3, pc, r3
00580e00  02 20 93 e7                                      ldr r2, [r3, r2]
00580e04  01 10 93 e7                                      ldr r1, [r3, r1]
00580e08  10 40 2d e9                                      push {r4, lr}
00580e0c  00 40 a0 e1                                      mov r4, r0
00580e10  10 c0 82 e2                                      add ip, r2, #0x10
00580e14  53 0f 82 e2                                      add r0, r2, #0x14c
00580e18  48 20 82 e2                                      add r2, r2, #0x48
00580e1c  34 01 84 e5                                      str r0, [r4, #0x134]
00580e20  00 c0 84 e5                                      str ip, [r4]
00580e24  04 20 84 e5                                      str r2, [r4, #4]
00580e28  04 10 81 e2                                      add r1, r1, #4
00580e2c  04 00 84 e2                                      add r0, r4, #4
00580e30  a1 5f 00 eb                                      bl #0x598cbc
00580e34  04 00 a0 e1                                      mov r0, r4
00580e38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00580e3c  94 3c 41 00 bc 3e 00 00 b0 10 00 00              .byte 0x94, 0x3c, 0x41, 0x00, 0xbc, 0x3e, 0x00, 0x00, 0xb0, 0x10, 0x00, 0x00

; FUNCTION 0x00580e48, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZTv0_n24_N6glitch5scene19IBillboardSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
00580e48  00 30 90 e5                                      ldr r3, [r0]
00580e4c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00580e50  03 00 80 e0                                      add r0, r0, r3
00580e54  e5 ff ff ea                                      b #0x580df0

; FUNCTION 0x00580e58, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZTv0_n12_N6glitch5scene19IBillboardSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
00580e58  00 30 90 e5                                      ldr r3, [r0]
00580e5c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00580e60  03 00 80 e0                                      add r0, r0, r3
00580e64  e1 ff ff ea                                      b #0x580df0

; FUNCTION 0x00580eac, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZN6glitch5scene19IBillboardSceneNodeC2EiRKNS_4core8vector3dIfEE
; demangled: glitch::scene::IBillboardSceneNode::IBillboardSceneNode(int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00580eac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00580eb0  90 e0 9f e5                                      ldr lr, [pc, #0x90]
00580eb4  90 50 9f e5                                      ldr r5, [pc, #0x90]
00580eb8  2c d0 4d e2                                      sub sp, sp, #0x2c
00580ebc  0e e0 8f e0                                      add lr, pc, lr
00580ec0  05 50 9e e7                                      ldr r5, [lr, r5]
00580ec4  0c 70 8d e2                                      add r7, sp, #0xc
00580ec8  00 40 a0 e1                                      mov r4, r0
00580ecc  08 50 85 e2                                      add r5, r5, #8
00580ed0  04 50 80 e4                                      str r5, [r0], #4
00580ed4  fe c5 a0 e3                                      mov ip, #0x3f800000
00580ed8  01 50 a0 e1                                      mov r5, r1
00580edc  00 60 a0 e3                                      mov r6, #0
00580ee0  00 70 8d e5                                      str r7, [sp]
00580ee4  04 10 81 e2                                      add r1, r1, #4
00580ee8  1c 70 8d e2                                      add r7, sp, #0x1c
00580eec  14 60 8d e5                                      str r6, [sp, #0x14]
00580ef0  24 c0 8d e5                                      str ip, [sp, #0x24]
00580ef4  04 70 8d e5                                      str r7, [sp, #4]
00580ef8  0c 60 8d e5                                      str r6, [sp, #0xc]
00580efc  10 60 8d e5                                      str r6, [sp, #0x10]
00580f00  18 c0 8d e5                                      str ip, [sp, #0x18]
00580f04  1c c0 8d e5                                      str ip, [sp, #0x1c]
00580f08  20 c0 8d e5                                      str ip, [sp, #0x20]
00580f0c  6b 60 00 eb                                      bl #0x5990c0
00580f10  00 30 95 e5                                      ldr r3, [r5]
00580f14  04 00 a0 e1                                      mov r0, r4
00580f18  00 30 84 e5                                      str r3, [r4]
00580f1c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00580f20  04 20 84 e5                                      str r2, [r4, #4]
00580f24  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00580f28  14 20 95 e5                                      ldr r2, [r5, #0x14]
00580f2c  03 20 84 e7                                      str r2, [r4, r3]
00580f30  00 30 94 e5                                      ldr r3, [r4]
00580f34  18 20 95 e5                                      ldr r2, [r5, #0x18]
00580f38  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00580f3c  03 20 84 e7                                      str r2, [r4, r3]
00580f40  2c d0 8d e2                                      add sp, sp, #0x2c
00580f44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00580f48  d4 3b 41 00 64 3a 00 00                          .byte 0xd4, 0x3b, 0x41, 0x00, 0x64, 0x3a, 0x00, 0x00

; FUNCTION 0x0058174c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19IBillboardSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
0058174c  04 00 40 e2                                      sub r0, r0, #4
00581750  ff ff ff ea                                      b #0x581754

; FUNCTION 0x00581754, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZN6glitch5scene19IBillboardSceneNodeD0Ev
; demangled: glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
00581754  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00581758  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0058175c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00581760  03 30 8f e0                                      add r3, pc, r3
00581764  02 20 93 e7                                      ldr r2, [r3, r2]
00581768  01 10 93 e7                                      ldr r1, [r3, r1]
0058176c  10 40 2d e9                                      push {r4, lr}
00581770  00 40 a0 e1                                      mov r4, r0
00581774  10 c0 82 e2                                      add ip, r2, #0x10
00581778  53 0f 82 e2                                      add r0, r2, #0x14c
0058177c  48 20 82 e2                                      add r2, r2, #0x48
00581780  00 c0 84 e5                                      str ip, [r4]
00581784  04 20 84 e5                                      str r2, [r4, #4]
00581788  34 01 84 e5                                      str r0, [r4, #0x134]
0058178c  04 10 81 e2                                      add r1, r1, #4
00581790  04 00 84 e2                                      add r0, r4, #4
00581794  48 5d 00 eb                                      bl #0x598cbc
00581798  04 00 a0 e1                                      mov r0, r4
0058179c  c3 32 f6 eb                                      bl #0x30e2b0
005817a0  04 00 a0 e1                                      mov r0, r4
005817a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005817a8  30 33 41 00 bc 3e 00 00 b0 10 00 00              .byte 0x30, 0x33, 0x41, 0x00, 0xbc, 0x3e, 0x00, 0x00, 0xb0, 0x10, 0x00, 0x00

; FUNCTION 0x005817b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZTv0_n24_N6glitch5scene19IBillboardSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
005817b4  00 30 90 e5                                      ldr r3, [r0]
005817b8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005817bc  03 00 80 e0                                      add r0, r0, r3
005817c0  e3 ff ff ea                                      b #0x581754

; FUNCTION 0x005817c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IBillboardSceneNode
; alias: _ZTv0_n12_N6glitch5scene19IBillboardSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IBillboardSceneNode::~IBillboardSceneNode()
; decoder-mode: arm
005817c4  00 30 90 e5                                      ldr r3, [r0]
005817c8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005817cc  03 00 80 e0                                      add r0, r0, r3
005817d0  df ff ff ea                                      b #0x581754
