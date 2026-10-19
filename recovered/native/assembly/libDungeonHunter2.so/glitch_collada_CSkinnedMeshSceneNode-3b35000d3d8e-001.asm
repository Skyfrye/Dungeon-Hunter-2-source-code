; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a9d8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada21CSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0035a9d8  31 f2 08 ea                                      b #0x5972a4

; FUNCTION 0x0035a9dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZTv0_n16_NK6glitch7collada21CSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0035a9dc  00 30 90 e5                                      ldr r3, [r0]
0035a9e0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0035a9e4  03 00 80 e0                                      add r0, r0, r3
0035a9e8  fa ff ff ea                                      b #0x35a9d8

; FUNCTION 0x0035a9ec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZN6glitch7collada21CSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0035a9ec  99 f5 08 ea                                      b #0x598058

; FUNCTION 0x0035a9f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZTv0_n20_N6glitch7collada21CSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0035a9f0  00 30 90 e5                                      ldr r3, [r0]
0035a9f4  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0035a9f8  03 00 80 e0                                      add r0, r0, r3
0035a9fc  fa ff ff ea                                      b #0x35a9ec

; FUNCTION 0x0035aa6c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZN6glitch7collada21CSkinnedMeshSceneNodeD1Ev
; demangled: glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode()
; decoder-mode: arm
0035aa6c  38 30 9f e5                                      ldr r3, [pc, #0x38]
0035aa70  38 20 9f e5                                      ldr r2, [pc, #0x38]
0035aa74  38 10 9f e5                                      ldr r1, [pc, #0x38]
0035aa78  03 30 8f e0                                      add r3, pc, r3
0035aa7c  02 20 93 e7                                      ldr r2, [r3, r2]
0035aa80  01 10 93 e7                                      ldr r1, [r3, r1]
0035aa84  10 40 2d e9                                      push {r4, lr}
0035aa88  4a cf 82 e2                                      add ip, r2, #0x128
0035aa8c  1c 20 82 e2                                      add r2, r2, #0x1c
0035aa90  00 40 a0 e1                                      mov r4, r0
0035aa94  00 20 80 e5                                      str r2, [r0]
0035aa98  7c c1 80 e5                                      str ip, [r0, #0x17c]
0035aa9c  04 10 81 e2                                      add r1, r1, #4
0035aaa0  0e ae 0b eb                                      bl #0x6462e0
0035aaa4  04 00 a0 e1                                      mov r0, r4
0035aaa8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035aaac  18 a0 63 00 0c 2a 00 00 24 2b 00 00              .byte 0x18, 0xa0, 0x63, 0x00, 0x0c, 0x2a, 0x00, 0x00, 0x24, 0x2b, 0x00, 0x00

; FUNCTION 0x0035aab8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZTv0_n24_N6glitch7collada21CSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode()
; decoder-mode: arm
0035aab8  00 30 90 e5                                      ldr r3, [r0]
0035aabc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035aac0  03 00 80 e0                                      add r0, r0, r3
0035aac4  e8 ff ff ea                                      b #0x35aa6c

; FUNCTION 0x0035aac8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZTv0_n12_N6glitch7collada21CSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode()
; decoder-mode: arm
0035aac8  00 30 90 e5                                      ldr r3, [r0]
0035aacc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035aad0  03 00 80 e0                                      add r0, r0, r3
0035aad4  e4 ff ff ea                                      b #0x35aa6c

; FUNCTION 0x0035ac30, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada21CSkinnedMeshSceneNode25getAbsoluteTransformationEv
; demangled: glitch::collada::CSkinnedMeshSceneNode::getAbsoluteTransformation() const
; decoder-mode: arm
0035ac30  30 40 2d e9                                      push {r4, r5, lr}
0035ac34  34 31 90 e5                                      ldr r3, [r0, #0x134]
0035ac38  64 20 9f e5                                      ldr r2, [pc, #0x64]
0035ac3c  4c d0 4d e2                                      sub sp, sp, #0x4c
0035ac40  18 10 d3 e5                                      ldrb r1, [r3, #0x18]
0035ac44  02 20 8f e0                                      add r2, pc, r2
0035ac48  00 00 51 e3                                      cmp r1, #0
0035ac4c  02 00 00 1a                                      bne #0x35ac5c
0035ac50  14 10 93 e5                                      ldr r1, [r3, #0x14]
0035ac54  01 00 11 e3                                      tst r1, #1
0035ac58  04 00 00 0a                                      beq #0x35ac70
0035ac5c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0035ac60  03 40 92 e7                                      ldr r4, [r2, r3]
0035ac64  04 00 a0 e1                                      mov r0, r4
0035ac68  4c d0 8d e2                                      add sp, sp, #0x4c
0035ac6c  30 80 bd e8                                      pop {r4, r5, pc}
0035ac70  04 50 8d e2                                      add r5, sp, #4
0035ac74  24 20 80 e2                                      add r2, r0, #0x24
0035ac78  03 10 a0 e1                                      mov r1, r3
0035ac7c  4e 4f 80 e2                                      add r4, r0, #0x138
0035ac80  00 30 93 e5                                      ldr r3, [r3]
0035ac84  05 00 a0 e1                                      mov r0, r5
0035ac88  0f e0 a0 e1                                      mov lr, pc
0035ac8c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0035ac90  04 00 a0 e1                                      mov r0, r4
0035ac94  05 10 a0 e1                                      mov r1, r5
0035ac98  41 20 a0 e3                                      mov r2, #0x41
0035ac9c  f1 ce fe eb                                      bl #0x30e868
0035aca0  ef ff ff ea                                      b #0x35ac64
; mapping-symbol data/literal pool
0035aca4  4c 9e 63 00 30 28 00 00                          .byte 0x4c, 0x9e, 0x63, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x0035b514, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZN6glitch7collada21CSkinnedMeshSceneNodeD0Ev
; demangled: glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode()
; decoder-mode: arm
0035b514  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b518  60 50 9f e5                                      ldr r5, [pc, #0x60]
0035b51c  60 30 9f e5                                      ldr r3, [pc, #0x60]
0035b520  60 60 9f e5                                      ldr r6, [pc, #0x60]
0035b524  05 50 8f e0                                      add r5, pc, r5
0035b528  03 30 95 e7                                      ldr r3, [r5, r3]
0035b52c  06 60 95 e7                                      ldr r6, [r5, r6]
0035b530  00 40 a0 e1                                      mov r4, r0
0035b534  4a 2f 83 e2                                      add r2, r3, #0x128
0035b538  1c 30 83 e2                                      add r3, r3, #0x1c
0035b53c  04 10 86 e2                                      add r1, r6, #4
0035b540  00 30 80 e5                                      str r3, [r0]
0035b544  7c 21 80 e5                                      str r2, [r0, #0x17c]
0035b548  64 ab 0b eb                                      bl #0x6462e0
0035b54c  30 20 96 e5                                      ldr r2, [r6, #0x30]
0035b550  34 30 9f e5                                      ldr r3, [pc, #0x34]
0035b554  34 10 96 e5                                      ldr r1, [r6, #0x34]
0035b558  00 20 84 e5                                      str r2, [r4]
0035b55c  03 30 95 e7                                      ldr r3, [r5, r3]
0035b560  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035b564  04 00 a0 e1                                      mov r0, r4
0035b568  08 30 83 e2                                      add r3, r3, #8
0035b56c  02 10 84 e7                                      str r1, [r4, r2]
0035b570  7c 31 84 e5                                      str r3, [r4, #0x17c]
0035b574  b1 d3 fe eb                                      bl #0x310440
0035b578  04 00 a0 e1                                      mov r0, r4
0035b57c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b580  6c 95 63 00 0c 2a 00 00 24 2b 00 00 44 2b 00 00  .byte 0x6c, 0x95, 0x63, 0x00, 0x0c, 0x2a, 0x00, 0x00, 0x24, 0x2b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035b590, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZTv0_n24_N6glitch7collada21CSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode()
; decoder-mode: arm
0035b590  00 30 90 e5                                      ldr r3, [r0]
0035b594  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b598  03 00 80 e0                                      add r0, r0, r3
0035b59c  dc ff ff ea                                      b #0x35b514

; FUNCTION 0x0035b5a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZTv0_n12_N6glitch7collada21CSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CSkinnedMeshSceneNode::~CSkinnedMeshSceneNode()
; decoder-mode: arm
0035b5a0  00 30 90 e5                                      ldr r3, [r0]
0035b5a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b5a8  03 00 80 e0                                      add r0, r0, r3
0035b5ac  d8 ff ff ea                                      b #0x35b514

; FUNCTION 0x006669f8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada21CSkinnedMeshSceneNode7getTypeEv
; demangled: glitch::collada::CSkinnedMeshSceneNode::getType() const
; decoder-mode: arm
006669f8  64 01 06 e3                                      movw r0, #0x6164
006669fc  65 03 47 e3                                      movt r0, #0x7365
00666a00  1e ff 2f e1                                      bx lr

; FUNCTION 0x00666a04, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada21CSkinnedMeshSceneNode25getTransformedBoundingBoxEv
; demangled: glitch::collada::CSkinnedMeshSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
00666a04  10 40 2d e9                                      push {r4, lr}
00666a08  00 30 90 e5                                      ldr r3, [r0]
00666a0c  0f e0 a0 e1                                      mov lr, pc
00666a10  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00666a14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00666a18, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZN6glitch7collada21CSkinnedMeshSceneNode20setIsSkinningEnabledEb
; demangled: glitch::collada::CSkinnedMeshSceneNode::setIsSkinningEnabled(bool)
; decoder-mode: arm
00666a18  10 40 2d e9                                      push {r4, lr}
00666a1c  34 31 90 e5                                      ldr r3, [r0, #0x134]
00666a20  03 00 a0 e1                                      mov r0, r3
00666a24  00 30 93 e5                                      ldr r3, [r3]
00666a28  0f e0 a0 e1                                      mov lr, pc
00666a2c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00666a30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00666a54, declared_size=232, range_size=232, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZN6glitch7collada21CSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::collada::SNode*, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00666a54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00666a58  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
00666a5c  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
00666a60  cc e0 9f e5                                      ldr lr, [pc, #0xcc]
00666a64  05 50 8f e0                                      add r5, pc, r5
00666a68  0c c0 95 e7                                      ldr ip, [r5, ip]
00666a6c  0e e0 95 e7                                      ldr lr, [r5, lr]
00666a70  01 60 a0 e3                                      mov r6, #1
00666a74  30 70 9c e5                                      ldr r7, [ip, #0x30]
00666a78  08 e0 8e e2                                      add lr, lr, #8
00666a7c  7c e1 80 e5                                      str lr, [r0, #0x17c]
00666a80  80 61 80 e5                                      str r6, [r0, #0x180]
00666a84  00 70 80 e5                                      str r7, [r0]
00666a88  0c 70 17 e5                                      ldr r7, [r7, #-0xc]
00666a8c  34 80 9c e5                                      ldr r8, [ip, #0x34]
00666a90  10 d0 4d e2                                      sub sp, sp, #0x10
00666a94  01 e0 a0 e1                                      mov lr, r1
00666a98  07 80 80 e7                                      str r8, [r0, r7]
00666a9c  04 10 8c e2                                      add r1, ip, #4
00666aa0  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00666aa4  00 30 8d e5                                      str r3, [sp]
00666aa8  02 30 a0 e1                                      mov r3, r2
00666aac  04 c0 8d e5                                      str ip, [sp, #4]
00666ab0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00666ab4  0e 20 a0 e1                                      mov r2, lr
00666ab8  00 40 a0 e1                                      mov r4, r0
00666abc  08 c0 8d e5                                      str ip, [sp, #8]
00666ac0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00666ac4  0c c0 8d e5                                      str ip, [sp, #0xc]
00666ac8  ea 7e ff eb                                      bl #0x646678
00666acc  64 30 9f e5                                      ldr r3, [pc, #0x64]
00666ad0  00 20 a0 e3                                      mov r2, #0
00666ad4  02 10 a0 e1                                      mov r1, r2
00666ad8  03 30 95 e7                                      ldr r3, [r5, r3]
00666adc  78 21 c4 e5                                      strb r2, [r4, #0x178]
00666ae0  40 20 a0 e3                                      mov r2, #0x40
00666ae4  4a 0f 83 e2                                      add r0, r3, #0x128
00666ae8  1c 30 83 e2                                      add r3, r3, #0x1c
00666aec  00 30 84 e5                                      str r3, [r4]
00666af0  7c 01 84 e5                                      str r0, [r4, #0x17c]
00666af4  4e 0f 84 e2                                      add r0, r4, #0x138
00666af8  58 9e f2 eb                                      bl #0x30e460
00666afc  fe 35 a0 e3                                      mov r3, #0x3f800000
00666b00  04 00 a0 e1                                      mov r0, r4
00666b04  78 61 c4 e5                                      strb r6, [r4, #0x178]
00666b08  74 31 84 e5                                      str r3, [r4, #0x174]
00666b0c  38 31 84 e5                                      str r3, [r4, #0x138]
00666b10  4c 31 84 e5                                      str r3, [r4, #0x14c]
00666b14  60 31 84 e5                                      str r3, [r4, #0x160]
00666b18  02 10 a0 e3                                      mov r1, #2
00666b1c  9e c1 fc eb                                      bl #0x59719c
00666b20  04 00 a0 e1                                      mov r0, r4
00666b24  10 d0 8d e2                                      add sp, sp, #0x10
00666b28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00666b2c  2c e0 32 00 24 2b 00 00 44 2b 00 00 0c 2a 00 00  .byte 0x2c, 0xe0, 0x32, 0x00, 0x24, 0x2b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x0c, 0x2a, 0x00, 0x00

; FUNCTION 0x00666b3c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CSkinnedMeshSceneNode
; alias: _ZN6glitch7collada21CSkinnedMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::collada::CSkinnedMeshSceneNode::CSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::collada::SNode*, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00666b3c  30 40 2d e9                                      push {r4, r5, lr}
00666b40  14 d0 4d e2                                      sub sp, sp, #0x14
00666b44  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00666b48  01 50 a0 e1                                      mov r5, r1
00666b4c  04 10 81 e2                                      add r1, r1, #4
00666b50  00 c0 8d e5                                      str ip, [sp]
00666b54  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00666b58  00 40 a0 e1                                      mov r4, r0
00666b5c  04 c0 8d e5                                      str ip, [sp, #4]
00666b60  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00666b64  08 c0 8d e5                                      str ip, [sp, #8]
00666b68  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00666b6c  0c c0 8d e5                                      str ip, [sp, #0xc]
00666b70  c0 7e ff eb                                      bl #0x646678
00666b74  00 20 95 e5                                      ldr r2, [r5]
00666b78  00 30 a0 e3                                      mov r3, #0
00666b7c  03 10 a0 e1                                      mov r1, r3
00666b80  00 20 84 e5                                      str r2, [r4]
00666b84  1c c0 12 e5                                      ldr ip, [r2, #-0x1c]
00666b88  28 e0 95 e5                                      ldr lr, [r5, #0x28]
00666b8c  40 20 a0 e3                                      mov r2, #0x40
00666b90  4e 0f 84 e2                                      add r0, r4, #0x138
00666b94  0c e0 84 e7                                      str lr, [r4, ip]
00666b98  00 c0 94 e5                                      ldr ip, [r4]
00666b9c  2c e0 95 e5                                      ldr lr, [r5, #0x2c]
00666ba0  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00666ba4  0c e0 84 e7                                      str lr, [r4, ip]
00666ba8  78 31 c4 e5                                      strb r3, [r4, #0x178]
00666bac  2b 9e f2 eb                                      bl #0x30e460
00666bb0  fe 35 a0 e3                                      mov r3, #0x3f800000
00666bb4  01 20 a0 e3                                      mov r2, #1
00666bb8  04 00 a0 e1                                      mov r0, r4
00666bbc  78 21 c4 e5                                      strb r2, [r4, #0x178]
00666bc0  74 31 84 e5                                      str r3, [r4, #0x174]
00666bc4  38 31 84 e5                                      str r3, [r4, #0x138]
00666bc8  4c 31 84 e5                                      str r3, [r4, #0x14c]
00666bcc  60 31 84 e5                                      str r3, [r4, #0x160]
00666bd0  02 10 a0 e3                                      mov r1, #2
00666bd4  70 c1 fc eb                                      bl #0x59719c
00666bd8  04 00 a0 e1                                      mov r0, r4
00666bdc  14 d0 8d e2                                      add sp, sp, #0x14
00666be0  30 80 bd e8                                      pop {r4, r5, pc}
