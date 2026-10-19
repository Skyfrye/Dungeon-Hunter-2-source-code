; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fe860, declared_size=108, range_size=108, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SShadowVolume
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeC2Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume()
; decoder-mode: arm
006fe860  00 10 a0 e3                                      mov r1, #0
006fe864  00 20 a0 e3                                      mov r2, #0
006fe868  0c 10 80 e5                                      str r1, [r0, #0xc]
006fe86c  04 10 80 e5                                      str r1, [r0, #4]
006fe870  08 10 80 e5                                      str r1, [r0, #8]
006fe874  ff 10 a0 e3                                      mov r1, #0xff
006fe878  b8 24 c0 e1                                      strh r2, [r0, #0x48]
006fe87c  00 20 80 e5                                      str r2, [r0]
006fe880  10 20 80 e5                                      str r2, [r0, #0x10]
006fe884  14 20 80 e5                                      str r2, [r0, #0x14]
006fe888  18 20 80 e5                                      str r2, [r0, #0x18]
006fe88c  1c 20 80 e5                                      str r2, [r0, #0x1c]
006fe890  20 20 80 e5                                      str r2, [r0, #0x20]
006fe894  24 20 80 e5                                      str r2, [r0, #0x24]
006fe898  28 20 80 e5                                      str r2, [r0, #0x28]
006fe89c  2c 20 80 e5                                      str r2, [r0, #0x2c]
006fe8a0  30 20 80 e5                                      str r2, [r0, #0x30]
006fe8a4  34 20 80 e5                                      str r2, [r0, #0x34]
006fe8a8  38 20 80 e5                                      str r2, [r0, #0x38]
006fe8ac  3c 20 80 e5                                      str r2, [r0, #0x3c]
006fe8b0  b0 14 c0 e1                                      strh r1, [r0, #0x40]
006fe8b4  b4 24 c0 e1                                      strh r2, [r0, #0x44]
006fe8b8  06 10 a0 e3                                      mov r1, #6
006fe8bc  00 20 e0 e3                                      mvn r2, #0
006fe8c0  b2 14 c0 e1                                      strh r1, [r0, #0x42]
006fe8c4  b6 24 c0 e1                                      strh r2, [r0, #0x46]
006fe8c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe8cc, declared_size=108, range_size=108, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SShadowVolume
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeC1Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume()
; decoder-mode: arm
006fe8cc  00 10 a0 e3                                      mov r1, #0
006fe8d0  00 20 a0 e3                                      mov r2, #0
006fe8d4  0c 10 80 e5                                      str r1, [r0, #0xc]
006fe8d8  04 10 80 e5                                      str r1, [r0, #4]
006fe8dc  08 10 80 e5                                      str r1, [r0, #8]
006fe8e0  ff 10 a0 e3                                      mov r1, #0xff
006fe8e4  b8 24 c0 e1                                      strh r2, [r0, #0x48]
006fe8e8  00 20 80 e5                                      str r2, [r0]
006fe8ec  10 20 80 e5                                      str r2, [r0, #0x10]
006fe8f0  14 20 80 e5                                      str r2, [r0, #0x14]
006fe8f4  18 20 80 e5                                      str r2, [r0, #0x18]
006fe8f8  1c 20 80 e5                                      str r2, [r0, #0x1c]
006fe8fc  20 20 80 e5                                      str r2, [r0, #0x20]
006fe900  24 20 80 e5                                      str r2, [r0, #0x24]
006fe904  28 20 80 e5                                      str r2, [r0, #0x28]
006fe908  2c 20 80 e5                                      str r2, [r0, #0x2c]
006fe90c  30 20 80 e5                                      str r2, [r0, #0x30]
006fe910  34 20 80 e5                                      str r2, [r0, #0x34]
006fe914  38 20 80 e5                                      str r2, [r0, #0x38]
006fe918  3c 20 80 e5                                      str r2, [r0, #0x3c]
006fe91c  b0 14 c0 e1                                      strh r1, [r0, #0x40]
006fe920  b4 24 c0 e1                                      strh r2, [r0, #0x44]
006fe924  06 10 a0 e3                                      mov r1, #6
006fe928  00 20 e0 e3                                      mvn r2, #0
006fe92c  b2 14 c0 e1                                      strh r1, [r0, #0x42]
006fe930  b6 24 c0 e1                                      strh r2, [r0, #0x46]
006fe934  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe98c, declared_size=244, range_size=244, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SShadowVolume
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeC1ERKS2_
; demangled: glitch::scene::CShadowVolumeSceneNode::SShadowVolume::SShadowVolume(glitch::scene::CShadowVolumeSceneNode::SShadowVolume const&)
; decoder-mode: arm
006fe98c  00 20 91 e5                                      ldr r2, [r1]
006fe990  00 30 a0 e1                                      mov r3, r0
006fe994  00 20 80 e5                                      str r2, [r0]
006fe998  04 20 91 e5                                      ldr r2, [r1, #4]
006fe99c  04 20 80 e5                                      str r2, [r0, #4]
006fe9a0  08 20 91 e5                                      ldr r2, [r1, #8]
006fe9a4  08 20 80 e5                                      str r2, [r0, #8]
006fe9a8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
006fe9ac  0c 20 80 e5                                      str r2, [r0, #0xc]
006fe9b0  10 20 91 e5                                      ldr r2, [r1, #0x10]
006fe9b4  10 20 80 e5                                      str r2, [r0, #0x10]
006fe9b8  14 20 91 e5                                      ldr r2, [r1, #0x14]
006fe9bc  14 20 80 e5                                      str r2, [r0, #0x14]
006fe9c0  18 20 91 e5                                      ldr r2, [r1, #0x18]
006fe9c4  18 20 80 e5                                      str r2, [r0, #0x18]
006fe9c8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
006fe9cc  1c 20 80 e5                                      str r2, [r0, #0x1c]
006fe9d0  20 20 91 e5                                      ldr r2, [r1, #0x20]
006fe9d4  20 20 80 e5                                      str r2, [r0, #0x20]
006fe9d8  00 00 52 e3                                      cmp r2, #0
006fe9dc  00 00 92 15                                      ldrne r0, [r2]
006fe9e0  01 00 80 12                                      addne r0, r0, #1
006fe9e4  00 00 82 15                                      strne r0, [r2]
006fe9e8  24 20 91 e5                                      ldr r2, [r1, #0x24]
006fe9ec  24 20 83 e5                                      str r2, [r3, #0x24]
006fe9f0  00 00 52 e3                                      cmp r2, #0
006fe9f4  04 00 92 15                                      ldrne r0, [r2, #4]
006fe9f8  01 00 80 12                                      addne r0, r0, #1
006fe9fc  04 00 82 15                                      strne r0, [r2, #4]
006fea00  28 20 91 e5                                      ldr r2, [r1, #0x28]
006fea04  28 20 83 e5                                      str r2, [r3, #0x28]
006fea08  00 00 52 e3                                      cmp r2, #0
006fea0c  04 00 92 15                                      ldrne r0, [r2, #4]
006fea10  01 00 80 12                                      addne r0, r0, #1
006fea14  04 00 82 15                                      strne r0, [r2, #4]
006fea18  2c 20 91 e5                                      ldr r2, [r1, #0x2c]
006fea1c  00 00 52 e3                                      cmp r2, #0
006fea20  2c 20 83 e5                                      str r2, [r3, #0x2c]
006fea24  04 00 92 15                                      ldrne r0, [r2, #4]
006fea28  01 00 80 12                                      addne r0, r0, #1
006fea2c  04 00 82 15                                      strne r0, [r2, #4]
006fea30  30 20 91 e5                                      ldr r2, [r1, #0x30]
006fea34  03 00 a0 e1                                      mov r0, r3
006fea38  30 20 83 e5                                      str r2, [r3, #0x30]
006fea3c  34 20 91 e5                                      ldr r2, [r1, #0x34]
006fea40  34 20 83 e5                                      str r2, [r3, #0x34]
006fea44  38 20 91 e5                                      ldr r2, [r1, #0x38]
006fea48  38 20 83 e5                                      str r2, [r3, #0x38]
006fea4c  3c 20 91 e5                                      ldr r2, [r1, #0x3c]
006fea50  3c 20 83 e5                                      str r2, [r3, #0x3c]
006fea54  b0 24 d1 e1                                      ldrh r2, [r1, #0x40]
006fea58  b0 24 c3 e1                                      strh r2, [r3, #0x40]
006fea5c  b2 24 d1 e1                                      ldrh r2, [r1, #0x42]
006fea60  b2 24 c3 e1                                      strh r2, [r3, #0x42]
006fea64  b4 24 d1 e1                                      ldrh r2, [r1, #0x44]
006fea68  b4 24 c3 e1                                      strh r2, [r3, #0x44]
006fea6c  b6 24 d1 e1                                      ldrh r2, [r1, #0x46]
006fea70  b6 24 c3 e1                                      strh r2, [r3, #0x46]
006fea74  b8 14 d1 e1                                      ldrh r1, [r1, #0x48]
006fea78  b8 14 c3 e1                                      strh r1, [r3, #0x48]
006fea7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00700ce4, declared_size=352, range_size=352, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SShadowVolume
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeaSERKS2_
; demangled: glitch::scene::CShadowVolumeSceneNode::SShadowVolume::operator=(glitch::scene::CShadowVolumeSceneNode::SShadowVolume const&)
; decoder-mode: arm
00700ce4  00 30 91 e5                                      ldr r3, [r1]
00700ce8  70 40 2d e9                                      push {r4, r5, r6, lr}
00700cec  00 30 80 e5                                      str r3, [r0]
00700cf0  04 30 91 e5                                      ldr r3, [r1, #4]
00700cf4  01 50 a0 e1                                      mov r5, r1
00700cf8  00 40 a0 e1                                      mov r4, r0
00700cfc  04 30 80 e5                                      str r3, [r0, #4]
00700d00  08 30 91 e5                                      ldr r3, [r1, #8]
00700d04  08 30 80 e5                                      str r3, [r0, #8]
00700d08  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00700d0c  0c 30 80 e5                                      str r3, [r0, #0xc]
00700d10  10 30 91 e5                                      ldr r3, [r1, #0x10]
00700d14  10 30 80 e5                                      str r3, [r0, #0x10]
00700d18  14 30 91 e5                                      ldr r3, [r1, #0x14]
00700d1c  14 30 80 e5                                      str r3, [r0, #0x14]
00700d20  18 30 91 e5                                      ldr r3, [r1, #0x18]
00700d24  18 30 80 e5                                      str r3, [r0, #0x18]
00700d28  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
00700d2c  1c 30 80 e5                                      str r3, [r0, #0x1c]
00700d30  20 30 91 e5                                      ldr r3, [r1, #0x20]
00700d34  00 00 53 e3                                      cmp r3, #0
00700d38  00 20 93 15                                      ldrne r2, [r3]
00700d3c  01 20 82 12                                      addne r2, r2, #1
00700d40  00 20 83 15                                      strne r2, [r3]
00700d44  20 60 90 e5                                      ldr r6, [r0, #0x20]
00700d48  20 30 80 e5                                      str r3, [r0, #0x20]
00700d4c  00 00 56 e3                                      cmp r6, #0
00700d50  04 00 00 0a                                      beq #0x700d68
00700d54  00 30 96 e5                                      ldr r3, [r6]
00700d58  01 30 43 e2                                      sub r3, r3, #1
00700d5c  00 00 53 e3                                      cmp r3, #0
00700d60  00 30 86 e5                                      str r3, [r6]
00700d64  31 00 00 0a                                      beq #0x700e30
00700d68  24 30 95 e5                                      ldr r3, [r5, #0x24]
00700d6c  00 00 53 e3                                      cmp r3, #0
00700d70  04 20 93 15                                      ldrne r2, [r3, #4]
00700d74  01 20 82 12                                      addne r2, r2, #1
00700d78  04 20 83 15                                      strne r2, [r3, #4]
00700d7c  24 00 94 e5                                      ldr r0, [r4, #0x24]
00700d80  24 30 84 e5                                      str r3, [r4, #0x24]
00700d84  00 00 50 e3                                      cmp r0, #0
00700d88  00 00 00 0a                                      beq #0x700d90
00700d8c  fc 71 f0 eb                                      bl #0x31d584
00700d90  28 30 95 e5                                      ldr r3, [r5, #0x28]
00700d94  00 00 53 e3                                      cmp r3, #0
00700d98  04 20 93 15                                      ldrne r2, [r3, #4]
00700d9c  01 20 82 12                                      addne r2, r2, #1
00700da0  04 20 83 15                                      strne r2, [r3, #4]
00700da4  28 00 94 e5                                      ldr r0, [r4, #0x28]
00700da8  28 30 84 e5                                      str r3, [r4, #0x28]
00700dac  00 00 50 e3                                      cmp r0, #0
00700db0  00 00 00 0a                                      beq #0x700db8
00700db4  f2 71 f0 eb                                      bl #0x31d584
00700db8  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00700dbc  00 00 53 e3                                      cmp r3, #0
00700dc0  04 20 93 15                                      ldrne r2, [r3, #4]
00700dc4  01 20 82 12                                      addne r2, r2, #1
00700dc8  04 20 83 15                                      strne r2, [r3, #4]
00700dcc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00700dd0  2c 30 84 e5                                      str r3, [r4, #0x2c]
00700dd4  00 00 50 e3                                      cmp r0, #0
00700dd8  00 00 00 0a                                      beq #0x700de0
00700ddc  e8 71 f0 eb                                      bl #0x31d584
00700de0  30 30 95 e5                                      ldr r3, [r5, #0x30]
00700de4  04 00 a0 e1                                      mov r0, r4
00700de8  30 30 84 e5                                      str r3, [r4, #0x30]
00700dec  34 30 95 e5                                      ldr r3, [r5, #0x34]
00700df0  34 30 84 e5                                      str r3, [r4, #0x34]
00700df4  38 30 95 e5                                      ldr r3, [r5, #0x38]
00700df8  38 30 84 e5                                      str r3, [r4, #0x38]
00700dfc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00700e00  3c 30 84 e5                                      str r3, [r4, #0x3c]
00700e04  b0 34 d5 e1                                      ldrh r3, [r5, #0x40]
00700e08  b0 34 c4 e1                                      strh r3, [r4, #0x40]
00700e0c  b2 34 d5 e1                                      ldrh r3, [r5, #0x42]
00700e10  b2 34 c4 e1                                      strh r3, [r4, #0x42]
00700e14  b4 34 d5 e1                                      ldrh r3, [r5, #0x44]
00700e18  b4 34 c4 e1                                      strh r3, [r4, #0x44]
00700e1c  b6 34 d5 e1                                      ldrh r3, [r5, #0x46]
00700e20  b6 34 c4 e1                                      strh r3, [r4, #0x46]
00700e24  b8 54 d5 e1                                      ldrh r5, [r5, #0x48]
00700e28  b8 54 c4 e1                                      strh r5, [r4, #0x48]
00700e2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00700e30  06 00 a0 e1                                      mov r0, r6
00700e34  f8 7e fa eb                                      bl #0x5a0a1c
00700e38  06 00 a0 e1                                      mov r0, r6
00700e3c  1b 35 f0 eb                                      bl #0x30e2b0
00700e40  c8 ff ff ea                                      b #0x700d68

; FUNCTION 0x00700e44, declared_size=180, range_size=180, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SShadowVolume
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeD1Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume()
; decoder-mode: arm
00700e44  70 40 2d e9                                      push {r4, r5, r6, lr}
00700e48  00 50 90 e5                                      ldr r5, [r0]
00700e4c  00 40 a0 e1                                      mov r4, r0
00700e50  00 00 55 e3                                      cmp r5, #0
00700e54  03 00 00 0a                                      beq #0x700e68
00700e58  05 00 a0 e1                                      mov r0, r5
00700e5c  c9 fb ff eb                                      bl #0x6ffd88
00700e60  05 00 a0 e1                                      mov r0, r5
00700e64  11 35 f0 eb                                      bl #0x30e2b0
00700e68  10 00 94 e5                                      ldr r0, [r4, #0x10]
00700e6c  00 00 50 e3                                      cmp r0, #0
00700e70  00 00 00 0a                                      beq #0x700e78
00700e74  8f 34 f0 eb                                      bl #0x30e0b8
00700e78  14 00 94 e5                                      ldr r0, [r4, #0x14]
00700e7c  00 00 50 e3                                      cmp r0, #0
00700e80  00 00 00 0a                                      beq #0x700e88
00700e84  8b 34 f0 eb                                      bl #0x30e0b8
00700e88  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00700e8c  00 00 50 e3                                      cmp r0, #0
00700e90  00 00 00 0a                                      beq #0x700e98
00700e94  ba 71 f0 eb                                      bl #0x31d584
00700e98  28 00 94 e5                                      ldr r0, [r4, #0x28]
00700e9c  00 00 50 e3                                      cmp r0, #0
00700ea0  00 00 00 0a                                      beq #0x700ea8
00700ea4  b6 71 f0 eb                                      bl #0x31d584
00700ea8  24 00 94 e5                                      ldr r0, [r4, #0x24]
00700eac  00 00 50 e3                                      cmp r0, #0
00700eb0  00 00 00 0a                                      beq #0x700eb8
00700eb4  b2 71 f0 eb                                      bl #0x31d584
00700eb8  20 50 94 e5                                      ldr r5, [r4, #0x20]
00700ebc  00 00 55 e3                                      cmp r5, #0
00700ec0  04 00 00 0a                                      beq #0x700ed8
00700ec4  00 30 95 e5                                      ldr r3, [r5]
00700ec8  01 30 43 e2                                      sub r3, r3, #1
00700ecc  00 00 53 e3                                      cmp r3, #0
00700ed0  00 30 85 e5                                      str r3, [r5]
00700ed4  01 00 00 0a                                      beq #0x700ee0
00700ed8  04 00 a0 e1                                      mov r0, r4
00700edc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00700ee0  05 00 a0 e1                                      mov r0, r5
00700ee4  cc 7e fa eb                                      bl #0x5a0a1c
00700ee8  05 00 a0 e1                                      mov r0, r5
00700eec  ef 34 f0 eb                                      bl #0x30e2b0
00700ef0  04 00 a0 e1                                      mov r0, r4
00700ef4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007012a4, declared_size=180, range_size=180, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SShadowVolume
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SShadowVolumeD2Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::SShadowVolume::~SShadowVolume()
; decoder-mode: arm
007012a4  70 40 2d e9                                      push {r4, r5, r6, lr}
007012a8  00 50 90 e5                                      ldr r5, [r0]
007012ac  00 40 a0 e1                                      mov r4, r0
007012b0  00 00 55 e3                                      cmp r5, #0
007012b4  03 00 00 0a                                      beq #0x7012c8
007012b8  05 00 a0 e1                                      mov r0, r5
007012bc  b1 fa ff eb                                      bl #0x6ffd88
007012c0  05 00 a0 e1                                      mov r0, r5
007012c4  f9 33 f0 eb                                      bl #0x30e2b0
007012c8  10 00 94 e5                                      ldr r0, [r4, #0x10]
007012cc  00 00 50 e3                                      cmp r0, #0
007012d0  00 00 00 0a                                      beq #0x7012d8
007012d4  77 33 f0 eb                                      bl #0x30e0b8
007012d8  14 00 94 e5                                      ldr r0, [r4, #0x14]
007012dc  00 00 50 e3                                      cmp r0, #0
007012e0  00 00 00 0a                                      beq #0x7012e8
007012e4  73 33 f0 eb                                      bl #0x30e0b8
007012e8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007012ec  00 00 50 e3                                      cmp r0, #0
007012f0  00 00 00 0a                                      beq #0x7012f8
007012f4  a2 70 f0 eb                                      bl #0x31d584
007012f8  28 00 94 e5                                      ldr r0, [r4, #0x28]
007012fc  00 00 50 e3                                      cmp r0, #0
00701300  00 00 00 0a                                      beq #0x701308
00701304  9e 70 f0 eb                                      bl #0x31d584
00701308  24 00 94 e5                                      ldr r0, [r4, #0x24]
0070130c  00 00 50 e3                                      cmp r0, #0
00701310  00 00 00 0a                                      beq #0x701318
00701314  9a 70 f0 eb                                      bl #0x31d584
00701318  20 50 94 e5                                      ldr r5, [r4, #0x20]
0070131c  00 00 55 e3                                      cmp r5, #0
00701320  04 00 00 0a                                      beq #0x701338
00701324  00 30 95 e5                                      ldr r3, [r5]
00701328  01 30 43 e2                                      sub r3, r3, #1
0070132c  00 00 53 e3                                      cmp r3, #0
00701330  00 30 85 e5                                      str r3, [r5]
00701334  01 00 00 0a                                      beq #0x701340
00701338  04 00 a0 e1                                      mov r0, r4
0070133c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00701340  05 00 a0 e1                                      mov r0, r5
00701344  b4 7d fa eb                                      bl #0x5a0a1c
00701348  05 00 a0 e1                                      mov r0, r5
0070134c  d7 33 f0 eb                                      bl #0x30e2b0
00701350  04 00 a0 e1                                      mov r0, r4
00701354  70 80 bd e8                                      pop {r4, r5, r6, pc}
