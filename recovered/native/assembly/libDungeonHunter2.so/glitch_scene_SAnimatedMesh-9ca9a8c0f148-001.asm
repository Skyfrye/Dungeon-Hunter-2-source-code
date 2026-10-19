; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00599f04, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh13getFrameCountEv
; demangled: glitch::scene::SAnimatedMesh::getFrameCount() const
; decoder-mode: arm
00599f04  20 30 90 e5                                      ldr r3, [r0, #0x20]
00599f08  24 00 90 e5                                      ldr r0, [r0, #0x24]
00599f0c  00 00 63 e0                                      rsb r0, r3, r0
00599f10  40 01 a0 e1                                      asr r0, r0, #2
00599f14  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599f18, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMesh7getMeshEiiii
; demangled: glitch::scene::SAnimatedMesh::getMesh(int, int, int, int)
; decoder-mode: arm
00599f18  20 30 91 e5                                      ldr r3, [r1, #0x20]
00599f1c  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00599f20  0c 00 53 e1                                      cmp r3, ip
00599f24  00 30 a0 03                                      moveq r3, #0
00599f28  00 30 80 05                                      streq r3, [r0]
00599f2c  1e ff 2f 01                                      bxeq lr
00599f30  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00599f34  00 00 53 e3                                      cmp r3, #0
00599f38  00 30 80 e5                                      str r3, [r0]
00599f3c  04 20 93 15                                      ldrne r2, [r3, #4]
00599f40  01 20 82 12                                      addne r2, r2, #1
00599f44  04 20 83 15                                      strne r2, [r3, #4]
00599f48  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599f4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh14getBoundingBoxEv
; demangled: glitch::scene::SAnimatedMesh::getBoundingBox() const
; decoder-mode: arm
00599f4c  08 00 80 e2                                      add r0, r0, #8
00599f50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599f54, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::SAnimatedMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
00599f54  00 30 91 e5                                      ldr r3, [r1]
00599f58  08 30 80 e5                                      str r3, [r0, #8]
00599f5c  04 30 91 e5                                      ldr r3, [r1, #4]
00599f60  0c 30 80 e5                                      str r3, [r0, #0xc]
00599f64  08 30 91 e5                                      ldr r3, [r1, #8]
00599f68  10 30 80 e5                                      str r3, [r0, #0x10]
00599f6c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00599f70  14 30 80 e5                                      str r3, [r0, #0x14]
00599f74  10 30 91 e5                                      ldr r3, [r1, #0x10]
00599f78  18 30 80 e5                                      str r3, [r0, #0x18]
00599f7c  14 30 91 e5                                      ldr r3, [r1, #0x14]
00599f80  1c 30 80 e5                                      str r3, [r0, #0x1c]
00599f84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599f88, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh11getMeshTypeEv
; demangled: glitch::scene::SAnimatedMesh::getMeshType() const
; decoder-mode: arm
00599f88  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
00599f8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00599f90, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh18getMeshBufferCountEv
; demangled: glitch::scene::SAnimatedMesh::getMeshBufferCount() const
; decoder-mode: arm
00599f90  10 40 2d e9                                      push {r4, lr}
00599f94  24 20 90 e5                                      ldr r2, [r0, #0x24]
00599f98  20 30 90 e5                                      ldr r3, [r0, #0x20]
00599f9c  02 00 53 e1                                      cmp r3, r2
00599fa0  05 00 00 0a                                      beq #0x599fbc
00599fa4  00 30 93 e5                                      ldr r3, [r3]
00599fa8  03 00 a0 e1                                      mov r0, r3
00599fac  00 30 93 e5                                      ldr r3, [r3]
00599fb0  0f e0 a0 e1                                      mov lr, pc
00599fb4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00599fb8  10 80 bd e8                                      pop {r4, pc}
00599fbc  00 00 a0 e3                                      mov r0, #0
00599fc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00599fc4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh13getMeshBufferEj
; demangled: glitch::scene::SAnimatedMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
00599fc4  10 40 2d e9                                      push {r4, lr}
00599fc8  20 30 91 e5                                      ldr r3, [r1, #0x20]
00599fcc  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00599fd0  00 40 a0 e1                                      mov r4, r0
00599fd4  0c 00 53 e1                                      cmp r3, ip
00599fd8  00 30 a0 03                                      moveq r3, #0
00599fdc  00 30 80 05                                      streq r3, [r0]
00599fe0  04 00 00 0a                                      beq #0x599ff8
00599fe4  00 30 93 e5                                      ldr r3, [r3]
00599fe8  03 10 a0 e1                                      mov r1, r3
00599fec  00 30 93 e5                                      ldr r3, [r3]
00599ff0  0f e0 a0 e1                                      mov lr, pc
00599ff4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00599ff8  04 00 a0 e1                                      mov r0, r4
00599ffc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059a000, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh11getMaterialEj
; demangled: glitch::scene::SAnimatedMesh::getMaterial(unsigned int) const
; decoder-mode: arm
0059a000  10 40 2d e9                                      push {r4, lr}
0059a004  20 30 91 e5                                      ldr r3, [r1, #0x20]
0059a008  24 c0 91 e5                                      ldr ip, [r1, #0x24]
0059a00c  00 40 a0 e1                                      mov r4, r0
0059a010  0c 00 53 e1                                      cmp r3, ip
0059a014  00 30 a0 03                                      moveq r3, #0
0059a018  00 30 80 05                                      streq r3, [r0]
0059a01c  04 00 00 0a                                      beq #0x59a034
0059a020  00 30 93 e5                                      ldr r3, [r3]
0059a024  03 10 a0 e1                                      mov r1, r3
0059a028  00 30 93 e5                                      ldr r3, [r3]
0059a02c  0f e0 a0 e1                                      mov lr, pc
0059a030  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059a034  04 00 a0 e1                                      mov r0, r4
0059a038  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059a03c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::scene::SAnimatedMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
0059a03c  10 40 2d e9                                      push {r4, lr}
0059a040  20 30 91 e5                                      ldr r3, [r1, #0x20]
0059a044  24 c0 91 e5                                      ldr ip, [r1, #0x24]
0059a048  00 40 a0 e1                                      mov r4, r0
0059a04c  0c 00 53 e1                                      cmp r3, ip
0059a050  00 30 a0 03                                      moveq r3, #0
0059a054  00 30 80 05                                      streq r3, [r0]
0059a058  04 00 00 0a                                      beq #0x59a070
0059a05c  00 30 93 e5                                      ldr r3, [r3]
0059a060  03 10 a0 e1                                      mov r1, r3
0059a064  00 30 93 e5                                      ldr r3, [r3]
0059a068  0f e0 a0 e1                                      mov lr, pc
0059a06c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0059a070  04 00 a0 e1                                      mov r0, r4
0059a074  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059a078, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::scene::SAnimatedMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
0059a078  10 40 2d e9                                      push {r4, lr}
0059a07c  24 c0 90 e5                                      ldr ip, [r0, #0x24]
0059a080  20 00 90 e5                                      ldr r0, [r0, #0x20]
0059a084  0c 00 50 e1                                      cmp r0, ip
0059a088  04 00 00 0a                                      beq #0x59a0a0
0059a08c  00 c0 90 e5                                      ldr ip, [r0]
0059a090  0c 00 a0 e1                                      mov r0, ip
0059a094  00 c0 9c e5                                      ldr ip, [ip]
0059a098  0f e0 a0 e1                                      mov lr, pc
0059a09c  20 f0 9c e5                                      ldr pc, [ip, #0x20]
0059a0a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0059a1c0, declared_size=212, range_size=212, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMesh22recalculateBoundingBoxEv
; demangled: glitch::scene::SAnimatedMesh::recalculateBoundingBox()
; decoder-mode: arm
0059a1c0  70 40 2d e9                                      push {r4, r5, r6, lr}
0059a1c4  20 20 90 e5                                      ldr r2, [r0, #0x20]
0059a1c8  24 10 90 e5                                      ldr r1, [r0, #0x24]
0059a1cc  00 30 a0 e3                                      mov r3, #0
0059a1d0  00 50 a0 e1                                      mov r5, r0
0059a1d4  01 00 52 e1                                      cmp r2, r1
0059a1d8  10 30 80 e5                                      str r3, [r0, #0x10]
0059a1dc  14 30 80 e5                                      str r3, [r0, #0x14]
0059a1e0  18 30 80 e5                                      str r3, [r0, #0x18]
0059a1e4  1c 30 80 e5                                      str r3, [r0, #0x1c]
0059a1e8  08 30 80 e5                                      str r3, [r0, #8]
0059a1ec  0c 30 80 e5                                      str r3, [r0, #0xc]
0059a1f0  26 00 00 0a                                      beq #0x59a290
0059a1f4  00 30 92 e5                                      ldr r3, [r2]
0059a1f8  03 00 a0 e1                                      mov r0, r3
0059a1fc  00 30 93 e5                                      ldr r3, [r3]
0059a200  0f e0 a0 e1                                      mov lr, pc
0059a204  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0059a208  00 20 90 e5                                      ldr r2, [r0]
0059a20c  20 30 95 e5                                      ldr r3, [r5, #0x20]
0059a210  24 10 95 e5                                      ldr r1, [r5, #0x24]
0059a214  08 20 85 e5                                      str r2, [r5, #8]
0059a218  04 20 90 e5                                      ldr r2, [r0, #4]
0059a21c  01 10 63 e0                                      rsb r1, r3, r1
0059a220  41 11 a0 e1                                      asr r1, r1, #2
0059a224  0c 20 85 e5                                      str r2, [r5, #0xc]
0059a228  08 20 90 e5                                      ldr r2, [r0, #8]
0059a22c  01 00 51 e3                                      cmp r1, #1
0059a230  10 20 85 e5                                      str r2, [r5, #0x10]
0059a234  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0059a238  14 20 85 e5                                      str r2, [r5, #0x14]
0059a23c  10 20 90 e5                                      ldr r2, [r0, #0x10]
0059a240  18 20 85 e5                                      str r2, [r5, #0x18]
0059a244  14 20 90 e5                                      ldr r2, [r0, #0x14]
0059a248  1c 20 85 e5                                      str r2, [r5, #0x1c]
0059a24c  0f 00 00 9a                                      bls #0x59a290
0059a250  08 60 85 e2                                      add r6, r5, #8
0059a254  01 40 a0 e3                                      mov r4, #1
0059a258  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0059a25c  01 40 84 e2                                      add r4, r4, #1
0059a260  03 00 a0 e1                                      mov r0, r3
0059a264  00 30 93 e5                                      ldr r3, [r3]
0059a268  0f e0 a0 e1                                      mov lr, pc
0059a26c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0059a270  00 10 a0 e1                                      mov r1, r0
0059a274  06 00 a0 e1                                      mov r0, r6
0059a278  b4 07 f7 eb                                      bl #0x35c150
0059a27c  20 30 95 e5                                      ldr r3, [r5, #0x20]
0059a280  24 20 95 e5                                      ldr r2, [r5, #0x24]
0059a284  02 20 63 e0                                      rsb r2, r3, r2
0059a288  42 01 54 e1                                      cmp r4, r2, asr #2
0059a28c  f1 ff ff 3a                                      blo #0x59a258
0059a290  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0059a594, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMeshD1Ev
; demangled: glitch::scene::SAnimatedMesh::~SAnimatedMesh()
; decoder-mode: arm
0059a594  24 30 9f e5                                      ldr r3, [pc, #0x24]
0059a598  24 20 9f e5                                      ldr r2, [pc, #0x24]
0059a59c  10 40 2d e9                                      push {r4, lr}
0059a5a0  03 30 8f e0                                      add r3, pc, r3
0059a5a4  02 20 93 e7                                      ldr r2, [r3, r2]
0059a5a8  00 40 a0 e1                                      mov r4, r0
0059a5ac  08 20 82 e2                                      add r2, r2, #8
0059a5b0  20 20 80 e4                                      str r2, [r0], #0x20
0059a5b4  e3 ff ff eb                                      bl #0x59a548
0059a5b8  04 00 a0 e1                                      mov r0, r4
0059a5bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0059a5c0  f0 a4 3f 00 08 33 00 00                          .byte 0xf0, 0xa4, 0x3f, 0x00, 0x08, 0x33, 0x00, 0x00

; FUNCTION 0x0059ad10, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMeshC1ERKN5boost13intrusive_ptrINS0_5IMeshEEENS0_20E_ANIMATED_MESH_TYPEE
; demangled: glitch::scene::SAnimatedMesh::SAnimatedMesh(boost::intrusive_ptr<glitch::scene::IMesh> const&, glitch::scene::E_ANIMATED_MESH_TYPE)
; decoder-mode: arm
0059ad10  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0059ad14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059ad18  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
0059ad1c  03 30 8f e0                                      add r3, pc, r3
0059ad20  bf e4 a0 e3                                      mov lr, #0xbf000000
0059ad24  05 50 93 e7                                      ldr r5, [r3, r5]
0059ad28  00 40 a0 e1                                      mov r4, r0
0059ad2c  02 e5 8e e2                                      add lr, lr, #0x800000
0059ad30  fe c5 a0 e3                                      mov ip, #0x3f800000
0059ad34  08 00 85 e2                                      add r0, r5, #8
0059ad38  00 50 a0 e3                                      mov r5, #0
0059ad3c  00 00 84 e5                                      str r0, [r4]
0059ad40  10 e0 84 e5                                      str lr, [r4, #0x10]
0059ad44  1c c0 84 e5                                      str ip, [r4, #0x1c]
0059ad48  2c 20 84 e5                                      str r2, [r4, #0x2c]
0059ad4c  04 50 84 e5                                      str r5, [r4, #4]
0059ad50  08 e0 84 e5                                      str lr, [r4, #8]
0059ad54  0c e0 84 e5                                      str lr, [r4, #0xc]
0059ad58  14 c0 84 e5                                      str ip, [r4, #0x14]
0059ad5c  18 c0 84 e5                                      str ip, [r4, #0x18]
0059ad60  20 50 84 e5                                      str r5, [r4, #0x20]
0059ad64  24 50 84 e5                                      str r5, [r4, #0x24]
0059ad68  28 50 84 e5                                      str r5, [r4, #0x28]
0059ad6c  00 20 91 e5                                      ldr r2, [r1]
0059ad70  01 60 a0 e1                                      mov r6, r1
0059ad74  05 00 52 e1                                      cmp r2, r5
0059ad78  21 00 00 0a                                      beq #0x59ae04
0059ad7c  05 10 a0 e1                                      mov r1, r5
0059ad80  04 00 a0 e3                                      mov r0, #4
0059ad84  f7 d5 f5 eb                                      bl #0x310568
0059ad88  20 20 94 e5                                      ldr r2, [r4, #0x20]
0059ad8c  00 70 a0 e1                                      mov r7, r0
0059ad90  20 00 84 e2                                      add r0, r4, #0x20
0059ad94  00 10 62 e2                                      rsb r1, r2, #0
0059ad98  41 11 a0 e1                                      asr r1, r1, #2
0059ad9c  05 00 51 e1                                      cmp r1, r5
0059ada0  07 50 a0 d1                                      movle r5, r7
0059ada4  0a 00 00 da                                      ble #0x59add4
0059ada8  01 c0 a0 e1                                      mov ip, r1
0059adac  05 30 92 e7                                      ldr r3, [r2, r5]
0059adb0  00 00 53 e3                                      cmp r3, #0
0059adb4  05 30 87 e7                                      str r3, [r7, r5]
0059adb8  04 e0 93 15                                      ldrne lr, [r3, #4]
0059adbc  04 50 85 e2                                      add r5, r5, #4
0059adc0  01 e0 8e 12                                      addne lr, lr, #1
0059adc4  04 e0 83 15                                      strne lr, [r3, #4]
0059adc8  01 c0 5c e2                                      subs ip, ip, #1
0059adcc  f6 ff ff 1a                                      bne #0x59adac
0059add0  01 51 87 e0                                      add r5, r7, r1, lsl #2
0059add4  00 30 96 e5                                      ldr r3, [r6]
0059add8  00 00 53 e3                                      cmp r3, #0
0059addc  00 30 85 e5                                      str r3, [r5]
0059ade0  04 20 93 15                                      ldrne r2, [r3, #4]
0059ade4  04 50 85 e2                                      add r5, r5, #4
0059ade8  01 20 82 12                                      addne r2, r2, #1
0059adec  04 20 83 15                                      strne r2, [r3, #4]
0059adf0  f4 fd ff eb                                      bl #0x59a5c8
0059adf4  04 30 87 e2                                      add r3, r7, #4
0059adf8  24 50 84 e5                                      str r5, [r4, #0x24]
0059adfc  28 30 84 e5                                      str r3, [r4, #0x28]
0059ae00  20 70 84 e5                                      str r7, [r4, #0x20]
0059ae04  04 00 a0 e1                                      mov r0, r4
0059ae08  ec fc ff eb                                      bl #0x59a1c0
0059ae0c  04 00 a0 e1                                      mov r0, r4
0059ae10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0059ae14  74 9d 3f 00 08 33 00 00                          .byte 0x74, 0x9d, 0x3f, 0x00, 0x08, 0x33, 0x00, 0x00

; FUNCTION 0x0059ae64, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZNK6glitch5scene13SAnimatedMesh5cloneEv
; demangled: glitch::scene::SAnimatedMesh::clone() const
; decoder-mode: arm
0059ae64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059ae68  08 d0 4d e2                                      sub sp, sp, #8
0059ae6c  00 50 a0 e3                                      mov r5, #0
0059ae70  08 70 8d e2                                      add r7, sp, #8
0059ae74  04 50 27 e5                                      str r5, [r7, #-4]!
0059ae78  00 30 91 e5                                      ldr r3, [r1]
0059ae7c  00 60 a0 e1                                      mov r6, r0
0059ae80  01 00 a0 e1                                      mov r0, r1
0059ae84  01 40 a0 e1                                      mov r4, r1
0059ae88  0f e0 a0 e1                                      mov lr, pc
0059ae8c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0059ae90  05 10 a0 e1                                      mov r1, r5
0059ae94  00 80 a0 e1                                      mov r8, r0
0059ae98  30 00 a0 e3                                      mov r0, #0x30
0059ae9c  c2 64 fe eb                                      bl #0x5341ac
0059aea0  07 10 a0 e1                                      mov r1, r7
0059aea4  08 20 a0 e1                                      mov r2, r8
0059aea8  00 50 a0 e1                                      mov r5, r0
0059aeac  97 ff ff eb                                      bl #0x59ad10
0059aeb0  00 00 55 e3                                      cmp r5, #0
0059aeb4  00 50 86 e5                                      str r5, [r6]
0059aeb8  04 30 95 15                                      ldrne r3, [r5, #4]
0059aebc  01 30 83 12                                      addne r3, r3, #1
0059aec0  04 30 85 15                                      strne r3, [r5, #4]
0059aec4  04 00 9d e5                                      ldr r0, [sp, #4]
0059aec8  00 00 50 e3                                      cmp r0, #0
0059aecc  00 00 00 0a                                      beq #0x59aed4
0059aed0  ab 09 f6 eb                                      bl #0x31d584
0059aed4  00 30 96 e5                                      ldr r3, [r6]
0059aed8  08 20 94 e5                                      ldr r2, [r4, #8]
0059aedc  20 10 84 e2                                      add r1, r4, #0x20
0059aee0  20 00 83 e2                                      add r0, r3, #0x20
0059aee4  08 20 83 e5                                      str r2, [r3, #8]
0059aee8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0059aeec  0c 20 83 e5                                      str r2, [r3, #0xc]
0059aef0  10 20 94 e5                                      ldr r2, [r4, #0x10]
0059aef4  10 20 83 e5                                      str r2, [r3, #0x10]
0059aef8  14 20 94 e5                                      ldr r2, [r4, #0x14]
0059aefc  14 20 83 e5                                      str r2, [r3, #0x14]
0059af00  18 20 94 e5                                      ldr r2, [r4, #0x18]
0059af04  18 20 83 e5                                      str r2, [r3, #0x18]
0059af08  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0059af0c  1c 20 83 e5                                      str r2, [r3, #0x1c]
0059af10  3b fd ff eb                                      bl #0x59a404
0059af14  06 00 a0 e1                                      mov r0, r6
0059af18  08 d0 8d e2                                      add sp, sp, #8
0059af1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0059b048, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::SAnimatedMesh
; alias: _ZN6glitch5scene13SAnimatedMeshD0Ev
; demangled: glitch::scene::SAnimatedMesh::~SAnimatedMesh()
; decoder-mode: arm
0059b048  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0059b04c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0059b050  10 40 2d e9                                      push {r4, lr}
0059b054  03 30 8f e0                                      add r3, pc, r3
0059b058  02 20 93 e7                                      ldr r2, [r3, r2]
0059b05c  00 40 a0 e1                                      mov r4, r0
0059b060  08 20 82 e2                                      add r2, r2, #8
0059b064  20 20 80 e4                                      str r2, [r0], #0x20
0059b068  36 fd ff eb                                      bl #0x59a548
0059b06c  04 00 a0 e1                                      mov r0, r4
0059b070  8e cc f5 eb                                      bl #0x30e2b0
0059b074  04 00 a0 e1                                      mov r0, r4
0059b078  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0059b07c  3c 9a 3f 00 08 33 00 00                          .byte 0x3c, 0x9a, 0x3f, 0x00, 0x08, 0x33, 0x00, 0x00
