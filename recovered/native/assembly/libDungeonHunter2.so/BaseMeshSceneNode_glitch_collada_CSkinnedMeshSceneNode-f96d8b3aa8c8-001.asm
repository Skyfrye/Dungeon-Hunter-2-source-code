; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a9b8, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEE6renderEPv
; demangled: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::render(void*)
; decoder-mode: arm
0035a9b8  7c 31 d0 e5                                      ldrb r3, [r0, #0x17c]
0035a9bc  00 00 53 e3                                      cmp r3, #0
0035a9c0  1e ff 2f 01                                      bxeq lr
0035a9c4  59 af 0b ea                                      b #0x646730

; FUNCTION 0x0035affc, declared_size=164, range_size=164, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
; demangled: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035affc  30 40 2d e9                                      push {r4, r5, lr}
0035b000  00 40 e0 e3                                      mvn r4, #0
0035b004  3c d0 4d e2                                      sub sp, sp, #0x3c
0035b008  00 40 8d e5                                      str r4, [sp]
0035b00c  2c 40 8d e2                                      add r4, sp, #0x2c
0035b010  04 40 8d e5                                      str r4, [sp, #4]
0035b014  10 40 8d e2                                      add r4, sp, #0x10
0035b018  00 c0 a0 e3                                      mov ip, #0
0035b01c  fe e5 a0 e3                                      mov lr, #0x3f800000
0035b020  01 50 a0 e1                                      mov r5, r1
0035b024  08 40 8d e5                                      str r4, [sp, #8]
0035b028  04 10 81 e2                                      add r1, r1, #4
0035b02c  20 40 8d e2                                      add r4, sp, #0x20
0035b030  00 30 a0 e3                                      mov r3, #0
0035b034  0c 40 8d e5                                      str r4, [sp, #0xc]
0035b038  18 c0 8d e5                                      str ip, [sp, #0x18]
0035b03c  00 40 a0 e1                                      mov r4, r0
0035b040  28 e0 8d e5                                      str lr, [sp, #0x28]
0035b044  2c c0 8d e5                                      str ip, [sp, #0x2c]
0035b048  30 c0 8d e5                                      str ip, [sp, #0x30]
0035b04c  34 c0 8d e5                                      str ip, [sp, #0x34]
0035b050  10 c0 8d e5                                      str ip, [sp, #0x10]
0035b054  14 c0 8d e5                                      str ip, [sp, #0x14]
0035b058  1c e0 8d e5                                      str lr, [sp, #0x1c]
0035b05c  20 e0 8d e5                                      str lr, [sp, #0x20]
0035b060  24 e0 8d e5                                      str lr, [sp, #0x24]
0035b064  b4 2e 0c eb                                      bl #0x666b3c
0035b068  00 30 95 e5                                      ldr r3, [r5]
0035b06c  04 00 a0 e1                                      mov r0, r4
0035b070  00 30 84 e5                                      str r3, [r4]
0035b074  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035b078  34 20 95 e5                                      ldr r2, [r5, #0x34]
0035b07c  03 20 84 e7                                      str r2, [r4, r3]
0035b080  00 30 94 e5                                      ldr r3, [r4]
0035b084  38 20 95 e5                                      ldr r2, [r5, #0x38]
0035b088  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b08c  03 20 84 e7                                      str r2, [r4, r3]
0035b090  01 30 a0 e3                                      mov r3, #1
0035b094  7c 31 c4 e5                                      strb r3, [r4, #0x17c]
0035b098  3c d0 8d e2                                      add sp, sp, #0x3c
0035b09c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0035b750, declared_size=104, range_size=104, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED1Ev
; demangled: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b750  54 30 9f e5                                      ldr r3, [pc, #0x54]
0035b754  54 10 9f e5                                      ldr r1, [pc, #0x54]
0035b758  54 20 9f e5                                      ldr r2, [pc, #0x54]
0035b75c  03 30 8f e0                                      add r3, pc, r3
0035b760  01 10 93 e7                                      ldr r1, [r3, r1]
0035b764  10 40 2d e9                                      push {r4, lr}
0035b768  02 20 93 e7                                      ldr r2, [r3, r2]
0035b76c  04 c0 91 e5                                      ldr ip, [r1, #4]
0035b770  2c e0 91 e5                                      ldr lr, [r1, #0x2c]
0035b774  4a 2f 82 e2                                      add r2, r2, #0x128
0035b778  80 21 80 e5                                      str r2, [r0, #0x180]
0035b77c  00 c0 80 e5                                      str ip, [r0]
0035b780  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0035b784  30 20 91 e5                                      ldr r2, [r1, #0x30]
0035b788  00 40 a0 e1                                      mov r4, r0
0035b78c  0c e0 80 e7                                      str lr, [r0, ip]
0035b790  00 c0 90 e5                                      ldr ip, [r0]
0035b794  08 10 81 e2                                      add r1, r1, #8
0035b798  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
0035b79c  03 20 80 e7                                      str r2, [r0, r3]
0035b7a0  ce aa 0b eb                                      bl #0x6462e0
0035b7a4  04 00 a0 e1                                      mov r0, r4
0035b7a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035b7ac  34 93 63 00 34 38 00 00 64 08 00 00              .byte 0x34, 0x93, 0x63, 0x00, 0x34, 0x38, 0x00, 0x00, 0x64, 0x08, 0x00, 0x00

; FUNCTION 0x0035b7b8, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZTv0_n24_N17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED1Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b7b8  00 30 90 e5                                      ldr r3, [r0]
0035b7bc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b7c0  03 00 80 e0                                      add r0, r0, r3
0035b7c4  e1 ff ff ea                                      b #0x35b750

; FUNCTION 0x0035b7c8, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZTv0_n12_N17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED1Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b7c8  00 30 90 e5                                      ldr r3, [r0]
0035b7cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b7d0  03 00 80 e0                                      add r0, r0, r3
0035b7d4  dd ff ff ea                                      b #0x35b750

; FUNCTION 0x0035bb18, declared_size=152, range_size=152, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED0Ev
; demangled: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035bb18  70 40 2d e9                                      push {r4, r5, r6, lr}
0035bb1c  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0035bb20  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0035bb24  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0035bb28  05 50 8f e0                                      add r5, pc, r5
0035bb2c  02 60 95 e7                                      ldr r6, [r5, r2]
0035bb30  03 30 95 e7                                      ldr r3, [r5, r3]
0035bb34  00 40 a0 e1                                      mov r4, r0
0035bb38  04 20 96 e5                                      ldr r2, [r6, #4]
0035bb3c  4a 3f 83 e2                                      add r3, r3, #0x128
0035bb40  80 31 80 e5                                      str r3, [r0, #0x180]
0035bb44  00 20 80 e5                                      str r2, [r0]
0035bb48  1c 30 12 e5                                      ldr r3, [r2, #-0x1c]
0035bb4c  2c c0 96 e5                                      ldr ip, [r6, #0x2c]
0035bb50  30 20 96 e5                                      ldr r2, [r6, #0x30]
0035bb54  08 10 86 e2                                      add r1, r6, #8
0035bb58  03 c0 80 e7                                      str ip, [r0, r3]
0035bb5c  00 30 90 e5                                      ldr r3, [r0]
0035bb60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bb64  03 20 80 e7                                      str r2, [r0, r3]
0035bb68  dc a9 0b eb                                      bl #0x6462e0
0035bb6c  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
0035bb70  34 30 9f e5                                      ldr r3, [pc, #0x34]
0035bb74  40 10 96 e5                                      ldr r1, [r6, #0x40]
0035bb78  00 20 84 e5                                      str r2, [r4]
0035bb7c  03 30 95 e7                                      ldr r3, [r5, r3]
0035bb80  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035bb84  04 00 a0 e1                                      mov r0, r4
0035bb88  08 30 83 e2                                      add r3, r3, #8
0035bb8c  02 10 84 e7                                      str r1, [r4, r2]
0035bb90  80 31 84 e5                                      str r3, [r4, #0x180]
0035bb94  29 d2 fe eb                                      bl #0x310440
0035bb98  04 00 a0 e1                                      mov r0, r4
0035bb9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035bba0  68 8f 63 00 34 38 00 00 64 08 00 00 44 2b 00 00  .byte 0x68, 0x8f, 0x63, 0x00, 0x34, 0x38, 0x00, 0x00, 0x64, 0x08, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035bbb0, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZTv0_n24_N17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED0Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035bbb0  00 30 90 e5                                      ldr r3, [r0]
0035bbb4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035bbb8  03 00 80 e0                                      add r0, r0, r3
0035bbbc  d5 ff ff ea                                      b #0x35bb18

; FUNCTION 0x0035bbc0, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>
; alias: _ZTv0_n12_N17BaseMeshSceneNodeIN6glitch7collada21CSkinnedMeshSceneNodeEED0Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035bbc0  00 30 90 e5                                      ldr r3, [r0]
0035bbc4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035bbc8  03 00 80 e0                                      add r0, r0, r3
0035bbcc  d1 ff ff ea                                      b #0x35bb18
