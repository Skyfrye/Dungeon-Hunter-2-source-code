; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d5850, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_NK6glitch5scene23CBillboardTextSceneNode7getTypeEv
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::getType() const
; decoder-mode: arm
006d5850  04 00 40 e2                                      sub r0, r0, #4
006d5854  ff ff ff ea                                      b #0x6d5858

; FUNCTION 0x006d5858, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZNK6glitch5scene23CBillboardTextSceneNode7getTypeEv
; demangled: glitch::scene::CBillboardTextSceneNode::getType() const
; decoder-mode: arm
006d5858  74 05 06 e3                                      movw r0, #0x6574
006d585c  78 04 47 e3                                      movt r0, #0x7478
006d5860  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d589c, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode7setTextEPKw
; demangled: glitch::scene::CBillboardTextSceneNode::setText(wchar_t const*)
; decoder-mode: arm
006d589c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d58a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_N6glitch5scene23CBillboardTextSceneNode19onRegisterSceneNodeEv
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006d58a0  04 00 40 e2                                      sub r0, r0, #4
006d58a4  ff ff ff ea                                      b #0x6d58a8

; FUNCTION 0x006d58a8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CBillboardTextSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006d58a8  01 00 a0 e3                                      mov r0, #1
006d58ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d58b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_NK6glitch5scene23CBillboardTextSceneNode14getBoundingBoxEv
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::getBoundingBox() const
; decoder-mode: arm
006d58b0  04 00 40 e2                                      sub r0, r0, #4
006d58b4  ff ff ff ea                                      b #0x6d58b8

; FUNCTION 0x006d58b8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZNK6glitch5scene23CBillboardTextSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CBillboardTextSceneNode::getBoundingBox() const
; decoder-mode: arm
006d58b8  19 0e 80 e2                                      add r0, r0, #0x190
006d58bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d58c0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_N6glitch5scene23CBillboardTextSceneNode7setSizeERKNS_4core11dimension2dIfEE
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::setSize(glitch::core::dimension2d<float> const&)
; decoder-mode: arm
006d58c0  4d 0f 40 e2                                      sub r0, r0, #0x134
006d58c4  ff ff ff ea                                      b #0x6d58c8

; FUNCTION 0x006d58c8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode7setSizeERKNS_4core11dimension2dIfEE
; demangled: glitch::scene::CBillboardTextSceneNode::setSize(glitch::core::dimension2d<float> const&)
; decoder-mode: arm
006d58c8  10 40 2d e9                                      push {r4, lr}
006d58cc  00 20 91 e5                                      ldr r2, [r1]
006d58d0  01 30 a0 e1                                      mov r3, r1
006d58d4  00 40 a0 e1                                      mov r4, r0
006d58d8  88 21 80 e5                                      str r2, [r0, #0x188]
006d58dc  04 30 93 e5                                      ldr r3, [r3, #4]
006d58e0  88 01 90 e5                                      ldr r0, [r0, #0x188]
006d58e4  00 10 a0 e3                                      mov r1, #0
006d58e8  8c 31 84 e5                                      str r3, [r4, #0x18c]
006d58ec  a6 e1 f0 eb                                      bl #0x30df8c
006d58f0  00 00 50 e3                                      cmp r0, #0
006d58f4  fe 35 a0 13                                      movne r3, #0x3f800000
006d58f8  88 31 84 15                                      strne r3, [r4, #0x188]
006d58fc  8c 01 94 e5                                      ldr r0, [r4, #0x18c]
006d5900  00 10 a0 e3                                      mov r1, #0
006d5904  a0 e1 f0 eb                                      bl #0x30df8c
006d5908  00 00 50 e3                                      cmp r0, #0
006d590c  fe 35 a0 13                                      movne r3, #0x3f800000
006d5910  8c 31 84 15                                      strne r3, [r4, #0x18c]
006d5914  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d5918, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_NK6glitch5scene23CBillboardTextSceneNode11getMaterialEj
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
006d5918  04 10 41 e2                                      sub r1, r1, #4
006d591c  ff ff ff ea                                      b #0x6d5920

; FUNCTION 0x006d5920, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZNK6glitch5scene23CBillboardTextSceneNode11getMaterialEj
; demangled: glitch::scene::CBillboardTextSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
006d5920  70 40 2d e9                                      push {r4, r5, r6, lr}
006d5924  bc 31 91 e5                                      ldr r3, [r1, #0x1bc]
006d5928  01 50 a0 e1                                      mov r5, r1
006d592c  00 40 a0 e1                                      mov r4, r0
006d5930  00 00 53 e3                                      cmp r3, #0
006d5934  02 60 a0 e1                                      mov r6, r2
006d5938  05 00 00 0a                                      beq #0x6d5954
006d593c  03 00 a0 e1                                      mov r0, r3
006d5940  00 30 93 e5                                      ldr r3, [r3]
006d5944  0f e0 a0 e1                                      mov lr, pc
006d5948  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d594c  06 00 50 e1                                      cmp r0, r6
006d5950  03 00 00 8a                                      bhi #0x6d5964
006d5954  00 30 a0 e3                                      mov r3, #0
006d5958  00 30 84 e5                                      str r3, [r4]
006d595c  04 00 a0 e1                                      mov r0, r4
006d5960  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d5964  bc 31 95 e5                                      ldr r3, [r5, #0x1bc]
006d5968  04 00 a0 e1                                      mov r0, r4
006d596c  06 20 a0 e1                                      mov r2, r6
006d5970  03 10 a0 e1                                      mov r1, r3
006d5974  00 30 93 e5                                      ldr r3, [r3]
006d5978  0f e0 a0 e1                                      mov lr, pc
006d597c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d5980  04 00 a0 e1                                      mov r0, r4
006d5984  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006d5988, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_NK6glitch5scene23CBillboardTextSceneNode16getMaterialCountEv
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::getMaterialCount() const
; decoder-mode: arm
006d5988  04 00 40 e2                                      sub r0, r0, #4
006d598c  ff ff ff ea                                      b #0x6d5990

; FUNCTION 0x006d5990, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZNK6glitch5scene23CBillboardTextSceneNode16getMaterialCountEv
; demangled: glitch::scene::CBillboardTextSceneNode::getMaterialCount() const
; decoder-mode: arm
006d5990  10 40 2d e9                                      push {r4, lr}
006d5994  bc 31 90 e5                                      ldr r3, [r0, #0x1bc]
006d5998  00 00 53 e3                                      cmp r3, #0
006d599c  04 00 00 0a                                      beq #0x6d59b4
006d59a0  03 00 a0 e1                                      mov r0, r3
006d59a4  00 30 93 e5                                      ldr r3, [r3]
006d59a8  0f e0 a0 e1                                      mov lr, pc
006d59ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006d59b0  10 80 bd e8                                      pop {r4, pc}
006d59b4  03 00 a0 e1                                      mov r0, r3
006d59b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d59bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_NK6glitch5scene23CBillboardTextSceneNode7getSizeEv
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::getSize() const
; decoder-mode: arm
006d59bc  4d 0f 40 e2                                      sub r0, r0, #0x134
006d59c0  ff ff ff ea                                      b #0x6d59c4

; FUNCTION 0x006d59c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZNK6glitch5scene23CBillboardTextSceneNode7getSizeEv
; demangled: glitch::scene::CBillboardTextSceneNode::getSize() const
; decoder-mode: arm
006d59c4  62 0f 80 e2                                      add r0, r0, #0x188
006d59c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d59cc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode12setTextColorENS_5video6SColorE
; demangled: glitch::scene::CBillboardTextSceneNode::setTextColor(glitch::video::SColor)
; decoder-mode: arm
006d59cc  51 34 e7 e7                                      ubfx r3, r1, #8, #8
006d59d0  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
006d59d4  21 cc a0 e1                                      lsr ip, r1, #0x18
006d59d8  08 d0 4d e2                                      sub sp, sp, #8
006d59dc  80 11 c0 e5                                      strb r1, [r0, #0x180]
006d59e0  83 c1 c0 e5                                      strb ip, [r0, #0x183]
006d59e4  82 21 c0 e5                                      strb r2, [r0, #0x182]
006d59e8  81 31 c0 e5                                      strb r3, [r0, #0x181]
006d59ec  08 d0 8d e2                                      add sp, sp, #8
006d59f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d59f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_N6glitch5scene23CBillboardTextSceneNode8setColorERKNS_5video6SColorE
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&)
; decoder-mode: arm
006d59f4  4d 0f 40 e2                                      sub r0, r0, #0x134
006d59f8  ff ff ff ea                                      b #0x6d59fc

; FUNCTION 0x006d59fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode8setColorERKNS_5video6SColorE
; demangled: glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&)
; decoder-mode: arm
006d59fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d5a00, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_N6glitch5scene23CBillboardTextSceneNode8setColorERKNS_5video6SColorES5_
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&, glitch::video::SColor const&)
; decoder-mode: arm
006d5a00  4d 0f 40 e2                                      sub r0, r0, #0x134
006d5a04  ff ff ff ea                                      b #0x6d5a08

; FUNCTION 0x006d5a08, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode8setColorERKNS_5video6SColorES5_
; demangled: glitch::scene::CBillboardTextSceneNode::setColor(glitch::video::SColor const&, glitch::video::SColor const&)
; decoder-mode: arm
006d5a08  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d5a0c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_NK6glitch5scene23CBillboardTextSceneNode8getColorERNS_5video6SColorES4_
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::getColor(glitch::video::SColor&, glitch::video::SColor&) const
; decoder-mode: arm
006d5a0c  4d 0f 40 e2                                      sub r0, r0, #0x134
006d5a10  ff ff ff ea                                      b #0x6d5a14

; FUNCTION 0x006d5a14, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZNK6glitch5scene23CBillboardTextSceneNode8getColorERNS_5video6SColorES4_
; demangled: glitch::scene::CBillboardTextSceneNode::getColor(glitch::video::SColor&, glitch::video::SColor&) const
; decoder-mode: arm
006d5a14  70 40 2d e9                                      push {r4, r5, r6, lr}
006d5a18  00 50 a0 e1                                      mov r5, r0
006d5a1c  04 40 a0 e3                                      mov r4, #4
006d5a20  02 60 a0 e1                                      mov r6, r2
006d5a24  01 00 a0 e1                                      mov r0, r1
006d5a28  04 20 a0 e1                                      mov r2, r4
006d5a2c  6a 1f 85 e2                                      add r1, r5, #0x1a8
006d5a30  8c e3 f0 eb                                      bl #0x30e868
006d5a34  06 00 a0 e1                                      mov r0, r6
006d5a38  6b 1f 85 e2                                      add r1, r5, #0x1ac
006d5a3c  04 20 a0 e1                                      mov r2, r4
006d5a40  88 e3 f0 eb                                      bl #0x30e868
006d5a44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006d6020, declared_size=1048, range_size=1048, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNodeC2ERNS_5video24CMaterialRendererManagerEiPNS_3gui8IGUIFontEPKwRKNS_4core8vector3dIfEERKNSA_11dimension2dIfEENS2_6SColorESJ_
; demangled: glitch::scene::CBillboardTextSceneNode::CBillboardTextSceneNode(glitch::video::CMaterialRendererManager&, int, glitch::gui::IGUIFont*, wchar_t const*, glitch::core::vector3d<float> const&, glitch::core::dimension2d<float> const&, glitch::video::SColor, glitch::video::SColor)
; decoder-mode: arm
006d6020  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d6024  4c d0 4d e2                                      sub sp, sp, #0x4c
006d6028  80 c0 dd e5                                      ldrb ip, [sp, #0x80]
006d602c  01 60 a0 e1                                      mov r6, r1
006d6030  02 90 a0 e1                                      mov sb, r2
006d6034  14 c0 8d e5                                      str ip, [sp, #0x14]
006d6038  84 c0 dd e5                                      ldrb ip, [sp, #0x84]
006d603c  03 20 a0 e1                                      mov r2, r3
006d6040  04 10 81 e2                                      add r1, r1, #4
006d6044  10 c0 8d e5                                      str ip, [sp, #0x10]
006d6048  85 c0 dd e5                                      ldrb ip, [sp, #0x85]
006d604c  78 30 9d e5                                      ldr r3, [sp, #0x78]
006d6050  cc 53 9f e5                                      ldr r5, [pc, #0x3cc]
006d6054  0c c0 8d e5                                      str ip, [sp, #0xc]
006d6058  86 c0 dd e5                                      ldrb ip, [sp, #0x86]
006d605c  00 40 a0 e1                                      mov r4, r0
006d6060  70 70 9d e5                                      ldr r7, [sp, #0x70]
006d6064  08 c0 8d e5                                      str ip, [sp, #8]
006d6068  87 c0 dd e5                                      ldrb ip, [sp, #0x87]
006d606c  81 b0 dd e5                                      ldrb fp, [sp, #0x81]
006d6070  82 a0 dd e5                                      ldrb sl, [sp, #0x82]
006d6074  83 80 dd e5                                      ldrb r8, [sp, #0x83]
006d6078  04 c0 8d e5                                      str ip, [sp, #4]
006d607c  b6 fe ff eb                                      bl #0x6d5b5c
006d6080  a0 23 9f e5                                      ldr r2, [pc, #0x3a0]
006d6084  05 50 8f e0                                      add r5, pc, r5
006d6088  9c c3 9f e5                                      ldr ip, [pc, #0x39c]
006d608c  02 20 95 e7                                      ldr r2, [r5, r2]
006d6090  4e 3f 84 e2                                      add r3, r4, #0x138
006d6094  0c c0 95 e7                                      ldr ip, [r5, ip]
006d6098  08 20 82 e2                                      add r2, r2, #8
006d609c  34 21 84 e5                                      str r2, [r4, #0x134]
006d60a0  00 20 96 e5                                      ldr r2, [r6]
006d60a4  59 cf 8c e2                                      add ip, ip, #0x164
006d60a8  03 00 a0 e1                                      mov r0, r3
006d60ac  00 20 84 e5                                      str r2, [r4]
006d60b0  20 e0 96 e5                                      ldr lr, [r6, #0x20]
006d60b4  10 10 a0 e3                                      mov r1, #0x10
006d60b8  04 e0 84 e5                                      str lr, [r4, #4]
006d60bc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006d60c0  24 e0 96 e5                                      ldr lr, [r6, #0x24]
006d60c4  02 e0 84 e7                                      str lr, [r4, r2]
006d60c8  00 20 94 e5                                      ldr r2, [r4]
006d60cc  28 e0 96 e5                                      ldr lr, [r6, #0x28]
006d60d0  10 20 12 e5                                      ldr r2, [r2, #-0x10]
006d60d4  02 e0 84 e7                                      str lr, [r4, r2]
006d60d8  34 c1 84 e5                                      str ip, [r4, #0x134]
006d60dc  78 31 84 e5                                      str r3, [r4, #0x178]
006d60e0  7c 31 84 e5                                      str r3, [r4, #0x17c]
006d60e4  0d 2a f1 eb                                      bl #0x320920
006d60e8  78 c1 94 e5                                      ldr ip, [r4, #0x178]
006d60ec  bf 14 a0 e3                                      mov r1, #0xbf000000
006d60f0  00 30 a0 e3                                      mov r3, #0
006d60f4  02 15 81 e2                                      add r1, r1, #0x800000
006d60f8  fe 25 a0 e3                                      mov r2, #0x3f800000
006d60fc  00 00 a0 e3                                      mov r0, #0
006d6100  00 30 8c e5                                      str r3, [ip]
006d6104  8c 01 84 e5                                      str r0, [r4, #0x18c]
006d6108  98 11 84 e5                                      str r1, [r4, #0x198]
006d610c  a4 21 84 e5                                      str r2, [r4, #0x1a4]
006d6110  ab 81 c4 e5                                      strb r8, [r4, #0x1ab]
006d6114  aa a1 c4 e5                                      strb sl, [r4, #0x1aa]
006d6118  a9 b1 c4 e5                                      strb fp, [r4, #0x1a9]
006d611c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006d6120  00 00 57 e3                                      cmp r7, #0
006d6124  a8 c1 c4 e5                                      strb ip, [r4, #0x1a8]
006d6128  04 c0 9d e5                                      ldr ip, [sp, #4]
006d612c  af c1 c4 e5                                      strb ip, [r4, #0x1af]
006d6130  08 c0 9d e5                                      ldr ip, [sp, #8]
006d6134  ae c1 c4 e5                                      strb ip, [r4, #0x1ae]
006d6138  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006d613c  ad c1 c4 e5                                      strb ip, [r4, #0x1ad]
006d6140  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006d6144  bc 31 84 e5                                      str r3, [r4, #0x1bc]
006d6148  84 31 84 e5                                      str r3, [r4, #0x184]
006d614c  ac c1 c4 e5                                      strb ip, [r4, #0x1ac]
006d6150  88 01 84 e5                                      str r0, [r4, #0x188]
006d6154  90 11 84 e5                                      str r1, [r4, #0x190]
006d6158  94 11 84 e5                                      str r1, [r4, #0x194]
006d615c  9c 21 84 e5                                      str r2, [r4, #0x19c]
006d6160  a0 21 84 e5                                      str r2, [r4, #0x1a0]
006d6164  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006d6168  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006d616c  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006d6170  97 00 00 0a                                      beq #0x6d63d4
006d6174  00 30 97 e5                                      ldr r3, [r7]
006d6178  07 00 a0 e1                                      mov r0, r7
006d617c  0f e0 a0 e1                                      mov lr, pc
006d6180  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006d6184  00 00 50 e3                                      cmp r0, #0
006d6188  9d 00 00 1a                                      bne #0x6d6404
006d618c  09 00 a0 e1                                      mov r0, sb
006d6190  09 10 a0 e3                                      mov r1, #9
006d6194  63 0a fc eb                                      bl #0x5d8b28
006d6198  18 30 99 e5                                      ldr r3, [sb, #0x18]
006d619c  1c 20 99 e5                                      ldr r2, [sb, #0x1c]
006d61a0  02 20 63 e0                                      rsb r2, r3, r2
006d61a4  c2 01 50 e1                                      cmp r0, r2, asr #3
006d61a8  80 31 83 30                                      addlo r3, r3, r0, lsl #3
006d61ac  99 00 00 2a                                      bhs #0x6d6418
006d61b0  00 00 93 e5                                      ldr r0, [r3]
006d61b4  00 20 a0 e3                                      mov r2, #0
006d61b8  02 10 a0 e3                                      mov r1, #2
006d61bc  00 00 50 e3                                      cmp r0, #0
006d61c0  44 00 8d e5                                      str r0, [sp, #0x44]
006d61c4  00 30 90 15                                      ldrne r3, [r0]
006d61c8  01 30 83 12                                      addne r3, r3, #1
006d61cc  00 30 80 15                                      strne r3, [r0]
006d61d0  44 00 9d 15                                      ldrne r0, [sp, #0x44]
006d61d4  4b e3 fb eb                                      bl #0x5cef08
006d61d8  04 00 8d e5                                      str r0, [sp, #4]
006d61dc  84 71 84 e5                                      str r7, [r4, #0x184]
006d61e0  04 30 97 e5                                      ldr r3, [r7, #4]
006d61e4  00 10 a0 e3                                      mov r1, #0
006d61e8  2c 00 a0 e3                                      mov r0, #0x2c
006d61ec  01 30 83 e2                                      add r3, r3, #1
006d61f0  04 30 87 e5                                      str r3, [r7, #4]
006d61f4  ec 77 f9 eb                                      bl #0x5341ac
006d61f8  00 50 a0 e1                                      mov r5, r0
006d61fc  34 96 ff eb                                      bl #0x6bbad4
006d6200  00 00 55 e3                                      cmp r5, #0
006d6204  04 30 95 15                                      ldrne r3, [r5, #4]
006d6208  01 30 83 12                                      addne r3, r3, #1
006d620c  04 30 85 15                                      strne r3, [r5, #4]
006d6210  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
006d6214  bc 51 84 e5                                      str r5, [r4, #0x1bc]
006d6218  00 00 50 e3                                      cmp r0, #0
006d621c  00 00 00 0a                                      beq #0x6d6224
006d6220  d7 1c f1 eb                                      bl #0x31d584
006d6224  00 60 a0 e3                                      mov r6, #0
006d6228  1c 20 8d e2                                      add r2, sp, #0x1c
006d622c  38 30 8d e2                                      add r3, sp, #0x38
006d6230  34 c0 8d e2                                      add ip, sp, #0x34
006d6234  40 70 8d e2                                      add r7, sp, #0x40
006d6238  3c a0 8d e2                                      add sl, sp, #0x3c
006d623c  06 50 a0 e1                                      mov r5, r6
006d6240  08 20 8d e5                                      str r2, [sp, #8]
006d6244  0c 30 8d e5                                      str r3, [sp, #0xc]
006d6248  10 c0 8d e5                                      str ip, [sp, #0x10]
006d624c  54 00 00 ea                                      b #0x6d63a4
006d6250  09 10 a0 e1                                      mov r1, sb
006d6254  09 20 a0 e3                                      mov r2, #9
006d6258  07 00 a0 e1                                      mov r0, r7
006d625c  23 0e fc eb                                      bl #0x5d9af0
006d6260  84 31 94 e5                                      ldr r3, [r4, #0x184]
006d6264  40 80 9d e5                                      ldr r8, [sp, #0x40]
006d6268  03 00 a0 e1                                      mov r0, r3
006d626c  00 30 93 e5                                      ldr r3, [r3]
006d6270  0f e0 a0 e1                                      mov lr, pc
006d6274  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006d6278  06 20 a0 e1                                      mov r2, r6
006d627c  00 10 a0 e1                                      mov r1, r0
006d6280  00 30 90 e5                                      ldr r3, [r0]
006d6284  0a 00 a0 e1                                      mov r0, sl
006d6288  0f e0 a0 e1                                      mov lr, pc
006d628c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d6290  08 00 a0 e1                                      mov r0, r8
006d6294  04 10 9d e5                                      ldr r1, [sp, #4]
006d6298  00 20 a0 e3                                      mov r2, #0
006d629c  0a 30 a0 e1                                      mov r3, sl
006d62a0  1f dc fb eb                                      bl #0x5cd324
006d62a4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d62a8  00 00 50 e3                                      cmp r0, #0
006d62ac  00 00 00 0a                                      beq #0x6d62b4
006d62b0  b3 1c f1 eb                                      bl #0x31d584
006d62b4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006d62b8  03 00 a0 e1                                      mov r0, r3
006d62bc  04 80 93 e5                                      ldr r8, [r3, #4]
006d62c0  9b be fb eb                                      bl #0x5c5d34
006d62c4  18 30 98 e5                                      ldr r3, [r8, #0x18]
006d62c8  0c 20 a0 e3                                      mov r2, #0xc
006d62cc  06 c0 a0 e3                                      mov ip, #6
006d62d0  92 30 23 e0                                      mla r3, r2, r0, r3
006d62d4  05 10 a0 e1                                      mov r1, r5
006d62d8  08 30 93 e5                                      ldr r3, [r3, #8]
006d62dc  38 00 a0 e3                                      mov r0, #0x38
006d62e0  20 30 93 e5                                      ldr r3, [r3, #0x20]
006d62e4  38 b0 93 e5                                      ldr fp, [r3, #0x38]
006d62e8  ff 30 a0 e3                                      mov r3, #0xff
006d62ec  b0 33 cd e1                                      strh r3, [sp, #0x30]
006d62f0  b2 c3 cd e1                                      strh ip, [sp, #0x32]
006d62f4  1c 50 8d e5                                      str r5, [sp, #0x1c]
006d62f8  20 50 8d e5                                      str r5, [sp, #0x20]
006d62fc  24 50 8d e5                                      str r5, [sp, #0x24]
006d6300  28 50 8d e5                                      str r5, [sp, #0x28]
006d6304  2c 50 8d e5                                      str r5, [sp, #0x2c]
006d6308  a7 77 f9 eb                                      bl #0x5341ac
006d630c  0b 10 a0 e1                                      mov r1, fp
006d6310  08 20 9d e5                                      ldr r2, [sp, #8]
006d6314  00 80 a0 e1                                      mov r8, r0
006d6318  ed fe ff eb                                      bl #0x6d5ed4
006d631c  00 00 58 e3                                      cmp r8, #0
006d6320  38 80 8d e5                                      str r8, [sp, #0x38]
006d6324  04 30 98 15                                      ldrne r3, [r8, #4]
006d6328  01 30 83 12                                      addne r3, r3, #1
006d632c  04 30 88 15                                      strne r3, [r8, #4]
006d6330  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d6334  00 00 50 e3                                      cmp r0, #0
006d6338  00 00 00 0a                                      beq #0x6d6340
006d633c  90 1c f1 eb                                      bl #0x31d584
006d6340  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
006d6344  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006d6348  07 20 a0 e1                                      mov r2, r7
006d634c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d6350  34 50 8d e5                                      str r5, [sp, #0x34]
006d6354  c2 98 ff eb                                      bl #0x6bc664
006d6358  34 80 9d e5                                      ldr r8, [sp, #0x34]
006d635c  00 00 58 e3                                      cmp r8, #0
006d6360  08 00 00 0a                                      beq #0x6d6388
006d6364  00 30 98 e5                                      ldr r3, [r8]
006d6368  01 30 43 e2                                      sub r3, r3, #1
006d636c  00 00 53 e3                                      cmp r3, #0
006d6370  00 30 88 e5                                      str r3, [r8]
006d6374  03 00 00 1a                                      bne #0x6d6388
006d6378  08 00 a0 e1                                      mov r0, r8
006d637c  f4 24 fc eb                                      bl #0x5df754
006d6380  08 00 a0 e1                                      mov r0, r8
006d6384  c9 df f0 eb                                      bl #0x30e2b0
006d6388  38 00 9d e5                                      ldr r0, [sp, #0x38]
006d638c  00 00 50 e3                                      cmp r0, #0
006d6390  00 00 00 0a                                      beq #0x6d6398
006d6394  7a 1c f1 eb                                      bl #0x31d584
006d6398  07 00 a0 e1                                      mov r0, r7
006d639c  11 ea f0 eb                                      bl #0x310be8
006d63a0  01 60 86 e2                                      add r6, r6, #1
006d63a4  84 31 94 e5                                      ldr r3, [r4, #0x184]
006d63a8  03 00 a0 e1                                      mov r0, r3
006d63ac  00 30 93 e5                                      ldr r3, [r3]
006d63b0  0f e0 a0 e1                                      mov lr, pc
006d63b4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006d63b8  00 30 90 e5                                      ldr r3, [r0]
006d63bc  0f e0 a0 e1                                      mov lr, pc
006d63c0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d63c4  00 00 56 e1                                      cmp r6, r0
006d63c8  a0 ff ff 3a                                      blo #0x6d6250
006d63cc  44 00 8d e2                                      add r0, sp, #0x44
006d63d0  b8 ef f1 eb                                      bl #0x3522b8
006d63d4  74 10 9d e5                                      ldr r1, [sp, #0x74]
006d63d8  04 00 a0 e1                                      mov r0, r4
006d63dc  2e fd ff eb                                      bl #0x6d589c
006d63e0  04 00 a0 e1                                      mov r0, r4
006d63e4  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
006d63e8  36 fd ff eb                                      bl #0x6d58c8
006d63ec  04 00 84 e2                                      add r0, r4, #4
006d63f0  01 10 a0 e3                                      mov r1, #1
006d63f4  68 03 fb eb                                      bl #0x59719c
006d63f8  04 00 a0 e1                                      mov r0, r4
006d63fc  4c d0 8d e2                                      add sp, sp, #0x4c
006d6400  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d6404  24 00 9f e5                                      ldr r0, [pc, #0x24]
006d6408  01 10 a0 e3                                      mov r1, #1
006d640c  00 00 8f e0                                      add r0, pc, r0
006d6410  22 d2 fc eb                                      bl #0x60aca0
006d6414  ee ff ff ea                                      b #0x6d63d4
006d6418  14 30 9f e5                                      ldr r3, [pc, #0x14]
006d641c  03 30 95 e7                                      ldr r3, [r5, r3]
006d6420  62 ff ff ea                                      b #0x6d61b0
; mapping-symbol data/literal pool
006d6424  0c ea 2b 00 64 3a 00 00 c4 0d 00 00 e4 50 21 00  .byte 0x0c, 0xea, 0x2b, 0x00, 0x64, 0x3a, 0x00, 0x00, 0xc4, 0x0d, 0x00, 0x00, 0xe4, 0x50, 0x21, 0x00
006d6434  dc 30 00 00                                      .byte 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x006d6438, declared_size=1060, range_size=1060, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNodeC1ERNS_5video24CMaterialRendererManagerEiPNS_3gui8IGUIFontEPKwRKNS_4core8vector3dIfEERKNSA_11dimension2dIfEENS2_6SColorESJ_
; demangled: glitch::scene::CBillboardTextSceneNode::CBillboardTextSceneNode(glitch::video::CMaterialRendererManager&, int, glitch::gui::IGUIFont*, wchar_t const*, glitch::core::vector3d<float> const&, glitch::core::dimension2d<float> const&, glitch::video::SColor, glitch::video::SColor)
; decoder-mode: arm
006d6438  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d643c  00 54 9f e5                                      ldr r5, [pc, #0x400]
006d6440  00 c4 9f e5                                      ldr ip, [pc, #0x400]
006d6444  00 e4 9f e5                                      ldr lr, [pc, #0x400]
006d6448  05 50 8f e0                                      add r5, pc, r5
006d644c  0c c0 95 e7                                      ldr ip, [r5, ip]
006d6450  0e e0 95 e7                                      ldr lr, [r5, lr]
006d6454  01 70 a0 e3                                      mov r7, #1
006d6458  2c 60 9c e5                                      ldr r6, [ip, #0x2c]
006d645c  08 e0 8e e2                                      add lr, lr, #8
006d6460  c0 e1 80 e5                                      str lr, [r0, #0x1c0]
006d6464  04 60 80 e5                                      str r6, [r0, #4]
006d6468  c4 71 80 e5                                      str r7, [r0, #0x1c4]
006d646c  4c d0 4d e2                                      sub sp, sp, #0x4c
006d6470  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
006d6474  04 60 80 e2                                      add r6, r0, #4
006d6478  10 60 8d e5                                      str r6, [sp, #0x10]
006d647c  30 80 9c e5                                      ldr r8, [ip, #0x30]
006d6480  03 60 a0 e1                                      mov r6, r3
006d6484  10 30 9d e5                                      ldr r3, [sp, #0x10]
006d6488  01 90 a0 e1                                      mov sb, r1
006d648c  04 10 8c e2                                      add r1, ip, #4
006d6490  0e 80 83 e7                                      str r8, [r3, lr]
006d6494  7c c0 dd e5                                      ldrb ip, [sp, #0x7c]
006d6498  74 30 9d e5                                      ldr r3, [sp, #0x74]
006d649c  00 40 a0 e1                                      mov r4, r0
006d64a0  14 c0 8d e5                                      str ip, [sp, #0x14]
006d64a4  80 c0 dd e5                                      ldrb ip, [sp, #0x80]
006d64a8  7d b0 dd e5                                      ldrb fp, [sp, #0x7d]
006d64ac  7e a0 dd e5                                      ldrb sl, [sp, #0x7e]
006d64b0  0c c0 8d e5                                      str ip, [sp, #0xc]
006d64b4  81 c0 dd e5                                      ldrb ip, [sp, #0x81]
006d64b8  7f 80 dd e5                                      ldrb r8, [sp, #0x7f]
006d64bc  08 c0 8d e5                                      str ip, [sp, #8]
006d64c0  82 c0 dd e5                                      ldrb ip, [sp, #0x82]
006d64c4  04 c0 8d e5                                      str ip, [sp, #4]
006d64c8  83 c0 dd e5                                      ldrb ip, [sp, #0x83]
006d64cc  00 c0 8d e5                                      str ip, [sp]
006d64d0  a1 fd ff eb                                      bl #0x6d5b5c
006d64d4  74 33 9f e5                                      ldr r3, [pc, #0x374]
006d64d8  4e 0f 84 e2                                      add r0, r4, #0x138
006d64dc  78 01 84 e5                                      str r0, [r4, #0x178]
006d64e0  03 30 95 e7                                      ldr r3, [r5, r3]
006d64e4  7c 01 84 e5                                      str r0, [r4, #0x17c]
006d64e8  59 2f 83 e2                                      add r2, r3, #0x164
006d64ec  10 c0 83 e2                                      add ip, r3, #0x10
006d64f0  68 10 83 e2                                      add r1, r3, #0x68
006d64f4  19 3e 83 e2                                      add r3, r3, #0x190
006d64f8  00 c0 84 e5                                      str ip, [r4]
006d64fc  04 10 84 e5                                      str r1, [r4, #4]
006d6500  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006d6504  34 21 84 e5                                      str r2, [r4, #0x134]
006d6508  10 10 a0 e3                                      mov r1, #0x10
006d650c  03 29 f1 eb                                      bl #0x320920
006d6510  78 c1 94 e5                                      ldr ip, [r4, #0x178]
006d6514  bf 14 a0 e3                                      mov r1, #0xbf000000
006d6518  00 30 a0 e3                                      mov r3, #0
006d651c  02 15 81 e2                                      add r1, r1, #0x800000
006d6520  fe 25 a0 e3                                      mov r2, #0x3f800000
006d6524  00 00 a0 e3                                      mov r0, #0
006d6528  00 30 8c e5                                      str r3, [ip]
006d652c  8c 01 84 e5                                      str r0, [r4, #0x18c]
006d6530  98 11 84 e5                                      str r1, [r4, #0x198]
006d6534  a4 21 84 e5                                      str r2, [r4, #0x1a4]
006d6538  ab 81 c4 e5                                      strb r8, [r4, #0x1ab]
006d653c  aa a1 c4 e5                                      strb sl, [r4, #0x1aa]
006d6540  a9 b1 c4 e5                                      strb fp, [r4, #0x1a9]
006d6544  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006d6548  00 00 56 e3                                      cmp r6, #0
006d654c  a8 c1 c4 e5                                      strb ip, [r4, #0x1a8]
006d6550  00 c0 9d e5                                      ldr ip, [sp]
006d6554  af c1 c4 e5                                      strb ip, [r4, #0x1af]
006d6558  04 c0 9d e5                                      ldr ip, [sp, #4]
006d655c  ae c1 c4 e5                                      strb ip, [r4, #0x1ae]
006d6560  08 c0 9d e5                                      ldr ip, [sp, #8]
006d6564  ad c1 c4 e5                                      strb ip, [r4, #0x1ad]
006d6568  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006d656c  bc 31 84 e5                                      str r3, [r4, #0x1bc]
006d6570  84 31 84 e5                                      str r3, [r4, #0x184]
006d6574  ac c1 c4 e5                                      strb ip, [r4, #0x1ac]
006d6578  88 01 84 e5                                      str r0, [r4, #0x188]
006d657c  90 11 84 e5                                      str r1, [r4, #0x190]
006d6580  94 11 84 e5                                      str r1, [r4, #0x194]
006d6584  9c 21 84 e5                                      str r2, [r4, #0x19c]
006d6588  a0 21 84 e5                                      str r2, [r4, #0x1a0]
006d658c  b0 31 84 e5                                      str r3, [r4, #0x1b0]
006d6590  b4 31 84 e5                                      str r3, [r4, #0x1b4]
006d6594  b8 31 84 e5                                      str r3, [r4, #0x1b8]
006d6598  95 00 00 0a                                      beq #0x6d67f4
006d659c  00 30 96 e5                                      ldr r3, [r6]
006d65a0  06 00 a0 e1                                      mov r0, r6
006d65a4  0f e0 a0 e1                                      mov lr, pc
006d65a8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006d65ac  00 00 50 e3                                      cmp r0, #0
006d65b0  9b 00 00 1a                                      bne #0x6d6824
006d65b4  09 00 a0 e1                                      mov r0, sb
006d65b8  09 10 a0 e3                                      mov r1, #9
006d65bc  59 09 fc eb                                      bl #0x5d8b28
006d65c0  18 30 99 e5                                      ldr r3, [sb, #0x18]
006d65c4  1c 20 99 e5                                      ldr r2, [sb, #0x1c]
006d65c8  02 20 63 e0                                      rsb r2, r3, r2
006d65cc  c2 01 50 e1                                      cmp r0, r2, asr #3
006d65d0  80 31 83 30                                      addlo r3, r3, r0, lsl #3
006d65d4  97 00 00 2a                                      bhs #0x6d6838
006d65d8  00 00 93 e5                                      ldr r0, [r3]
006d65dc  00 20 a0 e3                                      mov r2, #0
006d65e0  02 10 a0 e3                                      mov r1, #2
006d65e4  00 00 50 e3                                      cmp r0, #0
006d65e8  44 00 8d e5                                      str r0, [sp, #0x44]
006d65ec  00 30 90 15                                      ldrne r3, [r0]
006d65f0  01 30 83 12                                      addne r3, r3, #1
006d65f4  00 30 80 15                                      strne r3, [r0]
006d65f8  44 00 9d 15                                      ldrne r0, [sp, #0x44]
006d65fc  41 e2 fb eb                                      bl #0x5cef08
006d6600  00 00 8d e5                                      str r0, [sp]
006d6604  84 61 84 e5                                      str r6, [r4, #0x184]
006d6608  04 30 96 e5                                      ldr r3, [r6, #4]
006d660c  00 10 a0 e3                                      mov r1, #0
006d6610  2c 00 a0 e3                                      mov r0, #0x2c
006d6614  01 30 83 e2                                      add r3, r3, #1
006d6618  04 30 86 e5                                      str r3, [r6, #4]
006d661c  e2 76 f9 eb                                      bl #0x5341ac
006d6620  00 50 a0 e1                                      mov r5, r0
006d6624  2a 95 ff eb                                      bl #0x6bbad4
006d6628  00 00 55 e3                                      cmp r5, #0
006d662c  04 30 95 15                                      ldrne r3, [r5, #4]
006d6630  01 30 83 12                                      addne r3, r3, #1
006d6634  04 30 85 15                                      strne r3, [r5, #4]
006d6638  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
006d663c  bc 51 84 e5                                      str r5, [r4, #0x1bc]
006d6640  00 00 50 e3                                      cmp r0, #0
006d6644  00 00 00 0a                                      beq #0x6d664c
006d6648  cd 1b f1 eb                                      bl #0x31d584
006d664c  00 60 a0 e3                                      mov r6, #0
006d6650  1c 20 8d e2                                      add r2, sp, #0x1c
006d6654  38 30 8d e2                                      add r3, sp, #0x38
006d6658  34 c0 8d e2                                      add ip, sp, #0x34
006d665c  40 70 8d e2                                      add r7, sp, #0x40
006d6660  3c a0 8d e2                                      add sl, sp, #0x3c
006d6664  06 50 a0 e1                                      mov r5, r6
006d6668  0c 10 8d e9                                      stmib sp, {r2, r3, ip}
006d666c  54 00 00 ea                                      b #0x6d67c4
006d6670  09 10 a0 e1                                      mov r1, sb
006d6674  09 20 a0 e3                                      mov r2, #9
006d6678  07 00 a0 e1                                      mov r0, r7
006d667c  1b 0d fc eb                                      bl #0x5d9af0
006d6680  84 31 94 e5                                      ldr r3, [r4, #0x184]
006d6684  40 80 9d e5                                      ldr r8, [sp, #0x40]
006d6688  03 00 a0 e1                                      mov r0, r3
006d668c  00 30 93 e5                                      ldr r3, [r3]
006d6690  0f e0 a0 e1                                      mov lr, pc
006d6694  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006d6698  06 20 a0 e1                                      mov r2, r6
006d669c  00 10 a0 e1                                      mov r1, r0
006d66a0  00 30 90 e5                                      ldr r3, [r0]
006d66a4  0a 00 a0 e1                                      mov r0, sl
006d66a8  0f e0 a0 e1                                      mov lr, pc
006d66ac  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d66b0  08 00 a0 e1                                      mov r0, r8
006d66b4  00 10 9d e5                                      ldr r1, [sp]
006d66b8  00 20 a0 e3                                      mov r2, #0
006d66bc  0a 30 a0 e1                                      mov r3, sl
006d66c0  17 db fb eb                                      bl #0x5cd324
006d66c4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006d66c8  00 00 50 e3                                      cmp r0, #0
006d66cc  00 00 00 0a                                      beq #0x6d66d4
006d66d0  ab 1b f1 eb                                      bl #0x31d584
006d66d4  40 30 9d e5                                      ldr r3, [sp, #0x40]
006d66d8  03 00 a0 e1                                      mov r0, r3
006d66dc  04 80 93 e5                                      ldr r8, [r3, #4]
006d66e0  93 bd fb eb                                      bl #0x5c5d34
006d66e4  18 30 98 e5                                      ldr r3, [r8, #0x18]
006d66e8  0c 20 a0 e3                                      mov r2, #0xc
006d66ec  06 c0 a0 e3                                      mov ip, #6
006d66f0  92 30 23 e0                                      mla r3, r2, r0, r3
006d66f4  05 10 a0 e1                                      mov r1, r5
006d66f8  08 30 93 e5                                      ldr r3, [r3, #8]
006d66fc  38 00 a0 e3                                      mov r0, #0x38
006d6700  20 30 93 e5                                      ldr r3, [r3, #0x20]
006d6704  38 b0 93 e5                                      ldr fp, [r3, #0x38]
006d6708  ff 30 a0 e3                                      mov r3, #0xff
006d670c  b0 33 cd e1                                      strh r3, [sp, #0x30]
006d6710  b2 c3 cd e1                                      strh ip, [sp, #0x32]
006d6714  1c 50 8d e5                                      str r5, [sp, #0x1c]
006d6718  20 50 8d e5                                      str r5, [sp, #0x20]
006d671c  24 50 8d e5                                      str r5, [sp, #0x24]
006d6720  28 50 8d e5                                      str r5, [sp, #0x28]
006d6724  2c 50 8d e5                                      str r5, [sp, #0x2c]
006d6728  9f 76 f9 eb                                      bl #0x5341ac
006d672c  0b 10 a0 e1                                      mov r1, fp
006d6730  04 20 9d e5                                      ldr r2, [sp, #4]
006d6734  00 80 a0 e1                                      mov r8, r0
006d6738  e5 fd ff eb                                      bl #0x6d5ed4
006d673c  00 00 58 e3                                      cmp r8, #0
006d6740  38 80 8d e5                                      str r8, [sp, #0x38]
006d6744  04 30 98 15                                      ldrne r3, [r8, #4]
006d6748  01 30 83 12                                      addne r3, r3, #1
006d674c  04 30 88 15                                      strne r3, [r8, #4]
006d6750  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006d6754  00 00 50 e3                                      cmp r0, #0
006d6758  00 00 00 0a                                      beq #0x6d6760
006d675c  88 1b f1 eb                                      bl #0x31d584
006d6760  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
006d6764  08 10 9d e5                                      ldr r1, [sp, #8]
006d6768  07 20 a0 e1                                      mov r2, r7
006d676c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006d6770  34 50 8d e5                                      str r5, [sp, #0x34]
006d6774  ba 97 ff eb                                      bl #0x6bc664
006d6778  34 80 9d e5                                      ldr r8, [sp, #0x34]
006d677c  00 00 58 e3                                      cmp r8, #0
006d6780  08 00 00 0a                                      beq #0x6d67a8
006d6784  00 30 98 e5                                      ldr r3, [r8]
006d6788  01 30 43 e2                                      sub r3, r3, #1
006d678c  00 00 53 e3                                      cmp r3, #0
006d6790  00 30 88 e5                                      str r3, [r8]
006d6794  03 00 00 1a                                      bne #0x6d67a8
006d6798  08 00 a0 e1                                      mov r0, r8
006d679c  ec 23 fc eb                                      bl #0x5df754
006d67a0  08 00 a0 e1                                      mov r0, r8
006d67a4  c1 de f0 eb                                      bl #0x30e2b0
006d67a8  38 00 9d e5                                      ldr r0, [sp, #0x38]
006d67ac  00 00 50 e3                                      cmp r0, #0
006d67b0  00 00 00 0a                                      beq #0x6d67b8
006d67b4  72 1b f1 eb                                      bl #0x31d584
006d67b8  07 00 a0 e1                                      mov r0, r7
006d67bc  09 e9 f0 eb                                      bl #0x310be8
006d67c0  01 60 86 e2                                      add r6, r6, #1
006d67c4  84 31 94 e5                                      ldr r3, [r4, #0x184]
006d67c8  03 00 a0 e1                                      mov r0, r3
006d67cc  00 30 93 e5                                      ldr r3, [r3]
006d67d0  0f e0 a0 e1                                      mov lr, pc
006d67d4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
006d67d8  00 30 90 e5                                      ldr r3, [r0]
006d67dc  0f e0 a0 e1                                      mov lr, pc
006d67e0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d67e4  00 00 56 e1                                      cmp r6, r0
006d67e8  a0 ff ff 3a                                      blo #0x6d6670
006d67ec  44 00 8d e2                                      add r0, sp, #0x44
006d67f0  b0 ee f1 eb                                      bl #0x3522b8
006d67f4  70 10 9d e5                                      ldr r1, [sp, #0x70]
006d67f8  04 00 a0 e1                                      mov r0, r4
006d67fc  26 fc ff eb                                      bl #0x6d589c
006d6800  04 00 a0 e1                                      mov r0, r4
006d6804  78 10 9d e5                                      ldr r1, [sp, #0x78]
006d6808  2e fc ff eb                                      bl #0x6d58c8
006d680c  10 00 9d e5                                      ldr r0, [sp, #0x10]
006d6810  01 10 a0 e3                                      mov r1, #1
006d6814  60 02 fb eb                                      bl #0x59719c
006d6818  04 00 a0 e1                                      mov r0, r4
006d681c  4c d0 8d e2                                      add sp, sp, #0x4c
006d6820  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006d6824  28 00 9f e5                                      ldr r0, [pc, #0x28]
006d6828  07 10 a0 e1                                      mov r1, r7
006d682c  00 00 8f e0                                      add r0, pc, r0
006d6830  1a d1 fc eb                                      bl #0x60aca0
006d6834  ee ff ff ea                                      b #0x6d67f4
006d6838  18 30 9f e5                                      ldr r3, [pc, #0x18]
006d683c  03 30 95 e7                                      ldr r3, [r5, r3]
006d6840  64 ff ff ea                                      b #0x6d65d8
; mapping-symbol data/literal pool
006d6844  48 e6 2b 00 50 42 00 00 44 2b 00 00 c4 0d 00 00  .byte 0x48, 0xe6, 0x2b, 0x00, 0x50, 0x42, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xc4, 0x0d, 0x00, 0x00
006d6854  c4 4c 21 00 dc 30 00 00                          .byte 0xc4, 0x4c, 0x21, 0x00, 0xdc, 0x30, 0x00, 0x00

; FUNCTION 0x006d68e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_N6glitch5scene23CBillboardTextSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d68e4  4d 0f 40 e2                                      sub r0, r0, #0x134
006d68e8  01 00 00 ea                                      b #0x6d68f4

; FUNCTION 0x006d68ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_N6glitch5scene23CBillboardTextSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d68ec  04 00 40 e2                                      sub r0, r0, #4
006d68f0  ff ff ff ea                                      b #0x6d68f4

; FUNCTION 0x006d68f4, declared_size=232, range_size=232, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNodeD1Ev
; demangled: glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d68f4  70 40 2d e9                                      push {r4, r5, r6, lr}
006d68f8  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
006d68fc  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
006d6900  00 40 a0 e1                                      mov r4, r0
006d6904  05 50 8f e0                                      add r5, pc, r5
006d6908  84 01 90 e5                                      ldr r0, [r0, #0x184]
006d690c  03 30 95 e7                                      ldr r3, [r5, r3]
006d6910  00 00 50 e3                                      cmp r0, #0
006d6914  59 2f 83 e2                                      add r2, r3, #0x164
006d6918  10 c0 83 e2                                      add ip, r3, #0x10
006d691c  68 10 83 e2                                      add r1, r3, #0x68
006d6920  19 3e 83 e2                                      add r3, r3, #0x190
006d6924  00 c0 84 e5                                      str ip, [r4]
006d6928  04 10 84 e5                                      str r1, [r4, #4]
006d692c  c0 31 84 e5                                      str r3, [r4, #0x1c0]
006d6930  34 21 84 e5                                      str r2, [r4, #0x134]
006d6934  00 00 00 0a                                      beq #0x6d693c
006d6938  11 1b f1 eb                                      bl #0x31d584
006d693c  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
006d6940  00 00 50 e3                                      cmp r0, #0
006d6944  00 00 00 0a                                      beq #0x6d694c
006d6948  0d 1b f1 eb                                      bl #0x31d584
006d694c  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006d6950  00 00 50 e3                                      cmp r0, #0
006d6954  00 00 00 0a                                      beq #0x6d695c
006d6958  bc e6 f0 eb                                      bl #0x310450
006d695c  4e 3f 84 e2                                      add r3, r4, #0x138
006d6960  44 00 93 e5                                      ldr r0, [r3, #0x44]
006d6964  03 00 50 e1                                      cmp r0, r3
006d6968  02 00 00 0a                                      beq #0x6d6978
006d696c  00 00 50 e3                                      cmp r0, #0
006d6970  00 00 00 0a                                      beq #0x6d6978
006d6974  b5 e6 f0 eb                                      bl #0x310450
006d6978  54 20 9f e5                                      ldr r2, [pc, #0x54]
006d697c  54 30 9f e5                                      ldr r3, [pc, #0x54]
006d6980  04 00 84 e2                                      add r0, r4, #4
006d6984  02 10 95 e7                                      ldr r1, [r5, r2]
006d6988  03 30 95 e7                                      ldr r3, [r5, r3]
006d698c  04 20 91 e5                                      ldr r2, [r1, #4]
006d6990  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006d6994  08 30 83 e2                                      add r3, r3, #8
006d6998  04 10 84 e8                                      stm r4, {r2, ip}
006d699c  34 31 84 e5                                      str r3, [r4, #0x134]
006d69a0  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
006d69a4  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006d69a8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006d69ac  08 10 81 e2                                      add r1, r1, #8
006d69b0  03 c0 84 e7                                      str ip, [r4, r3]
006d69b4  00 30 94 e5                                      ldr r3, [r4]
006d69b8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d69bc  03 20 84 e7                                      str r2, [r4, r3]
006d69c0  bd 08 fb eb                                      bl #0x598cbc
006d69c4  04 00 a0 e1                                      mov r0, r4
006d69c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d69cc  8c e1 2b 00 c4 0d 00 00 50 42 00 00 64 3a 00 00  .byte 0x8c, 0xe1, 0x2b, 0x00, 0xc4, 0x0d, 0x00, 0x00, 0x50, 0x42, 0x00, 0x00, 0x64, 0x3a, 0x00, 0x00

; FUNCTION 0x006d69dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn308_N6glitch5scene23CBillboardTextSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d69dc  4d 0f 40 e2                                      sub r0, r0, #0x134
006d69e0  01 00 00 ea                                      b #0x6d69ec

; FUNCTION 0x006d69e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_N6glitch5scene23CBillboardTextSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d69e4  04 00 40 e2                                      sub r0, r0, #4
006d69e8  ff ff ff ea                                      b #0x6d69ec

; FUNCTION 0x006d69ec, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNodeD0Ev
; demangled: glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d69ec  10 40 2d e9                                      push {r4, lr}
006d69f0  00 40 a0 e1                                      mov r4, r0
006d69f4  be ff ff eb                                      bl #0x6d68f4
006d69f8  04 00 a0 e1                                      mov r0, r4
006d69fc  2b de f0 eb                                      bl #0x30e2b0
006d6a00  04 00 a0 e1                                      mov r0, r4
006d6a04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d6a08, declared_size=252, range_size=252, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNodeD2Ev
; demangled: glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d6a08  70 40 2d e9                                      push {r4, r5, r6, lr}
006d6a0c  00 30 91 e5                                      ldr r3, [r1]
006d6a10  01 50 a0 e1                                      mov r5, r1
006d6a14  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
006d6a18  00 30 80 e5                                      str r3, [r0]
006d6a1c  20 10 91 e5                                      ldr r1, [r1, #0x20]
006d6a20  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
006d6a24  06 60 8f e0                                      add r6, pc, r6
006d6a28  04 10 80 e5                                      str r1, [r0, #4]
006d6a2c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6a30  24 10 95 e5                                      ldr r1, [r5, #0x24]
006d6a34  00 40 a0 e1                                      mov r4, r0
006d6a38  02 20 96 e7                                      ldr r2, [r6, r2]
006d6a3c  03 10 80 e7                                      str r1, [r0, r3]
006d6a40  00 30 90 e5                                      ldr r3, [r0]
006d6a44  28 10 95 e5                                      ldr r1, [r5, #0x28]
006d6a48  59 2f 82 e2                                      add r2, r2, #0x164
006d6a4c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d6a50  03 10 80 e7                                      str r1, [r0, r3]
006d6a54  84 01 90 e5                                      ldr r0, [r0, #0x184]
006d6a58  34 21 84 e5                                      str r2, [r4, #0x134]
006d6a5c  00 00 50 e3                                      cmp r0, #0
006d6a60  00 00 00 0a                                      beq #0x6d6a68
006d6a64  c6 1a f1 eb                                      bl #0x31d584
006d6a68  bc 01 94 e5                                      ldr r0, [r4, #0x1bc]
006d6a6c  00 00 50 e3                                      cmp r0, #0
006d6a70  00 00 00 0a                                      beq #0x6d6a78
006d6a74  c2 1a f1 eb                                      bl #0x31d584
006d6a78  b0 01 94 e5                                      ldr r0, [r4, #0x1b0]
006d6a7c  00 00 50 e3                                      cmp r0, #0
006d6a80  00 00 00 0a                                      beq #0x6d6a88
006d6a84  71 e6 f0 eb                                      bl #0x310450
006d6a88  4e 3f 84 e2                                      add r3, r4, #0x138
006d6a8c  44 00 93 e5                                      ldr r0, [r3, #0x44]
006d6a90  03 00 50 e1                                      cmp r0, r3
006d6a94  02 00 00 0a                                      beq #0x6d6aa4
006d6a98  00 00 50 e3                                      cmp r0, #0
006d6a9c  00 00 00 0a                                      beq #0x6d6aa4
006d6aa0  6a e6 f0 eb                                      bl #0x310450
006d6aa4  54 20 9f e5                                      ldr r2, [pc, #0x54]
006d6aa8  04 30 85 e2                                      add r3, r5, #4
006d6aac  04 10 83 e2                                      add r1, r3, #4
006d6ab0  02 20 96 e7                                      ldr r2, [r6, r2]
006d6ab4  04 00 84 e2                                      add r0, r4, #4
006d6ab8  08 20 82 e2                                      add r2, r2, #8
006d6abc  34 21 84 e5                                      str r2, [r4, #0x134]
006d6ac0  04 20 95 e5                                      ldr r2, [r5, #4]
006d6ac4  00 20 84 e5                                      str r2, [r4]
006d6ac8  10 c0 93 e5                                      ldr ip, [r3, #0x10]
006d6acc  04 c0 84 e5                                      str ip, [r4, #4]
006d6ad0  14 c0 93 e5                                      ldr ip, [r3, #0x14]
006d6ad4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006d6ad8  02 c0 84 e7                                      str ip, [r4, r2]
006d6adc  00 c0 94 e5                                      ldr ip, [r4]
006d6ae0  18 20 93 e5                                      ldr r2, [r3, #0x18]
006d6ae4  10 30 1c e5                                      ldr r3, [ip, #-0x10]
006d6ae8  03 20 84 e7                                      str r2, [r4, r3]
006d6aec  72 08 fb eb                                      bl #0x598cbc
006d6af0  04 00 a0 e1                                      mov r0, r4
006d6af4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d6af8  6c e0 2b 00 c4 0d 00 00 64 3a 00 00              .byte 0x6c, 0xe0, 0x2b, 0x00, 0xc4, 0x0d, 0x00, 0x00, 0x64, 0x3a, 0x00, 0x00

; FUNCTION 0x006d6bdc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZThn4_N6glitch5scene23CBillboardTextSceneNode6renderEPv
; demangled: non-virtual thunk to glitch::scene::CBillboardTextSceneNode::render(void*)
; decoder-mode: arm
006d6bdc  04 00 40 e2                                      sub r0, r0, #4
006d6be0  ff ff ff ea                                      b #0x6d6be4

; FUNCTION 0x006d6be4, declared_size=412, range_size=412, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZN6glitch5scene23CBillboardTextSceneNode6renderEPv
; demangled: glitch::scene::CBillboardTextSceneNode::render(void*)
; decoder-mode: arm
006d6be4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006d6be8  14 31 90 e5                                      ldr r3, [r0, #0x114]
006d6bec  00 60 51 e2                                      subs r6, r1, #0
006d6bf0  58 d0 4d e2                                      sub sp, sp, #0x58
006d6bf4  00 40 a0 e1                                      mov r4, r0
006d6bf8  14 50 93 e5                                      ldr r5, [r3, #0x14]
006d6bfc  53 00 00 0a                                      beq #0x6d6d50
006d6c00  00 10 a0 e3                                      mov r1, #0
006d6c04  40 20 a0 e3                                      mov r2, #0x40
006d6c08  0d 00 a0 e1                                      mov r0, sp
006d6c0c  13 de f0 eb                                      bl #0x30e460
006d6c10  fe 35 a0 e3                                      mov r3, #0x3f800000
006d6c14  01 10 a0 e3                                      mov r1, #1
006d6c18  40 10 cd e5                                      strb r1, [sp, #0x40]
006d6c1c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006d6c20  00 30 8d e5                                      str r3, [sp]
006d6c24  14 30 8d e5                                      str r3, [sp, #0x14]
006d6c28  28 30 8d e5                                      str r3, [sp, #0x28]
006d6c2c  0d 20 a0 e1                                      mov r2, sp
006d6c30  05 00 a0 e1                                      mov r0, r5
006d6c34  00 30 95 e5                                      ldr r3, [r5]
006d6c38  0f e0 a0 e1                                      mov lr, pc
006d6c3c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006d6c40  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006d6c44  01 60 46 e2                                      sub r6, r6, #1
006d6c48  54 70 8d e2                                      add r7, sp, #0x54
006d6c4c  03 10 a0 e1                                      mov r1, r3
006d6c50  07 00 a0 e1                                      mov r0, r7
006d6c54  06 20 a0 e1                                      mov r2, r6
006d6c58  00 30 93 e5                                      ldr r3, [r3]
006d6c5c  0f e0 a0 e1                                      mov lr, pc
006d6c60  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d6c64  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006d6c68  06 20 a0 e1                                      mov r2, r6
006d6c6c  50 00 8d e2                                      add r0, sp, #0x50
006d6c70  03 10 a0 e1                                      mov r1, r3
006d6c74  00 30 93 e5                                      ldr r3, [r3]
006d6c78  0f e0 a0 e1                                      mov lr, pc
006d6c7c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006d6c80  50 30 9d e5                                      ldr r3, [sp, #0x50]
006d6c84  05 00 a0 e1                                      mov r0, r5
006d6c88  07 10 a0 e1                                      mov r1, r7
006d6c8c  00 00 53 e3                                      cmp r3, #0
006d6c90  4c 30 8d e5                                      str r3, [sp, #0x4c]
006d6c94  00 20 93 15                                      ldrne r2, [r3]
006d6c98  01 20 82 12                                      addne r2, r2, #1
006d6c9c  00 20 83 15                                      strne r2, [r3]
006d6ca0  4c 20 8d e2                                      add r2, sp, #0x4c
006d6ca4  99 1f f2 eb                                      bl #0x35eb10
006d6ca8  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
006d6cac  00 00 58 e3                                      cmp r8, #0
006d6cb0  04 00 00 0a                                      beq #0x6d6cc8
006d6cb4  00 30 98 e5                                      ldr r3, [r8]
006d6cb8  01 30 43 e2                                      sub r3, r3, #1
006d6cbc  00 00 53 e3                                      cmp r3, #0
006d6cc0  00 30 88 e5                                      str r3, [r8]
006d6cc4  28 00 00 0a                                      beq #0x6d6d6c
006d6cc8  50 80 9d e5                                      ldr r8, [sp, #0x50]
006d6ccc  00 00 58 e3                                      cmp r8, #0
006d6cd0  04 00 00 0a                                      beq #0x6d6ce8
006d6cd4  00 30 98 e5                                      ldr r3, [r8]
006d6cd8  01 30 43 e2                                      sub r3, r3, #1
006d6cdc  00 00 53 e3                                      cmp r3, #0
006d6ce0  00 30 88 e5                                      str r3, [r8]
006d6ce4  1b 00 00 0a                                      beq #0x6d6d58
006d6ce8  07 00 a0 e1                                      mov r0, r7
006d6cec  bd e7 f0 eb                                      bl #0x310be8
006d6cf0  bc 31 94 e5                                      ldr r3, [r4, #0x1bc]
006d6cf4  06 20 a0 e1                                      mov r2, r6
006d6cf8  48 00 8d e2                                      add r0, sp, #0x48
006d6cfc  03 10 a0 e1                                      mov r1, r3
006d6d00  00 30 93 e5                                      ldr r3, [r3]
006d6d04  0f e0 a0 e1                                      mov lr, pc
006d6d08  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006d6d0c  48 30 9d e5                                      ldr r3, [sp, #0x48]
006d6d10  05 00 a0 e1                                      mov r0, r5
006d6d14  44 10 8d e2                                      add r1, sp, #0x44
006d6d18  00 00 53 e3                                      cmp r3, #0
006d6d1c  44 30 8d e5                                      str r3, [sp, #0x44]
006d6d20  04 20 93 15                                      ldrne r2, [r3, #4]
006d6d24  01 20 82 12                                      addne r2, r2, #1
006d6d28  04 20 83 15                                      strne r2, [r3, #4]
006d6d2c  a7 1f f2 eb                                      bl #0x35ebd0
006d6d30  44 00 9d e5                                      ldr r0, [sp, #0x44]
006d6d34  00 00 50 e3                                      cmp r0, #0
006d6d38  00 00 00 0a                                      beq #0x6d6d40
006d6d3c  10 1a f1 eb                                      bl #0x31d584
006d6d40  48 00 9d e5                                      ldr r0, [sp, #0x48]
006d6d44  00 00 50 e3                                      cmp r0, #0
006d6d48  00 00 00 0a                                      beq #0x6d6d50
006d6d4c  0c 1a f1 eb                                      bl #0x31d584
006d6d50  58 d0 8d e2                                      add sp, sp, #0x58
006d6d54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006d6d58  08 00 a0 e1                                      mov r0, r8
006d6d5c  7c 22 fc eb                                      bl #0x5df754
006d6d60  08 00 a0 e1                                      mov r0, r8
006d6d64  51 dd f0 eb                                      bl #0x30e2b0
006d6d68  de ff ff ea                                      b #0x6d6ce8
006d6d6c  08 00 a0 e1                                      mov r0, r8
006d6d70  77 22 fc eb                                      bl #0x5df754
006d6d74  08 00 a0 e1                                      mov r0, r8
006d6d78  4c dd f0 eb                                      bl #0x30e2b0
006d6d7c  d1 ff ff ea                                      b #0x6d6cc8

; FUNCTION 0x006d6dc0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZTv0_n24_N6glitch5scene23CBillboardTextSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d6dc0  00 30 90 e5                                      ldr r3, [r0]
006d6dc4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d6dc8  03 00 80 e0                                      add r0, r0, r3
006d6dcc  06 ff ff ea                                      b #0x6d69ec

; FUNCTION 0x006d6dd0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZTv0_n12_N6glitch5scene23CBillboardTextSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d6dd0  00 30 90 e5                                      ldr r3, [r0]
006d6dd4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6dd8  03 00 80 e0                                      add r0, r0, r3
006d6ddc  02 ff ff ea                                      b #0x6d69ec

; FUNCTION 0x006d6de0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZTv0_n24_N6glitch5scene23CBillboardTextSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d6de0  00 30 90 e5                                      ldr r3, [r0]
006d6de4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d6de8  03 00 80 e0                                      add r0, r0, r3
006d6dec  c0 fe ff ea                                      b #0x6d68f4

; FUNCTION 0x006d6df0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CBillboardTextSceneNode
; alias: _ZTv0_n12_N6glitch5scene23CBillboardTextSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CBillboardTextSceneNode::~CBillboardTextSceneNode()
; decoder-mode: arm
006d6df0  00 30 90 e5                                      ldr r3, [r0]
006d6df4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6df8  03 00 80 e0                                      add r0, r0, r3
006d6dfc  bc fe ff ea                                      b #0x6d68f4
