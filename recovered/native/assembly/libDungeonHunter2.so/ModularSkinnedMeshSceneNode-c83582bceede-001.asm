; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a8e8, declared_size=44, range_size=44, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNode19onRegisterSceneNodeEv
; demangled: ModularSkinnedMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0035a8e8  10 40 2d e9                                      push {r4, lr}
0035a8ec  10 31 90 e5                                      ldr r3, [r0, #0x110]
0035a8f0  00 40 a0 e1                                      mov r4, r0
0035a8f4  06 1d 80 e2                                      add r1, r0, #0x180
0035a8f8  03 00 a0 e1                                      mov r0, r3
0035a8fc  00 30 93 e5                                      ldr r3, [r3]
0035a900  0f e0 a0 e1                                      mov lr, pc
0035a904  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0035a908  04 00 a0 e1                                      mov r0, r4
0035a90c  10 40 bd e8                                      pop {r4, lr}
0035a910  ac ae 0b ea                                      b #0x6463c8

; FUNCTION 0x0035a940, declared_size=52, range_size=52, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNode22updateAbsolutePositionEb
; demangled: ModularSkinnedMeshSceneNode::updateAbsolutePosition(bool)
; decoder-mode: arm
0035a940  70 40 2d e9                                      push {r4, r5, r6, lr}
0035a944  34 31 90 e5                                      ldr r3, [r0, #0x134]
0035a948  00 40 a0 e1                                      mov r4, r0
0035a94c  01 50 a0 e1                                      mov r5, r1
0035a950  03 00 a0 e1                                      mov r0, r3
0035a954  01 10 a0 e3                                      mov r1, #1
0035a958  00 30 93 e5                                      ldr r3, [r3]
0035a95c  0f e0 a0 e1                                      mov lr, pc
0035a960  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0035a964  04 00 a0 e1                                      mov r0, r4
0035a968  05 10 a0 e1                                      mov r1, r5
0035a96c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0035a970  ba f4 08 ea                                      b #0x597c60

; FUNCTION 0x0035acac, declared_size=8, range_size=8, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZThn384_N27ModularSkinnedMeshSceneNode23prepareSkinForRenderingEv
; demangled: non-virtual thunk to ModularSkinnedMeshSceneNode::prepareSkinForRendering()
; decoder-mode: arm
0035acac  06 0d 40 e2                                      sub r0, r0, #0x180
0035acb0  ff ff ff ea                                      b #0x35acb4

; FUNCTION 0x0035acb4, declared_size=208, range_size=208, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNode23prepareSkinForRenderingEv
; demangled: ModularSkinnedMeshSceneNode::prepareSkinForRendering()
; decoder-mode: arm
0035acb4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035acb8  34 31 90 e5                                      ldr r3, [r0, #0x134]
0035acbc  0c d0 4d e2                                      sub sp, sp, #0xc
0035acc0  00 50 a0 e1                                      mov r5, r0
0035acc4  00 00 53 e3                                      cmp r3, #0
0035acc8  2b 00 00 0a                                      beq #0x35ad7c
0035accc  10 21 90 e5                                      ldr r2, [r0, #0x110]
0035acd0  14 a0 92 e5                                      ldr sl, [r2, #0x14]
0035acd4  00 00 5a e3                                      cmp sl, #0
0035acd8  27 00 00 0a                                      beq #0x35ad7c
0035acdc  03 00 a0 e1                                      mov r0, r3
0035ace0  00 30 93 e5                                      ldr r3, [r3]
0035ace4  0f e0 a0 e1                                      mov lr, pc
0035ace8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0035acec  00 70 50 e2                                      subs r7, r0, #0
0035acf0  21 00 00 0a                                      beq #0x35ad7c
0035acf4  00 40 a0 e3                                      mov r4, #0
0035acf8  04 80 8d e2                                      add r8, sp, #4
0035acfc  0d 60 a0 e1                                      mov r6, sp
0035ad00  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035ad04  08 00 a0 e1                                      mov r0, r8
0035ad08  04 20 a0 e1                                      mov r2, r4
0035ad0c  03 10 a0 e1                                      mov r1, r3
0035ad10  00 30 93 e5                                      ldr r3, [r3]
0035ad14  0f e0 a0 e1                                      mov lr, pc
0035ad18  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0035ad1c  04 30 9d e5                                      ldr r3, [sp, #4]
0035ad20  00 00 53 e2                                      subs r0, r3, #0
0035ad24  11 00 00 0a                                      beq #0x35ad70
0035ad28  15 0a ff eb                                      bl #0x31d584
0035ad2c  34 31 95 e5                                      ldr r3, [r5, #0x134]
0035ad30  04 20 a0 e1                                      mov r2, r4
0035ad34  0d 00 a0 e1                                      mov r0, sp
0035ad38  03 10 a0 e1                                      mov r1, r3
0035ad3c  00 30 93 e5                                      ldr r3, [r3]
0035ad40  0f e0 a0 e1                                      mov lr, pc
0035ad44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0035ad48  34 21 95 e5                                      ldr r2, [r5, #0x134]
0035ad4c  04 30 a0 e1                                      mov r3, r4
0035ad50  00 10 a0 e3                                      mov r1, #0
0035ad54  02 00 a0 e1                                      mov r0, r2
0035ad58  00 c0 92 e5                                      ldr ip, [r2]
0035ad5c  0a 20 a0 e1                                      mov r2, sl
0035ad60  0f e0 a0 e1                                      mov lr, pc
0035ad64  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0035ad68  0d 00 a0 e1                                      mov r0, sp
0035ad6c  9d d7 fe eb                                      bl #0x310be8
0035ad70  01 40 84 e2                                      add r4, r4, #1
0035ad74  07 00 54 e1                                      cmp r4, r7
0035ad78  e0 ff ff 1a                                      bne #0x35ad00
0035ad7c  0c d0 8d e2                                      add sp, sp, #0xc
0035ad80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0035af00, declared_size=136, range_size=136, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
; demangled: ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035af00  70 40 2d e9                                      push {r4, r5, r6, lr}
0035af04  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0035af08  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0035af0c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0035af10  05 50 8f e0                                      add r5, pc, r5
0035af14  03 30 95 e7                                      ldr r3, [r5, r3]
0035af18  02 20 95 e7                                      ldr r2, [r5, r2]
0035af1c  01 e0 a0 e3                                      mov lr, #1
0035af20  54 c0 93 e5                                      ldr ip, [r3, #0x54]
0035af24  08 20 82 e2                                      add r2, r2, #8
0035af28  88 e1 80 e5                                      str lr, [r0, #0x188]
0035af2c  84 21 80 e5                                      str r2, [r0, #0x184]
0035af30  00 c0 80 e5                                      str ip, [r0]
0035af34  58 e0 93 e5                                      ldr lr, [r3, #0x58]
0035af38  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035af3c  01 20 a0 e1                                      mov r2, r1
0035af40  04 10 83 e2                                      add r1, r3, #4
0035af44  0c e0 80 e7                                      str lr, [r0, ip]
0035af48  00 40 a0 e1                                      mov r4, r0
0035af4c  c2 ff ff eb                                      bl #0x35ae5c
0035af50  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0035af54  04 00 a0 e1                                      mov r0, r4
0035af58  03 30 95 e7                                      ldr r3, [r5, r3]
0035af5c  49 2f 83 e2                                      add r2, r3, #0x124
0035af60  1c 10 83 e2                                      add r1, r3, #0x1c
0035af64  4e 3f 83 e2                                      add r3, r3, #0x138
0035af68  00 10 84 e5                                      str r1, [r4]
0035af6c  84 31 84 e5                                      str r3, [r4, #0x184]
0035af70  80 21 84 e5                                      str r2, [r4, #0x180]
0035af74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035af78  80 9b 63 00 10 38 00 00 44 2b 00 00 e0 0c 00 00  .byte 0x80, 0x9b, 0x63, 0x00, 0x10, 0x38, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe0, 0x0c, 0x00, 0x00

; FUNCTION 0x0035af88, declared_size=116, range_size=116, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNodeC2ERKN5boost13intrusive_ptrIN6glitch7collada5IMeshEEE
; demangled: ModularSkinnedMeshSceneNode::ModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035af88  70 40 2d e9                                      push {r4, r5, r6, lr}
0035af8c  01 60 a0 e1                                      mov r6, r1
0035af90  58 50 9f e5                                      ldr r5, [pc, #0x58]
0035af94  04 10 81 e2                                      add r1, r1, #4
0035af98  00 40 a0 e1                                      mov r4, r0
0035af9c  ae ff ff eb                                      bl #0x35ae5c
0035afa0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0035afa4  05 50 8f e0                                      add r5, pc, r5
0035afa8  48 30 9f e5                                      ldr r3, [pc, #0x48]
0035afac  02 20 95 e7                                      ldr r2, [r5, r2]
0035afb0  04 00 a0 e1                                      mov r0, r4
0035afb4  03 30 95 e7                                      ldr r3, [r5, r3]
0035afb8  08 20 82 e2                                      add r2, r2, #8
0035afbc  80 21 84 e5                                      str r2, [r4, #0x180]
0035afc0  00 20 96 e5                                      ldr r2, [r6]
0035afc4  49 3f 83 e2                                      add r3, r3, #0x124
0035afc8  00 20 84 e5                                      str r2, [r4]
0035afcc  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
0035afd0  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
0035afd4  02 10 84 e7                                      str r1, [r4, r2]
0035afd8  00 20 94 e5                                      ldr r2, [r4]
0035afdc  50 10 96 e5                                      ldr r1, [r6, #0x50]
0035afe0  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035afe4  02 10 84 e7                                      str r1, [r4, r2]
0035afe8  80 31 84 e5                                      str r3, [r4, #0x180]
0035afec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035aff0  ec 9a 63 00 bc 2d 00 00 e0 0c 00 00              .byte 0xec, 0x9a, 0x63, 0x00, 0xbc, 0x2d, 0x00, 0x00, 0xe0, 0x0c, 0x00, 0x00

; FUNCTION 0x0035ba4c, declared_size=84, range_size=84, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNodeD1Ev
; demangled: ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035ba4c  40 30 9f e5                                      ldr r3, [pc, #0x40]
0035ba50  40 20 9f e5                                      ldr r2, [pc, #0x40]
0035ba54  40 10 9f e5                                      ldr r1, [pc, #0x40]
0035ba58  03 30 8f e0                                      add r3, pc, r3
0035ba5c  02 20 93 e7                                      ldr r2, [r3, r2]
0035ba60  01 10 93 e7                                      ldr r1, [r3, r1]
0035ba64  10 40 2d e9                                      push {r4, lr}
0035ba68  49 cf 82 e2                                      add ip, r2, #0x124
0035ba6c  1c e0 82 e2                                      add lr, r2, #0x1c
0035ba70  4e 2f 82 e2                                      add r2, r2, #0x138
0035ba74  00 40 a0 e1                                      mov r4, r0
0035ba78  00 e0 80 e5                                      str lr, [r0]
0035ba7c  84 21 80 e5                                      str r2, [r0, #0x184]
0035ba80  80 c1 80 e5                                      str ip, [r0, #0x180]
0035ba84  04 10 81 e2                                      add r1, r1, #4
0035ba88  cb ff ff eb                                      bl #0x35b9bc
0035ba8c  04 00 a0 e1                                      mov r0, r4
0035ba90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035ba94  38 90 63 00 e0 0c 00 00 10 38 00 00              .byte 0x38, 0x90, 0x63, 0x00, 0xe0, 0x0c, 0x00, 0x00, 0x10, 0x38, 0x00, 0x00

; FUNCTION 0x0035baa0, declared_size=28, range_size=28, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNodeD0Ev
; demangled: ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035baa0  10 40 2d e9                                      push {r4, lr}
0035baa4  00 40 a0 e1                                      mov r4, r0
0035baa8  e7 ff ff eb                                      bl #0x35ba4c
0035baac  04 00 a0 e1                                      mov r0, r4
0035bab0  62 d2 fe eb                                      bl #0x310440
0035bab4  04 00 a0 e1                                      mov r0, r4
0035bab8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035babc, declared_size=92, range_size=92, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZN27ModularSkinnedMeshSceneNodeD2Ev
; demangled: ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035babc  10 40 2d e9                                      push {r4, lr}
0035bac0  00 20 91 e5                                      ldr r2, [r1]
0035bac4  44 30 9f e5                                      ldr r3, [pc, #0x44]
0035bac8  00 40 a0 e1                                      mov r4, r0
0035bacc  00 20 80 e5                                      str r2, [r0]
0035bad0  1c c0 12 e5                                      ldr ip, [r2, #-0x1c]
0035bad4  4c e0 91 e5                                      ldr lr, [r1, #0x4c]
0035bad8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0035badc  03 30 8f e0                                      add r3, pc, r3
0035bae0  0c e0 80 e7                                      str lr, [r0, ip]
0035bae4  00 c0 90 e5                                      ldr ip, [r0]
0035bae8  02 20 93 e7                                      ldr r2, [r3, r2]
0035baec  50 e0 91 e5                                      ldr lr, [r1, #0x50]
0035baf0  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035baf4  49 2f 82 e2                                      add r2, r2, #0x124
0035baf8  04 10 81 e2                                      add r1, r1, #4
0035bafc  0c e0 80 e7                                      str lr, [r0, ip]
0035bb00  80 21 80 e5                                      str r2, [r0, #0x180]
0035bb04  ac ff ff eb                                      bl #0x35b9bc
0035bb08  04 00 a0 e1                                      mov r0, r4
0035bb0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035bb10  b4 8f 63 00 e0 0c 00 00                          .byte 0xb4, 0x8f, 0x63, 0x00, 0xe0, 0x0c, 0x00, 0x00

; FUNCTION 0x0035bbd0, declared_size=16, range_size=16, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N27ModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035bbd0  00 30 90 e5                                      ldr r3, [r0]
0035bbd4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bbd8  03 00 80 e0                                      add r0, r0, r3
0035bbdc  af ff ff ea                                      b #0x35baa0

; FUNCTION 0x0035bbe0, declared_size=16, range_size=16, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N27ModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035bbe0  00 30 90 e5                                      ldr r3, [r0]
0035bbe4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bbe8  03 00 80 e0                                      add r0, r0, r3
0035bbec  ab ff ff ea                                      b #0x35baa0

; FUNCTION 0x0035bbf0, declared_size=16, range_size=16, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N27ModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035bbf0  00 30 90 e5                                      ldr r3, [r0]
0035bbf4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bbf8  03 00 80 e0                                      add r0, r0, r3
0035bbfc  92 ff ff ea                                      b #0x35ba4c

; FUNCTION 0x0035bc00, declared_size=16, range_size=16, mode=arm
; class-group: ModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N27ModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to ModularSkinnedMeshSceneNode::~ModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035bc00  00 30 90 e5                                      ldr r3, [r0]
0035bc04  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bc08  03 00 80 e0                                      add r0, r0, r3
0035bc0c  8e ff ff ea                                      b #0x35ba4c
