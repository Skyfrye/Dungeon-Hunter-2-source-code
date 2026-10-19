; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035aad8, declared_size=104, range_size=104, mode=arm
; class-group: MeshSceneNode
; alias: _ZN13MeshSceneNodeD1Ev
; demangled: MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035aad8  54 30 9f e5                                      ldr r3, [pc, #0x54]
0035aadc  54 10 9f e5                                      ldr r1, [pc, #0x54]
0035aae0  54 20 9f e5                                      ldr r2, [pc, #0x54]
0035aae4  03 30 8f e0                                      add r3, pc, r3
0035aae8  01 10 93 e7                                      ldr r1, [r3, r1]
0035aaec  10 40 2d e9                                      push {r4, lr}
0035aaf0  02 20 93 e7                                      ldr r2, [r3, r2]
0035aaf4  04 c0 91 e5                                      ldr ip, [r1, #4]
0035aaf8  2c e0 91 e5                                      ldr lr, [r1, #0x2c]
0035aafc  4a 2f 82 e2                                      add r2, r2, #0x128
0035ab00  3c 21 80 e5                                      str r2, [r0, #0x13c]
0035ab04  00 c0 80 e5                                      str ip, [r0]
0035ab08  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0035ab0c  30 20 91 e5                                      ldr r2, [r1, #0x30]
0035ab10  00 40 a0 e1                                      mov r4, r0
0035ab14  0c e0 80 e7                                      str lr, [r0, ip]
0035ab18  00 c0 90 e5                                      ldr ip, [r0]
0035ab1c  08 10 81 e2                                      add r1, r1, #8
0035ab20  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
0035ab24  03 20 80 e7                                      str r2, [r0, r3]
0035ab28  ec ad 0b eb                                      bl #0x6462e0
0035ab2c  04 00 a0 e1                                      mov r0, r4
0035ab30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035ab34  ac 9f 63 00 84 40 00 00 e0 24 00 00              .byte 0xac, 0x9f, 0x63, 0x00, 0x84, 0x40, 0x00, 0x00, 0xe0, 0x24, 0x00, 0x00

; FUNCTION 0x0035ab40, declared_size=28, range_size=28, mode=arm
; class-group: MeshSceneNode
; alias: _ZN13MeshSceneNodeD0Ev
; demangled: MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035ab40  10 40 2d e9                                      push {r4, lr}
0035ab44  00 40 a0 e1                                      mov r4, r0
0035ab48  e2 ff ff eb                                      bl #0x35aad8
0035ab4c  04 00 a0 e1                                      mov r0, r4
0035ab50  3a d6 fe eb                                      bl #0x310440
0035ab54  04 00 a0 e1                                      mov r0, r4
0035ab58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035ab5c, declared_size=104, range_size=104, mode=arm
; class-group: MeshSceneNode
; alias: _ZN13MeshSceneNodeD2Ev
; demangled: MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035ab5c  10 40 2d e9                                      push {r4, lr}
0035ab60  01 30 a0 e1                                      mov r3, r1
0035ab64  00 10 91 e5                                      ldr r1, [r1]
0035ab68  04 20 83 e2                                      add r2, r3, #4
0035ab6c  00 40 a0 e1                                      mov r4, r0
0035ab70  00 10 80 e5                                      str r1, [r0]
0035ab74  1c c0 11 e5                                      ldr ip, [r1, #-0x1c]
0035ab78  34 e0 93 e5                                      ldr lr, [r3, #0x34]
0035ab7c  04 10 82 e2                                      add r1, r2, #4
0035ab80  0c e0 80 e7                                      str lr, [r0, ip]
0035ab84  00 c0 90 e5                                      ldr ip, [r0]
0035ab88  38 e0 93 e5                                      ldr lr, [r3, #0x38]
0035ab8c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035ab90  0c e0 80 e7                                      str lr, [r0, ip]
0035ab94  04 30 93 e5                                      ldr r3, [r3, #4]
0035ab98  00 30 80 e5                                      str r3, [r0]
0035ab9c  28 c0 92 e5                                      ldr ip, [r2, #0x28]
0035aba0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035aba4  03 c0 80 e7                                      str ip, [r0, r3]
0035aba8  00 30 90 e5                                      ldr r3, [r0]
0035abac  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
0035abb0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035abb4  03 20 80 e7                                      str r2, [r0, r3]
0035abb8  c8 ad 0b eb                                      bl #0x6462e0
0035abbc  04 00 a0 e1                                      mov r0, r4
0035abc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035b240, declared_size=128, range_size=128, mode=arm
; class-group: MeshSceneNode
; alias: _ZN13MeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
; demangled: MeshSceneNode::MeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035b240  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b244  64 50 9f e5                                      ldr r5, [pc, #0x64]
0035b248  64 30 9f e5                                      ldr r3, [pc, #0x64]
0035b24c  64 20 9f e5                                      ldr r2, [pc, #0x64]
0035b250  05 50 8f e0                                      add r5, pc, r5
0035b254  03 30 95 e7                                      ldr r3, [r5, r3]
0035b258  02 20 95 e7                                      ldr r2, [r5, r2]
0035b25c  01 e0 a0 e3                                      mov lr, #1
0035b260  3c c0 93 e5                                      ldr ip, [r3, #0x3c]
0035b264  08 20 82 e2                                      add r2, r2, #8
0035b268  40 e1 80 e5                                      str lr, [r0, #0x140]
0035b26c  3c 21 80 e5                                      str r2, [r0, #0x13c]
0035b270  00 c0 80 e5                                      str ip, [r0]
0035b274  40 e0 93 e5                                      ldr lr, [r3, #0x40]
0035b278  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035b27c  01 20 a0 e1                                      mov r2, r1
0035b280  04 10 83 e2                                      add r1, r3, #4
0035b284  0c e0 80 e7                                      str lr, [r0, ip]
0035b288  00 40 a0 e1                                      mov r4, r0
0035b28c  c2 ff ff eb                                      bl #0x35b19c
0035b290  24 30 9f e5                                      ldr r3, [pc, #0x24]
0035b294  04 00 a0 e1                                      mov r0, r4
0035b298  03 30 95 e7                                      ldr r3, [r5, r3]
0035b29c  4a 2f 83 e2                                      add r2, r3, #0x128
0035b2a0  1c 30 83 e2                                      add r3, r3, #0x1c
0035b2a4  00 30 84 e5                                      str r3, [r4]
0035b2a8  3c 21 84 e5                                      str r2, [r4, #0x13c]
0035b2ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b2b0  40 98 63 00 84 40 00 00 44 2b 00 00 e0 24 00 00  .byte 0x40, 0x98, 0x63, 0x00, 0x84, 0x40, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe0, 0x24, 0x00, 0x00

; FUNCTION 0x0035b2c0, declared_size=64, range_size=64, mode=arm
; class-group: MeshSceneNode
; alias: _ZN13MeshSceneNodeC2ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
; demangled: MeshSceneNode::MeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035b2c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b2c4  01 50 a0 e1                                      mov r5, r1
0035b2c8  04 10 81 e2                                      add r1, r1, #4
0035b2cc  00 40 a0 e1                                      mov r4, r0
0035b2d0  b1 ff ff eb                                      bl #0x35b19c
0035b2d4  00 30 95 e5                                      ldr r3, [r5]
0035b2d8  04 00 a0 e1                                      mov r0, r4
0035b2dc  00 30 84 e5                                      str r3, [r4]
0035b2e0  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035b2e4  34 20 95 e5                                      ldr r2, [r5, #0x34]
0035b2e8  03 20 84 e7                                      str r2, [r4, r3]
0035b2ec  00 30 94 e5                                      ldr r3, [r4]
0035b2f0  38 20 95 e5                                      ldr r2, [r5, #0x38]
0035b2f4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b2f8  03 20 84 e7                                      str r2, [r4, r3]
0035b2fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035bc50, declared_size=16, range_size=16, mode=arm
; class-group: MeshSceneNode
; alias: _ZTv0_n24_N13MeshSceneNodeD0Ev
; demangled: virtual thunk to MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035bc50  00 30 90 e5                                      ldr r3, [r0]
0035bc54  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bc58  03 00 80 e0                                      add r0, r0, r3
0035bc5c  b7 fb ff ea                                      b #0x35ab40

; FUNCTION 0x0035bc60, declared_size=16, range_size=16, mode=arm
; class-group: MeshSceneNode
; alias: _ZTv0_n12_N13MeshSceneNodeD0Ev
; demangled: virtual thunk to MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035bc60  00 30 90 e5                                      ldr r3, [r0]
0035bc64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bc68  03 00 80 e0                                      add r0, r0, r3
0035bc6c  b3 fb ff ea                                      b #0x35ab40

; FUNCTION 0x0035bc70, declared_size=16, range_size=16, mode=arm
; class-group: MeshSceneNode
; alias: _ZTv0_n24_N13MeshSceneNodeD1Ev
; demangled: virtual thunk to MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035bc70  00 30 90 e5                                      ldr r3, [r0]
0035bc74  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bc78  03 00 80 e0                                      add r0, r0, r3
0035bc7c  95 fb ff ea                                      b #0x35aad8

; FUNCTION 0x0035bc80, declared_size=16, range_size=16, mode=arm
; class-group: MeshSceneNode
; alias: _ZTv0_n12_N13MeshSceneNodeD1Ev
; demangled: virtual thunk to MeshSceneNode::~MeshSceneNode()
; decoder-mode: arm
0035bc80  00 30 90 e5                                      ldr r3, [r0]
0035bc84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bc88  03 00 80 e0                                      add r0, r0, r3
0035bc8c  91 fb ff ea                                      b #0x35aad8
