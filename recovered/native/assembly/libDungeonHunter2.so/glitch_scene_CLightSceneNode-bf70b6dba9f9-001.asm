; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00583bec, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZNK6glitch5scene15CLightSceneNode7getTypeEv
; demangled: glitch::scene::CLightSceneNode::getType() const
; decoder-mode: arm
00583bec  6c 07 06 e3                                      movw r0, #0x676c
00583bf0  68 04 47 e3                                      movt r0, #0x7468
00583bf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00583c18, declared_size=216, range_size=216, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNode13doLightRecalcEv
; demangled: glitch::scene::CLightSceneNode::doLightRecalc()
; decoder-mode: arm
00583c18  70 40 2d e9                                      push {r4, r5, r6, lr}
00583c1c  34 21 90 e5                                      ldr r2, [r0, #0x134]
00583c20  00 40 a0 e1                                      mov r4, r0
00583c24  b8 35 d2 e1                                      ldrh r3, [r2, #0x58]
00583c28  01 00 53 e3                                      cmp r3, #1
00583c2c  19 00 00 ca                                      bgt #0x583c98
00583c30  40 50 92 e5                                      ldr r5, [r2, #0x40]
00583c34  02 11 e0 e3                                      mvn r1, #0x80000000
00583c38  02 15 41 e2                                      sub r1, r1, #0x800000
00583c3c  05 00 a0 e1                                      mov r0, r5
00583c40  d1 28 f6 eb                                      bl #0x30df8c
00583c44  00 00 50 e3                                      cmp r0, #0
00583c48  21 00 00 1a                                      bne #0x583cd4
00583c4c  05 10 a0 e1                                      mov r1, r5
00583c50  05 00 a0 e1                                      mov r0, r5
00583c54  44 2c f6 eb                                      bl #0x30ed6c
00583c58  3f 14 a0 e3                                      mov r1, #0x3f000000
00583c5c  42 2c f6 eb                                      bl #0x30ed6c
00583c60  02 31 80 e2                                      add r3, r0, #0x80000000
00583c64  44 31 84 e5                                      str r3, [r4, #0x144]
00583c68  48 01 84 e5                                      str r0, [r4, #0x148]
00583c6c  4c 01 84 e5                                      str r0, [r4, #0x14c]
00583c70  50 01 84 e5                                      str r0, [r4, #0x150]
00583c74  3c 31 84 e5                                      str r3, [r4, #0x13c]
00583c78  40 31 84 e5                                      str r3, [r4, #0x140]
00583c7c  04 00 a0 e1                                      mov r0, r4
00583c80  01 10 a0 e3                                      mov r1, #1
00583c84  44 4d 00 eb                                      bl #0x59719c
00583c88  34 31 94 e5                                      ldr r3, [r4, #0x134]
00583c8c  b8 35 d3 e1                                      ldrh r3, [r3, #0x58]
00583c90  38 31 84 e5                                      str r3, [r4, #0x138]
00583c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
00583c98  02 00 53 e3                                      cmp r3, #2
00583c9c  0a 00 00 1a                                      bne #0x583ccc
00583ca0  00 30 a0 e3                                      mov r3, #0
00583ca4  44 31 80 e5                                      str r3, [r0, #0x144]
00583ca8  48 31 80 e5                                      str r3, [r0, #0x148]
00583cac  4c 31 80 e5                                      str r3, [r0, #0x14c]
00583cb0  50 31 80 e5                                      str r3, [r0, #0x150]
00583cb4  3c 31 80 e5                                      str r3, [r0, #0x13c]
00583cb8  40 31 80 e5                                      str r3, [r0, #0x140]
00583cbc  00 10 a0 e3                                      mov r1, #0
00583cc0  35 4d 00 eb                                      bl #0x59719c
00583cc4  34 31 94 e5                                      ldr r3, [r4, #0x134]
00583cc8  b8 35 d3 e1                                      ldrh r3, [r3, #0x58]
00583ccc  38 31 84 e5                                      str r3, [r4, #0x138]
00583cd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00583cd4  04 00 a0 e1                                      mov r0, r4
00583cd8  00 10 a0 e3                                      mov r1, #0
00583cdc  2e 4d 00 eb                                      bl #0x59719c
00583ce0  34 31 94 e5                                      ldr r3, [r4, #0x134]
00583ce4  b8 35 d3 e1                                      ldrh r3, [r3, #0x58]
00583ce8  38 31 84 e5                                      str r3, [r4, #0x138]
00583cec  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00583cf0, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZNK6glitch5scene15CLightSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CLightSceneNode::getBoundingBox() const
; decoder-mode: arm
00583cf0  10 40 2d e9                                      push {r4, lr}
00583cf4  34 31 90 e5                                      ldr r3, [r0, #0x134]
00583cf8  38 21 90 e5                                      ldr r2, [r0, #0x138]
00583cfc  00 40 a0 e1                                      mov r4, r0
00583d00  b8 35 d3 e1                                      ldrh r3, [r3, #0x58]
00583d04  03 00 52 e1                                      cmp r2, r3
00583d08  00 00 00 0a                                      beq #0x583d10
00583d0c  c1 ff ff eb                                      bl #0x583c18
00583d10  4f 0f 84 e2                                      add r0, r4, #0x13c
00583d14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00583d18, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNode6renderEPv
; demangled: glitch::scene::CLightSceneNode::render(void*)
; decoder-mode: arm
00583d18  10 31 90 e5                                      ldr r3, [r0, #0x110]
00583d1c  00 10 a0 e1                                      mov r1, r0
00583d20  14 00 93 e5                                      ldr r0, [r3, #0x14]
00583d24  00 00 50 e3                                      cmp r0, #0
00583d28  1e ff 2f 01                                      bxeq lr
00583d2c  4d 1f 81 e2                                      add r1, r1, #0x134
00583d30  42 9b 00 ea                                      b #0x5aaa40

; FUNCTION 0x00583d34, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CLightSceneNode::onRegisterSceneNode()
; decoder-mode: arm
00583d34  30 40 2d e9                                      push {r4, r5, lr}
00583d38  00 10 a0 e1                                      mov r1, r0
00583d3c  10 01 90 e5                                      ldr r0, [r0, #0x110]
00583d40  1c d0 4d e2                                      sub sp, sp, #0x1c
00583d44  00 20 a0 e3                                      mov r2, #0
00583d48  00 30 90 e5                                      ldr r3, [r0]
00583d4c  18 40 8d e2                                      add r4, sp, #0x18
00583d50  01 50 a0 e3                                      mov r5, #1
00583d54  24 c0 93 e5                                      ldr ip, [r3, #0x24]
00583d58  04 20 24 e5                                      str r2, [r4, #-4]!
00583d5c  02 31 e0 e3                                      mvn r3, #0x80000000
00583d60  0c 00 8d e9                                      stmib sp, {r2, r3}
00583d64  02 30 a0 e1                                      mov r3, r2
00583d68  00 50 8d e5                                      str r5, [sp]
00583d6c  04 20 a0 e1                                      mov r2, r4
00583d70  3c ff 2f e1                                      blx ip
00583d74  04 00 a0 e1                                      mov r0, r4
00583d78  9a 33 f6 eb                                      bl #0x310be8
00583d7c  05 00 a0 e1                                      mov r0, r5
00583d80  1c d0 8d e2                                      add sp, sp, #0x1c
00583d84  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00583d88, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CLightSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00583d88  70 40 2d e9                                      push {r4, r5, r6, lr}
00583d8c  01 40 a0 e1                                      mov r4, r1
00583d90  00 60 a0 e1                                      mov r6, r0
00583d94  02 50 a0 e1                                      mov r5, r2
00583d98  ae 50 00 eb                                      bl #0x598058
00583d9c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00583da0  00 30 94 e5                                      ldr r3, [r4]
00583da4  04 00 a0 e1                                      mov r0, r4
00583da8  01 10 8f e0                                      add r1, pc, r1
00583dac  0f e0 a0 e1                                      mov lr, pc
00583db0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00583db4  34 01 96 e5                                      ldr r0, [r6, #0x134]
00583db8  05 20 a0 e1                                      mov r2, r5
00583dbc  04 10 a0 e1                                      mov r1, r4
00583dc0  e5 70 00 eb                                      bl #0x5a015c
00583dc4  04 00 a0 e1                                      mov r0, r4
00583dc8  00 30 94 e5                                      ldr r3, [r4]
00583dcc  0f e0 a0 e1                                      mov lr, pc
00583dd0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00583dd4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00583dd8  28 bc 33 00                                      .byte 0x28, 0xbc, 0x33, 0x00

; FUNCTION 0x00583ddc, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZNK6glitch5scene15CLightSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CLightSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00583ddc  70 40 2d e9                                      push {r4, r5, r6, lr}
00583de0  01 40 a0 e1                                      mov r4, r1
00583de4  00 60 a0 e1                                      mov r6, r0
00583de8  02 50 a0 e1                                      mov r5, r2
00583dec  2c 4d 00 eb                                      bl #0x5972a4
00583df0  34 10 9f e5                                      ldr r1, [pc, #0x34]
00583df4  00 30 94 e5                                      ldr r3, [r4]
00583df8  04 00 a0 e1                                      mov r0, r4
00583dfc  01 10 8f e0                                      add r1, pc, r1
00583e00  0f e0 a0 e1                                      mov lr, pc
00583e04  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00583e08  34 01 96 e5                                      ldr r0, [r6, #0x134]
00583e0c  05 20 a0 e1                                      mov r2, r5
00583e10  04 10 a0 e1                                      mov r1, r4
00583e14  63 70 00 eb                                      bl #0x59ffa8
00583e18  04 00 a0 e1                                      mov r0, r4
00583e1c  00 30 94 e5                                      ldr r3, [r4]
00583e20  0f e0 a0 e1                                      mov lr, pc
00583e24  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00583e28  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00583e2c  d4 bb 33 00                                      .byte 0xd4, 0xbb, 0x33, 0x00

; FUNCTION 0x00583e30, declared_size=356, range_size=356, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeC1ERS1_
; demangled: glitch::scene::CLightSceneNode::CLightSceneNode(glitch::scene::CLightSceneNode&)
; decoder-mode: arm
00583e30  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00583e34  44 61 9f e5                                      ldr r6, [pc, #0x144]
00583e38  44 31 9f e5                                      ldr r3, [pc, #0x144]
00583e3c  44 21 9f e5                                      ldr r2, [pc, #0x144]
00583e40  06 60 8f e0                                      add r6, pc, r6
00583e44  03 30 96 e7                                      ldr r3, [r6, r3]
00583e48  02 20 96 e7                                      ldr r2, [r6, r2]
00583e4c  01 e0 a0 e3                                      mov lr, #1
00583e50  18 c0 93 e5                                      ldr ip, [r3, #0x18]
00583e54  08 20 82 e2                                      add r2, r2, #8
00583e58  58 e1 80 e5                                      str lr, [r0, #0x158]
00583e5c  00 c0 80 e5                                      str ip, [r0]
00583e60  54 21 80 e5                                      str r2, [r0, #0x154]
00583e64  0c 20 1c e5                                      ldr r2, [ip, #-0xc]
00583e68  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
00583e6c  34 d0 4d e2                                      sub sp, sp, #0x34
00583e70  08 70 8d e2                                      add r7, sp, #8
00583e74  02 50 80 e7                                      str r5, [r0, r2]
00583e78  00 c0 a0 e3                                      mov ip, #0
00583e7c  01 50 a0 e1                                      mov r5, r1
00583e80  fe e5 a0 e3                                      mov lr, #0x3f800000
00583e84  04 10 83 e2                                      add r1, r3, #4
00583e88  00 20 e0 e3                                      mvn r2, #0
00583e8c  24 30 8d e2                                      add r3, sp, #0x24
00583e90  00 70 8d e5                                      str r7, [sp]
00583e94  18 70 8d e2                                      add r7, sp, #0x18
00583e98  00 40 a0 e1                                      mov r4, r0
00583e9c  10 c0 8d e5                                      str ip, [sp, #0x10]
00583ea0  20 e0 8d e5                                      str lr, [sp, #0x20]
00583ea4  24 c0 8d e5                                      str ip, [sp, #0x24]
00583ea8  28 c0 8d e5                                      str ip, [sp, #0x28]
00583eac  2c c0 8d e5                                      str ip, [sp, #0x2c]
00583eb0  08 c0 8d e5                                      str ip, [sp, #8]
00583eb4  0c c0 8d e5                                      str ip, [sp, #0xc]
00583eb8  14 e0 8d e5                                      str lr, [sp, #0x14]
00583ebc  18 e0 8d e5                                      str lr, [sp, #0x18]
00583ec0  1c e0 8d e5                                      str lr, [sp, #0x1c]
00583ec4  04 70 8d e5                                      str r7, [sp, #4]
00583ec8  7c 54 00 eb                                      bl #0x5990c0
00583ecc  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00583ed0  13 2e 84 e2                                      add r2, r4, #0x130
00583ed4  4d 0f 84 e2                                      add r0, r4, #0x134
00583ed8  03 30 96 e7                                      ldr r3, [r6, r3]
00583edc  12 1e 83 e2                                      add r1, r3, #0x120
00583ee0  1c 30 83 e2                                      add r3, r3, #0x1c
00583ee4  00 30 84 e5                                      str r3, [r4]
00583ee8  54 11 84 e5                                      str r1, [r4, #0x154]
00583eec  34 11 95 e5                                      ldr r1, [r5, #0x134]
00583ef0  82 6f 00 eb                                      bl #0x59fd00
00583ef4  34 11 94 e5                                      ldr r1, [r4, #0x134]
00583ef8  30 31 94 e5                                      ldr r3, [r4, #0x130]
00583efc  24 20 84 e2                                      add r2, r4, #0x24
00583f00  b8 15 d1 e1                                      ldrh r1, [r1, #0x58]
00583f04  38 11 84 e5                                      str r1, [r4, #0x138]
00583f08  3c 11 95 e5                                      ldr r1, [r5, #0x13c]
00583f0c  3c 11 84 e5                                      str r1, [r4, #0x13c]
00583f10  40 11 95 e5                                      ldr r1, [r5, #0x140]
00583f14  40 11 84 e5                                      str r1, [r4, #0x140]
00583f18  44 11 95 e5                                      ldr r1, [r5, #0x144]
00583f1c  44 11 84 e5                                      str r1, [r4, #0x144]
00583f20  48 11 95 e5                                      ldr r1, [r5, #0x148]
00583f24  48 11 84 e5                                      str r1, [r4, #0x148]
00583f28  4c 11 95 e5                                      ldr r1, [r5, #0x14c]
00583f2c  4c 11 84 e5                                      str r1, [r4, #0x14c]
00583f30  50 11 95 e5                                      ldr r1, [r5, #0x150]
00583f34  50 11 84 e5                                      str r1, [r4, #0x150]
00583f38  04 10 d3 e5                                      ldrb r1, [r3, #4]
00583f3c  00 00 51 e3                                      cmp r1, #0
00583f40  05 00 00 1a                                      bne #0x583f5c
00583f44  44 10 9f e5                                      ldr r1, [pc, #0x44]
00583f48  00 00 93 e5                                      ldr r0, [r3]
00583f4c  01 10 96 e7                                      ldr r1, [r6, r1]
00583f50  00 c0 91 e5                                      ldr ip, [r1]
00583f54  00 c0 80 e5                                      str ip, [r0]
00583f58  00 00 81 e5                                      str r0, [r1]
00583f5c  00 20 83 e5                                      str r2, [r3]
00583f60  01 20 a0 e3                                      mov r2, #1
00583f64  04 00 a0 e1                                      mov r0, r4
00583f68  04 20 c3 e5                                      strb r2, [r3, #4]
00583f6c  05 10 a0 e1                                      mov r1, r5
00583f70  95 4f 00 eb                                      bl #0x597dcc
00583f74  04 00 a0 e1                                      mov r0, r4
00583f78  34 d0 8d e2                                      add sp, sp, #0x34
00583f7c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00583f80  50 0c 41 00 e0 10 00 00 44 2b 00 00 58 1a 00 00  .byte 0x50, 0x0c, 0x41, 0x00, 0xe0, 0x10, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x58, 0x1a, 0x00, 0x00
00583f90  c0 3c 00 00                                      .byte 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00583f94, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNode5cloneEv
; demangled: glitch::scene::CLightSceneNode::clone()
; decoder-mode: arm
00583f94  70 40 2d e9                                      push {r4, r5, r6, lr}
00583f98  00 10 a0 e3                                      mov r1, #0
00583f9c  00 50 a0 e1                                      mov r5, r0
00583fa0  57 0f a0 e3                                      mov r0, #0x15c
00583fa4  80 c0 fe eb                                      bl #0x5341ac
00583fa8  05 10 a0 e1                                      mov r1, r5
00583fac  00 40 a0 e1                                      mov r4, r0
00583fb0  9e ff ff eb                                      bl #0x583e30
00583fb4  04 00 a0 e1                                      mov r0, r4
00583fb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00583fbc, declared_size=308, range_size=308, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeC2ERS1_
; demangled: glitch::scene::CLightSceneNode::CLightSceneNode(glitch::scene::CLightSceneNode&)
; decoder-mode: arm
00583fbc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00583fc0  34 d0 4d e2                                      sub sp, sp, #0x34
00583fc4  08 40 8d e2                                      add r4, sp, #8
00583fc8  00 c0 a0 e3                                      mov ip, #0
00583fcc  02 50 a0 e1                                      mov r5, r2
00583fd0  fe e5 a0 e3                                      mov lr, #0x3f800000
00583fd4  01 60 a0 e1                                      mov r6, r1
00583fd8  00 20 e0 e3                                      mvn r2, #0
00583fdc  04 10 81 e2                                      add r1, r1, #4
00583fe0  24 30 8d e2                                      add r3, sp, #0x24
00583fe4  00 40 8d e5                                      str r4, [sp]
00583fe8  18 40 8d e2                                      add r4, sp, #0x18
00583fec  10 c0 8d e5                                      str ip, [sp, #0x10]
00583ff0  20 e0 8d e5                                      str lr, [sp, #0x20]
00583ff4  04 40 8d e5                                      str r4, [sp, #4]
00583ff8  24 c0 8d e5                                      str ip, [sp, #0x24]
00583ffc  00 40 a0 e1                                      mov r4, r0
00584000  28 c0 8d e5                                      str ip, [sp, #0x28]
00584004  2c c0 8d e5                                      str ip, [sp, #0x2c]
00584008  08 c0 8d e5                                      str ip, [sp, #8]
0058400c  0c c0 8d e5                                      str ip, [sp, #0xc]
00584010  14 e0 8d e5                                      str lr, [sp, #0x14]
00584014  18 e0 8d e5                                      str lr, [sp, #0x18]
00584018  1c e0 8d e5                                      str lr, [sp, #0x1c]
0058401c  27 54 00 eb                                      bl #0x5990c0
00584020  00 30 96 e5                                      ldr r3, [r6]
00584024  13 2e 84 e2                                      add r2, r4, #0x130
00584028  4d 0f 84 e2                                      add r0, r4, #0x134
0058402c  00 30 84 e5                                      str r3, [r4]
00584030  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00584034  10 10 96 e5                                      ldr r1, [r6, #0x10]
00584038  a8 70 9f e5                                      ldr r7, [pc, #0xa8]
0058403c  03 10 84 e7                                      str r1, [r4, r3]
00584040  00 30 94 e5                                      ldr r3, [r4]
00584044  14 10 96 e5                                      ldr r1, [r6, #0x14]
00584048  07 70 8f e0                                      add r7, pc, r7
0058404c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00584050  03 10 84 e7                                      str r1, [r4, r3]
00584054  34 11 95 e5                                      ldr r1, [r5, #0x134]
00584058  28 6f 00 eb                                      bl #0x59fd00
0058405c  34 11 94 e5                                      ldr r1, [r4, #0x134]
00584060  30 31 94 e5                                      ldr r3, [r4, #0x130]
00584064  24 20 84 e2                                      add r2, r4, #0x24
00584068  b8 15 d1 e1                                      ldrh r1, [r1, #0x58]
0058406c  38 11 84 e5                                      str r1, [r4, #0x138]
00584070  3c 11 95 e5                                      ldr r1, [r5, #0x13c]
00584074  3c 11 84 e5                                      str r1, [r4, #0x13c]
00584078  40 11 95 e5                                      ldr r1, [r5, #0x140]
0058407c  40 11 84 e5                                      str r1, [r4, #0x140]
00584080  44 11 95 e5                                      ldr r1, [r5, #0x144]
00584084  44 11 84 e5                                      str r1, [r4, #0x144]
00584088  48 11 95 e5                                      ldr r1, [r5, #0x148]
0058408c  48 11 84 e5                                      str r1, [r4, #0x148]
00584090  4c 11 95 e5                                      ldr r1, [r5, #0x14c]
00584094  4c 11 84 e5                                      str r1, [r4, #0x14c]
00584098  50 11 95 e5                                      ldr r1, [r5, #0x150]
0058409c  50 11 84 e5                                      str r1, [r4, #0x150]
005840a0  04 10 d3 e5                                      ldrb r1, [r3, #4]
005840a4  00 00 51 e3                                      cmp r1, #0
005840a8  05 00 00 1a                                      bne #0x5840c4
005840ac  38 10 9f e5                                      ldr r1, [pc, #0x38]
005840b0  00 00 93 e5                                      ldr r0, [r3]
005840b4  01 10 97 e7                                      ldr r1, [r7, r1]
005840b8  00 c0 91 e5                                      ldr ip, [r1]
005840bc  00 c0 80 e5                                      str ip, [r0]
005840c0  00 00 81 e5                                      str r0, [r1]
005840c4  00 20 83 e5                                      str r2, [r3]
005840c8  01 20 a0 e3                                      mov r2, #1
005840cc  04 00 a0 e1                                      mov r0, r4
005840d0  04 20 c3 e5                                      strb r2, [r3, #4]
005840d4  05 10 a0 e1                                      mov r1, r5
005840d8  3b 4f 00 eb                                      bl #0x597dcc
005840dc  04 00 a0 e1                                      mov r0, r4
005840e0  34 d0 8d e2                                      add sp, sp, #0x34
005840e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
005840e8  48 0a 41 00 c0 3c 00 00                          .byte 0x48, 0x0a, 0x41, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005840f0, declared_size=328, range_size=328, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeC1Eb
; demangled: glitch::scene::CLightSceneNode::CLightSceneNode(bool)
; decoder-mode: arm
005840f0  70 40 2d e9                                      push {r4, r5, r6, lr}
005840f4  28 61 9f e5                                      ldr r6, [pc, #0x128]
005840f8  28 21 9f e5                                      ldr r2, [pc, #0x128]
005840fc  28 31 9f e5                                      ldr r3, [pc, #0x128]
00584100  06 60 8f e0                                      add r6, pc, r6
00584104  02 10 96 e7                                      ldr r1, [r6, r2]
00584108  03 30 96 e7                                      ldr r3, [r6, r3]
0058410c  01 c0 a0 e3                                      mov ip, #1
00584110  18 20 91 e5                                      ldr r2, [r1, #0x18]
00584114  08 30 83 e2                                      add r3, r3, #8
00584118  58 c1 80 e5                                      str ip, [r0, #0x158]
0058411c  00 20 80 e5                                      str r2, [r0]
00584120  54 31 80 e5                                      str r3, [r0, #0x154]
00584124  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
00584128  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0058412c  30 d0 4d e2                                      sub sp, sp, #0x30
00584130  08 e0 8d e2                                      add lr, sp, #8
00584134  03 20 80 e7                                      str r2, [r0, r3]
00584138  00 c0 a0 e3                                      mov ip, #0
0058413c  fe 55 a0 e3                                      mov r5, #0x3f800000
00584140  04 10 81 e2                                      add r1, r1, #4
00584144  00 20 e0 e3                                      mvn r2, #0
00584148  24 30 8d e2                                      add r3, sp, #0x24
0058414c  00 e0 8d e5                                      str lr, [sp]
00584150  18 e0 8d e2                                      add lr, sp, #0x18
00584154  00 40 a0 e1                                      mov r4, r0
00584158  10 c0 8d e5                                      str ip, [sp, #0x10]
0058415c  04 e0 8d e5                                      str lr, [sp, #4]
00584160  24 c0 8d e5                                      str ip, [sp, #0x24]
00584164  28 c0 8d e5                                      str ip, [sp, #0x28]
00584168  2c c0 8d e5                                      str ip, [sp, #0x2c]
0058416c  08 c0 8d e5                                      str ip, [sp, #8]
00584170  0c c0 8d e5                                      str ip, [sp, #0xc]
00584174  14 50 8d e5                                      str r5, [sp, #0x14]
00584178  18 50 8d e5                                      str r5, [sp, #0x18]
0058417c  1c 50 8d e5                                      str r5, [sp, #0x1c]
00584180  20 50 8d e5                                      str r5, [sp, #0x20]
00584184  cd 53 00 eb                                      bl #0x5990c0
00584188  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0058418c  13 1e 84 e2                                      add r1, r4, #0x130
00584190  4d 0f 84 e2                                      add r0, r4, #0x134
00584194  03 30 96 e7                                      ldr r3, [r6, r3]
00584198  12 2e 83 e2                                      add r2, r3, #0x120
0058419c  1c 30 83 e2                                      add r3, r3, #0x1c
005841a0  00 30 84 e5                                      str r3, [r4]
005841a4  54 21 84 e5                                      str r2, [r4, #0x154]
005841a8  42 6f 00 eb                                      bl #0x59feb8
005841ac  34 11 94 e5                                      ldr r1, [r4, #0x134]
005841b0  bf 24 a0 e3                                      mov r2, #0xbf000000
005841b4  30 31 94 e5                                      ldr r3, [r4, #0x130]
005841b8  b8 15 d1 e1                                      ldrh r1, [r1, #0x58]
005841bc  02 25 82 e2                                      add r2, r2, #0x800000
005841c0  44 21 84 e5                                      str r2, [r4, #0x144]
005841c4  3c 21 84 e5                                      str r2, [r4, #0x13c]
005841c8  40 21 84 e5                                      str r2, [r4, #0x140]
005841cc  50 51 84 e5                                      str r5, [r4, #0x150]
005841d0  38 11 84 e5                                      str r1, [r4, #0x138]
005841d4  48 51 84 e5                                      str r5, [r4, #0x148]
005841d8  4c 51 84 e5                                      str r5, [r4, #0x14c]
005841dc  04 10 d3 e5                                      ldrb r1, [r3, #4]
005841e0  24 20 84 e2                                      add r2, r4, #0x24
005841e4  00 00 51 e3                                      cmp r1, #0
005841e8  05 00 00 1a                                      bne #0x584204
005841ec  40 10 9f e5                                      ldr r1, [pc, #0x40]
005841f0  00 00 93 e5                                      ldr r0, [r3]
005841f4  01 10 96 e7                                      ldr r1, [r6, r1]
005841f8  00 c0 91 e5                                      ldr ip, [r1]
005841fc  00 c0 80 e5                                      str ip, [r0]
00584200  00 00 81 e5                                      str r0, [r1]
00584204  00 20 83 e5                                      str r2, [r3]
00584208  01 20 a0 e3                                      mov r2, #1
0058420c  04 00 a0 e1                                      mov r0, r4
00584210  04 20 c3 e5                                      strb r2, [r3, #4]
00584214  7f fe ff eb                                      bl #0x583c18
00584218  04 00 a0 e1                                      mov r0, r4
0058421c  30 d0 8d e2                                      add sp, sp, #0x30
00584220  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00584224  90 09 41 00 e0 10 00 00 44 2b 00 00 58 1a 00 00  .byte 0x90, 0x09, 0x41, 0x00, 0xe0, 0x10, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x58, 0x1a, 0x00, 0x00
00584234  c0 3c 00 00                                      .byte 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00584238, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeC2Eb
; demangled: glitch::scene::CLightSceneNode::CLightSceneNode(bool)
; decoder-mode: arm
00584238  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0058423c  34 d0 4d e2                                      sub sp, sp, #0x34
00584240  08 e0 8d e2                                      add lr, sp, #8
00584244  00 c0 a0 e3                                      mov ip, #0
00584248  fe 55 a0 e3                                      mov r5, #0x3f800000
0058424c  01 60 a0 e1                                      mov r6, r1
00584250  00 20 e0 e3                                      mvn r2, #0
00584254  04 10 81 e2                                      add r1, r1, #4
00584258  24 30 8d e2                                      add r3, sp, #0x24
0058425c  00 e0 8d e5                                      str lr, [sp]
00584260  18 e0 8d e2                                      add lr, sp, #0x18
00584264  00 40 a0 e1                                      mov r4, r0
00584268  10 c0 8d e5                                      str ip, [sp, #0x10]
0058426c  04 e0 8d e5                                      str lr, [sp, #4]
00584270  24 c0 8d e5                                      str ip, [sp, #0x24]
00584274  28 c0 8d e5                                      str ip, [sp, #0x28]
00584278  2c c0 8d e5                                      str ip, [sp, #0x2c]
0058427c  08 c0 8d e5                                      str ip, [sp, #8]
00584280  0c c0 8d e5                                      str ip, [sp, #0xc]
00584284  14 50 8d e5                                      str r5, [sp, #0x14]
00584288  18 50 8d e5                                      str r5, [sp, #0x18]
0058428c  1c 50 8d e5                                      str r5, [sp, #0x1c]
00584290  20 50 8d e5                                      str r5, [sp, #0x20]
00584294  89 53 00 eb                                      bl #0x5990c0
00584298  00 30 96 e5                                      ldr r3, [r6]
0058429c  13 1e 84 e2                                      add r1, r4, #0x130
005842a0  4d 0f 84 e2                                      add r0, r4, #0x134
005842a4  00 30 84 e5                                      str r3, [r4]
005842a8  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
005842ac  10 20 96 e5                                      ldr r2, [r6, #0x10]
005842b0  90 70 9f e5                                      ldr r7, [pc, #0x90]
005842b4  03 20 84 e7                                      str r2, [r4, r3]
005842b8  00 30 94 e5                                      ldr r3, [r4]
005842bc  14 20 96 e5                                      ldr r2, [r6, #0x14]
005842c0  07 70 8f e0                                      add r7, pc, r7
005842c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005842c8  03 20 84 e7                                      str r2, [r4, r3]
005842cc  f9 6e 00 eb                                      bl #0x59feb8
005842d0  34 11 94 e5                                      ldr r1, [r4, #0x134]
005842d4  bf 24 a0 e3                                      mov r2, #0xbf000000
005842d8  30 31 94 e5                                      ldr r3, [r4, #0x130]
005842dc  b8 15 d1 e1                                      ldrh r1, [r1, #0x58]
005842e0  02 25 82 e2                                      add r2, r2, #0x800000
005842e4  44 21 84 e5                                      str r2, [r4, #0x144]
005842e8  3c 21 84 e5                                      str r2, [r4, #0x13c]
005842ec  40 21 84 e5                                      str r2, [r4, #0x140]
005842f0  50 51 84 e5                                      str r5, [r4, #0x150]
005842f4  38 11 84 e5                                      str r1, [r4, #0x138]
005842f8  48 51 84 e5                                      str r5, [r4, #0x148]
005842fc  4c 51 84 e5                                      str r5, [r4, #0x14c]
00584300  04 10 d3 e5                                      ldrb r1, [r3, #4]
00584304  24 20 84 e2                                      add r2, r4, #0x24
00584308  00 00 51 e3                                      cmp r1, #0
0058430c  05 00 00 1a                                      bne #0x584328
00584310  34 10 9f e5                                      ldr r1, [pc, #0x34]
00584314  00 00 93 e5                                      ldr r0, [r3]
00584318  01 10 97 e7                                      ldr r1, [r7, r1]
0058431c  00 c0 91 e5                                      ldr ip, [r1]
00584320  00 c0 80 e5                                      str ip, [r0]
00584324  00 00 81 e5                                      str r0, [r1]
00584328  00 20 83 e5                                      str r2, [r3]
0058432c  01 20 a0 e3                                      mov r2, #1
00584330  04 00 a0 e1                                      mov r0, r4
00584334  04 20 c3 e5                                      strb r2, [r3, #4]
00584338  36 fe ff eb                                      bl #0x583c18
0058433c  04 00 a0 e1                                      mov r0, r4
00584340  34 d0 8d e2                                      add sp, sp, #0x34
00584344  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00584348  d0 07 41 00 c0 3c 00 00                          .byte 0xd0, 0x07, 0x41, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00584350, declared_size=500, range_size=500, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeC1EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf
; demangled: glitch::scene::CLightSceneNode::CLightSceneNode(int, glitch::core::vector3d<float> const&, glitch::video::SColorf const&, float)
; decoder-mode: arm
00584350  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00584354  d4 71 9f e5                                      ldr r7, [pc, #0x1d4]
00584358  d4 e1 9f e5                                      ldr lr, [pc, #0x1d4]
0058435c  d4 c1 9f e5                                      ldr ip, [pc, #0x1d4]
00584360  07 70 8f e0                                      add r7, pc, r7
00584364  0e e0 97 e7                                      ldr lr, [r7, lr]
00584368  0c c0 97 e7                                      ldr ip, [r7, ip]
0058436c  01 60 a0 e3                                      mov r6, #1
00584370  18 50 9e e5                                      ldr r5, [lr, #0x18]
00584374  08 c0 8c e2                                      add ip, ip, #8
00584378  58 61 80 e5                                      str r6, [r0, #0x158]
0058437c  54 c1 80 e5                                      str ip, [r0, #0x154]
00584380  00 50 80 e5                                      str r5, [r0]
00584384  0c a0 15 e5                                      ldr sl, [r5, #-0xc]
00584388  1c 90 9e e5                                      ldr sb, [lr, #0x1c]
0058438c  28 d0 4d e2                                      sub sp, sp, #0x28
00584390  01 50 a0 e1                                      mov r5, r1
00584394  02 80 a0 e1                                      mov r8, r2
00584398  04 10 8e e2                                      add r1, lr, #4
0058439c  0c e0 8d e2                                      add lr, sp, #0xc
005843a0  0a 90 80 e7                                      str sb, [r0, sl]
005843a4  fe 65 a0 e3                                      mov r6, #0x3f800000
005843a8  00 c0 a0 e3                                      mov ip, #0
005843ac  05 20 a0 e1                                      mov r2, r5
005843b0  00 e0 8d e5                                      str lr, [sp]
005843b4  03 50 a0 e1                                      mov r5, r3
005843b8  1c e0 8d e2                                      add lr, sp, #0x1c
005843bc  08 30 a0 e1                                      mov r3, r8
005843c0  00 40 a0 e1                                      mov r4, r0
005843c4  14 c0 8d e5                                      str ip, [sp, #0x14]
005843c8  04 e0 8d e5                                      str lr, [sp, #4]
005843cc  0c c0 8d e5                                      str ip, [sp, #0xc]
005843d0  10 c0 8d e5                                      str ip, [sp, #0x10]
005843d4  18 60 8d e5                                      str r6, [sp, #0x18]
005843d8  1c 60 8d e5                                      str r6, [sp, #0x1c]
005843dc  20 60 8d e5                                      str r6, [sp, #0x20]
005843e0  24 60 8d e5                                      str r6, [sp, #0x24]
005843e4  35 53 00 eb                                      bl #0x5990c0
005843e8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
005843ec  13 1e 84 e2                                      add r1, r4, #0x130
005843f0  4d 0f 84 e2                                      add r0, r4, #0x134
005843f4  03 30 97 e7                                      ldr r3, [r7, r3]
005843f8  12 2e 83 e2                                      add r2, r3, #0x120
005843fc  1c 30 83 e2                                      add r3, r3, #0x1c
00584400  00 30 84 e5                                      str r3, [r4]
00584404  54 21 84 e5                                      str r2, [r4, #0x154]
00584408  aa 6e 00 eb                                      bl #0x59feb8
0058440c  34 11 94 e5                                      ldr r1, [r4, #0x134]
00584410  bf 24 a0 e3                                      mov r2, #0xbf000000
00584414  30 31 94 e5                                      ldr r3, [r4, #0x130]
00584418  b8 15 d1 e1                                      ldrh r1, [r1, #0x58]
0058441c  02 25 82 e2                                      add r2, r2, #0x800000
00584420  44 21 84 e5                                      str r2, [r4, #0x144]
00584424  3c 21 84 e5                                      str r2, [r4, #0x13c]
00584428  40 21 84 e5                                      str r2, [r4, #0x140]
0058442c  50 61 84 e5                                      str r6, [r4, #0x150]
00584430  38 11 84 e5                                      str r1, [r4, #0x138]
00584434  48 61 84 e5                                      str r6, [r4, #0x148]
00584438  4c 61 84 e5                                      str r6, [r4, #0x14c]
0058443c  04 10 d3 e5                                      ldrb r1, [r3, #4]
00584440  24 20 84 e2                                      add r2, r4, #0x24
00584444  00 00 51 e3                                      cmp r1, #0
00584448  05 00 00 1a                                      bne #0x584464
0058444c  ec 10 9f e5                                      ldr r1, [pc, #0xec]
00584450  00 00 93 e5                                      ldr r0, [r3]
00584454  01 10 97 e7                                      ldr r1, [r7, r1]
00584458  00 c0 91 e5                                      ldr ip, [r1]
0058445c  00 c0 80 e5                                      str ip, [r0]
00584460  00 00 81 e5                                      str r0, [r1]
00584464  00 20 83 e5                                      str r2, [r3]
00584468  01 20 a0 e3                                      mov r2, #1
0058446c  04 20 c3 e5                                      strb r2, [r3, #4]
00584470  34 31 94 e5                                      ldr r3, [r4, #0x134]
00584474  48 20 9d e5                                      ldr r2, [sp, #0x48]
00584478  40 20 83 e5                                      str r2, [r3, #0x40]
0058447c  34 c1 94 e5                                      ldr ip, [r4, #0x134]
00584480  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00584484  14 c0 8c e2                                      add ip, ip, #0x14
00584488  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0058448c  33 13 03 e3                                      movw r1, #0x3333
00584490  00 00 95 e5                                      ldr r0, [r5]
00584494  33 1f 43 e3                                      movt r1, #0x3f33
00584498  33 2a f6 eb                                      bl #0x30ed6c
0058449c  9a 19 09 e3                                      movw r1, #0x999a
005844a0  99 1e 43 e3                                      movt r1, #0x3e99
005844a4  be 29 f6 eb                                      bl #0x30eba4
005844a8  33 13 03 e3                                      movw r1, #0x3333
005844ac  00 80 a0 e1                                      mov r8, r0
005844b0  33 1f 43 e3                                      movt r1, #0x3f33
005844b4  04 00 95 e5                                      ldr r0, [r5, #4]
005844b8  2b 2a f6 eb                                      bl #0x30ed6c
005844bc  9a 19 09 e3                                      movw r1, #0x999a
005844c0  99 1e 43 e3                                      movt r1, #0x3e99
005844c4  b6 29 f6 eb                                      bl #0x30eba4
005844c8  33 13 03 e3                                      movw r1, #0x3333
005844cc  00 60 a0 e1                                      mov r6, r0
005844d0  33 1f 43 e3                                      movt r1, #0x3f33
005844d4  08 00 95 e5                                      ldr r0, [r5, #8]
005844d8  23 2a f6 eb                                      bl #0x30ed6c
005844dc  9a 19 09 e3                                      movw r1, #0x999a
005844e0  99 1e 43 e3                                      movt r1, #0x3e99
005844e4  ae 29 f6 eb                                      bl #0x30eba4
005844e8  33 13 03 e3                                      movw r1, #0x3333
005844ec  00 70 a0 e1                                      mov r7, r0
005844f0  33 1f 43 e3                                      movt r1, #0x3f33
005844f4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005844f8  1b 2a f6 eb                                      bl #0x30ed6c
005844fc  9a 19 09 e3                                      movw r1, #0x999a
00584500  99 1e 43 e3                                      movt r1, #0x3e99
00584504  a6 29 f6 eb                                      bl #0x30eba4
00584508  34 31 94 e5                                      ldr r3, [r4, #0x134]
0058450c  30 00 83 e5                                      str r0, [r3, #0x30]
00584510  24 80 83 e5                                      str r8, [r3, #0x24]
00584514  04 00 a0 e1                                      mov r0, r4
00584518  2c 70 83 e5                                      str r7, [r3, #0x2c]
0058451c  28 60 83 e5                                      str r6, [r3, #0x28]
00584520  bc fd ff eb                                      bl #0x583c18
00584524  04 00 a0 e1                                      mov r0, r4
00584528  28 d0 8d e2                                      add sp, sp, #0x28
0058452c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00584530  30 07 41 00 e0 10 00 00 44 2b 00 00 58 1a 00 00  .byte 0x30, 0x07, 0x41, 0x00, 0xe0, 0x10, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x58, 0x1a, 0x00, 0x00
00584540  c0 3c 00 00                                      .byte 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00584544, declared_size=436, range_size=436, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeC2EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf
; demangled: glitch::scene::CLightSceneNode::CLightSceneNode(int, glitch::core::vector3d<float> const&, glitch::video::SColorf const&, float)
; decoder-mode: arm
00584544  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00584548  28 d0 4d e2                                      sub sp, sp, #0x28
0058454c  0c e0 8d e2                                      add lr, sp, #0xc
00584550  fe 65 a0 e3                                      mov r6, #0x3f800000
00584554  00 c0 a0 e3                                      mov ip, #0
00584558  01 70 a0 e1                                      mov r7, r1
0058455c  00 e0 8d e5                                      str lr, [sp]
00584560  04 10 81 e2                                      add r1, r1, #4
00584564  1c e0 8d e2                                      add lr, sp, #0x1c
00584568  00 40 a0 e1                                      mov r4, r0
0058456c  14 c0 8d e5                                      str ip, [sp, #0x14]
00584570  04 e0 8d e5                                      str lr, [sp, #4]
00584574  0c c0 8d e5                                      str ip, [sp, #0xc]
00584578  10 c0 8d e5                                      str ip, [sp, #0x10]
0058457c  18 60 8d e5                                      str r6, [sp, #0x18]
00584580  1c 60 8d e5                                      str r6, [sp, #0x1c]
00584584  20 60 8d e5                                      str r6, [sp, #0x20]
00584588  24 60 8d e5                                      str r6, [sp, #0x24]
0058458c  40 50 9d e5                                      ldr r5, [sp, #0x40]
00584590  ca 52 00 eb                                      bl #0x5990c0
00584594  00 30 97 e5                                      ldr r3, [r7]
00584598  13 1e 84 e2                                      add r1, r4, #0x130
0058459c  4d 0f 84 e2                                      add r0, r4, #0x134
005845a0  00 30 84 e5                                      str r3, [r4]
005845a4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
005845a8  10 20 97 e5                                      ldr r2, [r7, #0x10]
005845ac  3c 81 9f e5                                      ldr r8, [pc, #0x13c]
005845b0  03 20 84 e7                                      str r2, [r4, r3]
005845b4  00 30 94 e5                                      ldr r3, [r4]
005845b8  14 20 97 e5                                      ldr r2, [r7, #0x14]
005845bc  08 80 8f e0                                      add r8, pc, r8
005845c0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005845c4  03 20 84 e7                                      str r2, [r4, r3]
005845c8  3a 6e 00 eb                                      bl #0x59feb8
005845cc  34 11 94 e5                                      ldr r1, [r4, #0x134]
005845d0  bf 24 a0 e3                                      mov r2, #0xbf000000
005845d4  30 31 94 e5                                      ldr r3, [r4, #0x130]
005845d8  b8 15 d1 e1                                      ldrh r1, [r1, #0x58]
005845dc  02 25 82 e2                                      add r2, r2, #0x800000
005845e0  44 21 84 e5                                      str r2, [r4, #0x144]
005845e4  3c 21 84 e5                                      str r2, [r4, #0x13c]
005845e8  40 21 84 e5                                      str r2, [r4, #0x140]
005845ec  50 61 84 e5                                      str r6, [r4, #0x150]
005845f0  38 11 84 e5                                      str r1, [r4, #0x138]
005845f4  48 61 84 e5                                      str r6, [r4, #0x148]
005845f8  4c 61 84 e5                                      str r6, [r4, #0x14c]
005845fc  04 10 d3 e5                                      ldrb r1, [r3, #4]
00584600  24 20 84 e2                                      add r2, r4, #0x24
00584604  00 00 51 e3                                      cmp r1, #0
00584608  05 00 00 1a                                      bne #0x584624
0058460c  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
00584610  00 00 93 e5                                      ldr r0, [r3]
00584614  01 10 98 e7                                      ldr r1, [r8, r1]
00584618  00 c0 91 e5                                      ldr ip, [r1]
0058461c  00 c0 80 e5                                      str ip, [r0]
00584620  00 00 81 e5                                      str r0, [r1]
00584624  00 20 83 e5                                      str r2, [r3]
00584628  01 20 a0 e3                                      mov r2, #1
0058462c  04 20 c3 e5                                      strb r2, [r3, #4]
00584630  34 31 94 e5                                      ldr r3, [r4, #0x134]
00584634  44 20 9d e5                                      ldr r2, [sp, #0x44]
00584638  40 20 83 e5                                      str r2, [r3, #0x40]
0058463c  34 c1 94 e5                                      ldr ip, [r4, #0x134]
00584640  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00584644  14 c0 8c e2                                      add ip, ip, #0x14
00584648  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0058464c  33 13 03 e3                                      movw r1, #0x3333
00584650  00 00 95 e5                                      ldr r0, [r5]
00584654  33 1f 43 e3                                      movt r1, #0x3f33
00584658  c3 29 f6 eb                                      bl #0x30ed6c
0058465c  9a 19 09 e3                                      movw r1, #0x999a
00584660  99 1e 43 e3                                      movt r1, #0x3e99
00584664  4e 29 f6 eb                                      bl #0x30eba4
00584668  33 13 03 e3                                      movw r1, #0x3333
0058466c  00 80 a0 e1                                      mov r8, r0
00584670  33 1f 43 e3                                      movt r1, #0x3f33
00584674  04 00 95 e5                                      ldr r0, [r5, #4]
00584678  bb 29 f6 eb                                      bl #0x30ed6c
0058467c  9a 19 09 e3                                      movw r1, #0x999a
00584680  99 1e 43 e3                                      movt r1, #0x3e99
00584684  46 29 f6 eb                                      bl #0x30eba4
00584688  33 13 03 e3                                      movw r1, #0x3333
0058468c  00 60 a0 e1                                      mov r6, r0
00584690  33 1f 43 e3                                      movt r1, #0x3f33
00584694  08 00 95 e5                                      ldr r0, [r5, #8]
00584698  b3 29 f6 eb                                      bl #0x30ed6c
0058469c  9a 19 09 e3                                      movw r1, #0x999a
005846a0  99 1e 43 e3                                      movt r1, #0x3e99
005846a4  3e 29 f6 eb                                      bl #0x30eba4
005846a8  33 13 03 e3                                      movw r1, #0x3333
005846ac  00 70 a0 e1                                      mov r7, r0
005846b0  33 1f 43 e3                                      movt r1, #0x3f33
005846b4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005846b8  ab 29 f6 eb                                      bl #0x30ed6c
005846bc  9a 19 09 e3                                      movw r1, #0x999a
005846c0  99 1e 43 e3                                      movt r1, #0x3e99
005846c4  36 29 f6 eb                                      bl #0x30eba4
005846c8  34 31 94 e5                                      ldr r3, [r4, #0x134]
005846cc  30 00 83 e5                                      str r0, [r3, #0x30]
005846d0  24 80 83 e5                                      str r8, [r3, #0x24]
005846d4  04 00 a0 e1                                      mov r0, r4
005846d8  2c 70 83 e5                                      str r7, [r3, #0x2c]
005846dc  28 60 83 e5                                      str r6, [r3, #0x28]
005846e0  4c fd ff eb                                      bl #0x583c18
005846e4  04 00 a0 e1                                      mov r0, r4
005846e8  28 d0 8d e2                                      add sp, sp, #0x28
005846ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005846f0  d4 04 41 00 c0 3c 00 00                          .byte 0xd4, 0x04, 0x41, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005848a4, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeD1Ev
; demangled: glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
005848a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005848a8  a0 50 9f e5                                      ldr r5, [pc, #0xa0]
005848ac  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005848b0  00 40 a0 e1                                      mov r4, r0
005848b4  05 50 8f e0                                      add r5, pc, r5
005848b8  03 30 95 e7                                      ldr r3, [r5, r3]
005848bc  34 01 90 e5                                      ldr r0, [r0, #0x134]
005848c0  12 2e 83 e2                                      add r2, r3, #0x120
005848c4  1c 30 83 e2                                      add r3, r3, #0x1c
005848c8  00 30 84 e5                                      str r3, [r4]
005848cc  54 21 84 e5                                      str r2, [r4, #0x154]
005848d0  00 30 90 e5                                      ldr r3, [r0]
005848d4  01 00 53 e3                                      cmp r3, #1
005848d8  02 00 00 9a                                      bls #0x5848e8
005848dc  30 01 94 e5                                      ldr r0, [r4, #0x130]
005848e0  84 ff ff eb                                      bl #0x5846f8
005848e4  34 01 94 e5                                      ldr r0, [r4, #0x134]
005848e8  00 00 50 e3                                      cmp r0, #0
005848ec  10 00 00 0a                                      beq #0x584934
005848f0  00 30 90 e5                                      ldr r3, [r0]
005848f4  01 30 43 e2                                      sub r3, r3, #1
005848f8  00 00 53 e3                                      cmp r3, #0
005848fc  00 30 80 e5                                      str r3, [r0]
00584900  0b 00 00 1a                                      bne #0x584934
00584904  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
00584908  00 00 53 e3                                      cmp r3, #0
0058490c  05 00 00 1a                                      bne #0x584928
00584910  40 30 9f e5                                      ldr r3, [pc, #0x40]
00584914  50 20 90 e5                                      ldr r2, [r0, #0x50]
00584918  03 30 95 e7                                      ldr r3, [r5, r3]
0058491c  00 10 93 e5                                      ldr r1, [r3]
00584920  00 10 82 e5                                      str r1, [r2]
00584924  00 20 83 e5                                      str r2, [r3]
00584928  00 30 a0 e3                                      mov r3, #0
0058492c  50 30 80 e5                                      str r3, [r0, #0x50]
00584930  5e 26 f6 eb                                      bl #0x30e2b0
00584934  20 10 9f e5                                      ldr r1, [pc, #0x20]
00584938  04 00 a0 e1                                      mov r0, r4
0058493c  01 10 95 e7                                      ldr r1, [r5, r1]
00584940  04 10 81 e2                                      add r1, r1, #4
00584944  dc 50 00 eb                                      bl #0x598cbc
00584948  04 00 a0 e1                                      mov r0, r4
0058494c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00584950  dc 01 41 00 58 1a 00 00 c0 3c 00 00 e0 10 00 00  .byte 0xdc, 0x01, 0x41, 0x00, 0x58, 0x1a, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0xe0, 0x10, 0x00, 0x00

; FUNCTION 0x00584960, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeD0Ev
; demangled: glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00584960  10 40 2d e9                                      push {r4, lr}
00584964  00 40 a0 e1                                      mov r4, r0
00584968  cd ff ff eb                                      bl #0x5848a4
0058496c  04 00 a0 e1                                      mov r0, r4
00584970  4e 26 f6 eb                                      bl #0x30e2b0
00584974  04 00 a0 e1                                      mov r0, r4
00584978  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058497c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZN6glitch5scene15CLightSceneNodeD2Ev
; demangled: glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
0058497c  70 40 2d e9                                      push {r4, r5, r6, lr}
00584980  00 30 91 e5                                      ldr r3, [r1]
00584984  00 40 a0 e1                                      mov r4, r0
00584988  a0 60 9f e5                                      ldr r6, [pc, #0xa0]
0058498c  00 30 80 e5                                      str r3, [r0]
00584990  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00584994  10 20 91 e5                                      ldr r2, [r1, #0x10]
00584998  06 60 8f e0                                      add r6, pc, r6
0058499c  01 50 a0 e1                                      mov r5, r1
005849a0  03 20 80 e7                                      str r2, [r0, r3]
005849a4  00 30 90 e5                                      ldr r3, [r0]
005849a8  14 20 91 e5                                      ldr r2, [r1, #0x14]
005849ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005849b0  03 20 80 e7                                      str r2, [r0, r3]
005849b4  34 01 90 e5                                      ldr r0, [r0, #0x134]
005849b8  00 30 90 e5                                      ldr r3, [r0]
005849bc  01 00 53 e3                                      cmp r3, #1
005849c0  02 00 00 9a                                      bls #0x5849d0
005849c4  30 01 94 e5                                      ldr r0, [r4, #0x130]
005849c8  4a ff ff eb                                      bl #0x5846f8
005849cc  34 01 94 e5                                      ldr r0, [r4, #0x134]
005849d0  00 00 50 e3                                      cmp r0, #0
005849d4  10 00 00 0a                                      beq #0x584a1c
005849d8  00 30 90 e5                                      ldr r3, [r0]
005849dc  01 30 43 e2                                      sub r3, r3, #1
005849e0  00 00 53 e3                                      cmp r3, #0
005849e4  00 30 80 e5                                      str r3, [r0]
005849e8  0b 00 00 1a                                      bne #0x584a1c
005849ec  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005849f0  00 00 53 e3                                      cmp r3, #0
005849f4  05 00 00 1a                                      bne #0x584a10
005849f8  34 30 9f e5                                      ldr r3, [pc, #0x34]
005849fc  50 20 90 e5                                      ldr r2, [r0, #0x50]
00584a00  03 30 96 e7                                      ldr r3, [r6, r3]
00584a04  00 10 93 e5                                      ldr r1, [r3]
00584a08  00 10 82 e5                                      str r1, [r2]
00584a0c  00 20 83 e5                                      str r2, [r3]
00584a10  00 30 a0 e3                                      mov r3, #0
00584a14  50 30 80 e5                                      str r3, [r0, #0x50]
00584a18  24 26 f6 eb                                      bl #0x30e2b0
00584a1c  04 10 85 e2                                      add r1, r5, #4
00584a20  04 00 a0 e1                                      mov r0, r4
00584a24  a4 50 00 eb                                      bl #0x598cbc
00584a28  04 00 a0 e1                                      mov r0, r4
00584a2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00584a30  f8 00 41 00 c0 3c 00 00                          .byte 0xf8, 0x00, 0x41, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00584a38, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZTv0_n24_N6glitch5scene15CLightSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00584a38  00 30 90 e5                                      ldr r3, [r0]
00584a3c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00584a40  03 00 80 e0                                      add r0, r0, r3
00584a44  c5 ff ff ea                                      b #0x584960

; FUNCTION 0x00584a48, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZTv0_n12_N6glitch5scene15CLightSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00584a48  00 30 90 e5                                      ldr r3, [r0]
00584a4c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00584a50  03 00 80 e0                                      add r0, r0, r3
00584a54  c1 ff ff ea                                      b #0x584960

; FUNCTION 0x00584a58, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZTv0_n24_N6glitch5scene15CLightSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00584a58  00 30 90 e5                                      ldr r3, [r0]
00584a5c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00584a60  03 00 80 e0                                      add r0, r0, r3
00584a64  8e ff ff ea                                      b #0x5848a4

; FUNCTION 0x00584a68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZTv0_n12_N6glitch5scene15CLightSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00584a68  00 30 90 e5                                      ldr r3, [r0]
00584a6c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00584a70  03 00 80 e0                                      add r0, r0, r3
00584a74  8a ff ff ea                                      b #0x5848a4

; FUNCTION 0x00584a78, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZTv0_n16_NK6glitch5scene15CLightSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CLightSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00584a78  00 30 90 e5                                      ldr r3, [r0]
00584a7c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00584a80  03 00 80 e0                                      add r0, r0, r3
00584a84  d4 fc ff ea                                      b #0x583ddc

; FUNCTION 0x00584a88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CLightSceneNode
; alias: _ZTv0_n20_N6glitch5scene15CLightSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CLightSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00584a88  00 30 90 e5                                      ldr r3, [r0]
00584a8c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00584a90  03 00 80 e0                                      add r0, r0, r3
00584a94  bb fc ff ea                                      b #0x583d88
