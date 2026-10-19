; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a9c8, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEE6renderEPv
; demangled: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::render(void*)
; decoder-mode: arm
0035a9c8  7c 31 d0 e5                                      ldrb r3, [r0, #0x17c]
0035a9cc  00 00 53 e3                                      cmp r3, #0
0035a9d0  1e ff 2f 01                                      bxeq lr
0035a9d4  55 af 0b ea                                      b #0x646730

; FUNCTION 0x0035ae5c, declared_size=164, range_size=164, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
; demangled: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035ae5c  30 40 2d e9                                      push {r4, r5, lr}
0035ae60  00 40 e0 e3                                      mvn r4, #0
0035ae64  3c d0 4d e2                                      sub sp, sp, #0x3c
0035ae68  00 40 8d e5                                      str r4, [sp]
0035ae6c  2c 40 8d e2                                      add r4, sp, #0x2c
0035ae70  04 40 8d e5                                      str r4, [sp, #4]
0035ae74  10 40 8d e2                                      add r4, sp, #0x10
0035ae78  00 c0 a0 e3                                      mov ip, #0
0035ae7c  fe e5 a0 e3                                      mov lr, #0x3f800000
0035ae80  01 50 a0 e1                                      mov r5, r1
0035ae84  08 40 8d e5                                      str r4, [sp, #8]
0035ae88  04 10 81 e2                                      add r1, r1, #4
0035ae8c  20 40 8d e2                                      add r4, sp, #0x20
0035ae90  00 30 a0 e3                                      mov r3, #0
0035ae94  0c 40 8d e5                                      str r4, [sp, #0xc]
0035ae98  18 c0 8d e5                                      str ip, [sp, #0x18]
0035ae9c  00 40 a0 e1                                      mov r4, r0
0035aea0  28 e0 8d e5                                      str lr, [sp, #0x28]
0035aea4  2c c0 8d e5                                      str ip, [sp, #0x2c]
0035aea8  30 c0 8d e5                                      str ip, [sp, #0x30]
0035aeac  34 c0 8d e5                                      str ip, [sp, #0x34]
0035aeb0  10 c0 8d e5                                      str ip, [sp, #0x10]
0035aeb4  14 c0 8d e5                                      str ip, [sp, #0x14]
0035aeb8  1c e0 8d e5                                      str lr, [sp, #0x1c]
0035aebc  20 e0 8d e5                                      str lr, [sp, #0x20]
0035aec0  24 e0 8d e5                                      str lr, [sp, #0x24]
0035aec4  b2 b9 0b eb                                      bl #0x649594
0035aec8  00 30 95 e5                                      ldr r3, [r5]
0035aecc  04 00 a0 e1                                      mov r0, r4
0035aed0  00 30 84 e5                                      str r3, [r4]
0035aed4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035aed8  40 20 95 e5                                      ldr r2, [r5, #0x40]
0035aedc  03 20 84 e7                                      str r2, [r4, r3]
0035aee0  00 30 94 e5                                      ldr r3, [r4]
0035aee4  44 20 95 e5                                      ldr r2, [r5, #0x44]
0035aee8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035aeec  03 20 84 e7                                      str r2, [r4, r3]
0035aef0  01 30 a0 e3                                      mov r3, #1
0035aef4  7c 31 c4 e5                                      strb r3, [r4, #0x17c]
0035aef8  3c d0 8d e2                                      add sp, sp, #0x3c
0035aefc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0035b668, declared_size=140, range_size=140, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED1Ev
; demangled: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b668  78 30 9f e5                                      ldr r3, [pc, #0x78]
0035b66c  78 10 9f e5                                      ldr r1, [pc, #0x78]
0035b670  78 20 9f e5                                      ldr r2, [pc, #0x78]
0035b674  03 30 8f e0                                      add r3, pc, r3
0035b678  01 10 93 e7                                      ldr r1, [r3, r1]
0035b67c  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b680  02 20 93 e7                                      ldr r2, [r3, r2]
0035b684  04 c0 91 e5                                      ldr ip, [r1, #4]
0035b688  38 e0 91 e5                                      ldr lr, [r1, #0x38]
0035b68c  4a 2f 82 e2                                      add r2, r2, #0x128
0035b690  00 c0 80 e5                                      str ip, [r0]
0035b694  80 21 80 e5                                      str r2, [r0, #0x180]
0035b698  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0035b69c  08 20 91 e5                                      ldr r2, [r1, #8]
0035b6a0  3c 60 91 e5                                      ldr r6, [r1, #0x3c]
0035b6a4  0c e0 80 e7                                      str lr, [r0, ip]
0035b6a8  00 50 90 e5                                      ldr r5, [r0]
0035b6ac  30 e0 91 e5                                      ldr lr, [r1, #0x30]
0035b6b0  34 c0 91 e5                                      ldr ip, [r1, #0x34]
0035b6b4  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
0035b6b8  00 40 a0 e1                                      mov r4, r0
0035b6bc  0c 10 81 e2                                      add r1, r1, #0xc
0035b6c0  05 60 80 e7                                      str r6, [r0, r5]
0035b6c4  00 20 80 e5                                      str r2, [r0]
0035b6c8  1c 30 12 e5                                      ldr r3, [r2, #-0x1c]
0035b6cc  03 e0 80 e7                                      str lr, [r0, r3]
0035b6d0  00 30 90 e5                                      ldr r3, [r0]
0035b6d4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b6d8  03 c0 80 e7                                      str ip, [r0, r3]
0035b6dc  ff aa 0b eb                                      bl #0x6462e0
0035b6e0  04 00 a0 e1                                      mov r0, r4
0035b6e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b6e8  1c 94 63 00 28 33 00 00 bc 23 00 00              .byte 0x1c, 0x94, 0x63, 0x00, 0x28, 0x33, 0x00, 0x00, 0xbc, 0x23, 0x00, 0x00

; FUNCTION 0x0035b6f4, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZTv0_n24_N17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED1Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b6f4  00 30 90 e5                                      ldr r3, [r0]
0035b6f8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b6fc  03 00 80 e0                                      add r0, r0, r3
0035b700  d8 ff ff ea                                      b #0x35b668

; FUNCTION 0x0035b704, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZTv0_n12_N17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED1Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b704  00 30 90 e5                                      ldr r3, [r0]
0035b708  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b70c  03 00 80 e0                                      add r0, r0, r3
0035b710  d4 ff ff ea                                      b #0x35b668

; FUNCTION 0x0035b714, declared_size=28, range_size=28, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED0Ev
; demangled: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b714  10 40 2d e9                                      push {r4, lr}
0035b718  00 40 a0 e1                                      mov r4, r0
0035b71c  d1 ff ff eb                                      bl #0x35b668
0035b720  04 00 a0 e1                                      mov r0, r4
0035b724  45 d3 fe eb                                      bl #0x310440
0035b728  04 00 a0 e1                                      mov r0, r4
0035b72c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035b730, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZTv0_n24_N17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED0Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b730  00 30 90 e5                                      ldr r3, [r0]
0035b734  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b738  03 00 80 e0                                      add r0, r0, r3
0035b73c  f4 ff ff ea                                      b #0x35b714

; FUNCTION 0x0035b740, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZTv0_n12_N17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED0Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b740  00 30 90 e5                                      ldr r3, [r0]
0035b744  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b748  03 00 80 e0                                      add r0, r0, r3
0035b74c  f0 ff ff ea                                      b #0x35b714

; FUNCTION 0x0035b9bc, declared_size=144, range_size=144, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada28CModularSkinnedMeshSceneNodeEED2Ev
; demangled: BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b9bc  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b9c0  01 30 a0 e1                                      mov r3, r1
0035b9c4  00 10 91 e5                                      ldr r1, [r1]
0035b9c8  04 20 83 e2                                      add r2, r3, #4
0035b9cc  04 c0 82 e2                                      add ip, r2, #4
0035b9d0  00 10 80 e5                                      str r1, [r0]
0035b9d4  1c e0 11 e5                                      ldr lr, [r1, #-0x1c]
0035b9d8  40 50 93 e5                                      ldr r5, [r3, #0x40]
0035b9dc  00 40 a0 e1                                      mov r4, r0
0035b9e0  04 10 8c e2                                      add r1, ip, #4
0035b9e4  0e 50 80 e7                                      str r5, [r0, lr]
0035b9e8  00 e0 90 e5                                      ldr lr, [r0]
0035b9ec  44 50 93 e5                                      ldr r5, [r3, #0x44]
0035b9f0  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
0035b9f4  0e 50 80 e7                                      str r5, [r0, lr]
0035b9f8  04 30 93 e5                                      ldr r3, [r3, #4]
0035b9fc  00 30 80 e5                                      str r3, [r0]
0035ba00  34 e0 92 e5                                      ldr lr, [r2, #0x34]
0035ba04  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035ba08  03 e0 80 e7                                      str lr, [r0, r3]
0035ba0c  00 30 90 e5                                      ldr r3, [r0]
0035ba10  38 e0 92 e5                                      ldr lr, [r2, #0x38]
0035ba14  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035ba18  03 e0 80 e7                                      str lr, [r0, r3]
0035ba1c  04 30 92 e5                                      ldr r3, [r2, #4]
0035ba20  00 30 80 e5                                      str r3, [r0]
0035ba24  28 20 9c e5                                      ldr r2, [ip, #0x28]
0035ba28  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035ba2c  03 20 80 e7                                      str r2, [r0, r3]
0035ba30  00 30 90 e5                                      ldr r3, [r0]
0035ba34  2c 20 9c e5                                      ldr r2, [ip, #0x2c]
0035ba38  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035ba3c  03 20 80 e7                                      str r2, [r0, r3]
0035ba40  26 aa 0b eb                                      bl #0x6462e0
0035ba44  04 00 a0 e1                                      mov r0, r4
0035ba48  70 80 bd e8                                      pop {r4, r5, r6, pc}
