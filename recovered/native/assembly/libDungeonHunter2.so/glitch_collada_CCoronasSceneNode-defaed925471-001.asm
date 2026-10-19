; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060f8b8, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNode11setMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
; demangled: glitch::collada::CCoronasSceneNode::setMaterial(glitch::collada::SMaterial&, glitch::video::IVideoDriver*)
; decoder-mode: arm
0060f8b8  30 40 2d e9                                      push {r4, r5, lr}
0060f8bc  0c d0 4d e2                                      sub sp, sp, #0xc
0060f8c0  00 40 a0 e1                                      mov r4, r0
0060f8c4  04 50 8d e2                                      add r5, sp, #4
0060f8c8  02 30 a0 e1                                      mov r3, r2
0060f8cc  05 00 a0 e1                                      mov r0, r5
0060f8d0  01 20 a0 e1                                      mov r2, r1
0060f8d4  00 12 94 e5                                      ldr r1, [r4, #0x200]
0060f8d8  87 34 01 eb                                      bl #0x65cafc
0060f8dc  04 30 9d e5                                      ldr r3, [sp, #4]
0060f8e0  00 00 53 e3                                      cmp r3, #0
0060f8e4  0a 00 00 0a                                      beq #0x60f914
0060f8e8  00 30 8d e5                                      str r3, [sp]
0060f8ec  00 20 93 e5                                      ldr r2, [r3]
0060f8f0  08 00 8d e2                                      add r0, sp, #8
0060f8f4  01 20 82 e2                                      add r2, r2, #1
0060f8f8  00 20 83 e5                                      str r2, [r3]
0060f8fc  68 21 94 e5                                      ldr r2, [r4, #0x168]
0060f900  00 30 9d e5                                      ldr r3, [sp]
0060f904  08 20 20 e5                                      str r2, [r0, #-8]!
0060f908  68 31 84 e5                                      str r3, [r4, #0x168]
0060f90c  0d 00 a0 e1                                      mov r0, sp
0060f910  b4 04 f4 eb                                      bl #0x310be8
0060f914  05 00 a0 e1                                      mov r0, r5
0060f918  b2 04 f4 eb                                      bl #0x310be8
0060f91c  0c d0 8d e2                                      add sp, sp, #0xc
0060f920  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006e5a2c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZNK6glitch7collada17CCoronasSceneNode7getTypeEv
; demangled: glitch::collada::CCoronasSceneNode::getType() const
; decoder-mode: arm
006e5a2c  63 02 07 e3                                      movw r0, #0x7263
006e5a30  6e 03 47 e3                                      movt r0, #0x736e
006e5a34  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e5a38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZNK6glitch7collada17CCoronasSceneNode14getBoundingBoxEv
; demangled: glitch::collada::CCoronasSceneNode::getBoundingBox() const
; decoder-mode: arm
006e5a38  15 0e 80 e2                                      add r0, r0, #0x150
006e5a3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006e5a40, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNode7setSizeERKNS_4core11dimension2dIfEE
; demangled: glitch::collada::CCoronasSceneNode::setSize(glitch::core::dimension2d<float> const&)
; decoder-mode: arm
006e5a40  10 40 2d e9                                      push {r4, lr}
006e5a44  00 20 91 e5                                      ldr r2, [r1]
006e5a48  01 30 a0 e1                                      mov r3, r1
006e5a4c  00 40 a0 e1                                      mov r4, r0
006e5a50  48 21 80 e5                                      str r2, [r0, #0x148]
006e5a54  04 30 93 e5                                      ldr r3, [r3, #4]
006e5a58  48 01 90 e5                                      ldr r0, [r0, #0x148]
006e5a5c  00 10 a0 e3                                      mov r1, #0
006e5a60  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e5a64  48 a1 f0 eb                                      bl #0x30df8c
006e5a68  00 00 50 e3                                      cmp r0, #0
006e5a6c  fe 35 a0 13                                      movne r3, #0x3f800000
006e5a70  48 31 84 15                                      strne r3, [r4, #0x148]
006e5a74  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
006e5a78  00 10 a0 e3                                      mov r1, #0
006e5a7c  42 a1 f0 eb                                      bl #0x30df8c
006e5a80  00 00 50 e3                                      cmp r0, #0
006e5a84  fe 35 a0 13                                      movne r3, #0x3f800000
006e5a88  4c 31 84 15                                      strne r3, [r4, #0x14c]
006e5a8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e5a90, declared_size=124, range_size=124, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZNK6glitch7collada17CCoronasSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CCoronasSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006e5a90  70 40 2d e9                                      push {r4, r5, r6, lr}
006e5a94  01 40 a0 e1                                      mov r4, r1
006e5a98  60 10 9f e5                                      ldr r1, [pc, #0x60]
006e5a9c  00 50 a0 e1                                      mov r5, r0
006e5aa0  48 21 95 e5                                      ldr r2, [r5, #0x148]
006e5aa4  04 00 a0 e1                                      mov r0, r4
006e5aa8  00 c0 94 e5                                      ldr ip, [r4]
006e5aac  01 10 8f e0                                      add r1, pc, r1
006e5ab0  00 30 a0 e3                                      mov r3, #0
006e5ab4  0f e0 a0 e1                                      mov lr, pc
006e5ab8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006e5abc  40 10 9f e5                                      ldr r1, [pc, #0x40]
006e5ac0  04 00 a0 e1                                      mov r0, r4
006e5ac4  4c 21 95 e5                                      ldr r2, [r5, #0x14c]
006e5ac8  00 c0 94 e5                                      ldr ip, [r4]
006e5acc  01 10 8f e0                                      add r1, pc, r1
006e5ad0  00 30 a0 e3                                      mov r3, #0
006e5ad4  0f e0 a0 e1                                      mov lr, pc
006e5ad8  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006e5adc  24 10 9f e5                                      ldr r1, [pc, #0x24]
006e5ae0  04 00 a0 e1                                      mov r0, r4
006e5ae4  8c 21 95 e5                                      ldr r2, [r5, #0x18c]
006e5ae8  01 10 8f e0                                      add r1, pc, r1
006e5aec  00 c0 94 e5                                      ldr ip, [r4]
006e5af0  00 30 a0 e3                                      mov r3, #0
006e5af4  0f e0 a0 e1                                      mov lr, pc
006e5af8  18 f1 9c e5                                      ldr pc, [ip, #0x118]
006e5afc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e5b00  b4 58 20 00 a4 58 20 00 60 95 20 00              .byte 0xb4, 0x58, 0x20, 0x00, 0xa4, 0x58, 0x20, 0x00, 0x60, 0x95, 0x20, 0x00

; FUNCTION 0x006e5b0c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CCoronasSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006e5b0c  70 40 2d e9                                      push {r4, r5, r6, lr}
006e5b10  01 50 a0 e1                                      mov r5, r1
006e5b14  80 10 9f e5                                      ldr r1, [pc, #0x80]
006e5b18  00 40 a0 e1                                      mov r4, r0
006e5b1c  00 30 95 e5                                      ldr r3, [r5]
006e5b20  01 10 8f e0                                      add r1, pc, r1
006e5b24  05 00 a0 e1                                      mov r0, r5
006e5b28  0f e0 a0 e1                                      mov lr, pc
006e5b2c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006e5b30  68 10 9f e5                                      ldr r1, [pc, #0x68]
006e5b34  48 01 84 e5                                      str r0, [r4, #0x148]
006e5b38  00 30 95 e5                                      ldr r3, [r5]
006e5b3c  01 10 8f e0                                      add r1, pc, r1
006e5b40  05 00 a0 e1                                      mov r0, r5
006e5b44  0f e0 a0 e1                                      mov lr, pc
006e5b48  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006e5b4c  50 10 9f e5                                      ldr r1, [pc, #0x50]
006e5b50  4c 01 84 e5                                      str r0, [r4, #0x14c]
006e5b54  00 30 95 e5                                      ldr r3, [r5]
006e5b58  05 00 a0 e1                                      mov r0, r5
006e5b5c  01 10 8f e0                                      add r1, pc, r1
006e5b60  0f e0 a0 e1                                      mov lr, pc
006e5b64  24 f1 93 e5                                      ldr pc, [r3, #0x124]
006e5b68  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
006e5b6c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
006e5b70  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006e5b74  8d 11 c4 e5                                      strb r1, [r4, #0x18d]
006e5b78  8c 01 c4 e5                                      strb r0, [r4, #0x18c]
006e5b7c  8e 21 c4 e5                                      strb r2, [r4, #0x18e]
006e5b80  8f 31 c4 e5                                      strb r3, [r4, #0x18f]
006e5b84  04 10 a0 e1                                      mov r1, r4
006e5b88  48 31 91 e4                                      ldr r3, [r1], #0x148
006e5b8c  04 00 a0 e1                                      mov r0, r4
006e5b90  0f e0 a0 e1                                      mov lr, pc
006e5b94  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
006e5b98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e5b9c  40 58 20 00 34 58 20 00 ec 94 20 00              .byte 0x40, 0x58, 0x20, 0x00, 0x34, 0x58, 0x20, 0x00, 0xec, 0x94, 0x20, 0x00

; FUNCTION 0x006e5bc8, declared_size=120, range_size=120, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNode9isBlockedEv
; demangled: glitch::collada::CCoronasSceneNode::isBlocked()
; decoder-mode: arm
006e5bc8  10 40 2d e9                                      push {r4, lr}
006e5bcc  00 40 a0 e1                                      mov r4, r0
006e5bd0  30 01 90 e5                                      ldr r0, [r0, #0x130]
006e5bd4  30 d0 4d e2                                      sub sp, sp, #0x30
006e5bd8  00 00 50 e3                                      cmp r0, #0
006e5bdc  15 00 00 0a                                      beq #0x6e5c38
006e5be0  10 31 94 e5                                      ldr r3, [r4, #0x110]
006e5be4  24 00 8d e2                                      add r0, sp, #0x24
006e5be8  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
006e5bec  63 c5 fa eb                                      bl #0x597180
006e5bf0  18 00 8d e2                                      add r0, sp, #0x18
006e5bf4  04 10 a0 e1                                      mov r1, r4
006e5bf8  60 c5 fa eb                                      bl #0x597180
006e5bfc  18 30 9d e5                                      ldr r3, [sp, #0x18]
006e5c00  0d 00 a0 e1                                      mov r0, sp
006e5c04  00 30 8d e5                                      str r3, [sp]
006e5c08  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e5c0c  04 30 8d e5                                      str r3, [sp, #4]
006e5c10  20 30 9d e5                                      ldr r3, [sp, #0x20]
006e5c14  08 30 8d e5                                      str r3, [sp, #8]
006e5c18  24 30 9d e5                                      ldr r3, [sp, #0x24]
006e5c1c  0c 30 8d e5                                      str r3, [sp, #0xc]
006e5c20  28 30 9d e5                                      ldr r3, [sp, #0x28]
006e5c24  10 30 8d e5                                      str r3, [sp, #0x10]
006e5c28  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006e5c2c  14 30 8d e5                                      str r3, [sp, #0x14]
006e5c30  0f e0 a0 e1                                      mov lr, pc
006e5c34  30 f1 94 e5                                      ldr pc, [r4, #0x130]
006e5c38  30 d0 8d e2                                      add sp, sp, #0x30
006e5c3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e5c40, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNode19onRegisterSceneNodeEv
; demangled: glitch::collada::CCoronasSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006e5c40  10 40 2d e9                                      push {r4, lr}
006e5c44  10 d0 4d e2                                      sub sp, sp, #0x10
006e5c48  00 40 a0 e1                                      mov r4, r0
006e5c4c  dd ff ff eb                                      bl #0x6e5bc8
006e5c50  00 30 50 e2                                      subs r3, r0, #0
006e5c54  0c 00 00 1a                                      bne #0x6e5c8c
006e5c58  10 21 94 e5                                      ldr r2, [r4, #0x110]
006e5c5c  04 10 a0 e1                                      mov r1, r4
006e5c60  00 c0 92 e5                                      ldr ip, [r2]
006e5c64  02 00 a0 e1                                      mov r0, r2
006e5c68  04 30 8d e5                                      str r3, [sp, #4]
006e5c6c  03 20 a0 e3                                      mov r2, #3
006e5c70  02 31 e0 e3                                      mvn r3, #0x80000000
006e5c74  00 20 8d e5                                      str r2, [sp]
006e5c78  08 30 8d e5                                      str r3, [sp, #8]
006e5c7c  5a 2f 84 e2                                      add r2, r4, #0x168
006e5c80  01 30 a0 e3                                      mov r3, #1
006e5c84  0f e0 a0 e1                                      mov lr, pc
006e5c88  24 f0 9c e5                                      ldr pc, [ip, #0x24]
006e5c8c  01 00 a0 e3                                      mov r0, #1
006e5c90  10 d0 8d e2                                      add sp, sp, #0x10
006e5c94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e5d14, declared_size=4904, range_size=4904, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNode6renderEPv
; demangled: glitch::collada::CCoronasSceneNode::render(void*)
; decoder-mode: arm
006e5d14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e5d18  64 90 9f e5                                      ldr sb, [pc, #0x64]
006e5d1c  64 20 9f e5                                      ldr r2, [pc, #0x64]
006e5d20  83 df 4d e2                                      sub sp, sp, #0x20c
006e5d24  09 90 8f e0                                      add sb, pc, sb
006e5d28  38 20 8d e5                                      str r2, [sp, #0x38]
006e5d2c  02 20 99 e7                                      ldr r2, [sb, r2]
006e5d30  10 31 90 e5                                      ldr r3, [r0, #0x110]
006e5d34  58 10 8d e5                                      str r1, [sp, #0x58]
006e5d38  00 20 92 e5                                      ldr r2, [r2]
006e5d3c  00 40 a0 e1                                      mov r4, r0
006e5d40  04 22 8d e5                                      str r2, [sp, #0x204]
006e5d44  e4 b0 93 e5                                      ldr fp, [r3, #0xe4]
006e5d48  14 50 93 e5                                      ldr r5, [r3, #0x14]
006e5d4c  00 00 5b e3                                      cmp fp, #0
006e5d50  00 00 55 13                                      cmpne r5, #0
006e5d54  00 30 a0 13                                      movne r3, #0
006e5d58  01 30 a0 03                                      moveq r3, #1
006e5d5c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006e5d60  0a 00 00 1a                                      bne #0x6e5d90
006e5d64  38 20 9d e5                                      ldr r2, [sp, #0x38]
006e5d68  02 30 99 e7                                      ldr r3, [sb, r2]
006e5d6c  04 22 9d e5                                      ldr r2, [sp, #0x204]
006e5d70  00 30 93 e5                                      ldr r3, [r3]
006e5d74  03 00 52 e1                                      cmp r2, r3
006e5d78  ad 04 00 1a                                      bne #0x6e7034
006e5d7c  83 df 8d e2                                      add sp, sp, #0x20c
006e5d80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006e5d84  6c ed 2a 00 ac 40 00 00 c8 4e 1e 00              .byte 0x6c, 0xed, 0x2a, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x4e, 0x1e, 0x00
; decoder-mode: arm
006e5d90  02 10 a0 e3                                      mov r1, #2
006e5d94  00 30 95 e5                                      ldr r3, [r5]
006e5d98  05 00 a0 e1                                      mov r0, r5
006e5d9c  0f e0 a0 e1                                      mov lr, pc
006e5da0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006e5da4  00 30 95 e5                                      ldr r3, [r5]
006e5da8  00 70 a0 e1                                      mov r7, r0
006e5dac  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006e5db0  05 00 a0 e1                                      mov r0, r5
006e5db4  0f e0 a0 e1                                      mov lr, pc
006e5db8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006e5dbc  43 af 8d e2                                      add sl, sp, #0x10c
006e5dc0  00 80 a0 e1                                      mov r8, r0
006e5dc4  40 20 a0 e3                                      mov r2, #0x40
006e5dc8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006e5dcc  0a 00 a0 e1                                      mov r0, sl
006e5dd0  fe 65 a0 e3                                      mov r6, #0x3f800000
006e5dd4  a1 a1 f0 eb                                      bl #0x30e460
006e5dd8  01 c0 a0 e3                                      mov ip, #1
006e5ddc  0a 10 a0 e1                                      mov r1, sl
006e5de0  07 00 a0 e1                                      mov r0, r7
006e5de4  c8 a0 8d e2                                      add sl, sp, #0xc8
006e5de8  4c c1 cd e5                                      strb ip, [sp, #0x14c]
006e5dec  0c 61 8d e5                                      str r6, [sp, #0x10c]
006e5df0  20 61 8d e5                                      str r6, [sp, #0x120]
006e5df4  34 61 8d e5                                      str r6, [sp, #0x134]
006e5df8  48 61 8d e5                                      str r6, [sp, #0x148]
006e5dfc  2f f5 f0 eb                                      bl #0x3232c0
006e5e00  40 20 a0 e3                                      mov r2, #0x40
006e5e04  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006e5e08  0a 00 a0 e1                                      mov r0, sl
006e5e0c  93 a1 f0 eb                                      bl #0x30e460
006e5e10  01 20 a0 e3                                      mov r2, #1
006e5e14  0a 10 a0 e1                                      mov r1, sl
006e5e18  08 00 a0 e1                                      mov r0, r8
006e5e1c  08 21 cd e5                                      strb r2, [sp, #0x108]
006e5e20  c8 60 8d e5                                      str r6, [sp, #0xc8]
006e5e24  dc 60 8d e5                                      str r6, [sp, #0xdc]
006e5e28  f0 60 8d e5                                      str r6, [sp, #0xf0]
006e5e2c  04 61 8d e5                                      str r6, [sp, #0x104]
006e5e30  22 f5 f0 eb                                      bl #0x3232c0
006e5e34  07 0d 8d e2                                      add r0, sp, #0x1c0
006e5e38  04 10 a0 e1                                      mov r1, r4
006e5e3c  cf c4 fa eb                                      bl #0x597180
006e5e40  0b 10 a0 e1                                      mov r1, fp
006e5e44  6d 0f 8d e2                                      add r0, sp, #0x1b4
006e5e48  cc c4 fa eb                                      bl #0x597180
006e5e4c  00 30 9b e5                                      ldr r3, [fp]
006e5e50  0b 00 a0 e1                                      mov r0, fp
006e5e54  0f e0 a0 e1                                      mov lr, pc
006e5e58  08 f1 93 e5                                      ldr pc, [r3, #0x108]
006e5e5c  08 a0 90 e5                                      ldr sl, [r0, #8]
006e5e60  00 b0 90 e5                                      ldr fp, [r0]
006e5e64  04 10 90 e5                                      ldr r1, [r0, #4]
006e5e68  b8 01 9d e5                                      ldr r0, [sp, #0x1b8]
006e5e6c  4e a1 f0 eb                                      bl #0x30e3ac
006e5e70  0a 10 a0 e1                                      mov r1, sl
006e5e74  00 30 a0 e1                                      mov r3, r0
006e5e78  bc 01 9d e5                                      ldr r0, [sp, #0x1bc]
006e5e7c  10 30 8d e5                                      str r3, [sp, #0x10]
006e5e80  49 a1 f0 eb                                      bl #0x30e3ac
006e5e84  0b 10 a0 e1                                      mov r1, fp
006e5e88  00 a0 a0 e1                                      mov sl, r0
006e5e8c  b4 01 9d e5                                      ldr r0, [sp, #0x1b4]
006e5e90  45 a1 f0 eb                                      bl #0x30e3ac
006e5e94  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e5e98  a8 01 8d e5                                      str r0, [sp, #0x1a8]
006e5e9c  6a 0f 8d e2                                      add r0, sp, #0x1a8
006e5ea0  ac 31 8d e5                                      str r3, [sp, #0x1ac]
006e5ea4  b0 a1 8d e5                                      str sl, [sp, #0x1b0]
006e5ea8  8c e2 f1 eb                                      bl #0x35e8e0
006e5eac  b0 31 9d e5                                      ldr r3, [sp, #0x1b0]
006e5eb0  ac 21 9d e5                                      ldr r2, [sp, #0x1ac]
006e5eb4  a8 11 9d e5                                      ldr r1, [sp, #0x1a8]
006e5eb8  f4 31 84 e5                                      str r3, [r4, #0x1f4]
006e5ebc  88 31 84 e5                                      str r3, [r4, #0x188]
006e5ec0  ac 31 84 e5                                      str r3, [r4, #0x1ac]
006e5ec4  d0 31 84 e5                                      str r3, [r4, #0x1d0]
006e5ec8  f0 21 84 e5                                      str r2, [r4, #0x1f0]
006e5ecc  84 21 84 e5                                      str r2, [r4, #0x184]
006e5ed0  a8 21 84 e5                                      str r2, [r4, #0x1a8]
006e5ed4  cc 21 84 e5                                      str r2, [r4, #0x1cc]
006e5ed8  ec 11 84 e5                                      str r1, [r4, #0x1ec]
006e5edc  80 11 84 e5                                      str r1, [r4, #0x180]
006e5ee0  a4 11 84 e5                                      str r1, [r4, #0x1a4]
006e5ee4  c8 11 84 e5                                      str r1, [r4, #0x1c8]
006e5ee8  1c 01 9d e5                                      ldr r0, [sp, #0x11c]
006e5eec  00 10 a0 e3                                      mov r1, #0
006e5ef0  9d a3 f0 eb                                      bl #0x30ed6c
006e5ef4  00 10 a0 e3                                      mov r1, #0
006e5ef8  5c 00 8d e5                                      str r0, [sp, #0x5c]
006e5efc  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
006e5f00  99 a3 f0 eb                                      bl #0x30ed6c
006e5f04  00 10 a0 e3                                      mov r1, #0
006e5f08  60 00 8d e5                                      str r0, [sp, #0x60]
006e5f0c  20 01 9d e5                                      ldr r0, [sp, #0x120]
006e5f10  95 a3 f0 eb                                      bl #0x30ed6c
006e5f14  00 10 a0 e3                                      mov r1, #0
006e5f18  64 00 8d e5                                      str r0, [sp, #0x64]
006e5f1c  30 01 9d e5                                      ldr r0, [sp, #0x130]
006e5f20  91 a3 f0 eb                                      bl #0x30ed6c
006e5f24  00 10 a0 e3                                      mov r1, #0
006e5f28  68 00 8d e5                                      str r0, [sp, #0x68]
006e5f2c  24 01 9d e5                                      ldr r0, [sp, #0x124]
006e5f30  8d a3 f0 eb                                      bl #0x30ed6c
006e5f34  00 10 a0 e3                                      mov r1, #0
006e5f38  6c 00 8d e5                                      str r0, [sp, #0x6c]
006e5f3c  34 01 9d e5                                      ldr r0, [sp, #0x134]
006e5f40  89 a3 f0 eb                                      bl #0x30ed6c
006e5f44  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
006e5f48  70 00 8d e5                                      str r0, [sp, #0x70]
006e5f4c  00 10 a0 e3                                      mov r1, #0
006e5f50  02 00 a0 e1                                      mov r0, r2
006e5f54  0c 20 8d e5                                      str r2, [sp, #0xc]
006e5f58  83 a3 f0 eb                                      bl #0x30ed6c
006e5f5c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006e5f60  0f a3 f0 eb                                      bl #0x30eba4
006e5f64  60 10 9d e5                                      ldr r1, [sp, #0x60]
006e5f68  0d a3 f0 eb                                      bl #0x30eba4
006e5f6c  3c 11 9d e5                                      ldr r1, [sp, #0x13c]
006e5f70  0b a3 f0 eb                                      bl #0x30eba4
006e5f74  10 c1 9d e5                                      ldr ip, [sp, #0x110]
006e5f78  00 b0 a0 e1                                      mov fp, r0
006e5f7c  00 10 a0 e3                                      mov r1, #0
006e5f80  0c 00 a0 e1                                      mov r0, ip
006e5f84  14 c0 8d e5                                      str ip, [sp, #0x14]
006e5f88  77 a3 f0 eb                                      bl #0x30ed6c
006e5f8c  64 10 9d e5                                      ldr r1, [sp, #0x64]
006e5f90  03 a3 f0 eb                                      bl #0x30eba4
006e5f94  68 10 9d e5                                      ldr r1, [sp, #0x68]
006e5f98  01 a3 f0 eb                                      bl #0x30eba4
006e5f9c  40 11 9d e5                                      ldr r1, [sp, #0x140]
006e5fa0  ff a2 f0 eb                                      bl #0x30eba4
006e5fa4  00 10 a0 e3                                      mov r1, #0
006e5fa8  00 a0 a0 e1                                      mov sl, r0
006e5fac  14 01 9d e5                                      ldr r0, [sp, #0x114]
006e5fb0  6d a3 f0 eb                                      bl #0x30ed6c
006e5fb4  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006e5fb8  f9 a2 f0 eb                                      bl #0x30eba4
006e5fbc  70 10 9d e5                                      ldr r1, [sp, #0x70]
006e5fc0  f7 a2 f0 eb                                      bl #0x30eba4
006e5fc4  44 11 9d e5                                      ldr r1, [sp, #0x144]
006e5fc8  f5 a2 f0 eb                                      bl #0x30eba4
006e5fcc  18 00 8d e5                                      str r0, [sp, #0x18]
006e5fd0  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
006e5fd4  0b 00 a0 e1                                      mov r0, fp
006e5fd8  63 a3 f0 eb                                      bl #0x30ed6c
006e5fdc  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006e5fe0  00 30 a0 e1                                      mov r3, r0
006e5fe4  0a 00 a0 e1                                      mov r0, sl
006e5fe8  10 30 8d e5                                      str r3, [sp, #0x10]
006e5fec  5e a3 f0 eb                                      bl #0x30ed6c
006e5ff0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e5ff4  00 10 a0 e1                                      mov r1, r0
006e5ff8  03 00 a0 e1                                      mov r0, r3
006e5ffc  e8 a2 f0 eb                                      bl #0x30eba4
006e6000  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
006e6004  00 30 a0 e1                                      mov r3, r0
006e6008  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e600c  10 30 8d e5                                      str r3, [sp, #0x10]
006e6010  55 a3 f0 eb                                      bl #0x30ed6c
006e6014  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6018  00 10 a0 e1                                      mov r1, r0
006e601c  03 00 a0 e1                                      mov r0, r3
006e6020  df a2 f0 eb                                      bl #0x30eba4
006e6024  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
006e6028  dd a2 f0 eb                                      bl #0x30eba4
006e602c  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006e6030  74 00 8d e5                                      str r0, [sp, #0x74]
006e6034  0b 00 a0 e1                                      mov r0, fp
006e6038  4b a3 f0 eb                                      bl #0x30ed6c
006e603c  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006e6040  00 30 a0 e1                                      mov r3, r0
006e6044  0a 00 a0 e1                                      mov r0, sl
006e6048  10 30 8d e5                                      str r3, [sp, #0x10]
006e604c  46 a3 f0 eb                                      bl #0x30ed6c
006e6050  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6054  00 10 a0 e1                                      mov r1, r0
006e6058  03 00 a0 e1                                      mov r0, r3
006e605c  d0 a2 f0 eb                                      bl #0x30eba4
006e6060  ec 10 9d e5                                      ldr r1, [sp, #0xec]
006e6064  00 30 a0 e1                                      mov r3, r0
006e6068  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e606c  10 30 8d e5                                      str r3, [sp, #0x10]
006e6070  3d a3 f0 eb                                      bl #0x30ed6c
006e6074  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6078  00 10 a0 e1                                      mov r1, r0
006e607c  03 00 a0 e1                                      mov r0, r3
006e6080  c7 a2 f0 eb                                      bl #0x30eba4
006e6084  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
006e6088  c5 a2 f0 eb                                      bl #0x30eba4
006e608c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006e6090  78 00 8d e5                                      str r0, [sp, #0x78]
006e6094  0b 00 a0 e1                                      mov r0, fp
006e6098  33 a3 f0 eb                                      bl #0x30ed6c
006e609c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006e60a0  00 b0 a0 e1                                      mov fp, r0
006e60a4  0a 00 a0 e1                                      mov r0, sl
006e60a8  2f a3 f0 eb                                      bl #0x30ed6c
006e60ac  00 10 a0 e1                                      mov r1, r0
006e60b0  0b 00 a0 e1                                      mov r0, fp
006e60b4  ba a2 f0 eb                                      bl #0x30eba4
006e60b8  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
006e60bc  00 a0 a0 e1                                      mov sl, r0
006e60c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e60c4  28 a3 f0 eb                                      bl #0x30ed6c
006e60c8  00 10 a0 e1                                      mov r1, r0
006e60cc  0a 00 a0 e1                                      mov r0, sl
006e60d0  b3 a2 f0 eb                                      bl #0x30eba4
006e60d4  00 11 9d e5                                      ldr r1, [sp, #0x100]
006e60d8  b1 a2 f0 eb                                      bl #0x30eba4
006e60dc  7c 00 8d e5                                      str r0, [sp, #0x7c]
006e60e0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e60e4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
006e60e8  02 00 a0 e1                                      mov r0, r2
006e60ec  ac a2 f0 eb                                      bl #0x30eba4
006e60f0  00 10 a0 e1                                      mov r1, r0
006e60f4  60 00 9d e5                                      ldr r0, [sp, #0x60]
006e60f8  a9 a2 f0 eb                                      bl #0x30eba4
006e60fc  00 10 a0 e1                                      mov r1, r0
006e6100  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
006e6104  a6 a2 f0 eb                                      bl #0x30eba4
006e6108  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006e610c  00 b0 a0 e1                                      mov fp, r0
006e6110  64 10 9d e5                                      ldr r1, [sp, #0x64]
006e6114  0c 00 a0 e1                                      mov r0, ip
006e6118  a1 a2 f0 eb                                      bl #0x30eba4
006e611c  00 10 a0 e1                                      mov r1, r0
006e6120  68 00 9d e5                                      ldr r0, [sp, #0x68]
006e6124  9e a2 f0 eb                                      bl #0x30eba4
006e6128  00 10 a0 e1                                      mov r1, r0
006e612c  40 01 9d e5                                      ldr r0, [sp, #0x140]
006e6130  9b a2 f0 eb                                      bl #0x30eba4
006e6134  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
006e6138  00 a0 a0 e1                                      mov sl, r0
006e613c  14 01 9d e5                                      ldr r0, [sp, #0x114]
006e6140  97 a2 f0 eb                                      bl #0x30eba4
006e6144  00 10 a0 e1                                      mov r1, r0
006e6148  70 00 9d e5                                      ldr r0, [sp, #0x70]
006e614c  94 a2 f0 eb                                      bl #0x30eba4
006e6150  00 10 a0 e1                                      mov r1, r0
006e6154  44 01 9d e5                                      ldr r0, [sp, #0x144]
006e6158  91 a2 f0 eb                                      bl #0x30eba4
006e615c  0b 10 a0 e1                                      mov r1, fp
006e6160  18 00 8d e5                                      str r0, [sp, #0x18]
006e6164  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
006e6168  ff a2 f0 eb                                      bl #0x30ed6c
006e616c  0a 10 a0 e1                                      mov r1, sl
006e6170  00 30 a0 e1                                      mov r3, r0
006e6174  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
006e6178  10 30 8d e5                                      str r3, [sp, #0x10]
006e617c  fa a2 f0 eb                                      bl #0x30ed6c
006e6180  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6184  00 10 a0 e1                                      mov r1, r0
006e6188  03 00 a0 e1                                      mov r0, r3
006e618c  84 a2 f0 eb                                      bl #0x30eba4
006e6190  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e6194  00 30 a0 e1                                      mov r3, r0
006e6198  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
006e619c  10 30 8d e5                                      str r3, [sp, #0x10]
006e61a0  f1 a2 f0 eb                                      bl #0x30ed6c
006e61a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e61a8  00 10 a0 e1                                      mov r1, r0
006e61ac  03 00 a0 e1                                      mov r0, r3
006e61b0  7b a2 f0 eb                                      bl #0x30eba4
006e61b4  00 10 a0 e1                                      mov r1, r0
006e61b8  f8 00 9d e5                                      ldr r0, [sp, #0xf8]
006e61bc  78 a2 f0 eb                                      bl #0x30eba4
006e61c0  74 10 9d e5                                      ldr r1, [sp, #0x74]
006e61c4  78 a0 f0 eb                                      bl #0x30e3ac
006e61c8  0b 10 a0 e1                                      mov r1, fp
006e61cc  9c 01 8d e5                                      str r0, [sp, #0x19c]
006e61d0  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
006e61d4  e4 a2 f0 eb                                      bl #0x30ed6c
006e61d8  0a 10 a0 e1                                      mov r1, sl
006e61dc  00 30 a0 e1                                      mov r3, r0
006e61e0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
006e61e4  10 30 8d e5                                      str r3, [sp, #0x10]
006e61e8  df a2 f0 eb                                      bl #0x30ed6c
006e61ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e61f0  00 10 a0 e1                                      mov r1, r0
006e61f4  03 00 a0 e1                                      mov r0, r3
006e61f8  69 a2 f0 eb                                      bl #0x30eba4
006e61fc  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e6200  00 30 a0 e1                                      mov r3, r0
006e6204  ec 00 9d e5                                      ldr r0, [sp, #0xec]
006e6208  10 30 8d e5                                      str r3, [sp, #0x10]
006e620c  d6 a2 f0 eb                                      bl #0x30ed6c
006e6210  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6214  00 10 a0 e1                                      mov r1, r0
006e6218  03 00 a0 e1                                      mov r0, r3
006e621c  60 a2 f0 eb                                      bl #0x30eba4
006e6220  00 10 a0 e1                                      mov r1, r0
006e6224  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
006e6228  5d a2 f0 eb                                      bl #0x30eba4
006e622c  78 10 9d e5                                      ldr r1, [sp, #0x78]
006e6230  5d a0 f0 eb                                      bl #0x30e3ac
006e6234  0b 10 a0 e1                                      mov r1, fp
006e6238  a0 01 8d e5                                      str r0, [sp, #0x1a0]
006e623c  d0 00 9d e5                                      ldr r0, [sp, #0xd0]
006e6240  c9 a2 f0 eb                                      bl #0x30ed6c
006e6244  0a 10 a0 e1                                      mov r1, sl
006e6248  00 b0 a0 e1                                      mov fp, r0
006e624c  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
006e6250  c5 a2 f0 eb                                      bl #0x30ed6c
006e6254  00 10 a0 e1                                      mov r1, r0
006e6258  0b 00 a0 e1                                      mov r0, fp
006e625c  50 a2 f0 eb                                      bl #0x30eba4
006e6260  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e6264  00 a0 a0 e1                                      mov sl, r0
006e6268  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
006e626c  be a2 f0 eb                                      bl #0x30ed6c
006e6270  00 10 a0 e1                                      mov r1, r0
006e6274  0a 00 a0 e1                                      mov r0, sl
006e6278  49 a2 f0 eb                                      bl #0x30eba4
006e627c  00 10 a0 e1                                      mov r1, r0
006e6280  00 01 9d e5                                      ldr r0, [sp, #0x100]
006e6284  46 a2 f0 eb                                      bl #0x30eba4
006e6288  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006e628c  46 a0 f0 eb                                      bl #0x30e3ac
006e6290  a4 01 8d e5                                      str r0, [sp, #0x1a4]
006e6294  67 0f 8d e2                                      add r0, sp, #0x19c
006e6298  90 e1 f1 eb                                      bl #0x35e8e0
006e629c  48 b1 94 e5                                      ldr fp, [r4, #0x148]
006e62a0  84 30 8d e2                                      add r3, sp, #0x84
006e62a4  00 10 90 e5                                      ldr r1, [r0]
006e62a8  00 a0 a0 e1                                      mov sl, r0
006e62ac  0b 00 a0 e1                                      mov r0, fp
006e62b0  34 30 8d e5                                      str r3, [sp, #0x34]
006e62b4  ac a2 f0 eb                                      bl #0x30ed6c
006e62b8  00 10 a0 e1                                      mov r1, r0
006e62bc  38 a2 f0 eb                                      bl #0x30eba4
006e62c0  20 00 8d e5                                      str r0, [sp, #0x20]
006e62c4  04 10 9a e5                                      ldr r1, [sl, #4]
006e62c8  0b 00 a0 e1                                      mov r0, fp
006e62cc  a6 a2 f0 eb                                      bl #0x30ed6c
006e62d0  00 10 a0 e1                                      mov r1, r0
006e62d4  32 a2 f0 eb                                      bl #0x30eba4
006e62d8  24 00 8d e5                                      str r0, [sp, #0x24]
006e62dc  08 10 9a e5                                      ldr r1, [sl, #8]
006e62e0  0b 00 a0 e1                                      mov r0, fp
006e62e4  a0 a2 f0 eb                                      bl #0x30ed6c
006e62e8  00 10 a0 e1                                      mov r1, r0
006e62ec  2c a2 f0 eb                                      bl #0x30eba4
006e62f0  00 10 a0 e3                                      mov r1, #0
006e62f4  28 00 8d e5                                      str r0, [sp, #0x28]
006e62f8  0c 01 9d e5                                      ldr r0, [sp, #0x10c]
006e62fc  9a a2 f0 eb                                      bl #0x30ed6c
006e6300  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
006e6304  26 a2 f0 eb                                      bl #0x30eba4
006e6308  00 10 a0 e3                                      mov r1, #0
006e630c  00 a0 a0 e1                                      mov sl, r0
006e6310  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
006e6314  94 a2 f0 eb                                      bl #0x30ed6c
006e6318  00 10 a0 e1                                      mov r1, r0
006e631c  0a 00 a0 e1                                      mov r0, sl
006e6320  1f a2 f0 eb                                      bl #0x30eba4
006e6324  3c 11 9d e5                                      ldr r1, [sp, #0x13c]
006e6328  1d a2 f0 eb                                      bl #0x30eba4
006e632c  00 10 a0 e3                                      mov r1, #0
006e6330  00 b0 a0 e1                                      mov fp, r0
006e6334  10 01 9d e5                                      ldr r0, [sp, #0x110]
006e6338  8b a2 f0 eb                                      bl #0x30ed6c
006e633c  20 11 9d e5                                      ldr r1, [sp, #0x120]
006e6340  17 a2 f0 eb                                      bl #0x30eba4
006e6344  00 10 a0 e3                                      mov r1, #0
006e6348  00 a0 a0 e1                                      mov sl, r0
006e634c  30 01 9d e5                                      ldr r0, [sp, #0x130]
006e6350  85 a2 f0 eb                                      bl #0x30ed6c
006e6354  00 10 a0 e1                                      mov r1, r0
006e6358  0a 00 a0 e1                                      mov r0, sl
006e635c  10 a2 f0 eb                                      bl #0x30eba4
006e6360  40 11 9d e5                                      ldr r1, [sp, #0x140]
006e6364  0e a2 f0 eb                                      bl #0x30eba4
006e6368  00 10 a0 e3                                      mov r1, #0
006e636c  00 a0 a0 e1                                      mov sl, r0
006e6370  14 01 9d e5                                      ldr r0, [sp, #0x114]
006e6374  7c a2 f0 eb                                      bl #0x30ed6c
006e6378  24 11 9d e5                                      ldr r1, [sp, #0x124]
006e637c  08 a2 f0 eb                                      bl #0x30eba4
006e6380  00 10 a0 e3                                      mov r1, #0
006e6384  00 30 a0 e1                                      mov r3, r0
006e6388  34 01 9d e5                                      ldr r0, [sp, #0x134]
006e638c  10 30 8d e5                                      str r3, [sp, #0x10]
006e6390  75 a2 f0 eb                                      bl #0x30ed6c
006e6394  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6398  00 10 a0 e1                                      mov r1, r0
006e639c  03 00 a0 e1                                      mov r0, r3
006e63a0  ff a1 f0 eb                                      bl #0x30eba4
006e63a4  44 11 9d e5                                      ldr r1, [sp, #0x144]
006e63a8  fd a1 f0 eb                                      bl #0x30eba4
006e63ac  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006e63b0  18 00 8d e5                                      str r0, [sp, #0x18]
006e63b4  0b 00 a0 e1                                      mov r0, fp
006e63b8  6b a2 f0 eb                                      bl #0x30ed6c
006e63bc  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006e63c0  00 30 a0 e1                                      mov r3, r0
006e63c4  0a 00 a0 e1                                      mov r0, sl
006e63c8  10 30 8d e5                                      str r3, [sp, #0x10]
006e63cc  66 a2 f0 eb                                      bl #0x30ed6c
006e63d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e63d4  00 10 a0 e1                                      mov r1, r0
006e63d8  03 00 a0 e1                                      mov r0, r3
006e63dc  f0 a1 f0 eb                                      bl #0x30eba4
006e63e0  ec 10 9d e5                                      ldr r1, [sp, #0xec]
006e63e4  00 30 a0 e1                                      mov r3, r0
006e63e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e63ec  10 30 8d e5                                      str r3, [sp, #0x10]
006e63f0  5d a2 f0 eb                                      bl #0x30ed6c
006e63f4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e63f8  00 10 a0 e1                                      mov r1, r0
006e63fc  03 00 a0 e1                                      mov r0, r3
006e6400  e7 a1 f0 eb                                      bl #0x30eba4
006e6404  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
006e6408  e5 a1 f0 eb                                      bl #0x30eba4
006e640c  78 10 9d e5                                      ldr r1, [sp, #0x78]
006e6410  e5 9f f0 eb                                      bl #0x30e3ac
006e6414  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006e6418  00 20 a0 e1                                      mov r2, r0
006e641c  0b 00 a0 e1                                      mov r0, fp
006e6420  0c 20 8d e5                                      str r2, [sp, #0xc]
006e6424  50 a2 f0 eb                                      bl #0x30ed6c
006e6428  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006e642c  00 30 a0 e1                                      mov r3, r0
006e6430  0a 00 a0 e1                                      mov r0, sl
006e6434  10 30 8d e5                                      str r3, [sp, #0x10]
006e6438  4b a2 f0 eb                                      bl #0x30ed6c
006e643c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6440  00 10 a0 e1                                      mov r1, r0
006e6444  03 00 a0 e1                                      mov r0, r3
006e6448  d5 a1 f0 eb                                      bl #0x30eba4
006e644c  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
006e6450  00 30 a0 e1                                      mov r3, r0
006e6454  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e6458  10 30 8d e5                                      str r3, [sp, #0x10]
006e645c  42 a2 f0 eb                                      bl #0x30ed6c
006e6460  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6464  00 10 a0 e1                                      mov r1, r0
006e6468  03 00 a0 e1                                      mov r0, r3
006e646c  cc a1 f0 eb                                      bl #0x30eba4
006e6470  00 11 9d e5                                      ldr r1, [sp, #0x100]
006e6474  ca a1 f0 eb                                      bl #0x30eba4
006e6478  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006e647c  ca 9f f0 eb                                      bl #0x30e3ac
006e6480  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
006e6484  00 30 a0 e1                                      mov r3, r0
006e6488  0b 00 a0 e1                                      mov r0, fp
006e648c  10 30 8d e5                                      str r3, [sp, #0x10]
006e6490  35 a2 f0 eb                                      bl #0x30ed6c
006e6494  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006e6498  00 b0 a0 e1                                      mov fp, r0
006e649c  0a 00 a0 e1                                      mov r0, sl
006e64a0  31 a2 f0 eb                                      bl #0x30ed6c
006e64a4  00 10 a0 e1                                      mov r1, r0
006e64a8  0b 00 a0 e1                                      mov r0, fp
006e64ac  bc a1 f0 eb                                      bl #0x30eba4
006e64b0  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
006e64b4  00 a0 a0 e1                                      mov sl, r0
006e64b8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e64bc  2a a2 f0 eb                                      bl #0x30ed6c
006e64c0  00 10 a0 e1                                      mov r1, r0
006e64c4  0a 00 a0 e1                                      mov r0, sl
006e64c8  b5 a1 f0 eb                                      bl #0x30eba4
006e64cc  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
006e64d0  b3 a1 f0 eb                                      bl #0x30eba4
006e64d4  74 10 9d e5                                      ldr r1, [sp, #0x74]
006e64d8  b3 9f f0 eb                                      bl #0x30e3ac
006e64dc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e64e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e64e4  90 01 8d e5                                      str r0, [sp, #0x190]
006e64e8  19 0e 8d e2                                      add r0, sp, #0x190
006e64ec  94 21 8d e5                                      str r2, [sp, #0x194]
006e64f0  98 31 8d e5                                      str r3, [sp, #0x198]
006e64f4  f9 e0 f1 eb                                      bl #0x35e8e0
006e64f8  4c b1 94 e5                                      ldr fp, [r4, #0x14c]
006e64fc  00 10 90 e5                                      ldr r1, [r0]
006e6500  00 a0 a0 e1                                      mov sl, r0
006e6504  0b 00 a0 e1                                      mov r0, fp
006e6508  17 a2 f0 eb                                      bl #0x30ed6c
006e650c  00 10 a0 e1                                      mov r1, r0
006e6510  a3 a1 f0 eb                                      bl #0x30eba4
006e6514  3c 00 8d e5                                      str r0, [sp, #0x3c]
006e6518  04 10 9a e5                                      ldr r1, [sl, #4]
006e651c  0b 00 a0 e1                                      mov r0, fp
006e6520  11 a2 f0 eb                                      bl #0x30ed6c
006e6524  00 10 a0 e1                                      mov r1, r0
006e6528  9d a1 f0 eb                                      bl #0x30eba4
006e652c  40 00 8d e5                                      str r0, [sp, #0x40]
006e6530  08 10 9a e5                                      ldr r1, [sl, #8]
006e6534  0b 00 a0 e1                                      mov r0, fp
006e6538  0b a2 f0 eb                                      bl #0x30ed6c
006e653c  00 10 a0 e1                                      mov r1, r0
006e6540  97 a1 f0 eb                                      bl #0x30eba4
006e6544  c0 a1 9d e5                                      ldr sl, [sp, #0x1c0]
006e6548  44 00 8d e5                                      str r0, [sp, #0x44]
006e654c  00 10 98 e5                                      ldr r1, [r8]
006e6550  0a 00 a0 e1                                      mov r0, sl
006e6554  04 a2 f0 eb                                      bl #0x30ed6c
006e6558  c4 b1 9d e5                                      ldr fp, [sp, #0x1c4]
006e655c  10 10 98 e5                                      ldr r1, [r8, #0x10]
006e6560  00 30 a0 e1                                      mov r3, r0
006e6564  0b 00 a0 e1                                      mov r0, fp
006e6568  10 30 8d e5                                      str r3, [sp, #0x10]
006e656c  fe a1 f0 eb                                      bl #0x30ed6c
006e6570  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6574  00 10 a0 e1                                      mov r1, r0
006e6578  03 00 a0 e1                                      mov r0, r3
006e657c  88 a1 f0 eb                                      bl #0x30eba4
006e6580  20 10 98 e5                                      ldr r1, [r8, #0x20]
006e6584  00 30 a0 e1                                      mov r3, r0
006e6588  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
006e658c  10 30 8d e5                                      str r3, [sp, #0x10]
006e6590  f5 a1 f0 eb                                      bl #0x30ed6c
006e6594  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6598  00 10 a0 e1                                      mov r1, r0
006e659c  03 00 a0 e1                                      mov r0, r3
006e65a0  7f a1 f0 eb                                      bl #0x30eba4
006e65a4  30 10 98 e5                                      ldr r1, [r8, #0x30]
006e65a8  7d a1 f0 eb                                      bl #0x30eba4
006e65ac  2c 00 8d e5                                      str r0, [sp, #0x2c]
006e65b0  04 10 98 e5                                      ldr r1, [r8, #4]
006e65b4  0a 00 a0 e1                                      mov r0, sl
006e65b8  eb a1 f0 eb                                      bl #0x30ed6c
006e65bc  14 10 98 e5                                      ldr r1, [r8, #0x14]
006e65c0  00 30 a0 e1                                      mov r3, r0
006e65c4  0b 00 a0 e1                                      mov r0, fp
006e65c8  10 30 8d e5                                      str r3, [sp, #0x10]
006e65cc  e6 a1 f0 eb                                      bl #0x30ed6c
006e65d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e65d4  00 10 a0 e1                                      mov r1, r0
006e65d8  03 00 a0 e1                                      mov r0, r3
006e65dc  70 a1 f0 eb                                      bl #0x30eba4
006e65e0  24 10 98 e5                                      ldr r1, [r8, #0x24]
006e65e4  00 30 a0 e1                                      mov r3, r0
006e65e8  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
006e65ec  10 30 8d e5                                      str r3, [sp, #0x10]
006e65f0  dd a1 f0 eb                                      bl #0x30ed6c
006e65f4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e65f8  00 10 a0 e1                                      mov r1, r0
006e65fc  03 00 a0 e1                                      mov r0, r3
006e6600  67 a1 f0 eb                                      bl #0x30eba4
006e6604  34 10 98 e5                                      ldr r1, [r8, #0x34]
006e6608  65 a1 f0 eb                                      bl #0x30eba4
006e660c  30 00 8d e5                                      str r0, [sp, #0x30]
006e6610  08 10 98 e5                                      ldr r1, [r8, #8]
006e6614  0a 00 a0 e1                                      mov r0, sl
006e6618  d3 a1 f0 eb                                      bl #0x30ed6c
006e661c  18 10 98 e5                                      ldr r1, [r8, #0x18]
006e6620  00 a0 a0 e1                                      mov sl, r0
006e6624  0b 00 a0 e1                                      mov r0, fp
006e6628  cf a1 f0 eb                                      bl #0x30ed6c
006e662c  00 10 a0 e1                                      mov r1, r0
006e6630  0a 00 a0 e1                                      mov r0, sl
006e6634  5a a1 f0 eb                                      bl #0x30eba4
006e6638  28 10 98 e5                                      ldr r1, [r8, #0x28]
006e663c  00 a0 a0 e1                                      mov sl, r0
006e6640  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
006e6644  c8 a1 f0 eb                                      bl #0x30ed6c
006e6648  00 10 a0 e1                                      mov r1, r0
006e664c  0a 00 a0 e1                                      mov r0, sl
006e6650  53 a1 f0 eb                                      bl #0x30eba4
006e6654  38 10 98 e5                                      ldr r1, [r8, #0x38]
006e6658  51 a1 f0 eb                                      bl #0x30eba4
006e665c  08 10 97 e5                                      ldr r1, [r7, #8]
006e6660  00 b0 a0 e1                                      mov fp, r0
006e6664  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006e6668  bf a1 f0 eb                                      bl #0x30ed6c
006e666c  18 10 97 e5                                      ldr r1, [r7, #0x18]
006e6670  00 80 a0 e1                                      mov r8, r0
006e6674  30 00 9d e5                                      ldr r0, [sp, #0x30]
006e6678  bb a1 f0 eb                                      bl #0x30ed6c
006e667c  00 10 a0 e1                                      mov r1, r0
006e6680  08 00 a0 e1                                      mov r0, r8
006e6684  46 a1 f0 eb                                      bl #0x30eba4
006e6688  28 10 97 e5                                      ldr r1, [r7, #0x28]
006e668c  00 80 a0 e1                                      mov r8, r0
006e6690  0b 00 a0 e1                                      mov r0, fp
006e6694  b4 a1 f0 eb                                      bl #0x30ed6c
006e6698  00 10 a0 e1                                      mov r1, r0
006e669c  08 00 a0 e1                                      mov r0, r8
006e66a0  3f a1 f0 eb                                      bl #0x30eba4
006e66a4  38 10 97 e5                                      ldr r1, [r7, #0x38]
006e66a8  3d a1 f0 eb                                      bl #0x30eba4
006e66ac  00 30 a0 e1                                      mov r3, r0
006e66b0  03 10 a0 e1                                      mov r1, r3
006e66b4  06 00 a0 e1                                      mov r0, r6
006e66b8  10 30 8d e5                                      str r3, [sp, #0x10]
006e66bc  74 a1 f0 eb                                      bl #0x30ec94
006e66c0  00 10 97 e5                                      ldr r1, [r7]
006e66c4  00 a0 a0 e1                                      mov sl, r0
006e66c8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006e66cc  a6 a1 f0 eb                                      bl #0x30ed6c
006e66d0  10 10 97 e5                                      ldr r1, [r7, #0x10]
006e66d4  00 80 a0 e1                                      mov r8, r0
006e66d8  30 00 9d e5                                      ldr r0, [sp, #0x30]
006e66dc  a2 a1 f0 eb                                      bl #0x30ed6c
006e66e0  00 10 a0 e1                                      mov r1, r0
006e66e4  08 00 a0 e1                                      mov r0, r8
006e66e8  2d a1 f0 eb                                      bl #0x30eba4
006e66ec  20 10 97 e5                                      ldr r1, [r7, #0x20]
006e66f0  00 80 a0 e1                                      mov r8, r0
006e66f4  0b 00 a0 e1                                      mov r0, fp
006e66f8  9b a1 f0 eb                                      bl #0x30ed6c
006e66fc  00 10 a0 e1                                      mov r1, r0
006e6700  08 00 a0 e1                                      mov r0, r8
006e6704  26 a1 f0 eb                                      bl #0x30eba4
006e6708  30 10 97 e5                                      ldr r1, [r7, #0x30]
006e670c  24 a1 f0 eb                                      bl #0x30eba4
006e6710  00 10 a0 e1                                      mov r1, r0
006e6714  0a 00 a0 e1                                      mov r0, sl
006e6718  93 a1 f0 eb                                      bl #0x30ed6c
006e671c  00 10 a0 e1                                      mov r1, r0
006e6720  1f a1 f0 eb                                      bl #0x30eba4
006e6724  04 10 97 e5                                      ldr r1, [r7, #4]
006e6728  00 80 a0 e1                                      mov r8, r0
006e672c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006e6730  8d a1 f0 eb                                      bl #0x30ed6c
006e6734  14 10 97 e5                                      ldr r1, [r7, #0x14]
006e6738  00 20 a0 e1                                      mov r2, r0
006e673c  30 00 9d e5                                      ldr r0, [sp, #0x30]
006e6740  0c 20 8d e5                                      str r2, [sp, #0xc]
006e6744  88 a1 f0 eb                                      bl #0x30ed6c
006e6748  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e674c  00 10 a0 e1                                      mov r1, r0
006e6750  02 00 a0 e1                                      mov r0, r2
006e6754  12 a1 f0 eb                                      bl #0x30eba4
006e6758  24 10 97 e5                                      ldr r1, [r7, #0x24]
006e675c  00 20 a0 e1                                      mov r2, r0
006e6760  0b 00 a0 e1                                      mov r0, fp
006e6764  0c 20 8d e5                                      str r2, [sp, #0xc]
006e6768  7f a1 f0 eb                                      bl #0x30ed6c
006e676c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e6770  00 10 a0 e1                                      mov r1, r0
006e6774  02 00 a0 e1                                      mov r0, r2
006e6778  09 a1 f0 eb                                      bl #0x30eba4
006e677c  34 10 97 e5                                      ldr r1, [r7, #0x34]
006e6780  07 a1 f0 eb                                      bl #0x30eba4
006e6784  00 10 a0 e1                                      mov r1, r0
006e6788  0a 00 a0 e1                                      mov r0, sl
006e678c  76 a1 f0 eb                                      bl #0x30ed6c
006e6790  00 10 a0 e1                                      mov r1, r0
006e6794  02 a1 f0 eb                                      bl #0x30eba4
006e6798  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e679c  00 70 a0 e1                                      mov r7, r0
006e67a0  0a 00 a0 e1                                      mov r0, sl
006e67a4  03 10 a0 e1                                      mov r1, r3
006e67a8  c0 81 8d e5                                      str r8, [sp, #0x1c0]
006e67ac  c4 71 8d e5                                      str r7, [sp, #0x1c4]
006e67b0  6d a1 f0 eb                                      bl #0x30ed6c
006e67b4  00 10 a0 e1                                      mov r1, r0
006e67b8  f9 a0 f0 eb                                      bl #0x30eba4
006e67bc  0c 11 9d e5                                      ldr r1, [sp, #0x10c]
006e67c0  c8 01 8d e5                                      str r0, [sp, #0x1c8]
006e67c4  08 00 a0 e1                                      mov r0, r8
006e67c8  67 a1 f0 eb                                      bl #0x30ed6c
006e67cc  1c 11 9d e5                                      ldr r1, [sp, #0x11c]
006e67d0  00 a0 a0 e1                                      mov sl, r0
006e67d4  07 00 a0 e1                                      mov r0, r7
006e67d8  63 a1 f0 eb                                      bl #0x30ed6c
006e67dc  00 10 a0 e1                                      mov r1, r0
006e67e0  0a 00 a0 e1                                      mov r0, sl
006e67e4  ee a0 f0 eb                                      bl #0x30eba4
006e67e8  00 10 a0 e3                                      mov r1, #0
006e67ec  00 a0 a0 e1                                      mov sl, r0
006e67f0  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
006e67f4  5c a1 f0 eb                                      bl #0x30ed6c
006e67f8  00 10 a0 e1                                      mov r1, r0
006e67fc  0a 00 a0 e1                                      mov r0, sl
006e6800  e7 a0 f0 eb                                      bl #0x30eba4
006e6804  3c 11 9d e5                                      ldr r1, [sp, #0x13c]
006e6808  e5 a0 f0 eb                                      bl #0x30eba4
006e680c  10 11 9d e5                                      ldr r1, [sp, #0x110]
006e6810  00 b0 a0 e1                                      mov fp, r0
006e6814  08 00 a0 e1                                      mov r0, r8
006e6818  53 a1 f0 eb                                      bl #0x30ed6c
006e681c  20 11 9d e5                                      ldr r1, [sp, #0x120]
006e6820  00 a0 a0 e1                                      mov sl, r0
006e6824  07 00 a0 e1                                      mov r0, r7
006e6828  4f a1 f0 eb                                      bl #0x30ed6c
006e682c  00 10 a0 e1                                      mov r1, r0
006e6830  0a 00 a0 e1                                      mov r0, sl
006e6834  da a0 f0 eb                                      bl #0x30eba4
006e6838  00 10 a0 e3                                      mov r1, #0
006e683c  00 a0 a0 e1                                      mov sl, r0
006e6840  30 01 9d e5                                      ldr r0, [sp, #0x130]
006e6844  48 a1 f0 eb                                      bl #0x30ed6c
006e6848  00 10 a0 e1                                      mov r1, r0
006e684c  0a 00 a0 e1                                      mov r0, sl
006e6850  d3 a0 f0 eb                                      bl #0x30eba4
006e6854  40 11 9d e5                                      ldr r1, [sp, #0x140]
006e6858  d1 a0 f0 eb                                      bl #0x30eba4
006e685c  14 11 9d e5                                      ldr r1, [sp, #0x114]
006e6860  00 a0 a0 e1                                      mov sl, r0
006e6864  08 00 a0 e1                                      mov r0, r8
006e6868  3f a1 f0 eb                                      bl #0x30ed6c
006e686c  24 11 9d e5                                      ldr r1, [sp, #0x124]
006e6870  00 80 a0 e1                                      mov r8, r0
006e6874  07 00 a0 e1                                      mov r0, r7
006e6878  3b a1 f0 eb                                      bl #0x30ed6c
006e687c  00 10 a0 e1                                      mov r1, r0
006e6880  08 00 a0 e1                                      mov r0, r8
006e6884  c6 a0 f0 eb                                      bl #0x30eba4
006e6888  00 10 a0 e3                                      mov r1, #0
006e688c  00 70 a0 e1                                      mov r7, r0
006e6890  34 01 9d e5                                      ldr r0, [sp, #0x134]
006e6894  34 a1 f0 eb                                      bl #0x30ed6c
006e6898  00 10 a0 e1                                      mov r1, r0
006e689c  07 00 a0 e1                                      mov r0, r7
006e68a0  bf a0 f0 eb                                      bl #0x30eba4
006e68a4  44 11 9d e5                                      ldr r1, [sp, #0x144]
006e68a8  bd a0 f0 eb                                      bl #0x30eba4
006e68ac  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
006e68b0  00 70 a0 e1                                      mov r7, r0
006e68b4  0b 00 a0 e1                                      mov r0, fp
006e68b8  2b a1 f0 eb                                      bl #0x30ed6c
006e68bc  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006e68c0  00 80 a0 e1                                      mov r8, r0
006e68c4  0a 00 a0 e1                                      mov r0, sl
006e68c8  27 a1 f0 eb                                      bl #0x30ed6c
006e68cc  00 10 a0 e1                                      mov r1, r0
006e68d0  08 00 a0 e1                                      mov r0, r8
006e68d4  b2 a0 f0 eb                                      bl #0x30eba4
006e68d8  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
006e68dc  00 80 a0 e1                                      mov r8, r0
006e68e0  07 00 a0 e1                                      mov r0, r7
006e68e4  20 a1 f0 eb                                      bl #0x30ed6c
006e68e8  00 10 a0 e1                                      mov r1, r0
006e68ec  08 00 a0 e1                                      mov r0, r8
006e68f0  ab a0 f0 eb                                      bl #0x30eba4
006e68f4  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
006e68f8  a9 a0 f0 eb                                      bl #0x30eba4
006e68fc  a8 11 9d e5                                      ldr r1, [sp, #0x1a8]
006e6900  a9 9e f0 eb                                      bl #0x30e3ac
006e6904  48 00 8d e5                                      str r0, [sp, #0x48]
006e6908  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
006e690c  0b 00 a0 e1                                      mov r0, fp
006e6910  15 a1 f0 eb                                      bl #0x30ed6c
006e6914  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006e6918  00 80 a0 e1                                      mov r8, r0
006e691c  0a 00 a0 e1                                      mov r0, sl
006e6920  11 a1 f0 eb                                      bl #0x30ed6c
006e6924  00 10 a0 e1                                      mov r1, r0
006e6928  08 00 a0 e1                                      mov r0, r8
006e692c  9c a0 f0 eb                                      bl #0x30eba4
006e6930  ec 10 9d e5                                      ldr r1, [sp, #0xec]
006e6934  00 80 a0 e1                                      mov r8, r0
006e6938  07 00 a0 e1                                      mov r0, r7
006e693c  0a a1 f0 eb                                      bl #0x30ed6c
006e6940  00 10 a0 e1                                      mov r1, r0
006e6944  08 00 a0 e1                                      mov r0, r8
006e6948  95 a0 f0 eb                                      bl #0x30eba4
006e694c  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
006e6950  93 a0 f0 eb                                      bl #0x30eba4
006e6954  ac 11 9d e5                                      ldr r1, [sp, #0x1ac]
006e6958  93 9e f0 eb                                      bl #0x30e3ac
006e695c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
006e6960  4c 00 8d e5                                      str r0, [sp, #0x4c]
006e6964  0b 00 a0 e1                                      mov r0, fp
006e6968  ff a0 f0 eb                                      bl #0x30ed6c
006e696c  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
006e6970  00 80 a0 e1                                      mov r8, r0
006e6974  0a 00 a0 e1                                      mov r0, sl
006e6978  fb a0 f0 eb                                      bl #0x30ed6c
006e697c  00 10 a0 e1                                      mov r1, r0
006e6980  08 00 a0 e1                                      mov r0, r8
006e6984  86 a0 f0 eb                                      bl #0x30eba4
006e6988  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
006e698c  00 80 a0 e1                                      mov r8, r0
006e6990  07 00 a0 e1                                      mov r0, r7
006e6994  f4 a0 f0 eb                                      bl #0x30ed6c
006e6998  00 10 a0 e1                                      mov r1, r0
006e699c  08 00 a0 e1                                      mov r0, r8
006e69a0  7f a0 f0 eb                                      bl #0x30eba4
006e69a4  00 11 9d e5                                      ldr r1, [sp, #0x100]
006e69a8  7d a0 f0 eb                                      bl #0x30eba4
006e69ac  b0 11 9d e5                                      ldr r1, [sp, #0x1b0]
006e69b0  7d 9e f0 eb                                      bl #0x30e3ac
006e69b4  40 20 a0 e3                                      mov r2, #0x40
006e69b8  50 00 8d e5                                      str r0, [sp, #0x50]
006e69bc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006e69c0  34 00 9d e5                                      ldr r0, [sp, #0x34]
006e69c4  a5 9e f0 eb                                      bl #0x30e460
006e69c8  01 c0 a0 e3                                      mov ip, #1
006e69cc  61 0f 8d e2                                      add r0, sp, #0x184
006e69d0  04 10 a0 e1                                      mov r1, r4
006e69d4  c4 c0 cd e5                                      strb ip, [sp, #0xc4]
006e69d8  c0 60 8d e5                                      str r6, [sp, #0xc0]
006e69dc  84 60 8d e5                                      str r6, [sp, #0x84]
006e69e0  98 60 8d e5                                      str r6, [sp, #0x98]
006e69e4  ac 60 8d e5                                      str r6, [sp, #0xac]
006e69e8  e4 c1 fa eb                                      bl #0x597180
006e69ec  b4 11 9d e5                                      ldr r1, [sp, #0x1b4]
006e69f0  84 01 9d e5                                      ldr r0, [sp, #0x184]
006e69f4  6c 9e f0 eb                                      bl #0x30e3ac
006e69f8  b8 11 9d e5                                      ldr r1, [sp, #0x1b8]
006e69fc  00 70 a0 e1                                      mov r7, r0
006e6a00  88 01 9d e5                                      ldr r0, [sp, #0x188]
006e6a04  68 9e f0 eb                                      bl #0x30e3ac
006e6a08  bc 11 9d e5                                      ldr r1, [sp, #0x1bc]
006e6a0c  00 80 a0 e1                                      mov r8, r0
006e6a10  8c 01 9d e5                                      ldr r0, [sp, #0x18c]
006e6a14  64 9e f0 eb                                      bl #0x30e3ac
006e6a18  07 10 a0 e1                                      mov r1, r7
006e6a1c  00 60 a0 e1                                      mov r6, r0
006e6a20  07 00 a0 e1                                      mov r0, r7
006e6a24  d0 a0 f0 eb                                      bl #0x30ed6c
006e6a28  08 10 a0 e1                                      mov r1, r8
006e6a2c  00 70 a0 e1                                      mov r7, r0
006e6a30  08 00 a0 e1                                      mov r0, r8
006e6a34  cc a0 f0 eb                                      bl #0x30ed6c
006e6a38  00 10 a0 e1                                      mov r1, r0
006e6a3c  07 00 a0 e1                                      mov r0, r7
006e6a40  57 a0 f0 eb                                      bl #0x30eba4
006e6a44  06 10 a0 e1                                      mov r1, r6
006e6a48  00 70 a0 e1                                      mov r7, r0
006e6a4c  06 00 a0 e1                                      mov r0, r6
006e6a50  c5 a0 f0 eb                                      bl #0x30ed6c
006e6a54  00 10 a0 e1                                      mov r1, r0
006e6a58  07 00 a0 e1                                      mov r0, r7
006e6a5c  50 a0 f0 eb                                      bl #0x30eba4
006e6a60  8f 9f f0 eb                                      bl #0x30e8a4
006e6a64  d5 9d f0 eb                                      bl #0x30e1c0
006e6a68  0c 9f f0 eb                                      bl #0x30e6a0
006e6a6c  42 14 a0 e3                                      mov r1, #0x42000000
006e6a70  12 17 81 e2                                      add r1, r1, #0x480000
006e6a74  86 a0 f0 eb                                      bl #0x30ec94
006e6a78  db 1f 00 e3                                      movw r1, #0xfdb
006e6a7c  49 10 44 e3                                      movt r1, #0x4049
006e6a80  b9 a0 f0 eb                                      bl #0x30ed6c
006e6a84  34 11 94 e5                                      ldr r1, [r4, #0x134]
006e6a88  b7 a0 f0 eb                                      bl #0x30ed6c
006e6a8c  38 11 94 e5                                      ldr r1, [r4, #0x138]
006e6a90  43 a0 f0 eb                                      bl #0x30eba4
006e6a94  a8 31 9d e5                                      ldr r3, [sp, #0x1a8]
006e6a98  00 10 a0 e3                                      mov r1, #0
006e6a9c  00 80 a0 e1                                      mov r8, r0
006e6aa0  78 31 8d e5                                      str r3, [sp, #0x178]
006e6aa4  ac 31 9d e5                                      ldr r3, [sp, #0x1ac]
006e6aa8  7c 31 8d e5                                      str r3, [sp, #0x17c]
006e6aac  b0 31 9d e5                                      ldr r3, [sp, #0x1b0]
006e6ab0  80 31 8d e5                                      str r3, [sp, #0x180]
006e6ab4  14 9f f0 eb                                      bl #0x30e70c
006e6ab8  00 00 50 e3                                      cmp r0, #0
006e6abc  53 01 00 1a                                      bne #0x6e7010
006e6ac0  7b 6f 8d e2                                      add r6, sp, #0x1ec
006e6ac4  06 00 a0 e1                                      mov r0, r6
006e6ac8  10 10 a0 e3                                      mov r1, #0x10
006e6acc  fc 61 8d e5                                      str r6, [sp, #0x1fc]
006e6ad0  00 62 8d e5                                      str r6, [sp, #0x200]
006e6ad4  b3 e7 f0 eb                                      bl #0x3209a8
006e6ad8  fc 31 9d e5                                      ldr r3, [sp, #0x1fc]
006e6adc  00 20 a0 e3                                      mov r2, #0
006e6ae0  75 7f 8d e2                                      add r7, sp, #0x1d4
006e6ae4  00 20 c3 e5                                      strb r2, [r3]
006e6ae8  08 10 a0 e1                                      mov r1, r8
006e6aec  07 00 a0 e1                                      mov r0, r7
006e6af0  68 fc ff eb                                      bl #0x6e5c98
006e6af4  06 00 a0 e1                                      mov r0, r6
006e6af8  e8 11 9d e5                                      ldr r1, [sp, #0x1e8]
006e6afc  e4 21 9d e5                                      ldr r2, [sp, #0x1e4]
006e6b00  20 e8 f0 eb                                      bl #0x320b88
006e6b04  e8 01 9d e5                                      ldr r0, [sp, #0x1e8]
006e6b08  07 00 50 e1                                      cmp r0, r7
006e6b0c  02 00 00 0a                                      beq #0x6e6b1c
006e6b10  00 00 50 e3                                      cmp r0, #0
006e6b14  00 00 00 0a                                      beq #0x6e6b1c
006e6b18  4c a6 f0 eb                                      bl #0x310450
006e6b1c  98 1d 1f e5                                      ldr r1, [pc, #-0xd98]
006e6b20  06 00 a0 e1                                      mov r0, r6
006e6b24  5a 7f 8d e2                                      add r7, sp, #0x168
006e6b28  01 10 8f e0                                      add r1, pc, r1
006e6b2c  01 20 81 e2                                      add r2, r1, #1
006e6b30  c5 e7 f0 eb                                      bl #0x320a4c
006e6b34  00 02 9d e5                                      ldr r0, [sp, #0x200]
006e6b38  01 10 a0 e3                                      mov r1, #1
006e6b3c  57 90 fc eb                                      bl #0x60aca0
006e6b40  fe c5 a0 e3                                      mov ip, #0x3f800000
006e6b44  5e 2f 8d e2                                      add r2, sp, #0x178
006e6b48  00 30 a0 e3                                      mov r3, #0
006e6b4c  08 10 a0 e1                                      mov r1, r8
006e6b50  07 00 a0 e1                                      mov r0, r7
006e6b54  74 c1 8d e5                                      str ip, [sp, #0x174]
006e6b58  70 31 8d e5                                      str r3, [sp, #0x170]
006e6b5c  68 31 8d e5                                      str r3, [sp, #0x168]
006e6b60  6c 31 8d e5                                      str r3, [sp, #0x16c]
006e6b64  94 98 fc eb                                      bl #0x60cdbc
006e6b68  07 00 a0 e1                                      mov r0, r7
006e6b6c  34 10 9d e5                                      ldr r1, [sp, #0x34]
006e6b70  83 2f f5 eb                                      bl #0x432984
006e6b74  84 a0 9d e5                                      ldr sl, [sp, #0x84]
006e6b78  20 00 9d e5                                      ldr r0, [sp, #0x20]
006e6b7c  94 80 9d e5                                      ldr r8, [sp, #0x94]
006e6b80  0a 10 a0 e1                                      mov r1, sl
006e6b84  78 a0 f0 eb                                      bl #0x30ed6c
006e6b88  08 10 a0 e1                                      mov r1, r8
006e6b8c  00 70 a0 e1                                      mov r7, r0
006e6b90  24 00 9d e5                                      ldr r0, [sp, #0x24]
006e6b94  74 a0 f0 eb                                      bl #0x30ed6c
006e6b98  00 10 a0 e1                                      mov r1, r0
006e6b9c  07 00 a0 e1                                      mov r0, r7
006e6ba0  ff 9f f0 eb                                      bl #0x30eba4
006e6ba4  a4 70 9d e5                                      ldr r7, [sp, #0xa4]
006e6ba8  00 b0 a0 e1                                      mov fp, r0
006e6bac  28 00 9d e5                                      ldr r0, [sp, #0x28]
006e6bb0  07 10 a0 e1                                      mov r1, r7
006e6bb4  6c a0 f0 eb                                      bl #0x30ed6c
006e6bb8  00 10 a0 e1                                      mov r1, r0
006e6bbc  0b 00 a0 e1                                      mov r0, fp
006e6bc0  f7 9f f0 eb                                      bl #0x30eba4
006e6bc4  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
006e6bc8  f5 9f f0 eb                                      bl #0x30eba4
006e6bcc  88 30 9d e5                                      ldr r3, [sp, #0x88]
006e6bd0  34 00 8d e5                                      str r0, [sp, #0x34]
006e6bd4  20 00 9d e5                                      ldr r0, [sp, #0x20]
006e6bd8  03 10 a0 e1                                      mov r1, r3
006e6bdc  10 30 8d e5                                      str r3, [sp, #0x10]
006e6be0  61 a0 f0 eb                                      bl #0x30ed6c
006e6be4  98 10 9d e5                                      ldr r1, [sp, #0x98]
006e6be8  00 b0 a0 e1                                      mov fp, r0
006e6bec  24 00 9d e5                                      ldr r0, [sp, #0x24]
006e6bf0  5d a0 f0 eb                                      bl #0x30ed6c
006e6bf4  00 10 a0 e1                                      mov r1, r0
006e6bf8  0b 00 a0 e1                                      mov r0, fp
006e6bfc  e8 9f f0 eb                                      bl #0x30eba4
006e6c00  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
006e6c04  00 b0 a0 e1                                      mov fp, r0
006e6c08  28 00 9d e5                                      ldr r0, [sp, #0x28]
006e6c0c  56 a0 f0 eb                                      bl #0x30ed6c
006e6c10  00 10 a0 e1                                      mov r1, r0
006e6c14  0b 00 a0 e1                                      mov r0, fp
006e6c18  e1 9f f0 eb                                      bl #0x30eba4
006e6c1c  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
006e6c20  df 9f f0 eb                                      bl #0x30eba4
006e6c24  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006e6c28  54 00 8d e5                                      str r0, [sp, #0x54]
006e6c2c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006e6c30  02 10 a0 e1                                      mov r1, r2
006e6c34  0c 20 8d e5                                      str r2, [sp, #0xc]
006e6c38  4b a0 f0 eb                                      bl #0x30ed6c
006e6c3c  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
006e6c40  00 b0 a0 e1                                      mov fp, r0
006e6c44  24 00 9d e5                                      ldr r0, [sp, #0x24]
006e6c48  47 a0 f0 eb                                      bl #0x30ed6c
006e6c4c  00 10 a0 e1                                      mov r1, r0
006e6c50  0b 00 a0 e1                                      mov r0, fp
006e6c54  d2 9f f0 eb                                      bl #0x30eba4
006e6c58  ac 10 9d e5                                      ldr r1, [sp, #0xac]
006e6c5c  00 b0 a0 e1                                      mov fp, r0
006e6c60  28 00 9d e5                                      ldr r0, [sp, #0x28]
006e6c64  40 a0 f0 eb                                      bl #0x30ed6c
006e6c68  00 10 a0 e1                                      mov r1, r0
006e6c6c  0b 00 a0 e1                                      mov r0, fp
006e6c70  bc b0 9d e5                                      ldr fp, [sp, #0xbc]
006e6c74  ca 9f f0 eb                                      bl #0x30eba4
006e6c78  0b 10 a0 e1                                      mov r1, fp
006e6c7c  c8 9f f0 eb                                      bl #0x30eba4
006e6c80  0a 10 a0 e1                                      mov r1, sl
006e6c84  28 00 8d e5                                      str r0, [sp, #0x28]
006e6c88  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006e6c8c  36 a0 f0 eb                                      bl #0x30ed6c
006e6c90  08 10 a0 e1                                      mov r1, r8
006e6c94  00 a0 a0 e1                                      mov sl, r0
006e6c98  40 00 9d e5                                      ldr r0, [sp, #0x40]
006e6c9c  32 a0 f0 eb                                      bl #0x30ed6c
006e6ca0  00 10 a0 e1                                      mov r1, r0
006e6ca4  0a 00 a0 e1                                      mov r0, sl
006e6ca8  bd 9f f0 eb                                      bl #0x30eba4
006e6cac  07 10 a0 e1                                      mov r1, r7
006e6cb0  00 80 a0 e1                                      mov r8, r0
006e6cb4  44 00 9d e5                                      ldr r0, [sp, #0x44]
006e6cb8  2b a0 f0 eb                                      bl #0x30ed6c
006e6cbc  00 10 a0 e1                                      mov r1, r0
006e6cc0  08 00 a0 e1                                      mov r0, r8
006e6cc4  b6 9f f0 eb                                      bl #0x30eba4
006e6cc8  00 10 a0 e1                                      mov r1, r0
006e6ccc  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
006e6cd0  b3 9f f0 eb                                      bl #0x30eba4
006e6cd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006e6cd8  00 a0 a0 e1                                      mov sl, r0
006e6cdc  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006e6ce0  03 10 a0 e1                                      mov r1, r3
006e6ce4  20 a0 f0 eb                                      bl #0x30ed6c
006e6ce8  98 10 9d e5                                      ldr r1, [sp, #0x98]
006e6cec  00 70 a0 e1                                      mov r7, r0
006e6cf0  40 00 9d e5                                      ldr r0, [sp, #0x40]
006e6cf4  1c a0 f0 eb                                      bl #0x30ed6c
006e6cf8  00 10 a0 e1                                      mov r1, r0
006e6cfc  07 00 a0 e1                                      mov r0, r7
006e6d00  a7 9f f0 eb                                      bl #0x30eba4
006e6d04  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
006e6d08  00 70 a0 e1                                      mov r7, r0
006e6d0c  44 00 9d e5                                      ldr r0, [sp, #0x44]
006e6d10  15 a0 f0 eb                                      bl #0x30ed6c
006e6d14  00 10 a0 e1                                      mov r1, r0
006e6d18  07 00 a0 e1                                      mov r0, r7
006e6d1c  a0 9f f0 eb                                      bl #0x30eba4
006e6d20  00 10 a0 e1                                      mov r1, r0
006e6d24  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
006e6d28  9d 9f f0 eb                                      bl #0x30eba4
006e6d2c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006e6d30  00 80 a0 e1                                      mov r8, r0
006e6d34  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006e6d38  02 10 a0 e1                                      mov r1, r2
006e6d3c  0a a0 f0 eb                                      bl #0x30ed6c
006e6d40  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
006e6d44  00 70 a0 e1                                      mov r7, r0
006e6d48  40 00 9d e5                                      ldr r0, [sp, #0x40]
006e6d4c  06 a0 f0 eb                                      bl #0x30ed6c
006e6d50  00 10 a0 e1                                      mov r1, r0
006e6d54  07 00 a0 e1                                      mov r0, r7
006e6d58  91 9f f0 eb                                      bl #0x30eba4
006e6d5c  ac 10 9d e5                                      ldr r1, [sp, #0xac]
006e6d60  00 70 a0 e1                                      mov r7, r0
006e6d64  44 00 9d e5                                      ldr r0, [sp, #0x44]
006e6d68  ff 9f f0 eb                                      bl #0x30ed6c
006e6d6c  00 10 a0 e1                                      mov r1, r0
006e6d70  07 00 a0 e1                                      mov r0, r7
006e6d74  8a 9f f0 eb                                      bl #0x30eba4
006e6d78  00 10 a0 e1                                      mov r1, r0
006e6d7c  0b 00 a0 e1                                      mov r0, fp
006e6d80  87 9f f0 eb                                      bl #0x30eba4
006e6d84  34 10 9d e5                                      ldr r1, [sp, #0x34]
006e6d88  00 70 a0 e1                                      mov r7, r0
006e6d8c  48 00 9d e5                                      ldr r0, [sp, #0x48]
006e6d90  83 9f f0 eb                                      bl #0x30eba4
006e6d94  54 10 9d e5                                      ldr r1, [sp, #0x54]
006e6d98  00 b0 a0 e1                                      mov fp, r0
006e6d9c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006e6da0  7f 9f f0 eb                                      bl #0x30eba4
006e6da4  1c 00 8d e5                                      str r0, [sp, #0x1c]
006e6da8  28 10 9d e5                                      ldr r1, [sp, #0x28]
006e6dac  50 00 9d e5                                      ldr r0, [sp, #0x50]
006e6db0  7b 9f f0 eb                                      bl #0x30eba4
006e6db4  0a 10 a0 e1                                      mov r1, sl
006e6db8  18 00 8d e5                                      str r0, [sp, #0x18]
006e6dbc  0b 00 a0 e1                                      mov r0, fp
006e6dc0  79 9d f0 eb                                      bl #0x30e3ac
006e6dc4  6c 01 84 e5                                      str r0, [r4, #0x16c]
006e6dc8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006e6dcc  08 10 a0 e1                                      mov r1, r8
006e6dd0  75 9d f0 eb                                      bl #0x30e3ac
006e6dd4  70 01 84 e5                                      str r0, [r4, #0x170]
006e6dd8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e6ddc  07 10 a0 e1                                      mov r1, r7
006e6de0  71 9d f0 eb                                      bl #0x30e3ac
006e6de4  0a 10 a0 e1                                      mov r1, sl
006e6de8  74 01 84 e5                                      str r0, [r4, #0x174]
006e6dec  0b 00 a0 e1                                      mov r0, fp
006e6df0  6b 9f f0 eb                                      bl #0x30eba4
006e6df4  90 01 84 e5                                      str r0, [r4, #0x190]
006e6df8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006e6dfc  08 10 a0 e1                                      mov r1, r8
006e6e00  67 9f f0 eb                                      bl #0x30eba4
006e6e04  94 01 84 e5                                      str r0, [r4, #0x194]
006e6e08  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e6e0c  07 10 a0 e1                                      mov r1, r7
006e6e10  63 9f f0 eb                                      bl #0x30eba4
006e6e14  98 01 84 e5                                      str r0, [r4, #0x198]
006e6e18  34 10 9d e5                                      ldr r1, [sp, #0x34]
006e6e1c  48 00 9d e5                                      ldr r0, [sp, #0x48]
006e6e20  61 9d f0 eb                                      bl #0x30e3ac
006e6e24  54 10 9d e5                                      ldr r1, [sp, #0x54]
006e6e28  00 b0 a0 e1                                      mov fp, r0
006e6e2c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
006e6e30  5d 9d f0 eb                                      bl #0x30e3ac
006e6e34  28 10 9d e5                                      ldr r1, [sp, #0x28]
006e6e38  1c 00 8d e5                                      str r0, [sp, #0x1c]
006e6e3c  50 00 9d e5                                      ldr r0, [sp, #0x50]
006e6e40  59 9d f0 eb                                      bl #0x30e3ac
006e6e44  0a 10 a0 e1                                      mov r1, sl
006e6e48  18 00 8d e5                                      str r0, [sp, #0x18]
006e6e4c  0b 00 a0 e1                                      mov r0, fp
006e6e50  55 9d f0 eb                                      bl #0x30e3ac
006e6e54  b4 01 84 e5                                      str r0, [r4, #0x1b4]
006e6e58  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006e6e5c  08 10 a0 e1                                      mov r1, r8
006e6e60  51 9d f0 eb                                      bl #0x30e3ac
006e6e64  b8 01 84 e5                                      str r0, [r4, #0x1b8]
006e6e68  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e6e6c  07 10 a0 e1                                      mov r1, r7
006e6e70  4d 9d f0 eb                                      bl #0x30e3ac
006e6e74  0a 10 a0 e1                                      mov r1, sl
006e6e78  bc 01 84 e5                                      str r0, [r4, #0x1bc]
006e6e7c  0b 00 a0 e1                                      mov r0, fp
006e6e80  47 9f f0 eb                                      bl #0x30eba4
006e6e84  d8 01 84 e5                                      str r0, [r4, #0x1d8]
006e6e88  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006e6e8c  08 10 a0 e1                                      mov r1, r8
006e6e90  43 9f f0 eb                                      bl #0x30eba4
006e6e94  dc 01 84 e5                                      str r0, [r4, #0x1dc]
006e6e98  07 10 a0 e1                                      mov r1, r7
006e6e9c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006e6ea0  3f 9f f0 eb                                      bl #0x30eba4
006e6ea4  58 10 9d e5                                      ldr r1, [sp, #0x58]
006e6ea8  e0 01 84 e5                                      str r0, [r4, #0x1e0]
006e6eac  00 00 51 e3                                      cmp r1, #0
006e6eb0  4f 00 00 0a                                      beq #0x6e6ff4
006e6eb4  00 30 95 e5                                      ldr r3, [r5]
006e6eb8  05 00 a0 e1                                      mov r0, r5
006e6ebc  0f e0 a0 e1                                      mov lr, pc
006e6ec0  00 f1 93 e5                                      ldr pc, [r3, #0x100]
006e6ec4  6c 21 9f e5                                      ldr r2, [pc, #0x16c]
006e6ec8  00 70 a0 e1                                      mov r7, r0
006e6ecc  00 30 95 e5                                      ldr r3, [r5]
006e6ed0  05 00 a0 e1                                      mov r0, r5
006e6ed4  02 20 99 e7                                      ldr r2, [sb, r2]
006e6ed8  01 10 a0 e3                                      mov r1, #1
006e6edc  0f e0 a0 e1                                      mov lr, pc
006e6ee0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006e6ee4  68 01 94 e5                                      ldr r0, [r4, #0x168]
006e6ee8  5a 8f 84 e2                                      add r8, r4, #0x168
006e6eec  00 00 50 e3                                      cmp r0, #0
006e6ef0  ff 20 a0 03                                      moveq r2, #0xff
006e6ef4  01 00 00 0a                                      beq #0x6e6f00
006e6ef8  8d 7b fb eb                                      bl #0x5c5d34
006e6efc  00 20 a0 e1                                      mov r2, r0
006e6f00  08 10 a0 e1                                      mov r1, r8
006e6f04  05 00 a0 e1                                      mov r0, r5
006e6f08  00 30 a0 e3                                      mov r3, #0
006e6f0c  15 19 fb eb                                      bl #0x5ad368
006e6f10  00 30 95 e5                                      ldr r3, [r5]
006e6f14  05 00 a0 e1                                      mov r0, r5
006e6f18  07 10 a0 e3                                      mov r1, #7
006e6f1c  0f e0 a0 e1                                      mov lr, pc
006e6f20  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006e6f24  fc 31 94 e5                                      ldr r3, [r4, #0x1fc]
006e6f28  01 cc 8d e2                                      add ip, sp, #0x100
006e6f2c  ff 10 a0 e3                                      mov r1, #0xff
006e6f30  00 00 53 e3                                      cmp r3, #0
006e6f34  d0 31 8d e5                                      str r3, [sp, #0x1d0]
006e6f38  00 20 93 15                                      ldrne r2, [r3]
006e6f3c  05 00 a0 e1                                      mov r0, r5
006e6f40  01 20 82 12                                      addne r2, r2, #1
006e6f44  00 20 83 15                                      strne r2, [r3]
006e6f48  00 20 a0 e3                                      mov r2, #0
006e6f4c  04 30 a0 e3                                      mov r3, #4
006e6f50  b6 36 cc e1                                      strh r3, [ip, #0x66]
006e6f54  50 21 8d e5                                      str r2, [sp, #0x150]
006e6f58  54 21 8d e5                                      str r2, [sp, #0x154]
006e6f5c  58 31 8d e5                                      str r3, [sp, #0x158]
006e6f60  5c 21 8d e5                                      str r2, [sp, #0x15c]
006e6f64  60 31 8d e5                                      str r3, [sp, #0x160]
006e6f68  b4 16 cc e1                                      strh r1, [ip, #0x64]
006e6f6c  00 10 95 e5                                      ldr r1, [r5]
006e6f70  02 30 a0 e1                                      mov r3, r2
006e6f74  58 c0 91 e5                                      ldr ip, [r1, #0x58]
006e6f78  73 1f 8d e2                                      add r1, sp, #0x1cc
006e6f7c  00 10 8d e5                                      str r1, [sp]
006e6f80  cc 21 8d e5                                      str r2, [sp, #0x1cc]
006e6f84  1d 1e 8d e2                                      add r1, sp, #0x1d0
006e6f88  15 2e 8d e2                                      add r2, sp, #0x150
006e6f8c  3c ff 2f e1                                      blx ip
006e6f90  cc 01 9d e5                                      ldr r0, [sp, #0x1cc]
006e6f94  00 00 50 e3                                      cmp r0, #0
006e6f98  00 00 00 0a                                      beq #0x6e6fa0
006e6f9c  78 d9 f0 eb                                      bl #0x31d584
006e6fa0  50 01 9d e5                                      ldr r0, [sp, #0x150]
006e6fa4  00 00 50 e3                                      cmp r0, #0
006e6fa8  00 00 00 0a                                      beq #0x6e6fb0
006e6fac  74 d9 f0 eb                                      bl #0x31d584
006e6fb0  d0 41 9d e5                                      ldr r4, [sp, #0x1d0]
006e6fb4  00 00 54 e3                                      cmp r4, #0
006e6fb8  08 00 00 0a                                      beq #0x6e6fe0
006e6fbc  00 30 94 e5                                      ldr r3, [r4]
006e6fc0  01 30 43 e2                                      sub r3, r3, #1
006e6fc4  00 00 53 e3                                      cmp r3, #0
006e6fc8  00 30 84 e5                                      str r3, [r4]
006e6fcc  03 00 00 1a                                      bne #0x6e6fe0
006e6fd0  04 00 a0 e1                                      mov r0, r4
006e6fd4  90 e6 fa eb                                      bl #0x5a0a1c
006e6fd8  04 00 a0 e1                                      mov r0, r4
006e6fdc  b3 9c f0 eb                                      bl #0x30e2b0
006e6fe0  05 00 a0 e1                                      mov r0, r5
006e6fe4  07 10 a0 e1                                      mov r1, r7
006e6fe8  00 30 95 e5                                      ldr r3, [r5]
006e6fec  0f e0 a0 e1                                      mov lr, pc
006e6ff0  04 f1 93 e5                                      ldr pc, [r3, #0x104]
006e6ff4  00 02 9d e5                                      ldr r0, [sp, #0x200]
006e6ff8  06 00 50 e1                                      cmp r0, r6
006e6ffc  58 fb ff 0a                                      beq #0x6e5d64
006e7000  00 00 50 e3                                      cmp r0, #0
006e7004  56 fb ff 0a                                      beq #0x6e5d64
006e7008  10 a5 f0 eb                                      bl #0x310450
006e700c  54 fb ff ea                                      b #0x6e5d64
006e7010  6a 1f 8d e2                                      add r1, sp, #0x1a8
006e7014  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
006e7018  02 21 82 e2                                      add r2, r2, #0x80000000
006e701c  02 31 83 e2                                      add r3, r3, #0x80000000
006e7020  02 11 81 e2                                      add r1, r1, #0x80000000
006e7024  78 11 8d e5                                      str r1, [sp, #0x178]
006e7028  7c 21 8d e5                                      str r2, [sp, #0x17c]
006e702c  80 31 8d e5                                      str r3, [sp, #0x180]
006e7030  a2 fe ff ea                                      b #0x6e6ac0
006e7034  b5 9c f0 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006e7038  30 28 00 00                                      .byte 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x006e703c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeD1Ev
; demangled: glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e703c  70 40 2d e9                                      push {r4, r5, r6, lr}
006e7040  74 50 9f e5                                      ldr r5, [pc, #0x74]
006e7044  74 30 9f e5                                      ldr r3, [pc, #0x74]
006e7048  fc 61 90 e5                                      ldr r6, [r0, #0x1fc]
006e704c  05 50 8f e0                                      add r5, pc, r5
006e7050  03 30 95 e7                                      ldr r3, [r5, r3]
006e7054  00 00 56 e3                                      cmp r6, #0
006e7058  00 40 a0 e1                                      mov r4, r0
006e705c  49 2f 83 e2                                      add r2, r3, #0x124
006e7060  1c 30 83 e2                                      add r3, r3, #0x1c
006e7064  00 30 80 e5                                      str r3, [r0]
006e7068  04 22 80 e5                                      str r2, [r0, #0x204]
006e706c  04 00 00 0a                                      beq #0x6e7084
006e7070  00 30 96 e5                                      ldr r3, [r6]
006e7074  01 30 43 e2                                      sub r3, r3, #1
006e7078  00 00 53 e3                                      cmp r3, #0
006e707c  00 30 86 e5                                      str r3, [r6]
006e7080  08 00 00 0a                                      beq #0x6e70a8
006e7084  5a 0f 84 e2                                      add r0, r4, #0x168
006e7088  d6 a6 f0 eb                                      bl #0x310be8
006e708c  30 10 9f e5                                      ldr r1, [pc, #0x30]
006e7090  04 00 a0 e1                                      mov r0, r4
006e7094  01 10 95 e7                                      ldr r1, [r5, r1]
006e7098  04 10 81 e2                                      add r1, r1, #4
006e709c  06 c7 fa eb                                      bl #0x598cbc
006e70a0  04 00 a0 e1                                      mov r0, r4
006e70a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e70a8  06 00 a0 e1                                      mov r0, r6
006e70ac  5a e6 fa eb                                      bl #0x5a0a1c
006e70b0  06 00 a0 e1                                      mov r0, r6
006e70b4  7d 9c f0 eb                                      bl #0x30e2b0
006e70b8  f1 ff ff ea                                      b #0x6e7084
; mapping-symbol data/literal pool
006e70bc  44 da 2a 00 30 14 00 00 44 2f 00 00              .byte 0x44, 0xda, 0x2a, 0x00, 0x30, 0x14, 0x00, 0x00, 0x44, 0x2f, 0x00, 0x00

; FUNCTION 0x006e70c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeD0Ev
; demangled: glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e70c8  10 40 2d e9                                      push {r4, lr}
006e70cc  00 40 a0 e1                                      mov r4, r0
006e70d0  d9 ff ff eb                                      bl #0x6e703c
006e70d4  04 00 a0 e1                                      mov r0, r4
006e70d8  74 9c f0 eb                                      bl #0x30e2b0
006e70dc  04 00 a0 e1                                      mov r0, r4
006e70e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e70e4, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeD2Ev
; demangled: glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e70e4  70 40 2d e9                                      push {r4, r5, r6, lr}
006e70e8  00 30 91 e5                                      ldr r3, [r1]
006e70ec  01 50 a0 e1                                      mov r5, r1
006e70f0  00 40 a0 e1                                      mov r4, r0
006e70f4  00 30 80 e5                                      str r3, [r0]
006e70f8  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006e70fc  10 20 91 e5                                      ldr r2, [r1, #0x10]
006e7100  03 20 80 e7                                      str r2, [r0, r3]
006e7104  00 30 90 e5                                      ldr r3, [r0]
006e7108  14 20 91 e5                                      ldr r2, [r1, #0x14]
006e710c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e7110  03 20 80 e7                                      str r2, [r0, r3]
006e7114  fc 61 90 e5                                      ldr r6, [r0, #0x1fc]
006e7118  00 00 56 e3                                      cmp r6, #0
006e711c  04 00 00 0a                                      beq #0x6e7134
006e7120  00 30 96 e5                                      ldr r3, [r6]
006e7124  01 30 43 e2                                      sub r3, r3, #1
006e7128  00 00 53 e3                                      cmp r3, #0
006e712c  00 30 86 e5                                      str r3, [r6]
006e7130  06 00 00 0a                                      beq #0x6e7150
006e7134  5a 0f 84 e2                                      add r0, r4, #0x168
006e7138  aa a6 f0 eb                                      bl #0x310be8
006e713c  04 00 a0 e1                                      mov r0, r4
006e7140  04 10 85 e2                                      add r1, r5, #4
006e7144  dc c6 fa eb                                      bl #0x598cbc
006e7148  04 00 a0 e1                                      mov r0, r4
006e714c  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e7150  06 00 a0 e1                                      mov r0, r6
006e7154  30 e6 fa eb                                      bl #0x5a0a1c
006e7158  06 00 a0 e1                                      mov r0, r6
006e715c  53 9c f0 eb                                      bl #0x30e2b0
006e7160  f3 ff ff ea                                      b #0x6e7134

; FUNCTION 0x006e7164, declared_size=804, range_size=804, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeC1EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEEN5boost13intrusive_ptrINS2_9CMaterialEEERKNS5_11dimension2dIfEENS2_6SColorE
; demangled: glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::video::IVideoDriver*, int, glitch::core::vector3d<float> const&, boost::intrusive_ptr<glitch::video::CMaterial>, glitch::core::dimension2d<float> const&, glitch::video::SColor)
; decoder-mode: arm
006e7164  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e7168  08 73 9f e5                                      ldr r7, [pc, #0x308]
006e716c  08 33 9f e5                                      ldr r3, [pc, #0x308]
006e7170  08 23 9f e5                                      ldr r2, [pc, #0x308]
006e7174  07 70 8f e0                                      add r7, pc, r7
006e7178  03 30 97 e7                                      ldr r3, [r7, r3]
006e717c  02 20 97 e7                                      ldr r2, [r7, r2]
006e7180  01 e0 a0 e3                                      mov lr, #1
006e7184  18 c0 93 e5                                      ldr ip, [r3, #0x18]
006e7188  08 20 82 e2                                      add r2, r2, #8
006e718c  08 e2 80 e5                                      str lr, [r0, #0x208]
006e7190  00 c0 80 e5                                      str ip, [r0]
006e7194  04 22 80 e5                                      str r2, [r0, #0x204]
006e7198  0c 20 1c e5                                      ldr r2, [ip, #-0xc]
006e719c  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
006e71a0  54 d0 4d e2                                      sub sp, sp, #0x54
006e71a4  00 50 a0 e3                                      mov r5, #0
006e71a8  02 c0 80 e7                                      str ip, [r0, r2]
006e71ac  18 c0 8d e2                                      add ip, sp, #0x18
006e71b0  00 c0 8d e5                                      str ip, [sp]
006e71b4  28 c0 8d e2                                      add ip, sp, #0x28
006e71b8  04 c0 8d e5                                      str ip, [sp, #4]
006e71bc  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
006e71c0  fe 65 a0 e3                                      mov r6, #0x3f800000
006e71c4  14 10 8d e5                                      str r1, [sp, #0x14]
006e71c8  00 20 e0 e3                                      mvn r2, #0
006e71cc  04 10 83 e2                                      add r1, r3, #4
006e71d0  34 30 8d e2                                      add r3, sp, #0x34
006e71d4  00 40 a0 e1                                      mov r4, r0
006e71d8  10 c0 8d e5                                      str ip, [sp, #0x10]
006e71dc  34 50 8d e5                                      str r5, [sp, #0x34]
006e71e0  38 50 8d e5                                      str r5, [sp, #0x38]
006e71e4  3c 50 8d e5                                      str r5, [sp, #0x3c]
006e71e8  18 50 8d e5                                      str r5, [sp, #0x18]
006e71ec  1c 50 8d e5                                      str r5, [sp, #0x1c]
006e71f0  20 50 8d e5                                      str r5, [sp, #0x20]
006e71f4  24 60 8d e5                                      str r6, [sp, #0x24]
006e71f8  28 60 8d e5                                      str r6, [sp, #0x28]
006e71fc  2c 60 8d e5                                      str r6, [sp, #0x2c]
006e7200  30 60 8d e5                                      str r6, [sp, #0x30]
006e7204  80 b0 dd e5                                      ldrb fp, [sp, #0x80]
006e7208  81 90 dd e5                                      ldrb sb, [sp, #0x81]
006e720c  82 a0 dd e5                                      ldrb sl, [sp, #0x82]
006e7210  83 80 dd e5                                      ldrb r8, [sp, #0x83]
006e7214  a9 c7 fa eb                                      bl #0x5990c0
006e7218  64 32 9f e5                                      ldr r3, [pc, #0x264]
006e721c  bf 24 a0 e3                                      mov r2, #0xbf000000
006e7220  02 25 82 e2                                      add r2, r2, #0x800000
006e7224  03 30 97 e7                                      ldr r3, [r7, r3]
006e7228  58 21 84 e5                                      str r2, [r4, #0x158]
006e722c  50 21 84 e5                                      str r2, [r4, #0x150]
006e7230  49 1f 83 e2                                      add r1, r3, #0x124
006e7234  1c 30 83 e2                                      add r3, r3, #0x1c
006e7238  00 30 84 e5                                      str r3, [r4]
006e723c  00 30 a0 e3                                      mov r3, #0
006e7240  68 31 84 e5                                      str r3, [r4, #0x168]
006e7244  54 21 84 e5                                      str r2, [r4, #0x154]
006e7248  04 12 84 e5                                      str r1, [r4, #0x204]
006e724c  64 61 84 e5                                      str r6, [r4, #0x164]
006e7250  48 51 84 e5                                      str r5, [r4, #0x148]
006e7254  4c 51 84 e5                                      str r5, [r4, #0x14c]
006e7258  5c 61 84 e5                                      str r6, [r4, #0x15c]
006e725c  60 61 84 e5                                      str r6, [r4, #0x160]
006e7260  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006e7264  5b 7f 84 e2                                      add r7, r4, #0x16c
006e7268  07 30 a0 e1                                      mov r3, r7
006e726c  7f 2f 84 e2                                      add r2, r4, #0x1fc
006e7270  00 50 83 e5                                      str r5, [r3]
006e7274  04 50 83 e5                                      str r5, [r3, #4]
006e7278  08 50 83 e5                                      str r5, [r3, #8]
006e727c  0c 50 83 e5                                      str r5, [r3, #0xc]
006e7280  10 50 83 e5                                      str r5, [r3, #0x10]
006e7284  14 50 83 e5                                      str r5, [r3, #0x14]
006e7288  18 50 83 e5                                      str r5, [r3, #0x18]
006e728c  1c 50 83 e5                                      str r5, [r3, #0x1c]
006e7290  24 30 83 e2                                      add r3, r3, #0x24
006e7294  02 00 53 e1                                      cmp r3, r2
006e7298  f4 ff ff 1a                                      bne #0x6e7270
006e729c  00 30 a0 e3                                      mov r3, #0
006e72a0  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e72a4  00 30 9c e5                                      ldr r3, [ip]
006e72a8  06 28 a0 e3                                      mov r2, #0x60000
006e72ac  4c 00 8d e2                                      add r0, sp, #0x4c
006e72b0  48 31 84 e5                                      str r3, [r4, #0x148]
006e72b4  04 30 9c e5                                      ldr r3, [ip, #4]
006e72b8  01 10 a0 e3                                      mov r1, #1
006e72bc  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e72c0  4f e8 fa eb                                      bl #0x5a1404
006e72c4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006e72c8  00 00 53 e3                                      cmp r3, #0
006e72cc  00 20 93 15                                      ldrne r2, [r3]
006e72d0  01 20 82 12                                      addne r2, r2, #1
006e72d4  00 20 83 15                                      strne r2, [r3]
006e72d8  fc 51 94 e5                                      ldr r5, [r4, #0x1fc]
006e72dc  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e72e0  00 00 55 e3                                      cmp r5, #0
006e72e4  04 00 00 0a                                      beq #0x6e72fc
006e72e8  00 30 95 e5                                      ldr r3, [r5]
006e72ec  01 30 43 e2                                      sub r3, r3, #1
006e72f0  00 00 53 e3                                      cmp r3, #0
006e72f4  00 30 85 e5                                      str r3, [r5]
006e72f8  54 00 00 0a                                      beq #0x6e7450
006e72fc  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
006e7300  00 00 55 e3                                      cmp r5, #0
006e7304  04 00 00 0a                                      beq #0x6e731c
006e7308  00 30 95 e5                                      ldr r3, [r5]
006e730c  01 30 43 e2                                      sub r3, r3, #1
006e7310  00 00 53 e3                                      cmp r3, #0
006e7314  00 30 85 e5                                      str r3, [r5]
006e7318  51 00 00 0a                                      beq #0x6e7464
006e731c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006e7320  00 30 a0 e3                                      mov r3, #0
006e7324  90 20 a0 e3                                      mov r2, #0x90
006e7328  00 20 8d e5                                      str r2, [sp]
006e732c  08 30 8d e5                                      str r3, [sp, #8]
006e7330  48 50 8d e2                                      add r5, sp, #0x48
006e7334  04 70 8d e5                                      str r7, [sp, #4]
006e7338  03 20 a0 e1                                      mov r2, r3
006e733c  00 c0 91 e5                                      ldr ip, [r1]
006e7340  04 30 a0 e3                                      mov r3, #4
006e7344  05 00 a0 e1                                      mov r0, r5
006e7348  0f e0 a0 e1                                      mov lr, pc
006e734c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006e7350  05 10 a0 e1                                      mov r1, r5
006e7354  00 20 e0 e3                                      mvn r2, #0
006e7358  fc 01 94 e5                                      ldr r0, [r4, #0x1fc]
006e735c  97 e8 fa eb                                      bl #0x5a15c0
006e7360  fc 11 94 e5                                      ldr r1, [r4, #0x1fc]
006e7364  00 30 a0 e3                                      mov r3, #0
006e7368  fe 25 a0 e3                                      mov r2, #0x3f800000
006e736c  04 00 a0 e3                                      mov r0, #4
006e7370  08 00 81 e5                                      str r0, [r1, #8]
006e7374  fb 81 c4 e5                                      strb r8, [r4, #0x1fb]
006e7378  fa a1 c4 e5                                      strb sl, [r4, #0x1fa]
006e737c  f9 91 c4 e5                                      strb sb, [r4, #0x1f9]
006e7380  f8 b1 c4 e5                                      strb fp, [r4, #0x1f8]
006e7384  e4 31 84 e5                                      str r3, [r4, #0x1e4]
006e7388  e8 21 84 e5                                      str r2, [r4, #0x1e8]
006e738c  8f 81 c4 e5                                      strb r8, [r4, #0x18f]
006e7390  8e a1 c4 e5                                      strb sl, [r4, #0x18e]
006e7394  8d 91 c4 e5                                      strb sb, [r4, #0x18d]
006e7398  8c b1 c4 e5                                      strb fp, [r4, #0x18c]
006e739c  78 21 84 e5                                      str r2, [r4, #0x178]
006e73a0  7c 21 84 e5                                      str r2, [r4, #0x17c]
006e73a4  b3 81 c4 e5                                      strb r8, [r4, #0x1b3]
006e73a8  b2 a1 c4 e5                                      strb sl, [r4, #0x1b2]
006e73ac  b1 91 c4 e5                                      strb sb, [r4, #0x1b1]
006e73b0  b0 b1 c4 e5                                      strb fp, [r4, #0x1b0]
006e73b4  9c 21 84 e5                                      str r2, [r4, #0x19c]
006e73b8  a0 31 84 e5                                      str r3, [r4, #0x1a0]
006e73bc  d7 81 c4 e5                                      strb r8, [r4, #0x1d7]
006e73c0  d6 a1 c4 e5                                      strb sl, [r4, #0x1d6]
006e73c4  d5 91 c4 e5                                      strb sb, [r4, #0x1d5]
006e73c8  d4 b1 c4 e5                                      strb fp, [r4, #0x1d4]
006e73cc  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006e73d0  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006e73d4  78 30 9d e5                                      ldr r3, [sp, #0x78]
006e73d8  00 30 93 e5                                      ldr r3, [r3]
006e73dc  00 00 53 e3                                      cmp r3, #0
006e73e0  44 30 8d e5                                      str r3, [sp, #0x44]
006e73e4  09 00 00 0a                                      beq #0x6e7410
006e73e8  00 20 93 e5                                      ldr r2, [r3]
006e73ec  01 20 82 e2                                      add r2, r2, #1
006e73f0  00 20 83 e5                                      str r2, [r3]
006e73f4  44 30 9d e5                                      ldr r3, [sp, #0x44]
006e73f8  00 00 53 e3                                      cmp r3, #0
006e73fc  40 30 8d e5                                      str r3, [sp, #0x40]
006e7400  00 20 93 15                                      ldrne r2, [r3]
006e7404  01 20 82 12                                      addne r2, r2, #1
006e7408  00 20 83 15                                      strne r2, [r3]
006e740c  40 30 9d 15                                      ldrne r3, [sp, #0x40]
006e7410  68 21 94 e5                                      ldr r2, [r4, #0x168]
006e7414  50 00 8d e2                                      add r0, sp, #0x50
006e7418  68 31 84 e5                                      str r3, [r4, #0x168]
006e741c  10 20 20 e5                                      str r2, [r0, #-0x10]!
006e7420  f0 a5 f0 eb                                      bl #0x310be8
006e7424  44 00 8d e2                                      add r0, sp, #0x44
006e7428  ee a5 f0 eb                                      bl #0x310be8
006e742c  48 00 9d e5                                      ldr r0, [sp, #0x48]
006e7430  00 30 a0 e3                                      mov r3, #0
006e7434  30 31 84 e5                                      str r3, [r4, #0x130]
006e7438  03 00 50 e1                                      cmp r0, r3
006e743c  00 00 00 0a                                      beq #0x6e7444
006e7440  4f d8 f0 eb                                      bl #0x31d584
006e7444  04 00 a0 e1                                      mov r0, r4
006e7448  54 d0 8d e2                                      add sp, sp, #0x54
006e744c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e7450  05 00 a0 e1                                      mov r0, r5
006e7454  70 e5 fa eb                                      bl #0x5a0a1c
006e7458  05 00 a0 e1                                      mov r0, r5
006e745c  93 9b f0 eb                                      bl #0x30e2b0
006e7460  a5 ff ff ea                                      b #0x6e72fc
006e7464  05 00 a0 e1                                      mov r0, r5
006e7468  6b e5 fa eb                                      bl #0x5a0a1c
006e746c  05 00 a0 e1                                      mov r0, r5
006e7470  8e 9b f0 eb                                      bl #0x30e2b0
006e7474  a8 ff ff ea                                      b #0x6e731c
; mapping-symbol data/literal pool
006e7478  1c d9 2a 00 44 2f 00 00 44 2b 00 00 30 14 00 00  .byte 0x1c, 0xd9, 0x2a, 0x00, 0x44, 0x2f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x30, 0x14, 0x00, 0x00

; FUNCTION 0x006e7488, declared_size=752, range_size=752, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeC2EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEEN5boost13intrusive_ptrINS2_9CMaterialEEERKNS5_11dimension2dIfEENS2_6SColorE
; demangled: glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::video::IVideoDriver*, int, glitch::core::vector3d<float> const&, boost::intrusive_ptr<glitch::video::CMaterial>, glitch::core::dimension2d<float> const&, glitch::video::SColor)
; decoder-mode: arm
006e7488  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006e748c  5c d0 4d e2                                      sub sp, sp, #0x5c
006e7490  20 c0 8d e2                                      add ip, sp, #0x20
006e7494  00 c0 8d e5                                      str ip, [sp]
006e7498  30 c0 8d e2                                      add ip, sp, #0x30
006e749c  04 c0 8d e5                                      str ip, [sp, #4]
006e74a0  88 c0 9d e5                                      ldr ip, [sp, #0x88]
006e74a4  00 50 a0 e3                                      mov r5, #0
006e74a8  fe 65 a0 e3                                      mov r6, #0x3f800000
006e74ac  01 70 a0 e1                                      mov r7, r1
006e74b0  18 20 8d e5                                      str r2, [sp, #0x18]
006e74b4  04 10 81 e2                                      add r1, r1, #4
006e74b8  00 20 e0 e3                                      mvn r2, #0
006e74bc  3c 30 8d e2                                      add r3, sp, #0x3c
006e74c0  00 40 a0 e1                                      mov r4, r0
006e74c4  14 c0 8d e5                                      str ip, [sp, #0x14]
006e74c8  3c 50 8d e5                                      str r5, [sp, #0x3c]
006e74cc  40 50 8d e5                                      str r5, [sp, #0x40]
006e74d0  44 50 8d e5                                      str r5, [sp, #0x44]
006e74d4  20 50 8d e5                                      str r5, [sp, #0x20]
006e74d8  24 50 8d e5                                      str r5, [sp, #0x24]
006e74dc  28 50 8d e5                                      str r5, [sp, #0x28]
006e74e0  2c 60 8d e5                                      str r6, [sp, #0x2c]
006e74e4  30 60 8d e5                                      str r6, [sp, #0x30]
006e74e8  34 60 8d e5                                      str r6, [sp, #0x34]
006e74ec  38 60 8d e5                                      str r6, [sp, #0x38]
006e74f0  8c b0 dd e5                                      ldrb fp, [sp, #0x8c]
006e74f4  8d 90 dd e5                                      ldrb sb, [sp, #0x8d]
006e74f8  8e a0 dd e5                                      ldrb sl, [sp, #0x8e]
006e74fc  8f 80 dd e5                                      ldrb r8, [sp, #0x8f]
006e7500  ee c6 fa eb                                      bl #0x5990c0
006e7504  00 30 97 e5                                      ldr r3, [r7]
006e7508  5b 2f 84 e2                                      add r2, r4, #0x16c
006e750c  bf 04 a0 e3                                      mov r0, #0xbf000000
006e7510  00 30 84 e5                                      str r3, [r4]
006e7514  10 10 97 e5                                      ldr r1, [r7, #0x10]
006e7518  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006e751c  1c 20 8d e5                                      str r2, [sp, #0x1c]
006e7520  02 05 80 e2                                      add r0, r0, #0x800000
006e7524  03 10 84 e7                                      str r1, [r4, r3]
006e7528  00 10 94 e5                                      ldr r1, [r4]
006e752c  14 e0 97 e5                                      ldr lr, [r7, #0x14]
006e7530  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006e7534  0c 70 11 e5                                      ldr r7, [r1, #-0xc]
006e7538  05 20 a0 e1                                      mov r2, r5
006e753c  7f 1f 84 e2                                      add r1, r4, #0x1fc
006e7540  07 e0 84 e7                                      str lr, [r4, r7]
006e7544  00 e0 a0 e3                                      mov lr, #0
006e7548  58 01 84 e5                                      str r0, [r4, #0x158]
006e754c  64 61 84 e5                                      str r6, [r4, #0x164]
006e7550  68 e1 84 e5                                      str lr, [r4, #0x168]
006e7554  48 51 84 e5                                      str r5, [r4, #0x148]
006e7558  4c 51 84 e5                                      str r5, [r4, #0x14c]
006e755c  50 01 84 e5                                      str r0, [r4, #0x150]
006e7560  54 01 84 e5                                      str r0, [r4, #0x154]
006e7564  5c 61 84 e5                                      str r6, [r4, #0x15c]
006e7568  60 61 84 e5                                      str r6, [r4, #0x160]
006e756c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006e7570  00 20 83 e5                                      str r2, [r3]
006e7574  04 20 83 e5                                      str r2, [r3, #4]
006e7578  08 20 83 e5                                      str r2, [r3, #8]
006e757c  0c 20 83 e5                                      str r2, [r3, #0xc]
006e7580  10 20 83 e5                                      str r2, [r3, #0x10]
006e7584  14 20 83 e5                                      str r2, [r3, #0x14]
006e7588  18 20 83 e5                                      str r2, [r3, #0x18]
006e758c  1c 20 83 e5                                      str r2, [r3, #0x1c]
006e7590  24 30 83 e2                                      add r3, r3, #0x24
006e7594  01 00 53 e1                                      cmp r3, r1
006e7598  f4 ff ff 1a                                      bne #0x6e7570
006e759c  00 30 a0 e3                                      mov r3, #0
006e75a0  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e75a4  00 30 9c e5                                      ldr r3, [ip]
006e75a8  06 28 a0 e3                                      mov r2, #0x60000
006e75ac  54 00 8d e2                                      add r0, sp, #0x54
006e75b0  48 31 84 e5                                      str r3, [r4, #0x148]
006e75b4  04 30 9c e5                                      ldr r3, [ip, #4]
006e75b8  01 10 a0 e3                                      mov r1, #1
006e75bc  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e75c0  8f e7 fa eb                                      bl #0x5a1404
006e75c4  54 30 9d e5                                      ldr r3, [sp, #0x54]
006e75c8  00 00 53 e3                                      cmp r3, #0
006e75cc  00 20 93 15                                      ldrne r2, [r3]
006e75d0  01 20 82 12                                      addne r2, r2, #1
006e75d4  00 20 83 15                                      strne r2, [r3]
006e75d8  fc 51 94 e5                                      ldr r5, [r4, #0x1fc]
006e75dc  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e75e0  00 00 55 e3                                      cmp r5, #0
006e75e4  04 00 00 0a                                      beq #0x6e75fc
006e75e8  00 30 95 e5                                      ldr r3, [r5]
006e75ec  01 30 43 e2                                      sub r3, r3, #1
006e75f0  00 00 53 e3                                      cmp r3, #0
006e75f4  00 30 85 e5                                      str r3, [r5]
006e75f8  54 00 00 0a                                      beq #0x6e7750
006e75fc  54 50 9d e5                                      ldr r5, [sp, #0x54]
006e7600  00 00 55 e3                                      cmp r5, #0
006e7604  04 00 00 0a                                      beq #0x6e761c
006e7608  00 30 95 e5                                      ldr r3, [r5]
006e760c  01 30 43 e2                                      sub r3, r3, #1
006e7610  00 00 53 e3                                      cmp r3, #0
006e7614  00 30 85 e5                                      str r3, [r5]
006e7618  51 00 00 0a                                      beq #0x6e7764
006e761c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006e7620  18 10 9d e5                                      ldr r1, [sp, #0x18]
006e7624  00 30 a0 e3                                      mov r3, #0
006e7628  90 20 a0 e3                                      mov r2, #0x90
006e762c  04 40 8d e8                                      stm sp, {r2, lr}
006e7630  08 30 8d e5                                      str r3, [sp, #8]
006e7634  50 50 8d e2                                      add r5, sp, #0x50
006e7638  03 20 a0 e1                                      mov r2, r3
006e763c  00 c0 91 e5                                      ldr ip, [r1]
006e7640  04 30 a0 e3                                      mov r3, #4
006e7644  05 00 a0 e1                                      mov r0, r5
006e7648  0f e0 a0 e1                                      mov lr, pc
006e764c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006e7650  05 10 a0 e1                                      mov r1, r5
006e7654  00 20 e0 e3                                      mvn r2, #0
006e7658  fc 01 94 e5                                      ldr r0, [r4, #0x1fc]
006e765c  d7 e7 fa eb                                      bl #0x5a15c0
006e7660  fc 11 94 e5                                      ldr r1, [r4, #0x1fc]
006e7664  00 30 a0 e3                                      mov r3, #0
006e7668  fe 25 a0 e3                                      mov r2, #0x3f800000
006e766c  04 00 a0 e3                                      mov r0, #4
006e7670  08 00 81 e5                                      str r0, [r1, #8]
006e7674  fb 81 c4 e5                                      strb r8, [r4, #0x1fb]
006e7678  fa a1 c4 e5                                      strb sl, [r4, #0x1fa]
006e767c  f9 91 c4 e5                                      strb sb, [r4, #0x1f9]
006e7680  f8 b1 c4 e5                                      strb fp, [r4, #0x1f8]
006e7684  e4 31 84 e5                                      str r3, [r4, #0x1e4]
006e7688  e8 21 84 e5                                      str r2, [r4, #0x1e8]
006e768c  8f 81 c4 e5                                      strb r8, [r4, #0x18f]
006e7690  8e a1 c4 e5                                      strb sl, [r4, #0x18e]
006e7694  8d 91 c4 e5                                      strb sb, [r4, #0x18d]
006e7698  8c b1 c4 e5                                      strb fp, [r4, #0x18c]
006e769c  78 21 84 e5                                      str r2, [r4, #0x178]
006e76a0  7c 21 84 e5                                      str r2, [r4, #0x17c]
006e76a4  b3 81 c4 e5                                      strb r8, [r4, #0x1b3]
006e76a8  b2 a1 c4 e5                                      strb sl, [r4, #0x1b2]
006e76ac  b1 91 c4 e5                                      strb sb, [r4, #0x1b1]
006e76b0  b0 b1 c4 e5                                      strb fp, [r4, #0x1b0]
006e76b4  9c 21 84 e5                                      str r2, [r4, #0x19c]
006e76b8  a0 31 84 e5                                      str r3, [r4, #0x1a0]
006e76bc  d7 81 c4 e5                                      strb r8, [r4, #0x1d7]
006e76c0  d6 a1 c4 e5                                      strb sl, [r4, #0x1d6]
006e76c4  d5 91 c4 e5                                      strb sb, [r4, #0x1d5]
006e76c8  d4 b1 c4 e5                                      strb fp, [r4, #0x1d4]
006e76cc  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006e76d0  c4 31 84 e5                                      str r3, [r4, #0x1c4]
006e76d4  84 30 9d e5                                      ldr r3, [sp, #0x84]
006e76d8  00 30 93 e5                                      ldr r3, [r3]
006e76dc  00 00 53 e3                                      cmp r3, #0
006e76e0  4c 30 8d e5                                      str r3, [sp, #0x4c]
006e76e4  09 00 00 0a                                      beq #0x6e7710
006e76e8  00 20 93 e5                                      ldr r2, [r3]
006e76ec  01 20 82 e2                                      add r2, r2, #1
006e76f0  00 20 83 e5                                      str r2, [r3]
006e76f4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006e76f8  00 00 53 e3                                      cmp r3, #0
006e76fc  48 30 8d e5                                      str r3, [sp, #0x48]
006e7700  00 20 93 15                                      ldrne r2, [r3]
006e7704  01 20 82 12                                      addne r2, r2, #1
006e7708  00 20 83 15                                      strne r2, [r3]
006e770c  48 30 9d 15                                      ldrne r3, [sp, #0x48]
006e7710  68 21 94 e5                                      ldr r2, [r4, #0x168]
006e7714  58 00 8d e2                                      add r0, sp, #0x58
006e7718  68 31 84 e5                                      str r3, [r4, #0x168]
006e771c  10 20 20 e5                                      str r2, [r0, #-0x10]!
006e7720  30 a5 f0 eb                                      bl #0x310be8
006e7724  4c 00 8d e2                                      add r0, sp, #0x4c
006e7728  2e a5 f0 eb                                      bl #0x310be8
006e772c  50 00 9d e5                                      ldr r0, [sp, #0x50]
006e7730  00 30 a0 e3                                      mov r3, #0
006e7734  30 31 84 e5                                      str r3, [r4, #0x130]
006e7738  03 00 50 e1                                      cmp r0, r3
006e773c  00 00 00 0a                                      beq #0x6e7744
006e7740  8f d7 f0 eb                                      bl #0x31d584
006e7744  04 00 a0 e1                                      mov r0, r4
006e7748  5c d0 8d e2                                      add sp, sp, #0x5c
006e774c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006e7750  05 00 a0 e1                                      mov r0, r5
006e7754  b0 e4 fa eb                                      bl #0x5a0a1c
006e7758  05 00 a0 e1                                      mov r0, r5
006e775c  d3 9a f0 eb                                      bl #0x30e2b0
006e7760  a5 ff ff ea                                      b #0x6e75fc
006e7764  05 00 a0 e1                                      mov r0, r5
006e7768  ab e4 fa eb                                      bl #0x5a0a1c
006e776c  05 00 a0 e1                                      mov r0, r5
006e7770  ce 9a f0 eb                                      bl #0x30e2b0
006e7774  a8 ff ff ea                                      b #0x6e761c

; FUNCTION 0x006e7778, declared_size=776, range_size=776, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_8SCoronasEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SCoronas&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006e7778  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006e777c  ec 82 9f e5                                      ldr r8, [pc, #0x2ec]
006e7780  ec 12 9f e5                                      ldr r1, [pc, #0x2ec]
006e7784  ec c2 9f e5                                      ldr ip, [pc, #0x2ec]
006e7788  08 80 8f e0                                      add r8, pc, r8
006e778c  01 10 98 e7                                      ldr r1, [r8, r1]
006e7790  0c c0 98 e7                                      ldr ip, [r8, ip]
006e7794  01 50 a0 e3                                      mov r5, #1
006e7798  18 e0 91 e5                                      ldr lr, [r1, #0x18]
006e779c  08 c0 8c e2                                      add ip, ip, #8
006e77a0  08 52 80 e5                                      str r5, [r0, #0x208]
006e77a4  00 e0 80 e5                                      str lr, [r0]
006e77a8  04 c2 80 e5                                      str ip, [r0, #0x204]
006e77ac  0c c0 1e e5                                      ldr ip, [lr, #-0xc]
006e77b0  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
006e77b4  44 d0 4d e2                                      sub sp, sp, #0x44
006e77b8  00 50 a0 e3                                      mov r5, #0
006e77bc  0c e0 80 e7                                      str lr, [r0, ip]
006e77c0  10 c0 8d e2                                      add ip, sp, #0x10
006e77c4  fe 75 a0 e3                                      mov r7, #0x3f800000
006e77c8  03 60 a0 e1                                      mov r6, r3
006e77cc  04 10 81 e2                                      add r1, r1, #4
006e77d0  2c 30 8d e2                                      add r3, sp, #0x2c
006e77d4  00 c0 8d e5                                      str ip, [sp]
006e77d8  02 a0 a0 e1                                      mov sl, r2
006e77dc  20 c0 8d e2                                      add ip, sp, #0x20
006e77e0  00 20 e0 e3                                      mvn r2, #0
006e77e4  00 40 a0 e1                                      mov r4, r0
006e77e8  04 c0 8d e5                                      str ip, [sp, #4]
006e77ec  2c 50 8d e5                                      str r5, [sp, #0x2c]
006e77f0  30 50 8d e5                                      str r5, [sp, #0x30]
006e77f4  34 50 8d e5                                      str r5, [sp, #0x34]
006e77f8  10 50 8d e5                                      str r5, [sp, #0x10]
006e77fc  14 50 8d e5                                      str r5, [sp, #0x14]
006e7800  18 50 8d e5                                      str r5, [sp, #0x18]
006e7804  1c 70 8d e5                                      str r7, [sp, #0x1c]
006e7808  20 70 8d e5                                      str r7, [sp, #0x20]
006e780c  24 70 8d e5                                      str r7, [sp, #0x24]
006e7810  28 70 8d e5                                      str r7, [sp, #0x28]
006e7814  29 c6 fa eb                                      bl #0x5990c0
006e7818  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
006e781c  bf 04 a0 e3                                      mov r0, #0xbf000000
006e7820  02 05 80 e2                                      add r0, r0, #0x800000
006e7824  03 30 98 e7                                      ldr r3, [r8, r3]
006e7828  5b 8f 84 e2                                      add r8, r4, #0x16c
006e782c  05 20 a0 e1                                      mov r2, r5
006e7830  49 1f 83 e2                                      add r1, r3, #0x124
006e7834  1c 30 83 e2                                      add r3, r3, #0x1c
006e7838  00 30 84 e5                                      str r3, [r4]
006e783c  04 12 84 e5                                      str r1, [r4, #0x204]
006e7840  10 c0 96 e5                                      ldr ip, [r6, #0x10]
006e7844  08 30 a0 e1                                      mov r3, r8
006e7848  7f 1f 84 e2                                      add r1, r4, #0x1fc
006e784c  34 c1 84 e5                                      str ip, [r4, #0x134]
006e7850  14 c0 96 e5                                      ldr ip, [r6, #0x14]
006e7854  38 c1 84 e5                                      str ip, [r4, #0x138]
006e7858  18 c0 96 e5                                      ldr ip, [r6, #0x18]
006e785c  3c c1 84 e5                                      str ip, [r4, #0x13c]
006e7860  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
006e7864  58 01 84 e5                                      str r0, [r4, #0x158]
006e7868  64 71 84 e5                                      str r7, [r4, #0x164]
006e786c  40 c1 84 e5                                      str ip, [r4, #0x140]
006e7870  00 c0 a0 e3                                      mov ip, #0
006e7874  68 c1 84 e5                                      str ip, [r4, #0x168]
006e7878  48 51 84 e5                                      str r5, [r4, #0x148]
006e787c  4c 51 84 e5                                      str r5, [r4, #0x14c]
006e7880  50 01 84 e5                                      str r0, [r4, #0x150]
006e7884  54 01 84 e5                                      str r0, [r4, #0x154]
006e7888  5c 71 84 e5                                      str r7, [r4, #0x15c]
006e788c  60 71 84 e5                                      str r7, [r4, #0x160]
006e7890  00 20 83 e5                                      str r2, [r3]
006e7894  04 20 83 e5                                      str r2, [r3, #4]
006e7898  08 20 83 e5                                      str r2, [r3, #8]
006e789c  0c 20 83 e5                                      str r2, [r3, #0xc]
006e78a0  10 20 83 e5                                      str r2, [r3, #0x10]
006e78a4  14 20 83 e5                                      str r2, [r3, #0x14]
006e78a8  18 20 83 e5                                      str r2, [r3, #0x18]
006e78ac  1c 20 83 e5                                      str r2, [r3, #0x1c]
006e78b0  24 30 83 e2                                      add r3, r3, #0x24
006e78b4  01 00 53 e1                                      cmp r3, r1
006e78b8  f4 ff ff 1a                                      bne #0x6e7890
006e78bc  00 30 a0 e3                                      mov r3, #0
006e78c0  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e78c4  60 30 9d e5                                      ldr r3, [sp, #0x60]
006e78c8  04 00 a0 e1                                      mov r0, r4
006e78cc  00 32 84 e5                                      str r3, [r4, #0x200]
006e78d0  04 10 96 e5                                      ldr r1, [r6, #4]
006e78d4  4a c4 fa eb                                      bl #0x598a04
006e78d8  20 20 d6 e5                                      ldrb r2, [r6, #0x20]
006e78dc  fe 35 a0 e3                                      mov r3, #0x3f800000
006e78e0  48 31 84 e5                                      str r3, [r4, #0x148]
006e78e4  00 20 52 e2                                      subs r2, r2, #0
006e78e8  01 20 a0 13                                      movne r2, #1
006e78ec  44 21 c4 e5                                      strb r2, [r4, #0x144]
006e78f0  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e78f4  08 30 96 e5                                      ldr r3, [r6, #8]
006e78f8  06 28 a0 e3                                      mov r2, #0x60000
006e78fc  3c 00 8d e2                                      add r0, sp, #0x3c
006e7900  48 31 84 e5                                      str r3, [r4, #0x148]
006e7904  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006e7908  01 10 a0 e3                                      mov r1, #1
006e790c  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e7910  bb e6 fa eb                                      bl #0x5a1404
006e7914  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006e7918  00 00 53 e3                                      cmp r3, #0
006e791c  00 20 93 15                                      ldrne r2, [r3]
006e7920  01 20 82 12                                      addne r2, r2, #1
006e7924  00 20 83 15                                      strne r2, [r3]
006e7928  fc 51 94 e5                                      ldr r5, [r4, #0x1fc]
006e792c  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e7930  00 00 55 e3                                      cmp r5, #0
006e7934  04 00 00 0a                                      beq #0x6e794c
006e7938  00 30 95 e5                                      ldr r3, [r5]
006e793c  01 30 43 e2                                      sub r3, r3, #1
006e7940  00 00 53 e3                                      cmp r3, #0
006e7944  00 30 85 e5                                      str r3, [r5]
006e7948  3e 00 00 0a                                      beq #0x6e7a48
006e794c  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
006e7950  00 00 55 e3                                      cmp r5, #0
006e7954  04 00 00 0a                                      beq #0x6e796c
006e7958  00 30 95 e5                                      ldr r3, [r5]
006e795c  01 30 43 e2                                      sub r3, r3, #1
006e7960  00 00 53 e3                                      cmp r3, #0
006e7964  00 30 85 e5                                      str r3, [r5]
006e7968  3b 00 00 0a                                      beq #0x6e7a5c
006e796c  00 50 a0 e3                                      mov r5, #0
006e7970  90 30 a0 e3                                      mov r3, #0x90
006e7974  00 30 8d e5                                      str r3, [sp]
006e7978  38 60 8d e2                                      add r6, sp, #0x38
006e797c  04 80 8d e5                                      str r8, [sp, #4]
006e7980  08 50 8d e5                                      str r5, [sp, #8]
006e7984  04 30 a0 e3                                      mov r3, #4
006e7988  0a 10 a0 e1                                      mov r1, sl
006e798c  06 00 a0 e1                                      mov r0, r6
006e7990  05 20 a0 e1                                      mov r2, r5
006e7994  00 c0 9a e5                                      ldr ip, [sl]
006e7998  0f e0 a0 e1                                      mov lr, pc
006e799c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006e79a0  06 10 a0 e1                                      mov r1, r6
006e79a4  00 20 e0 e3                                      mvn r2, #0
006e79a8  fc 01 94 e5                                      ldr r0, [r4, #0x1fc]
006e79ac  03 e7 fa eb                                      bl #0x5a15c0
006e79b0  fc 31 94 e5                                      ldr r3, [r4, #0x1fc]
006e79b4  04 20 a0 e3                                      mov r2, #4
006e79b8  fe 15 a0 e3                                      mov r1, #0x3f800000
006e79bc  08 20 83 e5                                      str r2, [r3, #8]
006e79c0  38 00 9d e5                                      ldr r0, [sp, #0x38]
006e79c4  00 30 e0 e3                                      mvn r3, #0
006e79c8  00 20 a0 e3                                      mov r2, #0
006e79cc  05 00 50 e1                                      cmp r0, r5
006e79d0  c4 11 84 e5                                      str r1, [r4, #0x1c4]
006e79d4  f8 31 c4 e5                                      strb r3, [r4, #0x1f8]
006e79d8  e8 21 84 e5                                      str r2, [r4, #0x1e8]
006e79dc  30 51 84 e5                                      str r5, [r4, #0x130]
006e79e0  8f 31 c4 e5                                      strb r3, [r4, #0x18f]
006e79e4  8e 31 c4 e5                                      strb r3, [r4, #0x18e]
006e79e8  8d 31 c4 e5                                      strb r3, [r4, #0x18d]
006e79ec  8c 31 c4 e5                                      strb r3, [r4, #0x18c]
006e79f0  78 11 84 e5                                      str r1, [r4, #0x178]
006e79f4  7c 11 84 e5                                      str r1, [r4, #0x17c]
006e79f8  b3 31 c4 e5                                      strb r3, [r4, #0x1b3]
006e79fc  b2 31 c4 e5                                      strb r3, [r4, #0x1b2]
006e7a00  b1 31 c4 e5                                      strb r3, [r4, #0x1b1]
006e7a04  b0 31 c4 e5                                      strb r3, [r4, #0x1b0]
006e7a08  9c 11 84 e5                                      str r1, [r4, #0x19c]
006e7a0c  a0 21 84 e5                                      str r2, [r4, #0x1a0]
006e7a10  d7 31 c4 e5                                      strb r3, [r4, #0x1d7]
006e7a14  d6 31 c4 e5                                      strb r3, [r4, #0x1d6]
006e7a18  d5 31 c4 e5                                      strb r3, [r4, #0x1d5]
006e7a1c  d4 31 c4 e5                                      strb r3, [r4, #0x1d4]
006e7a20  c0 21 84 e5                                      str r2, [r4, #0x1c0]
006e7a24  fb 31 c4 e5                                      strb r3, [r4, #0x1fb]
006e7a28  fa 31 c4 e5                                      strb r3, [r4, #0x1fa]
006e7a2c  f9 31 c4 e5                                      strb r3, [r4, #0x1f9]
006e7a30  e4 21 84 e5                                      str r2, [r4, #0x1e4]
006e7a34  00 00 00 0a                                      beq #0x6e7a3c
006e7a38  d1 d6 f0 eb                                      bl #0x31d584
006e7a3c  04 00 a0 e1                                      mov r0, r4
006e7a40  44 d0 8d e2                                      add sp, sp, #0x44
006e7a44  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006e7a48  05 00 a0 e1                                      mov r0, r5
006e7a4c  f2 e3 fa eb                                      bl #0x5a0a1c
006e7a50  05 00 a0 e1                                      mov r0, r5
006e7a54  15 9a f0 eb                                      bl #0x30e2b0
006e7a58  bb ff ff ea                                      b #0x6e794c
006e7a5c  05 00 a0 e1                                      mov r0, r5
006e7a60  ed e3 fa eb                                      bl #0x5a0a1c
006e7a64  05 00 a0 e1                                      mov r0, r5
006e7a68  10 9a f0 eb                                      bl #0x30e2b0
006e7a6c  be ff ff ea                                      b #0x6e796c
; mapping-symbol data/literal pool
006e7a70  08 d3 2a 00 44 2f 00 00 44 2b 00 00 30 14 00 00  .byte 0x08, 0xd3, 0x2a, 0x00, 0x44, 0x2f, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x30, 0x14, 0x00, 0x00

; FUNCTION 0x006e7a80, declared_size=716, range_size=716, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZN6glitch7collada17CCoronasSceneNodeC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_8SCoronasEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CCoronasSceneNode::CCoronasSceneNode(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SCoronas&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006e7a80  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e7a84  40 d0 4d e2                                      sub sp, sp, #0x40
006e7a88  10 c0 8d e2                                      add ip, sp, #0x10
006e7a8c  00 50 a0 e3                                      mov r5, #0
006e7a90  fe 75 a0 e3                                      mov r7, #0x3f800000
006e7a94  01 80 a0 e1                                      mov r8, r1
006e7a98  00 20 e0 e3                                      mvn r2, #0
006e7a9c  04 10 81 e2                                      add r1, r1, #4
006e7aa0  00 c0 8d e5                                      str ip, [sp]
006e7aa4  03 90 a0 e1                                      mov sb, r3
006e7aa8  20 c0 8d e2                                      add ip, sp, #0x20
006e7aac  2c 30 8d e2                                      add r3, sp, #0x2c
006e7ab0  00 40 a0 e1                                      mov r4, r0
006e7ab4  60 60 9d e5                                      ldr r6, [sp, #0x60]
006e7ab8  04 c0 8d e5                                      str ip, [sp, #4]
006e7abc  2c 50 8d e5                                      str r5, [sp, #0x2c]
006e7ac0  30 50 8d e5                                      str r5, [sp, #0x30]
006e7ac4  34 50 8d e5                                      str r5, [sp, #0x34]
006e7ac8  10 50 8d e5                                      str r5, [sp, #0x10]
006e7acc  14 50 8d e5                                      str r5, [sp, #0x14]
006e7ad0  18 50 8d e5                                      str r5, [sp, #0x18]
006e7ad4  1c 70 8d e5                                      str r7, [sp, #0x1c]
006e7ad8  20 70 8d e5                                      str r7, [sp, #0x20]
006e7adc  24 70 8d e5                                      str r7, [sp, #0x24]
006e7ae0  28 70 8d e5                                      str r7, [sp, #0x28]
006e7ae4  75 c5 fa eb                                      bl #0x5990c0
006e7ae8  00 30 98 e5                                      ldr r3, [r8]
006e7aec  bf 04 a0 e3                                      mov r0, #0xbf000000
006e7af0  02 05 80 e2                                      add r0, r0, #0x800000
006e7af4  00 30 84 e5                                      str r3, [r4]
006e7af8  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006e7afc  10 10 98 e5                                      ldr r1, [r8, #0x10]
006e7b00  5b af 84 e2                                      add sl, r4, #0x16c
006e7b04  05 20 a0 e1                                      mov r2, r5
006e7b08  03 10 84 e7                                      str r1, [r4, r3]
006e7b0c  00 10 94 e5                                      ldr r1, [r4]
006e7b10  14 e0 98 e5                                      ldr lr, [r8, #0x14]
006e7b14  0a 30 a0 e1                                      mov r3, sl
006e7b18  0c c0 11 e5                                      ldr ip, [r1, #-0xc]
006e7b1c  7f 1f 84 e2                                      add r1, r4, #0x1fc
006e7b20  0c e0 84 e7                                      str lr, [r4, ip]
006e7b24  10 c0 96 e5                                      ldr ip, [r6, #0x10]
006e7b28  34 c1 84 e5                                      str ip, [r4, #0x134]
006e7b2c  14 c0 96 e5                                      ldr ip, [r6, #0x14]
006e7b30  38 c1 84 e5                                      str ip, [r4, #0x138]
006e7b34  18 c0 96 e5                                      ldr ip, [r6, #0x18]
006e7b38  3c c1 84 e5                                      str ip, [r4, #0x13c]
006e7b3c  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
006e7b40  58 01 84 e5                                      str r0, [r4, #0x158]
006e7b44  64 71 84 e5                                      str r7, [r4, #0x164]
006e7b48  40 c1 84 e5                                      str ip, [r4, #0x140]
006e7b4c  00 c0 a0 e3                                      mov ip, #0
006e7b50  68 c1 84 e5                                      str ip, [r4, #0x168]
006e7b54  48 51 84 e5                                      str r5, [r4, #0x148]
006e7b58  4c 51 84 e5                                      str r5, [r4, #0x14c]
006e7b5c  50 01 84 e5                                      str r0, [r4, #0x150]
006e7b60  54 01 84 e5                                      str r0, [r4, #0x154]
006e7b64  5c 71 84 e5                                      str r7, [r4, #0x15c]
006e7b68  60 71 84 e5                                      str r7, [r4, #0x160]
006e7b6c  00 20 83 e5                                      str r2, [r3]
006e7b70  04 20 83 e5                                      str r2, [r3, #4]
006e7b74  08 20 83 e5                                      str r2, [r3, #8]
006e7b78  0c 20 83 e5                                      str r2, [r3, #0xc]
006e7b7c  10 20 83 e5                                      str r2, [r3, #0x10]
006e7b80  14 20 83 e5                                      str r2, [r3, #0x14]
006e7b84  18 20 83 e5                                      str r2, [r3, #0x18]
006e7b88  1c 20 83 e5                                      str r2, [r3, #0x1c]
006e7b8c  24 30 83 e2                                      add r3, r3, #0x24
006e7b90  01 00 53 e1                                      cmp r3, r1
006e7b94  f4 ff ff 1a                                      bne #0x6e7b6c
006e7b98  00 30 a0 e3                                      mov r3, #0
006e7b9c  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e7ba0  64 30 9d e5                                      ldr r3, [sp, #0x64]
006e7ba4  04 00 a0 e1                                      mov r0, r4
006e7ba8  00 32 84 e5                                      str r3, [r4, #0x200]
006e7bac  04 10 96 e5                                      ldr r1, [r6, #4]
006e7bb0  93 c3 fa eb                                      bl #0x598a04
006e7bb4  20 20 d6 e5                                      ldrb r2, [r6, #0x20]
006e7bb8  fe 35 a0 e3                                      mov r3, #0x3f800000
006e7bbc  48 31 84 e5                                      str r3, [r4, #0x148]
006e7bc0  00 20 52 e2                                      subs r2, r2, #0
006e7bc4  01 20 a0 13                                      movne r2, #1
006e7bc8  44 21 c4 e5                                      strb r2, [r4, #0x144]
006e7bcc  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e7bd0  08 30 96 e5                                      ldr r3, [r6, #8]
006e7bd4  06 28 a0 e3                                      mov r2, #0x60000
006e7bd8  3c 00 8d e2                                      add r0, sp, #0x3c
006e7bdc  48 31 84 e5                                      str r3, [r4, #0x148]
006e7be0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006e7be4  01 10 a0 e3                                      mov r1, #1
006e7be8  4c 31 84 e5                                      str r3, [r4, #0x14c]
006e7bec  04 e6 fa eb                                      bl #0x5a1404
006e7bf0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
006e7bf4  00 00 53 e3                                      cmp r3, #0
006e7bf8  00 20 93 15                                      ldrne r2, [r3]
006e7bfc  01 20 82 12                                      addne r2, r2, #1
006e7c00  00 20 83 15                                      strne r2, [r3]
006e7c04  fc 51 94 e5                                      ldr r5, [r4, #0x1fc]
006e7c08  fc 31 84 e5                                      str r3, [r4, #0x1fc]
006e7c0c  00 00 55 e3                                      cmp r5, #0
006e7c10  04 00 00 0a                                      beq #0x6e7c28
006e7c14  00 30 95 e5                                      ldr r3, [r5]
006e7c18  01 30 43 e2                                      sub r3, r3, #1
006e7c1c  00 00 53 e3                                      cmp r3, #0
006e7c20  00 30 85 e5                                      str r3, [r5]
006e7c24  3e 00 00 0a                                      beq #0x6e7d24
006e7c28  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
006e7c2c  00 00 55 e3                                      cmp r5, #0
006e7c30  04 00 00 0a                                      beq #0x6e7c48
006e7c34  00 30 95 e5                                      ldr r3, [r5]
006e7c38  01 30 43 e2                                      sub r3, r3, #1
006e7c3c  00 00 53 e3                                      cmp r3, #0
006e7c40  00 30 85 e5                                      str r3, [r5]
006e7c44  3b 00 00 0a                                      beq #0x6e7d38
006e7c48  00 50 a0 e3                                      mov r5, #0
006e7c4c  90 30 a0 e3                                      mov r3, #0x90
006e7c50  00 30 8d e5                                      str r3, [sp]
006e7c54  38 60 8d e2                                      add r6, sp, #0x38
006e7c58  04 a0 8d e5                                      str sl, [sp, #4]
006e7c5c  08 50 8d e5                                      str r5, [sp, #8]
006e7c60  04 30 a0 e3                                      mov r3, #4
006e7c64  09 10 a0 e1                                      mov r1, sb
006e7c68  06 00 a0 e1                                      mov r0, r6
006e7c6c  05 20 a0 e1                                      mov r2, r5
006e7c70  00 c0 99 e5                                      ldr ip, [sb]
006e7c74  0f e0 a0 e1                                      mov lr, pc
006e7c78  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006e7c7c  06 10 a0 e1                                      mov r1, r6
006e7c80  00 20 e0 e3                                      mvn r2, #0
006e7c84  fc 01 94 e5                                      ldr r0, [r4, #0x1fc]
006e7c88  4c e6 fa eb                                      bl #0x5a15c0
006e7c8c  fc 31 94 e5                                      ldr r3, [r4, #0x1fc]
006e7c90  04 20 a0 e3                                      mov r2, #4
006e7c94  fe 15 a0 e3                                      mov r1, #0x3f800000
006e7c98  08 20 83 e5                                      str r2, [r3, #8]
006e7c9c  38 00 9d e5                                      ldr r0, [sp, #0x38]
006e7ca0  00 30 e0 e3                                      mvn r3, #0
006e7ca4  00 20 a0 e3                                      mov r2, #0
006e7ca8  05 00 50 e1                                      cmp r0, r5
006e7cac  c4 11 84 e5                                      str r1, [r4, #0x1c4]
006e7cb0  f8 31 c4 e5                                      strb r3, [r4, #0x1f8]
006e7cb4  e8 21 84 e5                                      str r2, [r4, #0x1e8]
006e7cb8  30 51 84 e5                                      str r5, [r4, #0x130]
006e7cbc  8f 31 c4 e5                                      strb r3, [r4, #0x18f]
006e7cc0  8e 31 c4 e5                                      strb r3, [r4, #0x18e]
006e7cc4  8d 31 c4 e5                                      strb r3, [r4, #0x18d]
006e7cc8  8c 31 c4 e5                                      strb r3, [r4, #0x18c]
006e7ccc  78 11 84 e5                                      str r1, [r4, #0x178]
006e7cd0  7c 11 84 e5                                      str r1, [r4, #0x17c]
006e7cd4  b3 31 c4 e5                                      strb r3, [r4, #0x1b3]
006e7cd8  b2 31 c4 e5                                      strb r3, [r4, #0x1b2]
006e7cdc  b1 31 c4 e5                                      strb r3, [r4, #0x1b1]
006e7ce0  b0 31 c4 e5                                      strb r3, [r4, #0x1b0]
006e7ce4  9c 11 84 e5                                      str r1, [r4, #0x19c]
006e7ce8  a0 21 84 e5                                      str r2, [r4, #0x1a0]
006e7cec  d7 31 c4 e5                                      strb r3, [r4, #0x1d7]
006e7cf0  d6 31 c4 e5                                      strb r3, [r4, #0x1d6]
006e7cf4  d5 31 c4 e5                                      strb r3, [r4, #0x1d5]
006e7cf8  d4 31 c4 e5                                      strb r3, [r4, #0x1d4]
006e7cfc  c0 21 84 e5                                      str r2, [r4, #0x1c0]
006e7d00  fb 31 c4 e5                                      strb r3, [r4, #0x1fb]
006e7d04  fa 31 c4 e5                                      strb r3, [r4, #0x1fa]
006e7d08  f9 31 c4 e5                                      strb r3, [r4, #0x1f9]
006e7d0c  e4 21 84 e5                                      str r2, [r4, #0x1e4]
006e7d10  00 00 00 0a                                      beq #0x6e7d18
006e7d14  1a d6 f0 eb                                      bl #0x31d584
006e7d18  04 00 a0 e1                                      mov r0, r4
006e7d1c  40 d0 8d e2                                      add sp, sp, #0x40
006e7d20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006e7d24  05 00 a0 e1                                      mov r0, r5
006e7d28  3b e3 fa eb                                      bl #0x5a0a1c
006e7d2c  05 00 a0 e1                                      mov r0, r5
006e7d30  5e 99 f0 eb                                      bl #0x30e2b0
006e7d34  bb ff ff ea                                      b #0x6e7c28
006e7d38  05 00 a0 e1                                      mov r0, r5
006e7d3c  36 e3 fa eb                                      bl #0x5a0a1c
006e7d40  05 00 a0 e1                                      mov r0, r5
006e7d44  59 99 f0 eb                                      bl #0x30e2b0
006e7d48  be ff ff ea                                      b #0x6e7c48

; FUNCTION 0x006e7d4c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZTv0_n24_N6glitch7collada17CCoronasSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e7d4c  00 30 90 e5                                      ldr r3, [r0]
006e7d50  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006e7d54  03 00 80 e0                                      add r0, r0, r3
006e7d58  da fc ff ea                                      b #0x6e70c8

; FUNCTION 0x006e7d5c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZTv0_n12_N6glitch7collada17CCoronasSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e7d5c  00 30 90 e5                                      ldr r3, [r0]
006e7d60  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e7d64  03 00 80 e0                                      add r0, r0, r3
006e7d68  d6 fc ff ea                                      b #0x6e70c8

; FUNCTION 0x006e7d6c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZTv0_n24_N6glitch7collada17CCoronasSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e7d6c  00 30 90 e5                                      ldr r3, [r0]
006e7d70  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006e7d74  03 00 80 e0                                      add r0, r0, r3
006e7d78  af fc ff ea                                      b #0x6e703c

; FUNCTION 0x006e7d7c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZTv0_n12_N6glitch7collada17CCoronasSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CCoronasSceneNode::~CCoronasSceneNode()
; decoder-mode: arm
006e7d7c  00 30 90 e5                                      ldr r3, [r0]
006e7d80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e7d84  03 00 80 e0                                      add r0, r0, r3
006e7d88  ab fc ff ea                                      b #0x6e703c

; FUNCTION 0x006e7d8c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZTv0_n20_N6glitch7collada17CCoronasSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CCoronasSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006e7d8c  00 30 90 e5                                      ldr r3, [r0]
006e7d90  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006e7d94  03 00 80 e0                                      add r0, r0, r3
006e7d98  5b f7 ff ea                                      b #0x6e5b0c

; FUNCTION 0x006e7d9c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CCoronasSceneNode
; alias: _ZTv0_n16_NK6glitch7collada17CCoronasSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CCoronasSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006e7d9c  00 30 90 e5                                      ldr r3, [r0]
006e7da0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006e7da4  03 00 80 e0                                      add r0, r0, r3
006e7da8  38 f7 ff ea                                      b #0x6e5a90
