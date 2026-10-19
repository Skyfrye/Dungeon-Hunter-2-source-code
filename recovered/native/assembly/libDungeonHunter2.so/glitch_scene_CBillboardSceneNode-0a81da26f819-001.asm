; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00580a24, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_NK6glitch5scene19CBillboardSceneNode7getTypeEv
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::getType() const
; decoder-mode: arm
00580a24  04 00 40 e2                                      sub r0, r0, #4
00580a28  ff ff ff ea                                      b #0x580a2c

; FUNCTION 0x00580a2c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZNK6glitch5scene19CBillboardSceneNode7getTypeEv
; demangled: glitch::scene::CBillboardSceneNode::getType() const
; decoder-mode: arm
00580a2c  62 09 06 e3                                      movw r0, #0x6962
00580a30  6c 0c 46 e3                                      movt r0, #0x6c6c
00580a34  1e ff 2f e1                                      bx lr

; FUNCTION 0x00580a38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19CBillboardSceneNode19onRegisterSceneNodeEv
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::onRegisterSceneNode()
; decoder-mode: arm
00580a38  04 00 40 e2                                      sub r0, r0, #4
00580a3c  ff ff ff ea                                      b #0x580a40

; FUNCTION 0x00580a40, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CBillboardSceneNode::onRegisterSceneNode()
; decoder-mode: arm
00580a40  04 e0 2d e5                                      str lr, [sp, #-4]!
00580a44  14 31 90 e5                                      ldr r3, [r0, #0x114]
00580a48  14 d0 4d e2                                      sub sp, sp, #0x14
00580a4c  00 10 a0 e1                                      mov r1, r0
00580a50  00 c0 93 e5                                      ldr ip, [r3]
00580a54  03 00 a0 e1                                      mov r0, r3
00580a58  03 30 a0 e3                                      mov r3, #3
00580a5c  00 30 8d e5                                      str r3, [sp]
00580a60  00 30 a0 e3                                      mov r3, #0
00580a64  04 30 8d e5                                      str r3, [sp, #4]
00580a68  02 31 e0 e3                                      mvn r3, #0x80000000
00580a6c  55 2f 81 e2                                      add r2, r1, #0x154
00580a70  08 30 8d e5                                      str r3, [sp, #8]
00580a74  04 10 81 e2                                      add r1, r1, #4
00580a78  01 30 a0 e3                                      mov r3, #1
00580a7c  0f e0 a0 e1                                      mov lr, pc
00580a80  24 f0 9c e5                                      ldr pc, [ip, #0x24]
00580a84  01 00 a0 e3                                      mov r0, #1
00580a88  14 d0 8d e2                                      add sp, sp, #0x14
00580a8c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00580a90, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_NK6glitch5scene19CBillboardSceneNode14getBoundingBoxEv
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::getBoundingBox() const
; decoder-mode: arm
00580a90  04 00 40 e2                                      sub r0, r0, #4
00580a94  ff ff ff ea                                      b #0x580a98

; FUNCTION 0x00580a98, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZNK6glitch5scene19CBillboardSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CBillboardSceneNode::getBoundingBox() const
; decoder-mode: arm
00580a98  4f 0f 80 e2                                      add r0, r0, #0x13c
00580a9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00580aa0, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode7setSizeERKNS_4core11dimension2dIfEE
; demangled: glitch::scene::CBillboardSceneNode::setSize(glitch::core::dimension2d<float> const&)
; decoder-mode: arm
00580aa0  70 40 2d e9                                      push {r4, r5, r6, lr}
00580aa4  00 30 91 e5                                      ldr r3, [r1]
00580aa8  01 50 a0 e1                                      mov r5, r1
00580aac  00 40 a0 e1                                      mov r4, r0
00580ab0  34 31 80 e5                                      str r3, [r0, #0x134]
00580ab4  04 30 95 e5                                      ldr r3, [r5, #4]
00580ab8  34 01 90 e5                                      ldr r0, [r0, #0x134]
00580abc  00 10 a0 e3                                      mov r1, #0
00580ac0  38 31 84 e5                                      str r3, [r4, #0x138]
00580ac4  30 35 f6 eb                                      bl #0x30df8c
00580ac8  00 00 50 e3                                      cmp r0, #0
00580acc  fe 35 a0 13                                      movne r3, #0x3f800000
00580ad0  34 31 84 15                                      strne r3, [r4, #0x134]
00580ad4  38 01 94 e5                                      ldr r0, [r4, #0x138]
00580ad8  00 10 a0 e3                                      mov r1, #0
00580adc  2a 35 f6 eb                                      bl #0x30df8c
00580ae0  00 00 50 e3                                      cmp r0, #0
00580ae4  fe 35 a0 13                                      movne r3, #0x3f800000
00580ae8  38 31 84 15                                      strne r3, [r4, #0x138]
00580aec  04 10 95 e5                                      ldr r1, [r5, #4]
00580af0  00 00 95 e5                                      ldr r0, [r5]
00580af4  2a 38 f6 eb                                      bl #0x30eba4
00580af8  01 11 a0 e3                                      mov r1, #0x40000000
00580afc  03 15 81 e2                                      add r1, r1, #0xc00000
00580b00  63 38 f6 eb                                      bl #0x30ec94
00580b04  02 31 80 e2                                      add r3, r0, #0x80000000
00580b08  50 01 84 e5                                      str r0, [r4, #0x150]
00580b0c  44 31 84 e5                                      str r3, [r4, #0x144]
00580b10  3c 31 84 e5                                      str r3, [r4, #0x13c]
00580b14  40 31 84 e5                                      str r3, [r4, #0x140]
00580b18  48 01 84 e5                                      str r0, [r4, #0x148]
00580b1c  4c 01 84 e5                                      str r0, [r4, #0x14c]
00580b20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00580b24, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode11getMaterialEj
; demangled: glitch::scene::CBillboardSceneNode::getMaterial(unsigned int)
; decoder-mode: arm
00580b24  55 0f 80 e2                                      add r0, r0, #0x154
00580b28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00580b2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_NK6glitch5scene19CBillboardSceneNode16getMaterialCountEv
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::getMaterialCount() const
; decoder-mode: arm
00580b2c  04 00 40 e2                                      sub r0, r0, #4
00580b30  ff ff ff ea                                      b #0x580b34

; FUNCTION 0x00580b34, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZNK6glitch5scene19CBillboardSceneNode16getMaterialCountEv
; demangled: glitch::scene::CBillboardSceneNode::getMaterialCount() const
; decoder-mode: arm
00580b34  01 00 a0 e3                                      mov r0, #1
00580b38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00580b3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZNK6glitch5scene19CBillboardSceneNode7getSizeEv
; demangled: glitch::scene::CBillboardSceneNode::getSize() const
; decoder-mode: arm
00580b3c  4d 0f 80 e2                                      add r0, r0, #0x134
00580b40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00580b44, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorE
; demangled: glitch::scene::CBillboardSceneNode::setColor(glitch::video::SColor const&)
; decoder-mode: arm
00580b44  70 40 2d e9                                      push {r4, r5, r6, lr}
00580b48  04 40 a0 e3                                      mov r4, #4
00580b4c  00 50 a0 e1                                      mov r5, r0
00580b50  01 60 a0 e1                                      mov r6, r1
00580b54  04 20 a0 e1                                      mov r2, r4
00580b58  5e 0f 80 e2                                      add r0, r0, #0x178
00580b5c  41 37 f6 eb                                      bl #0x30e868
00580b60  06 10 a0 e1                                      mov r1, r6
00580b64  04 20 a0 e1                                      mov r2, r4
00580b68  67 0f 85 e2                                      add r0, r5, #0x19c
00580b6c  3d 37 f6 eb                                      bl #0x30e868
00580b70  06 10 a0 e1                                      mov r1, r6
00580b74  04 20 a0 e1                                      mov r2, r4
00580b78  07 0d 85 e2                                      add r0, r5, #0x1c0
00580b7c  39 37 f6 eb                                      bl #0x30e868
00580b80  79 0f 85 e2                                      add r0, r5, #0x1e4
00580b84  06 10 a0 e1                                      mov r1, r6
00580b88  04 20 a0 e1                                      mov r2, r4
00580b8c  35 37 f6 eb                                      bl #0x30e868
00580b90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00580b94, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode8setColorERKNS_5video6SColorES5_
; demangled: glitch::scene::CBillboardSceneNode::setColor(glitch::video::SColor const&, glitch::video::SColor const&)
; decoder-mode: arm
00580b94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00580b98  04 40 a0 e3                                      mov r4, #4
00580b9c  02 60 a0 e1                                      mov r6, r2
00580ba0  00 50 a0 e1                                      mov r5, r0
00580ba4  01 70 a0 e1                                      mov r7, r1
00580ba8  04 20 a0 e1                                      mov r2, r4
00580bac  06 10 a0 e1                                      mov r1, r6
00580bb0  5e 0f 80 e2                                      add r0, r0, #0x178
00580bb4  2b 37 f6 eb                                      bl #0x30e868
00580bb8  07 10 a0 e1                                      mov r1, r7
00580bbc  04 20 a0 e1                                      mov r2, r4
00580bc0  67 0f 85 e2                                      add r0, r5, #0x19c
00580bc4  27 37 f6 eb                                      bl #0x30e868
00580bc8  07 10 a0 e1                                      mov r1, r7
00580bcc  04 20 a0 e1                                      mov r2, r4
00580bd0  07 0d 85 e2                                      add r0, r5, #0x1c0
00580bd4  23 37 f6 eb                                      bl #0x30e868
00580bd8  79 0f 85 e2                                      add r0, r5, #0x1e4
00580bdc  06 10 a0 e1                                      mov r1, r6
00580be0  04 20 a0 e1                                      mov r2, r4
00580be4  1f 37 f6 eb                                      bl #0x30e868
00580be8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00580bec, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZNK6glitch5scene19CBillboardSceneNode8getColorERNS_5video6SColorES4_
; demangled: glitch::scene::CBillboardSceneNode::getColor(glitch::video::SColor&, glitch::video::SColor&) const
; decoder-mode: arm
00580bec  70 40 2d e9                                      push {r4, r5, r6, lr}
00580bf0  00 50 a0 e1                                      mov r5, r0
00580bf4  04 40 a0 e3                                      mov r4, #4
00580bf8  01 60 a0 e1                                      mov r6, r1
00580bfc  02 00 a0 e1                                      mov r0, r2
00580c00  5e 1f 85 e2                                      add r1, r5, #0x178
00580c04  04 20 a0 e1                                      mov r2, r4
00580c08  16 37 f6 eb                                      bl #0x30e868
00580c0c  06 00 a0 e1                                      mov r0, r6
00580c10  67 1f 85 e2                                      add r1, r5, #0x19c
00580c14  04 20 a0 e1                                      mov r2, r4
00580c18  12 37 f6 eb                                      bl #0x30e868
00580c1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00580c40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_NK6glitch5scene19CBillboardSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00580c40  04 00 40 e2                                      sub r0, r0, #4
00580c44  ff ff ff ea                                      b #0x580c48

; FUNCTION 0x00580c48, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZNK6glitch5scene19CBillboardSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CBillboardSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00580c48  70 40 2d e9                                      push {r4, r5, r6, lr}
00580c4c  00 50 a0 e1                                      mov r5, r0
00580c50  04 00 80 e2                                      add r0, r0, #4
00580c54  01 40 a0 e1                                      mov r4, r1
00580c58  91 59 00 eb                                      bl #0x5972a4
00580c5c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00580c60  04 00 a0 e1                                      mov r0, r4
00580c64  34 21 95 e5                                      ldr r2, [r5, #0x134]
00580c68  00 c0 94 e5                                      ldr ip, [r4]
00580c6c  01 10 8f e0                                      add r1, pc, r1
00580c70  00 30 a0 e3                                      mov r3, #0
00580c74  0f e0 a0 e1                                      mov lr, pc
00580c78  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00580c7c  60 10 9f e5                                      ldr r1, [pc, #0x60]
00580c80  04 00 a0 e1                                      mov r0, r4
00580c84  38 21 95 e5                                      ldr r2, [r5, #0x138]
00580c88  00 c0 94 e5                                      ldr ip, [r4]
00580c8c  01 10 8f e0                                      add r1, pc, r1
00580c90  00 30 a0 e3                                      mov r3, #0
00580c94  0f e0 a0 e1                                      mov lr, pc
00580c98  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00580c9c  44 10 9f e5                                      ldr r1, [pc, #0x44]
00580ca0  04 00 a0 e1                                      mov r0, r4
00580ca4  9c 21 95 e5                                      ldr r2, [r5, #0x19c]
00580ca8  00 c0 94 e5                                      ldr ip, [r4]
00580cac  01 10 8f e0                                      add r1, pc, r1
00580cb0  00 30 a0 e3                                      mov r3, #0
00580cb4  0f e0 a0 e1                                      mov lr, pc
00580cb8  18 f1 9c e5                                      ldr pc, [ip, #0x118]
00580cbc  28 10 9f e5                                      ldr r1, [pc, #0x28]
00580cc0  04 00 a0 e1                                      mov r0, r4
00580cc4  78 21 95 e5                                      ldr r2, [r5, #0x178]
00580cc8  01 10 8f e0                                      add r1, pc, r1
00580ccc  00 c0 94 e5                                      ldr ip, [r4]
00580cd0  00 30 a0 e3                                      mov r3, #0
00580cd4  0f e0 a0 e1                                      mov lr, pc
00580cd8  18 f1 9c e5                                      ldr pc, [ip, #0x118]
00580cdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00580ce0  f4 a6 36 00 e4 a6 36 00 a4 e6 35 00 98 e6 35 00  .byte 0xf4, 0xa6, 0x36, 0x00, 0xe4, 0xa6, 0x36, 0x00, 0xa4, 0xe6, 0x35, 0x00, 0x98, 0xe6, 0x35, 0x00

; FUNCTION 0x00580cf0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19CBillboardSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00580cf0  04 00 40 e2                                      sub r0, r0, #4
00580cf4  ff ff ff ea                                      b #0x580cf8

; FUNCTION 0x00580cf8, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CBillboardSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00580cf8  70 40 2d e9                                      push {r4, r5, r6, lr}
00580cfc  00 40 a0 e1                                      mov r4, r0
00580d00  04 00 80 e2                                      add r0, r0, #4
00580d04  01 50 a0 e1                                      mov r5, r1
00580d08  d2 5c 00 eb                                      bl #0x598058
00580d0c  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00580d10  00 30 95 e5                                      ldr r3, [r5]
00580d14  05 00 a0 e1                                      mov r0, r5
00580d18  01 10 8f e0                                      add r1, pc, r1
00580d1c  0f e0 a0 e1                                      mov lr, pc
00580d20  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00580d24  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00580d28  34 01 84 e5                                      str r0, [r4, #0x134]
00580d2c  00 30 95 e5                                      ldr r3, [r5]
00580d30  01 10 8f e0                                      add r1, pc, r1
00580d34  05 00 a0 e1                                      mov r0, r5
00580d38  0f e0 a0 e1                                      mov lr, pc
00580d3c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00580d40  84 10 9f e5                                      ldr r1, [pc, #0x84]
00580d44  38 01 84 e5                                      str r0, [r4, #0x138]
00580d48  00 30 95 e5                                      ldr r3, [r5]
00580d4c  01 10 8f e0                                      add r1, pc, r1
00580d50  05 00 a0 e1                                      mov r0, r5
00580d54  0f e0 a0 e1                                      mov lr, pc
00580d58  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00580d5c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00580d60  9d 11 c4 e5                                      strb r1, [r4, #0x19d]
00580d64  64 10 9f e5                                      ldr r1, [pc, #0x64]
00580d68  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00580d6c  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00580d70  9e 21 c4 e5                                      strb r2, [r4, #0x19e]
00580d74  9c 01 c4 e5                                      strb r0, [r4, #0x19c]
00580d78  9f 31 c4 e5                                      strb r3, [r4, #0x19f]
00580d7c  00 30 95 e5                                      ldr r3, [r5]
00580d80  01 10 8f e0                                      add r1, pc, r1
00580d84  05 00 a0 e1                                      mov r0, r5
00580d88  0f e0 a0 e1                                      mov lr, pc
00580d8c  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00580d90  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00580d94  50 14 e7 e7                                      ubfx r1, r0, #8, #8
00580d98  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00580d9c  79 11 c4 e5                                      strb r1, [r4, #0x179]
00580da0  78 01 c4 e5                                      strb r0, [r4, #0x178]
00580da4  7a 21 c4 e5                                      strb r2, [r4, #0x17a]
00580da8  7b 31 c4 e5                                      strb r3, [r4, #0x17b]
00580dac  04 10 a0 e1                                      mov r1, r4
00580db0  34 31 91 e4                                      ldr r3, [r1], #0x134
00580db4  04 00 a0 e1                                      mov r0, r4
00580db8  0f e0 a0 e1                                      mov lr, pc
00580dbc  08 f0 93 e5                                      ldr pc, [r3, #8]
00580dc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00580dc4  48 a6 36 00 40 a6 36 00 04 e6 35 00 e0 e5 35 00  .byte 0x48, 0xa6, 0x36, 0x00, 0x40, 0xa6, 0x36, 0x00, 0x04, 0xe6, 0x35, 0x00, 0xe0, 0xe5, 0x35, 0x00

; FUNCTION 0x00580e68, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode11setMaterialERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
; demangled: glitch::scene::CBillboardSceneNode::setMaterial(boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
00580e68  04 e0 2d e5                                      str lr, [sp, #-4]!
00580e6c  00 30 91 e5                                      ldr r3, [r1]
00580e70  0c d0 4d e2                                      sub sp, sp, #0xc
00580e74  04 30 8d e5                                      str r3, [sp, #4]
00580e78  00 00 53 e3                                      cmp r3, #0
00580e7c  00 20 93 15                                      ldrne r2, [r3]
00580e80  01 20 82 12                                      addne r2, r2, #1
00580e84  00 20 83 15                                      strne r2, [r3]
00580e88  54 11 90 e5                                      ldr r1, [r0, #0x154]
00580e8c  04 30 9d 15                                      ldrne r3, [sp, #4]
00580e90  08 20 8d e2                                      add r2, sp, #8
00580e94  54 31 80 e5                                      str r3, [r0, #0x154]
00580e98  04 10 22 e5                                      str r1, [r2, #-4]!
00580e9c  02 00 a0 e1                                      mov r0, r2
00580ea0  50 3f f6 eb                                      bl #0x310be8
00580ea4  0c d0 8d e2                                      add sp, sp, #0xc
00580ea8  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00580f50, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19CBillboardSceneNode6renderEPv
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::render(void*)
; decoder-mode: arm
00580f50  04 00 40 e2                                      sub r0, r0, #4
00580f54  ff ff ff ea                                      b #0x580f58

; FUNCTION 0x00580f58, declared_size=2036, range_size=2036, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode6renderEPv
; demangled: glitch::scene::CBillboardSceneNode::render(void*)
; decoder-mode: arm
00580f58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00580f5c  14 31 90 e5                                      ldr r3, [r0, #0x114]
00580f60  ec d0 4d e2                                      sub sp, sp, #0xec
00580f64  20 10 8d e5                                      str r1, [sp, #0x20]
00580f68  e4 70 93 e5                                      ldr r7, [r3, #0xe4]
00580f6c  14 50 93 e5                                      ldr r5, [r3, #0x14]
00580f70  cc 67 9f e5                                      ldr r6, [pc, #0x7cc]
00580f74  00 40 a0 e1                                      mov r4, r0
00580f78  00 00 57 e3                                      cmp r7, #0
00580f7c  00 00 55 13                                      cmpne r5, #0
00580f80  06 60 8f e0                                      add r6, pc, r6
00580f84  01 00 00 1a                                      bne #0x580f90
00580f88  ec d0 8d e2                                      add sp, sp, #0xec
00580f8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00580f90  d4 00 8d e2                                      add r0, sp, #0xd4
00580f94  04 10 84 e2                                      add r1, r4, #4
00580f98  78 58 00 eb                                      bl #0x597180
00580f9c  07 10 a0 e1                                      mov r1, r7
00580fa0  c8 00 8d e2                                      add r0, sp, #0xc8
00580fa4  75 58 00 eb                                      bl #0x597180
00580fa8  00 30 97 e5                                      ldr r3, [r7]
00580fac  07 00 a0 e1                                      mov r0, r7
00580fb0  0f e0 a0 e1                                      mov lr, pc
00580fb4  08 f1 93 e5                                      ldr pc, [r3, #0x108]
00580fb8  00 30 97 e5                                      ldr r3, [r7]
00580fbc  00 20 a0 e1                                      mov r2, r0
00580fc0  04 80 90 e5                                      ldr r8, [r0, #4]
00580fc4  07 00 a0 e1                                      mov r0, r7
00580fc8  08 90 92 e5                                      ldr sb, [r2, #8]
00580fcc  00 b0 92 e5                                      ldr fp, [r2]
00580fd0  0f e0 a0 e1                                      mov lr, pc
00580fd4  18 f1 93 e5                                      ldr pc, [r3, #0x118]
00580fd8  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
00580fdc  00 30 a0 e1                                      mov r3, r0
00580fe0  08 00 a0 e1                                      mov r0, r8
00580fe4  08 70 93 e5                                      ldr r7, [r3, #8]
00580fe8  00 80 93 e5                                      ldr r8, [r3]
00580fec  04 a0 93 e5                                      ldr sl, [r3, #4]
00580ff0  ed 34 f6 eb                                      bl #0x30e3ac
00580ff4  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
00580ff8  00 30 a0 e1                                      mov r3, r0
00580ffc  09 00 a0 e1                                      mov r0, sb
00581000  0c 30 8d e5                                      str r3, [sp, #0xc]
00581004  e8 34 f6 eb                                      bl #0x30e3ac
00581008  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0058100c  00 90 a0 e1                                      mov sb, r0
00581010  0b 00 a0 e1                                      mov r0, fp
00581014  e4 34 f6 eb                                      bl #0x30e3ac
00581018  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058101c  bc 00 8d e5                                      str r0, [sp, #0xbc]
00581020  bc 00 8d e2                                      add r0, sp, #0xbc
00581024  c0 30 8d e5                                      str r3, [sp, #0xc0]
00581028  c4 90 8d e5                                      str sb, [sp, #0xc4]
0058102c  2b 76 f7 eb                                      bl #0x35e8e0
00581030  c4 90 9d e5                                      ldr sb, [sp, #0xc4]
00581034  02 01 8a e2                                      add r0, sl, #0x80000000
00581038  09 10 a0 e1                                      mov r1, sb
0058103c  4a 37 f6 eb                                      bl #0x30ed6c
00581040  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00581044  00 b0 a0 e1                                      mov fp, r0
00581048  07 00 a0 e1                                      mov r0, r7
0058104c  46 37 f6 eb                                      bl #0x30ed6c
00581050  00 10 a0 e1                                      mov r1, r0
00581054  0b 00 a0 e1                                      mov r0, fp
00581058  d1 36 f6 eb                                      bl #0x30eba4
0058105c  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
00581060  00 b0 a0 e1                                      mov fp, r0
00581064  02 01 87 e2                                      add r0, r7, #0x80000000
00581068  02 10 a0 e1                                      mov r1, r2
0058106c  10 20 8d e5                                      str r2, [sp, #0x10]
00581070  3d 37 f6 eb                                      bl #0x30ed6c
00581074  09 10 a0 e1                                      mov r1, sb
00581078  00 30 a0 e1                                      mov r3, r0
0058107c  08 00 a0 e1                                      mov r0, r8
00581080  0c 30 8d e5                                      str r3, [sp, #0xc]
00581084  38 37 f6 eb                                      bl #0x30ed6c
00581088  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058108c  00 10 a0 e1                                      mov r1, r0
00581090  03 00 a0 e1                                      mov r0, r3
00581094  c2 36 f6 eb                                      bl #0x30eba4
00581098  02 11 88 e2                                      add r1, r8, #0x80000000
0058109c  00 90 a0 e1                                      mov sb, r0
005810a0  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005810a4  30 37 f6 eb                                      bl #0x30ed6c
005810a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
005810ac  00 30 a0 e1                                      mov r3, r0
005810b0  0a 00 a0 e1                                      mov r0, sl
005810b4  02 10 a0 e1                                      mov r1, r2
005810b8  0c 30 8d e5                                      str r3, [sp, #0xc]
005810bc  2a 37 f6 eb                                      bl #0x30ed6c
005810c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005810c4  00 10 a0 e1                                      mov r1, r0
005810c8  03 00 a0 e1                                      mov r0, r3
005810cc  b4 36 f6 eb                                      bl #0x30eba4
005810d0  0b 10 a0 e1                                      mov r1, fp
005810d4  00 30 a0 e1                                      mov r3, r0
005810d8  0b 00 a0 e1                                      mov r0, fp
005810dc  b8 30 8d e5                                      str r3, [sp, #0xb8]
005810e0  0c 30 8d e5                                      str r3, [sp, #0xc]
005810e4  b0 b0 8d e5                                      str fp, [sp, #0xb0]
005810e8  b4 90 8d e5                                      str sb, [sp, #0xb4]
005810ec  1e 37 f6 eb                                      bl #0x30ed6c
005810f0  09 10 a0 e1                                      mov r1, sb
005810f4  00 b0 a0 e1                                      mov fp, r0
005810f8  09 00 a0 e1                                      mov r0, sb
005810fc  1a 37 f6 eb                                      bl #0x30ed6c
00581100  00 10 a0 e1                                      mov r1, r0
00581104  0b 00 a0 e1                                      mov r0, fp
00581108  a5 36 f6 eb                                      bl #0x30eba4
0058110c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00581110  00 90 a0 e1                                      mov sb, r0
00581114  03 10 a0 e1                                      mov r1, r3
00581118  03 00 a0 e1                                      mov r0, r3
0058111c  12 37 f6 eb                                      bl #0x30ed6c
00581120  00 10 a0 e1                                      mov r1, r0
00581124  09 00 a0 e1                                      mov r0, sb
00581128  9d 36 f6 eb                                      bl #0x30eba4
0058112c  dc 35 f6 eb                                      bl #0x30e8a4
00581130  22 34 f6 eb                                      bl #0x30e1c0
00581134  59 35 f6 eb                                      bl #0x30e6a0
00581138  00 10 a0 e3                                      mov r1, #0
0058113c  92 33 f6 eb                                      bl #0x30df8c
00581140  00 00 50 e3                                      cmp r0, #0
00581144  b0 00 8d e2                                      add r0, sp, #0xb0
00581148  b0 a0 8d 15                                      strne sl, [sp, #0xb0]
0058114c  b4 80 8d 15                                      strne r8, [sp, #0xb4]
00581150  b8 70 8d 15                                      strne r7, [sp, #0xb8]
00581154  e1 75 f7 eb                                      bl #0x35e8e0
00581158  34 01 94 e5                                      ldr r0, [r4, #0x134]
0058115c  3f 14 a0 e3                                      mov r1, #0x3f000000
00581160  01 37 f6 eb                                      bl #0x30ed6c
00581164  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
00581168  00 a0 a0 e1                                      mov sl, r0
0058116c  fe 36 f6 eb                                      bl #0x30ed6c
00581170  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
00581174  00 80 a0 e1                                      mov r8, r0
00581178  0a 00 a0 e1                                      mov r0, sl
0058117c  b0 80 8d e5                                      str r8, [sp, #0xb0]
00581180  f9 36 f6 eb                                      bl #0x30ed6c
00581184  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
00581188  00 70 a0 e1                                      mov r7, r0
0058118c  0a 00 a0 e1                                      mov r0, sl
00581190  b4 70 8d e5                                      str r7, [sp, #0xb4]
00581194  f4 36 f6 eb                                      bl #0x30ed6c
00581198  c4 b0 9d e5                                      ldr fp, [sp, #0xc4]
0058119c  00 a0 a0 e1                                      mov sl, r0
005811a0  02 01 87 e2                                      add r0, r7, #0x80000000
005811a4  0b 10 a0 e1                                      mov r1, fp
005811a8  b8 a0 8d e5                                      str sl, [sp, #0xb8]
005811ac  ee 36 f6 eb                                      bl #0x30ed6c
005811b0  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
005811b4  00 90 a0 e1                                      mov sb, r0
005811b8  0a 00 a0 e1                                      mov r0, sl
005811bc  ea 36 f6 eb                                      bl #0x30ed6c
005811c0  00 10 a0 e1                                      mov r1, r0
005811c4  09 00 a0 e1                                      mov r0, sb
005811c8  75 36 f6 eb                                      bl #0x30eba4
005811cc  bc 90 9d e5                                      ldr sb, [sp, #0xbc]
005811d0  02 a1 8a e2                                      add sl, sl, #0x80000000
005811d4  a4 00 8d e5                                      str r0, [sp, #0xa4]
005811d8  09 10 a0 e1                                      mov r1, sb
005811dc  0a 00 a0 e1                                      mov r0, sl
005811e0  e1 36 f6 eb                                      bl #0x30ed6c
005811e4  0b 10 a0 e1                                      mov r1, fp
005811e8  00 a0 a0 e1                                      mov sl, r0
005811ec  08 00 a0 e1                                      mov r0, r8
005811f0  dd 36 f6 eb                                      bl #0x30ed6c
005811f4  00 10 a0 e1                                      mov r1, r0
005811f8  0a 00 a0 e1                                      mov r0, sl
005811fc  68 36 f6 eb                                      bl #0x30eba4
00581200  02 11 88 e2                                      add r1, r8, #0x80000000
00581204  a8 00 8d e5                                      str r0, [sp, #0xa8]
00581208  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
0058120c  d6 36 f6 eb                                      bl #0x30ed6c
00581210  09 10 a0 e1                                      mov r1, sb
00581214  00 80 a0 e1                                      mov r8, r0
00581218  07 00 a0 e1                                      mov r0, r7
0058121c  d2 36 f6 eb                                      bl #0x30ed6c
00581220  00 10 a0 e1                                      mov r1, r0
00581224  08 00 a0 e1                                      mov r0, r8
00581228  5d 36 f6 eb                                      bl #0x30eba4
0058122c  ac 00 8d e5                                      str r0, [sp, #0xac]
00581230  a4 00 8d e2                                      add r0, sp, #0xa4
00581234  a9 75 f7 eb                                      bl #0x35e8e0
00581238  38 01 94 e5                                      ldr r0, [r4, #0x138]
0058123c  3f 14 a0 e3                                      mov r1, #0x3f000000
00581240  c9 36 f6 eb                                      bl #0x30ed6c
00581244  00 80 a0 e1                                      mov r8, r0
00581248  00 10 a0 e1                                      mov r1, r0
0058124c  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00581250  c5 36 f6 eb                                      bl #0x30ed6c
00581254  08 10 a0 e1                                      mov r1, r8
00581258  00 70 a0 e1                                      mov r7, r0
0058125c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00581260  a4 70 8d e5                                      str r7, [sp, #0xa4]
00581264  c0 36 f6 eb                                      bl #0x30ed6c
00581268  08 10 a0 e1                                      mov r1, r8
0058126c  00 a0 a0 e1                                      mov sl, r0
00581270  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00581274  a8 a0 8d e5                                      str sl, [sp, #0xa8]
00581278  bb 36 f6 eb                                      bl #0x30ed6c
0058127c  bc c0 9d e5                                      ldr ip, [sp, #0xbc]
00581280  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
00581284  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00581288  02 c1 8c e2                                      add ip, ip, #0x80000000
0058128c  02 21 82 e2                                      add r2, r2, #0x80000000
00581290  02 31 83 e2                                      add r3, r3, #0x80000000
00581294  d8 c1 84 e5                                      str ip, [r4, #0x1d8]
00581298  dc 21 84 e5                                      str r2, [r4, #0x1dc]
0058129c  6c c1 84 e5                                      str ip, [r4, #0x16c]
005812a0  70 21 84 e5                                      str r2, [r4, #0x170]
005812a4  90 c1 84 e5                                      str ip, [r4, #0x190]
005812a8  94 21 84 e5                                      str r2, [r4, #0x194]
005812ac  b4 c1 84 e5                                      str ip, [r4, #0x1b4]
005812b0  b8 21 84 e5                                      str r2, [r4, #0x1b8]
005812b4  e0 31 84 e5                                      str r3, [r4, #0x1e0]
005812b8  74 31 84 e5                                      str r3, [r4, #0x174]
005812bc  98 31 84 e5                                      str r3, [r4, #0x198]
005812c0  bc 31 84 e5                                      str r3, [r4, #0x1bc]
005812c4  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
005812c8  00 80 a0 e1                                      mov r8, r0
005812cc  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005812d0  bc c0 8d e5                                      str ip, [sp, #0xbc]
005812d4  c0 20 8d e5                                      str r2, [sp, #0xc0]
005812d8  c4 30 8d e5                                      str r3, [sp, #0xc4]
005812dc  ac 80 8d e5                                      str r8, [sp, #0xac]
005812e0  2f 36 f6 eb                                      bl #0x30eba4
005812e4  07 10 a0 e1                                      mov r1, r7
005812e8  1c 00 8d e5                                      str r0, [sp, #0x1c]
005812ec  2c 36 f6 eb                                      bl #0x30eba4
005812f0  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
005812f4  18 00 8d e5                                      str r0, [sp, #0x18]
005812f8  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
005812fc  28 36 f6 eb                                      bl #0x30eba4
00581300  0a 10 a0 e1                                      mov r1, sl
00581304  0c 00 8d e5                                      str r0, [sp, #0xc]
00581308  25 36 f6 eb                                      bl #0x30eba4
0058130c  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
00581310  00 b0 a0 e1                                      mov fp, r0
00581314  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
00581318  21 36 f6 eb                                      bl #0x30eba4
0058131c  08 10 a0 e1                                      mov r1, r8
00581320  10 00 8d e5                                      str r0, [sp, #0x10]
00581324  1e 36 f6 eb                                      bl #0x30eba4
00581328  18 10 9d e5                                      ldr r1, [sp, #0x18]
0058132c  60 01 84 e5                                      str r0, [r4, #0x160]
00581330  5c b1 84 e5                                      str fp, [r4, #0x15c]
00581334  58 11 84 e5                                      str r1, [r4, #0x158]
00581338  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0058133c  0a 10 a0 e1                                      mov r1, sl
00581340  00 90 a0 e1                                      mov sb, r0
00581344  03 00 a0 e1                                      mov r0, r3
00581348  17 34 f6 eb                                      bl #0x30e3ac
0058134c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00581350  00 c0 a0 e1                                      mov ip, r0
00581354  08 10 a0 e1                                      mov r1, r8
00581358  02 00 a0 e1                                      mov r0, r2
0058135c  14 c0 8d e5                                      str ip, [sp, #0x14]
00581360  11 34 f6 eb                                      bl #0x30e3ac
00581364  07 10 a0 e1                                      mov r1, r7
00581368  00 30 a0 e1                                      mov r3, r0
0058136c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00581370  0c 30 8d e5                                      str r3, [sp, #0xc]
00581374  0c 34 f6 eb                                      bl #0x30e3ac
00581378  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0058137c  7c 01 84 e5                                      str r0, [r4, #0x17c]
00581380  80 c1 84 e5                                      str ip, [r4, #0x180]
00581384  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00581388  84 31 84 e5                                      str r3, [r4, #0x184]
0058138c  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
00581390  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
00581394  04 34 f6 eb                                      bl #0x30e3ac
00581398  0a 10 a0 e1                                      mov r1, sl
0058139c  14 00 8d e5                                      str r0, [sp, #0x14]
005813a0  01 34 f6 eb                                      bl #0x30e3ac
005813a4  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
005813a8  00 30 a0 e1                                      mov r3, r0
005813ac  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
005813b0  0c 30 8d e5                                      str r3, [sp, #0xc]
005813b4  fc 33 f6 eb                                      bl #0x30e3ac
005813b8  08 10 a0 e1                                      mov r1, r8
005813bc  1c 00 8d e5                                      str r0, [sp, #0x1c]
005813c0  f9 33 f6 eb                                      bl #0x30e3ac
005813c4  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
005813c8  00 20 a0 e1                                      mov r2, r0
005813cc  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005813d0  10 20 8d e5                                      str r2, [sp, #0x10]
005813d4  f4 33 f6 eb                                      bl #0x30e3ac
005813d8  07 10 a0 e1                                      mov r1, r7
005813dc  24 00 8d e5                                      str r0, [sp, #0x24]
005813e0  f1 33 f6 eb                                      bl #0x30e3ac
005813e4  c4 01 84 e5                                      str r0, [r4, #0x1c4]
005813e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005813ec  0a 10 a0 e1                                      mov r1, sl
005813f0  c8 31 84 e5                                      str r3, [r4, #0x1c8]
005813f4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005813f8  cc 21 84 e5                                      str r2, [r4, #0x1cc]
005813fc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00581400  0c 00 a0 e1                                      mov r0, ip
00581404  e6 35 f6 eb                                      bl #0x30eba4
00581408  08 10 a0 e1                                      mov r1, r8
0058140c  00 a0 a0 e1                                      mov sl, r0
00581410  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00581414  e2 35 f6 eb                                      bl #0x30eba4
00581418  07 10 a0 e1                                      mov r1, r7
0058141c  00 80 a0 e1                                      mov r8, r0
00581420  24 00 9d e5                                      ldr r0, [sp, #0x24]
00581424  de 35 f6 eb                                      bl #0x30eba4
00581428  a4 a1 84 e5                                      str sl, [r4, #0x1a4]
0058142c  a0 01 84 e5                                      str r0, [r4, #0x1a0]
00581430  a8 81 84 e5                                      str r8, [r4, #0x1a8]
00581434  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
00581438  0b 00 a0 e1                                      mov r0, fp
0058143c  da 33 f6 eb                                      bl #0x30e3ac
00581440  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
00581444  00 70 a0 e1                                      mov r7, r0
00581448  09 00 a0 e1                                      mov r0, sb
0058144c  d6 33 f6 eb                                      bl #0x30e3ac
00581450  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
00581454  00 80 a0 e1                                      mov r8, r0
00581458  18 00 9d e5                                      ldr r0, [sp, #0x18]
0058145c  d2 33 f6 eb                                      bl #0x30e3ac
00581460  bc a0 84 e2                                      add sl, r4, #0xbc
00581464  98 20 8d e2                                      add r2, sp, #0x98
00581468  98 00 8d e5                                      str r0, [sp, #0x98]
0058146c  0a 10 a0 e1                                      mov r1, sl
00581470  8c 00 8d e2                                      add r0, sp, #0x8c
00581474  9c 70 8d e5                                      str r7, [sp, #0x9c]
00581478  a0 80 8d e5                                      str r8, [sp, #0xa0]
0058147c  03 6a f7 eb                                      bl #0x35bc90
00581480  90 10 9d e5                                      ldr r1, [sp, #0x90]
00581484  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
00581488  c5 35 f6 eb                                      bl #0x30eba4
0058148c  94 10 9d e5                                      ldr r1, [sp, #0x94]
00581490  00 80 a0 e1                                      mov r8, r0
00581494  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
00581498  c1 35 f6 eb                                      bl #0x30eba4
0058149c  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
005814a0  00 70 a0 e1                                      mov r7, r0
005814a4  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005814a8  bd 35 f6 eb                                      bl #0x30eba4
005814ac  5c 81 84 e5                                      str r8, [r4, #0x15c]
005814b0  58 01 84 e5                                      str r0, [r4, #0x158]
005814b4  60 71 84 e5                                      str r7, [r4, #0x160]
005814b8  80 01 94 e5                                      ldr r0, [r4, #0x180]
005814bc  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005814c0  b9 33 f6 eb                                      bl #0x30e3ac
005814c4  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005814c8  00 80 a0 e1                                      mov r8, r0
005814cc  84 01 94 e5                                      ldr r0, [r4, #0x184]
005814d0  b5 33 f6 eb                                      bl #0x30e3ac
005814d4  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
005814d8  00 70 a0 e1                                      mov r7, r0
005814dc  7c 01 94 e5                                      ldr r0, [r4, #0x17c]
005814e0  b1 33 f6 eb                                      bl #0x30e3ac
005814e4  80 20 8d e2                                      add r2, sp, #0x80
005814e8  80 00 8d e5                                      str r0, [sp, #0x80]
005814ec  0a 10 a0 e1                                      mov r1, sl
005814f0  74 00 8d e2                                      add r0, sp, #0x74
005814f4  84 80 8d e5                                      str r8, [sp, #0x84]
005814f8  88 70 8d e5                                      str r7, [sp, #0x88]
005814fc  e3 69 f7 eb                                      bl #0x35bc90
00581500  78 10 9d e5                                      ldr r1, [sp, #0x78]
00581504  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
00581508  a5 35 f6 eb                                      bl #0x30eba4
0058150c  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
00581510  00 80 a0 e1                                      mov r8, r0
00581514  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
00581518  a1 35 f6 eb                                      bl #0x30eba4
0058151c  74 10 9d e5                                      ldr r1, [sp, #0x74]
00581520  00 70 a0 e1                                      mov r7, r0
00581524  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
00581528  9d 35 f6 eb                                      bl #0x30eba4
0058152c  80 81 84 e5                                      str r8, [r4, #0x180]
00581530  7c 01 84 e5                                      str r0, [r4, #0x17c]
00581534  84 71 84 e5                                      str r7, [r4, #0x184]
00581538  c8 01 94 e5                                      ldr r0, [r4, #0x1c8]
0058153c  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
00581540  99 33 f6 eb                                      bl #0x30e3ac
00581544  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
00581548  00 80 a0 e1                                      mov r8, r0
0058154c  cc 01 94 e5                                      ldr r0, [r4, #0x1cc]
00581550  95 33 f6 eb                                      bl #0x30e3ac
00581554  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
00581558  00 70 a0 e1                                      mov r7, r0
0058155c  c4 01 94 e5                                      ldr r0, [r4, #0x1c4]
00581560  91 33 f6 eb                                      bl #0x30e3ac
00581564  68 20 8d e2                                      add r2, sp, #0x68
00581568  68 00 8d e5                                      str r0, [sp, #0x68]
0058156c  0a 10 a0 e1                                      mov r1, sl
00581570  5c 00 8d e2                                      add r0, sp, #0x5c
00581574  6c 80 8d e5                                      str r8, [sp, #0x6c]
00581578  70 70 8d e5                                      str r7, [sp, #0x70]
0058157c  c3 69 f7 eb                                      bl #0x35bc90
00581580  60 10 9d e5                                      ldr r1, [sp, #0x60]
00581584  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
00581588  85 35 f6 eb                                      bl #0x30eba4
0058158c  64 10 9d e5                                      ldr r1, [sp, #0x64]
00581590  00 80 a0 e1                                      mov r8, r0
00581594  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
00581598  81 35 f6 eb                                      bl #0x30eba4
0058159c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005815a0  00 70 a0 e1                                      mov r7, r0
005815a4  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005815a8  7d 35 f6 eb                                      bl #0x30eba4
005815ac  c8 81 84 e5                                      str r8, [r4, #0x1c8]
005815b0  c4 01 84 e5                                      str r0, [r4, #0x1c4]
005815b4  cc 71 84 e5                                      str r7, [r4, #0x1cc]
005815b8  a4 01 94 e5                                      ldr r0, [r4, #0x1a4]
005815bc  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
005815c0  79 33 f6 eb                                      bl #0x30e3ac
005815c4  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005815c8  00 80 a0 e1                                      mov r8, r0
005815cc  a8 01 94 e5                                      ldr r0, [r4, #0x1a8]
005815d0  75 33 f6 eb                                      bl #0x30e3ac
005815d4  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
005815d8  00 70 a0 e1                                      mov r7, r0
005815dc  a0 01 94 e5                                      ldr r0, [r4, #0x1a0]
005815e0  71 33 f6 eb                                      bl #0x30e3ac
005815e4  50 20 8d e2                                      add r2, sp, #0x50
005815e8  50 00 8d e5                                      str r0, [sp, #0x50]
005815ec  0a 10 a0 e1                                      mov r1, sl
005815f0  44 00 8d e2                                      add r0, sp, #0x44
005815f4  54 80 8d e5                                      str r8, [sp, #0x54]
005815f8  58 70 8d e5                                      str r7, [sp, #0x58]
005815fc  a3 69 f7 eb                                      bl #0x35bc90
00581600  48 10 9d e5                                      ldr r1, [sp, #0x48]
00581604  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
00581608  65 35 f6 eb                                      bl #0x30eba4
0058160c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00581610  00 80 a0 e1                                      mov r8, r0
00581614  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
00581618  61 35 f6 eb                                      bl #0x30eba4
0058161c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00581620  00 70 a0 e1                                      mov r7, r0
00581624  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
00581628  5d 35 f6 eb                                      bl #0x30eba4
0058162c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00581630  a0 01 84 e5                                      str r0, [r4, #0x1a0]
00581634  a4 81 84 e5                                      str r8, [r4, #0x1a4]
00581638  00 00 52 e3                                      cmp r2, #0
0058163c  a8 71 84 e5                                      str r7, [r4, #0x1a8]
00581640  50 fe ff 0a                                      beq #0x580f88
00581644  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
00581648  05 00 a0 e1                                      mov r0, r5
0058164c  00 30 95 e5                                      ldr r3, [r5]
00581650  02 20 96 e7                                      ldr r2, [r6, r2]
00581654  01 10 a0 e3                                      mov r1, #1
00581658  0f e0 a0 e1                                      mov lr, pc
0058165c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00581660  54 01 94 e5                                      ldr r0, [r4, #0x154]
00581664  55 6f 84 e2                                      add r6, r4, #0x154
00581668  00 00 50 e3                                      cmp r0, #0
0058166c  ff 20 a0 03                                      moveq r2, #0xff
00581670  01 00 00 0a                                      beq #0x58167c
00581674  ae 11 01 eb                                      bl #0x5c5d34
00581678  00 20 a0 e1                                      mov r2, r0
0058167c  06 10 a0 e1                                      mov r1, r6
00581680  05 00 a0 e1                                      mov r0, r5
00581684  00 30 a0 e3                                      mov r3, #0
00581688  36 af 00 eb                                      bl #0x5ad368
0058168c  e8 31 94 e5                                      ldr r3, [r4, #0x1e8]
00581690  ff 10 a0 e3                                      mov r1, #0xff
00581694  05 00 a0 e1                                      mov r0, r5
00581698  00 00 53 e3                                      cmp r3, #0
0058169c  e4 30 8d e5                                      str r3, [sp, #0xe4]
005816a0  00 20 93 15                                      ldrne r2, [r3]
005816a4  01 20 82 12                                      addne r2, r2, #1
005816a8  00 20 83 15                                      strne r2, [r3]
005816ac  00 30 a0 e3                                      mov r3, #0
005816b0  04 20 a0 e3                                      mov r2, #4
005816b4  b0 14 cd e1                                      strh r1, [sp, #0x40]
005816b8  b2 24 cd e1                                      strh r2, [sp, #0x42]
005816bc  2c 30 8d e5                                      str r3, [sp, #0x2c]
005816c0  30 30 8d e5                                      str r3, [sp, #0x30]
005816c4  34 20 8d e5                                      str r2, [sp, #0x34]
005816c8  38 30 8d e5                                      str r3, [sp, #0x38]
005816cc  3c 20 8d e5                                      str r2, [sp, #0x3c]
005816d0  00 20 95 e5                                      ldr r2, [r5]
005816d4  e4 10 8d e2                                      add r1, sp, #0xe4
005816d8  58 c0 92 e5                                      ldr ip, [r2, #0x58]
005816dc  e0 20 8d e2                                      add r2, sp, #0xe0
005816e0  00 20 8d e5                                      str r2, [sp]
005816e4  e0 30 8d e5                                      str r3, [sp, #0xe0]
005816e8  2c 20 8d e2                                      add r2, sp, #0x2c
005816ec  3c ff 2f e1                                      blx ip
005816f0  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
005816f4  00 00 50 e3                                      cmp r0, #0
005816f8  00 00 00 0a                                      beq #0x581700
005816fc  a0 6f f6 eb                                      bl #0x31d584
00581700  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00581704  00 00 50 e3                                      cmp r0, #0
00581708  00 00 00 0a                                      beq #0x581710
0058170c  9c 6f f6 eb                                      bl #0x31d584
00581710  e4 40 9d e5                                      ldr r4, [sp, #0xe4]
00581714  00 00 54 e3                                      cmp r4, #0
00581718  1a fe ff 0a                                      beq #0x580f88
0058171c  00 30 94 e5                                      ldr r3, [r4]
00581720  01 30 43 e2                                      sub r3, r3, #1
00581724  00 00 53 e3                                      cmp r3, #0
00581728  00 30 84 e5                                      str r3, [r4]
0058172c  15 fe ff 1a                                      bne #0x580f88
00581730  04 00 a0 e1                                      mov r0, r4
00581734  b8 7c 00 eb                                      bl #0x5a0a1c
00581738  04 00 a0 e1                                      mov r0, r4
0058173c  db 32 f6 eb                                      bl #0x30e2b0
00581740  10 fe ff ea                                      b #0x580f88
; mapping-symbol data/literal pool
00581744  10 3b 41 00 30 28 00 00                          .byte 0x10, 0x3b, 0x41, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x005817d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19CBillboardSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005817d4  04 00 40 e2                                      sub r0, r0, #4
005817d8  ff ff ff ea                                      b #0x5817dc

; FUNCTION 0x005817dc, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNodeD1Ev
; demangled: glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005817dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005817e0  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
005817e4  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
005817e8  e8 61 90 e5                                      ldr r6, [r0, #0x1e8]
005817ec  05 50 8f e0                                      add r5, pc, r5
005817f0  03 30 95 e7                                      ldr r3, [r5, r3]
005817f4  00 00 56 e3                                      cmp r6, #0
005817f8  00 40 a0 e1                                      mov r4, r0
005817fc  17 2e 83 e2                                      add r2, r3, #0x170
00581800  10 10 83 e2                                      add r1, r3, #0x10
00581804  6c 30 83 e2                                      add r3, r3, #0x6c
00581808  0a 00 80 e8                                      stm r0, {r1, r3}
0058180c  ec 21 80 e5                                      str r2, [r0, #0x1ec]
00581810  04 00 00 0a                                      beq #0x581828
00581814  00 30 96 e5                                      ldr r3, [r6]
00581818  01 30 43 e2                                      sub r3, r3, #1
0058181c  00 00 53 e3                                      cmp r3, #0
00581820  00 30 86 e5                                      str r3, [r6]
00581824  13 00 00 0a                                      beq #0x581878
00581828  55 0f 84 e2                                      add r0, r4, #0x154
0058182c  ed 3c f6 eb                                      bl #0x310be8
00581830  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00581834  04 00 84 e2                                      add r0, r4, #4
00581838  03 10 95 e7                                      ldr r1, [r5, r3]
0058183c  04 30 91 e5                                      ldr r3, [r1, #4]
00581840  14 20 91 e5                                      ldr r2, [r1, #0x14]
00581844  18 c0 91 e5                                      ldr ip, [r1, #0x18]
00581848  00 30 84 e5                                      str r3, [r4]
0058184c  04 20 84 e5                                      str r2, [r4, #4]
00581850  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00581854  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00581858  08 10 81 e2                                      add r1, r1, #8
0058185c  03 c0 84 e7                                      str ip, [r4, r3]
00581860  00 30 94 e5                                      ldr r3, [r4]
00581864  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00581868  03 20 84 e7                                      str r2, [r4, r3]
0058186c  12 5d 00 eb                                      bl #0x598cbc
00581870  04 00 a0 e1                                      mov r0, r4
00581874  70 80 bd e8                                      pop {r4, r5, r6, pc}
00581878  06 00 a0 e1                                      mov r0, r6
0058187c  66 7c 00 eb                                      bl #0x5a0a1c
00581880  06 00 a0 e1                                      mov r0, r6
00581884  89 32 f6 eb                                      bl #0x30e2b0
00581888  e6 ff ff ea                                      b #0x581828
; mapping-symbol data/literal pool
0058188c  a4 32 41 00 f8 3f 00 00 ec 19 00 00              .byte 0xa4, 0x32, 0x41, 0x00, 0xf8, 0x3f, 0x00, 0x00, 0xec, 0x19, 0x00, 0x00

; FUNCTION 0x00581898, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZTv0_n24_N6glitch5scene19CBillboardSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
00581898  00 30 90 e5                                      ldr r3, [r0]
0058189c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005818a0  03 00 80 e0                                      add r0, r0, r3
005818a4  cc ff ff ea                                      b #0x5817dc

; FUNCTION 0x005818a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZTv0_n12_N6glitch5scene19CBillboardSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005818a8  00 30 90 e5                                      ldr r3, [r0]
005818ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005818b0  03 00 80 e0                                      add r0, r0, r3
005818b4  c8 ff ff ea                                      b #0x5817dc

; FUNCTION 0x005818b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19CBillboardSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005818b8  04 00 40 e2                                      sub r0, r0, #4
005818bc  ff ff ff ea                                      b #0x5818c0

; FUNCTION 0x005818c0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNodeD0Ev
; demangled: glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005818c0  10 40 2d e9                                      push {r4, lr}
005818c4  00 40 a0 e1                                      mov r4, r0
005818c8  c3 ff ff eb                                      bl #0x5817dc
005818cc  04 00 a0 e1                                      mov r0, r4
005818d0  76 32 f6 eb                                      bl #0x30e2b0
005818d4  04 00 a0 e1                                      mov r0, r4
005818d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005818dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZTv0_n24_N6glitch5scene19CBillboardSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005818dc  00 30 90 e5                                      ldr r3, [r0]
005818e0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
005818e4  03 00 80 e0                                      add r0, r0, r3
005818e8  f4 ff ff ea                                      b #0x5818c0

; FUNCTION 0x005818ec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZTv0_n12_N6glitch5scene19CBillboardSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
005818ec  00 30 90 e5                                      ldr r3, [r0]
005818f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005818f4  03 00 80 e0                                      add r0, r0, r3
005818f8  f0 ff ff ea                                      b #0x5818c0

; FUNCTION 0x005818fc, declared_size=704, range_size=704, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNodeC1EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEERKNS5_11dimension2dIfEENS2_6SColorESE_
; demangled: glitch::scene::CBillboardSceneNode::CBillboardSceneNode(glitch::video::IVideoDriver*, int, glitch::core::vector3d<float> const&, glitch::core::dimension2d<float> const&, glitch::video::SColor, glitch::video::SColor)
; decoder-mode: arm
005818fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00581900  a4 52 9f e5                                      ldr r5, [pc, #0x2a4]
00581904  a4 c2 9f e5                                      ldr ip, [pc, #0x2a4]
00581908  a4 e2 9f e5                                      ldr lr, [pc, #0x2a4]
0058190c  05 50 8f e0                                      add r5, pc, r5
00581910  0c c0 95 e7                                      ldr ip, [r5, ip]
00581914  0e e0 95 e7                                      ldr lr, [r5, lr]
00581918  01 70 a0 e3                                      mov r7, #1
0058191c  2c 60 9c e5                                      ldr r6, [ip, #0x2c]
00581920  08 e0 8e e2                                      add lr, lr, #8
00581924  f0 71 80 e5                                      str r7, [r0, #0x1f0]
00581928  04 60 80 e5                                      str r6, [r0, #4]
0058192c  ec e1 80 e5                                      str lr, [r0, #0x1ec]
00581930  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
00581934  30 80 9c e5                                      ldr r8, [ip, #0x30]
00581938  04 60 80 e2                                      add r6, r0, #4
0058193c  2c d0 4d e2                                      sub sp, sp, #0x2c
00581940  0e 80 86 e7                                      str r8, [r6, lr]
00581944  01 70 a0 e1                                      mov r7, r1
00581948  04 10 8c e2                                      add r1, ip, #4
0058194c  54 c0 dd e5                                      ldrb ip, [sp, #0x54]
00581950  00 40 a0 e1                                      mov r4, r0
00581954  58 b0 dd e5                                      ldrb fp, [sp, #0x58]
00581958  1c c0 8d e5                                      str ip, [sp, #0x1c]
0058195c  55 c0 dd e5                                      ldrb ip, [sp, #0x55]
00581960  59 90 dd e5                                      ldrb sb, [sp, #0x59]
00581964  5a 80 dd e5                                      ldrb r8, [sp, #0x5a]
00581968  18 c0 8d e5                                      str ip, [sp, #0x18]
0058196c  56 c0 dd e5                                      ldrb ip, [sp, #0x56]
00581970  5b 60 dd e5                                      ldrb r6, [sp, #0x5b]
00581974  56 af 84 e2                                      add sl, r4, #0x158
00581978  14 c0 8d e5                                      str ip, [sp, #0x14]
0058197c  57 c0 dd e5                                      ldrb ip, [sp, #0x57]
00581980  10 c0 8d e5                                      str ip, [sp, #0x10]
00581984  48 fd ff eb                                      bl #0x580eac
00581988  28 32 9f e5                                      ldr r3, [pc, #0x228]
0058198c  bf 04 a0 e3                                      mov r0, #0xbf000000
00581990  fe 15 a0 e3                                      mov r1, #0x3f800000
00581994  03 30 95 e7                                      ldr r3, [r5, r3]
00581998  02 05 80 e2                                      add r0, r0, #0x800000
0058199c  00 20 a0 e3                                      mov r2, #0
005819a0  17 ce 83 e2                                      add ip, r3, #0x170
005819a4  10 e0 83 e2                                      add lr, r3, #0x10
005819a8  6c 30 83 e2                                      add r3, r3, #0x6c
005819ac  04 30 84 e5                                      str r3, [r4, #4]
005819b0  00 30 a0 e3                                      mov r3, #0
005819b4  50 11 84 e5                                      str r1, [r4, #0x150]
005819b8  54 31 84 e5                                      str r3, [r4, #0x154]
005819bc  48 11 84 e5                                      str r1, [r4, #0x148]
005819c0  4c 11 84 e5                                      str r1, [r4, #0x14c]
005819c4  00 e0 84 e5                                      str lr, [r4]
005819c8  ec c1 84 e5                                      str ip, [r4, #0x1ec]
005819cc  44 01 84 e5                                      str r0, [r4, #0x144]
005819d0  34 21 84 e5                                      str r2, [r4, #0x134]
005819d4  38 21 84 e5                                      str r2, [r4, #0x138]
005819d8  3c 01 84 e5                                      str r0, [r4, #0x13c]
005819dc  40 01 84 e5                                      str r0, [r4, #0x140]
005819e0  0a 30 a0 e1                                      mov r3, sl
005819e4  7a 1f 84 e2                                      add r1, r4, #0x1e8
005819e8  00 20 83 e5                                      str r2, [r3]
005819ec  04 20 83 e5                                      str r2, [r3, #4]
005819f0  08 20 83 e5                                      str r2, [r3, #8]
005819f4  0c 20 83 e5                                      str r2, [r3, #0xc]
005819f8  10 20 83 e5                                      str r2, [r3, #0x10]
005819fc  14 20 83 e5                                      str r2, [r3, #0x14]
00581a00  18 20 83 e5                                      str r2, [r3, #0x18]
00581a04  1c 20 83 e5                                      str r2, [r3, #0x1c]
00581a08  24 30 83 e2                                      add r3, r3, #0x24
00581a0c  01 00 53 e1                                      cmp r3, r1
00581a10  f4 ff ff 1a                                      bne #0x5819e8
00581a14  00 30 a0 e3                                      mov r3, #0
00581a18  e8 31 84 e5                                      str r3, [r4, #0x1e8]
00581a1c  50 10 9d e5                                      ldr r1, [sp, #0x50]
00581a20  04 00 a0 e1                                      mov r0, r4
00581a24  1d fc ff eb                                      bl #0x580aa0
00581a28  06 28 a0 e3                                      mov r2, #0x60000
00581a2c  24 00 8d e2                                      add r0, sp, #0x24
00581a30  01 10 a0 e3                                      mov r1, #1
00581a34  72 7e 00 eb                                      bl #0x5a1404
00581a38  24 30 9d e5                                      ldr r3, [sp, #0x24]
00581a3c  00 00 53 e3                                      cmp r3, #0
00581a40  00 20 93 15                                      ldrne r2, [r3]
00581a44  01 20 82 12                                      addne r2, r2, #1
00581a48  00 20 83 15                                      strne r2, [r3]
00581a4c  e8 51 94 e5                                      ldr r5, [r4, #0x1e8]
00581a50  e8 31 84 e5                                      str r3, [r4, #0x1e8]
00581a54  00 00 55 e3                                      cmp r5, #0
00581a58  04 00 00 0a                                      beq #0x581a70
00581a5c  00 30 95 e5                                      ldr r3, [r5]
00581a60  01 30 43 e2                                      sub r3, r3, #1
00581a64  00 00 53 e3                                      cmp r3, #0
00581a68  00 30 85 e5                                      str r3, [r5]
00581a6c  49 00 00 0a                                      beq #0x581b98
00581a70  24 50 9d e5                                      ldr r5, [sp, #0x24]
00581a74  00 00 55 e3                                      cmp r5, #0
00581a78  04 00 00 0a                                      beq #0x581a90
00581a7c  00 30 95 e5                                      ldr r3, [r5]
00581a80  01 30 43 e2                                      sub r3, r3, #1
00581a84  00 00 53 e3                                      cmp r3, #0
00581a88  00 30 85 e5                                      str r3, [r5]
00581a8c  3c 00 00 0a                                      beq #0x581b84
00581a90  00 30 a0 e3                                      mov r3, #0
00581a94  90 20 a0 e3                                      mov r2, #0x90
00581a98  00 20 8d e5                                      str r2, [sp]
00581a9c  08 30 8d e5                                      str r3, [sp, #8]
00581aa0  20 50 8d e2                                      add r5, sp, #0x20
00581aa4  04 a0 8d e5                                      str sl, [sp, #4]
00581aa8  03 20 a0 e1                                      mov r2, r3
00581aac  00 c0 97 e5                                      ldr ip, [r7]
00581ab0  04 30 a0 e3                                      mov r3, #4
00581ab4  07 10 a0 e1                                      mov r1, r7
00581ab8  05 00 a0 e1                                      mov r0, r5
00581abc  0f e0 a0 e1                                      mov lr, pc
00581ac0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00581ac4  05 10 a0 e1                                      mov r1, r5
00581ac8  00 20 e0 e3                                      mvn r2, #0
00581acc  e8 01 94 e5                                      ldr r0, [r4, #0x1e8]
00581ad0  ba 7e 00 eb                                      bl #0x5a15c0
00581ad4  e8 31 94 e5                                      ldr r3, [r4, #0x1e8]
00581ad8  04 10 a0 e3                                      mov r1, #4
00581adc  fe 25 a0 e3                                      mov r2, #0x3f800000
00581ae0  08 10 83 e5                                      str r1, [r3, #8]
00581ae4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00581ae8  20 00 9d e5                                      ldr r0, [sp, #0x20]
00581aec  00 30 a0 e3                                      mov r3, #0
00581af0  e7 11 c4 e5                                      strb r1, [r4, #0x1e7]
00581af4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00581af8  00 00 50 e3                                      cmp r0, #0
00581afc  e6 c1 c4 e5                                      strb ip, [r4, #0x1e6]
00581b00  18 10 9d e5                                      ldr r1, [sp, #0x18]
00581b04  e5 11 c4 e5                                      strb r1, [r4, #0x1e5]
00581b08  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00581b0c  ac 31 84 e5                                      str r3, [r4, #0x1ac]
00581b10  b0 21 84 e5                                      str r2, [r4, #0x1b0]
00581b14  e4 c1 c4 e5                                      strb ip, [r4, #0x1e4]
00581b18  c3 61 c4 e5                                      strb r6, [r4, #0x1c3]
00581b1c  c2 81 c4 e5                                      strb r8, [r4, #0x1c2]
00581b20  c1 91 c4 e5                                      strb sb, [r4, #0x1c1]
00581b24  c0 b1 c4 e5                                      strb fp, [r4, #0x1c0]
00581b28  64 21 84 e5                                      str r2, [r4, #0x164]
00581b2c  68 21 84 e5                                      str r2, [r4, #0x168]
00581b30  7b 61 c4 e5                                      strb r6, [r4, #0x17b]
00581b34  7a 81 c4 e5                                      strb r8, [r4, #0x17a]
00581b38  79 91 c4 e5                                      strb sb, [r4, #0x179]
00581b3c  78 b1 c4 e5                                      strb fp, [r4, #0x178]
00581b40  88 21 84 e5                                      str r2, [r4, #0x188]
00581b44  8c 31 84 e5                                      str r3, [r4, #0x18c]
00581b48  10 20 9d e5                                      ldr r2, [sp, #0x10]
00581b4c  9f 21 c4 e5                                      strb r2, [r4, #0x19f]
00581b50  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00581b54  9e c1 c4 e5                                      strb ip, [r4, #0x19e]
00581b58  18 10 9d e5                                      ldr r1, [sp, #0x18]
00581b5c  9d 11 c4 e5                                      strb r1, [r4, #0x19d]
00581b60  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00581b64  9c 21 c4 e5                                      strb r2, [r4, #0x19c]
00581b68  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00581b6c  d4 31 84 e5                                      str r3, [r4, #0x1d4]
00581b70  00 00 00 0a                                      beq #0x581b78
00581b74  82 6e f6 eb                                      bl #0x31d584
00581b78  04 00 a0 e1                                      mov r0, r4
00581b7c  2c d0 8d e2                                      add sp, sp, #0x2c
00581b80  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00581b84  05 00 a0 e1                                      mov r0, r5
00581b88  a3 7b 00 eb                                      bl #0x5a0a1c
00581b8c  05 00 a0 e1                                      mov r0, r5
00581b90  c6 31 f6 eb                                      bl #0x30e2b0
00581b94  bd ff ff ea                                      b #0x581a90
00581b98  05 00 a0 e1                                      mov r0, r5
00581b9c  9e 7b 00 eb                                      bl #0x5a0a1c
00581ba0  05 00 a0 e1                                      mov r0, r5
00581ba4  c1 31 f6 eb                                      bl #0x30e2b0
00581ba8  b0 ff ff ea                                      b #0x581a70
; mapping-symbol data/literal pool
00581bac  84 31 41 00 ec 19 00 00 44 2b 00 00 f8 3f 00 00  .byte 0x84, 0x31, 0x41, 0x00, 0xec, 0x19, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xf8, 0x3f, 0x00, 0x00

; FUNCTION 0x00581bbc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZThn4_N6glitch5scene19CBillboardSceneNode5cloneEv
; demangled: non-virtual thunk to glitch::scene::CBillboardSceneNode::clone()
; decoder-mode: arm
00581bbc  04 00 40 e2                                      sub r0, r0, #4
00581bc0  ff ff ff ea                                      b #0x581bc4

; FUNCTION 0x00581bc4, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNode5cloneEv
; demangled: glitch::scene::CBillboardSceneNode::clone()
; decoder-mode: arm
00581bc4  70 40 2d e9                                      push {r4, r5, r6, lr}
00581bc8  14 21 90 e5                                      ldr r2, [r0, #0x114]
00581bcc  20 d0 4d e2                                      sub sp, sp, #0x20
00581bd0  00 30 e0 e3                                      mvn r3, #0
00581bd4  00 40 a0 e1                                      mov r4, r0
00581bd8  00 10 a0 e3                                      mov r1, #0
00581bdc  7d 0f a0 e3                                      mov r0, #0x1f4
00581be0  14 60 92 e5                                      ldr r6, [r2, #0x14]
00581be4  1b 30 cd e5                                      strb r3, [sp, #0x1b]
00581be8  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00581bec  1d 30 cd e5                                      strb r3, [sp, #0x1d]
00581bf0  1e 30 cd e5                                      strb r3, [sp, #0x1e]
00581bf4  1f 30 cd e5                                      strb r3, [sp, #0x1f]
00581bf8  18 30 cd e5                                      strb r3, [sp, #0x18]
00581bfc  19 30 cd e5                                      strb r3, [sp, #0x19]
00581c00  1a 30 cd e5                                      strb r3, [sp, #0x1a]
00581c04  68 c9 fe eb                                      bl #0x5341ac
00581c08  4d cf 84 e2                                      add ip, r4, #0x134
00581c0c  10 21 94 e5                                      ldr r2, [r4, #0x110]
00581c10  00 c0 8d e5                                      str ip, [sp]
00581c14  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00581c18  b0 30 84 e2                                      add r3, r4, #0xb0
00581c1c  06 10 a0 e1                                      mov r1, r6
00581c20  04 c0 8d e5                                      str ip, [sp, #4]
00581c24  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00581c28  04 60 80 e2                                      add r6, r0, #4
00581c2c  00 50 a0 e1                                      mov r5, r0
00581c30  08 c0 8d e5                                      str ip, [sp, #8]
00581c34  30 ff ff eb                                      bl #0x5818fc
00581c38  06 00 a0 e1                                      mov r0, r6
00581c3c  04 10 84 e2                                      add r1, r4, #4
00581c40  61 58 00 eb                                      bl #0x597dcc
00581c44  54 31 94 e5                                      ldr r3, [r4, #0x154]
00581c48  20 00 8d e2                                      add r0, sp, #0x20
00581c4c  14 30 8d e5                                      str r3, [sp, #0x14]
00581c50  00 00 53 e3                                      cmp r3, #0
00581c54  00 20 93 15                                      ldrne r2, [r3]
00581c58  01 20 82 12                                      addne r2, r2, #1
00581c5c  00 20 83 15                                      strne r2, [r3]
00581c60  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00581c64  54 21 95 e5                                      ldr r2, [r5, #0x154]
00581c68  0c 20 20 e5                                      str r2, [r0, #-0xc]!
00581c6c  54 31 85 e5                                      str r3, [r5, #0x154]
00581c70  dc 3b f6 eb                                      bl #0x310be8
00581c74  06 00 a0 e1                                      mov r0, r6
00581c78  20 d0 8d e2                                      add sp, sp, #0x20
00581c7c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00581c80, declared_size=660, range_size=660, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZN6glitch5scene19CBillboardSceneNodeC2EPNS_5video12IVideoDriverEiRKNS_4core8vector3dIfEERKNS5_11dimension2dIfEENS2_6SColorESE_
; demangled: glitch::scene::CBillboardSceneNode::CBillboardSceneNode(glitch::video::IVideoDriver*, int, glitch::core::vector3d<float> const&, glitch::core::dimension2d<float> const&, glitch::video::SColor, glitch::video::SColor)
; decoder-mode: arm
00581c80  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00581c84  34 d0 4d e2                                      sub sp, sp, #0x34
00581c88  60 c0 dd e5                                      ldrb ip, [sp, #0x60]
00581c8c  01 50 a0 e1                                      mov r5, r1
00581c90  02 70 a0 e1                                      mov r7, r2
00581c94  24 c0 8d e5                                      str ip, [sp, #0x24]
00581c98  61 c0 dd e5                                      ldrb ip, [sp, #0x61]
00581c9c  03 20 a0 e1                                      mov r2, r3
00581ca0  04 10 81 e2                                      add r1, r1, #4
00581ca4  20 c0 8d e5                                      str ip, [sp, #0x20]
00581ca8  62 c0 dd e5                                      ldrb ip, [sp, #0x62]
00581cac  58 30 9d e5                                      ldr r3, [sp, #0x58]
00581cb0  00 40 a0 e1                                      mov r4, r0
00581cb4  1c c0 8d e5                                      str ip, [sp, #0x1c]
00581cb8  63 c0 dd e5                                      ldrb ip, [sp, #0x63]
00581cbc  65 90 dd e5                                      ldrb sb, [sp, #0x65]
00581cc0  66 a0 dd e5                                      ldrb sl, [sp, #0x66]
00581cc4  18 c0 8d e5                                      str ip, [sp, #0x18]
00581cc8  64 c0 dd e5                                      ldrb ip, [sp, #0x64]
00581ccc  67 60 dd e5                                      ldrb r6, [sp, #0x67]
00581cd0  56 8f 84 e2                                      add r8, r4, #0x158
00581cd4  14 c0 8d e5                                      str ip, [sp, #0x14]
00581cd8  73 fc ff eb                                      bl #0x580eac
00581cdc  00 30 95 e5                                      ldr r3, [r5]
00581ce0  bf c4 a0 e3                                      mov ip, #0xbf000000
00581ce4  00 e0 a0 e3                                      mov lr, #0
00581ce8  00 30 84 e5                                      str r3, [r4]
00581cec  20 20 95 e5                                      ldr r2, [r5, #0x20]
00581cf0  02 c5 8c e2                                      add ip, ip, #0x800000
00581cf4  fe 05 a0 e3                                      mov r0, #0x3f800000
00581cf8  04 20 84 e5                                      str r2, [r4, #4]
00581cfc  24 10 95 e5                                      ldr r1, [r5, #0x24]
00581d00  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00581d04  0e 20 a0 e1                                      mov r2, lr
00581d08  03 10 84 e7                                      str r1, [r4, r3]
00581d0c  00 10 94 e5                                      ldr r1, [r4]
00581d10  28 b0 95 e5                                      ldr fp, [r5, #0x28]
00581d14  08 30 a0 e1                                      mov r3, r8
00581d18  10 50 11 e5                                      ldr r5, [r1, #-0x10]
00581d1c  7a 1f 84 e2                                      add r1, r4, #0x1e8
00581d20  05 b0 84 e7                                      str fp, [r4, r5]
00581d24  00 50 a0 e3                                      mov r5, #0
00581d28  44 c1 84 e5                                      str ip, [r4, #0x144]
00581d2c  50 01 84 e5                                      str r0, [r4, #0x150]
00581d30  54 51 84 e5                                      str r5, [r4, #0x154]
00581d34  34 e1 84 e5                                      str lr, [r4, #0x134]
00581d38  38 e1 84 e5                                      str lr, [r4, #0x138]
00581d3c  3c c1 84 e5                                      str ip, [r4, #0x13c]
00581d40  40 c1 84 e5                                      str ip, [r4, #0x140]
00581d44  48 01 84 e5                                      str r0, [r4, #0x148]
00581d48  4c 01 84 e5                                      str r0, [r4, #0x14c]
00581d4c  00 20 83 e5                                      str r2, [r3]
00581d50  04 20 83 e5                                      str r2, [r3, #4]
00581d54  08 20 83 e5                                      str r2, [r3, #8]
00581d58  0c 20 83 e5                                      str r2, [r3, #0xc]
00581d5c  10 20 83 e5                                      str r2, [r3, #0x10]
00581d60  14 20 83 e5                                      str r2, [r3, #0x14]
00581d64  18 20 83 e5                                      str r2, [r3, #0x18]
00581d68  1c 20 83 e5                                      str r2, [r3, #0x1c]
00581d6c  24 30 83 e2                                      add r3, r3, #0x24
00581d70  01 00 53 e1                                      cmp r3, r1
00581d74  f4 ff ff 1a                                      bne #0x581d4c
00581d78  00 30 a0 e3                                      mov r3, #0
00581d7c  e8 31 84 e5                                      str r3, [r4, #0x1e8]
00581d80  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00581d84  04 00 a0 e1                                      mov r0, r4
00581d88  44 fb ff eb                                      bl #0x580aa0
00581d8c  06 28 a0 e3                                      mov r2, #0x60000
00581d90  2c 00 8d e2                                      add r0, sp, #0x2c
00581d94  01 10 a0 e3                                      mov r1, #1
00581d98  99 7d 00 eb                                      bl #0x5a1404
00581d9c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00581da0  00 00 53 e3                                      cmp r3, #0
00581da4  00 20 93 15                                      ldrne r2, [r3]
00581da8  01 20 82 12                                      addne r2, r2, #1
00581dac  00 20 83 15                                      strne r2, [r3]
00581db0  e8 51 94 e5                                      ldr r5, [r4, #0x1e8]
00581db4  e8 31 84 e5                                      str r3, [r4, #0x1e8]
00581db8  00 00 55 e3                                      cmp r5, #0
00581dbc  04 00 00 0a                                      beq #0x581dd4
00581dc0  00 30 95 e5                                      ldr r3, [r5]
00581dc4  01 30 43 e2                                      sub r3, r3, #1
00581dc8  00 00 53 e3                                      cmp r3, #0
00581dcc  00 30 85 e5                                      str r3, [r5]
00581dd0  4a 00 00 0a                                      beq #0x581f00
00581dd4  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
00581dd8  00 00 55 e3                                      cmp r5, #0
00581ddc  04 00 00 0a                                      beq #0x581df4
00581de0  00 30 95 e5                                      ldr r3, [r5]
00581de4  01 30 43 e2                                      sub r3, r3, #1
00581de8  00 00 53 e3                                      cmp r3, #0
00581dec  00 30 85 e5                                      str r3, [r5]
00581df0  3d 00 00 0a                                      beq #0x581eec
00581df4  00 30 a0 e3                                      mov r3, #0
00581df8  90 20 a0 e3                                      mov r2, #0x90
00581dfc  00 20 8d e5                                      str r2, [sp]
00581e00  08 30 8d e5                                      str r3, [sp, #8]
00581e04  28 50 8d e2                                      add r5, sp, #0x28
00581e08  04 80 8d e5                                      str r8, [sp, #4]
00581e0c  03 20 a0 e1                                      mov r2, r3
00581e10  00 c0 97 e5                                      ldr ip, [r7]
00581e14  04 30 a0 e3                                      mov r3, #4
00581e18  07 10 a0 e1                                      mov r1, r7
00581e1c  05 00 a0 e1                                      mov r0, r5
00581e20  0f e0 a0 e1                                      mov lr, pc
00581e24  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00581e28  05 10 a0 e1                                      mov r1, r5
00581e2c  00 20 e0 e3                                      mvn r2, #0
00581e30  e8 01 94 e5                                      ldr r0, [r4, #0x1e8]
00581e34  e1 7d 00 eb                                      bl #0x5a15c0
00581e38  e8 31 94 e5                                      ldr r3, [r4, #0x1e8]
00581e3c  04 10 a0 e3                                      mov r1, #4
00581e40  fe 25 a0 e3                                      mov r2, #0x3f800000
00581e44  08 10 83 e5                                      str r1, [r3, #8]
00581e48  18 10 9d e5                                      ldr r1, [sp, #0x18]
00581e4c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00581e50  00 30 a0 e3                                      mov r3, #0
00581e54  e7 11 c4 e5                                      strb r1, [r4, #0x1e7]
00581e58  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00581e5c  00 00 50 e3                                      cmp r0, #0
00581e60  e6 c1 c4 e5                                      strb ip, [r4, #0x1e6]
00581e64  20 10 9d e5                                      ldr r1, [sp, #0x20]
00581e68  e5 11 c4 e5                                      strb r1, [r4, #0x1e5]
00581e6c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
00581e70  ac 31 84 e5                                      str r3, [r4, #0x1ac]
00581e74  b0 21 84 e5                                      str r2, [r4, #0x1b0]
00581e78  e4 c1 c4 e5                                      strb ip, [r4, #0x1e4]
00581e7c  c3 61 c4 e5                                      strb r6, [r4, #0x1c3]
00581e80  c2 a1 c4 e5                                      strb sl, [r4, #0x1c2]
00581e84  c1 91 c4 e5                                      strb sb, [r4, #0x1c1]
00581e88  14 10 9d e5                                      ldr r1, [sp, #0x14]
00581e8c  64 21 84 e5                                      str r2, [r4, #0x164]
00581e90  68 21 84 e5                                      str r2, [r4, #0x168]
00581e94  c0 11 c4 e5                                      strb r1, [r4, #0x1c0]
00581e98  7b 61 c4 e5                                      strb r6, [r4, #0x17b]
00581e9c  7a a1 c4 e5                                      strb sl, [r4, #0x17a]
00581ea0  79 91 c4 e5                                      strb sb, [r4, #0x179]
00581ea4  78 11 c4 e5                                      strb r1, [r4, #0x178]
00581ea8  88 21 84 e5                                      str r2, [r4, #0x188]
00581eac  8c 31 84 e5                                      str r3, [r4, #0x18c]
00581eb0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00581eb4  9f 21 c4 e5                                      strb r2, [r4, #0x19f]
00581eb8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00581ebc  9e c1 c4 e5                                      strb ip, [r4, #0x19e]
00581ec0  20 10 9d e5                                      ldr r1, [sp, #0x20]
00581ec4  9d 11 c4 e5                                      strb r1, [r4, #0x19d]
00581ec8  24 20 9d e5                                      ldr r2, [sp, #0x24]
00581ecc  9c 21 c4 e5                                      strb r2, [r4, #0x19c]
00581ed0  d0 31 84 e5                                      str r3, [r4, #0x1d0]
00581ed4  d4 31 84 e5                                      str r3, [r4, #0x1d4]
00581ed8  00 00 00 0a                                      beq #0x581ee0
00581edc  a8 6d f6 eb                                      bl #0x31d584
00581ee0  04 00 a0 e1                                      mov r0, r4
00581ee4  34 d0 8d e2                                      add sp, sp, #0x34
00581ee8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00581eec  05 00 a0 e1                                      mov r0, r5
00581ef0  c9 7a 00 eb                                      bl #0x5a0a1c
00581ef4  05 00 a0 e1                                      mov r0, r5
00581ef8  ec 30 f6 eb                                      bl #0x30e2b0
00581efc  bc ff ff ea                                      b #0x581df4
00581f00  05 00 a0 e1                                      mov r0, r5
00581f04  c4 7a 00 eb                                      bl #0x5a0a1c
00581f08  05 00 a0 e1                                      mov r0, r5
00581f0c  e7 30 f6 eb                                      bl #0x30e2b0
00581f10  af ff ff ea                                      b #0x581dd4

; FUNCTION 0x00581f14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZTv0_n20_N6glitch5scene19CBillboardSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CBillboardSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00581f14  00 30 90 e5                                      ldr r3, [r0]
00581f18  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00581f1c  03 00 80 e0                                      add r0, r0, r3
00581f20  74 fb ff ea                                      b #0x580cf8

; FUNCTION 0x00581f24, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardSceneNode
; alias: _ZTv0_n16_NK6glitch5scene19CBillboardSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CBillboardSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00581f24  00 30 90 e5                                      ldr r3, [r0]
00581f28  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00581f2c  03 00 80 e0                                      add r0, r0, r3
00581f30  44 fb ff ea                                      b #0x580c48
