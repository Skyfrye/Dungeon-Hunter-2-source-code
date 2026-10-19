; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a9a8, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEE6renderEPv
; demangled: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::render(void*)
; decoder-mode: arm
0035a9a8  38 31 d0 e5                                      ldrb r3, [r0, #0x138]
0035a9ac  00 00 53 e3                                      cmp r3, #0
0035a9b0  1e ff 2f 01                                      bxeq lr
0035a9b4  5d af 0b ea                                      b #0x646730

; FUNCTION 0x0035aa00, declared_size=76, range_size=76, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED1Ev
; demangled: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035aa00  38 30 9f e5                                      ldr r3, [pc, #0x38]
0035aa04  38 20 9f e5                                      ldr r2, [pc, #0x38]
0035aa08  38 10 9f e5                                      ldr r1, [pc, #0x38]
0035aa0c  03 30 8f e0                                      add r3, pc, r3
0035aa10  02 20 93 e7                                      ldr r2, [r3, r2]
0035aa14  01 10 93 e7                                      ldr r1, [r3, r1]
0035aa18  10 40 2d e9                                      push {r4, lr}
0035aa1c  4a cf 82 e2                                      add ip, r2, #0x128
0035aa20  1c 20 82 e2                                      add r2, r2, #0x1c
0035aa24  00 40 a0 e1                                      mov r4, r0
0035aa28  00 20 80 e5                                      str r2, [r0]
0035aa2c  3c c1 80 e5                                      str ip, [r0, #0x13c]
0035aa30  04 10 81 e2                                      add r1, r1, #4
0035aa34  29 ae 0b eb                                      bl #0x6462e0
0035aa38  04 00 a0 e1                                      mov r0, r4
0035aa3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035aa40  84 a0 63 00 5c 3d 00 00 40 42 00 00              .byte 0x84, 0xa0, 0x63, 0x00, 0x5c, 0x3d, 0x00, 0x00, 0x40, 0x42, 0x00, 0x00

; FUNCTION 0x0035aa4c, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZTv0_n24_N17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED1Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035aa4c  00 30 90 e5                                      ldr r3, [r0]
0035aa50  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035aa54  03 00 80 e0                                      add r0, r0, r3
0035aa58  e8 ff ff ea                                      b #0x35aa00

; FUNCTION 0x0035aa5c, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZTv0_n12_N17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED1Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035aa5c  00 30 90 e5                                      ldr r3, [r0]
0035aa60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035aa64  03 00 80 e0                                      add r0, r0, r3
0035aa68  e4 ff ff ea                                      b #0x35aa00

; FUNCTION 0x0035b19c, declared_size=164, range_size=164, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEEC2ERKN5boost13intrusive_ptrINS1_5IMeshEEE
; demangled: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::BaseMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&)
; decoder-mode: arm
0035b19c  30 40 2d e9                                      push {r4, r5, lr}
0035b1a0  00 40 e0 e3                                      mvn r4, #0
0035b1a4  3c d0 4d e2                                      sub sp, sp, #0x3c
0035b1a8  00 40 8d e5                                      str r4, [sp]
0035b1ac  2c 40 8d e2                                      add r4, sp, #0x2c
0035b1b0  04 40 8d e5                                      str r4, [sp, #4]
0035b1b4  10 40 8d e2                                      add r4, sp, #0x10
0035b1b8  00 c0 a0 e3                                      mov ip, #0
0035b1bc  fe e5 a0 e3                                      mov lr, #0x3f800000
0035b1c0  01 50 a0 e1                                      mov r5, r1
0035b1c4  08 40 8d e5                                      str r4, [sp, #8]
0035b1c8  04 10 81 e2                                      add r1, r1, #4
0035b1cc  20 40 8d e2                                      add r4, sp, #0x20
0035b1d0  00 30 a0 e3                                      mov r3, #0
0035b1d4  0c 40 8d e5                                      str r4, [sp, #0xc]
0035b1d8  18 c0 8d e5                                      str ip, [sp, #0x18]
0035b1dc  00 40 a0 e1                                      mov r4, r0
0035b1e0  28 e0 8d e5                                      str lr, [sp, #0x28]
0035b1e4  2c c0 8d e5                                      str ip, [sp, #0x2c]
0035b1e8  30 c0 8d e5                                      str ip, [sp, #0x30]
0035b1ec  34 c0 8d e5                                      str ip, [sp, #0x34]
0035b1f0  10 c0 8d e5                                      str ip, [sp, #0x10]
0035b1f4  14 c0 8d e5                                      str ip, [sp, #0x14]
0035b1f8  1c e0 8d e5                                      str lr, [sp, #0x1c]
0035b1fc  20 e0 8d e5                                      str lr, [sp, #0x20]
0035b200  24 e0 8d e5                                      str lr, [sp, #0x24]
0035b204  1b ad 0b eb                                      bl #0x646678
0035b208  00 30 95 e5                                      ldr r3, [r5]
0035b20c  04 00 a0 e1                                      mov r0, r4
0035b210  00 30 84 e5                                      str r3, [r4]
0035b214  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0035b218  28 20 95 e5                                      ldr r2, [r5, #0x28]
0035b21c  03 20 84 e7                                      str r2, [r4, r3]
0035b220  00 30 94 e5                                      ldr r3, [r4]
0035b224  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
0035b228  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b22c  03 20 84 e7                                      str r2, [r4, r3]
0035b230  01 30 a0 e3                                      mov r3, #1
0035b234  38 31 c4 e5                                      strb r3, [r4, #0x138]
0035b238  3c d0 8d e2                                      add sp, sp, #0x3c
0035b23c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0035b478, declared_size=124, range_size=124, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZN17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED0Ev
; demangled: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b478  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b47c  60 50 9f e5                                      ldr r5, [pc, #0x60]
0035b480  60 30 9f e5                                      ldr r3, [pc, #0x60]
0035b484  60 60 9f e5                                      ldr r6, [pc, #0x60]
0035b488  05 50 8f e0                                      add r5, pc, r5
0035b48c  03 30 95 e7                                      ldr r3, [r5, r3]
0035b490  06 60 95 e7                                      ldr r6, [r5, r6]
0035b494  00 40 a0 e1                                      mov r4, r0
0035b498  4a 2f 83 e2                                      add r2, r3, #0x128
0035b49c  1c 30 83 e2                                      add r3, r3, #0x1c
0035b4a0  04 10 86 e2                                      add r1, r6, #4
0035b4a4  00 30 80 e5                                      str r3, [r0]
0035b4a8  3c 21 80 e5                                      str r2, [r0, #0x13c]
0035b4ac  8b ab 0b eb                                      bl #0x6462e0
0035b4b0  30 20 96 e5                                      ldr r2, [r6, #0x30]
0035b4b4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0035b4b8  34 10 96 e5                                      ldr r1, [r6, #0x34]
0035b4bc  00 20 84 e5                                      str r2, [r4]
0035b4c0  03 30 95 e7                                      ldr r3, [r5, r3]
0035b4c4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035b4c8  04 00 a0 e1                                      mov r0, r4
0035b4cc  08 30 83 e2                                      add r3, r3, #8
0035b4d0  02 10 84 e7                                      str r1, [r4, r2]
0035b4d4  3c 31 84 e5                                      str r3, [r4, #0x13c]
0035b4d8  d8 d3 fe eb                                      bl #0x310440
0035b4dc  04 00 a0 e1                                      mov r0, r4
0035b4e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b4e4  08 96 63 00 5c 3d 00 00 40 42 00 00 44 2b 00 00  .byte 0x08, 0x96, 0x63, 0x00, 0x5c, 0x3d, 0x00, 0x00, 0x40, 0x42, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035b4f4, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZTv0_n24_N17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED0Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b4f4  00 30 90 e5                                      ldr r3, [r0]
0035b4f8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b4fc  03 00 80 e0                                      add r0, r0, r3
0035b500  dc ff ff ea                                      b #0x35b478

; FUNCTION 0x0035b504, declared_size=16, range_size=16, mode=arm
; class-group: BaseMeshSceneNode<glitch::collada::CMeshSceneNode>
; alias: _ZTv0_n12_N17BaseMeshSceneNodeIN6glitch7collada14CMeshSceneNodeEED0Ev
; demangled: virtual thunk to BaseMeshSceneNode<glitch::collada::CMeshSceneNode>::~BaseMeshSceneNode()
; decoder-mode: arm
0035b504  00 30 90 e5                                      ldr r3, [r0]
0035b508  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b50c  03 00 80 e0                                      add r0, r0, r3
0035b510  d8 ff ff ea                                      b #0x35b478
