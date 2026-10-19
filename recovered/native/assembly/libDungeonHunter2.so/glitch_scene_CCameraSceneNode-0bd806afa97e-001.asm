; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035c310, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZThn304_N6glitch5scene16CCameraSceneNodeD1Ev
; demangled: non-virtual thunk to glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
0035c310  13 0e 40 e2                                      sub r0, r0, #0x130
0035c314  ff ff ff ea                                      b #0x35c318

; FUNCTION 0x0035c318, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNodeD1Ev
; demangled: glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
0035c318  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0035c31c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0035c320  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0035c324  03 30 8f e0                                      add r3, pc, r3
0035c328  01 10 93 e7                                      ldr r1, [r3, r1]
0035c32c  70 40 2d e9                                      push {r4, r5, r6, lr}
0035c330  02 20 93 e7                                      ldr r2, [r3, r2]
0035c334  04 c0 91 e5                                      ldr ip, [r1, #4]
0035c338  14 50 91 e5                                      ldr r5, [r1, #0x14]
0035c33c  06 ed 82 e2                                      add lr, r2, #0x180
0035c340  67 2f 82 e2                                      add r2, r2, #0x19c
0035c344  30 e1 80 e5                                      str lr, [r0, #0x130]
0035c348  84 23 80 e5                                      str r2, [r0, #0x384]
0035c34c  00 c0 80 e5                                      str ip, [r0]
0035c350  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0035c354  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0035c358  18 e0 91 e5                                      ldr lr, [r1, #0x18]
0035c35c  0c 50 80 e7                                      str r5, [r0, ip]
0035c360  00 c0 90 e5                                      ldr ip, [r0]
0035c364  02 20 93 e7                                      ldr r2, [r3, r2]
0035c368  00 40 a0 e1                                      mov r4, r0
0035c36c  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
0035c370  08 20 82 e2                                      add r2, r2, #8
0035c374  08 10 81 e2                                      add r1, r1, #8
0035c378  0c e0 80 e7                                      str lr, [r0, ip]
0035c37c  30 21 80 e5                                      str r2, [r0, #0x130]
0035c380  4d f2 08 eb                                      bl #0x598cbc
0035c384  04 00 a0 e1                                      mov r0, r4
0035c388  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035c38c  6c 87 63 00 c4 10 00 00 28 0e 00 00 4c 27 00 00  .byte 0x6c, 0x87, 0x63, 0x00, 0xc4, 0x10, 0x00, 0x00, 0x28, 0x0e, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0035c39c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZTv0_n24_N6glitch5scene16CCameraSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
0035c39c  00 30 90 e5                                      ldr r3, [r0]
0035c3a0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035c3a4  03 00 80 e0                                      add r0, r0, r3
0035c3a8  da ff ff ea                                      b #0x35c318

; FUNCTION 0x0035c3ac, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZTv0_n12_N6glitch5scene16CCameraSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
0035c3ac  00 30 90 e5                                      ldr r3, [r0]
0035c3b0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035c3b4  03 00 80 e0                                      add r0, r0, r3
0035c3b8  d6 ff ff ea                                      b #0x35c318

; FUNCTION 0x00581f34, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode7getTypeEv
; demangled: glitch::scene::CCameraSceneNode::getType() const
; decoder-mode: arm
00581f34  63 01 06 e3                                      movw r0, #0x6163
00581f38  6d 0f 45 e3                                      movt r0, #0x5f6d
00581f3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00581f40, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode23setInputReceiverEnabledEb
; demangled: glitch::scene::CCameraSceneNode::setInputReceiverEnabled(bool)
; decoder-mode: arm
00581f40  65 11 c0 e5                                      strb r1, [r0, #0x165]
00581f44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00581f48, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode22isInputReceiverEnabledEv
; demangled: glitch::scene::CCameraSceneNode::isInputReceiverEnabled() const
; decoder-mode: arm
00581f48  65 01 d0 e5                                      ldrb r0, [r0, #0x165]
00581f4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00581f50, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode19getProjectionMatrixEv
; demangled: glitch::scene::CCameraSceneNode::getProjectionMatrix() const
; decoder-mode: arm
00581f50  9d 0f 80 e2                                      add r0, r0, #0x274
00581f54  1e ff 2f e1                                      bx lr

; FUNCTION 0x00581f58, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode13getViewMatrixEv
; demangled: glitch::scene::CCameraSceneNode::getViewMatrix() const
; decoder-mode: arm
00581f58  7b 0f 80 e2                                      add r0, r0, #0x1ec
00581f5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00581f60, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZThn304_N6glitch5scene16CCameraSceneNode7onEventERKNS_6SEventE
; demangled: non-virtual thunk to glitch::scene::CCameraSceneNode::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00581f60  13 0e 40 e2                                      sub r0, r0, #0x130
00581f64  ff ff ff ea                                      b #0x581f68

; FUNCTION 0x00581f68, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode7onEventERKNS_6SEventE
; demangled: glitch::scene::CCameraSceneNode::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00581f68  70 40 2d e9                                      push {r4, r5, r6, lr}
00581f6c  65 31 d0 e5                                      ldrb r3, [r0, #0x165]
00581f70  01 60 a0 e1                                      mov r6, r1
00581f74  00 00 53 e3                                      cmp r3, #0
00581f78  0d 00 00 0a                                      beq #0x581fb4
00581f7c  00 50 a0 e1                                      mov r5, r0
00581f80  fc 40 b5 e5                                      ldr r4, [r5, #0xfc]!
00581f84  04 00 55 e1                                      cmp r5, r4
00581f88  09 00 00 0a                                      beq #0x581fb4
00581f8c  08 30 94 e5                                      ldr r3, [r4, #8]
00581f90  03 00 a0 e1                                      mov r0, r3
00581f94  00 30 93 e5                                      ldr r3, [r3]
00581f98  0f e0 a0 e1                                      mov lr, pc
00581f9c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00581fa0  00 00 50 e3                                      cmp r0, #0
00581fa4  04 00 00 1a                                      bne #0x581fbc
00581fa8  00 40 94 e5                                      ldr r4, [r4]
00581fac  04 00 55 e1                                      cmp r5, r4
00581fb0  f5 ff ff 1a                                      bne #0x581f8c
00581fb4  00 00 a0 e3                                      mov r0, #0
00581fb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00581fbc  08 30 94 e5                                      ldr r3, [r4, #8]
00581fc0  06 10 a0 e1                                      mov r1, r6
00581fc4  03 00 a0 e1                                      mov r0, r3
00581fc8  00 30 93 e5                                      ldr r3, [r3]
00581fcc  0f e0 a0 e1                                      mov lr, pc
00581fd0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00581fd4  00 00 50 e3                                      cmp r0, #0
00581fd8  f2 ff ff 0a                                      beq #0x581fa8
00581fdc  01 00 a0 e3                                      mov r0, #1
00581fe0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00581fe4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode9setTargetERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CCameraSceneNode::setTarget(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00581fe4  00 30 91 e5                                      ldr r3, [r1]
00581fe8  38 31 80 e5                                      str r3, [r0, #0x138]
00581fec  04 30 91 e5                                      ldr r3, [r1, #4]
00581ff0  3c 31 80 e5                                      str r3, [r0, #0x13c]
00581ff4  08 30 91 e5                                      ldr r3, [r1, #8]
00581ff8  40 31 80 e5                                      str r3, [r0, #0x140]
00581ffc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582000, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode9getTargetEv
; demangled: glitch::scene::CCameraSceneNode::getTarget() const
; decoder-mode: arm
00582000  4e 0f 80 e2                                      add r0, r0, #0x138
00582004  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582008, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode11setUpVectorERKNS_4core8vector3dIfEE
; demangled: glitch::scene::CCameraSceneNode::setUpVector(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00582008  00 30 91 e5                                      ldr r3, [r1]
0058200c  44 31 80 e5                                      str r3, [r0, #0x144]
00582010  04 30 91 e5                                      ldr r3, [r1, #4]
00582014  48 31 80 e5                                      str r3, [r0, #0x148]
00582018  08 30 91 e5                                      ldr r3, [r1, #8]
0058201c  4c 31 80 e5                                      str r3, [r0, #0x14c]
00582020  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582024, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode11getUpVectorEv
; demangled: glitch::scene::CCameraSceneNode::getUpVector() const
; decoder-mode: arm
00582024  51 0f 80 e2                                      add r0, r0, #0x144
00582028  1e ff 2f e1                                      bx lr

; FUNCTION 0x0058202c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode12getNearValueEv
; demangled: glitch::scene::CCameraSceneNode::getNearValue() const
; decoder-mode: arm
0058202c  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00582030  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582034, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode11getFarValueEv
; demangled: glitch::scene::CCameraSceneNode::getFarValue() const
; decoder-mode: arm
00582034  60 01 90 e5                                      ldr r0, [r0, #0x160]
00582038  1e ff 2f e1                                      bx lr

; FUNCTION 0x0058203c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode14getAspectRatioEv
; demangled: glitch::scene::CCameraSceneNode::getAspectRatio() const
; decoder-mode: arm
0058203c  58 01 90 e5                                      ldr r0, [r0, #0x158]
00582040  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582044, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode6getFOVEv
; demangled: glitch::scene::CCameraSceneNode::getFOV() const
; decoder-mode: arm
00582044  54 01 90 e5                                      ldr r0, [r0, #0x154]
00582048  1e ff 2f e1                                      bx lr

; FUNCTION 0x0058204c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode17getFarToInifinityEv
; demangled: glitch::scene::CCameraSceneNode::getFarToInifinity()
; decoder-mode: arm
0058204c  64 01 d0 e5                                      ldrb r0, [r0, #0x164]
00582050  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582054, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode12setNearValueEf
; demangled: glitch::scene::CCameraSceneNode::setNearValue(float)
; decoder-mode: arm
00582054  10 40 2d e9                                      push {r4, lr}
00582058  5c 11 80 e5                                      str r1, [r0, #0x15c]
0058205c  00 30 90 e5                                      ldr r3, [r0]
00582060  0f e0 a0 e1                                      mov lr, pc
00582064  58 f1 93 e5                                      ldr pc, [r3, #0x158]
00582068  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058206c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode11setFarValueEf
; demangled: glitch::scene::CCameraSceneNode::setFarValue(float)
; decoder-mode: arm
0058206c  10 40 2d e9                                      push {r4, lr}
00582070  60 11 80 e5                                      str r1, [r0, #0x160]
00582074  00 30 90 e5                                      ldr r3, [r0]
00582078  0f e0 a0 e1                                      mov lr, pc
0058207c  58 f1 93 e5                                      ldr pc, [r3, #0x158]
00582080  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00582084, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode14setAspectRatioEf
; demangled: glitch::scene::CCameraSceneNode::setAspectRatio(float)
; decoder-mode: arm
00582084  10 40 2d e9                                      push {r4, lr}
00582088  58 11 80 e5                                      str r1, [r0, #0x158]
0058208c  00 30 90 e5                                      ldr r3, [r0]
00582090  0f e0 a0 e1                                      mov lr, pc
00582094  58 f1 93 e5                                      ldr pc, [r3, #0x158]
00582098  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058209c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode6setFOVEf
; demangled: glitch::scene::CCameraSceneNode::setFOV(float)
; decoder-mode: arm
0058209c  10 40 2d e9                                      push {r4, lr}
005820a0  54 11 80 e5                                      str r1, [r0, #0x154]
005820a4  00 30 90 e5                                      ldr r3, [r0]
005820a8  0f e0 a0 e1                                      mov lr, pc
005820ac  58 f1 93 e5                                      ldr pc, [r3, #0x158]
005820b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005820b4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode6setMAGEf
; demangled: glitch::scene::CCameraSceneNode::setMAG(float)
; decoder-mode: arm
005820b4  10 40 2d e9                                      push {r4, lr}
005820b8  50 11 80 e5                                      str r1, [r0, #0x150]
005820bc  00 30 90 e5                                      ldr r3, [r0]
005820c0  0f e0 a0 e1                                      mov lr, pc
005820c4  58 f1 93 e5                                      ldr pc, [r3, #0x158]
005820c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005820cc, declared_size=24, range_size=24, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode17setFarToInifinityEb
; demangled: glitch::scene::CCameraSceneNode::setFarToInifinity(bool)
; decoder-mode: arm
005820cc  10 40 2d e9                                      push {r4, lr}
005820d0  64 11 c0 e5                                      strb r1, [r0, #0x164]
005820d4  00 30 90 e5                                      ldr r3, [r0]
005820d8  0f e0 a0 e1                                      mov lr, pc
005820dc  58 f1 93 e5                                      ldr pc, [r3, #0x158]
005820e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005820e4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode6renderEPv
; demangled: glitch::scene::CCameraSceneNode::render(void*)
; decoder-mode: arm
005820e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005820e8  10 31 90 e5                                      ldr r3, [r0, #0x110]
005820ec  00 50 a0 e1                                      mov r5, r0
005820f0  14 40 93 e5                                      ldr r4, [r3, #0x14]
005820f4  00 00 54 e3                                      cmp r4, #0
005820f8  0b 00 00 0a                                      beq #0x58212c
005820fc  04 00 a0 e1                                      mov r0, r4
00582100  02 10 a0 e3                                      mov r1, #2
00582104  9d 2f 85 e2                                      add r2, r5, #0x274
00582108  00 30 94 e5                                      ldr r3, [r4]
0058210c  0f e0 a0 e1                                      mov lr, pc
00582110  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00582114  04 00 a0 e1                                      mov r0, r4
00582118  7b 2f 85 e2                                      add r2, r5, #0x1ec
0058211c  00 30 94 e5                                      ldr r3, [r4]
00582120  00 10 a0 e3                                      mov r1, #0
00582124  0f e0 a0 e1                                      mov lr, pc
00582128  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0058212c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00582130, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CCameraSceneNode::getBoundingBox() const
; decoder-mode: arm
00582130  75 0f 80 e2                                      add r0, r0, #0x1d4
00582134  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582138, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode14getViewFrustumEv
; demangled: glitch::scene::CCameraSceneNode::getViewFrustum() const
; decoder-mode: arm
00582138  5a 0f 80 e2                                      add r0, r0, #0x168
0058213c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00582160, declared_size=236, range_size=236, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZNK6glitch5scene16CCameraSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CCameraSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00582160  70 40 2d e9                                      push {r4, r5, r6, lr}
00582164  01 40 a0 e1                                      mov r4, r1
00582168  00 50 a0 e1                                      mov r5, r0
0058216c  4c 54 00 eb                                      bl #0x5972a4
00582170  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00582174  04 00 a0 e1                                      mov r0, r4
00582178  4e 2f 85 e2                                      add r2, r5, #0x138
0058217c  00 c0 94 e5                                      ldr ip, [r4]
00582180  01 10 8f e0                                      add r1, pc, r1
00582184  00 30 a0 e3                                      mov r3, #0
00582188  0f e0 a0 e1                                      mov lr, pc
0058218c  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
00582190  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00582194  04 00 a0 e1                                      mov r0, r4
00582198  51 2f 85 e2                                      add r2, r5, #0x144
0058219c  00 c0 94 e5                                      ldr ip, [r4]
005821a0  01 10 8f e0                                      add r1, pc, r1
005821a4  00 30 a0 e3                                      mov r3, #0
005821a8  0f e0 a0 e1                                      mov lr, pc
005821ac  a8 f1 9c e5                                      ldr pc, [ip, #0x1a8]
005821b0  84 10 9f e5                                      ldr r1, [pc, #0x84]
005821b4  04 00 a0 e1                                      mov r0, r4
005821b8  54 21 95 e5                                      ldr r2, [r5, #0x154]
005821bc  00 c0 94 e5                                      ldr ip, [r4]
005821c0  01 10 8f e0                                      add r1, pc, r1
005821c4  00 30 a0 e3                                      mov r3, #0
005821c8  0f e0 a0 e1                                      mov lr, pc
005821cc  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005821d0  68 10 9f e5                                      ldr r1, [pc, #0x68]
005821d4  04 00 a0 e1                                      mov r0, r4
005821d8  58 21 95 e5                                      ldr r2, [r5, #0x158]
005821dc  00 c0 94 e5                                      ldr ip, [r4]
005821e0  01 10 8f e0                                      add r1, pc, r1
005821e4  00 30 a0 e3                                      mov r3, #0
005821e8  0f e0 a0 e1                                      mov lr, pc
005821ec  64 f0 9c e5                                      ldr pc, [ip, #0x64]
005821f0  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
005821f4  04 00 a0 e1                                      mov r0, r4
005821f8  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
005821fc  00 c0 94 e5                                      ldr ip, [r4]
00582200  01 10 8f e0                                      add r1, pc, r1
00582204  00 30 a0 e3                                      mov r3, #0
00582208  0f e0 a0 e1                                      mov lr, pc
0058220c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00582210  30 10 9f e5                                      ldr r1, [pc, #0x30]
00582214  04 00 a0 e1                                      mov r0, r4
00582218  60 21 95 e5                                      ldr r2, [r5, #0x160]
0058221c  01 10 8f e0                                      add r1, pc, r1
00582220  00 c0 94 e5                                      ldr ip, [r4]
00582224  00 30 a0 e3                                      mov r3, #0
00582228  0f e0 a0 e1                                      mov lr, pc
0058222c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00582230  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00582234  b8 94 35 00 e0 96 35 00 b0 d1 35 00 98 d1 35 00  .byte 0xb8, 0x94, 0x35, 0x00, 0xe0, 0x96, 0x35, 0x00, 0xb0, 0xd1, 0x35, 0x00, 0x98, 0xd1, 0x35, 0x00
00582244  80 d1 35 00 6c d1 35 00                          .byte 0x80, 0xd1, 0x35, 0x00, 0x6c, 0xd1, 0x35, 0x00

; FUNCTION 0x0058224c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZThn304_N6glitch5scene16CCameraSceneNodeD0Ev
; demangled: non-virtual thunk to glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
0058224c  13 0e 40 e2                                      sub r0, r0, #0x130
00582250  ff ff ff ea                                      b #0x582254

; FUNCTION 0x00582254, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNodeD0Ev
; demangled: glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
00582254  10 40 2d e9                                      push {r4, lr}
00582258  00 40 a0 e1                                      mov r4, r0
0058225c  2d 68 f7 eb                                      bl #0x35c318
00582260  04 00 a0 e1                                      mov r0, r4
00582264  11 30 f6 eb                                      bl #0x30e2b0
00582268  04 00 a0 e1                                      mov r0, r4
0058226c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00582270, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZTv0_n24_N6glitch5scene16CCameraSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
00582270  00 30 90 e5                                      ldr r3, [r0]
00582274  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00582278  03 00 80 e0                                      add r0, r0, r3
0058227c  f4 ff ff ea                                      b #0x582254

; FUNCTION 0x00582280, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZTv0_n12_N6glitch5scene16CCameraSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
00582280  00 30 90 e5                                      ldr r3, [r0]
00582284  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00582288  03 00 80 e0                                      add r0, r0, r3
0058228c  f0 ff ff ea                                      b #0x582254

; FUNCTION 0x00582290, declared_size=56, range_size=56, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode6removeEv
; demangled: glitch::scene::CCameraSceneNode::remove()
; decoder-mode: arm
00582290  10 40 2d e9                                      push {r4, lr}
00582294  00 40 a0 e1                                      mov r4, r0
00582298  10 01 90 e5                                      ldr r0, [r0, #0x110]
0058229c  00 00 50 e3                                      cmp r0, #0
005822a0  02 00 00 0a                                      beq #0x5822b0
005822a4  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
005822a8  03 00 54 e1                                      cmp r4, r3
005822ac  02 00 00 0a                                      beq #0x5822bc
005822b0  04 00 a0 e1                                      mov r0, r4
005822b4  10 40 bd e8                                      pop {r4, lr}
005822b8  6b 53 00 ea                                      b #0x59706c
005822bc  00 10 a0 e3                                      mov r1, #0
005822c0  7e 1b 00 eb                                      bl #0x5890c0
005822c4  f9 ff ff ea                                      b #0x5822b0

; FUNCTION 0x005823ac, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode19setProjectionMatrixERKNS_4core8CMatrix4IfEEb
; demangled: glitch::scene::CCameraSceneNode::setProjectionMatrix(glitch::core::CMatrix4<float> const&, bool)
; decoder-mode: arm
005823ac  10 40 2d e9                                      push {r4, lr}
005823b0  00 40 a0 e1                                      mov r4, r0
005823b4  34 21 c0 e5                                      strb r2, [r0, #0x134]
005823b8  41 20 a0 e3                                      mov r2, #0x41
005823bc  9d 0f 80 e2                                      add r0, r0, #0x274
005823c0  28 31 f6 eb                                      bl #0x30e868
005823c4  5a 0f 84 e2                                      add r0, r4, #0x168
005823c8  02 10 a0 e3                                      mov r1, #2
005823cc  10 40 bd e8                                      pop {r4, lr}
005823d0  dc ff ff ea                                      b #0x582348

; FUNCTION 0x00582904, declared_size=68, range_size=68, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode19recalculateViewAreaEv
; demangled: glitch::scene::CCameraSceneNode::recalculateViewArea()
; decoder-mode: arm
00582904  10 40 2d e9                                      push {r4, lr}
00582908  10 d0 4d e2                                      sub sp, sp, #0x10
0058290c  00 40 a0 e1                                      mov r4, r0
00582910  00 10 a0 e1                                      mov r1, r0
00582914  04 00 8d e2                                      add r0, sp, #4
00582918  18 52 00 eb                                      bl #0x597180
0058291c  04 10 9d e5                                      ldr r1, [sp, #4]
00582920  08 20 9d e5                                      ldr r2, [sp, #8]
00582924  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00582928  5a 0f 84 e2                                      add r0, r4, #0x168
0058292c  68 11 84 e5                                      str r1, [r4, #0x168]
00582930  6c 21 84 e5                                      str r2, [r4, #0x16c]
00582934  70 31 84 e5                                      str r3, [r4, #0x170]
00582938  ae 1f 84 e2                                      add r1, r4, #0x2b8
0058293c  5f ff ff eb                                      bl #0x5826c0
00582940  10 d0 8d e2                                      add sp, sp, #0x10
00582944  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00582948, declared_size=344, range_size=344, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::scene::CCameraSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00582948  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0058294c  1c d0 4d e2                                      sub sp, sp, #0x1c
00582950  00 40 a0 e1                                      mov r4, r0
00582954  01 50 a0 e1                                      mov r5, r1
00582958  be 55 00 eb                                      bl #0x598058
0058295c  28 21 9f e5                                      ldr r2, [pc, #0x128]
00582960  0c 00 8d e2                                      add r0, sp, #0xc
00582964  05 10 a0 e1                                      mov r1, r5
00582968  02 20 8f e0                                      add r2, pc, r2
0058296c  00 30 95 e5                                      ldr r3, [r5]
00582970  0f e0 a0 e1                                      mov lr, pc
00582974  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
00582978  10 20 9d e5                                      ldr r2, [sp, #0x10]
0058297c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00582980  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00582984  3c 21 84 e5                                      str r2, [r4, #0x13c]
00582988  00 21 9f e5                                      ldr r2, [pc, #0x100]
0058298c  38 11 84 e5                                      str r1, [r4, #0x138]
00582990  40 31 84 e5                                      str r3, [r4, #0x140]
00582994  02 20 8f e0                                      add r2, pc, r2
00582998  0d 00 a0 e1                                      mov r0, sp
0058299c  05 10 a0 e1                                      mov r1, r5
005829a0  00 30 95 e5                                      ldr r3, [r5]
005829a4  0f e0 a0 e1                                      mov lr, pc
005829a8  b4 f1 93 e5                                      ldr pc, [r3, #0x1b4]
005829ac  00 10 9d e5                                      ldr r1, [sp]
005829b0  08 30 9d e5                                      ldr r3, [sp, #8]
005829b4  04 20 9d e5                                      ldr r2, [sp, #4]
005829b8  44 11 84 e5                                      str r1, [r4, #0x144]
005829bc  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
005829c0  48 21 84 e5                                      str r2, [r4, #0x148]
005829c4  4c 31 84 e5                                      str r3, [r4, #0x14c]
005829c8  00 30 95 e5                                      ldr r3, [r5]
005829cc  01 10 8f e0                                      add r1, pc, r1
005829d0  05 00 a0 e1                                      mov r0, r5
005829d4  0f e0 a0 e1                                      mov lr, pc
005829d8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005829dc  10 31 94 e5                                      ldr r3, [r4, #0x110]
005829e0  54 01 84 e5                                      str r0, [r4, #0x154]
005829e4  00 00 53 e3                                      cmp r3, #0
005829e8  23 00 00 0a                                      beq #0x582a7c
005829ec  14 30 93 e5                                      ldr r3, [r3, #0x14]
005829f0  00 00 53 e3                                      cmp r3, #0
005829f4  20 00 00 0a                                      beq #0x582a7c
005829f8  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
005829fc  04 60 13 e5                                      ldr r6, [r3, #-4]
00582a00  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00582a04  d6 2f f6 eb                                      bl #0x30e964
00582a08  00 70 a0 e1                                      mov r7, r0
00582a0c  10 00 96 e5                                      ldr r0, [r6, #0x10]
00582a10  d3 2f f6 eb                                      bl #0x30e964
00582a14  00 10 a0 e1                                      mov r1, r0
00582a18  07 00 a0 e1                                      mov r0, r7
00582a1c  9c 30 f6 eb                                      bl #0x30ec94
00582a20  58 01 84 e5                                      str r0, [r4, #0x158]
00582a24  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00582a28  00 30 95 e5                                      ldr r3, [r5]
00582a2c  05 00 a0 e1                                      mov r0, r5
00582a30  01 10 8f e0                                      add r1, pc, r1
00582a34  0f e0 a0 e1                                      mov lr, pc
00582a38  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00582a3c  58 10 9f e5                                      ldr r1, [pc, #0x58]
00582a40  5c 01 84 e5                                      str r0, [r4, #0x15c]
00582a44  00 30 95 e5                                      ldr r3, [r5]
00582a48  01 10 8f e0                                      add r1, pc, r1
00582a4c  05 00 a0 e1                                      mov r0, r5
00582a50  0f e0 a0 e1                                      mov lr, pc
00582a54  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00582a58  00 30 94 e5                                      ldr r3, [r4]
00582a5c  60 01 84 e5                                      str r0, [r4, #0x160]
00582a60  04 00 a0 e1                                      mov r0, r4
00582a64  0f e0 a0 e1                                      mov lr, pc
00582a68  58 f1 93 e5                                      ldr pc, [r3, #0x158]
00582a6c  04 00 a0 e1                                      mov r0, r4
00582a70  a3 ff ff eb                                      bl #0x582904
00582a74  1c d0 8d e2                                      add sp, sp, #0x1c
00582a78  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00582a7c  ab 3a 0a e3                                      movw r3, #0xaaab
00582a80  aa 3f 43 e3                                      movt r3, #0x3faa
00582a84  58 31 84 e5                                      str r3, [r4, #0x158]
00582a88  e5 ff ff ea                                      b #0x582a24
; mapping-symbol data/literal pool
00582a8c  d0 8c 35 00 ec 8e 35 00 a4 c9 35 00 50 c9 35 00  .byte 0xd0, 0x8c, 0x35, 0x00, 0xec, 0x8e, 0x35, 0x00, 0xa4, 0xc9, 0x35, 0x00, 0x50, 0xc9, 0x35, 0x00
00582a9c  40 c9 35 00                                      .byte 0x40, 0xc9, 0x35, 0x00

; FUNCTION 0x00582aa0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode21onChangedSceneManagerEv
; demangled: glitch::scene::CCameraSceneNode::onChangedSceneManager()
; decoder-mode: arm
00582aa0  70 40 2d e9                                      push {r4, r5, r6, lr}
00582aa4  10 31 90 e5                                      ldr r3, [r0, #0x110]
00582aa8  00 40 a0 e1                                      mov r4, r0
00582aac  00 00 53 e3                                      cmp r3, #0
00582ab0  14 00 00 0a                                      beq #0x582b08
00582ab4  14 30 93 e5                                      ldr r3, [r3, #0x14]
00582ab8  00 00 53 e3                                      cmp r3, #0
00582abc  11 00 00 0a                                      beq #0x582b08
00582ac0  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
00582ac4  04 50 13 e5                                      ldr r5, [r3, #-4]
00582ac8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00582acc  a4 2f f6 eb                                      bl #0x30e964
00582ad0  00 60 a0 e1                                      mov r6, r0
00582ad4  10 00 95 e5                                      ldr r0, [r5, #0x10]
00582ad8  a1 2f f6 eb                                      bl #0x30e964
00582adc  00 10 a0 e1                                      mov r1, r0
00582ae0  06 00 a0 e1                                      mov r0, r6
00582ae4  6a 30 f6 eb                                      bl #0x30ec94
00582ae8  58 01 84 e5                                      str r0, [r4, #0x158]
00582aec  04 00 a0 e1                                      mov r0, r4
00582af0  00 30 94 e5                                      ldr r3, [r4]
00582af4  0f e0 a0 e1                                      mov lr, pc
00582af8  58 f1 93 e5                                      ldr pc, [r3, #0x158]
00582afc  04 00 a0 e1                                      mov r0, r4
00582b00  70 40 bd e8                                      pop {r4, r5, r6, lr}
00582b04  7e ff ff ea                                      b #0x582904
00582b08  ab 3a 0a e3                                      movw r3, #0xaaab
00582b0c  aa 3f 43 e3                                      movt r3, #0x3faa
00582b10  58 31 84 e5                                      str r3, [r4, #0x158]
00582b14  f4 ff ff ea                                      b #0x582aec

; FUNCTION 0x00583280, declared_size=692, range_size=692, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode19recalculateMatricesEv
; demangled: glitch::scene::CCameraSceneNode::recalculateMatrices()
; decoder-mode: arm
00583280  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00583284  6c d0 4d e2                                      sub sp, sp, #0x6c
00583288  00 40 a0 e1                                      mov r4, r0
0058328c  5c b0 8d e2                                      add fp, sp, #0x5c
00583290  0b 00 a0 e1                                      mov r0, fp
00583294  04 10 a0 e1                                      mov r1, r4
00583298  b8 4f 00 eb                                      bl #0x597180
0058329c  38 01 94 e5                                      ldr r0, [r4, #0x138]
005832a0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005832a4  40 2c f6 eb                                      bl #0x30e3ac
005832a8  60 10 9d e5                                      ldr r1, [sp, #0x60]
005832ac  00 90 a0 e1                                      mov sb, r0
005832b0  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
005832b4  3c 2c f6 eb                                      bl #0x30e3ac
005832b8  64 10 9d e5                                      ldr r1, [sp, #0x64]
005832bc  00 a0 a0 e1                                      mov sl, r0
005832c0  40 01 94 e5                                      ldr r0, [r4, #0x140]
005832c4  38 2c f6 eb                                      bl #0x30e3ac
005832c8  44 51 94 e5                                      ldr r5, [r4, #0x144]
005832cc  48 71 94 e5                                      ldr r7, [r4, #0x148]
005832d0  4c 61 94 e5                                      ldr r6, [r4, #0x14c]
005832d4  00 80 a0 e1                                      mov r8, r0
005832d8  09 10 a0 e1                                      mov r1, sb
005832dc  09 00 a0 e1                                      mov r0, sb
005832e0  50 50 8d e5                                      str r5, [sp, #0x50]
005832e4  54 70 8d e5                                      str r7, [sp, #0x54]
005832e8  58 60 8d e5                                      str r6, [sp, #0x58]
005832ec  9e 2e f6 eb                                      bl #0x30ed6c
005832f0  0a 10 a0 e1                                      mov r1, sl
005832f4  00 30 a0 e1                                      mov r3, r0
005832f8  0a 00 a0 e1                                      mov r0, sl
005832fc  00 30 8d e5                                      str r3, [sp]
00583300  99 2e f6 eb                                      bl #0x30ed6c
00583304  00 30 9d e5                                      ldr r3, [sp]
00583308  00 10 a0 e1                                      mov r1, r0
0058330c  03 00 a0 e1                                      mov r0, r3
00583310  23 2e f6 eb                                      bl #0x30eba4
00583314  08 10 a0 e1                                      mov r1, r8
00583318  00 30 a0 e1                                      mov r3, r0
0058331c  08 00 a0 e1                                      mov r0, r8
00583320  00 30 8d e5                                      str r3, [sp]
00583324  90 2e f6 eb                                      bl #0x30ed6c
00583328  00 30 9d e5                                      ldr r3, [sp]
0058332c  00 10 a0 e1                                      mov r1, r0
00583330  03 00 a0 e1                                      mov r0, r3
00583334  1a 2e f6 eb                                      bl #0x30eba4
00583338  00 10 a0 e3                                      mov r1, #0
0058333c  04 00 8d e5                                      str r0, [sp, #4]
00583340  11 2b f6 eb                                      bl #0x30df8c
00583344  00 00 50 e3                                      cmp r0, #0
00583348  14 00 00 1a                                      bne #0x5833a0
0058334c  04 00 9d e5                                      ldr r0, [sp, #4]
00583350  73 2b f6 eb                                      bl #0x30e124
00583354  00 10 a0 e1                                      mov r1, r0
00583358  fe 05 a0 e3                                      mov r0, #0x3f800000
0058335c  4c 2e f6 eb                                      bl #0x30ec94
00583360  00 50 a0 e1                                      mov r5, r0
00583364  05 10 a0 e1                                      mov r1, r5
00583368  09 00 a0 e1                                      mov r0, sb
0058336c  7e 2e f6 eb                                      bl #0x30ed6c
00583370  05 10 a0 e1                                      mov r1, r5
00583374  00 90 a0 e1                                      mov sb, r0
00583378  0a 00 a0 e1                                      mov r0, sl
0058337c  7a 2e f6 eb                                      bl #0x30ed6c
00583380  05 10 a0 e1                                      mov r1, r5
00583384  00 a0 a0 e1                                      mov sl, r0
00583388  08 00 a0 e1                                      mov r0, r8
0058338c  76 2e f6 eb                                      bl #0x30ed6c
00583390  50 50 9d e5                                      ldr r5, [sp, #0x50]
00583394  54 70 9d e5                                      ldr r7, [sp, #0x54]
00583398  58 60 9d e5                                      ldr r6, [sp, #0x58]
0058339c  00 80 a0 e1                                      mov r8, r0
005833a0  05 10 a0 e1                                      mov r1, r5
005833a4  05 00 a0 e1                                      mov r0, r5
005833a8  6f 2e f6 eb                                      bl #0x30ed6c
005833ac  07 10 a0 e1                                      mov r1, r7
005833b0  00 30 a0 e1                                      mov r3, r0
005833b4  07 00 a0 e1                                      mov r0, r7
005833b8  00 30 8d e5                                      str r3, [sp]
005833bc  6a 2e f6 eb                                      bl #0x30ed6c
005833c0  00 30 9d e5                                      ldr r3, [sp]
005833c4  00 10 a0 e1                                      mov r1, r0
005833c8  03 00 a0 e1                                      mov r0, r3
005833cc  f4 2d f6 eb                                      bl #0x30eba4
005833d0  06 10 a0 e1                                      mov r1, r6
005833d4  00 30 a0 e1                                      mov r3, r0
005833d8  06 00 a0 e1                                      mov r0, r6
005833dc  00 30 8d e5                                      str r3, [sp]
005833e0  61 2e f6 eb                                      bl #0x30ed6c
005833e4  00 30 9d e5                                      ldr r3, [sp]
005833e8  00 10 a0 e1                                      mov r1, r0
005833ec  03 00 a0 e1                                      mov r0, r3
005833f0  eb 2d f6 eb                                      bl #0x30eba4
005833f4  00 10 a0 e3                                      mov r1, #0
005833f8  04 00 8d e5                                      str r0, [sp, #4]
005833fc  e2 2a f6 eb                                      bl #0x30df8c
00583400  00 00 50 e3                                      cmp r0, #0
00583404  13 00 00 1a                                      bne #0x583458
00583408  04 00 9d e5                                      ldr r0, [sp, #4]
0058340c  44 2b f6 eb                                      bl #0x30e124
00583410  00 10 a0 e1                                      mov r1, r0
00583414  fe 05 a0 e3                                      mov r0, #0x3f800000
00583418  1d 2e f6 eb                                      bl #0x30ec94
0058341c  50 10 9d e5                                      ldr r1, [sp, #0x50]
00583420  00 60 a0 e1                                      mov r6, r0
00583424  50 2e f6 eb                                      bl #0x30ed6c
00583428  54 10 9d e5                                      ldr r1, [sp, #0x54]
0058342c  00 50 a0 e1                                      mov r5, r0
00583430  06 00 a0 e1                                      mov r0, r6
00583434  50 50 8d e5                                      str r5, [sp, #0x50]
00583438  4b 2e f6 eb                                      bl #0x30ed6c
0058343c  58 10 9d e5                                      ldr r1, [sp, #0x58]
00583440  00 70 a0 e1                                      mov r7, r0
00583444  06 00 a0 e1                                      mov r0, r6
00583448  54 70 8d e5                                      str r7, [sp, #0x54]
0058344c  46 2e f6 eb                                      bl #0x30ed6c
00583450  00 60 a0 e1                                      mov r6, r0
00583454  58 00 8d e5                                      str r0, [sp, #0x58]
00583458  09 00 a0 e1                                      mov r0, sb
0058345c  05 10 a0 e1                                      mov r1, r5
00583460  41 2e f6 eb                                      bl #0x30ed6c
00583464  07 10 a0 e1                                      mov r1, r7
00583468  00 90 a0 e1                                      mov sb, r0
0058346c  0a 00 a0 e1                                      mov r0, sl
00583470  3d 2e f6 eb                                      bl #0x30ed6c
00583474  00 10 a0 e1                                      mov r1, r0
00583478  09 00 a0 e1                                      mov r0, sb
0058347c  c8 2d f6 eb                                      bl #0x30eba4
00583480  06 10 a0 e1                                      mov r1, r6
00583484  00 70 a0 e1                                      mov r7, r0
00583488  08 00 a0 e1                                      mov r0, r8
0058348c  36 2e f6 eb                                      bl #0x30ed6c
00583490  00 10 a0 e1                                      mov r1, r0
00583494  07 00 a0 e1                                      mov r0, r7
00583498  c1 2d f6 eb                                      bl #0x30eba4
0058349c  bd 17 03 e3                                      movw r1, #0x37bd
005834a0  02 61 c0 e3                                      bic r6, r0, #0x80000000
005834a4  86 15 43 e3                                      movt r1, #0x3586
005834a8  06 00 a0 e1                                      mov r0, r6
005834ac  bc 2d f6 eb                                      bl #0x30eba4
005834b0  fe 15 a0 e3                                      mov r1, #0x3f800000
005834b4  fe 2b f6 eb                                      bl #0x30e4b4
005834b8  00 00 50 e3                                      cmp r0, #0
005834bc  0b 00 00 0a                                      beq #0x5834f0
005834c0  bd 17 03 e3                                      movw r1, #0x37bd
005834c4  86 15 43 e3                                      movt r1, #0x3586
005834c8  06 00 a0 e1                                      mov r0, r6
005834cc  b6 2b f6 eb                                      bl #0x30e3ac
005834d0  fe 15 a0 e3                                      mov r1, #0x3f800000
005834d4  34 2d f6 eb                                      bl #0x30e9ac
005834d8  00 00 50 e3                                      cmp r0, #0
005834dc  03 00 00 0a                                      beq #0x5834f0
005834e0  05 00 a0 e1                                      mov r0, r5
005834e4  3f 14 a0 e3                                      mov r1, #0x3f000000
005834e8  ad 2d f6 eb                                      bl #0x30eba4
005834ec  50 00 8d e5                                      str r0, [sp, #0x50]
005834f0  0c 50 8d e2                                      add r5, sp, #0xc
005834f4  50 30 8d e2                                      add r3, sp, #0x50
005834f8  0b 10 a0 e1                                      mov r1, fp
005834fc  05 00 a0 e1                                      mov r0, r5
00583500  4e 2f 84 e2                                      add r2, r4, #0x138
00583504  56 fe ff eb                                      bl #0x582e64
00583508  05 10 a0 e1                                      mov r1, r5
0058350c  41 20 a0 e3                                      mov r2, #0x41
00583510  7b 0f 84 e2                                      add r0, r4, #0x1ec
00583514  d3 2c f6 eb                                      bl #0x30e868
00583518  5a 0f 84 e2                                      add r0, r4, #0x168
0058351c  00 10 a0 e3                                      mov r1, #0
00583520  88 fb ff eb                                      bl #0x582348
00583524  04 00 a0 e1                                      mov r0, r4
00583528  f5 fc ff eb                                      bl #0x582904
0058352c  6c d0 8d e2                                      add sp, sp, #0x6c
00583530  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00583534, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CCameraSceneNode::onRegisterSceneNode()
; decoder-mode: arm
00583534  30 40 2d e9                                      push {r4, r5, lr}
00583538  00 50 a0 e1                                      mov r5, r0
0058353c  1c d0 4d e2                                      sub sp, sp, #0x1c
00583540  4e ff ff eb                                      bl #0x583280
00583544  10 01 95 e5                                      ldr r0, [r5, #0x110]
00583548  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
0058354c  03 00 55 e1                                      cmp r5, r3
00583550  02 00 00 0a                                      beq #0x583560
00583554  01 00 a0 e3                                      mov r0, #1
00583558  1c d0 8d e2                                      add sp, sp, #0x1c
0058355c  30 80 bd e8                                      pop {r4, r5, pc}
00583560  00 20 90 e5                                      ldr r2, [r0]
00583564  00 30 a0 e3                                      mov r3, #0
00583568  18 40 8d e2                                      add r4, sp, #0x18
0058356c  24 c0 92 e5                                      ldr ip, [r2, #0x24]
00583570  04 30 24 e5                                      str r3, [r4, #-4]!
00583574  02 21 e0 e3                                      mvn r2, #0x80000000
00583578  08 20 8d e5                                      str r2, [sp, #8]
0058357c  00 30 8d e5                                      str r3, [sp]
00583580  04 30 8d e5                                      str r3, [sp, #4]
00583584  05 10 a0 e1                                      mov r1, r5
00583588  04 20 a0 e1                                      mov r2, r4
0058358c  3c ff 2f e1                                      blx ip
00583590  04 00 a0 e1                                      mov r0, r4
00583594  93 35 f6 eb                                      bl #0x310be8
00583598  ed ff ff ea                                      b #0x583554

; FUNCTION 0x0058364c, declared_size=232, range_size=232, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNode27recalculateProjectionMatrixEv
; demangled: glitch::scene::CCameraSceneNode::recalculateProjectionMatrix()
; decoder-mode: arm
0058364c  70 40 2d e9                                      push {r4, r5, r6, lr}
00583650  d8 d0 4d e2                                      sub sp, sp, #0xd8
00583654  00 30 90 e5                                      ldr r3, [r0]
00583658  00 40 a0 e1                                      mov r4, r0
0058365c  0f e0 a0 e1                                      mov lr, pc
00583660  50 f1 93 e5                                      ldr pc, [r3, #0x150]
00583664  00 00 50 e3                                      cmp r0, #0
00583668  1e 00 00 1a                                      bne #0x5836e8
0058366c  64 31 d4 e5                                      ldrb r3, [r4, #0x164]
00583670  00 00 53 e3                                      cmp r3, #0
00583674  10 00 00 1a                                      bne #0x5836bc
00583678  60 c1 94 e5                                      ldr ip, [r4, #0x160]
0058367c  0c 50 8d e2                                      add r5, sp, #0xc
00583680  54 11 94 e5                                      ldr r1, [r4, #0x154]
00583684  58 21 94 e5                                      ldr r2, [r4, #0x158]
00583688  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
0058368c  05 00 a0 e1                                      mov r0, r5
00583690  00 c0 8d e5                                      str ip, [sp]
00583694  7b fd ff eb                                      bl #0x582c88
00583698  05 10 a0 e1                                      mov r1, r5
0058369c  9d 0f 84 e2                                      add r0, r4, #0x274
005836a0  41 20 a0 e3                                      mov r2, #0x41
005836a4  6f 2c f6 eb                                      bl #0x30e868
005836a8  5a 0f 84 e2                                      add r0, r4, #0x168
005836ac  02 10 a0 e3                                      mov r1, #2
005836b0  24 fb ff eb                                      bl #0x582348
005836b4  d8 d0 8d e2                                      add sp, sp, #0xd8
005836b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
005836bc  50 50 8d e2                                      add r5, sp, #0x50
005836c0  05 00 a0 e1                                      mov r0, r5
005836c4  54 11 94 e5                                      ldr r1, [r4, #0x154]
005836c8  58 21 94 e5                                      ldr r2, [r4, #0x158]
005836cc  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
005836d0  ae fd ff eb                                      bl #0x582d90
005836d4  05 10 a0 e1                                      mov r1, r5
005836d8  9d 0f 84 e2                                      add r0, r4, #0x274
005836dc  41 20 a0 e3                                      mov r2, #0x41
005836e0  60 2c f6 eb                                      bl #0x30e868
005836e4  ef ff ff ea                                      b #0x5836a8
005836e8  50 01 94 e5                                      ldr r0, [r4, #0x150]
005836ec  94 50 8d e2                                      add r5, sp, #0x94
005836f0  00 10 a0 e1                                      mov r1, r0
005836f4  2a 2d f6 eb                                      bl #0x30eba4
005836f8  58 11 94 e5                                      ldr r1, [r4, #0x158]
005836fc  00 60 a0 e1                                      mov r6, r0
00583700  99 2d f6 eb                                      bl #0x30ed6c
00583704  60 c1 94 e5                                      ldr ip, [r4, #0x160]
00583708  00 10 a0 e1                                      mov r1, r0
0058370c  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00583710  06 20 a0 e1                                      mov r2, r6
00583714  05 00 a0 e1                                      mov r0, r5
00583718  00 c0 8d e5                                      str ip, [sp]
0058371c  9e ff ff eb                                      bl #0x58359c
00583720  05 10 a0 e1                                      mov r1, r5
00583724  9d 0f 84 e2                                      add r0, r4, #0x274
00583728  41 20 a0 e3                                      mov r2, #0x41
0058372c  4d 2c f6 eb                                      bl #0x30e868
00583730  dc ff ff ea                                      b #0x5836a8

; FUNCTION 0x00583734, declared_size=324, range_size=324, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNodeC1EiRKNS_4core8vector3dIfEES6_b
; demangled: glitch::scene::CCameraSceneNode::CCameraSceneNode(int, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, bool)
; decoder-mode: arm
00583734  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00583738  28 51 9f e5                                      ldr r5, [pc, #0x128]
0058373c  28 c1 9f e5                                      ldr ip, [pc, #0x128]
00583740  28 e1 9f e5                                      ldr lr, [pc, #0x128]
00583744  05 50 8f e0                                      add r5, pc, r5
00583748  0c c0 95 e7                                      ldr ip, [r5, ip]
0058374c  0e e0 95 e7                                      ldr lr, [r5, lr]
00583750  01 a0 a0 e3                                      mov sl, #1
00583754  24 60 9c e5                                      ldr r6, [ip, #0x24]
00583758  08 e0 8e e2                                      add lr, lr, #8
0058375c  84 e3 80 e5                                      str lr, [r0, #0x384]
00583760  88 a3 80 e5                                      str sl, [r0, #0x388]
00583764  00 60 80 e5                                      str r6, [r0]
00583768  0c 70 16 e5                                      ldr r7, [r6, #-0xc]
0058376c  28 b0 9c e5                                      ldr fp, [ip, #0x28]
00583770  24 d0 4d e2                                      sub sp, sp, #0x24
00583774  01 e0 a0 e1                                      mov lr, r1
00583778  02 90 a0 e1                                      mov sb, r2
0058377c  04 10 8c e2                                      add r1, ip, #4
00583780  14 c0 8d e2                                      add ip, sp, #0x14
00583784  07 b0 80 e7                                      str fp, [r0, r7]
00583788  00 60 a0 e3                                      mov r6, #0
0058378c  fe 85 a0 e3                                      mov r8, #0x3f800000
00583790  0e 20 a0 e1                                      mov r2, lr
00583794  03 70 a0 e1                                      mov r7, r3
00583798  00 c0 8d e5                                      str ip, [sp]
0058379c  09 30 a0 e1                                      mov r3, sb
005837a0  08 c0 8d e2                                      add ip, sp, #8
005837a4  00 40 a0 e1                                      mov r4, r0
005837a8  04 c0 8d e5                                      str ip, [sp, #4]
005837ac  48 90 dd e5                                      ldrb sb, [sp, #0x48]
005837b0  14 60 8d e5                                      str r6, [sp, #0x14]
005837b4  18 60 8d e5                                      str r6, [sp, #0x18]
005837b8  1c 60 8d e5                                      str r6, [sp, #0x1c]
005837bc  08 80 8d e5                                      str r8, [sp, #8]
005837c0  0c 80 8d e5                                      str r8, [sp, #0xc]
005837c4  10 80 8d e5                                      str r8, [sp, #0x10]
005837c8  d2 fc ff eb                                      bl #0x582b18
005837cc  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005837d0  5a 0f 84 e2                                      add r0, r4, #0x168
005837d4  03 30 95 e7                                      ldr r3, [r5, r3]
005837d8  06 2d 83 e2                                      add r2, r3, #0x180
005837dc  1c 10 83 e2                                      add r1, r3, #0x1c
005837e0  67 3f 83 e2                                      add r3, r3, #0x19c
005837e4  00 10 84 e5                                      str r1, [r4]
005837e8  30 21 84 e5                                      str r2, [r4, #0x130]
005837ec  84 33 84 e5                                      str r3, [r4, #0x384]
005837f0  00 30 97 e5                                      ldr r3, [r7]
005837f4  38 31 84 e5                                      str r3, [r4, #0x138]
005837f8  04 30 97 e5                                      ldr r3, [r7, #4]
005837fc  3c 31 84 e5                                      str r3, [r4, #0x13c]
00583800  08 30 97 e5                                      ldr r3, [r7, #8]
00583804  4c 61 84 e5                                      str r6, [r4, #0x14c]
00583808  5c 81 84 e5                                      str r8, [r4, #0x15c]
0058380c  40 31 84 e5                                      str r3, [r4, #0x140]
00583810  45 34 a0 e3                                      mov r3, #0x45000000
00583814  ee 39 83 e2                                      add r3, r3, #0x3b8000
00583818  60 31 84 e5                                      str r3, [r4, #0x160]
0058381c  64 91 c4 e5                                      strb sb, [r4, #0x164]
00583820  65 a1 c4 e5                                      strb sl, [r4, #0x165]
00583824  44 61 84 e5                                      str r6, [r4, #0x144]
00583828  48 81 84 e5                                      str r8, [r4, #0x148]
0058382c  e9 fc ff eb                                      bl #0x582bd8
00583830  7c 39 0d e3                                      movw r3, #0xd97c
00583834  a0 3f 43 e3                                      movt r3, #0x3fa0
00583838  54 31 84 e5                                      str r3, [r4, #0x154]
0058383c  ab 3a 0a e3                                      movw r3, #0xaaab
00583840  aa 3f 43 e3                                      movt r3, #0x3faa
00583844  04 00 a0 e1                                      mov r0, r4
00583848  58 31 84 e5                                      str r3, [r4, #0x158]
0058384c  7e ff ff eb                                      bl #0x58364c
00583850  04 00 a0 e1                                      mov r0, r4
00583854  00 10 a0 e3                                      mov r1, #0
00583858  4f 4e 00 eb                                      bl #0x59719c
0058385c  04 00 a0 e1                                      mov r0, r4
00583860  24 d0 8d e2                                      add sp, sp, #0x24
00583864  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00583868  4c 13 41 00 c4 10 00 00 44 2b 00 00 28 0e 00 00  .byte 0x4c, 0x13, 0x41, 0x00, 0xc4, 0x10, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x28, 0x0e, 0x00, 0x00

; FUNCTION 0x00583878, declared_size=276, range_size=276, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNodeC2EiRKNS_4core8vector3dIfEES6_b
; demangled: glitch::scene::CCameraSceneNode::CCameraSceneNode(int, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, bool)
; decoder-mode: arm
00583878  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0058387c  24 d0 4d e2                                      sub sp, sp, #0x24
00583880  14 c0 8d e2                                      add ip, sp, #0x14
00583884  00 50 a0 e3                                      mov r5, #0
00583888  fe 85 a0 e3                                      mov r8, #0x3f800000
0058388c  01 60 a0 e1                                      mov r6, r1
00583890  00 c0 8d e5                                      str ip, [sp]
00583894  04 10 81 e2                                      add r1, r1, #4
00583898  08 c0 8d e2                                      add ip, sp, #8
0058389c  00 40 a0 e1                                      mov r4, r0
005838a0  04 c0 8d e5                                      str ip, [sp, #4]
005838a4  40 70 9d e5                                      ldr r7, [sp, #0x40]
005838a8  44 a0 dd e5                                      ldrb sl, [sp, #0x44]
005838ac  14 50 8d e5                                      str r5, [sp, #0x14]
005838b0  18 50 8d e5                                      str r5, [sp, #0x18]
005838b4  1c 50 8d e5                                      str r5, [sp, #0x1c]
005838b8  08 80 8d e5                                      str r8, [sp, #8]
005838bc  0c 80 8d e5                                      str r8, [sp, #0xc]
005838c0  10 80 8d e5                                      str r8, [sp, #0x10]
005838c4  93 fc ff eb                                      bl #0x582b18
005838c8  00 10 96 e5                                      ldr r1, [r6]
005838cc  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
005838d0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
005838d4  00 10 84 e5                                      str r1, [r4]
005838d8  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
005838dc  1c 10 11 e5                                      ldr r1, [r1, #-0x1c]
005838e0  03 30 8f e0                                      add r3, pc, r3
005838e4  02 20 93 e7                                      ldr r2, [r3, r2]
005838e8  01 00 84 e7                                      str r0, [r4, r1]
005838ec  00 10 94 e5                                      ldr r1, [r4]
005838f0  20 00 96 e5                                      ldr r0, [r6, #0x20]
005838f4  06 2d 82 e2                                      add r2, r2, #0x180
005838f8  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
005838fc  01 00 84 e7                                      str r0, [r4, r1]
00583900  30 21 84 e5                                      str r2, [r4, #0x130]
00583904  00 20 97 e5                                      ldr r2, [r7]
00583908  5a 0f 84 e2                                      add r0, r4, #0x168
0058390c  38 21 84 e5                                      str r2, [r4, #0x138]
00583910  04 30 97 e5                                      ldr r3, [r7, #4]
00583914  3c 31 84 e5                                      str r3, [r4, #0x13c]
00583918  08 30 97 e5                                      ldr r3, [r7, #8]
0058391c  4c 51 84 e5                                      str r5, [r4, #0x14c]
00583920  5c 81 84 e5                                      str r8, [r4, #0x15c]
00583924  40 31 84 e5                                      str r3, [r4, #0x140]
00583928  45 34 a0 e3                                      mov r3, #0x45000000
0058392c  ee 39 83 e2                                      add r3, r3, #0x3b8000
00583930  60 31 84 e5                                      str r3, [r4, #0x160]
00583934  01 30 a0 e3                                      mov r3, #1
00583938  65 31 c4 e5                                      strb r3, [r4, #0x165]
0058393c  64 a1 c4 e5                                      strb sl, [r4, #0x164]
00583940  44 51 84 e5                                      str r5, [r4, #0x144]
00583944  48 81 84 e5                                      str r8, [r4, #0x148]
00583948  a2 fc ff eb                                      bl #0x582bd8
0058394c  7c 39 0d e3                                      movw r3, #0xd97c
00583950  a0 3f 43 e3                                      movt r3, #0x3fa0
00583954  54 31 84 e5                                      str r3, [r4, #0x154]
00583958  ab 3a 0a e3                                      movw r3, #0xaaab
0058395c  aa 3f 43 e3                                      movt r3, #0x3faa
00583960  04 00 a0 e1                                      mov r0, r4
00583964  58 31 84 e5                                      str r3, [r4, #0x158]
00583968  37 ff ff eb                                      bl #0x58364c
0058396c  04 00 a0 e1                                      mov r0, r4
00583970  00 10 a0 e3                                      mov r1, #0
00583974  08 4e 00 eb                                      bl #0x59719c
00583978  04 00 a0 e1                                      mov r0, r4
0058397c  24 d0 8d e2                                      add sp, sp, #0x24
00583980  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00583984  b0 11 41 00 28 0e 00 00                          .byte 0xb0, 0x11, 0x41, 0x00, 0x28, 0x0e, 0x00, 0x00

; FUNCTION 0x0058398c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZTv0_n20_N6glitch5scene16CCameraSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CCameraSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0058398c  00 30 90 e5                                      ldr r3, [r0]
00583990  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00583994  03 00 80 e0                                      add r0, r0, r3
00583998  ea fb ff ea                                      b #0x582948

; FUNCTION 0x0058399c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZTv0_n16_NK6glitch5scene16CCameraSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::scene::CCameraSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
0058399c  00 30 90 e5                                      ldr r3, [r0]
005839a0  10 30 13 e5                                      ldr r3, [r3, #-0x10]
005839a4  03 00 80 e0                                      add r0, r0, r3
005839a8  ec f9 ff ea                                      b #0x582160

; FUNCTION 0x006e51a0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::scene::CCameraSceneNode
; alias: _ZN6glitch5scene16CCameraSceneNodeD2Ev
; demangled: glitch::scene::CCameraSceneNode::~CCameraSceneNode()
; decoder-mode: arm
006e51a0  70 40 2d e9                                      push {r4, r5, r6, lr}
006e51a4  00 20 91 e5                                      ldr r2, [r1]
006e51a8  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
006e51ac  00 40 a0 e1                                      mov r4, r0
006e51b0  00 20 80 e5                                      str r2, [r0]
006e51b4  1c c0 12 e5                                      ldr ip, [r2, #-0x1c]
006e51b8  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
006e51bc  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
006e51c0  03 30 8f e0                                      add r3, pc, r3
006e51c4  0c e0 80 e7                                      str lr, [r0, ip]
006e51c8  00 c0 90 e5                                      ldr ip, [r0]
006e51cc  02 20 93 e7                                      ldr r2, [r3, r2]
006e51d0  20 50 91 e5                                      ldr r5, [r1, #0x20]
006e51d4  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
006e51d8  06 2d 82 e2                                      add r2, r2, #0x180
006e51dc  04 c0 81 e2                                      add ip, r1, #4
006e51e0  0e 50 80 e7                                      str r5, [r0, lr]
006e51e4  30 21 80 e5                                      str r2, [r0, #0x130]
006e51e8  04 e0 91 e5                                      ldr lr, [r1, #4]
006e51ec  40 20 9f e5                                      ldr r2, [pc, #0x40]
006e51f0  04 10 8c e2                                      add r1, ip, #4
006e51f4  00 e0 80 e5                                      str lr, [r0]
006e51f8  10 50 9c e5                                      ldr r5, [ip, #0x10]
006e51fc  1c e0 1e e5                                      ldr lr, [lr, #-0x1c]
006e5200  02 20 93 e7                                      ldr r2, [r3, r2]
006e5204  0e 50 80 e7                                      str r5, [r0, lr]
006e5208  00 30 90 e5                                      ldr r3, [r0]
006e520c  14 c0 9c e5                                      ldr ip, [ip, #0x14]
006e5210  08 20 82 e2                                      add r2, r2, #8
006e5214  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006e5218  03 c0 80 e7                                      str ip, [r0, r3]
006e521c  30 21 80 e5                                      str r2, [r0, #0x130]
006e5220  a5 ce fa eb                                      bl #0x598cbc
006e5224  04 00 a0 e1                                      mov r0, r4
006e5228  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006e522c  d0 f8 2a 00 28 0e 00 00 4c 27 00 00              .byte 0xd0, 0xf8, 0x2a, 0x00, 0x28, 0x0e, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00
