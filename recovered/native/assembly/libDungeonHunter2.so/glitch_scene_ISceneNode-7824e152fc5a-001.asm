; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035a8e0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode25getAbsoluteTransformationEv
; demangled: glitch::scene::ISceneNode::getAbsoluteTransformation() const
; decoder-mode: arm
0035a8e0  24 00 80 e2                                      add r0, r0, #0x24
0035a8e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00588e30, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode15setSceneManagerEPNS0_13CSceneManagerE
; demangled: glitch::scene::ISceneNode::setSceneManager(glitch::scene::CSceneManager*)
; decoder-mode: arm
00588e30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00588e34  00 70 a0 e1                                      mov r7, r0
00588e38  10 11 87 e5                                      str r1, [r7, #0x110]
00588e3c  00 50 a0 e1                                      mov r5, r0
00588e40  01 60 a0 e1                                      mov r6, r1
00588e44  f4 40 b5 e5                                      ldr r4, [r5, #0xf4]!
00588e48  05 00 00 ea                                      b #0x588e64
00588e4c  00 00 54 e3                                      cmp r4, #0
00588e50  04 00 a0 01                                      moveq r0, r4
00588e54  04 00 44 12                                      subne r0, r4, #4
00588e58  06 10 a0 e1                                      mov r1, r6
00588e5c  f3 ff ff eb                                      bl #0x588e30
00588e60  00 40 94 e5                                      ldr r4, [r4]
00588e64  04 00 55 e1                                      cmp r5, r4
00588e68  f7 ff ff 1a                                      bne #0x588e4c
00588e6c  07 00 a0 e1                                      mov r0, r7
00588e70  00 30 97 e5                                      ldr r3, [r7]
00588e74  0f e0 a0 e1                                      mov lr, pc
00588e78  f0 f0 93 e5                                      ldr pc, [r3, #0xf0]
00588e7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00596ce0, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode8onDeleteEv
; demangled: glitch::scene::ISceneNode::onDelete()
; decoder-mode: arm
00596ce0  10 40 2d e9                                      push {r4, lr}
00596ce4  00 40 a0 e1                                      mov r4, r0
00596ce8  00 30 90 e5                                      ldr r3, [r0]
00596cec  0f e0 a0 e1                                      mov lr, pc
00596cf0  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00596cf4  04 00 a0 e1                                      mov r0, r4
00596cf8  00 30 94 e5                                      ldr r3, [r4]
00596cfc  0f e0 a0 e1                                      mov lr, pc
00596d00  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00596d04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00596d08, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::ISceneNode::onRegisterSceneNode()
; decoder-mode: arm
00596d08  01 00 a0 e3                                      mov r0, #1
00596d0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596d10, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode12onUpdateTimeEj
; demangled: glitch::scene::ISceneNode::onUpdateTime(unsigned int)
; decoder-mode: arm
00596d10  70 40 2d e9                                      push {r4, r5, r6, lr}
00596d14  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00596d18  01 32 00 e3                                      movw r3, #0x201
00596d1c  00 30 40 e3                                      movt r3, #0
00596d20  03 30 02 e0                                      and r3, r2, r3
00596d24  01 22 00 e3                                      movw r2, #0x201
00596d28  02 00 53 e1                                      cmp r3, r2
00596d2c  01 60 a0 e1                                      mov r6, r1
00596d30  0c 00 00 1a                                      bne #0x596d68
00596d34  00 50 a0 e1                                      mov r5, r0
00596d38  fc 40 b5 e5                                      ldr r4, [r5, #0xfc]!
00596d3c  04 00 55 e1                                      cmp r5, r4
00596d40  08 00 00 0a                                      beq #0x596d68
00596d44  08 30 94 e5                                      ldr r3, [r4, #8]
00596d48  06 10 a0 e1                                      mov r1, r6
00596d4c  03 00 a0 e1                                      mov r0, r3
00596d50  00 30 93 e5                                      ldr r3, [r3]
00596d54  0f e0 a0 e1                                      mov lr, pc
00596d58  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00596d5c  00 40 94 e5                                      ldr r4, [r4]
00596d60  04 00 55 e1                                      cmp r5, r4
00596d64  f6 ff ff 1a                                      bne #0x596d44
00596d68  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00596d6c, declared_size=184, range_size=184, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode9onAnimateEj
; demangled: glitch::scene::ISceneNode::onAnimate(unsigned int)
; decoder-mode: arm
00596d6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00596d70  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00596d74  00 60 a0 e1                                      mov r6, r0
00596d78  01 50 a0 e1                                      mov r5, r1
00596d7c  01 0b 13 e3                                      tst r3, #0x400
00596d80  01 00 00 0a                                      beq #0x596d8c
00596d84  01 00 13 e3                                      tst r3, #1
00596d88  24 00 00 0a                                      beq #0x596e20
00596d8c  02 0c 13 e3                                      tst r3, #0x200
00596d90  22 00 00 0a                                      beq #0x596e20
00596d94  06 70 a0 e1                                      mov r7, r6
00596d98  fc 40 b7 e5                                      ldr r4, [r7, #0xfc]!
00596d9c  07 00 00 ea                                      b #0x596dc0
00596da0  08 30 94 e5                                      ldr r3, [r4, #8]
00596da4  06 10 a0 e1                                      mov r1, r6
00596da8  05 20 a0 e1                                      mov r2, r5
00596dac  03 00 a0 e1                                      mov r0, r3
00596db0  00 30 93 e5                                      ldr r3, [r3]
00596db4  0f e0 a0 e1                                      mov lr, pc
00596db8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00596dbc  00 40 94 e5                                      ldr r4, [r4]
00596dc0  04 00 57 e1                                      cmp r7, r4
00596dc4  f5 ff ff 1a                                      bne #0x596da0
00596dc8  00 30 96 e5                                      ldr r3, [r6]
00596dcc  06 00 a0 e1                                      mov r0, r6
00596dd0  00 10 a0 e3                                      mov r1, #0
00596dd4  06 70 a0 e1                                      mov r7, r6
00596dd8  0f e0 a0 e1                                      mov lr, pc
00596ddc  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00596de0  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
00596de4  08 00 00 ea                                      b #0x596e0c
00596de8  00 00 54 e3                                      cmp r4, #0
00596dec  04 30 a0 01                                      moveq r3, r4
00596df0  04 30 44 12                                      subne r3, r4, #4
00596df4  03 00 a0 e1                                      mov r0, r3
00596df8  05 10 a0 e1                                      mov r1, r5
00596dfc  00 30 93 e5                                      ldr r3, [r3]
00596e00  0f e0 a0 e1                                      mov lr, pc
00596e04  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00596e08  00 40 94 e5                                      ldr r4, [r4]
00596e0c  04 00 57 e1                                      cmp r7, r4
00596e10  f4 ff ff 1a                                      bne #0x596de8
00596e14  1c 31 96 e5                                      ldr r3, [r6, #0x11c]
00596e18  20 30 c3 e3                                      bic r3, r3, #0x20
00596e1c  1c 31 86 e5                                      str r3, [r6, #0x11c]
00596e20  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00596e24, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode20getRenderVertexCountEPv
; demangled: glitch::scene::ISceneNode::getRenderVertexCount(void*) const
; decoder-mode: arm
00596e24  00 00 e0 e3                                      mvn r0, #0
00596e28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596e2c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode7getNameEv
; demangled: glitch::scene::ISceneNode::getName() const
; decoder-mode: arm
00596e2c  20 00 90 e5                                      ldr r0, [r0, #0x20]
00596e30  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596e34, declared_size=140, range_size=140, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode23notifyVisibilityChangedEb
; demangled: glitch::scene::ISceneNode::notifyVisibilityChanged(bool)
; decoder-mode: arm
00596e34  70 40 2d e9                                      push {r4, r5, r6, lr}
00596e38  20 21 d0 e5                                      ldrb r2, [r0, #0x120]
00596e3c  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00596e40  00 50 a0 e1                                      mov r5, r0
00596e44  00 00 52 e3                                      cmp r2, #0
00596e48  21 11 c0 e5                                      strb r1, [r0, #0x121]
00596e4c  01 20 03 e2                                      and r2, r3, #1
00596e50  01 00 00 0a                                      beq #0x596e5c
00596e54  00 00 51 e3                                      cmp r1, #0
00596e58  15 00 00 1a                                      bne #0x596eb4
00596e5c  01 30 c3 e3                                      bic r3, r3, #1
00596e60  1c 31 85 e5                                      str r3, [r5, #0x11c]
00596e64  01 30 03 e2                                      and r3, r3, #1
00596e68  03 00 52 e1                                      cmp r2, r3
00596e6c  0f 00 00 0a                                      beq #0x596eb0
00596e70  05 60 a0 e1                                      mov r6, r5
00596e74  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
00596e78  09 00 00 ea                                      b #0x596ea4
00596e7c  1c 11 95 e5                                      ldr r1, [r5, #0x11c]
00596e80  00 00 54 e3                                      cmp r4, #0
00596e84  04 30 a0 01                                      moveq r3, r4
00596e88  04 30 44 12                                      subne r3, r4, #4
00596e8c  03 00 a0 e1                                      mov r0, r3
00596e90  01 10 01 e2                                      and r1, r1, #1
00596e94  00 30 93 e5                                      ldr r3, [r3]
00596e98  0f e0 a0 e1                                      mov lr, pc
00596e9c  ec f0 93 e5                                      ldr pc, [r3, #0xec]
00596ea0  00 40 94 e5                                      ldr r4, [r4]
00596ea4  04 00 56 e1                                      cmp r6, r4
00596ea8  f3 ff ff 1a                                      bne #0x596e7c
00596eac  70 80 bd e8                                      pop {r4, r5, r6, pc}
00596eb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00596eb4  01 30 83 e3                                      orr r3, r3, #1
00596eb8  1c 31 80 e5                                      str r3, [r0, #0x11c]
00596ebc  e8 ff ff ea                                      b #0x596e64

; FUNCTION 0x00596ec0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode21onChangedSceneManagerEv
; demangled: glitch::scene::ISceneNode::onChangedSceneManager()
; decoder-mode: arm
00596ec0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596ec4, declared_size=152, range_size=152, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode10setVisibleEb
; demangled: glitch::scene::ISceneNode::setVisible(bool)
; decoder-mode: arm
00596ec4  70 40 2d e9                                      push {r4, r5, r6, lr}
00596ec8  20 31 d0 e5                                      ldrb r3, [r0, #0x120]
00596ecc  00 50 a0 e1                                      mov r5, r0
00596ed0  01 00 53 e1                                      cmp r3, r1
00596ed4  19 00 00 0a                                      beq #0x596f40
00596ed8  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00596edc  00 00 51 e3                                      cmp r1, #0
00596ee0  20 11 c0 e5                                      strb r1, [r0, #0x120]
00596ee4  01 20 03 e2                                      and r2, r3, #1
00596ee8  15 00 00 1a                                      bne #0x596f44
00596eec  01 30 c3 e3                                      bic r3, r3, #1
00596ef0  1c 31 85 e5                                      str r3, [r5, #0x11c]
00596ef4  01 30 03 e2                                      and r3, r3, #1
00596ef8  03 00 52 e1                                      cmp r2, r3
00596efc  0f 00 00 0a                                      beq #0x596f40
00596f00  05 60 a0 e1                                      mov r6, r5
00596f04  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
00596f08  09 00 00 ea                                      b #0x596f34
00596f0c  1c 11 95 e5                                      ldr r1, [r5, #0x11c]
00596f10  00 00 54 e3                                      cmp r4, #0
00596f14  04 30 a0 01                                      moveq r3, r4
00596f18  04 30 44 12                                      subne r3, r4, #4
00596f1c  03 00 a0 e1                                      mov r0, r3
00596f20  01 10 01 e2                                      and r1, r1, #1
00596f24  00 30 93 e5                                      ldr r3, [r3]
00596f28  0f e0 a0 e1                                      mov lr, pc
00596f2c  ec f0 93 e5                                      ldr pc, [r3, #0xec]
00596f30  00 40 94 e5                                      ldr r4, [r4]
00596f34  04 00 56 e1                                      cmp r6, r4
00596f38  f3 ff ff 1a                                      bne #0x596f0c
00596f3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00596f40  70 80 bd e8                                      pop {r4, r5, r6, pc}
00596f44  21 11 d0 e5                                      ldrb r1, [r0, #0x121]
00596f48  00 00 51 e3                                      cmp r1, #0
00596f4c  e6 ff ff 0a                                      beq #0x596eec
00596f50  01 30 83 e3                                      orr r3, r3, #1
00596f54  1c 31 80 e5                                      str r3, [r0, #0x11c]
00596f58  e5 ff ff ea                                      b #0x596ef4

; FUNCTION 0x00596f5c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode5getIDEv
; demangled: glitch::scene::ISceneNode::getID() const
; decoder-mode: arm
00596f5c  0c 01 90 e5                                      ldr r0, [r0, #0x10c]
00596f60  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596f64, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode5setIDEi
; demangled: glitch::scene::ISceneNode::setID(int)
; decoder-mode: arm
00596f64  0c 11 80 e5                                      str r1, [r0, #0x10c]
00596f68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00596f6c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode20getSceneNodeFromTypeENS0_17E_SCENE_NODE_TYPEE
; demangled: glitch::scene::ISceneNode::getSceneNodeFromType(glitch::scene::E_SCENE_NODE_TYPE)
; decoder-mode: arm
00596f6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00596f70  00 30 90 e5                                      ldr r3, [r0]
00596f74  01 50 a0 e1                                      mov r5, r1
00596f78  00 40 a0 e1                                      mov r4, r0
00596f7c  0f e0 a0 e1                                      mov lr, pc
00596f80  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00596f84  05 00 50 e1                                      cmp r0, r5
00596f88  11 00 00 0a                                      beq #0x596fd4
00596f8c  61 3e 06 e3                                      movw r3, #0x6e61
00596f90  79 3f 45 e3                                      movt r3, #0x5f79
00596f94  03 00 55 e1                                      cmp r5, r3
00596f98  0d 00 00 0a                                      beq #0x596fd4
00596f9c  04 60 a0 e1                                      mov r6, r4
00596fa0  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
00596fa4  07 00 00 ea                                      b #0x596fc8
00596fa8  00 00 54 e3                                      cmp r4, #0
00596fac  04 00 a0 01                                      moveq r0, r4
00596fb0  04 00 44 12                                      subne r0, r4, #4
00596fb4  05 10 a0 e1                                      mov r1, r5
00596fb8  eb ff ff eb                                      bl #0x596f6c
00596fbc  00 00 50 e3                                      cmp r0, #0
00596fc0  05 00 00 1a                                      bne #0x596fdc
00596fc4  00 40 94 e5                                      ldr r4, [r4]
00596fc8  04 00 56 e1                                      cmp r6, r4
00596fcc  f5 ff ff 1a                                      bne #0x596fa8
00596fd0  00 40 a0 e3                                      mov r4, #0
00596fd4  04 00 a0 e1                                      mov r0, r4
00596fd8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00596fdc  00 40 a0 e1                                      mov r4, r0
00596fe0  fb ff ff ea                                      b #0x596fd4

; FUNCTION 0x00596fe4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode6getUIDEv
; demangled: glitch::scene::ISceneNode::getUID() const
; decoder-mode: arm
00596fe4  04 00 9f e5                                      ldr r0, [pc, #4]
00596fe8  00 00 8f e0                                      add r0, pc, r0
00596fec  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00596ff0  20 48 33 00                                      .byte 0x20, 0x48, 0x33, 0x00

; FUNCTION 0x00596ff4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode10getScopeIDEv
; demangled: glitch::scene::ISceneNode::getScopeID() const
; decoder-mode: arm
00596ff4  04 00 9f e5                                      ldr r0, [pc, #4]
00596ff8  00 00 8f e0                                      add r0, pc, r0
00596ffc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00597000  10 48 33 00                                      .byte 0x10, 0x48, 0x33, 0x00

; FUNCTION 0x00597004, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11removeChildEPS1_
; demangled: glitch::scene::ISceneNode::removeChild(glitch::scene::ISceneNode*)
; decoder-mode: arm
00597004  ec 30 91 e5                                      ldr r3, [r1, #0xec]
00597008  10 40 2d e9                                      push {r4, lr}
0059700c  00 00 53 e1                                      cmp r3, r0
00597010  01 00 00 0a                                      beq #0x59701c
00597014  00 00 a0 e3                                      mov r0, #0
00597018  10 80 bd e8                                      pop {r4, pc}
0059701c  04 20 91 e5                                      ldr r2, [r1, #4]
00597020  04 c0 81 e2                                      add ip, r1, #4
00597024  00 00 52 e3                                      cmp r2, #0
00597028  08 00 91 15                                      ldrne r0, [r1, #8]
0059702c  00 20 80 15                                      strne r2, [r0]
00597030  04 00 82 15                                      strne r0, [r2, #4]
00597034  f0 e0 93 e5                                      ldr lr, [r3, #0xf0]
00597038  00 20 a0 e3                                      mov r2, #0
0059703c  04 00 4c e2                                      sub r0, ip, #4
00597040  01 e0 4e e2                                      sub lr, lr, #1
00597044  f0 e0 83 e5                                      str lr, [r3, #0xf0]
00597048  08 20 81 e5                                      str r2, [r1, #8]
0059704c  04 20 81 e5                                      str r2, [r1, #4]
00597050  ec 20 80 e5                                      str r2, [r0, #0xec]
00597054  04 30 1c e5                                      ldr r3, [ip, #-4]
00597058  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0059705c  03 00 80 e0                                      add r0, r0, r3
00597060  47 19 f6 eb                                      bl #0x31d584
00597064  01 00 a0 e3                                      mov r0, #1
00597068  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059706c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode6removeEv
; demangled: glitch::scene::ISceneNode::remove()
; decoder-mode: arm
0059706c  10 40 2d e9                                      push {r4, lr}
00597070  ec 30 90 e5                                      ldr r3, [r0, #0xec]
00597074  00 10 a0 e1                                      mov r1, r0
00597078  00 00 53 e3                                      cmp r3, #0
0059707c  03 00 00 0a                                      beq #0x597090
00597080  03 00 a0 e1                                      mov r0, r3
00597084  00 30 93 e5                                      ldr r3, [r3]
00597088  0f e0 a0 e1                                      mov lr, pc
0059708c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00597090  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00597094, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode12getAnimatorsEv
; demangled: glitch::scene::ISceneNode::getAnimators() const
; decoder-mode: arm
00597094  fc 00 80 e2                                      add r0, r0, #0xfc
00597098  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059709c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode18getBindedAnimatorsEv
; demangled: glitch::scene::ISceneNode::getBindedAnimators() const
; decoder-mode: arm
0059709c  41 0f 80 e2                                      add r0, r0, #0x104
005970a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970a4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode11getMaterialEj
; demangled: glitch::scene::ISceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
005970a4  00 20 a0 e3                                      mov r2, #0
005970a8  00 20 80 e5                                      str r2, [r0]
005970ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode16getMaterialCountEv
; demangled: glitch::scene::ISceneNode::getMaterialCount() const
; decoder-mode: arm
005970b0  00 00 a0 e3                                      mov r0, #0
005970b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970b8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode21notifyMaterialChangedEv
; demangled: glitch::scene::ISceneNode::notifyMaterialChanged()
; decoder-mode: arm
005970b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode8getScaleEv
; demangled: glitch::scene::ISceneNode::getScale() const
; decoder-mode: arm
005970bc  c8 00 80 e2                                      add r0, r0, #0xc8
005970c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970c4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode8setScaleERKNS_4core8vector3dIfEE
; demangled: glitch::scene::ISceneNode::setScale(glitch::core::vector3d<float> const&)
; decoder-mode: arm
005970c4  00 30 91 e5                                      ldr r3, [r1]
005970c8  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
005970cc  c8 30 80 e5                                      str r3, [r0, #0xc8]
005970d0  04 30 91 e5                                      ldr r3, [r1, #4]
005970d4  02 20 82 e3                                      orr r2, r2, #2
005970d8  cc 30 80 e5                                      str r3, [r0, #0xcc]
005970dc  08 30 91 e5                                      ldr r3, [r1, #8]
005970e0  1c 21 80 e5                                      str r2, [r0, #0x11c]
005970e4  d0 30 80 e5                                      str r3, [r0, #0xd0]
005970e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode11getRotationEv
; demangled: glitch::scene::ISceneNode::getRotation() const
; decoder-mode: arm
005970ec  b8 00 80 e2                                      add r0, r0, #0xb8
005970f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005970f4, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11setRotationERKNS_4core10quaternionE
; demangled: glitch::scene::ISceneNode::setRotation(glitch::core::quaternion const&)
; decoder-mode: arm
005970f4  00 30 91 e5                                      ldr r3, [r1]
005970f8  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
005970fc  b8 30 80 e5                                      str r3, [r0, #0xb8]
00597100  04 30 91 e5                                      ldr r3, [r1, #4]
00597104  04 20 82 e3                                      orr r2, r2, #4
00597108  bc 30 80 e5                                      str r3, [r0, #0xbc]
0059710c  08 30 91 e5                                      ldr r3, [r1, #8]
00597110  c0 30 80 e5                                      str r3, [r0, #0xc0]
00597114  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00597118  1c 21 80 e5                                      str r2, [r0, #0x11c]
0059711c  c4 30 80 e5                                      str r3, [r0, #0xc4]
00597120  1e ff 2f e1                                      bx lr

; FUNCTION 0x00597124, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode11getPositionEv
; demangled: glitch::scene::ISceneNode::getPosition() const
; decoder-mode: arm
00597124  ac 00 80 e2                                      add r0, r0, #0xac
00597128  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059712c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11setPositionERKNS_4core8vector3dIfEE
; demangled: glitch::scene::ISceneNode::setPosition(glitch::core::vector3d<float> const&)
; decoder-mode: arm
0059712c  00 30 91 e5                                      ldr r3, [r1]
00597130  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00597134  ac 30 80 e5                                      str r3, [r0, #0xac]
00597138  04 30 91 e5                                      ldr r3, [r1, #4]
0059713c  08 20 82 e3                                      orr r2, r2, #8
00597140  b0 30 80 e5                                      str r3, [r0, #0xb0]
00597144  08 30 91 e5                                      ldr r3, [r1, #8]
00597148  1c 21 80 e5                                      str r2, [r0, #0x11c]
0059714c  b4 30 80 e5                                      str r3, [r0, #0xb4]
00597150  1e ff 2f e1                                      bx lr

; FUNCTION 0x00597154, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11setPositionEfff
; demangled: glitch::scene::ISceneNode::setPosition(float, float, float)
; decoder-mode: arm
00597154  04 e0 2d e5                                      str lr, [sp, #-4]!
00597158  14 d0 4d e2                                      sub sp, sp, #0x14
0059715c  04 10 8d e5                                      str r1, [sp, #4]
00597160  0c 30 8d e5                                      str r3, [sp, #0xc]
00597164  08 20 8d e5                                      str r2, [sp, #8]
00597168  00 30 90 e5                                      ldr r3, [r0]
0059716c  04 10 8d e2                                      add r1, sp, #4
00597170  0f e0 a0 e1                                      mov lr, pc
00597174  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00597178  14 d0 8d e2                                      add sp, sp, #0x14
0059717c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00597180, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode19getAbsolutePositionEv
; demangled: glitch::scene::ISceneNode::getAbsolutePosition() const
; decoder-mode: arm
00597180  54 c0 91 e5                                      ldr ip, [r1, #0x54]
00597184  58 20 91 e5                                      ldr r2, [r1, #0x58]
00597188  5c 10 91 e5                                      ldr r1, [r1, #0x5c]
0059718c  00 c0 80 e5                                      str ip, [r0]
00597190  04 20 80 e5                                      str r2, [r0, #4]
00597194  08 10 80 e5                                      str r1, [r0, #8]
00597198  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059719c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode19setAutomaticCullingENS0_14E_CULLING_TYPEE
; demangled: glitch::scene::ISceneNode::setAutomaticCulling(glitch::scene::E_CULLING_TYPE)
; decoder-mode: arm
0059719c  18 11 80 e5                                      str r1, [r0, #0x118]
005971a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005971a4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode16setIsDebugObjectEb
; demangled: glitch::scene::ISceneNode::setIsDebugObject(bool)
; decoder-mode: arm
005971a4  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
005971a8  00 00 51 e3                                      cmp r1, #0
005971ac  80 30 83 13                                      orrne r3, r3, #0x80
005971b0  80 30 c3 03                                      biceq r3, r3, #0x80
005971b4  1c 31 80 e5                                      str r3, [r0, #0x11c]
005971b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005971bc, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode13isDebugObjectEv
; demangled: glitch::scene::ISceneNode::isDebugObject() const
; decoder-mode: arm
005971bc  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
005971c0  d0 03 e0 e7                                      ubfx r0, r0, #7, #1
005971c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005971c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode11getChildrenEv
; demangled: glitch::scene::ISceneNode::getChildren() const
; decoder-mode: arm
005971c8  f0 00 80 e2                                      add r0, r0, #0xf0
005971cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005971d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode15getUserPropertyEv
; demangled: glitch::scene::ISceneNode::getUserProperty() const
; decoder-mode: arm
005971d0  00 00 a0 e3                                      mov r0, #0
005971d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005971d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode18getUserPropertyStrEv
; demangled: glitch::scene::ISceneNode::getUserPropertyStr() const
; decoder-mode: arm
005971d8  00 00 a0 e3                                      mov r0, #0
005971dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x005971e0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode9setParentEPS1_
; demangled: glitch::scene::ISceneNode::setParent(glitch::scene::ISceneNode*)
; decoder-mode: arm
005971e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005971e4  00 30 90 e5                                      ldr r3, [r0]
005971e8  00 40 a0 e1                                      mov r4, r0
005971ec  01 50 a0 e1                                      mov r5, r1
005971f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005971f4  03 30 80 e0                                      add r3, r0, r3
005971f8  04 20 93 e5                                      ldr r2, [r3, #4]
005971fc  01 20 82 e2                                      add r2, r2, #1
00597200  04 20 83 e5                                      str r2, [r3, #4]
00597204  00 30 90 e5                                      ldr r3, [r0]
00597208  0f e0 a0 e1                                      mov lr, pc
0059720c  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00597210  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597214  00 00 55 e3                                      cmp r5, #0
00597218  ec 50 84 e5                                      str r5, [r4, #0xec]
0059721c  40 30 83 e3                                      orr r3, r3, #0x40
00597220  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597224  05 00 00 0a                                      beq #0x597240
00597228  10 11 95 e5                                      ldr r1, [r5, #0x110]
0059722c  10 31 94 e5                                      ldr r3, [r4, #0x110]
00597230  01 00 53 e1                                      cmp r3, r1
00597234  01 00 00 0a                                      beq #0x597240
00597238  04 00 a0 e1                                      mov r0, r4
0059723c  fb c6 ff eb                                      bl #0x588e30
00597240  00 30 94 e5                                      ldr r3, [r4]
00597244  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00597248  00 00 84 e0                                      add r0, r4, r0
0059724c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00597250  cb 18 f6 ea                                      b #0x31d584

; FUNCTION 0x00597254, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode19getTriangleSelectorEv
; demangled: glitch::scene::ISceneNode::getTriangleSelector() const
; decoder-mode: arm
00597254  14 01 90 e5                                      ldr r0, [r0, #0x114]
00597258  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059725c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode19setTriangleSelectorEPNS0_17ITriangleSelectorE
; demangled: glitch::scene::ISceneNode::setTriangleSelector(glitch::scene::ITriangleSelector*)
; decoder-mode: arm
0059725c  70 40 2d e9                                      push {r4, r5, r6, lr}
00597260  00 40 a0 e1                                      mov r4, r0
00597264  14 01 90 e5                                      ldr r0, [r0, #0x114]
00597268  01 50 a0 e1                                      mov r5, r1
0059726c  00 00 50 e3                                      cmp r0, #0
00597270  00 00 00 0a                                      beq #0x597278
00597274  c2 18 f6 eb                                      bl #0x31d584
00597278  00 00 55 e3                                      cmp r5, #0
0059727c  14 51 84 e5                                      str r5, [r4, #0x114]
00597280  04 30 95 15                                      ldrne r3, [r5, #4]
00597284  01 30 83 12                                      addne r3, r3, #1
00597288  04 30 85 15                                      strne r3, [r5, #4]
0059728c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00597290, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode9getParentEv
; demangled: glitch::scene::ISceneNode::getParent() const
; decoder-mode: arm
00597290  ec 00 90 e5                                      ldr r0, [r0, #0xec]
00597294  1e ff 2f e1                                      bx lr

; FUNCTION 0x00597298, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode7getTypeEv
; demangled: glitch::scene::ISceneNode::getType() const
; decoder-mode: arm
00597298  75 0e 06 e3                                      movw r0, #0x6e75
0059729c  6b 0e 46 e3                                      movt r0, #0x6e6b
005972a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005972a4, declared_size=544, range_size=544, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::ISceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005972a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005972a8  00 40 51 e2                                      subs r4, r1, #0
005972ac  10 d0 4d e2                                      sub sp, sp, #0x10
005972b0  00 50 a0 e1                                      mov r5, r0
005972b4  02 70 a0 e1                                      mov r7, r2
005972b8  5b 00 00 0a                                      beq #0x59742c
005972bc  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
005972c0  04 00 a0 e1                                      mov r0, r4
005972c4  20 20 95 e5                                      ldr r2, [r5, #0x20]
005972c8  01 10 8f e0                                      add r1, pc, r1
005972cc  00 30 a0 e3                                      mov r3, #0
005972d0  00 c0 94 e5                                      ldr ip, [r4]
005972d4  0f e0 a0 e1                                      mov lr, pc
005972d8  7c f0 9c e5                                      ldr pc, [ip, #0x7c]
005972dc  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
005972e0  00 c0 94 e5                                      ldr ip, [r4]
005972e4  0c 21 95 e5                                      ldr r2, [r5, #0x10c]
005972e8  01 10 8f e0                                      add r1, pc, r1
005972ec  00 30 a0 e3                                      mov r3, #0
005972f0  04 00 a0 e1                                      mov r0, r4
005972f4  0f e0 a0 e1                                      mov lr, pc
005972f8  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005972fc  00 20 94 e5                                      ldr r2, [r4]
00597300  00 30 95 e5                                      ldr r3, [r5]
00597304  05 00 a0 e1                                      mov r0, r5
00597308  a8 61 92 e5                                      ldr r6, [r2, #0x1a8]
0059730c  0f e0 a0 e1                                      mov lr, pc
00597310  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00597314  84 11 9f e5                                      ldr r1, [pc, #0x184]
00597318  00 20 a0 e1                                      mov r2, r0
0059731c  00 30 a0 e3                                      mov r3, #0
00597320  01 10 8f e0                                      add r1, pc, r1
00597324  04 00 a0 e1                                      mov r0, r4
00597328  36 ff 2f e1                                      blx r6
0059732c  00 20 94 e5                                      ldr r2, [r4]
00597330  00 30 95 e5                                      ldr r3, [r5]
00597334  05 00 a0 e1                                      mov r0, r5
00597338  20 82 92 e5                                      ldr r8, [r2, #0x220]
0059733c  0f e0 a0 e1                                      mov lr, pc
00597340  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00597344  00 60 a0 e3                                      mov r6, #0
00597348  08 60 8d e5                                      str r6, [sp, #8]
0059734c  08 30 90 e5                                      ldr r3, [r0, #8]
00597350  00 20 a0 e1                                      mov r2, r0
00597354  48 11 9f e5                                      ldr r1, [pc, #0x148]
00597358  00 30 8d e5                                      str r3, [sp]
0059735c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00597360  01 10 8f e0                                      add r1, pc, r1
00597364  04 00 a0 e1                                      mov r0, r4
00597368  04 30 8d e5                                      str r3, [sp, #4]
0059736c  0c 00 92 e8                                      ldm r2, {r2, r3}
00597370  38 ff 2f e1                                      blx r8
00597374  00 20 94 e5                                      ldr r2, [r4]
00597378  00 30 95 e5                                      ldr r3, [r5]
0059737c  05 00 a0 e1                                      mov r0, r5
00597380  a8 81 92 e5                                      ldr r8, [r2, #0x1a8]
00597384  0f e0 a0 e1                                      mov lr, pc
00597388  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0059738c  14 11 9f e5                                      ldr r1, [pc, #0x114]
00597390  00 20 a0 e1                                      mov r2, r0
00597394  06 30 a0 e1                                      mov r3, r6
00597398  04 00 a0 e1                                      mov r0, r4
0059739c  01 10 8f e0                                      add r1, pc, r1
005973a0  38 ff 2f e1                                      blx r8
005973a4  1c 21 95 e5                                      ldr r2, [r5, #0x11c]
005973a8  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
005973ac  04 00 a0 e1                                      mov r0, r4
005973b0  01 20 02 e2                                      and r2, r2, #1
005973b4  01 10 8f e0                                      add r1, pc, r1
005973b8  06 30 a0 e1                                      mov r3, r6
005973bc  00 c0 94 e5                                      ldr ip, [r4]
005973c0  0f e0 a0 e1                                      mov lr, pc
005973c4  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
005973c8  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
005973cc  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
005973d0  18 21 95 e5                                      ldr r2, [r5, #0x118]
005973d4  00 c0 94 e5                                      ldr ip, [r4]
005973d8  01 10 8f e0                                      add r1, pc, r1
005973dc  03 30 8f e0                                      add r3, pc, r3
005973e0  04 00 a0 e1                                      mov r0, r4
005973e4  00 60 8d e5                                      str r6, [sp]
005973e8  0f e0 a0 e1                                      mov lr, pc
005973ec  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005973f0  00 30 94 e5                                      ldr r3, [r4]
005973f4  05 00 a0 e1                                      mov r0, r5
005973f8  d8 80 93 e5                                      ldr r8, [r3, #0xd8]
005973fc  6e ff ff eb                                      bl #0x5971bc
00597400  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00597404  00 20 a0 e1                                      mov r2, r0
00597408  06 30 a0 e1                                      mov r3, r6
0059740c  04 00 a0 e1                                      mov r0, r4
00597410  01 10 8f e0                                      add r1, pc, r1
00597414  38 ff 2f e1                                      blx r8
00597418  06 00 57 e1                                      cmp r7, r6
0059741c  02 00 00 0a                                      beq #0x59742c
00597420  00 30 97 e5                                      ldr r3, [r7]
00597424  02 00 53 e3                                      cmp r3, #2
00597428  01 00 00 0a                                      beq #0x597434
0059742c  10 d0 8d e2                                      add sp, sp, #0x10
00597430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00597434  00 20 94 e5                                      ldr r2, [r4]
00597438  00 30 95 e5                                      ldr r3, [r5]
0059743c  05 00 a0 e1                                      mov r0, r5
00597440  64 70 92 e5                                      ldr r7, [r2, #0x64]
00597444  0f e0 a0 e1                                      mov lr, pc
00597448  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
0059744c  68 10 9f e5                                      ldr r1, [pc, #0x68]
00597450  00 20 a0 e1                                      mov r2, r0
00597454  06 30 a0 e1                                      mov r3, r6
00597458  01 10 8f e0                                      add r1, pc, r1
0059745c  04 00 a0 e1                                      mov r0, r4
00597460  37 ff 2f e1                                      blx r7
00597464  00 20 94 e5                                      ldr r2, [r4]
00597468  00 30 95 e5                                      ldr r3, [r5]
0059746c  05 00 a0 e1                                      mov r0, r5
00597470  4c 50 92 e5                                      ldr r5, [r2, #0x4c]
00597474  0f e0 a0 e1                                      mov lr, pc
00597478  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
0059747c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00597480  00 20 a0 e1                                      mov r2, r0
00597484  06 30 a0 e1                                      mov r3, r6
00597488  04 00 a0 e1                                      mov r0, r4
0059748c  01 10 8f e0                                      add r1, pc, r1
00597490  35 ff 2f e1                                      blx r5
00597494  e4 ff ff ea                                      b #0x59742c
; mapping-symbol data/literal pool
00597498  b8 4a 33 00 e0 54 33 00 20 cc 32 00 00 83 34 00  .byte 0xb8, 0x4a, 0x33, 0x00, 0xe0, 0x54, 0x33, 0x00, 0x20, 0xcc, 0x32, 0x00, 0x00, 0x83, 0x34, 0x00
005974a8  d4 82 34 00 f4 4a 33 00 a0 82 34 00 dc ff 3b 00  .byte 0xd4, 0x82, 0x34, 0x00, 0xf4, 0x4a, 0x33, 0x00, 0xa0, 0x82, 0x34, 0x00, 0xdc, 0xff, 0x3b, 0x00
005974b8  80 82 34 00 48 82 34 00 24 82 34 00              .byte 0x80, 0x82, 0x34, 0x00, 0x48, 0x82, 0x34, 0x00, 0x24, 0x82, 0x34, 0x00

; FUNCTION 0x005974c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode5cloneEv
; demangled: glitch::scene::ISceneNode::clone()
; decoder-mode: arm
005974c4  00 00 a0 e3                                      mov r0, #0
005974c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11setGameDataEPv
; demangled: glitch::scene::ISceneNode::setGameData(void*)
; decoder-mode: arm
005974cc  24 11 80 e5                                      str r1, [r0, #0x124]
005974d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974d4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode11getGameDataEv
; demangled: glitch::scene::ISceneNode::getGameData() const
; decoder-mode: arm
005974d4  24 01 90 e5                                      ldr r0, [r0, #0x124]
005974d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974dc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode15setCameraOffsetEf
; demangled: glitch::scene::ISceneNode::setCameraOffset(float)
; decoder-mode: arm
005974dc  28 11 80 e5                                      str r1, [r0, #0x128]
005974e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974e4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode15getCameraOffsetEv
; demangled: glitch::scene::ISceneNode::getCameraOffset() const
; decoder-mode: arm
005974e4  28 01 90 e5                                      ldr r0, [r0, #0x128]
005974e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974ec, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode17setRenderingLayerEi
; demangled: glitch::scene::ISceneNode::setRenderingLayer(int)
; decoder-mode: arm
005974ec  2c 11 80 e5                                      str r1, [r0, #0x12c]
005974f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode17getRenderingLayerEv
; demangled: glitch::scene::ISceneNode::getRenderingLayer() const
; decoder-mode: arm
005974f4  2c 01 90 e5                                      ldr r0, [r0, #0x12c]
005974f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005974fc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode17onMaterialChangedEv
; demangled: glitch::scene::ISceneNode::onMaterialChanged()
; decoder-mode: arm
005974fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00597500, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode30setNodeHierarchyAsShadowCasterEb
; demangled: glitch::scene::ISceneNode::setNodeHierarchyAsShadowCaster(bool)
; decoder-mode: arm
00597500  70 40 2d e9                                      push {r4, r5, r6, lr}
00597504  00 50 a0 e1                                      mov r5, r0
00597508  01 60 a0 e1                                      mov r6, r1
0059750c  f4 40 b5 e5                                      ldr r4, [r5, #0xf4]!
00597510  08 00 00 ea                                      b #0x597538
00597514  00 00 54 e3                                      cmp r4, #0
00597518  04 30 a0 01                                      moveq r3, r4
0059751c  04 30 44 12                                      subne r3, r4, #4
00597520  03 00 a0 e1                                      mov r0, r3
00597524  06 10 a0 e1                                      mov r1, r6
00597528  00 30 93 e5                                      ldr r3, [r3]
0059752c  0f e0 a0 e1                                      mov lr, pc
00597530  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00597534  00 40 94 e5                                      ldr r4, [r4]
00597538  04 00 55 e1                                      cmp r5, r4
0059753c  f4 ff ff 1a                                      bne #0x597514
00597540  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00597544, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode14resetTransformEb
; demangled: glitch::scene::ISceneNode::resetTransform(bool)
; decoder-mode: arm
00597544  1e ff 2f e1                                      bx lr

; FUNCTION 0x0059770c, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode25getTransformedBoundingBoxEv
; demangled: glitch::scene::ISceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
0059770c  70 40 2d e9                                      push {r4, r5, r6, lr}
00597710  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00597714  00 40 a0 e1                                      mov r4, r0
00597718  01 0c 13 e3                                      tst r3, #0x100
0059771c  d4 50 80 02                                      addeq r5, r0, #0xd4
00597720  16 00 00 0a                                      beq #0x597780
00597724  00 30 90 e5                                      ldr r3, [r0]
00597728  0f e0 a0 e1                                      mov lr, pc
0059772c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00597730  00 20 90 e5                                      ldr r2, [r0]
00597734  00 30 a0 e1                                      mov r3, r0
00597738  d4 50 84 e2                                      add r5, r4, #0xd4
0059773c  d4 20 84 e5                                      str r2, [r4, #0xd4]
00597740  04 20 93 e5                                      ldr r2, [r3, #4]
00597744  24 00 84 e2                                      add r0, r4, #0x24
00597748  05 10 a0 e1                                      mov r1, r5
0059774c  d8 20 84 e5                                      str r2, [r4, #0xd8]
00597750  08 20 93 e5                                      ldr r2, [r3, #8]
00597754  dc 20 84 e5                                      str r2, [r4, #0xdc]
00597758  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0059775c  e0 20 84 e5                                      str r2, [r4, #0xe0]
00597760  10 20 93 e5                                      ldr r2, [r3, #0x10]
00597764  e4 20 84 e5                                      str r2, [r4, #0xe4]
00597768  14 30 93 e5                                      ldr r3, [r3, #0x14]
0059776c  e8 30 84 e5                                      str r3, [r4, #0xe8]
00597770  74 ff ff eb                                      bl #0x597548
00597774  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597778  01 3c c3 e3                                      bic r3, r3, #0x100
0059777c  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597780  05 00 a0 e1                                      mov r0, r5
00597784  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00597c60, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode22updateAbsolutePositionEb
; demangled: glitch::scene::ISceneNode::updateAbsolutePosition(bool)
; decoder-mode: arm
00597c60  70 40 2d e9                                      push {r4, r5, r6, lr}
00597c64  ec 30 90 e5                                      ldr r3, [r0, #0xec]
00597c68  00 40 a0 e1                                      mov r4, r0
00597c6c  01 50 a0 e1                                      mov r5, r1
00597c70  00 00 53 e3                                      cmp r3, #0
00597c74  27 00 00 0a                                      beq #0x597d18
00597c78  1c 21 93 e5                                      ldr r2, [r3, #0x11c]
00597c7c  20 00 12 e3                                      tst r2, #0x20
00597c80  12 00 00 1a                                      bne #0x597cd0
00597c84  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00597c88  5e 00 12 e3                                      tst r2, #0x5e
00597c8c  0f 00 00 1a                                      bne #0x597cd0
00597c90  00 00 55 e3                                      cmp r5, #0
00597c94  f4 50 b4 15                                      ldrne r5, [r4, #0xf4]!
00597c98  09 00 00 1a                                      bne #0x597cc4
00597c9c  0a 00 00 ea                                      b #0x597ccc
00597ca0  00 00 55 e3                                      cmp r5, #0
00597ca4  05 30 a0 01                                      moveq r3, r5
00597ca8  04 30 45 12                                      subne r3, r5, #4
00597cac  03 00 a0 e1                                      mov r0, r3
00597cb0  01 10 a0 e3                                      mov r1, #1
00597cb4  00 30 93 e5                                      ldr r3, [r3]
00597cb8  0f e0 a0 e1                                      mov lr, pc
00597cbc  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00597cc0  00 50 95 e5                                      ldr r5, [r5]
00597cc4  05 00 54 e1                                      cmp r4, r5
00597cc8  f4 ff ff 1a                                      bne #0x597ca0
00597ccc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00597cd0  03 00 a0 e1                                      mov r0, r3
00597cd4  00 30 93 e5                                      ldr r3, [r3]
00597cd8  0f e0 a0 e1                                      mov lr, pc
00597cdc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00597ce0  00 30 94 e5                                      ldr r3, [r4]
00597ce4  00 60 a0 e1                                      mov r6, r0
00597ce8  04 00 a0 e1                                      mov r0, r4
00597cec  0f e0 a0 e1                                      mov lr, pc
00597cf0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00597cf4  24 20 84 e2                                      add r2, r4, #0x24
00597cf8  00 10 a0 e1                                      mov r1, r0
00597cfc  06 00 a0 e1                                      mov r0, r6
00597d00  df fe ff eb                                      bl #0x597884
00597d04  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597d08  12 3e 83 e3                                      orr r3, r3, #0x120
00597d0c  50 30 c3 e3                                      bic r3, r3, #0x50
00597d10  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597d14  dd ff ff ea                                      b #0x597c90
00597d18  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00597d1c  5e 00 13 e3                                      tst r3, #0x5e
00597d20  da ff ff 0a                                      beq #0x597c90
00597d24  00 60 a0 e1                                      mov r6, r0
00597d28  24 30 96 e4                                      ldr r3, [r6], #0x24
00597d2c  0f e0 a0 e1                                      mov lr, pc
00597d30  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00597d34  41 20 a0 e3                                      mov r2, #0x41
00597d38  00 10 a0 e1                                      mov r1, r0
00597d3c  06 00 a0 e1                                      mov r0, r6
00597d40  c8 da f5 eb                                      bl #0x30e868
00597d44  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00597d48  12 3e 83 e3                                      orr r3, r3, #0x120
00597d4c  50 30 c3 e3                                      bic r3, r3, #0x50
00597d50  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597d54  cd ff ff ea                                      b #0x597c90

; FUNCTION 0x00597d58, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode17addBindedAnimatorEPNS0_18ISceneNodeAnimatorE
; demangled: glitch::scene::ISceneNode::addBindedAnimator(glitch::scene::ISceneNodeAnimator*)
; decoder-mode: arm
00597d58  70 40 2d e9                                      push {r4, r5, r6, lr}
00597d5c  00 50 51 e2                                      subs r5, r1, #0
00597d60  00 60 a0 e1                                      mov r6, r0
00597d64  17 00 00 0a                                      beq #0x597dc8
00597d68  00 40 a0 e1                                      mov r4, r0
00597d6c  04 31 b4 e5                                      ldr r3, [r4, #0x104]!
00597d70  03 00 00 ea                                      b #0x597d84
00597d74  08 20 93 e5                                      ldr r2, [r3, #8]
00597d78  05 00 52 e1                                      cmp r2, r5
00597d7c  11 00 00 0a                                      beq #0x597dc8
00597d80  00 30 93 e5                                      ldr r3, [r3]
00597d84  03 00 54 e1                                      cmp r4, r3
00597d88  f9 ff ff 1a                                      bne #0x597d74
00597d8c  00 30 95 e5                                      ldr r3, [r5]
00597d90  0c 00 a0 e3                                      mov r0, #0xc
00597d94  00 10 a0 e3                                      mov r1, #0
00597d98  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00597d9c  03 30 85 e0                                      add r3, r5, r3
00597da0  04 20 93 e5                                      ldr r2, [r3, #4]
00597da4  01 20 82 e2                                      add r2, r2, #1
00597da8  04 20 83 e5                                      str r2, [r3, #4]
00597dac  ed e1 f5 eb                                      bl #0x310568
00597db0  08 50 80 e5                                      str r5, [r0, #8]
00597db4  08 31 96 e5                                      ldr r3, [r6, #0x108]
00597db8  00 40 80 e5                                      str r4, [r0]
00597dbc  04 30 80 e5                                      str r3, [r0, #4]
00597dc0  00 00 83 e5                                      str r0, [r3]
00597dc4  08 01 86 e5                                      str r0, [r6, #0x108]
00597dc8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00597dcc, declared_size=388, range_size=388, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode12cloneMembersEPS1_
; demangled: glitch::scene::ISceneNode::cloneMembers(glitch::scene::ISceneNode*)
; decoder-mode: arm
00597dcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00597dd0  0c 30 81 e2                                      add r3, r1, #0xc
00597dd4  00 40 a0 e1                                      mov r4, r0
00597dd8  0c 00 80 e2                                      add r0, r0, #0xc
00597ddc  03 00 50 e1                                      cmp r0, r3
00597de0  01 50 a0 e1                                      mov r5, r1
00597de4  02 00 00 0a                                      beq #0x597df4
00597de8  20 10 91 e5                                      ldr r1, [r1, #0x20]
00597dec  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00597df0  64 23 f6 eb                                      bl #0x320b88
00597df4  24 10 85 e2                                      add r1, r5, #0x24
00597df8  41 20 a0 e3                                      mov r2, #0x41
00597dfc  24 00 84 e2                                      add r0, r4, #0x24
00597e00  98 da f5 eb                                      bl #0x30e868
00597e04  68 10 85 e2                                      add r1, r5, #0x68
00597e08  41 20 a0 e3                                      mov r2, #0x41
00597e0c  68 00 84 e2                                      add r0, r4, #0x68
00597e10  94 da f5 eb                                      bl #0x30e868
00597e14  ac 20 95 e5                                      ldr r2, [r5, #0xac]
00597e18  00 30 94 e5                                      ldr r3, [r4]
00597e1c  04 00 a0 e1                                      mov r0, r4
00597e20  ac 20 84 e5                                      str r2, [r4, #0xac]
00597e24  b0 20 95 e5                                      ldr r2, [r5, #0xb0]
00597e28  05 80 a0 e1                                      mov r8, r5
00597e2c  b0 20 84 e5                                      str r2, [r4, #0xb0]
00597e30  b4 20 95 e5                                      ldr r2, [r5, #0xb4]
00597e34  b4 20 84 e5                                      str r2, [r4, #0xb4]
00597e38  b8 20 95 e5                                      ldr r2, [r5, #0xb8]
00597e3c  b8 20 84 e5                                      str r2, [r4, #0xb8]
00597e40  bc 20 95 e5                                      ldr r2, [r5, #0xbc]
00597e44  bc 20 84 e5                                      str r2, [r4, #0xbc]
00597e48  c0 20 95 e5                                      ldr r2, [r5, #0xc0]
00597e4c  c0 20 84 e5                                      str r2, [r4, #0xc0]
00597e50  c4 20 95 e5                                      ldr r2, [r5, #0xc4]
00597e54  c4 20 84 e5                                      str r2, [r4, #0xc4]
00597e58  c8 20 95 e5                                      ldr r2, [r5, #0xc8]
00597e5c  c8 20 84 e5                                      str r2, [r4, #0xc8]
00597e60  cc 20 95 e5                                      ldr r2, [r5, #0xcc]
00597e64  cc 20 84 e5                                      str r2, [r4, #0xcc]
00597e68  d0 20 95 e5                                      ldr r2, [r5, #0xd0]
00597e6c  d0 20 84 e5                                      str r2, [r4, #0xd0]
00597e70  0c 21 95 e5                                      ldr r2, [r5, #0x10c]
00597e74  0c 21 84 e5                                      str r2, [r4, #0x10c]
00597e78  14 11 95 e5                                      ldr r1, [r5, #0x114]
00597e7c  0f e0 a0 e1                                      mov lr, pc
00597e80  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00597e84  18 31 95 e5                                      ldr r3, [r5, #0x118]
00597e88  00 20 a0 e3                                      mov r2, #0
00597e8c  18 31 84 e5                                      str r3, [r4, #0x118]
00597e90  1c 31 95 e5                                      ldr r3, [r5, #0x11c]
00597e94  10 21 84 e5                                      str r2, [r4, #0x110]
00597e98  1c 31 84 e5                                      str r3, [r4, #0x11c]
00597e9c  f4 60 b8 e5                                      ldr r6, [r8, #0xf4]!
00597ea0  11 00 00 ea                                      b #0x597eec
00597ea4  00 00 56 e3                                      cmp r6, #0
00597ea8  06 30 a0 01                                      moveq r3, r6
00597eac  04 30 46 12                                      subne r3, r6, #4
00597eb0  03 00 a0 e1                                      mov r0, r3
00597eb4  00 30 93 e5                                      ldr r3, [r3]
00597eb8  0f e0 a0 e1                                      mov lr, pc
00597ebc  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
00597ec0  00 30 94 e5                                      ldr r3, [r4]
00597ec4  00 70 a0 e1                                      mov r7, r0
00597ec8  00 10 a0 e1                                      mov r1, r0
00597ecc  04 00 a0 e1                                      mov r0, r4
00597ed0  0f e0 a0 e1                                      mov lr, pc
00597ed4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00597ed8  00 30 97 e5                                      ldr r3, [r7]
00597edc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00597ee0  00 00 87 e0                                      add r0, r7, r0
00597ee4  a6 15 f6 eb                                      bl #0x31d584
00597ee8  00 60 96 e5                                      ldr r6, [r6]
00597eec  06 00 58 e1                                      cmp r8, r6
00597ef0  eb ff ff 1a                                      bne #0x597ea4
00597ef4  fc 60 b5 e5                                      ldr r6, [r5, #0xfc]!
00597ef8  06 00 55 e1                                      cmp r5, r6
00597efc  12 00 00 0a                                      beq #0x597f4c
00597f00  08 30 96 e5                                      ldr r3, [r6, #8]
00597f04  03 00 a0 e1                                      mov r0, r3
00597f08  00 30 93 e5                                      ldr r3, [r3]
00597f0c  0f e0 a0 e1                                      mov lr, pc
00597f10  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00597f14  00 70 50 e2                                      subs r7, r0, #0
00597f18  07 10 a0 e1                                      mov r1, r7
00597f1c  04 00 a0 e1                                      mov r0, r4
00597f20  06 00 00 0a                                      beq #0x597f40
00597f24  00 30 94 e5                                      ldr r3, [r4]
00597f28  0f e0 a0 e1                                      mov lr, pc
00597f2c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00597f30  00 30 97 e5                                      ldr r3, [r7]
00597f34  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00597f38  00 00 87 e0                                      add r0, r7, r0
00597f3c  90 15 f6 eb                                      bl #0x31d584
00597f40  00 60 96 e5                                      ldr r6, [r6]
00597f44  06 00 55 e1                                      cmp r5, r6
00597f48  ec ff ff 1a                                      bne #0x597f00
00597f4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00597f50, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode7setNameERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::ISceneNode::setName(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00597f50  0c 00 80 e2                                      add r0, r0, #0xc
00597f54  01 00 50 e1                                      cmp r0, r1
00597f58  1e ff 2f 01                                      bxeq lr
00597f5c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00597f60  14 10 91 e5                                      ldr r1, [r1, #0x14]
00597f64  07 23 f6 ea                                      b #0x320b88

; FUNCTION 0x00597f68, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode21removeBindedAnimatorsEv
; demangled: glitch::scene::ISceneNode::removeBindedAnimators()
; decoder-mode: arm
00597f68  70 40 2d e9                                      push {r4, r5, r6, lr}
00597f6c  00 60 a0 e1                                      mov r6, r0
00597f70  00 50 a0 e1                                      mov r5, r0
00597f74  04 41 b6 e5                                      ldr r4, [r6, #0x104]!
00597f78  0b 00 00 ea                                      b #0x597fac
00597f7c  08 30 94 e5                                      ldr r3, [r4, #8]
00597f80  05 10 a0 e1                                      mov r1, r5
00597f84  03 00 a0 e1                                      mov r0, r3
00597f88  00 30 93 e5                                      ldr r3, [r3]
00597f8c  0f e0 a0 e1                                      mov lr, pc
00597f90  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00597f94  08 30 94 e5                                      ldr r3, [r4, #8]
00597f98  00 20 93 e5                                      ldr r2, [r3]
00597f9c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00597fa0  00 00 83 e0                                      add r0, r3, r0
00597fa4  76 15 f6 eb                                      bl #0x31d584
00597fa8  00 40 94 e5                                      ldr r4, [r4]
00597fac  04 00 56 e1                                      cmp r6, r4
00597fb0  f1 ff ff 1a                                      bne #0x597f7c
00597fb4  04 01 95 e5                                      ldr r0, [r5, #0x104]
00597fb8  00 00 54 e1                                      cmp r4, r0
00597fbc  01 00 00 1a                                      bne #0x597fc8
00597fc0  04 00 00 ea                                      b #0x597fd8
00597fc4  06 00 a0 e1                                      mov r0, r6
00597fc8  00 60 90 e5                                      ldr r6, [r0]
00597fcc  1f e1 f5 eb                                      bl #0x310450
00597fd0  04 00 56 e1                                      cmp r6, r4
00597fd4  fa ff ff 1a                                      bne #0x597fc4
00597fd8  08 41 85 e5                                      str r4, [r5, #0x108]
00597fdc  04 41 85 e5                                      str r4, [r5, #0x104]
00597fe0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00597fe4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode20removeBindedAnimatorEPNS0_18ISceneNodeAnimatorE
; demangled: glitch::scene::ISceneNode::removeBindedAnimator(glitch::scene::ISceneNodeAnimator*)
; decoder-mode: arm
00597fe4  10 40 2d e9                                      push {r4, lr}
00597fe8  00 20 a0 e1                                      mov r2, r0
00597fec  01 30 a0 e1                                      mov r3, r1
00597ff0  04 41 b0 e5                                      ldr r4, [r0, #0x104]!
00597ff4  03 00 00 ea                                      b #0x598008
00597ff8  08 10 94 e5                                      ldr r1, [r4, #8]
00597ffc  03 00 51 e1                                      cmp r1, r3
00598000  03 00 00 0a                                      beq #0x598014
00598004  00 40 94 e5                                      ldr r4, [r4]
00598008  04 00 50 e1                                      cmp r0, r4
0059800c  f9 ff ff 1a                                      bne #0x597ff8
00598010  10 80 bd e8                                      pop {r4, pc}
00598014  02 10 a0 e1                                      mov r1, r2
00598018  03 00 a0 e1                                      mov r0, r3
0059801c  00 30 93 e5                                      ldr r3, [r3]
00598020  0f e0 a0 e1                                      mov lr, pc
00598024  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00598028  08 30 94 e5                                      ldr r3, [r4, #8]
0059802c  00 20 93 e5                                      ldr r2, [r3]
00598030  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00598034  00 00 83 e0                                      add r0, r3, r0
00598038  51 15 f6 eb                                      bl #0x31d584
0059803c  00 30 94 e5                                      ldr r3, [r4]
00598040  04 20 94 e5                                      ldr r2, [r4, #4]
00598044  04 00 a0 e1                                      mov r0, r4
00598048  00 30 82 e5                                      str r3, [r2]
0059804c  04 20 83 e5                                      str r2, [r3, #4]
00598050  10 40 bd e8                                      pop {r4, lr}
00598054  fd e0 f5 ea                                      b #0x310450

; FUNCTION 0x00598058, declared_size=832, range_size=832, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::ISceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00598058  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059805c  fc 62 9f e5                                      ldr r6, [pc, #0x2fc]
00598060  fc 92 9f e5                                      ldr sb, [pc, #0x2fc]
00598064  64 d0 4d e2                                      sub sp, sp, #0x64
00598068  06 60 8f e0                                      add r6, pc, r6
0059806c  09 30 96 e7                                      ldr r3, [r6, sb]
00598070  00 40 51 e2                                      subs r4, r1, #0
00598074  00 50 a0 e1                                      mov r5, r0
00598078  00 30 93 e5                                      ldr r3, [r3]
0059807c  02 b0 a0 e1                                      mov fp, r2
00598080  5c 30 8d e5                                      str r3, [sp, #0x5c]
00598084  73 00 00 0a                                      beq #0x598258
00598088  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
0059808c  44 70 8d e2                                      add r7, sp, #0x44
00598090  0c 80 80 e2                                      add r8, r0, #0xc
00598094  02 20 8f e0                                      add r2, pc, r2
00598098  00 30 94 e5                                      ldr r3, [r4]
0059809c  07 00 a0 e1                                      mov r0, r7
005980a0  0f e0 a0 e1                                      mov lr, pc
005980a4  84 f0 93 e5                                      ldr pc, [r3, #0x84]
005980a8  07 00 58 e1                                      cmp r8, r7
005980ac  03 00 00 0a                                      beq #0x5980c0
005980b0  08 00 a0 e1                                      mov r0, r8
005980b4  58 10 9d e5                                      ldr r1, [sp, #0x58]
005980b8  54 20 9d e5                                      ldr r2, [sp, #0x54]
005980bc  b1 22 f6 eb                                      bl #0x320b88
005980c0  58 00 9d e5                                      ldr r0, [sp, #0x58]
005980c4  07 00 50 e1                                      cmp r0, r7
005980c8  02 00 00 0a                                      beq #0x5980d8
005980cc  00 00 50 e3                                      cmp r0, #0
005980d0  00 00 00 0a                                      beq #0x5980d8
005980d4  dd e0 f5 eb                                      bl #0x310450
005980d8  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
005980dc  00 30 94 e5                                      ldr r3, [r4]
005980e0  04 00 a0 e1                                      mov r0, r4
005980e4  01 10 8f e0                                      add r1, pc, r1
005980e8  0f e0 a0 e1                                      mov lr, pc
005980ec  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005980f0  78 22 9f e5                                      ldr r2, [pc, #0x278]
005980f4  00 30 95 e5                                      ldr r3, [r5]
005980f8  74 72 9f e5                                      ldr r7, [pc, #0x274]
005980fc  0c 01 85 e5                                      str r0, [r5, #0x10c]
00598100  38 80 8d e2                                      add r8, sp, #0x38
00598104  02 20 8f e0                                      add r2, pc, r2
00598108  00 c0 94 e5                                      ldr ip, [r4]
0059810c  08 00 a0 e1                                      mov r0, r8
00598110  04 10 a0 e1                                      mov r1, r4
00598114  a4 a0 93 e5                                      ldr sl, [r3, #0xa4]
00598118  07 70 8f e0                                      add r7, pc, r7
0059811c  0f e0 a0 e1                                      mov lr, pc
00598120  b4 f1 9c e5                                      ldr pc, [ip, #0x1b4]
00598124  05 00 a0 e1                                      mov r0, r5
00598128  08 10 a0 e1                                      mov r1, r8
0059812c  3a ff 2f e1                                      blx sl
00598130  07 10 a0 e1                                      mov r1, r7
00598134  00 30 94 e5                                      ldr r3, [r4]
00598138  04 00 a0 e1                                      mov r0, r4
0059813c  0f e0 a0 e1                                      mov lr, pc
00598140  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00598144  00 10 a0 e1                                      mov r1, r0
00598148  28 02 9f e5                                      ldr r0, [pc, #0x228]
0059814c  00 00 8f e0                                      add r0, pc, r0
00598150  31 d9 f5 eb                                      bl #0x30e61c
00598154  00 00 50 e3                                      cmp r0, #0
00598158  45 00 00 0a                                      beq #0x598274
0059815c  00 30 95 e5                                      ldr r3, [r5]
00598160  07 20 a0 e1                                      mov r2, r7
00598164  0d 00 a0 e1                                      mov r0, sp
00598168  04 10 a0 e1                                      mov r1, r4
0059816c  00 c0 94 e5                                      ldr ip, [r4]
00598170  9c 70 93 e5                                      ldr r7, [r3, #0x9c]
00598174  0f e0 a0 e1                                      mov lr, pc
00598178  2c f2 9c e5                                      ldr pc, [ip, #0x22c]
0059817c  05 00 a0 e1                                      mov r0, r5
00598180  0d 10 a0 e1                                      mov r1, sp
00598184  37 ff 2f e1                                      blx r7
00598188  ec 21 9f e5                                      ldr r2, [pc, #0x1ec]
0059818c  00 c0 95 e5                                      ldr ip, [r5]
00598190  20 70 8d e2                                      add r7, sp, #0x20
00598194  02 20 8f e0                                      add r2, pc, r2
00598198  00 30 94 e5                                      ldr r3, [r4]
0059819c  07 00 a0 e1                                      mov r0, r7
005981a0  04 10 a0 e1                                      mov r1, r4
005981a4  94 80 9c e5                                      ldr r8, [ip, #0x94]
005981a8  0f e0 a0 e1                                      mov lr, pc
005981ac  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
005981b0  07 10 a0 e1                                      mov r1, r7
005981b4  05 00 a0 e1                                      mov r0, r5
005981b8  38 ff 2f e1                                      blx r8
005981bc  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
005981c0  00 20 95 e5                                      ldr r2, [r5]
005981c4  00 30 94 e5                                      ldr r3, [r4]
005981c8  01 10 8f e0                                      add r1, pc, r1
005981cc  04 00 a0 e1                                      mov r0, r4
005981d0  48 70 92 e5                                      ldr r7, [r2, #0x48]
005981d4  0f e0 a0 e1                                      mov lr, pc
005981d8  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
005981dc  00 10 a0 e1                                      mov r1, r0
005981e0  05 00 a0 e1                                      mov r0, r5
005981e4  37 ff 2f e1                                      blx r7
005981e8  94 11 9f e5                                      ldr r1, [pc, #0x194]
005981ec  94 21 9f e5                                      ldr r2, [pc, #0x194]
005981f0  00 30 94 e5                                      ldr r3, [r4]
005981f4  01 10 8f e0                                      add r1, pc, r1
005981f8  02 20 8f e0                                      add r2, pc, r2
005981fc  04 00 a0 e1                                      mov r0, r4
00598200  0f e0 a0 e1                                      mov lr, pc
00598204  00 f1 93 e5                                      ldr pc, [r3, #0x100]
00598208  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0059820c  18 01 85 e5                                      str r0, [r5, #0x118]
00598210  00 30 94 e5                                      ldr r3, [r4]
00598214  01 10 8f e0                                      add r1, pc, r1
00598218  04 00 a0 e1                                      mov r0, r4
0059821c  0f e0 a0 e1                                      mov lr, pc
00598220  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00598224  00 10 a0 e1                                      mov r1, r0
00598228  05 00 a0 e1                                      mov r0, r5
0059822c  dc fb ff eb                                      bl #0x5971a4
00598230  00 00 5b e3                                      cmp fp, #0
00598234  02 00 00 0a                                      beq #0x598244
00598238  00 30 9b e5                                      ldr r3, [fp]
0059823c  02 00 53 e3                                      cmp r3, #2
00598240  2e 00 00 0a                                      beq #0x598300
00598244  05 00 a0 e1                                      mov r0, r5
00598248  00 30 95 e5                                      ldr r3, [r5]
0059824c  00 10 a0 e3                                      mov r1, #0
00598250  0f e0 a0 e1                                      mov lr, pc
00598254  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
00598258  09 30 96 e7                                      ldr r3, [r6, sb]
0059825c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00598260  00 30 93 e5                                      ldr r3, [r3]
00598264  03 00 52 e1                                      cmp r2, r3
00598268  3b 00 00 1a                                      bne #0x59835c
0059826c  64 d0 8d e2                                      add sp, sp, #0x64
00598270  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00598274  07 20 a0 e1                                      mov r2, r7
00598278  00 30 94 e5                                      ldr r3, [r4]
0059827c  2c 00 8d e2                                      add r0, sp, #0x2c
00598280  04 10 a0 e1                                      mov r1, r4
00598284  0f e0 a0 e1                                      mov lr, pc
00598288  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
0059828c  36 1a 0f e3                                      movw r1, #0xfa36
00598290  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00598294  8e 1c 43 e3                                      movt r1, #0x3c8e
00598298  b3 da f5 eb                                      bl #0x30ed6c
0059829c  36 1a 0f e3                                      movw r1, #0xfa36
005982a0  00 a0 a0 e1                                      mov sl, r0
005982a4  8e 1c 43 e3                                      movt r1, #0x3c8e
005982a8  30 00 9d e5                                      ldr r0, [sp, #0x30]
005982ac  2c a0 8d e5                                      str sl, [sp, #0x2c]
005982b0  ad da f5 eb                                      bl #0x30ed6c
005982b4  36 1a 0f e3                                      movw r1, #0xfa36
005982b8  00 70 a0 e1                                      mov r7, r0
005982bc  8e 1c 43 e3                                      movt r1, #0x3c8e
005982c0  34 00 9d e5                                      ldr r0, [sp, #0x34]
005982c4  30 70 8d e5                                      str r7, [sp, #0x30]
005982c8  a7 da f5 eb                                      bl #0x30ed6c
005982cc  00 c0 95 e5                                      ldr ip, [r5]
005982d0  10 80 8d e2                                      add r8, sp, #0x10
005982d4  34 00 8d e5                                      str r0, [sp, #0x34]
005982d8  00 30 a0 e1                                      mov r3, r0
005982dc  0a 10 a0 e1                                      mov r1, sl
005982e0  07 20 a0 e1                                      mov r2, r7
005982e4  08 00 a0 e1                                      mov r0, r8
005982e8  9c 70 9c e5                                      ldr r7, [ip, #0x9c]
005982ec  b9 11 f7 eb                                      bl #0x35c9d8
005982f0  05 00 a0 e1                                      mov r0, r5
005982f4  08 10 a0 e1                                      mov r1, r8
005982f8  37 ff 2f e1                                      blx r7
005982fc  a1 ff ff ea                                      b #0x598188
00598300  88 10 9f e5                                      ldr r1, [pc, #0x88]
00598304  00 20 95 e5                                      ldr r2, [r5]
00598308  00 30 94 e5                                      ldr r3, [r4]
0059830c  01 10 8f e0                                      add r1, pc, r1
00598310  04 00 a0 e1                                      mov r0, r4
00598314  cc 70 92 e5                                      ldr r7, [r2, #0xcc]
00598318  0f e0 a0 e1                                      mov lr, pc
0059831c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00598320  00 10 a0 e1                                      mov r1, r0
00598324  05 00 a0 e1                                      mov r0, r5
00598328  37 ff 2f e1                                      blx r7
0059832c  60 10 9f e5                                      ldr r1, [pc, #0x60]
00598330  00 20 95 e5                                      ldr r2, [r5]
00598334  00 30 94 e5                                      ldr r3, [r4]
00598338  04 00 a0 e1                                      mov r0, r4
0059833c  01 10 8f e0                                      add r1, pc, r1
00598340  d4 40 92 e5                                      ldr r4, [r2, #0xd4]
00598344  0f e0 a0 e1                                      mov lr, pc
00598348  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0059834c  00 10 a0 e1                                      mov r1, r0
00598350  05 00 a0 e1                                      mov r0, r5
00598354  34 ff 2f e1                                      blx r4
00598358  b9 ff ff ea                                      b #0x598244
0059835c  eb d7 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00598360  28 ca 3f 00 ac 40 00 00 ec 3c 33 00 e4 46 33 00  .byte 0x28, 0xca, 0x3f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x3c, 0x33, 0x00, 0xe4, 0x46, 0x33, 0x00
00598370  3c be 32 00 48 75 34 00 7c 69 32 00 dc 74 34 00  .byte 0x3c, 0xbe, 0x32, 0x00, 0x48, 0x75, 0x34, 0x00, 0x7c, 0x69, 0x32, 0x00, 0xdc, 0x74, 0x34, 0x00
00598380  e0 3c 33 00 84 74 34 00 c0 f1 3b 00 7c 74 34 00  .byte 0xe0, 0x3c, 0x33, 0x00, 0x84, 0x74, 0x34, 0x00, 0xc0, 0xf1, 0x3b, 0x00, 0x7c, 0x74, 0x34, 0x00
00598390  94 73 34 00 74 73 34 00                          .byte 0x94, 0x73, 0x34, 0x00, 0x74, 0x73, 0x34, 0x00

; FUNCTION 0x00598398, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode23getSceneNodeFromScopeIDEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromScopeID(char const*) const
; decoder-mode: arm
00598398  70 40 2d e9                                      push {r4, r5, r6, lr}
0059839c  01 50 a0 e1                                      mov r5, r1
005983a0  00 30 90 e5                                      ldr r3, [r0]
005983a4  00 40 a0 e1                                      mov r4, r0
005983a8  0f e0 a0 e1                                      mov lr, pc
005983ac  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005983b0  05 10 a0 e1                                      mov r1, r5
005983b4  cb d8 f5 eb                                      bl #0x30e6e8
005983b8  00 00 50 e3                                      cmp r0, #0
005983bc  01 00 00 1a                                      bne #0x5983c8
005983c0  04 00 a0 e1                                      mov r0, r4
005983c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005983c8  04 60 a0 e1                                      mov r6, r4
005983cc  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
005983d0  07 00 00 ea                                      b #0x5983f4
005983d4  00 00 54 e3                                      cmp r4, #0
005983d8  04 00 a0 01                                      moveq r0, r4
005983dc  04 00 44 12                                      subne r0, r4, #4
005983e0  05 10 a0 e1                                      mov r1, r5
005983e4  eb ff ff eb                                      bl #0x598398
005983e8  00 00 50 e3                                      cmp r0, #0
005983ec  04 00 00 1a                                      bne #0x598404
005983f0  00 40 94 e5                                      ldr r4, [r4]
005983f4  04 00 56 e1                                      cmp r6, r4
005983f8  f5 ff ff 1a                                      bne #0x5983d4
005983fc  00 40 a0 e3                                      mov r4, #0
00598400  ee ff ff ea                                      b #0x5983c0
00598404  00 40 a0 e1                                      mov r4, r0
00598408  ec ff ff ea                                      b #0x5983c0

; FUNCTION 0x0059840c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode23getSceneNodeFromScopeIDEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromScopeID(char const*)
; decoder-mode: arm
0059840c  70 40 2d e9                                      push {r4, r5, r6, lr}
00598410  01 50 a0 e1                                      mov r5, r1
00598414  00 30 90 e5                                      ldr r3, [r0]
00598418  00 40 a0 e1                                      mov r4, r0
0059841c  0f e0 a0 e1                                      mov lr, pc
00598420  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00598424  05 10 a0 e1                                      mov r1, r5
00598428  ae d8 f5 eb                                      bl #0x30e6e8
0059842c  00 00 50 e3                                      cmp r0, #0
00598430  01 00 00 1a                                      bne #0x59843c
00598434  04 00 a0 e1                                      mov r0, r4
00598438  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059843c  04 60 a0 e1                                      mov r6, r4
00598440  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
00598444  07 00 00 ea                                      b #0x598468
00598448  00 00 54 e3                                      cmp r4, #0
0059844c  04 00 a0 01                                      moveq r0, r4
00598450  04 00 44 12                                      subne r0, r4, #4
00598454  05 10 a0 e1                                      mov r1, r5
00598458  eb ff ff eb                                      bl #0x59840c
0059845c  00 00 50 e3                                      cmp r0, #0
00598460  04 00 00 1a                                      bne #0x598478
00598464  00 40 94 e5                                      ldr r4, [r4]
00598468  04 00 56 e1                                      cmp r6, r4
0059846c  f5 ff ff 1a                                      bne #0x598448
00598470  00 40 a0 e3                                      mov r4, #0
00598474  ee ff ff ea                                      b #0x598434
00598478  00 40 a0 e1                                      mov r4, r0
0059847c  ec ff ff ea                                      b #0x598434

; FUNCTION 0x00598480, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode20getSceneNodeFromNameEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromName(char const*) const
; decoder-mode: arm
00598480  70 40 2d e9                                      push {r4, r5, r6, lr}
00598484  01 50 a0 e1                                      mov r5, r1
00598488  00 30 90 e5                                      ldr r3, [r0]
0059848c  00 40 a0 e1                                      mov r4, r0
00598490  0f e0 a0 e1                                      mov lr, pc
00598494  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00598498  05 10 a0 e1                                      mov r1, r5
0059849c  91 d8 f5 eb                                      bl #0x30e6e8
005984a0  00 00 50 e3                                      cmp r0, #0
005984a4  01 00 00 1a                                      bne #0x5984b0
005984a8  04 00 a0 e1                                      mov r0, r4
005984ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
005984b0  04 60 a0 e1                                      mov r6, r4
005984b4  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
005984b8  07 00 00 ea                                      b #0x5984dc
005984bc  00 00 54 e3                                      cmp r4, #0
005984c0  04 00 a0 01                                      moveq r0, r4
005984c4  04 00 44 12                                      subne r0, r4, #4
005984c8  05 10 a0 e1                                      mov r1, r5
005984cc  eb ff ff eb                                      bl #0x598480
005984d0  00 00 50 e3                                      cmp r0, #0
005984d4  04 00 00 1a                                      bne #0x5984ec
005984d8  00 40 94 e5                                      ldr r4, [r4]
005984dc  04 00 56 e1                                      cmp r6, r4
005984e0  f5 ff ff 1a                                      bne #0x5984bc
005984e4  00 40 a0 e3                                      mov r4, #0
005984e8  ee ff ff ea                                      b #0x5984a8
005984ec  00 40 a0 e1                                      mov r4, r0
005984f0  ec ff ff ea                                      b #0x5984a8

; FUNCTION 0x005984f4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode20getSceneNodeFromNameEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromName(char const*)
; decoder-mode: arm
005984f4  70 40 2d e9                                      push {r4, r5, r6, lr}
005984f8  01 50 a0 e1                                      mov r5, r1
005984fc  00 30 90 e5                                      ldr r3, [r0]
00598500  00 40 a0 e1                                      mov r4, r0
00598504  0f e0 a0 e1                                      mov lr, pc
00598508  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0059850c  05 10 a0 e1                                      mov r1, r5
00598510  74 d8 f5 eb                                      bl #0x30e6e8
00598514  00 00 50 e3                                      cmp r0, #0
00598518  01 00 00 1a                                      bne #0x598524
0059851c  04 00 a0 e1                                      mov r0, r4
00598520  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598524  04 60 a0 e1                                      mov r6, r4
00598528  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
0059852c  07 00 00 ea                                      b #0x598550
00598530  00 00 54 e3                                      cmp r4, #0
00598534  04 00 a0 01                                      moveq r0, r4
00598538  04 00 44 12                                      subne r0, r4, #4
0059853c  05 10 a0 e1                                      mov r1, r5
00598540  eb ff ff eb                                      bl #0x5984f4
00598544  00 00 50 e3                                      cmp r0, #0
00598548  04 00 00 1a                                      bne #0x598560
0059854c  00 40 94 e5                                      ldr r4, [r4]
00598550  04 00 56 e1                                      cmp r6, r4
00598554  f5 ff ff 1a                                      bne #0x598530
00598558  00 40 a0 e3                                      mov r4, #0
0059855c  ee ff ff ea                                      b #0x59851c
00598560  00 40 a0 e1                                      mov r4, r0
00598564  ec ff ff ea                                      b #0x59851c

; FUNCTION 0x00598568, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode19getSceneNodeFromUIDEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromUID(char const*) const
; decoder-mode: arm
00598568  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059856c  01 50 a0 e1                                      mov r5, r1
00598570  00 30 90 e5                                      ldr r3, [r0]
00598574  00 40 a0 e1                                      mov r4, r0
00598578  0f e0 a0 e1                                      mov lr, pc
0059857c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00598580  05 10 a0 e1                                      mov r1, r5
00598584  57 d8 f5 eb                                      bl #0x30e6e8
00598588  00 00 50 e3                                      cmp r0, #0
0059858c  01 00 00 1a                                      bne #0x598598
00598590  04 00 a0 e1                                      mov r0, r4
00598594  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00598598  04 00 a0 e1                                      mov r0, r4
0059859c  09 fb ff eb                                      bl #0x5971c8
005985a0  00 70 a0 e1                                      mov r7, r0
005985a4  04 60 b7 e5                                      ldr r6, [r7, #4]!
005985a8  07 00 00 ea                                      b #0x5985cc
005985ac  00 00 56 e3                                      cmp r6, #0
005985b0  06 00 a0 01                                      moveq r0, r6
005985b4  04 00 46 12                                      subne r0, r6, #4
005985b8  05 10 a0 e1                                      mov r1, r5
005985bc  e9 ff ff eb                                      bl #0x598568
005985c0  00 00 50 e3                                      cmp r0, #0
005985c4  04 00 00 1a                                      bne #0x5985dc
005985c8  00 60 96 e5                                      ldr r6, [r6]
005985cc  06 00 57 e1                                      cmp r7, r6
005985d0  f5 ff ff 1a                                      bne #0x5985ac
005985d4  00 40 a0 e3                                      mov r4, #0
005985d8  ec ff ff ea                                      b #0x598590
005985dc  00 40 a0 e1                                      mov r4, r0
005985e0  ea ff ff ea                                      b #0x598590

; FUNCTION 0x005985e4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode19getSceneNodeFromUIDEPKc
; demangled: glitch::scene::ISceneNode::getSceneNodeFromUID(char const*)
; decoder-mode: arm
005985e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005985e8  01 50 a0 e1                                      mov r5, r1
005985ec  00 30 90 e5                                      ldr r3, [r0]
005985f0  00 40 a0 e1                                      mov r4, r0
005985f4  0f e0 a0 e1                                      mov lr, pc
005985f8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
005985fc  05 10 a0 e1                                      mov r1, r5
00598600  38 d8 f5 eb                                      bl #0x30e6e8
00598604  00 00 50 e3                                      cmp r0, #0
00598608  01 00 00 1a                                      bne #0x598614
0059860c  04 00 a0 e1                                      mov r0, r4
00598610  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598614  04 60 a0 e1                                      mov r6, r4
00598618  f4 40 b6 e5                                      ldr r4, [r6, #0xf4]!
0059861c  07 00 00 ea                                      b #0x598640
00598620  00 00 54 e3                                      cmp r4, #0
00598624  04 00 a0 01                                      moveq r0, r4
00598628  04 00 44 12                                      subne r0, r4, #4
0059862c  05 10 a0 e1                                      mov r1, r5
00598630  eb ff ff eb                                      bl #0x5985e4
00598634  00 00 50 e3                                      cmp r0, #0
00598638  04 00 00 1a                                      bne #0x598650
0059863c  00 40 94 e5                                      ldr r4, [r4]
00598640  04 00 56 e1                                      cmp r6, r4
00598644  f5 ff ff 1a                                      bne #0x598620
00598648  00 40 a0 e3                                      mov r4, #0
0059864c  ee ff ff ea                                      b #0x59860c
00598650  00 40 a0 e1                                      mov r4, r0
00598654  ec ff ff ea                                      b #0x59860c

; FUNCTION 0x00598658, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode15removeAnimatorsEv
; demangled: glitch::scene::ISceneNode::removeAnimators()
; decoder-mode: arm
00598658  70 40 2d e9                                      push {r4, r5, r6, lr}
0059865c  00 60 a0 e1                                      mov r6, r0
00598660  00 50 a0 e1                                      mov r5, r0
00598664  fc 40 b6 e5                                      ldr r4, [r6, #0xfc]!
00598668  0b 00 00 ea                                      b #0x59869c
0059866c  08 30 94 e5                                      ldr r3, [r4, #8]
00598670  05 10 a0 e1                                      mov r1, r5
00598674  03 00 a0 e1                                      mov r0, r3
00598678  00 30 93 e5                                      ldr r3, [r3]
0059867c  0f e0 a0 e1                                      mov lr, pc
00598680  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00598684  08 30 94 e5                                      ldr r3, [r4, #8]
00598688  00 20 93 e5                                      ldr r2, [r3]
0059868c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00598690  00 00 83 e0                                      add r0, r3, r0
00598694  ba 13 f6 eb                                      bl #0x31d584
00598698  00 40 94 e5                                      ldr r4, [r4]
0059869c  04 00 56 e1                                      cmp r6, r4
005986a0  f1 ff ff 1a                                      bne #0x59866c
005986a4  fc 00 95 e5                                      ldr r0, [r5, #0xfc]
005986a8  00 00 54 e1                                      cmp r4, r0
005986ac  01 00 00 1a                                      bne #0x5986b8
005986b0  04 00 00 ea                                      b #0x5986c8
005986b4  06 00 a0 e1                                      mov r0, r6
005986b8  00 60 90 e5                                      ldr r6, [r0]
005986bc  63 df f5 eb                                      bl #0x310450
005986c0  06 00 54 e1                                      cmp r4, r6
005986c4  fa ff ff 1a                                      bne #0x5986b4
005986c8  10 01 95 e5                                      ldr r0, [r5, #0x110]
005986cc  00 41 85 e5                                      str r4, [r5, #0x100]
005986d0  fc 40 85 e5                                      str r4, [r5, #0xfc]
005986d4  00 00 50 e3                                      cmp r0, #0
005986d8  01 00 00 0a                                      beq #0x5986e4
005986dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
005986e0  73 c2 ff ea                                      b #0x5890b4
005986e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005986e8, declared_size=136, range_size=136, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode14removeAnimatorEPNS0_18ISceneNodeAnimatorE
; demangled: glitch::scene::ISceneNode::removeAnimator(glitch::scene::ISceneNodeAnimator*)
; decoder-mode: arm
005986e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005986ec  00 20 a0 e1                                      mov r2, r0
005986f0  00 50 a0 e1                                      mov r5, r0
005986f4  01 30 a0 e1                                      mov r3, r1
005986f8  fc 40 b2 e5                                      ldr r4, [r2, #0xfc]!
005986fc  03 00 00 ea                                      b #0x598710
00598700  08 10 94 e5                                      ldr r1, [r4, #8]
00598704  03 00 51 e1                                      cmp r1, r3
00598708  03 00 00 0a                                      beq #0x59871c
0059870c  00 40 94 e5                                      ldr r4, [r4]
00598710  04 00 52 e1                                      cmp r2, r4
00598714  f9 ff ff 1a                                      bne #0x598700
00598718  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059871c  03 00 a0 e1                                      mov r0, r3
00598720  05 10 a0 e1                                      mov r1, r5
00598724  00 30 93 e5                                      ldr r3, [r3]
00598728  0f e0 a0 e1                                      mov lr, pc
0059872c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00598730  08 30 94 e5                                      ldr r3, [r4, #8]
00598734  00 20 93 e5                                      ldr r2, [r3]
00598738  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0059873c  00 00 83 e0                                      add r0, r3, r0
00598740  8f 13 f6 eb                                      bl #0x31d584
00598744  00 30 94 e5                                      ldr r3, [r4]
00598748  04 20 94 e5                                      ldr r2, [r4, #4]
0059874c  04 00 a0 e1                                      mov r0, r4
00598750  00 30 82 e5                                      str r3, [r2]
00598754  04 20 83 e5                                      str r2, [r3, #4]
00598758  3c df f5 eb                                      bl #0x310450
0059875c  10 01 95 e5                                      ldr r0, [r5, #0x110]
00598760  00 00 50 e3                                      cmp r0, #0
00598764  eb ff ff 0a                                      beq #0x598718
00598768  70 40 bd e8                                      pop {r4, r5, r6, lr}
0059876c  50 c2 ff ea                                      b #0x5890b4

; FUNCTION 0x00598770, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode11addAnimatorEPNS0_18ISceneNodeAnimatorE
; demangled: glitch::scene::ISceneNode::addAnimator(glitch::scene::ISceneNodeAnimator*)
; decoder-mode: arm
00598770  70 40 2d e9                                      push {r4, r5, r6, lr}
00598774  00 50 51 e2                                      subs r5, r1, #0
00598778  00 40 a0 e1                                      mov r4, r0
0059877c  18 00 00 0a                                      beq #0x5987e4
00598780  00 10 a0 e3                                      mov r1, #0
00598784  0c 00 a0 e3                                      mov r0, #0xc
00598788  76 df f5 eb                                      bl #0x310568
0059878c  08 50 80 e5                                      str r5, [r0, #8]
00598790  00 31 94 e5                                      ldr r3, [r4, #0x100]
00598794  fc 20 84 e2                                      add r2, r4, #0xfc
00598798  0c 00 80 e8                                      stm r0, {r2, r3}
0059879c  00 00 83 e5                                      str r0, [r3]
005987a0  00 01 84 e5                                      str r0, [r4, #0x100]
005987a4  00 30 95 e5                                      ldr r3, [r5]
005987a8  05 00 a0 e1                                      mov r0, r5
005987ac  04 10 a0 e1                                      mov r1, r4
005987b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005987b4  03 30 85 e0                                      add r3, r5, r3
005987b8  04 20 93 e5                                      ldr r2, [r3, #4]
005987bc  01 20 82 e2                                      add r2, r2, #1
005987c0  04 20 83 e5                                      str r2, [r3, #4]
005987c4  00 30 95 e5                                      ldr r3, [r5]
005987c8  0f e0 a0 e1                                      mov lr, pc
005987cc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005987d0  10 01 94 e5                                      ldr r0, [r4, #0x110]
005987d4  00 00 50 e3                                      cmp r0, #0
005987d8  01 00 00 0a                                      beq #0x5987e4
005987dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
005987e0  33 c2 ff ea                                      b #0x5890b4
005987e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005987e8, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode9removeAllEv
; demangled: glitch::scene::ISceneNode::removeAll()
; decoder-mode: arm
005987e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005987ec  00 60 a0 e1                                      mov r6, r0
005987f0  f4 30 b6 e5                                      ldr r3, [r6, #0xf4]!
005987f4  00 70 a0 e1                                      mov r7, r0
005987f8  06 00 53 e1                                      cmp r3, r6
005987fc  0e 00 00 0a                                      beq #0x59883c
00598800  00 40 a0 e3                                      mov r4, #0
00598804  00 00 00 ea                                      b #0x59880c
00598808  05 30 a0 e1                                      mov r3, r5
0059880c  04 20 43 e2                                      sub r2, r3, #4
00598810  00 50 93 e5                                      ldr r5, [r3]
00598814  04 40 83 e5                                      str r4, [r3, #4]
00598818  00 40 83 e5                                      str r4, [r3]
0059881c  ec 40 82 e5                                      str r4, [r2, #0xec]
00598820  04 30 13 e5                                      ldr r3, [r3, #-4]
00598824  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00598828  00 00 82 e0                                      add r0, r2, r0
0059882c  54 13 f6 eb                                      bl #0x31d584
00598830  05 00 56 e1                                      cmp r6, r5
00598834  f3 ff ff 1a                                      bne #0x598808
00598838  06 30 a0 e1                                      mov r3, r6
0059883c  10 01 97 e5                                      ldr r0, [r7, #0x110]
00598840  00 20 a0 e3                                      mov r2, #0
00598844  f8 30 87 e5                                      str r3, [r7, #0xf8]
00598848  00 00 50 e3                                      cmp r0, #0
0059884c  f0 20 87 e5                                      str r2, [r7, #0xf0]
00598850  f4 30 87 e5                                      str r3, [r7, #0xf4]
00598854  01 00 00 0a                                      beq #0x598860
00598858  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0059885c  14 c2 ff ea                                      b #0x5890b4
00598860  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00598864, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode8addChildEPS1_
; demangled: glitch::scene::ISceneNode::addChild(glitch::scene::ISceneNode*)
; decoder-mode: arm
00598864  00 00 51 e1                                      cmp r1, r0
00598868  00 00 51 13                                      cmpne r1, #0
0059886c  70 40 2d e9                                      push {r4, r5, r6, lr}
00598870  00 50 a0 e1                                      mov r5, r0
00598874  01 40 a0 e1                                      mov r4, r1
00598878  00 00 00 1a                                      bne #0x598880
0059887c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598880  00 30 91 e5                                      ldr r3, [r1]
00598884  01 00 a0 e1                                      mov r0, r1
00598888  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0059888c  03 30 81 e0                                      add r3, r1, r3
00598890  04 20 93 e5                                      ldr r2, [r3, #4]
00598894  01 20 82 e2                                      add r2, r2, #1
00598898  04 20 83 e5                                      str r2, [r3, #4]
0059889c  00 30 91 e5                                      ldr r3, [r1]
005988a0  0f e0 a0 e1                                      mov lr, pc
005988a4  68 f0 93 e5                                      ldr pc, [r3, #0x68]
005988a8  f8 20 95 e5                                      ldr r2, [r5, #0xf8]
005988ac  04 30 84 e2                                      add r3, r4, #4
005988b0  f4 10 85 e2                                      add r1, r5, #0xf4
005988b4  08 20 84 e5                                      str r2, [r4, #8]
005988b8  00 30 82 e5                                      str r3, [r2]
005988bc  f8 30 85 e5                                      str r3, [r5, #0xf8]
005988c0  04 10 84 e5                                      str r1, [r4, #4]
005988c4  f0 30 95 e5                                      ldr r3, [r5, #0xf0]
005988c8  04 00 a0 e1                                      mov r0, r4
005988cc  05 10 a0 e1                                      mov r1, r5
005988d0  01 30 83 e2                                      add r3, r3, #1
005988d4  f0 30 85 e5                                      str r3, [r5, #0xf0]
005988d8  40 fa ff eb                                      bl #0x5971e0
005988dc  10 01 95 e5                                      ldr r0, [r5, #0x110]
005988e0  00 00 50 e3                                      cmp r0, #0
005988e4  00 00 00 0a                                      beq #0x5988ec
005988e8  f1 c1 ff eb                                      bl #0x5890b4
005988ec  1c 11 95 e5                                      ldr r1, [r5, #0x11c]
005988f0  04 00 a0 e1                                      mov r0, r4
005988f4  00 30 94 e5                                      ldr r3, [r4]
005988f8  01 10 01 e2                                      and r1, r1, #1
005988fc  0f e0 a0 e1                                      mov lr, pc
00598900  ec f0 93 e5                                      ldr pc, [r3, #0xec]
00598904  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00598908, declared_size=252, range_size=252, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZNK6glitch5scene10ISceneNode25getRelativeTransformationEv
; demangled: glitch::scene::ISceneNode::getRelativeTransformation() const
; decoder-mode: arm
00598908  70 40 2d e9                                      push {r4, r5, r6, lr}
0059890c  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
00598910  48 d0 4d e2                                      sub sp, sp, #0x48
00598914  00 40 a0 e1                                      mov r4, r0
00598918  0e 00 13 e3                                      tst r3, #0xe
0059891c  68 50 80 02                                      addeq r5, r0, #0x68
00598920  0c 00 00 0a                                      beq #0x598958
00598924  06 20 13 e2                                      ands r2, r3, #6
00598928  0d 00 00 1a                                      bne #0x598964
0059892c  ac c0 90 e5                                      ldr ip, [r0, #0xac]
00598930  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
00598934  b0 00 90 e5                                      ldr r0, [r0, #0xb0]
00598938  68 50 84 e2                                      add r5, r4, #0x68
0059893c  a8 20 c4 e5                                      strb r2, [r4, #0xa8]
00598940  98 c0 84 e5                                      str ip, [r4, #0x98]
00598944  9c 00 84 e5                                      str r0, [r4, #0x9c]
00598948  a0 10 84 e5                                      str r1, [r4, #0xa0]
0059894c  0e 30 c3 e3                                      bic r3, r3, #0xe
00598950  10 30 83 e3                                      orr r3, r3, #0x10
00598954  1c 31 84 e5                                      str r3, [r4, #0x11c]
00598958  05 00 a0 e1                                      mov r0, r5
0059895c  48 d0 8d e2                                      add sp, sp, #0x48
00598960  70 80 bd e8                                      pop {r4, r5, r6, pc}
00598964  04 60 8d e2                                      add r6, sp, #4
00598968  00 30 a0 e3                                      mov r3, #0
0059896c  68 50 80 e2                                      add r5, r0, #0x68
00598970  06 10 a0 e1                                      mov r1, r6
00598974  b8 00 80 e2                                      add r0, r0, #0xb8
00598978  44 30 cd e5                                      strb r3, [sp, #0x44]
0059897c  53 1e ff eb                                      bl #0x5602d0
00598980  06 10 a0 e1                                      mov r1, r6
00598984  41 20 a0 e3                                      mov r2, #0x41
00598988  05 00 a0 e1                                      mov r0, r5
0059898c  b5 d7 f5 eb                                      bl #0x30e868
00598990  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00598994  fe 15 a0 e3                                      mov r1, #0x3f800000
00598998  7b d5 f5 eb                                      bl #0x30df8c
0059899c  00 00 50 e3                                      cmp r0, #0
005989a0  04 00 00 0a                                      beq #0x5989b8
005989a4  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
005989a8  fe 15 a0 e3                                      mov r1, #0x3f800000
005989ac  76 d5 f5 eb                                      bl #0x30df8c
005989b0  00 00 50 e3                                      cmp r0, #0
005989b4  0c 00 00 1a                                      bne #0x5989ec
005989b8  05 00 a0 e1                                      mov r0, r5
005989bc  c8 10 84 e2                                      add r1, r4, #0xc8
005989c0  70 fb ff eb                                      bl #0x597788
005989c4  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
005989c8  ac 10 94 e5                                      ldr r1, [r4, #0xac]
005989cc  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
005989d0  00 00 a0 e3                                      mov r0, #0
005989d4  a0 30 84 e5                                      str r3, [r4, #0xa0]
005989d8  a8 00 c4 e5                                      strb r0, [r4, #0xa8]
005989dc  98 10 84 e5                                      str r1, [r4, #0x98]
005989e0  9c 20 84 e5                                      str r2, [r4, #0x9c]
005989e4  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
005989e8  d7 ff ff ea                                      b #0x59894c
005989ec  d0 00 94 e5                                      ldr r0, [r4, #0xd0]
005989f0  fe 15 a0 e3                                      mov r1, #0x3f800000
005989f4  64 d5 f5 eb                                      bl #0x30df8c
005989f8  00 00 50 e3                                      cmp r0, #0
005989fc  f0 ff ff 1a                                      bne #0x5989c4
00598a00  ec ff ff ea                                      b #0x5989b8

; FUNCTION 0x00598a04, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode7setNameEPKc
; demangled: glitch::scene::ISceneNode::setName(char const*)
; decoder-mode: arm
00598a04  70 40 2d e9                                      push {r4, r5, r6, lr}
00598a08  00 40 a0 e1                                      mov r4, r0
00598a0c  01 00 a0 e1                                      mov r0, r1
00598a10  01 50 a0 e1                                      mov r5, r1
00598a14  0e d5 f5 eb                                      bl #0x30de54
00598a18  05 10 a0 e1                                      mov r1, r5
00598a1c  00 20 85 e0                                      add r2, r5, r0
00598a20  0c 00 84 e2                                      add r0, r4, #0xc
00598a24  70 40 bd e8                                      pop {r4, r5, r6, lr}
00598a28  56 20 f6 ea                                      b #0x320b88

; FUNCTION 0x00598a2c, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode7logTreeEii
; demangled: glitch::scene::ISceneNode::logTree(int, int)
; decoder-mode: arm
00598a2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00598a30  40 51 9f e5                                      ldr r5, [pc, #0x140]
00598a34  40 81 9f e5                                      ldr r8, [pc, #0x140]
00598a38  02 40 a0 e1                                      mov r4, r2
00598a3c  05 50 8f e0                                      add r5, pc, r5
00598a40  08 30 95 e7                                      ldr r3, [r5, r8]
00598a44  02 00 51 e1                                      cmp r1, r2
00598a48  00 20 a0 b3                                      movlt r2, #0
00598a4c  01 20 a0 a3                                      movge r2, #1
00598a50  00 00 54 e3                                      cmp r4, #0
00598a54  00 30 93 e5                                      ldr r3, [r3]
00598a58  00 20 a0 03                                      moveq r2, #0
00598a5c  4b df 4d e2                                      sub sp, sp, #0x12c
00598a60  00 00 52 e3                                      cmp r2, #0
00598a64  01 70 a0 e1                                      mov r7, r1
00598a68  00 60 a0 e1                                      mov r6, r0
00598a6c  24 31 8d e5                                      str r3, [sp, #0x124]
00598a70  06 00 00 0a                                      beq #0x598a90
00598a74  08 30 95 e7                                      ldr r3, [r5, r8]
00598a78  24 21 9d e5                                      ldr r2, [sp, #0x124]
00598a7c  00 30 93 e5                                      ldr r3, [r3]
00598a80  03 00 52 e1                                      cmp r2, r3
00598a84  3a 00 00 1a                                      bne #0x598b74
00598a88  4b df 8d e2                                      add sp, sp, #0x12c
00598a8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00598a90  24 a0 8d e2                                      add sl, sp, #0x24
00598a94  20 10 a0 e3                                      mov r1, #0x20
00598a98  07 20 a0 e1                                      mov r2, r7
00598a9c  0a 00 a0 e1                                      mov r0, sl
00598aa0  6e d6 f5 eb                                      bl #0x30e460
00598aa4  00 30 96 e5                                      ldr r3, [r6]
00598aa8  06 00 a0 e1                                      mov r0, r6
00598aac  0f e0 a0 e1                                      mov lr, pc
00598ab0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00598ab4  20 00 8d e5                                      str r0, [sp, #0x20]
00598ab8  00 30 96 e5                                      ldr r3, [r6]
00598abc  06 00 a0 e1                                      mov r0, r6
00598ac0  0f e0 a0 e1                                      mov lr, pc
00598ac4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00598ac8  20 20 96 e5                                      ldr r2, [r6, #0x20]
00598acc  00 30 96 e5                                      ldr r3, [r6]
00598ad0  00 90 a0 e1                                      mov sb, r0
00598ad4  1c 20 8d e5                                      str r2, [sp, #0x1c]
00598ad8  06 00 a0 e1                                      mov r0, r6
00598adc  0f e0 a0 e1                                      mov lr, pc
00598ae0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00598ae4  23 30 dd e5                                      ldrb r3, [sp, #0x23]
00598ae8  20 c0 dd e5                                      ldrb ip, [sp, #0x20]
00598aec  21 e0 dd e5                                      ldrb lr, [sp, #0x21]
00598af0  22 b0 dd e5                                      ldrb fp, [sp, #0x22]
00598af4  73 30 af e6                                      sxtb r3, r3
00598af8  80 20 9f e5                                      ldr r2, [pc, #0x80]
00598afc  14 30 8d e5                                      str r3, [sp, #0x14]
00598b00  09 30 a0 e1                                      mov r3, sb
00598b04  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
00598b08  7c c0 af e6                                      sxtb ip, ip
00598b0c  7e e0 af e6                                      sxtb lr, lr
00598b10  01 1c 67 e2                                      rsb r1, r7, #0x100
00598b14  04 00 8d e5                                      str r0, [sp, #4]
00598b18  02 20 8f e0                                      add r2, pc, r2
00598b1c  07 00 8a e0                                      add r0, sl, r7
00598b20  7b b0 af e6                                      sxtb fp, fp
00598b24  08 c0 8d e5                                      str ip, [sp, #8]
00598b28  0c e0 8d e5                                      str lr, [sp, #0xc]
00598b2c  00 90 8d e5                                      str sb, [sp]
00598b30  10 b0 8d e5                                      str fp, [sp, #0x10]
00598b34  c2 d5 f5 eb                                      bl #0x30e244
00598b38  0a 00 a0 e1                                      mov r0, sl
00598b3c  cf c9 01 eb                                      bl #0x60b280
00598b40  01 70 87 e2                                      add r7, r7, #1
00598b44  f4 a0 b6 e5                                      ldr sl, [r6, #0xf4]!
00598b48  06 00 00 ea                                      b #0x598b68
00598b4c  00 00 5a e3                                      cmp sl, #0
00598b50  0a 00 a0 01                                      moveq r0, sl
00598b54  04 00 4a 12                                      subne r0, sl, #4
00598b58  07 10 a0 e1                                      mov r1, r7
00598b5c  04 20 a0 e1                                      mov r2, r4
00598b60  b1 ff ff eb                                      bl #0x598a2c
00598b64  00 a0 9a e5                                      ldr sl, [sl]
00598b68  0a 00 56 e1                                      cmp r6, sl
00598b6c  f6 ff ff 1a                                      bne #0x598b4c
00598b70  bf ff ff ea                                      b #0x598a74
00598b74  e5 d5 f5 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00598b78  54 c0 3f 00 ac 40 00 00 a8 6b 34 00              .byte 0x54, 0xc0, 0x3f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x6b, 0x34, 0x00

; FUNCTION 0x00598b84, declared_size=284, range_size=284, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNodeD1Ev
; demangled: glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00598b84  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
00598b88  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
00598b8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00598b90  02 20 8f e0                                      add r2, pc, r2
00598b94  03 30 92 e7                                      ldr r3, [r2, r3]
00598b98  00 50 a0 e1                                      mov r5, r0
00598b9c  12 2e 83 e2                                      add r2, r3, #0x120
00598ba0  1c 30 83 e2                                      add r3, r3, #0x1c
00598ba4  00 30 80 e5                                      str r3, [r0]
00598ba8  30 21 80 e5                                      str r2, [r0, #0x130]
00598bac  0d ff ff eb                                      bl #0x5987e8
00598bb0  14 01 95 e5                                      ldr r0, [r5, #0x114]
00598bb4  00 00 50 e3                                      cmp r0, #0
00598bb8  00 00 00 0a                                      beq #0x598bc0
00598bbc  70 12 f6 eb                                      bl #0x31d584
00598bc0  04 01 95 e5                                      ldr r0, [r5, #0x104]
00598bc4  41 6f 85 e2                                      add r6, r5, #0x104
00598bc8  00 00 56 e1                                      cmp r6, r0
00598bcc  01 00 00 1a                                      bne #0x598bd8
00598bd0  04 00 00 ea                                      b #0x598be8
00598bd4  04 00 a0 e1                                      mov r0, r4
00598bd8  00 40 90 e5                                      ldr r4, [r0]
00598bdc  1b de f5 eb                                      bl #0x310450
00598be0  04 00 56 e1                                      cmp r6, r4
00598be4  fa ff ff 1a                                      bne #0x598bd4
00598be8  04 61 85 e5                                      str r6, [r5, #0x104]
00598bec  04 60 86 e5                                      str r6, [r6, #4]
00598bf0  fc 00 95 e5                                      ldr r0, [r5, #0xfc]
00598bf4  fc 60 85 e2                                      add r6, r5, #0xfc
00598bf8  06 00 50 e1                                      cmp r0, r6
00598bfc  01 00 00 1a                                      bne #0x598c08
00598c00  05 00 00 ea                                      b #0x598c1c
00598c04  04 00 a0 e1                                      mov r0, r4
00598c08  00 40 90 e5                                      ldr r4, [r0]
00598c0c  0f de f5 eb                                      bl #0x310450
00598c10  06 00 54 e1                                      cmp r4, r6
00598c14  fa ff ff 1a                                      bne #0x598c04
00598c18  06 00 a0 e1                                      mov r0, r6
00598c1c  fc 00 85 e5                                      str r0, [r5, #0xfc]
00598c20  f0 c0 85 e2                                      add ip, r5, #0xf0
00598c24  04 00 86 e5                                      str r0, [r6, #4]
00598c28  04 30 9c e5                                      ldr r3, [ip, #4]
00598c2c  f4 00 85 e2                                      add r0, r5, #0xf4
00598c30  00 00 53 e1                                      cmp r3, r0
00598c34  08 00 00 0a                                      beq #0x598c5c
00598c38  00 10 a0 e3                                      mov r1, #0
00598c3c  00 00 00 ea                                      b #0x598c44
00598c40  02 30 a0 e1                                      mov r3, r2
00598c44  00 20 93 e5                                      ldr r2, [r3]
00598c48  04 10 83 e5                                      str r1, [r3, #4]
00598c4c  00 10 83 e5                                      str r1, [r3]
00598c50  02 00 50 e1                                      cmp r0, r2
00598c54  f9 ff ff 1a                                      bne #0x598c40
00598c58  00 30 a0 e1                                      mov r3, r0
00598c5c  08 30 8c e5                                      str r3, [ip, #8]
00598c60  04 30 8c e5                                      str r3, [ip, #4]
00598c64  00 30 a0 e3                                      mov r3, #0
00598c68  f0 30 85 e5                                      str r3, [r5, #0xf0]
00598c6c  0c 30 85 e2                                      add r3, r5, #0xc
00598c70  14 00 93 e5                                      ldr r0, [r3, #0x14]
00598c74  03 00 50 e1                                      cmp r0, r3
00598c78  02 00 00 0a                                      beq #0x598c88
00598c7c  00 00 50 e3                                      cmp r0, #0
00598c80  00 00 00 0a                                      beq #0x598c88
00598c84  f1 dd f5 eb                                      bl #0x310450
00598c88  05 00 a0 e1                                      mov r0, r5
00598c8c  40 21 04 eb                                      bl #0x6a1194
00598c90  05 00 a0 e1                                      mov r0, r5
00598c94  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00598c98  00 bf 3f 00 80 21 00 00                          .byte 0x00, 0xbf, 0x3f, 0x00, 0x80, 0x21, 0x00, 0x00

; FUNCTION 0x00598ca0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNodeD0Ev
; demangled: glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00598ca0  10 40 2d e9                                      push {r4, lr}
00598ca4  00 40 a0 e1                                      mov r4, r0
00598ca8  b5 ff ff eb                                      bl #0x598b84
00598cac  04 00 a0 e1                                      mov r0, r4
00598cb0  7e d5 f5 eb                                      bl #0x30e2b0
00598cb4  04 00 a0 e1                                      mov r0, r4
00598cb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00598cbc, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNodeD2Ev
; demangled: glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00598cbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00598cc0  00 30 91 e5                                      ldr r3, [r1]
00598cc4  00 50 a0 e1                                      mov r5, r0
00598cc8  00 30 80 e5                                      str r3, [r0]
00598ccc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00598cd0  04 20 91 e5                                      ldr r2, [r1, #4]
00598cd4  03 20 80 e7                                      str r2, [r0, r3]
00598cd8  00 30 90 e5                                      ldr r3, [r0]
00598cdc  08 20 91 e5                                      ldr r2, [r1, #8]
00598ce0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00598ce4  03 20 80 e7                                      str r2, [r0, r3]
00598ce8  be fe ff eb                                      bl #0x5987e8
00598cec  14 01 95 e5                                      ldr r0, [r5, #0x114]
00598cf0  00 00 50 e3                                      cmp r0, #0
00598cf4  00 00 00 0a                                      beq #0x598cfc
00598cf8  21 12 f6 eb                                      bl #0x31d584
00598cfc  04 01 95 e5                                      ldr r0, [r5, #0x104]
00598d00  41 6f 85 e2                                      add r6, r5, #0x104
00598d04  00 00 56 e1                                      cmp r6, r0
00598d08  01 00 00 1a                                      bne #0x598d14
00598d0c  04 00 00 ea                                      b #0x598d24
00598d10  04 00 a0 e1                                      mov r0, r4
00598d14  00 40 90 e5                                      ldr r4, [r0]
00598d18  cc dd f5 eb                                      bl #0x310450
00598d1c  04 00 56 e1                                      cmp r6, r4
00598d20  fa ff ff 1a                                      bne #0x598d10
00598d24  04 61 85 e5                                      str r6, [r5, #0x104]
00598d28  04 60 86 e5                                      str r6, [r6, #4]
00598d2c  fc 00 95 e5                                      ldr r0, [r5, #0xfc]
00598d30  fc 60 85 e2                                      add r6, r5, #0xfc
00598d34  06 00 50 e1                                      cmp r0, r6
00598d38  01 00 00 1a                                      bne #0x598d44
00598d3c  05 00 00 ea                                      b #0x598d58
00598d40  04 00 a0 e1                                      mov r0, r4
00598d44  00 40 90 e5                                      ldr r4, [r0]
00598d48  c0 dd f5 eb                                      bl #0x310450
00598d4c  06 00 54 e1                                      cmp r4, r6
00598d50  fa ff ff 1a                                      bne #0x598d40
00598d54  06 00 a0 e1                                      mov r0, r6
00598d58  fc 00 85 e5                                      str r0, [r5, #0xfc]
00598d5c  f0 c0 85 e2                                      add ip, r5, #0xf0
00598d60  04 00 86 e5                                      str r0, [r6, #4]
00598d64  04 30 9c e5                                      ldr r3, [ip, #4]
00598d68  f4 00 85 e2                                      add r0, r5, #0xf4
00598d6c  00 00 53 e1                                      cmp r3, r0
00598d70  08 00 00 0a                                      beq #0x598d98
00598d74  00 10 a0 e3                                      mov r1, #0
00598d78  00 00 00 ea                                      b #0x598d80
00598d7c  02 30 a0 e1                                      mov r3, r2
00598d80  00 20 93 e5                                      ldr r2, [r3]
00598d84  04 10 83 e5                                      str r1, [r3, #4]
00598d88  00 10 83 e5                                      str r1, [r3]
00598d8c  02 00 50 e1                                      cmp r0, r2
00598d90  f9 ff ff 1a                                      bne #0x598d7c
00598d94  00 30 a0 e1                                      mov r3, r0
00598d98  08 30 8c e5                                      str r3, [ip, #8]
00598d9c  04 30 8c e5                                      str r3, [ip, #4]
00598da0  00 30 a0 e3                                      mov r3, #0
00598da4  f0 30 85 e5                                      str r3, [r5, #0xf0]
00598da8  0c 30 85 e2                                      add r3, r5, #0xc
00598dac  14 00 93 e5                                      ldr r0, [r3, #0x14]
00598db0  03 00 50 e1                                      cmp r0, r3
00598db4  02 00 00 0a                                      beq #0x598dc4
00598db8  00 00 50 e3                                      cmp r0, #0
00598dbc  00 00 00 0a                                      beq #0x598dc4
00598dc0  a2 dd f5 eb                                      bl #0x310450
00598dc4  05 00 a0 e1                                      mov r0, r5
00598dc8  f1 20 04 eb                                      bl #0x6a1194
00598dcc  05 00 a0 e1                                      mov r0, r5
00598dd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00598dd4, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode21getSceneNodesFromTypeENS0_17E_SCENE_NODE_TYPEERSt6vectorIPS1_NS_4core10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::scene::ISceneNode::getSceneNodesFromType(glitch::scene::E_SCENE_NODE_TYPE, std::vector<glitch::scene::ISceneNode*, glitch::core::SAllocator<glitch::scene::ISceneNode*, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00598dd4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00598dd8  00 30 90 e5                                      ldr r3, [r0]
00598ddc  01 60 a0 e1                                      mov r6, r1
00598de0  00 50 a0 e1                                      mov r5, r0
00598de4  02 70 a0 e1                                      mov r7, r2
00598de8  0f e0 a0 e1                                      mov lr, pc
00598dec  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
00598df0  06 00 50 e1                                      cmp r0, r6
00598df4  0f 00 00 0a                                      beq #0x598e38
00598df8  61 3e 06 e3                                      movw r3, #0x6e61
00598dfc  79 3f 45 e3                                      movt r3, #0x5f79
00598e00  03 00 56 e1                                      cmp r6, r3
00598e04  0b 00 00 0a                                      beq #0x598e38
00598e08  f4 40 b5 e5                                      ldr r4, [r5, #0xf4]!
00598e0c  06 00 00 ea                                      b #0x598e2c
00598e10  00 00 54 e3                                      cmp r4, #0
00598e14  04 00 a0 01                                      moveq r0, r4
00598e18  04 00 44 12                                      subne r0, r4, #4
00598e1c  06 10 a0 e1                                      mov r1, r6
00598e20  07 20 a0 e1                                      mov r2, r7
00598e24  ea ff ff eb                                      bl #0x598dd4
00598e28  00 40 94 e5                                      ldr r4, [r4]
00598e2c  04 00 55 e1                                      cmp r5, r4
00598e30  f6 ff ff 1a                                      bne #0x598e10
00598e34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00598e38  04 a0 97 e5                                      ldr sl, [r7, #4]
00598e3c  08 30 97 e5                                      ldr r3, [r7, #8]
00598e40  03 00 5a e1                                      cmp sl, r3
00598e44  04 00 00 0a                                      beq #0x598e5c
00598e48  00 50 8a e5                                      str r5, [sl]
00598e4c  04 30 97 e5                                      ldr r3, [r7, #4]
00598e50  04 30 83 e2                                      add r3, r3, #4
00598e54  04 30 87 e5                                      str r3, [r7, #4]
00598e58  ea ff ff ea                                      b #0x598e08
00598e5c  00 30 97 e5                                      ldr r3, [r7]
00598e60  0a 30 63 e0                                      rsb r3, r3, sl
00598e64  43 31 a0 e1                                      asr r3, r3, #2
00598e68  01 00 53 e3                                      cmp r3, #1
00598e6c  03 80 83 20                                      addhs r8, r3, r3
00598e70  01 80 83 32                                      addlo r8, r3, #1
00598e74  07 01 78 e3                                      cmn r8, #0xc0000001
00598e78  12 00 00 8a                                      bhi #0x598ec8
00598e7c  08 00 53 e1                                      cmp r3, r8
00598e80  08 81 a0 91                                      lslls r8, r8, #2
00598e84  0f 00 00 8a                                      bhi #0x598ec8
00598e88  00 10 a0 e3                                      mov r1, #0
00598e8c  08 00 a0 e1                                      mov r0, r8
00598e90  b4 dd f5 eb                                      bl #0x310568
00598e94  00 10 97 e5                                      ldr r1, [r7]
00598e98  00 40 a0 e1                                      mov r4, r0
00598e9c  01 a0 5a e0                                      subs sl, sl, r1
00598ea0  00 a0 a0 01                                      moveq sl, r0
00598ea4  09 00 00 1a                                      bne #0x598ed0
00598ea8  04 50 8a e4                                      str r5, [sl], #4
00598eac  00 00 97 e5                                      ldr r0, [r7]
00598eb0  08 80 84 e0                                      add r8, r4, r8
00598eb4  65 dd f5 eb                                      bl #0x310450
00598eb8  04 a0 87 e5                                      str sl, [r7, #4]
00598ebc  08 80 87 e5                                      str r8, [r7, #8]
00598ec0  00 40 87 e5                                      str r4, [r7]
00598ec4  cf ff ff ea                                      b #0x598e08
00598ec8  03 80 e0 e3                                      mvn r8, #3
00598ecc  ed ff ff ea                                      b #0x598e88
00598ed0  0a 20 a0 e1                                      mov r2, sl
00598ed4  17 d4 f5 eb                                      bl #0x30df38
00598ed8  0a a0 80 e0                                      add sl, r0, sl
00598edc  f1 ff ff ea                                      b #0x598ea8

; FUNCTION 0x0059901c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode25setRelativeTransformationERKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::ISceneNode::setRelativeTransformation(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0059901c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00599020  01 50 a0 e1                                      mov r5, r1
00599024  34 c0 91 e5                                      ldr ip, [r1, #0x34]
00599028  38 20 91 e5                                      ldr r2, [r1, #0x38]
0059902c  00 30 90 e5                                      ldr r3, [r0]
00599030  30 10 91 e5                                      ldr r1, [r1, #0x30]
00599034  2c d0 4d e2                                      sub sp, sp, #0x2c
00599038  00 40 a0 e1                                      mov r4, r0
0059903c  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
00599040  20 c0 8d e5                                      str ip, [sp, #0x20]
00599044  24 20 8d e5                                      str r2, [sp, #0x24]
00599048  1c 10 8d e5                                      str r1, [sp, #0x1c]
0059904c  1c 10 8d e2                                      add r1, sp, #0x1c
00599050  33 ff 2f e1                                      blx r3
00599054  00 30 94 e5                                      ldr r3, [r4]
00599058  05 10 a0 e1                                      mov r1, r5
0059905c  0d 00 a0 e1                                      mov r0, sp
00599060  9c 70 93 e5                                      ldr r7, [r3, #0x9c]
00599064  92 d7 fd eb                                      bl #0x50eeb4
00599068  04 00 a0 e1                                      mov r0, r4
0059906c  0d 10 a0 e1                                      mov r1, sp
00599070  37 ff 2f e1                                      blx r7
00599074  00 30 94 e5                                      ldr r3, [r4]
00599078  10 60 8d e2                                      add r6, sp, #0x10
0059907c  06 00 a0 e1                                      mov r0, r6
00599080  05 10 a0 e1                                      mov r1, r5
00599084  94 70 93 e5                                      ldr r7, [r3, #0x94]
00599088  95 ff ff eb                                      bl #0x598ee4
0059908c  04 00 a0 e1                                      mov r0, r4
00599090  06 10 a0 e1                                      mov r1, r6
00599094  37 ff 2f e1                                      blx r7
00599098  05 10 a0 e1                                      mov r1, r5
0059909c  68 00 84 e2                                      add r0, r4, #0x68
005990a0  41 20 a0 e3                                      mov r2, #0x41
005990a4  ef d5 f5 eb                                      bl #0x30e868
005990a8  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
005990ac  0e 30 c3 e3                                      bic r3, r3, #0xe
005990b0  10 30 83 e3                                      orr r3, r3, #0x10
005990b4  1c 31 84 e5                                      str r3, [r4, #0x11c]
005990b8  2c d0 8d e2                                      add sp, sp, #0x2c
005990bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005990c0, declared_size=424, range_size=424, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNodeC2EiRKNS_4core8vector3dIfEERKNS2_10quaternionES6_
; demangled: glitch::scene::ISceneNode::ISceneNode(int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
005990c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005990c4  00 50 a0 e3                                      mov r5, #0
005990c8  14 d0 4d e2                                      sub sp, sp, #0x14
005990cc  01 80 a0 e1                                      mov r8, r1
005990d0  04 50 80 e5                                      str r5, [r0, #4]
005990d4  08 50 80 e5                                      str r5, [r0, #8]
005990d8  00 40 a0 e1                                      mov r4, r0
005990dc  03 a0 a0 e1                                      mov sl, r3
005990e0  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
005990e4  0c 20 8d e5                                      str r2, [sp, #0xc]
005990e8  27 20 04 eb                                      bl #0x6a118c
005990ec  00 20 98 e5                                      ldr r2, [r8]
005990f0  0c 30 84 e2                                      add r3, r4, #0xc
005990f4  03 00 a0 e1                                      mov r0, r3
005990f8  00 20 84 e5                                      str r2, [r4]
005990fc  04 10 98 e5                                      ldr r1, [r8, #4]
00599100  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00599104  40 90 a0 e3                                      mov sb, #0x40
00599108  fe 65 a0 e3                                      mov r6, #0x3f800000
0059910c  02 10 84 e7                                      str r1, [r4, r2]
00599110  00 20 94 e5                                      ldr r2, [r4]
00599114  08 10 98 e5                                      ldr r1, [r8, #8]
00599118  01 80 a0 e3                                      mov r8, #1
0059911c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00599120  02 10 84 e7                                      str r1, [r4, r2]
00599124  1c 30 84 e5                                      str r3, [r4, #0x1c]
00599128  20 30 84 e5                                      str r3, [r4, #0x20]
0059912c  6b ff ff eb                                      bl #0x598ee0
00599130  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00599134  05 10 a0 e1                                      mov r1, r5
00599138  09 20 a0 e1                                      mov r2, sb
0059913c  00 50 c3 e5                                      strb r5, [r3]
00599140  24 00 84 e2                                      add r0, r4, #0x24
00599144  64 50 c4 e5                                      strb r5, [r4, #0x64]
00599148  c4 d4 f5 eb                                      bl #0x30e460
0059914c  09 20 a0 e1                                      mov r2, sb
00599150  05 10 a0 e1                                      mov r1, r5
00599154  24 60 84 e5                                      str r6, [r4, #0x24]
00599158  38 60 84 e5                                      str r6, [r4, #0x38]
0059915c  4c 60 84 e5                                      str r6, [r4, #0x4c]
00599160  60 60 84 e5                                      str r6, [r4, #0x60]
00599164  64 80 c4 e5                                      strb r8, [r4, #0x64]
00599168  a8 50 c4 e5                                      strb r5, [r4, #0xa8]
0059916c  68 00 84 e2                                      add r0, r4, #0x68
00599170  ba d4 f5 eb                                      bl #0x30e460
00599174  68 60 84 e5                                      str r6, [r4, #0x68]
00599178  7c 60 84 e5                                      str r6, [r4, #0x7c]
0059917c  90 60 84 e5                                      str r6, [r4, #0x90]
00599180  a4 60 84 e5                                      str r6, [r4, #0xa4]
00599184  a8 80 c4 e5                                      strb r8, [r4, #0xa8]
00599188  00 30 9a e5                                      ldr r3, [sl]
0059918c  b8 20 84 e2                                      add r2, r4, #0xb8
00599190  04 20 8d e5                                      str r2, [sp, #4]
00599194  ac 30 84 e5                                      str r3, [r4, #0xac]
00599198  04 30 9a e5                                      ldr r3, [sl, #4]
0059919c  bf c4 a0 e3                                      mov ip, #0xbf000000
005991a0  02 c5 8c e2                                      add ip, ip, #0x800000
005991a4  b0 30 84 e5                                      str r3, [r4, #0xb0]
005991a8  08 30 9a e5                                      ldr r3, [sl, #8]
005991ac  fc e0 84 e2                                      add lr, r4, #0xfc
005991b0  f4 90 84 e2                                      add sb, r4, #0xf4
005991b4  b4 30 84 e5                                      str r3, [r4, #0xb4]
005991b8  38 b0 9d e5                                      ldr fp, [sp, #0x38]
005991bc  41 af 84 e2                                      add sl, r4, #0x104
005991c0  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
005991c4  04 b0 9d e5                                      ldr fp, [sp, #4]
005991c8  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
005991cc  00 30 97 e5                                      ldr r3, [r7]
005991d0  04 00 a0 e1                                      mov r0, r4
005991d4  05 10 a0 e1                                      mov r1, r5
005991d8  c8 30 84 e5                                      str r3, [r4, #0xc8]
005991dc  04 30 97 e5                                      ldr r3, [r7, #4]
005991e0  cc 30 84 e5                                      str r3, [r4, #0xcc]
005991e4  08 30 97 e5                                      ldr r3, [r7, #8]
005991e8  dc c0 84 e5                                      str ip, [r4, #0xdc]
005991ec  d4 c0 84 e5                                      str ip, [r4, #0xd4]
005991f0  d0 30 84 e5                                      str r3, [r4, #0xd0]
005991f4  d8 c0 84 e5                                      str ip, [r4, #0xd8]
005991f8  e8 60 84 e5                                      str r6, [r4, #0xe8]
005991fc  e0 60 84 e5                                      str r6, [r4, #0xe0]
00599200  e4 60 84 e5                                      str r6, [r4, #0xe4]
00599204  ec 50 84 e5                                      str r5, [r4, #0xec]
00599208  f0 50 84 e5                                      str r5, [r4, #0xf0]
0059920c  f4 90 84 e5                                      str sb, [r4, #0xf4]
00599210  f8 90 84 e5                                      str sb, [r4, #0xf8]
00599214  00 e1 84 e5                                      str lr, [r4, #0x100]
00599218  08 a1 84 e5                                      str sl, [r4, #0x108]
0059921c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00599220  0f 36 00 e3                                      movw r3, #0x60f
00599224  1c 31 84 e5                                      str r3, [r4, #0x11c]
00599228  00 30 a0 e3                                      mov r3, #0
0059922c  0c 21 84 e5                                      str r2, [r4, #0x10c]
00599230  21 81 c4 e5                                      strb r8, [r4, #0x121]
00599234  28 31 84 e5                                      str r3, [r4, #0x128]
00599238  fc e0 84 e5                                      str lr, [r4, #0xfc]
0059923c  04 a1 84 e5                                      str sl, [r4, #0x104]
00599240  10 51 84 e5                                      str r5, [r4, #0x110]
00599244  14 51 84 e5                                      str r5, [r4, #0x114]
00599248  18 51 84 e5                                      str r5, [r4, #0x118]
0059924c  20 81 c4 e5                                      strb r8, [r4, #0x120]
00599250  24 51 84 e5                                      str r5, [r4, #0x124]
00599254  2c 51 84 e5                                      str r5, [r4, #0x12c]
00599258  80 fa ff eb                                      bl #0x597c60
0059925c  04 00 a0 e1                                      mov r0, r4
00599260  14 d0 8d e2                                      add sp, sp, #0x14
00599264  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00599268, declared_size=476, range_size=476, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNodeC1EiRKNS_4core8vector3dIfEERKNS2_10quaternionES6_
; demangled: glitch::scene::ISceneNode::ISceneNode(int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00599268  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0059926c  c0 61 9f e5                                      ldr r6, [pc, #0x1c0]
00599270  c0 e1 9f e5                                      ldr lr, [pc, #0x1c0]
00599274  c0 c1 9f e5                                      ldr ip, [pc, #0x1c0]
00599278  06 60 8f e0                                      add r6, pc, r6
0059927c  0e e0 96 e7                                      ldr lr, [r6, lr]
00599280  0c c0 96 e7                                      ldr ip, [r6, ip]
00599284  01 a0 a0 e3                                      mov sl, #1
00599288  0c 50 9e e5                                      ldr r5, [lr, #0xc]
0059928c  08 c0 8c e2                                      add ip, ip, #8
00599290  34 a1 80 e5                                      str sl, [r0, #0x134]
00599294  00 50 80 e5                                      str r5, [r0]
00599298  30 c1 80 e5                                      str ip, [r0, #0x130]
0059929c  0c c0 15 e5                                      ldr ip, [r5, #-0xc]
005992a0  10 e0 9e e5                                      ldr lr, [lr, #0x10]
005992a4  00 50 a0 e3                                      mov r5, #0
005992a8  0c d0 4d e2                                      sub sp, sp, #0xc
005992ac  0c e0 80 e7                                      str lr, [r0, ip]
005992b0  04 50 80 e5                                      str r5, [r0, #4]
005992b4  08 50 80 e5                                      str r5, [r0, #8]
005992b8  00 40 a0 e1                                      mov r4, r0
005992bc  02 70 a0 e1                                      mov r7, r2
005992c0  00 30 8d e5                                      str r3, [sp]
005992c4  30 80 9d e5                                      ldr r8, [sp, #0x30]
005992c8  04 10 8d e5                                      str r1, [sp, #4]
005992cc  ae 1f 04 eb                                      bl #0x6a118c
005992d0  68 21 9f e5                                      ldr r2, [pc, #0x168]
005992d4  0c 10 84 e2                                      add r1, r4, #0xc
005992d8  01 00 a0 e1                                      mov r0, r1
005992dc  02 20 96 e7                                      ldr r2, [r6, r2]
005992e0  1c 10 84 e5                                      str r1, [r4, #0x1c]
005992e4  20 10 84 e5                                      str r1, [r4, #0x20]
005992e8  12 1e 82 e2                                      add r1, r2, #0x120
005992ec  1c 20 82 e2                                      add r2, r2, #0x1c
005992f0  00 20 84 e5                                      str r2, [r4]
005992f4  30 11 84 e5                                      str r1, [r4, #0x130]
005992f8  f8 fe ff eb                                      bl #0x598ee0
005992fc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00599300  40 90 a0 e3                                      mov sb, #0x40
00599304  fe 65 a0 e3                                      mov r6, #0x3f800000
00599308  00 50 c2 e5                                      strb r5, [r2]
0059930c  05 10 a0 e1                                      mov r1, r5
00599310  09 20 a0 e1                                      mov r2, sb
00599314  64 50 c4 e5                                      strb r5, [r4, #0x64]
00599318  24 00 84 e2                                      add r0, r4, #0x24
0059931c  4f d4 f5 eb                                      bl #0x30e460
00599320  09 20 a0 e1                                      mov r2, sb
00599324  05 10 a0 e1                                      mov r1, r5
00599328  24 60 84 e5                                      str r6, [r4, #0x24]
0059932c  38 60 84 e5                                      str r6, [r4, #0x38]
00599330  4c 60 84 e5                                      str r6, [r4, #0x4c]
00599334  60 60 84 e5                                      str r6, [r4, #0x60]
00599338  64 a0 c4 e5                                      strb sl, [r4, #0x64]
0059933c  a8 50 c4 e5                                      strb r5, [r4, #0xa8]
00599340  68 00 84 e2                                      add r0, r4, #0x68
00599344  45 d4 f5 eb                                      bl #0x30e460
00599348  68 60 84 e5                                      str r6, [r4, #0x68]
0059934c  7c 60 84 e5                                      str r6, [r4, #0x7c]
00599350  90 60 84 e5                                      str r6, [r4, #0x90]
00599354  a4 60 84 e5                                      str r6, [r4, #0xa4]
00599358  a8 a0 c4 e5                                      strb sl, [r4, #0xa8]
0059935c  00 20 97 e5                                      ldr r2, [r7]
00599360  b8 b0 84 e2                                      add fp, r4, #0xb8
00599364  bf c4 a0 e3                                      mov ip, #0xbf000000
00599368  ac 20 84 e5                                      str r2, [r4, #0xac]
0059936c  04 20 97 e5                                      ldr r2, [r7, #4]
00599370  02 c5 8c e2                                      add ip, ip, #0x800000
00599374  fc e0 84 e2                                      add lr, r4, #0xfc
00599378  b0 20 84 e5                                      str r2, [r4, #0xb0]
0059937c  08 20 97 e5                                      ldr r2, [r7, #8]
00599380  f4 90 84 e2                                      add sb, r4, #0xf4
00599384  41 7f 84 e2                                      add r7, r4, #0x104
00599388  b4 20 84 e5                                      str r2, [r4, #0xb4]
0059938c  00 30 9d e5                                      ldr r3, [sp]
00599390  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00599394  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
00599398  00 30 98 e5                                      ldr r3, [r8]
0059939c  04 00 a0 e1                                      mov r0, r4
005993a0  05 10 a0 e1                                      mov r1, r5
005993a4  c8 30 84 e5                                      str r3, [r4, #0xc8]
005993a8  04 30 98 e5                                      ldr r3, [r8, #4]
005993ac  cc 30 84 e5                                      str r3, [r4, #0xcc]
005993b0  08 30 98 e5                                      ldr r3, [r8, #8]
005993b4  dc c0 84 e5                                      str ip, [r4, #0xdc]
005993b8  d4 c0 84 e5                                      str ip, [r4, #0xd4]
005993bc  d0 30 84 e5                                      str r3, [r4, #0xd0]
005993c0  d8 c0 84 e5                                      str ip, [r4, #0xd8]
005993c4  e8 60 84 e5                                      str r6, [r4, #0xe8]
005993c8  e0 60 84 e5                                      str r6, [r4, #0xe0]
005993cc  e4 60 84 e5                                      str r6, [r4, #0xe4]
005993d0  ec 50 84 e5                                      str r5, [r4, #0xec]
005993d4  f0 50 84 e5                                      str r5, [r4, #0xf0]
005993d8  f4 90 84 e5                                      str sb, [r4, #0xf4]
005993dc  f8 90 84 e5                                      str sb, [r4, #0xf8]
005993e0  00 e1 84 e5                                      str lr, [r4, #0x100]
005993e4  08 71 84 e5                                      str r7, [r4, #0x108]
005993e8  04 30 9d e5                                      ldr r3, [sp, #4]
005993ec  21 a1 c4 e5                                      strb sl, [r4, #0x121]
005993f0  fc e0 84 e5                                      str lr, [r4, #0xfc]
005993f4  0c 31 84 e5                                      str r3, [r4, #0x10c]
005993f8  0f 36 00 e3                                      movw r3, #0x60f
005993fc  1c 31 84 e5                                      str r3, [r4, #0x11c]
00599400  00 30 a0 e3                                      mov r3, #0
00599404  28 31 84 e5                                      str r3, [r4, #0x128]
00599408  04 71 84 e5                                      str r7, [r4, #0x104]
0059940c  10 51 84 e5                                      str r5, [r4, #0x110]
00599410  14 51 84 e5                                      str r5, [r4, #0x114]
00599414  18 51 84 e5                                      str r5, [r4, #0x118]
00599418  20 a1 c4 e5                                      strb sl, [r4, #0x120]
0059941c  24 51 84 e5                                      str r5, [r4, #0x124]
00599420  2c 51 84 e5                                      str r5, [r4, #0x12c]
00599424  0d fa ff eb                                      bl #0x597c60
00599428  04 00 a0 e1                                      mov r0, r4
0059942c  0c d0 8d e2                                      add sp, sp, #0xc
00599430  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00599434  18 b8 3f 00 a4 4b 00 00 44 2b 00 00 80 21 00 00  .byte 0x18, 0xb8, 0x3f, 0x00, 0xa4, 0x4b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x80, 0x21, 0x00, 0x00

; FUNCTION 0x00599444, declared_size=740, range_size=740, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZN6glitch5scene10ISceneNode25setAbsoluteTransformationERNS_4core8CMatrix4IfEE
; demangled: glitch::scene::ISceneNode::setAbsoluteTransformation(glitch::core::CMatrix4<float>&)
; decoder-mode: arm
00599444  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00599448  24 50 80 e2                                      add r5, r0, #0x24
0059944c  00 40 a0 e1                                      mov r4, r0
00599450  d4 d0 4d e2                                      sub sp, sp, #0xd4
00599454  05 00 a0 e1                                      mov r0, r5
00599458  41 20 a0 e3                                      mov r2, #0x41
0059945c  01 60 a0 e1                                      mov r6, r1
00599460  00 d5 f5 eb                                      bl #0x30e868
00599464  ec 30 94 e5                                      ldr r3, [r4, #0xec]
00599468  00 00 53 e3                                      cmp r3, #0
0059946c  a7 00 00 0a                                      beq #0x599710
00599470  00 20 a0 e3                                      mov r2, #0
00599474  cc 20 cd e5                                      strb r2, [sp, #0xcc]
00599478  03 00 a0 e1                                      mov r0, r3
0059947c  8c 70 8d e2                                      add r7, sp, #0x8c
00599480  00 30 93 e5                                      ldr r3, [r3]
00599484  0f e0 a0 e1                                      mov lr, pc
00599488  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0059948c  48 50 8d e2                                      add r5, sp, #0x48
00599490  07 10 a0 e1                                      mov r1, r7
00599494  89 27 f6 eb                                      bl #0x3232c0
00599498  06 20 a0 e1                                      mov r2, r6
0059949c  07 10 a0 e1                                      mov r1, r7
005994a0  05 00 a0 e1                                      mov r0, r5
005994a4  68 60 84 e2                                      add r6, r4, #0x68
005994a8  3a 15 f7 eb                                      bl #0x35e998
005994ac  05 10 a0 e1                                      mov r1, r5
005994b0  06 00 a0 e1                                      mov r0, r6
005994b4  41 20 a0 e3                                      mov r2, #0x41
005994b8  ea d4 f5 eb                                      bl #0x30e868
005994bc  9c 20 94 e5                                      ldr r2, [r4, #0x9c]
005994c0  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
005994c4  98 10 94 e5                                      ldr r1, [r4, #0x98]
005994c8  00 50 a0 e3                                      mov r5, #0
005994cc  04 70 8d e2                                      add r7, sp, #4
005994d0  ac 10 84 e5                                      str r1, [r4, #0xac]
005994d4  b0 20 84 e5                                      str r2, [r4, #0xb0]
005994d8  b4 30 84 e5                                      str r3, [r4, #0xb4]
005994dc  40 20 a0 e3                                      mov r2, #0x40
005994e0  05 10 a0 e1                                      mov r1, r5
005994e4  07 00 a0 e1                                      mov r0, r7
005994e8  dc d3 f5 eb                                      bl #0x30e460
005994ec  68 90 94 e5                                      ldr sb, [r4, #0x68]
005994f0  01 30 a0 e3                                      mov r3, #1
005994f4  fe 85 a0 e3                                      mov r8, #0x3f800000
005994f8  09 10 a0 e1                                      mov r1, sb
005994fc  09 00 a0 e1                                      mov r0, sb
00599500  04 a0 96 e5                                      ldr sl, [r6, #4]
00599504  44 30 cd e5                                      strb r3, [sp, #0x44]
00599508  04 80 8d e5                                      str r8, [sp, #4]
0059950c  18 80 8d e5                                      str r8, [sp, #0x18]
00599510  2c 80 8d e5                                      str r8, [sp, #0x2c]
00599514  40 80 8d e5                                      str r8, [sp, #0x40]
00599518  13 d6 f5 eb                                      bl #0x30ed6c
0059951c  0a 10 a0 e1                                      mov r1, sl
00599520  00 b0 a0 e1                                      mov fp, r0
00599524  0a 00 a0 e1                                      mov r0, sl
00599528  0f d6 f5 eb                                      bl #0x30ed6c
0059952c  00 10 a0 e1                                      mov r1, r0
00599530  0b 00 a0 e1                                      mov r0, fp
00599534  9a d5 f5 eb                                      bl #0x30eba4
00599538  08 60 96 e5                                      ldr r6, [r6, #8]
0059953c  00 b0 a0 e1                                      mov fp, r0
00599540  06 10 a0 e1                                      mov r1, r6
00599544  06 00 a0 e1                                      mov r0, r6
00599548  07 d6 f5 eb                                      bl #0x30ed6c
0059954c  00 10 a0 e1                                      mov r1, r0
00599550  0b 00 a0 e1                                      mov r0, fp
00599554  92 d5 f5 eb                                      bl #0x30eba4
00599558  d1 d4 f5 eb                                      bl #0x30e8a4
0059955c  17 d3 f5 eb                                      bl #0x30e1c0
00599560  4e d4 f5 eb                                      bl #0x30e6a0
00599564  00 10 a0 e1                                      mov r1, r0
00599568  c8 00 84 e5                                      str r0, [r4, #0xc8]
0059956c  08 00 a0 e1                                      mov r0, r8
00599570  c7 d5 f5 eb                                      bl #0x30ec94
00599574  09 10 a0 e1                                      mov r1, sb
00599578  00 b0 a0 e1                                      mov fp, r0
0059957c  44 50 cd e5                                      strb r5, [sp, #0x44]
00599580  f9 d5 f5 eb                                      bl #0x30ed6c
00599584  0a 10 a0 e1                                      mov r1, sl
00599588  04 00 8d e5                                      str r0, [sp, #4]
0059958c  0b 00 a0 e1                                      mov r0, fp
00599590  f5 d5 f5 eb                                      bl #0x30ed6c
00599594  06 10 a0 e1                                      mov r1, r6
00599598  08 00 8d e5                                      str r0, [sp, #8]
0059959c  0b 00 a0 e1                                      mov r0, fp
005995a0  f1 d5 f5 eb                                      bl #0x30ed6c
005995a4  78 90 94 e5                                      ldr sb, [r4, #0x78]
005995a8  78 30 84 e2                                      add r3, r4, #0x78
005995ac  0c 00 8d e5                                      str r0, [sp, #0xc]
005995b0  09 10 a0 e1                                      mov r1, sb
005995b4  09 00 a0 e1                                      mov r0, sb
005995b8  04 a0 93 e5                                      ldr sl, [r3, #4]
005995bc  08 60 93 e5                                      ldr r6, [r3, #8]
005995c0  e9 d5 f5 eb                                      bl #0x30ed6c
005995c4  0a 10 a0 e1                                      mov r1, sl
005995c8  00 b0 a0 e1                                      mov fp, r0
005995cc  0a 00 a0 e1                                      mov r0, sl
005995d0  e5 d5 f5 eb                                      bl #0x30ed6c
005995d4  00 10 a0 e1                                      mov r1, r0
005995d8  0b 00 a0 e1                                      mov r0, fp
005995dc  70 d5 f5 eb                                      bl #0x30eba4
005995e0  06 10 a0 e1                                      mov r1, r6
005995e4  00 b0 a0 e1                                      mov fp, r0
005995e8  06 00 a0 e1                                      mov r0, r6
005995ec  de d5 f5 eb                                      bl #0x30ed6c
005995f0  00 10 a0 e1                                      mov r1, r0
005995f4  0b 00 a0 e1                                      mov r0, fp
005995f8  69 d5 f5 eb                                      bl #0x30eba4
005995fc  a8 d4 f5 eb                                      bl #0x30e8a4
00599600  ee d2 f5 eb                                      bl #0x30e1c0
00599604  25 d4 f5 eb                                      bl #0x30e6a0
00599608  00 10 a0 e1                                      mov r1, r0
0059960c  cc 00 84 e5                                      str r0, [r4, #0xcc]
00599610  08 00 a0 e1                                      mov r0, r8
00599614  9e d5 f5 eb                                      bl #0x30ec94
00599618  09 10 a0 e1                                      mov r1, sb
0059961c  00 b0 a0 e1                                      mov fp, r0
00599620  44 50 cd e5                                      strb r5, [sp, #0x44]
00599624  d0 d5 f5 eb                                      bl #0x30ed6c
00599628  0a 10 a0 e1                                      mov r1, sl
0059962c  14 00 8d e5                                      str r0, [sp, #0x14]
00599630  0b 00 a0 e1                                      mov r0, fp
00599634  cc d5 f5 eb                                      bl #0x30ed6c
00599638  06 10 a0 e1                                      mov r1, r6
0059963c  18 00 8d e5                                      str r0, [sp, #0x18]
00599640  0b 00 a0 e1                                      mov r0, fp
00599644  c8 d5 f5 eb                                      bl #0x30ed6c
00599648  88 90 94 e5                                      ldr sb, [r4, #0x88]
0059964c  88 30 84 e2                                      add r3, r4, #0x88
00599650  1c 00 8d e5                                      str r0, [sp, #0x1c]
00599654  09 10 a0 e1                                      mov r1, sb
00599658  09 00 a0 e1                                      mov r0, sb
0059965c  04 a0 93 e5                                      ldr sl, [r3, #4]
00599660  08 60 93 e5                                      ldr r6, [r3, #8]
00599664  c0 d5 f5 eb                                      bl #0x30ed6c
00599668  0a 10 a0 e1                                      mov r1, sl
0059966c  00 b0 a0 e1                                      mov fp, r0
00599670  0a 00 a0 e1                                      mov r0, sl
00599674  bc d5 f5 eb                                      bl #0x30ed6c
00599678  00 10 a0 e1                                      mov r1, r0
0059967c  0b 00 a0 e1                                      mov r0, fp
00599680  47 d5 f5 eb                                      bl #0x30eba4
00599684  06 10 a0 e1                                      mov r1, r6
00599688  00 b0 a0 e1                                      mov fp, r0
0059968c  06 00 a0 e1                                      mov r0, r6
00599690  b5 d5 f5 eb                                      bl #0x30ed6c
00599694  00 10 a0 e1                                      mov r1, r0
00599698  0b 00 a0 e1                                      mov r0, fp
0059969c  40 d5 f5 eb                                      bl #0x30eba4
005996a0  7f d4 f5 eb                                      bl #0x30e8a4
005996a4  c5 d2 f5 eb                                      bl #0x30e1c0
005996a8  fc d3 f5 eb                                      bl #0x30e6a0
005996ac  00 10 a0 e1                                      mov r1, r0
005996b0  d0 00 84 e5                                      str r0, [r4, #0xd0]
005996b4  08 00 a0 e1                                      mov r0, r8
005996b8  75 d5 f5 eb                                      bl #0x30ec94
005996bc  09 10 a0 e1                                      mov r1, sb
005996c0  00 80 a0 e1                                      mov r8, r0
005996c4  44 50 cd e5                                      strb r5, [sp, #0x44]
005996c8  a7 d5 f5 eb                                      bl #0x30ed6c
005996cc  0a 10 a0 e1                                      mov r1, sl
005996d0  24 00 8d e5                                      str r0, [sp, #0x24]
005996d4  08 00 a0 e1                                      mov r0, r8
005996d8  a3 d5 f5 eb                                      bl #0x30ed6c
005996dc  06 10 a0 e1                                      mov r1, r6
005996e0  28 00 8d e5                                      str r0, [sp, #0x28]
005996e4  08 00 a0 e1                                      mov r0, r8
005996e8  9f d5 f5 eb                                      bl #0x30ed6c
005996ec  07 10 a0 e1                                      mov r1, r7
005996f0  2c 00 8d e5                                      str r0, [sp, #0x2c]
005996f4  b8 00 84 e2                                      add r0, r4, #0xb8
005996f8  ed d5 fd eb                                      bl #0x50eeb4
005996fc  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
00599700  20 30 83 e3                                      orr r3, r3, #0x20
00599704  1c 31 84 e5                                      str r3, [r4, #0x11c]
00599708  d4 d0 8d e2                                      add sp, sp, #0xd4
0059970c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00599710  68 60 84 e2                                      add r6, r4, #0x68
00599714  05 10 a0 e1                                      mov r1, r5
00599718  06 00 a0 e1                                      mov r0, r6
0059971c  41 20 a0 e3                                      mov r2, #0x41
00599720  50 d4 f5 eb                                      bl #0x30e868
00599724  64 ff ff ea                                      b #0x5994bc

; FUNCTION 0x00599728, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n24_N6glitch5scene10ISceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00599728  00 30 90 e5                                      ldr r3, [r0]
0059972c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00599730  03 00 80 e0                                      add r0, r0, r3
00599734  59 fd ff ea                                      b #0x598ca0

; FUNCTION 0x00599738, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n12_N6glitch5scene10ISceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00599738  00 30 90 e5                                      ldr r3, [r0]
0059973c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00599740  03 00 80 e0                                      add r0, r0, r3
00599744  55 fd ff ea                                      b #0x598ca0

; FUNCTION 0x00599748, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n24_N6glitch5scene10ISceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00599748  00 30 90 e5                                      ldr r3, [r0]
0059974c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00599750  03 00 80 e0                                      add r0, r0, r3
00599754  0a fd ff ea                                      b #0x598b84

; FUNCTION 0x00599758, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n12_N6glitch5scene10ISceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::ISceneNode::~ISceneNode()
; decoder-mode: arm
00599758  00 30 90 e5                                      ldr r3, [r0]
0059975c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00599760  03 00 80 e0                                      add r0, r0, r3
00599764  06 fd ff ea                                      b #0x598b84

; FUNCTION 0x00599768, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n20_N6glitch5scene10ISceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::ISceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00599768  00 30 90 e5                                      ldr r3, [r0]
0059976c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00599770  03 00 80 e0                                      add r0, r0, r3
00599774  37 fa ff ea                                      b #0x598058

; FUNCTION 0x00599778, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n16_NK6glitch5scene10ISceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::ISceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00599778  00 30 90 e5                                      ldr r3, [r0]
0059977c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00599780  03 00 80 e0                                      add r0, r0, r3
00599784  c6 f6 ff ea                                      b #0x5972a4

; FUNCTION 0x00599788, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::ISceneNode
; alias: _ZTv0_n16_N6glitch5scene10ISceneNode8onDeleteEv
; demangled: virtual thunk to glitch::scene::ISceneNode::onDelete()
; decoder-mode: arm
00599788  00 30 90 e5                                      ldr r3, [r0]
0059978c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00599790  03 00 80 e0                                      add r0, r0, r3
00599794  51 f5 ff ea                                      b #0x596ce0
