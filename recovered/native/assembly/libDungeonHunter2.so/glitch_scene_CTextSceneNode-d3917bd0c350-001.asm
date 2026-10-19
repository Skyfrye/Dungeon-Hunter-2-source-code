; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d583c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZThn4_NK6glitch5scene14CTextSceneNode7getTypeEv
; demangled: non-virtual thunk to glitch::scene::CTextSceneNode::getType() const
; decoder-mode: arm
006d583c  04 00 40 e2                                      sub r0, r0, #4
006d5840  ff ff ff ea                                      b #0x6d5844

; FUNCTION 0x006d5844, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZNK6glitch5scene14CTextSceneNode7getTypeEv
; demangled: glitch::scene::CTextSceneNode::getType() const
; decoder-mode: arm
006d5844  74 05 06 e3                                      movw r0, #0x6574
006d5848  78 04 47 e3                                      movt r0, #0x7478
006d584c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d5864, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZThn4_NK6glitch5scene14CTextSceneNode14getBoundingBoxEv
; demangled: non-virtual thunk to glitch::scene::CTextSceneNode::getBoundingBox() const
; decoder-mode: arm
006d5864  04 00 40 e2                                      sub r0, r0, #4
006d5868  ff ff ff ea                                      b #0x6d586c

; FUNCTION 0x006d586c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZNK6glitch5scene14CTextSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CTextSceneNode::getBoundingBox() const
; decoder-mode: arm
006d586c  62 0f 80 e2                                      add r0, r0, #0x188
006d5870  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d5874, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNode12setTextColorENS_5video6SColorE
; demangled: glitch::scene::CTextSceneNode::setTextColor(glitch::video::SColor)
; decoder-mode: arm
006d5874  51 34 e7 e7                                      ubfx r3, r1, #8, #8
006d5878  51 28 e7 e7                                      ubfx r2, r1, #0x10, #8
006d587c  21 cc a0 e1                                      lsr ip, r1, #0x18
006d5880  08 d0 4d e2                                      sub sp, sp, #8
006d5884  7c 11 c0 e5                                      strb r1, [r0, #0x17c]
006d5888  7f c1 c0 e5                                      strb ip, [r0, #0x17f]
006d588c  7e 21 c0 e5                                      strb r2, [r0, #0x17e]
006d5890  7d 31 c0 e5                                      strb r3, [r0, #0x17d]
006d5894  08 d0 8d e2                                      add sp, sp, #8
006d5898  1e ff 2f e1                                      bx lr

; FUNCTION 0x006d5afc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZThn4_N6glitch5scene14CTextSceneNode19onRegisterSceneNodeEv
; demangled: non-virtual thunk to glitch::scene::CTextSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006d5afc  04 00 40 e2                                      sub r0, r0, #4
006d5b00  ff ff ff ea                                      b #0x6d5b04

; FUNCTION 0x006d5b04, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CTextSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006d5b04  10 40 2d e9                                      push {r4, lr}
006d5b08  00 10 a0 e1                                      mov r1, r0
006d5b0c  14 01 90 e5                                      ldr r0, [r0, #0x114]
006d5b10  18 d0 4d e2                                      sub sp, sp, #0x18
006d5b14  00 20 a0 e3                                      mov r2, #0
006d5b18  00 30 90 e5                                      ldr r3, [r0]
006d5b1c  18 40 8d e2                                      add r4, sp, #0x18
006d5b20  04 10 81 e2                                      add r1, r1, #4
006d5b24  24 c0 93 e5                                      ldr ip, [r3, #0x24]
006d5b28  08 30 a0 e3                                      mov r3, #8
006d5b2c  04 20 24 e5                                      str r2, [r4, #-4]!
006d5b30  00 30 8d e5                                      str r3, [sp]
006d5b34  02 31 e0 e3                                      mvn r3, #0x80000000
006d5b38  0c 00 8d e9                                      stmib sp, {r2, r3}
006d5b3c  02 30 a0 e1                                      mov r3, r2
006d5b40  04 20 a0 e1                                      mov r2, r4
006d5b44  3c ff 2f e1                                      blx ip
006d5b48  04 00 a0 e1                                      mov r0, r4
006d5b4c  25 ec f0 eb                                      bl #0x310be8
006d5b50  01 00 a0 e3                                      mov r0, #1
006d5b54  18 d0 8d e2                                      add sp, sp, #0x18
006d5b58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d5c00, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNode7setTextEPKw
; demangled: glitch::scene::CTextSceneNode::setText(wchar_t const*)
; decoder-mode: arm
006d5c00  70 40 2d e9                                      push {r4, r5, r6, lr}
006d5c04  00 40 a0 e1                                      mov r4, r0
006d5c08  01 00 a0 e1                                      mov r0, r1
006d5c0c  01 50 a0 e1                                      mov r5, r1
006d5c10  1c e4 f0 eb                                      bl #0x30ec88
006d5c14  05 10 a0 e1                                      mov r1, r5
006d5c18  00 21 85 e0                                      add r2, r5, r0, lsl #2
006d5c1c  4d 0f 84 e2                                      add r0, r4, #0x134
006d5c20  70 40 bd e8                                      pop {r4, r5, r6, lr}
006d5c24  5d 35 f1 ea                                      b #0x3231a0

; FUNCTION 0x006d5c28, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZThn4_N6glitch5scene14CTextSceneNode6renderEPv
; demangled: non-virtual thunk to glitch::scene::CTextSceneNode::render(void*)
; decoder-mode: arm
006d5c28  04 00 40 e2                                      sub r0, r0, #4
006d5c2c  ff ff ff ea                                      b #0x6d5c30

; FUNCTION 0x006d5c30, declared_size=176, range_size=176, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNode6renderEPv
; demangled: glitch::scene::CTextSceneNode::render(void*)
; decoder-mode: arm
006d5c30  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006d5c34  80 31 90 e5                                      ldr r3, [r0, #0x180]
006d5c38  3c d0 4d e2                                      sub sp, sp, #0x3c
006d5c3c  00 40 a0 e1                                      mov r4, r0
006d5c40  00 00 53 e3                                      cmp r3, #0
006d5c44  23 00 00 0a                                      beq #0x6d5cd8
006d5c48  84 61 90 e5                                      ldr r6, [r0, #0x184]
006d5c4c  00 00 56 e3                                      cmp r6, #0
006d5c50  20 00 00 0a                                      beq #0x6d5cd8
006d5c54  00 30 96 e5                                      ldr r3, [r6]
006d5c58  24 70 8d e2                                      add r7, sp, #0x24
006d5c5c  07 00 a0 e1                                      mov r0, r7
006d5c60  04 10 84 e2                                      add r1, r4, #4
006d5c64  18 50 93 e5                                      ldr r5, [r3, #0x18]
006d5c68  44 05 fb eb                                      bl #0x597180
006d5c6c  14 31 94 e5                                      ldr r3, [r4, #0x114]
006d5c70  06 10 a0 e1                                      mov r1, r6
006d5c74  07 20 a0 e1                                      mov r2, r7
006d5c78  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
006d5c7c  30 00 8d e2                                      add r0, sp, #0x30
006d5c80  35 ff 2f e1                                      blx r5
006d5c84  30 20 9d e5                                      ldr r2, [sp, #0x30]
006d5c88  34 30 9d e5                                      ldr r3, [sp, #0x34]
006d5c8c  80 c1 94 e5                                      ldr ip, [r4, #0x180]
006d5c90  01 e0 82 e2                                      add lr, r2, #1
006d5c94  01 00 83 e2                                      add r0, r3, #1
006d5c98  78 11 94 e5                                      ldr r1, [r4, #0x178]
006d5c9c  1c e0 8d e5                                      str lr, [sp, #0x1c]
006d5ca0  20 00 8d e5                                      str r0, [sp, #0x20]
006d5ca4  14 20 8d e5                                      str r2, [sp, #0x14]
006d5ca8  18 30 8d e5                                      str r3, [sp, #0x18]
006d5cac  01 20 a0 e3                                      mov r2, #1
006d5cb0  00 e0 a0 e3                                      mov lr, #0
006d5cb4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006d5cb8  0c 00 a0 e1                                      mov r0, ip
006d5cbc  00 c0 9c e5                                      ldr ip, [ip]
006d5cc0  04 20 8d e5                                      str r2, [sp, #4]
006d5cc4  00 20 8d e5                                      str r2, [sp]
006d5cc8  08 e0 8d e5                                      str lr, [sp, #8]
006d5ccc  14 20 8d e2                                      add r2, sp, #0x14
006d5cd0  0f e0 a0 e1                                      mov lr, pc
006d5cd4  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006d5cd8  3c d0 8d e2                                      add sp, sp, #0x3c
006d5cdc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006d5ce0, declared_size=288, range_size=288, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNodeC1EiPNS_3gui8IGUIFontEPNS0_22ISceneCollisionManagerERKNS_4core8vector3dIfEEPKwNS_5video6SColorE
; demangled: glitch::scene::CTextSceneNode::CTextSceneNode(int, glitch::gui::IGUIFont*, glitch::scene::ISceneCollisionManager*, glitch::core::vector3d<float> const&, wchar_t const*, glitch::video::SColor)
; decoder-mode: arm
006d5ce0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d5ce4  04 51 9f e5                                      ldr r5, [pc, #0x104]
006d5ce8  04 c1 9f e5                                      ldr ip, [pc, #0x104]
006d5cec  04 e1 9f e5                                      ldr lr, [pc, #0x104]
006d5cf0  05 50 8f e0                                      add r5, pc, r5
006d5cf4  0c c0 95 e7                                      ldr ip, [r5, ip]
006d5cf8  0e e0 95 e7                                      ldr lr, [r5, lr]
006d5cfc  01 70 a0 e3                                      mov r7, #1
006d5d00  2c 60 9c e5                                      ldr r6, [ip, #0x2c]
006d5d04  08 e0 8e e2                                      add lr, lr, #8
006d5d08  a4 71 80 e5                                      str r7, [r0, #0x1a4]
006d5d0c  a0 e1 80 e5                                      str lr, [r0, #0x1a0]
006d5d10  04 60 80 e5                                      str r6, [r0, #4]
006d5d14  0c 60 16 e5                                      ldr r6, [r6, #-0xc]
006d5d18  30 80 9c e5                                      ldr r8, [ip, #0x30]
006d5d1c  04 70 80 e2                                      add r7, r0, #4
006d5d20  14 d0 4d e2                                      sub sp, sp, #0x14
006d5d24  06 80 87 e7                                      str r8, [r7, r6]
006d5d28  01 e0 a0 e1                                      mov lr, r1
006d5d2c  02 60 a0 e1                                      mov r6, r2
006d5d30  04 30 8d e5                                      str r3, [sp, #4]
006d5d34  04 10 8c e2                                      add r1, ip, #4
006d5d38  0e 20 a0 e1                                      mov r2, lr
006d5d3c  38 30 9d e5                                      ldr r3, [sp, #0x38]
006d5d40  00 40 a0 e1                                      mov r4, r0
006d5d44  40 b0 dd e5                                      ldrb fp, [sp, #0x40]
006d5d48  41 90 dd e5                                      ldrb sb, [sp, #0x41]
006d5d4c  42 a0 dd e5                                      ldrb sl, [sp, #0x42]
006d5d50  43 80 dd e5                                      ldrb r8, [sp, #0x43]
006d5d54  80 ff ff eb                                      bl #0x6d5b5c
006d5d58  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
006d5d5c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006d5d60  0c 20 8d e2                                      add r2, sp, #0xc
006d5d64  03 30 95 e7                                      ldr r3, [r5, r3]
006d5d68  4d 0f 84 e2                                      add r0, r4, #0x134
006d5d6c  15 ce 83 e2                                      add ip, r3, #0x150
006d5d70  10 e0 83 e2                                      add lr, r3, #0x10
006d5d74  4c 30 83 e2                                      add r3, r3, #0x4c
006d5d78  00 e0 84 e5                                      str lr, [r4]
006d5d7c  04 30 84 e5                                      str r3, [r4, #4]
006d5d80  a0 c1 84 e5                                      str ip, [r4, #0x1a0]
006d5d84  5c 40 f1 eb                                      bl #0x325efc
006d5d88  7f 81 c4 e5                                      strb r8, [r4, #0x17f]
006d5d8c  7e a1 c4 e5                                      strb sl, [r4, #0x17e]
006d5d90  7d 91 c4 e5                                      strb sb, [r4, #0x17d]
006d5d94  7c b1 c4 e5                                      strb fp, [r4, #0x17c]
006d5d98  04 10 9d e5                                      ldr r1, [sp, #4]
006d5d9c  bf 24 a0 e3                                      mov r2, #0xbf000000
006d5da0  fe 35 a0 e3                                      mov r3, #0x3f800000
006d5da4  02 25 82 e2                                      add r2, r2, #0x800000
006d5da8  00 00 56 e3                                      cmp r6, #0
006d5dac  84 11 84 e5                                      str r1, [r4, #0x184]
006d5db0  9c 31 84 e5                                      str r3, [r4, #0x19c]
006d5db4  94 31 84 e5                                      str r3, [r4, #0x194]
006d5db8  98 31 84 e5                                      str r3, [r4, #0x198]
006d5dbc  90 21 84 e5                                      str r2, [r4, #0x190]
006d5dc0  80 61 84 e5                                      str r6, [r4, #0x180]
006d5dc4  88 21 84 e5                                      str r2, [r4, #0x188]
006d5dc8  8c 21 84 e5                                      str r2, [r4, #0x18c]
006d5dcc  04 30 96 15                                      ldrne r3, [r6, #4]
006d5dd0  07 00 a0 e1                                      mov r0, r7
006d5dd4  00 10 a0 e3                                      mov r1, #0
006d5dd8  01 30 83 12                                      addne r3, r3, #1
006d5ddc  04 30 86 15                                      strne r3, [r6, #4]
006d5de0  ed 04 fb eb                                      bl #0x59719c
006d5de4  04 00 a0 e1                                      mov r0, r4
006d5de8  14 d0 8d e2                                      add sp, sp, #0x14
006d5dec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
006d5df0  a0 ed 2b 00 58 35 00 00 44 2b 00 00 58 24 00 00  .byte 0xa0, 0xed, 0x2b, 0x00, 0x58, 0x35, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x58, 0x24, 0x00, 0x00

; FUNCTION 0x006d5e00, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNodeC2EiPNS_3gui8IGUIFontEPNS0_22ISceneCollisionManagerERKNS_4core8vector3dIfEEPKwNS_5video6SColorE
; demangled: glitch::scene::CTextSceneNode::CTextSceneNode(int, glitch::gui::IGUIFont*, glitch::scene::ISceneCollisionManager*, glitch::core::vector3d<float> const&, wchar_t const*, glitch::video::SColor)
; decoder-mode: arm
006d5e00  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006d5e04  08 d0 4d e2                                      sub sp, sp, #8
006d5e08  01 50 a0 e1                                      mov r5, r1
006d5e0c  03 60 a0 e1                                      mov r6, r3
006d5e10  04 10 81 e2                                      add r1, r1, #4
006d5e14  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006d5e18  00 40 a0 e1                                      mov r4, r0
006d5e1c  34 90 dd e5                                      ldrb sb, [sp, #0x34]
006d5e20  35 a0 dd e5                                      ldrb sl, [sp, #0x35]
006d5e24  36 80 dd e5                                      ldrb r8, [sp, #0x36]
006d5e28  37 70 dd e5                                      ldrb r7, [sp, #0x37]
006d5e2c  4a ff ff eb                                      bl #0x6d5b5c
006d5e30  00 30 95 e5                                      ldr r3, [r5]
006d5e34  30 10 9d e5                                      ldr r1, [sp, #0x30]
006d5e38  04 20 8d e2                                      add r2, sp, #4
006d5e3c  00 30 84 e5                                      str r3, [r4]
006d5e40  20 c0 95 e5                                      ldr ip, [r5, #0x20]
006d5e44  4d 0f 84 e2                                      add r0, r4, #0x134
006d5e48  04 c0 84 e5                                      str ip, [r4, #4]
006d5e4c  24 c0 95 e5                                      ldr ip, [r5, #0x24]
006d5e50  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d5e54  03 c0 84 e7                                      str ip, [r4, r3]
006d5e58  00 30 94 e5                                      ldr r3, [r4]
006d5e5c  28 c0 95 e5                                      ldr ip, [r5, #0x28]
006d5e60  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d5e64  03 c0 84 e7                                      str ip, [r4, r3]
006d5e68  23 40 f1 eb                                      bl #0x325efc
006d5e6c  7f 71 c4 e5                                      strb r7, [r4, #0x17f]
006d5e70  7e 81 c4 e5                                      strb r8, [r4, #0x17e]
006d5e74  7d a1 c4 e5                                      strb sl, [r4, #0x17d]
006d5e78  7c 91 c4 e5                                      strb sb, [r4, #0x17c]
006d5e7c  28 10 9d e5                                      ldr r1, [sp, #0x28]
006d5e80  bf 24 a0 e3                                      mov r2, #0xbf000000
006d5e84  fe 35 a0 e3                                      mov r3, #0x3f800000
006d5e88  02 25 82 e2                                      add r2, r2, #0x800000
006d5e8c  00 00 56 e3                                      cmp r6, #0
006d5e90  84 11 84 e5                                      str r1, [r4, #0x184]
006d5e94  9c 31 84 e5                                      str r3, [r4, #0x19c]
006d5e98  94 31 84 e5                                      str r3, [r4, #0x194]
006d5e9c  98 31 84 e5                                      str r3, [r4, #0x198]
006d5ea0  90 21 84 e5                                      str r2, [r4, #0x190]
006d5ea4  80 61 84 e5                                      str r6, [r4, #0x180]
006d5ea8  88 21 84 e5                                      str r2, [r4, #0x188]
006d5eac  8c 21 84 e5                                      str r2, [r4, #0x18c]
006d5eb0  04 30 96 15                                      ldrne r3, [r6, #4]
006d5eb4  04 00 84 e2                                      add r0, r4, #4
006d5eb8  00 10 a0 e3                                      mov r1, #0
006d5ebc  01 30 83 12                                      addne r3, r3, #1
006d5ec0  04 30 86 15                                      strne r3, [r6, #4]
006d5ec4  b4 04 fb eb                                      bl #0x59719c
006d5ec8  04 00 a0 e1                                      mov r0, r4
006d5ecc  08 d0 8d e2                                      add sp, sp, #8
006d5ed0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006d5f78, declared_size=168, range_size=168, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNodeD2Ev
; demangled: glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d5f78  70 40 2d e9                                      push {r4, r5, r6, lr}
006d5f7c  00 30 91 e5                                      ldr r3, [r1]
006d5f80  00 40 a0 e1                                      mov r4, r0
006d5f84  01 50 a0 e1                                      mov r5, r1
006d5f88  00 30 80 e5                                      str r3, [r0]
006d5f8c  20 20 91 e5                                      ldr r2, [r1, #0x20]
006d5f90  04 20 80 e5                                      str r2, [r0, #4]
006d5f94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d5f98  24 20 91 e5                                      ldr r2, [r1, #0x24]
006d5f9c  03 20 80 e7                                      str r2, [r0, r3]
006d5fa0  00 30 90 e5                                      ldr r3, [r0]
006d5fa4  28 20 91 e5                                      ldr r2, [r1, #0x28]
006d5fa8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d5fac  03 20 80 e7                                      str r2, [r0, r3]
006d5fb0  80 01 90 e5                                      ldr r0, [r0, #0x180]
006d5fb4  00 00 50 e3                                      cmp r0, #0
006d5fb8  00 00 00 0a                                      beq #0x6d5fc0
006d5fbc  70 1d f1 eb                                      bl #0x31d584
006d5fc0  4d 3f 84 e2                                      add r3, r4, #0x134
006d5fc4  44 00 93 e5                                      ldr r0, [r3, #0x44]
006d5fc8  03 00 50 e1                                      cmp r0, r3
006d5fcc  02 00 00 0a                                      beq #0x6d5fdc
006d5fd0  00 00 50 e3                                      cmp r0, #0
006d5fd4  00 00 00 0a                                      beq #0x6d5fdc
006d5fd8  1c e9 f0 eb                                      bl #0x310450
006d5fdc  04 30 95 e5                                      ldr r3, [r5, #4]
006d5fe0  04 50 85 e2                                      add r5, r5, #4
006d5fe4  04 10 85 e2                                      add r1, r5, #4
006d5fe8  00 30 84 e5                                      str r3, [r4]
006d5fec  10 20 95 e5                                      ldr r2, [r5, #0x10]
006d5ff0  04 00 84 e2                                      add r0, r4, #4
006d5ff4  04 20 84 e5                                      str r2, [r4, #4]
006d5ff8  14 20 95 e5                                      ldr r2, [r5, #0x14]
006d5ffc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6000  03 20 84 e7                                      str r2, [r4, r3]
006d6004  00 30 94 e5                                      ldr r3, [r4]
006d6008  18 20 95 e5                                      ldr r2, [r5, #0x18]
006d600c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d6010  03 20 84 e7                                      str r2, [r4, r3]
006d6014  28 0b fb eb                                      bl #0x598cbc
006d6018  04 00 a0 e1                                      mov r0, r4
006d601c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006d6b04, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZThn4_N6glitch5scene14CTextSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6b04  04 00 40 e2                                      sub r0, r0, #4
006d6b08  ff ff ff ea                                      b #0x6d6b0c

; FUNCTION 0x006d6b0c, declared_size=172, range_size=172, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNodeD1Ev
; demangled: glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6b0c  70 40 2d e9                                      push {r4, r5, r6, lr}
006d6b10  94 50 9f e5                                      ldr r5, [pc, #0x94]
006d6b14  94 30 9f e5                                      ldr r3, [pc, #0x94]
006d6b18  00 40 a0 e1                                      mov r4, r0
006d6b1c  05 50 8f e0                                      add r5, pc, r5
006d6b20  80 01 90 e5                                      ldr r0, [r0, #0x180]
006d6b24  03 30 95 e7                                      ldr r3, [r5, r3]
006d6b28  00 00 50 e3                                      cmp r0, #0
006d6b2c  15 2e 83 e2                                      add r2, r3, #0x150
006d6b30  10 10 83 e2                                      add r1, r3, #0x10
006d6b34  4c 30 83 e2                                      add r3, r3, #0x4c
006d6b38  0a 00 84 e8                                      stm r4, {r1, r3}
006d6b3c  a0 21 84 e5                                      str r2, [r4, #0x1a0]
006d6b40  00 00 00 0a                                      beq #0x6d6b48
006d6b44  8e 1a f1 eb                                      bl #0x31d584
006d6b48  4d 3f 84 e2                                      add r3, r4, #0x134
006d6b4c  44 00 93 e5                                      ldr r0, [r3, #0x44]
006d6b50  03 00 50 e1                                      cmp r0, r3
006d6b54  02 00 00 0a                                      beq #0x6d6b64
006d6b58  00 00 50 e3                                      cmp r0, #0
006d6b5c  00 00 00 0a                                      beq #0x6d6b64
006d6b60  3a e6 f0 eb                                      bl #0x310450
006d6b64  48 30 9f e5                                      ldr r3, [pc, #0x48]
006d6b68  04 00 84 e2                                      add r0, r4, #4
006d6b6c  03 10 95 e7                                      ldr r1, [r5, r3]
006d6b70  04 30 91 e5                                      ldr r3, [r1, #4]
006d6b74  14 20 91 e5                                      ldr r2, [r1, #0x14]
006d6b78  18 c0 91 e5                                      ldr ip, [r1, #0x18]
006d6b7c  00 30 84 e5                                      str r3, [r4]
006d6b80  04 20 84 e5                                      str r2, [r4, #4]
006d6b84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6b88  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006d6b8c  08 10 81 e2                                      add r1, r1, #8
006d6b90  03 c0 84 e7                                      str ip, [r4, r3]
006d6b94  00 30 94 e5                                      ldr r3, [r4]
006d6b98  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006d6b9c  03 20 84 e7                                      str r2, [r4, r3]
006d6ba0  45 08 fb eb                                      bl #0x598cbc
006d6ba4  04 00 a0 e1                                      mov r0, r4
006d6ba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006d6bac  74 df 2b 00 58 24 00 00 58 35 00 00              .byte 0x74, 0xdf, 0x2b, 0x00, 0x58, 0x24, 0x00, 0x00, 0x58, 0x35, 0x00, 0x00

; FUNCTION 0x006d6bb8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZThn4_N6glitch5scene14CTextSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6bb8  04 00 40 e2                                      sub r0, r0, #4
006d6bbc  ff ff ff ea                                      b #0x6d6bc0

; FUNCTION 0x006d6bc0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZN6glitch5scene14CTextSceneNodeD0Ev
; demangled: glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6bc0  10 40 2d e9                                      push {r4, lr}
006d6bc4  00 40 a0 e1                                      mov r4, r0
006d6bc8  cf ff ff eb                                      bl #0x6d6b0c
006d6bcc  04 00 a0 e1                                      mov r0, r4
006d6bd0  b6 dd f0 eb                                      bl #0x30e2b0
006d6bd4  04 00 a0 e1                                      mov r0, r4
006d6bd8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006d6d80, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZTv0_n24_N6glitch5scene14CTextSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6d80  00 30 90 e5                                      ldr r3, [r0]
006d6d84  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d6d88  03 00 80 e0                                      add r0, r0, r3
006d6d8c  8b ff ff ea                                      b #0x6d6bc0

; FUNCTION 0x006d6d90, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZTv0_n12_N6glitch5scene14CTextSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6d90  00 30 90 e5                                      ldr r3, [r0]
006d6d94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6d98  03 00 80 e0                                      add r0, r0, r3
006d6d9c  87 ff ff ea                                      b #0x6d6bc0

; FUNCTION 0x006d6da0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZTv0_n24_N6glitch5scene14CTextSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6da0  00 30 90 e5                                      ldr r3, [r0]
006d6da4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006d6da8  03 00 80 e0                                      add r0, r0, r3
006d6dac  56 ff ff ea                                      b #0x6d6b0c

; FUNCTION 0x006d6db0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CTextSceneNode
; alias: _ZTv0_n12_N6glitch5scene14CTextSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CTextSceneNode::~CTextSceneNode()
; decoder-mode: arm
006d6db0  00 30 90 e5                                      ldr r3, [r0]
006d6db4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006d6db8  03 00 80 e0                                      add r0, r0, r3
006d6dbc  52 ff ff ea                                      b #0x6d6b0c
