; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00584a98, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZNK6glitch5scene14CMeshSceneNode7getTypeEv
; demangled: glitch::scene::CMeshSceneNode::getType() const
; decoder-mode: arm
00584a98  6d 05 06 e3                                      movw r0, #0x656d
00584a9c  73 08 46 e3                                      movt r0, #0x6873
00584aa0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00584aa4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZNK6glitch5scene14CMeshSceneNode7getMeshEv
; demangled: glitch::scene::CMeshSceneNode::getMesh() const
; decoder-mode: arm
00584aa4  30 31 91 e5                                      ldr r3, [r1, #0x130]
00584aa8  00 00 53 e3                                      cmp r3, #0
00584aac  00 30 80 e5                                      str r3, [r0]
00584ab0  04 20 93 15                                      ldrne r2, [r3, #4]
00584ab4  01 20 82 12                                      addne r2, r2, #1
00584ab8  04 20 83 15                                      strne r2, [r3, #4]
00584abc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00584ac0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZNK6glitch5scene14CMeshSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CMeshSceneNode::getBoundingBox() const
; decoder-mode: arm
00584ac0  10 40 2d e9                                      push {r4, lr}
00584ac4  30 31 90 e5                                      ldr r3, [r0, #0x130]
00584ac8  03 00 a0 e1                                      mov r0, r3
00584acc  00 30 93 e5                                      ldr r3, [r3]
00584ad0  0f e0 a0 e1                                      mov lr, pc
00584ad4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00584ad8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00584adc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZNK6glitch5scene14CMeshSceneNode11getMaterialEj
; demangled: glitch::scene::CMeshSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
00584adc  70 40 2d e9                                      push {r4, r5, r6, lr}
00584ae0  30 31 91 e5                                      ldr r3, [r1, #0x130]
00584ae4  01 50 a0 e1                                      mov r5, r1
00584ae8  00 40 a0 e1                                      mov r4, r0
00584aec  00 00 53 e3                                      cmp r3, #0
00584af0  02 60 a0 e1                                      mov r6, r2
00584af4  05 00 00 0a                                      beq #0x584b10
00584af8  03 00 a0 e1                                      mov r0, r3
00584afc  00 30 93 e5                                      ldr r3, [r3]
00584b00  0f e0 a0 e1                                      mov lr, pc
00584b04  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00584b08  06 00 50 e1                                      cmp r0, r6
00584b0c  03 00 00 8a                                      bhi #0x584b20
00584b10  00 30 a0 e3                                      mov r3, #0
00584b14  00 30 84 e5                                      str r3, [r4]
00584b18  04 00 a0 e1                                      mov r0, r4
00584b1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00584b20  30 31 95 e5                                      ldr r3, [r5, #0x130]
00584b24  04 00 a0 e1                                      mov r0, r4
00584b28  06 20 a0 e1                                      mov r2, r6
00584b2c  03 10 a0 e1                                      mov r1, r3
00584b30  00 30 93 e5                                      ldr r3, [r3]
00584b34  0f e0 a0 e1                                      mov lr, pc
00584b38  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00584b3c  04 00 a0 e1                                      mov r0, r4
00584b40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00584b44, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZNK6glitch5scene14CMeshSceneNode16getMaterialCountEv
; demangled: glitch::scene::CMeshSceneNode::getMaterialCount() const
; decoder-mode: arm
00584b44  10 40 2d e9                                      push {r4, lr}
00584b48  30 31 90 e5                                      ldr r3, [r0, #0x130]
00584b4c  00 00 53 e3                                      cmp r3, #0
00584b50  04 00 00 0a                                      beq #0x584b68
00584b54  03 00 a0 e1                                      mov r0, r3
00584b58  00 30 93 e5                                      ldr r3, [r3]
00584b5c  0f e0 a0 e1                                      mov lr, pc
00584b60  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00584b64  10 80 bd e8                                      pop {r4, pc}
00584b68  03 00 a0 e1                                      mov r0, r3
00584b6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00584b90, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZNK6glitch5scene14CMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00584b90  30 40 2d e9                                      push {r4, r5, lr}
00584b94  00 40 a0 e1                                      mov r4, r0
00584b98  0c d0 4d e2                                      sub sp, sp, #0xc
00584b9c  01 50 a0 e1                                      mov r5, r1
00584ba0  bf 49 00 eb                                      bl #0x5972a4
00584ba4  10 11 94 e5                                      ldr r1, [r4, #0x110]
00584ba8  00 30 95 e5                                      ldr r3, [r5]
00584bac  30 21 94 e5                                      ldr r2, [r4, #0x130]
00584bb0  70 01 91 e5                                      ldr r0, [r1, #0x170]
00584bb4  7c 40 93 e5                                      ldr r4, [r3, #0x7c]
00584bb8  00 00 52 e3                                      cmp r2, #0
00584bbc  00 30 90 e5                                      ldr r3, [r0]
00584bc0  34 30 93 e5                                      ldr r3, [r3, #0x34]
00584bc4  04 20 8d e5                                      str r2, [sp, #4]
00584bc8  04 10 92 15                                      ldrne r1, [r2, #4]
00584bcc  01 10 81 12                                      addne r1, r1, #1
00584bd0  04 10 82 15                                      strne r1, [r2, #4]
00584bd4  04 10 8d e2                                      add r1, sp, #4
00584bd8  33 ff 2f e1                                      blx r3
00584bdc  28 10 9f e5                                      ldr r1, [pc, #0x28]
00584be0  00 20 a0 e1                                      mov r2, r0
00584be4  00 30 a0 e3                                      mov r3, #0
00584be8  05 00 a0 e1                                      mov r0, r5
00584bec  01 10 8f e0                                      add r1, pc, r1
00584bf0  34 ff 2f e1                                      blx r4
00584bf4  04 00 9d e5                                      ldr r0, [sp, #4]
00584bf8  00 00 50 e3                                      cmp r0, #0
00584bfc  00 00 00 0a                                      beq #0x584c04
00584c00  5f 62 f6 eb                                      bl #0x31d584
00584c04  0c d0 8d e2                                      add sp, sp, #0xc
00584c08  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00584c0c  ac 67 36 00                                      .byte 0xac, 0x67, 0x36, 0x00

; FUNCTION 0x00584c10, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNodeD1Ev
; demangled: glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00584c10  70 40 2d e9                                      push {r4, r5, r6, lr}
00584c14  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
00584c18  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00584c1c  00 40 a0 e1                                      mov r4, r0
00584c20  05 50 8f e0                                      add r5, pc, r5
00584c24  30 01 90 e5                                      ldr r0, [r0, #0x130]
00584c28  03 30 95 e7                                      ldr r3, [r5, r3]
00584c2c  00 00 50 e3                                      cmp r0, #0
00584c30  4a 2f 83 e2                                      add r2, r3, #0x128
00584c34  1c 30 83 e2                                      add r3, r3, #0x1c
00584c38  00 30 84 e5                                      str r3, [r4]
00584c3c  38 21 84 e5                                      str r2, [r4, #0x138]
00584c40  00 00 00 0a                                      beq #0x584c48
00584c44  4e 62 f6 eb                                      bl #0x31d584
00584c48  40 30 9f e5                                      ldr r3, [pc, #0x40]
00584c4c  04 00 a0 e1                                      mov r0, r4
00584c50  03 10 95 e7                                      ldr r1, [r5, r3]
00584c54  04 30 91 e5                                      ldr r3, [r1, #4]
00584c58  14 c0 91 e5                                      ldr ip, [r1, #0x14]
00584c5c  18 20 91 e5                                      ldr r2, [r1, #0x18]
00584c60  00 30 84 e5                                      str r3, [r4]
00584c64  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00584c68  08 10 81 e2                                      add r1, r1, #8
00584c6c  03 c0 84 e7                                      str ip, [r4, r3]
00584c70  00 30 94 e5                                      ldr r3, [r4]
00584c74  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00584c78  03 20 84 e7                                      str r2, [r4, r3]
00584c7c  0e 50 00 eb                                      bl #0x598cbc
00584c80  04 00 a0 e1                                      mov r0, r4
00584c84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00584c88  70 fe 40 00 a8 3b 00 00 30 0a 00 00              .byte 0x70, 0xfe, 0x40, 0x00, 0xa8, 0x3b, 0x00, 0x00, 0x30, 0x0a, 0x00, 0x00

; FUNCTION 0x00584c94, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNodeD0Ev
; demangled: glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00584c94  10 40 2d e9                                      push {r4, lr}
00584c98  00 40 a0 e1                                      mov r4, r0
00584c9c  db ff ff eb                                      bl #0x584c10
00584ca0  04 00 a0 e1                                      mov r0, r4
00584ca4  81 25 f6 eb                                      bl #0x30e2b0
00584ca8  04 00 a0 e1                                      mov r0, r4
00584cac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00584cb0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNodeD2Ev
; demangled: glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00584cb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00584cb4  00 30 91 e5                                      ldr r3, [r1]
00584cb8  00 40 a0 e1                                      mov r4, r0
00584cbc  01 50 a0 e1                                      mov r5, r1
00584cc0  00 30 80 e5                                      str r3, [r0]
00584cc4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00584cc8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00584ccc  03 20 80 e7                                      str r2, [r0, r3]
00584cd0  00 30 90 e5                                      ldr r3, [r0]
00584cd4  20 20 91 e5                                      ldr r2, [r1, #0x20]
00584cd8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00584cdc  03 20 80 e7                                      str r2, [r0, r3]
00584ce0  30 01 90 e5                                      ldr r0, [r0, #0x130]
00584ce4  00 00 50 e3                                      cmp r0, #0
00584ce8  00 00 00 0a                                      beq #0x584cf0
00584cec  24 62 f6 eb                                      bl #0x31d584
00584cf0  04 30 95 e5                                      ldr r3, [r5, #4]
00584cf4  04 50 85 e2                                      add r5, r5, #4
00584cf8  04 10 85 e2                                      add r1, r5, #4
00584cfc  00 30 84 e5                                      str r3, [r4]
00584d00  10 20 95 e5                                      ldr r2, [r5, #0x10]
00584d04  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00584d08  04 00 a0 e1                                      mov r0, r4
00584d0c  03 20 84 e7                                      str r2, [r4, r3]
00584d10  00 30 94 e5                                      ldr r3, [r4]
00584d14  14 20 95 e5                                      ldr r2, [r5, #0x14]
00584d18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00584d1c  03 20 84 e7                                      str r2, [r4, r3]
00584d20  e5 4f 00 eb                                      bl #0x598cbc
00584d24  04 00 a0 e1                                      mov r0, r4
00584d28  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00584d2c, declared_size=420, range_size=420, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
00584d2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00584d30  30 31 90 e5                                      ldr r3, [r0, #0x130]
00584d34  20 d0 4d e2                                      sub sp, sp, #0x20
00584d38  00 40 a0 e1                                      mov r4, r0
00584d3c  00 00 53 e3                                      cmp r3, #0
00584d40  4e 00 00 0a                                      beq #0x584e80
00584d44  00 20 a0 e3                                      mov r2, #0
00584d48  02 60 a0 e1                                      mov r6, r2
00584d4c  34 21 80 e5                                      str r2, [r0, #0x134]
00584d50  02 80 a0 e1                                      mov r8, r2
00584d54  02 50 a0 e1                                      mov r5, r2
00584d58  1c 70 8d e2                                      add r7, sp, #0x1c
00584d5c  0c a0 a0 e3                                      mov sl, #0xc
00584d60  17 00 00 ea                                      b #0x584dc4
00584d64  30 31 94 e5                                      ldr r3, [r4, #0x130]
00584d68  03 10 a0 e1                                      mov r1, r3
00584d6c  00 30 93 e5                                      ldr r3, [r3]
00584d70  0f e0 a0 e1                                      mov lr, pc
00584d74  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00584d78  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
00584d7c  09 00 a0 e1                                      mov r0, sb
00584d80  eb 03 01 eb                                      bl #0x5c5d34
00584d84  04 30 99 e5                                      ldr r3, [sb, #4]
00584d88  18 30 93 e5                                      ldr r3, [r3, #0x18]
00584d8c  9a 30 23 e0                                      mla r3, sl, r0, r3
00584d90  07 00 a0 e1                                      mov r0, r7
00584d94  08 30 93 e5                                      ldr r3, [r3, #8]
00584d98  04 90 93 e5                                      ldr sb, [r3, #4]
00584d9c  91 2f f6 eb                                      bl #0x310be8
00584da0  59 98 e0 e7                                      ubfx sb, sb, #0x10, #1
00584da4  00 00 59 e3                                      cmp sb, #0
00584da8  01 50 85 12                                      addne r5, r5, #1
00584dac  01 80 88 02                                      addeq r8, r8, #1
00584db0  00 00 55 e3                                      cmp r5, #0
00584db4  00 00 58 13                                      cmpne r8, #0
00584db8  33 00 00 1a                                      bne #0x584e8c
00584dbc  30 31 94 e5                                      ldr r3, [r4, #0x130]
00584dc0  01 60 86 e2                                      add r6, r6, #1
00584dc4  03 00 a0 e1                                      mov r0, r3
00584dc8  00 30 93 e5                                      ldr r3, [r3]
00584dcc  0f e0 a0 e1                                      mov lr, pc
00584dd0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00584dd4  00 00 56 e1                                      cmp r6, r0
00584dd8  06 20 a0 e1                                      mov r2, r6
00584ddc  07 00 a0 e1                                      mov r0, r7
00584de0  df ff ff 3a                                      blo #0x584d64
00584de4  00 00 58 e3                                      cmp r8, #0
00584de8  27 00 00 1a                                      bne #0x584e8c
00584dec  00 00 55 e3                                      cmp r5, #0
00584df0  0f 00 00 0a                                      beq #0x584e34
00584df4  10 01 94 e5                                      ldr r0, [r4, #0x110]
00584df8  00 30 a0 e3                                      mov r3, #0
00584dfc  20 50 8d e2                                      add r5, sp, #0x20
00584e00  00 20 90 e5                                      ldr r2, [r0]
00584e04  04 10 a0 e1                                      mov r1, r4
00584e08  24 c0 92 e5                                      ldr ip, [r2, #0x24]
00584e0c  08 20 a0 e3                                      mov r2, #8
00584e10  0c 30 25 e5                                      str r3, [r5, #-0xc]!
00584e14  00 20 8d e5                                      str r2, [sp]
00584e18  02 21 e0 e3                                      mvn r2, #0x80000000
00584e1c  08 20 8d e5                                      str r2, [sp, #8]
00584e20  04 30 8d e5                                      str r3, [sp, #4]
00584e24  05 20 a0 e1                                      mov r2, r5
00584e28  3c ff 2f e1                                      blx ip
00584e2c  05 00 a0 e1                                      mov r0, r5
00584e30  6c 2f f6 eb                                      bl #0x310be8
00584e34  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00584e38  02 0b 13 e3                                      tst r3, #0x800
00584e3c  0f 00 00 0a                                      beq #0x584e80
00584e40  10 01 94 e5                                      ldr r0, [r4, #0x110]
00584e44  00 30 a0 e3                                      mov r3, #0
00584e48  20 50 8d e2                                      add r5, sp, #0x20
00584e4c  00 20 90 e5                                      ldr r2, [r0]
00584e50  04 10 a0 e1                                      mov r1, r4
00584e54  24 c0 92 e5                                      ldr ip, [r2, #0x24]
00584e58  07 20 a0 e3                                      mov r2, #7
00584e5c  10 30 25 e5                                      str r3, [r5, #-0x10]!
00584e60  00 20 8d e5                                      str r2, [sp]
00584e64  02 21 e0 e3                                      mvn r2, #0x80000000
00584e68  08 20 8d e5                                      str r2, [sp, #8]
00584e6c  04 30 8d e5                                      str r3, [sp, #4]
00584e70  05 20 a0 e1                                      mov r2, r5
00584e74  3c ff 2f e1                                      blx ip
00584e78  05 00 a0 e1                                      mov r0, r5
00584e7c  59 2f f6 eb                                      bl #0x310be8
00584e80  01 00 a0 e3                                      mov r0, #1
00584e84  20 d0 8d e2                                      add sp, sp, #0x20
00584e88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00584e8c  10 01 94 e5                                      ldr r0, [r4, #0x110]
00584e90  00 30 a0 e3                                      mov r3, #0
00584e94  20 60 8d e2                                      add r6, sp, #0x20
00584e98  00 20 90 e5                                      ldr r2, [r0]
00584e9c  04 10 a0 e1                                      mov r1, r4
00584ea0  24 c0 92 e5                                      ldr ip, [r2, #0x24]
00584ea4  04 20 a0 e3                                      mov r2, #4
00584ea8  08 30 26 e5                                      str r3, [r6, #-8]!
00584eac  00 20 8d e5                                      str r2, [sp]
00584eb0  02 21 e0 e3                                      mvn r2, #0x80000000
00584eb4  08 20 8d e5                                      str r2, [sp, #8]
00584eb8  04 30 8d e5                                      str r3, [sp, #4]
00584ebc  06 20 a0 e1                                      mov r2, r6
00584ec0  3c ff 2f e1                                      blx ip
00584ec4  06 00 a0 e1                                      mov r0, r6
00584ec8  46 2f f6 eb                                      bl #0x310be8
00584ecc  c6 ff ff ea                                      b #0x584dec

; FUNCTION 0x00584ed0, declared_size=540, range_size=540, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00584ed0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00584ed4  04 42 9f e5                                      ldr r4, [pc, #0x204]
00584ed8  04 82 9f e5                                      ldr r8, [pc, #0x204]
00584edc  00 50 a0 e1                                      mov r5, r0
00584ee0  04 40 8f e0                                      add r4, pc, r4
00584ee4  08 00 94 e7                                      ldr r0, [r4, r8]
00584ee8  10 31 95 e5                                      ldr r3, [r5, #0x110]
00584eec  54 d0 4d e2                                      sub sp, sp, #0x54
00584ef0  00 00 90 e5                                      ldr r0, [r0]
00584ef4  30 c1 95 e5                                      ldr ip, [r5, #0x130]
00584ef8  02 b0 a0 e1                                      mov fp, r2
00584efc  4c 00 8d e5                                      str r0, [sp, #0x4c]
00584f00  70 01 93 e5                                      ldr r0, [r3, #0x170]
00584f04  00 00 5c e3                                      cmp ip, #0
00584f08  01 70 a0 e1                                      mov r7, r1
00584f0c  00 30 90 e5                                      ldr r3, [r0]
00584f10  18 10 8d e2                                      add r1, sp, #0x18
00584f14  34 60 8d e2                                      add r6, sp, #0x34
00584f18  34 30 93 e5                                      ldr r3, [r3, #0x34]
00584f1c  18 c0 8d e5                                      str ip, [sp, #0x18]
00584f20  04 20 9c 15                                      ldrne r2, [ip, #4]
00584f24  01 20 82 12                                      addne r2, r2, #1
00584f28  04 20 8c 15                                      strne r2, [ip, #4]
00584f2c  33 ff 2f e1                                      blx r3
00584f30  44 60 8d e5                                      str r6, [sp, #0x44]
00584f34  00 a0 a0 e1                                      mov sl, r0
00584f38  48 60 8d e5                                      str r6, [sp, #0x48]
00584f3c  c4 23 f6 eb                                      bl #0x30de54
00584f40  0a 10 a0 e1                                      mov r1, sl
00584f44  00 20 8a e0                                      add r2, sl, r0
00584f48  06 00 a0 e1                                      mov r0, r6
00584f4c  28 84 f6 eb                                      bl #0x325ff4
00584f50  18 00 9d e5                                      ldr r0, [sp, #0x18]
00584f54  00 00 50 e3                                      cmp r0, #0
00584f58  00 00 00 0a                                      beq #0x584f60
00584f5c  88 61 f6 eb                                      bl #0x31d584
00584f60  80 21 9f e5                                      ldr r2, [pc, #0x180]
00584f64  1c 90 8d e2                                      add sb, sp, #0x1c
00584f68  00 30 97 e5                                      ldr r3, [r7]
00584f6c  02 20 8f e0                                      add r2, pc, r2
00584f70  09 00 a0 e1                                      mov r0, sb
00584f74  07 10 a0 e1                                      mov r1, r7
00584f78  0f e0 a0 e1                                      mov lr, pc
00584f7c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00584f80  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00584f84  30 a0 9d e5                                      ldr sl, [sp, #0x30]
00584f88  0a 00 53 e1                                      cmp r3, sl
00584f8c  36 00 00 0a                                      beq #0x58506c
00584f90  48 00 9d e5                                      ldr r0, [sp, #0x48]
00584f94  44 20 9d e5                                      ldr r2, [sp, #0x44]
00584f98  03 30 6a e0                                      rsb r3, sl, r3
00584f9c  02 20 60 e0                                      rsb r2, r0, r2
00584fa0  03 00 52 e1                                      cmp r2, r3
00584fa4  47 00 00 0a                                      beq #0x5850c8
00584fa8  0a 20 a0 e1                                      mov r2, sl
00584fac  10 00 8d e2                                      add r0, sp, #0x10
00584fb0  00 a0 a0 e3                                      mov sl, #0
00584fb4  10 11 95 e5                                      ldr r1, [r5, #0x110]
00584fb8  14 a0 8d e5                                      str sl, [sp, #0x14]
00584fbc  18 26 00 eb                                      bl #0x58e824
00584fc0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00584fc4  0a 00 50 e1                                      cmp r0, sl
00584fc8  17 00 00 0a                                      beq #0x58502c
00584fcc  00 30 e0 e3                                      mvn r3, #0
00584fd0  0a 20 a0 e1                                      mov r2, sl
00584fd4  00 c0 90 e5                                      ldr ip, [r0]
00584fd8  00 10 a0 e1                                      mov r1, r0
00584fdc  04 30 8d e5                                      str r3, [sp, #4]
00584fe0  00 30 8d e5                                      str r3, [sp]
00584fe4  0c 00 8d e2                                      add r0, sp, #0xc
00584fe8  ff 30 a0 e3                                      mov r3, #0xff
00584fec  0f e0 a0 e1                                      mov lr, pc
00584ff0  34 f0 9c e5                                      ldr pc, [ip, #0x34]
00584ff4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00584ff8  0a 00 53 e1                                      cmp r3, sl
00584ffc  04 20 93 15                                      ldrne r2, [r3, #4]
00585000  01 20 82 12                                      addne r2, r2, #1
00585004  04 20 83 15                                      strne r2, [r3, #4]
00585008  14 00 9d e5                                      ldr r0, [sp, #0x14]
0058500c  14 30 8d e5                                      str r3, [sp, #0x14]
00585010  00 00 50 e3                                      cmp r0, #0
00585014  00 00 00 0a                                      beq #0x58501c
00585018  59 61 f6 eb                                      bl #0x31d584
0058501c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00585020  00 00 50 e3                                      cmp r0, #0
00585024  00 00 00 0a                                      beq #0x58502c
00585028  55 61 f6 eb                                      bl #0x31d584
0058502c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00585030  00 00 53 e3                                      cmp r3, #0
00585034  04 00 00 0a                                      beq #0x58504c
00585038  00 30 95 e5                                      ldr r3, [r5]
0058503c  05 00 a0 e1                                      mov r0, r5
00585040  14 10 8d e2                                      add r1, sp, #0x14
00585044  0f e0 a0 e1                                      mov lr, pc
00585048  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0058504c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00585050  00 00 50 e3                                      cmp r0, #0
00585054  00 00 00 0a                                      beq #0x58505c
00585058  49 61 f6 eb                                      bl #0x31d584
0058505c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00585060  00 00 50 e3                                      cmp r0, #0
00585064  00 00 00 0a                                      beq #0x58506c
00585068  45 61 f6 eb                                      bl #0x31d584
0058506c  05 00 a0 e1                                      mov r0, r5
00585070  07 10 a0 e1                                      mov r1, r7
00585074  0b 20 a0 e1                                      mov r2, fp
00585078  f6 4b 00 eb                                      bl #0x598058
0058507c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00585080  09 00 50 e1                                      cmp r0, sb
00585084  02 00 00 0a                                      beq #0x585094
00585088  00 00 50 e3                                      cmp r0, #0
0058508c  00 00 00 0a                                      beq #0x585094
00585090  ee 2c f6 eb                                      bl #0x310450
00585094  48 00 9d e5                                      ldr r0, [sp, #0x48]
00585098  06 00 50 e1                                      cmp r0, r6
0058509c  02 00 00 0a                                      beq #0x5850ac
005850a0  00 00 50 e3                                      cmp r0, #0
005850a4  00 00 00 0a                                      beq #0x5850ac
005850a8  e8 2c f6 eb                                      bl #0x310450
005850ac  08 30 94 e7                                      ldr r3, [r4, r8]
005850b0  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005850b4  00 30 93 e5                                      ldr r3, [r3]
005850b8  03 00 52 e1                                      cmp r2, r3
005850bc  06 00 00 1a                                      bne #0x5850dc
005850c0  54 d0 8d e2                                      add sp, sp, #0x54
005850c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005850c8  0a 10 a0 e1                                      mov r1, sl
005850cc  43 25 f6 eb                                      bl #0x30e5e0
005850d0  00 00 50 e3                                      cmp r0, #0
005850d4  e4 ff ff 0a                                      beq #0x58506c
005850d8  b2 ff ff ea                                      b #0x584fa8
005850dc  8b 24 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005850e0  b0 fb 40 00 ac 40 00 00 2c 64 36 00              .byte 0xb0, 0xfb, 0x40, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x64, 0x36, 0x00

; FUNCTION 0x005850ec, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS0_5IMeshEEE
; demangled: glitch::scene::CMeshSceneNode::setMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&)
; decoder-mode: arm
005850ec  00 30 91 e5                                      ldr r3, [r1]
005850f0  00 00 53 e3                                      cmp r3, #0
005850f4  04 20 93 15                                      ldrne r2, [r3, #4]
005850f8  01 20 82 12                                      addne r2, r2, #1
005850fc  04 20 83 15                                      strne r2, [r3, #4]
00585100  30 21 90 e5                                      ldr r2, [r0, #0x130]
00585104  30 31 80 e5                                      str r3, [r0, #0x130]
00585108  00 00 52 e3                                      cmp r2, #0
0058510c  1e ff 2f 01                                      bxeq lr
00585110  02 00 a0 e1                                      mov r0, r2
00585114  1a 61 f6 ea                                      b #0x31d584

; FUNCTION 0x00585118, declared_size=260, range_size=260, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
; demangled: glitch::scene::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::scene::IMesh> const&, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00585118  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0058511c  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
00585120  e8 e0 9f e5                                      ldr lr, [pc, #0xe8]
00585124  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
00585128  06 60 8f e0                                      add r6, pc, r6
0058512c  0e 50 96 e7                                      ldr r5, [r6, lr]
00585130  0c c0 96 e7                                      ldr ip, [r6, ip]
00585134  01 70 a0 e3                                      mov r7, #1
00585138  24 e0 95 e5                                      ldr lr, [r5, #0x24]
0058513c  08 c0 8c e2                                      add ip, ip, #8
00585140  3c 71 80 e5                                      str r7, [r0, #0x13c]
00585144  00 e0 80 e5                                      str lr, [r0]
00585148  38 c1 80 e5                                      str ip, [r0, #0x138]
0058514c  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
00585150  28 e0 95 e5                                      ldr lr, [r5, #0x28]
00585154  0c d0 4d e2                                      sub sp, sp, #0xc
00585158  01 70 a0 e1                                      mov r7, r1
0058515c  0c e0 80 e7                                      str lr, [r0, ip]
00585160  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00585164  08 10 85 e2                                      add r1, r5, #8
00585168  00 40 a0 e1                                      mov r4, r0
0058516c  00 c0 8d e5                                      str ip, [sp]
00585170  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00585174  04 c0 8d e5                                      str ip, [sp, #4]
00585178  d0 4f 00 eb                                      bl #0x5990c0
0058517c  04 20 95 e5                                      ldr r2, [r5, #4]
00585180  14 10 95 e5                                      ldr r1, [r5, #0x14]
00585184  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00585188  00 20 84 e5                                      str r2, [r4]
0058518c  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00585190  03 30 96 e7                                      ldr r3, [r6, r3]
00585194  18 c0 95 e5                                      ldr ip, [r5, #0x18]
00585198  02 10 84 e7                                      str r1, [r4, r2]
0058519c  00 00 94 e5                                      ldr r0, [r4]
005851a0  00 20 a0 e3                                      mov r2, #0
005851a4  4a 1f 83 e2                                      add r1, r3, #0x128
005851a8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
005851ac  1c 30 83 e2                                      add r3, r3, #0x1c
005851b0  00 c0 84 e7                                      str ip, [r4, r0]
005851b4  30 21 84 e5                                      str r2, [r4, #0x130]
005851b8  00 30 84 e5                                      str r3, [r4]
005851bc  38 11 84 e5                                      str r1, [r4, #0x138]
005851c0  34 21 84 e5                                      str r2, [r4, #0x134]
005851c4  00 30 97 e5                                      ldr r3, [r7]
005851c8  02 00 53 e1                                      cmp r3, r2
005851cc  30 31 84 05                                      streq r3, [r4, #0x130]
005851d0  07 00 00 0a                                      beq #0x5851f4
005851d4  04 20 93 e5                                      ldr r2, [r3, #4]
005851d8  01 20 82 e2                                      add r2, r2, #1
005851dc  04 20 83 e5                                      str r2, [r3, #4]
005851e0  30 01 94 e5                                      ldr r0, [r4, #0x130]
005851e4  30 31 84 e5                                      str r3, [r4, #0x130]
005851e8  00 00 50 e3                                      cmp r0, #0
005851ec  00 00 00 0a                                      beq #0x5851f4
005851f0  e3 60 f6 eb                                      bl #0x31d584
005851f4  04 00 a0 e1                                      mov r0, r4
005851f8  02 10 a0 e3                                      mov r1, #2
005851fc  e6 47 00 eb                                      bl #0x59719c
00585200  04 00 a0 e1                                      mov r0, r4
00585204  0c d0 8d e2                                      add sp, sp, #0xc
00585208  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0058520c  68 f9 40 00 30 0a 00 00 44 2b 00 00 a8 3b 00 00  .byte 0x68, 0xf9, 0x40, 0x00, 0x30, 0x0a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xa8, 0x3b, 0x00, 0x00

; FUNCTION 0x0058521c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNode5cloneEv
; demangled: glitch::scene::CMeshSceneNode::clone()
; decoder-mode: arm
0058521c  70 40 2d e9                                      push {r4, r5, r6, lr}
00585220  30 31 90 e5                                      ldr r3, [r0, #0x130]
00585224  10 d0 4d e2                                      sub sp, sp, #0x10
00585228  0c 60 8d e2                                      add r6, sp, #0xc
0058522c  00 40 a0 e1                                      mov r4, r0
00585230  03 10 a0 e1                                      mov r1, r3
00585234  06 00 a0 e1                                      mov r0, r6
00585238  00 30 93 e5                                      ldr r3, [r3]
0058523c  0f e0 a0 e1                                      mov lr, pc
00585240  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00585244  00 10 a0 e3                                      mov r1, #0
00585248  05 0d a0 e3                                      mov r0, #0x140
0058524c  d6 bb fe eb                                      bl #0x5341ac
00585250  0c 21 94 e5                                      ldr r2, [r4, #0x10c]
00585254  b8 e0 84 e2                                      add lr, r4, #0xb8
00585258  c8 c0 84 e2                                      add ip, r4, #0xc8
0058525c  06 10 a0 e1                                      mov r1, r6
00585260  ac 30 84 e2                                      add r3, r4, #0xac
00585264  00 50 a0 e1                                      mov r5, r0
00585268  00 e0 8d e5                                      str lr, [sp]
0058526c  04 c0 8d e5                                      str ip, [sp, #4]
00585270  a8 ff ff eb                                      bl #0x585118
00585274  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00585278  00 00 50 e3                                      cmp r0, #0
0058527c  00 00 00 0a                                      beq #0x585284
00585280  bf 60 f6 eb                                      bl #0x31d584
00585284  05 00 a0 e1                                      mov r0, r5
00585288  04 10 a0 e1                                      mov r1, r4
0058528c  ce 4a 00 eb                                      bl #0x597dcc
00585290  05 00 a0 e1                                      mov r0, r5
00585294  10 d0 8d e2                                      add sp, sp, #0x10
00585298  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0058529c, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEiRKNS_4core8vector3dIfEERKNS8_10quaternionESC_
; demangled: glitch::scene::CMeshSceneNode::CMeshSceneNode(boost::intrusive_ptr<glitch::scene::IMesh> const&, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0058529c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005852a0  0c d0 4d e2                                      sub sp, sp, #0xc
005852a4  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005852a8  04 60 81 e2                                      add r6, r1, #4
005852ac  01 50 a0 e1                                      mov r5, r1
005852b0  00 c0 8d e5                                      str ip, [sp]
005852b4  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005852b8  02 70 a0 e1                                      mov r7, r2
005852bc  04 10 86 e2                                      add r1, r6, #4
005852c0  03 20 a0 e1                                      mov r2, r3
005852c4  20 30 9d e5                                      ldr r3, [sp, #0x20]
005852c8  00 40 a0 e1                                      mov r4, r0
005852cc  04 c0 8d e5                                      str ip, [sp, #4]
005852d0  7a 4f 00 eb                                      bl #0x5990c0
005852d4  04 20 95 e5                                      ldr r2, [r5, #4]
005852d8  00 30 a0 e3                                      mov r3, #0
005852dc  00 20 84 e5                                      str r2, [r4]
005852e0  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
005852e4  10 10 96 e5                                      ldr r1, [r6, #0x10]
005852e8  02 10 84 e7                                      str r1, [r4, r2]
005852ec  00 20 94 e5                                      ldr r2, [r4]
005852f0  14 10 96 e5                                      ldr r1, [r6, #0x14]
005852f4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
005852f8  02 10 84 e7                                      str r1, [r4, r2]
005852fc  00 20 95 e5                                      ldr r2, [r5]
00585300  00 20 84 e5                                      str r2, [r4]
00585304  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00585308  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0058530c  02 10 84 e7                                      str r1, [r4, r2]
00585310  00 20 94 e5                                      ldr r2, [r4]
00585314  20 10 95 e5                                      ldr r1, [r5, #0x20]
00585318  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0058531c  02 10 84 e7                                      str r1, [r4, r2]
00585320  30 31 84 e5                                      str r3, [r4, #0x130]
00585324  34 31 84 e5                                      str r3, [r4, #0x134]
00585328  00 30 97 e5                                      ldr r3, [r7]
0058532c  00 00 53 e3                                      cmp r3, #0
00585330  30 31 84 05                                      streq r3, [r4, #0x130]
00585334  07 00 00 0a                                      beq #0x585358
00585338  04 20 93 e5                                      ldr r2, [r3, #4]
0058533c  01 20 82 e2                                      add r2, r2, #1
00585340  04 20 83 e5                                      str r2, [r3, #4]
00585344  30 01 94 e5                                      ldr r0, [r4, #0x130]
00585348  30 31 84 e5                                      str r3, [r4, #0x130]
0058534c  00 00 50 e3                                      cmp r0, #0
00585350  00 00 00 0a                                      beq #0x585358
00585354  8a 60 f6 eb                                      bl #0x31d584
00585358  04 00 a0 e1                                      mov r0, r4
0058535c  02 10 a0 e3                                      mov r1, #2
00585360  8d 47 00 eb                                      bl #0x59719c
00585364  04 00 a0 e1                                      mov r0, r4
00585368  0c d0 8d e2                                      add sp, sp, #0xc
0058536c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00585370, declared_size=612, range_size=612, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZN6glitch5scene14CMeshSceneNode6renderEPv
; demangled: glitch::scene::CMeshSceneNode::render(void*)
; decoder-mode: arm
00585370  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00585374  30 21 90 e5                                      ldr r2, [r0, #0x130]
00585378  10 31 90 e5                                      ldr r3, [r0, #0x110]
0058537c  2c d0 4d e2                                      sub sp, sp, #0x2c
00585380  00 00 52 e3                                      cmp r2, #0
00585384  00 50 a0 e1                                      mov r5, r0
00585388  14 80 93 e5                                      ldr r8, [r3, #0x14]
0058538c  79 00 00 0a                                      beq #0x585578
00585390  00 00 58 e3                                      cmp r8, #0
00585394  77 00 00 0a                                      beq #0x585578
00585398  34 21 90 e5                                      ldr r2, [r0, #0x134]
0058539c  74 91 93 e5                                      ldr sb, [r3, #0x174]
005853a0  08 00 a0 e1                                      mov r0, r8
005853a4  01 30 82 e2                                      add r3, r2, #1
005853a8  34 31 85 e5                                      str r3, [r5, #0x134]
005853ac  00 30 98 e5                                      ldr r3, [r8]
005853b0  01 10 a0 e3                                      mov r1, #1
005853b4  24 20 85 e2                                      add r2, r5, #0x24
005853b8  0f e0 a0 e1                                      mov lr, pc
005853bc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
005853c0  1c 30 8d e2                                      add r3, sp, #0x1c
005853c4  0c 30 8d e5                                      str r3, [sp, #0xc]
005853c8  14 30 8d e2                                      add r3, sp, #0x14
005853cc  08 30 8d e5                                      str r3, [sp, #8]
005853d0  30 31 95 e5                                      ldr r3, [r5, #0x130]
005853d4  00 40 a0 e3                                      mov r4, #0
005853d8  08 00 59 e3                                      cmp sb, #8
005853dc  00 90 a0 13                                      movne sb, #0
005853e0  01 90 a0 03                                      moveq sb, #1
005853e4  03 00 a0 e1                                      mov r0, r3
005853e8  00 30 93 e5                                      ldr r3, [r3]
005853ec  0f e0 a0 e1                                      mov lr, pc
005853f0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005853f4  00 00 54 e1                                      cmp r4, r0
005853f8  24 70 8d e2                                      add r7, sp, #0x24
005853fc  20 60 8d e2                                      add r6, sp, #0x20
00585400  0c a0 a0 e3                                      mov sl, #0xc
00585404  18 b0 8d e2                                      add fp, sp, #0x18
00585408  5a 00 00 2a                                      bhs #0x585578
0058540c  30 31 95 e5                                      ldr r3, [r5, #0x130]
00585410  07 00 a0 e1                                      mov r0, r7
00585414  04 20 a0 e1                                      mov r2, r4
00585418  03 10 a0 e1                                      mov r1, r3
0058541c  00 30 93 e5                                      ldr r3, [r3]
00585420  0f e0 a0 e1                                      mov lr, pc
00585424  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00585428  24 30 9d e5                                      ldr r3, [sp, #0x24]
0058542c  00 00 53 e3                                      cmp r3, #0
00585430  48 00 00 0a                                      beq #0x585558
00585434  30 31 95 e5                                      ldr r3, [r5, #0x130]
00585438  04 20 a0 e1                                      mov r2, r4
0058543c  06 00 a0 e1                                      mov r0, r6
00585440  03 10 a0 e1                                      mov r1, r3
00585444  00 30 93 e5                                      ldr r3, [r3]
00585448  0f e0 a0 e1                                      mov lr, pc
0058544c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00585450  20 30 9d e5                                      ldr r3, [sp, #0x20]
00585454  03 00 a0 e1                                      mov r0, r3
00585458  04 30 8d e5                                      str r3, [sp, #4]
0058545c  34 02 01 eb                                      bl #0x5c5d34
00585460  04 30 9d e5                                      ldr r3, [sp, #4]
00585464  04 20 93 e5                                      ldr r2, [r3, #4]
00585468  10 31 95 e5                                      ldr r3, [r5, #0x110]
0058546c  18 20 92 e5                                      ldr r2, [r2, #0x18]
00585470  8a 32 d3 e5                                      ldrb r3, [r3, #0x28a]
00585474  9a 20 22 e0                                      mla r2, sl, r0, r2
00585478  00 00 53 e3                                      cmp r3, #0
0058547c  08 30 92 e5                                      ldr r3, [r2, #8]
00585480  04 30 93 e5                                      ldr r3, [r3, #4]
00585484  3d 00 00 0a                                      beq #0x585580
00585488  30 31 95 e5                                      ldr r3, [r5, #0x130]
0058548c  04 20 a0 e1                                      mov r2, r4
00585490  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00585494  03 10 a0 e1                                      mov r1, r3
00585498  00 30 93 e5                                      ldr r3, [r3]
0058549c  0f e0 a0 e1                                      mov lr, pc
005854a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005854a4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005854a8  08 00 a0 e1                                      mov r0, r8
005854ac  06 10 a0 e1                                      mov r1, r6
005854b0  00 00 53 e3                                      cmp r3, #0
005854b4  18 30 8d e5                                      str r3, [sp, #0x18]
005854b8  00 20 93 15                                      ldrne r2, [r3]
005854bc  01 20 82 12                                      addne r2, r2, #1
005854c0  00 20 83 15                                      strne r2, [r3]
005854c4  0b 20 a0 e1                                      mov r2, fp
005854c8  90 65 f7 eb                                      bl #0x35eb10
005854cc  18 30 9d e5                                      ldr r3, [sp, #0x18]
005854d0  00 00 53 e3                                      cmp r3, #0
005854d4  04 00 00 0a                                      beq #0x5854ec
005854d8  00 20 93 e5                                      ldr r2, [r3]
005854dc  01 20 42 e2                                      sub r2, r2, #1
005854e0  00 00 52 e3                                      cmp r2, #0
005854e4  00 20 83 e5                                      str r2, [r3]
005854e8  28 00 00 0a                                      beq #0x585590
005854ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005854f0  00 00 53 e3                                      cmp r3, #0
005854f4  04 00 00 0a                                      beq #0x58550c
005854f8  00 20 93 e5                                      ldr r2, [r3]
005854fc  01 20 42 e2                                      sub r2, r2, #1
00585500  00 00 52 e3                                      cmp r2, #0
00585504  00 20 83 e5                                      str r2, [r3]
00585508  2a 00 00 0a                                      beq #0x5855b8
0058550c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00585510  08 00 a0 e1                                      mov r0, r8
00585514  00 00 53 e3                                      cmp r3, #0
00585518  14 30 8d e5                                      str r3, [sp, #0x14]
0058551c  04 20 93 15                                      ldrne r2, [r3, #4]
00585520  01 20 82 12                                      addne r2, r2, #1
00585524  04 20 83 15                                      strne r2, [r3, #4]
00585528  08 10 9d e5                                      ldr r1, [sp, #8]
0058552c  a7 65 f7 eb                                      bl #0x35ebd0
00585530  14 00 9d e5                                      ldr r0, [sp, #0x14]
00585534  00 00 50 e3                                      cmp r0, #0
00585538  00 00 00 0a                                      beq #0x585540
0058553c  10 60 f6 eb                                      bl #0x31d584
00585540  06 00 a0 e1                                      mov r0, r6
00585544  a7 2d f6 eb                                      bl #0x310be8
00585548  24 00 9d e5                                      ldr r0, [sp, #0x24]
0058554c  00 00 50 e3                                      cmp r0, #0
00585550  00 00 00 0a                                      beq #0x585558
00585554  0a 60 f6 eb                                      bl #0x31d584
00585558  30 31 95 e5                                      ldr r3, [r5, #0x130]
0058555c  01 40 84 e2                                      add r4, r4, #1
00585560  03 00 a0 e1                                      mov r0, r3
00585564  00 30 93 e5                                      ldr r3, [r3]
00585568  0f e0 a0 e1                                      mov lr, pc
0058556c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00585570  00 00 54 e1                                      cmp r4, r0
00585574  a4 ff ff 3a                                      blo #0x58540c
00585578  2c d0 8d e2                                      add sp, sp, #0x2c
0058557c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00585580  53 38 e0 e7                                      ubfx r3, r3, #0x10, #1
00585584  03 00 59 e1                                      cmp sb, r3
00585588  ec ff ff 1a                                      bne #0x585540
0058558c  bd ff ff ea                                      b #0x585488
00585590  03 00 a0 e1                                      mov r0, r3
00585594  04 30 8d e5                                      str r3, [sp, #4]
00585598  6d 68 01 eb                                      bl #0x5df754
0058559c  04 30 9d e5                                      ldr r3, [sp, #4]
005855a0  03 00 a0 e1                                      mov r0, r3
005855a4  41 23 f6 eb                                      bl #0x30e2b0
005855a8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005855ac  00 00 53 e3                                      cmp r3, #0
005855b0  d0 ff ff 1a                                      bne #0x5854f8
005855b4  d4 ff ff ea                                      b #0x58550c
005855b8  03 00 a0 e1                                      mov r0, r3
005855bc  04 30 8d e5                                      str r3, [sp, #4]
005855c0  63 68 01 eb                                      bl #0x5df754
005855c4  04 30 9d e5                                      ldr r3, [sp, #4]
005855c8  03 00 a0 e1                                      mov r0, r3
005855cc  37 23 f6 eb                                      bl #0x30e2b0
005855d0  cd ff ff ea                                      b #0x58550c

; FUNCTION 0x005855d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZTv0_n20_N6glitch5scene14CMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005855d4  00 30 90 e5                                      ldr r3, [r0]
005855d8  14 30 13 e5                                      ldr r3, [r3, #-0x14]
005855dc  03 00 80 e0                                      add r0, r0, r3
005855e0  3a fe ff ea                                      b #0x584ed0

; FUNCTION 0x005855e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene14CMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
005855e4  00 30 90 e5                                      ldr r3, [r0]
005855e8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005855ec  03 00 80 e0                                      add r0, r0, r3
005855f0  a7 fd ff ea                                      b #0x584c94

; FUNCTION 0x005855f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene14CMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
005855f4  00 30 90 e5                                      ldr r3, [r0]
005855f8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005855fc  03 00 80 e0                                      add r0, r0, r3
00585600  a3 fd ff ea                                      b #0x584c94

; FUNCTION 0x00585604, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZTv0_n24_N6glitch5scene14CMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00585604  00 30 90 e5                                      ldr r3, [r0]
00585608  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0058560c  03 00 80 e0                                      add r0, r0, r3
00585610  7e fd ff ea                                      b #0x584c10

; FUNCTION 0x00585614, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZTv0_n12_N6glitch5scene14CMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CMeshSceneNode::~CMeshSceneNode()
; decoder-mode: arm
00585614  00 30 90 e5                                      ldr r3, [r0]
00585618  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0058561c  03 00 80 e0                                      add r0, r0, r3
00585620  7a fd ff ea                                      b #0x584c10

; FUNCTION 0x00585624, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CMeshSceneNode
; alias: _ZTv0_n16_NK6glitch5scene14CMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00585624  00 30 90 e5                                      ldr r3, [r0]
00585628  10 30 13 e5                                      ldr r3, [r3, #-0x10]
0058562c  03 00 80 e0                                      add r0, r0, r3
00585630  56 fd ff ea                                      b #0x584b90
