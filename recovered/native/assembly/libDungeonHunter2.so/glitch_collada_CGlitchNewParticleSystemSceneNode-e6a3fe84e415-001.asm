; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00637b3c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode6getUIDEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::getUID() const
; decoder-mode: arm
00637b3c  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
00637b40  00 00 93 e5                                      ldr r0, [r3]
00637b44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00637b48, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode16getParticleCountEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::getParticleCount() const
; decoder-mode: arm
00637b48  78 21 90 e5                                      ldr r2, [r0, #0x178]
00637b4c  97 3f 06 e3                                      movw r3, #0x6f97
00637b50  f9 36 49 e3                                      movt r3, #0x96f9
00637b54  00 10 92 e5                                      ldr r1, [r2]
00637b58  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00637b5c  01 20 82 e0                                      add r2, r2, r1
00637b60  24 10 92 e5                                      ldr r1, [r2, #0x24]
00637b64  28 00 92 e5                                      ldr r0, [r2, #0x28]
00637b68  00 00 61 e0                                      rsb r0, r1, r0
00637b6c  40 01 a0 e1                                      asr r0, r0, #2
00637b70  93 00 00 e0                                      mul r0, r3, r0
00637b74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00637b78, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode7getTypeEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::getType() const
; decoder-mode: arm
00637b78  64 01 06 e3                                      movw r0, #0x6164
00637b7c  65 07 46 e3                                      movt r0, #0x6765
00637b80  1e ff 2f e1                                      bx lr

; FUNCTION 0x00637b84, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode25getTransformedBoundingBoxEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
00637b84  4c 01 90 e5                                      ldr r0, [r0, #0x14c]
00637b88  1e ff 2f e1                                      bx lr

; FUNCTION 0x0063b1d0, declared_size=512, range_size=512, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode14getBoundingBoxEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::getBoundingBox() const
; decoder-mode: arm
0063b1d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063b1d4  ec 51 9f e5                                      ldr r5, [pc, #0x1ec]
0063b1d8  0c d0 4d e2                                      sub sp, sp, #0xc
0063b1dc  00 40 a0 e1                                      mov r4, r0
0063b1e0  05 50 8f e0                                      add r5, pc, r5
0063b1e4  00 30 95 e5                                      ldr r3, [r5]
0063b1e8  01 00 13 e3                                      tst r3, #1
0063b1ec  65 00 00 0a                                      beq #0x63b388
0063b1f0  24 00 94 e5                                      ldr r0, [r4, #0x24]
0063b1f4  00 10 a0 e3                                      mov r1, #0
0063b1f8  db 4e f3 eb                                      bl #0x30ed6c
0063b1fc  00 10 a0 e3                                      mov r1, #0
0063b200  00 50 a0 e1                                      mov r5, r0
0063b204  34 00 94 e5                                      ldr r0, [r4, #0x34]
0063b208  d7 4e f3 eb                                      bl #0x30ed6c
0063b20c  00 10 a0 e1                                      mov r1, r0
0063b210  05 00 a0 e1                                      mov r0, r5
0063b214  62 4e f3 eb                                      bl #0x30eba4
0063b218  00 10 a0 e3                                      mov r1, #0
0063b21c  00 50 a0 e1                                      mov r5, r0
0063b220  44 00 94 e5                                      ldr r0, [r4, #0x44]
0063b224  d0 4e f3 eb                                      bl #0x30ed6c
0063b228  00 10 a0 e1                                      mov r1, r0
0063b22c  05 00 a0 e1                                      mov r0, r5
0063b230  5b 4e f3 eb                                      bl #0x30eba4
0063b234  54 10 94 e5                                      ldr r1, [r4, #0x54]
0063b238  59 4e f3 eb                                      bl #0x30eba4
0063b23c  00 10 a0 e3                                      mov r1, #0
0063b240  00 90 a0 e1                                      mov sb, r0
0063b244  28 00 94 e5                                      ldr r0, [r4, #0x28]
0063b248  c7 4e f3 eb                                      bl #0x30ed6c
0063b24c  00 10 a0 e3                                      mov r1, #0
0063b250  00 50 a0 e1                                      mov r5, r0
0063b254  38 00 94 e5                                      ldr r0, [r4, #0x38]
0063b258  c3 4e f3 eb                                      bl #0x30ed6c
0063b25c  00 10 a0 e1                                      mov r1, r0
0063b260  05 00 a0 e1                                      mov r0, r5
0063b264  4e 4e f3 eb                                      bl #0x30eba4
0063b268  00 10 a0 e3                                      mov r1, #0
0063b26c  00 50 a0 e1                                      mov r5, r0
0063b270  48 00 94 e5                                      ldr r0, [r4, #0x48]
0063b274  bc 4e f3 eb                                      bl #0x30ed6c
0063b278  00 10 a0 e1                                      mov r1, r0
0063b27c  05 00 a0 e1                                      mov r0, r5
0063b280  47 4e f3 eb                                      bl #0x30eba4
0063b284  58 10 94 e5                                      ldr r1, [r4, #0x58]
0063b288  45 4e f3 eb                                      bl #0x30eba4
0063b28c  00 10 a0 e3                                      mov r1, #0
0063b290  00 80 a0 e1                                      mov r8, r0
0063b294  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0063b298  b3 4e f3 eb                                      bl #0x30ed6c
0063b29c  00 10 a0 e3                                      mov r1, #0
0063b2a0  00 50 a0 e1                                      mov r5, r0
0063b2a4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0063b2a8  af 4e f3 eb                                      bl #0x30ed6c
0063b2ac  00 10 a0 e1                                      mov r1, r0
0063b2b0  05 00 a0 e1                                      mov r0, r5
0063b2b4  3a 4e f3 eb                                      bl #0x30eba4
0063b2b8  00 10 a0 e3                                      mov r1, #0
0063b2bc  00 50 a0 e1                                      mov r5, r0
0063b2c0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0063b2c4  a8 4e f3 eb                                      bl #0x30ed6c
0063b2c8  00 10 a0 e1                                      mov r1, r0
0063b2cc  05 00 a0 e1                                      mov r0, r5
0063b2d0  33 4e f3 eb                                      bl #0x30eba4
0063b2d4  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0063b2d8  31 4e f3 eb                                      bl #0x30eba4
0063b2dc  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
0063b2e0  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
0063b2e4  00 60 a0 e1                                      mov r6, r0
0063b2e8  00 a0 93 e5                                      ldr sl, [r3]
0063b2ec  04 40 8f e0                                      add r4, pc, r4
0063b2f0  09 10 a0 e1                                      mov r1, sb
0063b2f4  04 a0 84 e5                                      str sl, [r4, #4]
0063b2f8  04 70 93 e5                                      ldr r7, [r3, #4]
0063b2fc  08 70 84 e5                                      str r7, [r4, #8]
0063b300  08 50 93 e5                                      ldr r5, [r3, #8]
0063b304  0c 50 84 e5                                      str r5, [r4, #0xc]
0063b308  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0063b30c  10 00 84 e5                                      str r0, [r4, #0x10]
0063b310  10 b0 93 e5                                      ldr fp, [r3, #0x10]
0063b314  14 b0 84 e5                                      str fp, [r4, #0x14]
0063b318  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063b31c  04 30 8d e5                                      str r3, [sp, #4]
0063b320  21 4c f3 eb                                      bl #0x30e3ac
0063b324  08 10 a0 e1                                      mov r1, r8
0063b328  10 00 84 e5                                      str r0, [r4, #0x10]
0063b32c  0b 00 a0 e1                                      mov r0, fp
0063b330  1d 4c f3 eb                                      bl #0x30e3ac
0063b334  14 00 84 e5                                      str r0, [r4, #0x14]
0063b338  04 30 9d e5                                      ldr r3, [sp, #4]
0063b33c  06 10 a0 e1                                      mov r1, r6
0063b340  03 00 a0 e1                                      mov r0, r3
0063b344  18 4c f3 eb                                      bl #0x30e3ac
0063b348  09 10 a0 e1                                      mov r1, sb
0063b34c  18 00 84 e5                                      str r0, [r4, #0x18]
0063b350  0a 00 a0 e1                                      mov r0, sl
0063b354  14 4c f3 eb                                      bl #0x30e3ac
0063b358  08 10 a0 e1                                      mov r1, r8
0063b35c  04 00 84 e5                                      str r0, [r4, #4]
0063b360  07 00 a0 e1                                      mov r0, r7
0063b364  10 4c f3 eb                                      bl #0x30e3ac
0063b368  06 10 a0 e1                                      mov r1, r6
0063b36c  08 00 84 e5                                      str r0, [r4, #8]
0063b370  05 00 a0 e1                                      mov r0, r5
0063b374  0c 4c f3 eb                                      bl #0x30e3ac
0063b378  0c 00 84 e5                                      str r0, [r4, #0xc]
0063b37c  04 00 84 e2                                      add r0, r4, #4
0063b380  0c d0 8d e2                                      add sp, sp, #0xc
0063b384  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063b388  05 00 a0 e1                                      mov r0, r5
0063b38c  f6 4c f3 eb                                      bl #0x30e76c
0063b390  00 00 50 e3                                      cmp r0, #0
0063b394  95 ff ff 0a                                      beq #0x63b1f0
0063b398  bf 24 a0 e3                                      mov r2, #0xbf000000
0063b39c  02 25 82 e2                                      add r2, r2, #0x800000
0063b3a0  fe 35 a0 e3                                      mov r3, #0x3f800000
0063b3a4  05 00 a0 e1                                      mov r0, r5
0063b3a8  0c 20 85 e5                                      str r2, [r5, #0xc]
0063b3ac  18 30 85 e5                                      str r3, [r5, #0x18]
0063b3b0  04 20 85 e5                                      str r2, [r5, #4]
0063b3b4  08 20 85 e5                                      str r2, [r5, #8]
0063b3b8  10 30 85 e5                                      str r3, [r5, #0x10]
0063b3bc  14 30 85 e5                                      str r3, [r5, #0x14]
0063b3c0  9d 4d f3 eb                                      bl #0x30ea3c
0063b3c4  89 ff ff ea                                      b #0x63b1f0
; mapping-symbol data/literal pool
0063b3c8  68 bd 3b 00 5c bc 3b 00                          .byte 0x68, 0xbd, 0x3b, 0x00, 0x5c, 0xbc, 0x3b, 0x00

; FUNCTION 0x0063b620, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode19onRegisterSceneNodeEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0063b620  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0063b624  78 21 90 e5                                      ldr r2, [r0, #0x178]
0063b628  97 3f 06 e3                                      movw r3, #0x6f97
0063b62c  f9 36 49 e3                                      movt r3, #0x96f9
0063b630  00 10 92 e5                                      ldr r1, [r2]
0063b634  1c d0 4d e2                                      sub sp, sp, #0x1c
0063b638  00 60 a0 e1                                      mov r6, r0
0063b63c  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0063b640  01 20 82 e0                                      add r2, r2, r1
0063b644  24 10 92 e5                                      ldr r1, [r2, #0x24]
0063b648  28 20 92 e5                                      ldr r2, [r2, #0x28]
0063b64c  02 20 61 e0                                      rsb r2, r1, r2
0063b650  42 21 a0 e1                                      asr r2, r2, #2
0063b654  93 02 03 e0                                      mul r3, r3, r2
0063b658  00 00 53 e3                                      cmp r3, #0
0063b65c  15 00 00 0a                                      beq #0x63b6b8
0063b660  10 71 90 e5                                      ldr r7, [r0, #0x110]
0063b664  14 40 8d e2                                      add r4, sp, #0x14
0063b668  04 00 a0 e1                                      mov r0, r4
0063b66c  00 c0 97 e5                                      ldr ip, [r7]
0063b670  06 10 a0 e1                                      mov r1, r6
0063b674  00 20 a0 e3                                      mov r2, #0
0063b678  00 30 96 e5                                      ldr r3, [r6]
0063b67c  24 50 9c e5                                      ldr r5, [ip, #0x24]
0063b680  0f e0 a0 e1                                      mov lr, pc
0063b684  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0063b688  08 20 a0 e3                                      mov r2, #8
0063b68c  00 30 a0 e3                                      mov r3, #0
0063b690  00 20 8d e5                                      str r2, [sp]
0063b694  02 21 e0 e3                                      mvn r2, #0x80000000
0063b698  08 20 8d e5                                      str r2, [sp, #8]
0063b69c  04 30 8d e5                                      str r3, [sp, #4]
0063b6a0  07 00 a0 e1                                      mov r0, r7
0063b6a4  06 10 a0 e1                                      mov r1, r6
0063b6a8  04 20 a0 e1                                      mov r2, r4
0063b6ac  35 ff 2f e1                                      blx r5
0063b6b0  04 00 a0 e1                                      mov r0, r4
0063b6b4  4b 55 f3 eb                                      bl #0x310be8
0063b6b8  01 00 a0 e3                                      mov r0, #1
0063b6bc  1c d0 8d e2                                      add sp, sp, #0x1c
0063b6c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0063ca28, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeD1Ev
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
0063ca28  70 40 2d e9                                      push {r4, r5, r6, lr}
0063ca2c  54 50 9f e5                                      ldr r5, [pc, #0x54]
0063ca30  54 30 9f e5                                      ldr r3, [pc, #0x54]
0063ca34  78 21 90 e5                                      ldr r2, [r0, #0x178]
0063ca38  05 50 8f e0                                      add r5, pc, r5
0063ca3c  03 30 95 e7                                      ldr r3, [r5, r3]
0063ca40  00 00 52 e3                                      cmp r2, #0
0063ca44  00 40 a0 e1                                      mov r4, r0
0063ca48  4e 1f 83 e2                                      add r1, r3, #0x138
0063ca4c  1c 30 83 e2                                      add r3, r3, #0x1c
0063ca50  00 30 80 e5                                      str r3, [r0]
0063ca54  90 11 80 e5                                      str r1, [r0, #0x190]
0063ca58  03 00 00 0a                                      beq #0x63ca6c
0063ca5c  02 00 a0 e1                                      mov r0, r2
0063ca60  00 30 92 e5                                      ldr r3, [r2]
0063ca64  0f e0 a0 e1                                      mov lr, pc
0063ca68  08 f0 93 e5                                      ldr pc, [r3, #8]
0063ca6c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0063ca70  04 00 a0 e1                                      mov r0, r4
0063ca74  01 10 95 e7                                      ldr r1, [r5, r1]
0063ca78  04 10 81 e2                                      add r1, r1, #4
0063ca7c  8d ab 00 eb                                      bl #0x6678b8
0063ca80  04 00 a0 e1                                      mov r0, r4
0063ca84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0063ca88  58 80 35 00 cc 1d 00 00 e4 1d 00 00              .byte 0x58, 0x80, 0x35, 0x00, 0xcc, 0x1d, 0x00, 0x00, 0xe4, 0x1d, 0x00, 0x00

; FUNCTION 0x0063ca94, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeD0Ev
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
0063ca94  10 40 2d e9                                      push {r4, lr}
0063ca98  00 40 a0 e1                                      mov r4, r0
0063ca9c  e1 ff ff eb                                      bl #0x63ca28
0063caa0  04 00 a0 e1                                      mov r0, r4
0063caa4  01 46 f3 eb                                      bl #0x30e2b0
0063caa8  04 00 a0 e1                                      mov r0, r4
0063caac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0063cab0, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeD2Ev
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
0063cab0  70 40 2d e9                                      push {r4, r5, r6, lr}
0063cab4  00 30 91 e5                                      ldr r3, [r1]
0063cab8  01 50 a0 e1                                      mov r5, r1
0063cabc  00 40 a0 e1                                      mov r4, r0
0063cac0  00 30 80 e5                                      str r3, [r0]
0063cac4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0063cac8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0063cacc  03 20 80 e7                                      str r2, [r0, r3]
0063cad0  00 30 90 e5                                      ldr r3, [r0]
0063cad4  20 20 91 e5                                      ldr r2, [r1, #0x20]
0063cad8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063cadc  03 20 80 e7                                      str r2, [r0, r3]
0063cae0  78 31 90 e5                                      ldr r3, [r0, #0x178]
0063cae4  00 00 53 e3                                      cmp r3, #0
0063cae8  03 00 00 0a                                      beq #0x63cafc
0063caec  03 00 a0 e1                                      mov r0, r3
0063caf0  00 30 93 e5                                      ldr r3, [r3]
0063caf4  0f e0 a0 e1                                      mov lr, pc
0063caf8  08 f0 93 e5                                      ldr pc, [r3, #8]
0063cafc  04 10 85 e2                                      add r1, r5, #4
0063cb00  04 00 a0 e1                                      mov r0, r4
0063cb04  6b ab 00 eb                                      bl #0x6678b8
0063cb08  04 00 a0 e1                                      mov r0, r4
0063cb0c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063cb10, declared_size=252, range_size=252, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_12SGNPSEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SGNPSEmitter&, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0063cb10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0063cb14  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
0063cb18  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
0063cb1c  e0 e0 9f e5                                      ldr lr, [pc, #0xe0]
0063cb20  06 60 8f e0                                      add r6, pc, r6
0063cb24  0c c0 96 e7                                      ldr ip, [r6, ip]
0063cb28  0e e0 96 e7                                      ldr lr, [r6, lr]
0063cb2c  01 70 a0 e3                                      mov r7, #1
0063cb30  24 50 9c e5                                      ldr r5, [ip, #0x24]
0063cb34  08 e0 8e e2                                      add lr, lr, #8
0063cb38  94 71 80 e5                                      str r7, [r0, #0x194]
0063cb3c  90 e1 80 e5                                      str lr, [r0, #0x190]
0063cb40  00 50 80 e5                                      str r5, [r0]
0063cb44  0c 50 15 e5                                      ldr r5, [r5, #-0xc]
0063cb48  28 70 9c e5                                      ldr r7, [ip, #0x28]
0063cb4c  0c d0 4d e2                                      sub sp, sp, #0xc
0063cb50  01 e0 a0 e1                                      mov lr, r1
0063cb54  05 70 80 e7                                      str r7, [r0, r5]
0063cb58  04 10 8c e2                                      add r1, ip, #4
0063cb5c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0063cb60  02 50 a0 e1                                      mov r5, r2
0063cb64  0e 20 a0 e1                                      mov r2, lr
0063cb68  00 40 a0 e1                                      mov r4, r0
0063cb6c  00 c0 8d e5                                      str ip, [sp]
0063cb70  c8 ab 00 eb                                      bl #0x667a98
0063cb74  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0063cb78  7c 51 84 e5                                      str r5, [r4, #0x17c]
0063cb7c  04 10 a0 e1                                      mov r1, r4
0063cb80  03 30 96 e7                                      ldr r3, [r6, r3]
0063cb84  54 01 94 e5                                      ldr r0, [r4, #0x154]
0063cb88  4e 2f 83 e2                                      add r2, r3, #0x138
0063cb8c  1c 30 83 e2                                      add r3, r3, #0x1c
0063cb90  90 21 84 e5                                      str r2, [r4, #0x190]
0063cb94  00 30 84 e5                                      str r3, [r4]
0063cb98  3c 30 d5 e5                                      ldrb r3, [r5, #0x3c]
0063cb9c  00 30 53 e2                                      subs r3, r3, #0
0063cba0  01 30 a0 13                                      movne r3, #1
0063cba4  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
0063cba8  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
0063cbac  00 30 53 e2                                      subs r3, r3, #0
0063cbb0  01 30 a0 13                                      movne r3, #1
0063cbb4  3d 31 c4 e5                                      strb r3, [r4, #0x13d]
0063cbb8  80 30 d5 e5                                      ldrb r3, [r5, #0x80]
0063cbbc  00 30 53 e2                                      subs r3, r3, #0
0063cbc0  01 30 a0 13                                      movne r3, #1
0063cbc4  3e 31 c4 e5                                      strb r3, [r4, #0x13e]
0063cbc8  c0 30 d5 e5                                      ldrb r3, [r5, #0xc0]
0063cbcc  00 30 53 e2                                      subs r3, r3, #0
0063cbd0  01 30 a0 13                                      movne r3, #1
0063cbd4  3f 31 c4 e5                                      strb r3, [r4, #0x13f]
0063cbd8  00 30 95 e5                                      ldr r3, [r5]
0063cbdc  30 31 84 e5                                      str r3, [r4, #0x130]
0063cbe0  8a 79 00 eb                                      bl #0x65b210
0063cbe4  04 00 a0 e1                                      mov r0, r4
0063cbe8  02 10 a0 e3                                      mov r1, #2
0063cbec  6a 69 fd eb                                      bl #0x59719c
0063cbf0  04 00 a0 e1                                      mov r0, r4
0063cbf4  0c d0 8d e2                                      add sp, sp, #0xc
0063cbf8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0063cbfc  70 7f 35 00 e4 1d 00 00 44 2b 00 00 cc 1d 00 00  .byte 0x70, 0x7f, 0x35, 0x00, 0xe4, 0x1d, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xcc, 0x1d, 0x00, 0x00

; FUNCTION 0x0063cc0c, declared_size=188, range_size=188, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseERNS0_12SGNPSEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SGNPSEmitter&, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0063cc0c  70 40 2d e9                                      push {r4, r5, r6, lr}
0063cc10  08 d0 4d e2                                      sub sp, sp, #8
0063cc14  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0063cc18  03 50 a0 e1                                      mov r5, r3
0063cc1c  01 60 a0 e1                                      mov r6, r1
0063cc20  18 30 9d e5                                      ldr r3, [sp, #0x18]
0063cc24  04 10 81 e2                                      add r1, r1, #4
0063cc28  00 40 a0 e1                                      mov r4, r0
0063cc2c  00 c0 8d e5                                      str ip, [sp]
0063cc30  98 ab 00 eb                                      bl #0x667a98
0063cc34  00 30 96 e5                                      ldr r3, [r6]
0063cc38  04 10 a0 e1                                      mov r1, r4
0063cc3c  00 30 84 e5                                      str r3, [r4]
0063cc40  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
0063cc44  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0063cc48  03 20 84 e7                                      str r2, [r4, r3]
0063cc4c  00 30 94 e5                                      ldr r3, [r4]
0063cc50  20 20 96 e5                                      ldr r2, [r6, #0x20]
0063cc54  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063cc58  03 20 84 e7                                      str r2, [r4, r3]
0063cc5c  7c 51 84 e5                                      str r5, [r4, #0x17c]
0063cc60  3c 30 d5 e5                                      ldrb r3, [r5, #0x3c]
0063cc64  54 01 94 e5                                      ldr r0, [r4, #0x154]
0063cc68  00 30 53 e2                                      subs r3, r3, #0
0063cc6c  01 30 a0 13                                      movne r3, #1
0063cc70  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
0063cc74  4c 30 d5 e5                                      ldrb r3, [r5, #0x4c]
0063cc78  00 30 53 e2                                      subs r3, r3, #0
0063cc7c  01 30 a0 13                                      movne r3, #1
0063cc80  3d 31 c4 e5                                      strb r3, [r4, #0x13d]
0063cc84  80 30 d5 e5                                      ldrb r3, [r5, #0x80]
0063cc88  00 30 53 e2                                      subs r3, r3, #0
0063cc8c  01 30 a0 13                                      movne r3, #1
0063cc90  3e 31 c4 e5                                      strb r3, [r4, #0x13e]
0063cc94  c0 30 d5 e5                                      ldrb r3, [r5, #0xc0]
0063cc98  00 30 53 e2                                      subs r3, r3, #0
0063cc9c  01 30 a0 13                                      movne r3, #1
0063cca0  3f 31 c4 e5                                      strb r3, [r4, #0x13f]
0063cca4  00 30 95 e5                                      ldr r3, [r5]
0063cca8  30 31 84 e5                                      str r3, [r4, #0x130]
0063ccac  57 79 00 eb                                      bl #0x65b210
0063ccb0  04 00 a0 e1                                      mov r0, r4
0063ccb4  02 10 a0 e3                                      mov r1, #2
0063ccb8  37 69 fd eb                                      bl #0x59719c
0063ccbc  04 00 a0 e1                                      mov r0, r4
0063ccc0  08 d0 8d e2                                      add sp, sp, #8
0063ccc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0063db4c, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0063db4c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0063db50  50 31 90 e5                                      ldr r3, [r0, #0x150]
0063db54  59 8f 80 e2                                      add r8, r0, #0x164
0063db58  08 d0 4d e2                                      sub sp, sp, #8
0063db5c  00 50 93 e5                                      ldr r5, [r3]
0063db60  00 40 a0 e1                                      mov r4, r0
0063db64  01 60 a0 e1                                      mov r6, r1
0063db68  08 00 a0 e1                                      mov r0, r8
0063db6c  05 10 a0 e1                                      mov r1, r5
0063db70  e7 f2 ff eb                                      bl #0x63a714
0063db74  00 70 a0 e3                                      mov r7, #0
0063db78  08 20 8d e2                                      add r2, sp, #8
0063db7c  04 70 22 e5                                      str r7, [r2, #-4]!
0063db80  08 00 a0 e1                                      mov r0, r8
0063db84  05 10 a0 e1                                      mov r1, r5
0063db88  de ff ff eb                                      bl #0x63db08
0063db8c  07 00 55 e1                                      cmp r5, r7
0063db90  27 00 00 da                                      ble #0x63dc34
0063db94  64 91 06 e3                                      movw sb, #0x6164
0063db98  65 96 46 e3                                      movt sb, #0x6665
0063db9c  50 31 94 e5                                      ldr r3, [r4, #0x150]
0063dba0  06 00 a0 e1                                      mov r0, r6
0063dba4  04 30 93 e5                                      ldr r3, [r3, #4]
0063dba8  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
0063dbac  01 10 81 e2                                      add r1, r1, #1
0063dbb0  8b 6a fd eb                                      bl #0x5985e4
0063dbb4  00 a0 50 e2                                      subs sl, r0, #0
0063dbb8  1a 00 00 0a                                      beq #0x63dc28
0063dbbc  f4 80 ba e5                                      ldr r8, [sl, #0xf4]!
0063dbc0  0a 00 58 e1                                      cmp r8, sl
0063dbc4  03 00 00 1a                                      bne #0x63dbd8
0063dbc8  16 00 00 ea                                      b #0x63dc28
0063dbcc  00 80 98 e5                                      ldr r8, [r8]
0063dbd0  08 00 5a e1                                      cmp sl, r8
0063dbd4  13 00 00 0a                                      beq #0x63dc28
0063dbd8  00 00 58 e3                                      cmp r8, #0
0063dbdc  08 30 a0 01                                      moveq r3, r8
0063dbe0  04 30 48 12                                      subne r3, r8, #4
0063dbe4  03 00 a0 e1                                      mov r0, r3
0063dbe8  00 30 93 e5                                      ldr r3, [r3]
0063dbec  0f e0 a0 e1                                      mov lr, pc
0063dbf0  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0063dbf4  09 00 50 e1                                      cmp r0, sb
0063dbf8  f3 ff ff 1a                                      bne #0x63dbcc
0063dbfc  00 00 58 e3                                      cmp r8, #0
0063dc00  08 30 a0 01                                      moveq r3, r8
0063dc04  04 30 48 12                                      subne r3, r8, #4
0063dc08  03 00 a0 e1                                      mov r0, r3
0063dc0c  04 10 a0 e1                                      mov r1, r4
0063dc10  00 30 93 e5                                      ldr r3, [r3]
0063dc14  0f e0 a0 e1                                      mov lr, pc
0063dc18  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0063dc1c  00 80 98 e5                                      ldr r8, [r8]
0063dc20  08 00 5a e1                                      cmp sl, r8
0063dc24  eb ff ff 1a                                      bne #0x63dbd8
0063dc28  01 70 87 e2                                      add r7, r7, #1
0063dc2c  05 00 57 e1                                      cmp r7, r5
0063dc30  d9 ff ff 1a                                      bne #0x63db9c
0063dc34  08 d0 8d e2                                      add sp, sp, #8
0063dc38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0063dcc0, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode18deleteSharedBufferEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer()
; decoder-mode: arm
0063dcc0  10 40 2d e9                                      push {r4, lr}
0063dcc4  54 40 9f e5                                      ldr r4, [pc, #0x54]
0063dcc8  54 30 9f e5                                      ldr r3, [pc, #0x54]
0063dccc  00 20 a0 e3                                      mov r2, #0
0063dcd0  04 40 8f e0                                      add r4, pc, r4
0063dcd4  03 30 94 e7                                      ldr r3, [r4, r3]
0063dcd8  00 00 93 e5                                      ldr r0, [r3]
0063dcdc  00 20 83 e5                                      str r2, [r3]
0063dce0  02 00 50 e1                                      cmp r0, r2
0063dce4  00 00 00 0a                                      beq #0x63dcec
0063dce8  25 7e f3 eb                                      bl #0x31d584
0063dcec  34 30 9f e5                                      ldr r3, [pc, #0x34]
0063dcf0  00 20 a0 e3                                      mov r2, #0
0063dcf4  03 30 94 e7                                      ldr r3, [r4, r3]
0063dcf8  00 00 93 e5                                      ldr r0, [r3]
0063dcfc  00 20 83 e5                                      str r2, [r3]
0063dd00  02 00 50 e1                                      cmp r0, r2
0063dd04  00 00 00 0a                                      beq #0x63dd0c
0063dd08  1d 7e f3 eb                                      bl #0x31d584
0063dd0c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0063dd10  00 20 a0 e3                                      mov r2, #0
0063dd14  03 30 94 e7                                      ldr r3, [r4, r3]
0063dd18  00 20 83 e5                                      str r2, [r3]
0063dd1c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0063dd20  c0 6d 35 00 38 06 00 00 e4 0b 00 00 90 0f 00 00  .byte 0xc0, 0x6d, 0x35, 0x00, 0x38, 0x06, 0x00, 0x00, 0xe4, 0x0b, 0x00, 0x00, 0x90, 0x0f, 0x00, 0x00

; FUNCTION 0x0063f07c, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode26getParticleSystemParameterEPKc
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::getParticleSystemParameter(char const*)
; decoder-mode: arm
0063f07c  30 40 2d e9                                      push {r4, r5, lr}
0063f080  78 31 90 e5                                      ldr r3, [r0, #0x178]
0063f084  14 d0 4d e2                                      sub sp, sp, #0x14
0063f088  00 20 93 e5                                      ldr r2, [r3]
0063f08c  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
0063f090  05 50 83 e0                                      add r5, r3, r5
0063f094  05 00 a0 e1                                      mov r0, r5
0063f098  eb f0 ff eb                                      bl #0x63b44c
0063f09c  34 c0 95 e5                                      ldr ip, [r5, #0x34]
0063f0a0  30 10 85 e2                                      add r1, r5, #0x30
0063f0a4  00 40 a0 e1                                      mov r4, r0
0063f0a8  00 00 5c e3                                      cmp ip, #0
0063f0ac  01 c0 a0 01                                      moveq ip, r1
0063f0b0  0a 00 00 0a                                      beq #0x63f0e0
0063f0b4  01 20 a0 e1                                      mov r2, r1
0063f0b8  00 00 00 ea                                      b #0x63f0c0
0063f0bc  03 c0 a0 e1                                      mov ip, r3
0063f0c0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063f0c4  03 00 54 e1                                      cmp r4, r3
0063f0c8  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063f0cc  08 30 9c 95                                      ldrls r3, [ip, #8]
0063f0d0  02 c0 a0 81                                      movhi ip, r2
0063f0d4  0c 20 a0 e1                                      mov r2, ip
0063f0d8  00 00 53 e3                                      cmp r3, #0
0063f0dc  f6 ff ff 1a                                      bne #0x63f0bc
0063f0e0  0c 00 51 e1                                      cmp r1, ip
0063f0e4  03 00 00 0a                                      beq #0x63f0f8
0063f0e8  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063f0ec  0c 30 a0 e1                                      mov r3, ip
0063f0f0  02 00 54 e1                                      cmp r4, r2
0063f0f4  07 00 00 2a                                      bhs #0x63f118
0063f0f8  0d 30 a0 e1                                      mov r3, sp
0063f0fc  00 e0 a0 e3                                      mov lr, #0
0063f100  08 00 8d e2                                      add r0, sp, #8
0063f104  0c 20 8d e2                                      add r2, sp, #0xc
0063f108  10 40 8d e8                                      stm sp, {r4, lr}
0063f10c  0c c0 8d e5                                      str ip, [sp, #0xc]
0063f110  57 ee ff eb                                      bl #0x63aa74
0063f114  08 30 9d e5                                      ldr r3, [sp, #8]
0063f118  14 00 93 e5                                      ldr r0, [r3, #0x14]
0063f11c  14 d0 8d e2                                      add sp, sp, #0x14
0063f120  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0063f1c8, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode15setParticleMeshEN5boost13intrusive_ptrINS_5scene11CMeshBufferEEE
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::setParticleMesh(boost::intrusive_ptr<glitch::scene::CMeshBuffer>)
; decoder-mode: arm
0063f1c8  10 40 2d e9                                      push {r4, lr}
0063f1cc  00 10 91 e5                                      ldr r1, [r1]
0063f1d0  00 40 a0 e1                                      mov r4, r0
0063f1d4  00 00 51 e3                                      cmp r1, #0
0063f1d8  04 30 91 15                                      ldrne r3, [r1, #4]
0063f1dc  01 30 83 12                                      addne r3, r3, #1
0063f1e0  04 30 81 15                                      strne r3, [r1, #4]
0063f1e4  40 01 90 e5                                      ldr r0, [r0, #0x140]
0063f1e8  40 11 84 e5                                      str r1, [r4, #0x140]
0063f1ec  00 00 50 e3                                      cmp r0, #0
0063f1f0  01 00 00 0a                                      beq #0x63f1fc
0063f1f4  e2 78 f3 eb                                      bl #0x31d584
0063f1f8  40 11 94 e5                                      ldr r1, [r4, #0x140]
0063f1fc  78 31 94 e5                                      ldr r3, [r4, #0x178]
0063f200  00 20 93 e5                                      ldr r2, [r3]
0063f204  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0063f208  00 00 83 e0                                      add r0, r3, r0
0063f20c  10 40 bd e8                                      pop {r4, lr}
0063f210  c3 ff ff ea                                      b #0x63f124

; FUNCTION 0x0063f214, declared_size=1668, range_size=1668, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode4initEv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::init()
; decoder-mode: arm
0063f214  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0063f218  38 b6 9f e5                                      ldr fp, [pc, #0x638]
0063f21c  38 16 9f e5                                      ldr r1, [pc, #0x638]
0063f220  a4 d0 4d e2                                      sub sp, sp, #0xa4
0063f224  0b b0 8f e0                                      add fp, pc, fp
0063f228  01 30 9b e7                                      ldr r3, [fp, r1]
0063f22c  08 10 8d e5                                      str r1, [sp, #8]
0063f230  58 41 90 e5                                      ldr r4, [r0, #0x158]
0063f234  5c 71 90 e5                                      ldr r7, [r0, #0x15c]
0063f238  00 30 93 e5                                      ldr r3, [r3]
0063f23c  00 50 a0 e1                                      mov r5, r0
0063f240  07 00 54 e1                                      cmp r4, r7
0063f244  9c 30 8d e5                                      str r3, [sp, #0x9c]
0063f248  4d 9f 80 02                                      addeq sb, r0, #0x134
0063f24c  27 00 00 0a                                      beq #0x63f2f0
0063f250  08 36 9f e5                                      ldr r3, [pc, #0x608]
0063f254  08 26 9f e5                                      ldr r2, [pc, #0x608]
0063f258  4d 9f 80 e2                                      add sb, r0, #0x134
0063f25c  03 30 8f e0                                      add r3, pc, r3
0063f260  14 30 8d e5                                      str r3, [sp, #0x14]
0063f264  fc 35 9f e5                                      ldr r3, [pc, #0x5fc]
0063f268  10 20 8d e5                                      str r2, [sp, #0x10]
0063f26c  03 30 8f e0                                      add r3, pc, r3
0063f270  18 30 8d e5                                      str r3, [sp, #0x18]
0063f274  f0 35 9f e5                                      ldr r3, [pc, #0x5f0]
0063f278  03 30 8f e0                                      add r3, pc, r3
0063f27c  20 30 8d e5                                      str r3, [sp, #0x20]
0063f280  e8 35 9f e5                                      ldr r3, [pc, #0x5e8]
0063f284  03 30 8f e0                                      add r3, pc, r3
0063f288  1c 30 8d e5                                      str r3, [sp, #0x1c]
0063f28c  00 30 94 e5                                      ldr r3, [r4]
0063f290  00 20 a0 e3                                      mov r2, #0
0063f294  06 10 a0 e3                                      mov r1, #6
0063f298  1c 80 93 e5                                      ldr r8, [r3, #0x1c]
0063f29c  04 00 93 e5                                      ldr r0, [r3, #4]
0063f2a0  00 00 58 e3                                      cmp r8, #0
0063f2a4  04 80 88 12                                      addne r8, r8, #4
0063f2a8  16 3f fe eb                                      bl #0x5cef08
0063f2ac  00 30 94 e5                                      ldr r3, [r4]
0063f2b0  00 60 a0 e1                                      mov r6, r0
0063f2b4  04 30 93 e5                                      ldr r3, [r3, #4]
0063f2b8  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
0063f2bc  00 00 52 e1                                      cmp r2, r0
0063f2c0  20 a0 93 85                                      ldrhi sl, [r3, #0x20]
0063f2c4  34 31 95 e5                                      ldr r3, [r5, #0x134]
0063f2c8  00 a0 a0 93                                      movls sl, #0
0063f2cc  00 a2 8a 80                                      addhi sl, sl, r0, lsl #4
0063f2d0  24 20 93 e5                                      ldr r2, [r3, #0x24]
0063f2d4  20 20 92 e5                                      ldr r2, [r2, #0x20]
0063f2d8  04 20 92 e5                                      ldr r2, [r2, #4]
0063f2dc  00 00 52 e3                                      cmp r2, #0
0063f2e0  cd 00 00 0a                                      beq #0x63f61c
0063f2e4  04 40 84 e2                                      add r4, r4, #4
0063f2e8  07 00 54 e1                                      cmp r4, r7
0063f2ec  e6 ff ff 1a                                      bne #0x63f28c
0063f2f0  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
0063f2f4  84 60 8d e2                                      add r6, sp, #0x84
0063f2f8  6c 40 8d e2                                      add r4, sp, #0x6c
0063f2fc  00 70 93 e5                                      ldr r7, [r3]
0063f300  94 60 8d e5                                      str r6, [sp, #0x94]
0063f304  98 60 8d e5                                      str r6, [sp, #0x98]
0063f308  07 00 a0 e1                                      mov r0, r7
0063f30c  d0 3a f3 eb                                      bl #0x30de54
0063f310  07 10 a0 e1                                      mov r1, r7
0063f314  00 20 87 e0                                      add r2, r7, r0
0063f318  06 00 a0 e1                                      mov r0, r6
0063f31c  34 9b f3 eb                                      bl #0x325ff4
0063f320  04 00 a0 e1                                      mov r0, r4
0063f324  98 10 9d e5                                      ldr r1, [sp, #0x98]
0063f328  94 20 9d e5                                      ldr r2, [sp, #0x94]
0063f32c  7c 40 8d e5                                      str r4, [sp, #0x7c]
0063f330  80 40 8d e5                                      str r4, [sp, #0x80]
0063f334  2e 9b f3 eb                                      bl #0x325ff4
0063f338  34 15 9f e5                                      ldr r1, [pc, #0x534]
0063f33c  04 00 a0 e1                                      mov r0, r4
0063f340  01 10 8f e0                                      add r1, pc, r1
0063f344  14 20 81 e2                                      add r2, r1, #0x14
0063f348  bf 85 f3 eb                                      bl #0x320a4c
0063f34c  14 10 90 e5                                      ldr r1, [r0, #0x14]
0063f350  09 00 a0 e1                                      mov r0, sb
0063f354  e7 72 ff eb                                      bl #0x61bef8
0063f358  00 20 50 e2                                      subs r2, r0, #0
0063f35c  06 00 00 0a                                      beq #0x63f37c
0063f360  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f364  0c 15 9f e5                                      ldr r1, [pc, #0x50c]
0063f368  00 00 93 e5                                      ldr r0, [r3]
0063f36c  01 10 8f e0                                      add r1, pc, r1
0063f370  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0063f374  00 00 83 e0                                      add r0, r3, r0
0063f378  6b fe ff eb                                      bl #0x63ed2c
0063f37c  98 10 9d e5                                      ldr r1, [sp, #0x98]
0063f380  94 20 9d e5                                      ldr r2, [sp, #0x94]
0063f384  04 00 a0 e1                                      mov r0, r4
0063f388  fe 85 f3 eb                                      bl #0x320b88
0063f38c  e8 14 9f e5                                      ldr r1, [pc, #0x4e8]
0063f390  04 00 a0 e1                                      mov r0, r4
0063f394  01 10 8f e0                                      add r1, pc, r1
0063f398  15 20 81 e2                                      add r2, r1, #0x15
0063f39c  aa 85 f3 eb                                      bl #0x320a4c
0063f3a0  14 10 90 e5                                      ldr r1, [r0, #0x14]
0063f3a4  09 00 a0 e1                                      mov r0, sb
0063f3a8  d2 72 ff eb                                      bl #0x61bef8
0063f3ac  00 20 50 e2                                      subs r2, r0, #0
0063f3b0  06 00 00 0a                                      beq #0x63f3d0
0063f3b4  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f3b8  c0 14 9f e5                                      ldr r1, [pc, #0x4c0]
0063f3bc  00 00 93 e5                                      ldr r0, [r3]
0063f3c0  01 10 8f e0                                      add r1, pc, r1
0063f3c4  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0063f3c8  00 00 83 e0                                      add r0, r3, r0
0063f3cc  56 fe ff eb                                      bl #0x63ed2c
0063f3d0  98 10 9d e5                                      ldr r1, [sp, #0x98]
0063f3d4  94 20 9d e5                                      ldr r2, [sp, #0x94]
0063f3d8  04 00 a0 e1                                      mov r0, r4
0063f3dc  e9 85 f3 eb                                      bl #0x320b88
0063f3e0  9c 14 9f e5                                      ldr r1, [pc, #0x49c]
0063f3e4  04 00 a0 e1                                      mov r0, r4
0063f3e8  01 10 8f e0                                      add r1, pc, r1
0063f3ec  0b 20 81 e2                                      add r2, r1, #0xb
0063f3f0  95 85 f3 eb                                      bl #0x320a4c
0063f3f4  14 10 90 e5                                      ldr r1, [r0, #0x14]
0063f3f8  09 00 a0 e1                                      mov r0, sb
0063f3fc  bd 72 ff eb                                      bl #0x61bef8
0063f400  00 20 50 e2                                      subs r2, r0, #0
0063f404  06 00 00 0a                                      beq #0x63f424
0063f408  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f40c  74 14 9f e5                                      ldr r1, [pc, #0x474]
0063f410  00 00 93 e5                                      ldr r0, [r3]
0063f414  01 10 8f e0                                      add r1, pc, r1
0063f418  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0063f41c  00 00 83 e0                                      add r0, r3, r0
0063f420  41 fe ff eb                                      bl #0x63ed2c
0063f424  98 10 9d e5                                      ldr r1, [sp, #0x98]
0063f428  94 20 9d e5                                      ldr r2, [sp, #0x94]
0063f42c  04 00 a0 e1                                      mov r0, r4
0063f430  d4 85 f3 eb                                      bl #0x320b88
0063f434  50 14 9f e5                                      ldr r1, [pc, #0x450]
0063f438  04 00 a0 e1                                      mov r0, r4
0063f43c  01 10 8f e0                                      add r1, pc, r1
0063f440  14 20 81 e2                                      add r2, r1, #0x14
0063f444  80 85 f3 eb                                      bl #0x320a4c
0063f448  14 10 90 e5                                      ldr r1, [r0, #0x14]
0063f44c  09 00 a0 e1                                      mov r0, sb
0063f450  a8 72 ff eb                                      bl #0x61bef8
0063f454  00 20 50 e2                                      subs r2, r0, #0
0063f458  06 00 00 0a                                      beq #0x63f478
0063f45c  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f460  28 14 9f e5                                      ldr r1, [pc, #0x428]
0063f464  00 00 93 e5                                      ldr r0, [r3]
0063f468  01 10 8f e0                                      add r1, pc, r1
0063f46c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0063f470  00 00 83 e0                                      add r0, r3, r0
0063f474  2c fe ff eb                                      bl #0x63ed2c
0063f478  64 70 8d e2                                      add r7, sp, #0x64
0063f47c  07 00 a0 e1                                      mov r0, r7
0063f480  05 10 a0 e1                                      mov r1, r5
0063f484  00 20 a0 e3                                      mov r2, #0
0063f488  00 30 95 e5                                      ldr r3, [r5]
0063f48c  0f e0 a0 e1                                      mov lr, pc
0063f490  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0063f494  64 30 9d e5                                      ldr r3, [sp, #0x64]
0063f498  06 10 a0 e3                                      mov r1, #6
0063f49c  00 20 a0 e3                                      mov r2, #0
0063f4a0  04 00 93 e5                                      ldr r0, [r3, #4]
0063f4a4  97 3e fe eb                                      bl #0x5cef08
0063f4a8  74 01 85 e5                                      str r0, [r5, #0x174]
0063f4ac  07 00 a0 e1                                      mov r0, r7
0063f4b0  cc 45 f3 eb                                      bl #0x310be8
0063f4b4  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f4b8  60 80 8d e2                                      add r8, sp, #0x60
0063f4bc  08 00 a0 e1                                      mov r0, r8
0063f4c0  00 c0 93 e5                                      ldr ip, [r3]
0063f4c4  05 10 a0 e1                                      mov r1, r5
0063f4c8  00 20 a0 e3                                      mov r2, #0
0063f4cc  0c 70 1c e5                                      ldr r7, [ip, #-0xc]
0063f4d0  00 c0 95 e5                                      ldr ip, [r5]
0063f4d4  07 70 83 e0                                      add r7, r3, r7
0063f4d8  0f e0 a0 e1                                      mov lr, pc
0063f4dc  84 f0 9c e5                                      ldr pc, [ip, #0x84]
0063f4e0  ac 13 9f e5                                      ldr r1, [pc, #0x3ac]
0063f4e4  07 00 a0 e1                                      mov r0, r7
0063f4e8  01 10 8f e0                                      add r1, pc, r1
0063f4ec  d6 ef ff eb                                      bl #0x63b44c
0063f4f0  34 c0 97 e5                                      ldr ip, [r7, #0x34]
0063f4f4  30 10 87 e2                                      add r1, r7, #0x30
0063f4f8  00 e0 a0 e1                                      mov lr, r0
0063f4fc  00 00 5c e3                                      cmp ip, #0
0063f500  01 c0 a0 01                                      moveq ip, r1
0063f504  0a 00 00 0a                                      beq #0x63f534
0063f508  01 20 a0 e1                                      mov r2, r1
0063f50c  01 00 00 ea                                      b #0x63f518
0063f510  0c 20 a0 e1                                      mov r2, ip
0063f514  03 c0 a0 e1                                      mov ip, r3
0063f518  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063f51c  03 00 5e e1                                      cmp lr, r3
0063f520  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063f524  08 30 9c 95                                      ldrls r3, [ip, #8]
0063f528  02 c0 a0 81                                      movhi ip, r2
0063f52c  00 00 53 e3                                      cmp r3, #0
0063f530  f6 ff ff 1a                                      bne #0x63f510
0063f534  0c 00 51 e1                                      cmp r1, ip
0063f538  2d 00 00 0a                                      beq #0x63f5f4
0063f53c  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063f540  0c 30 a0 e1                                      mov r3, ip
0063f544  02 00 5e e1                                      cmp lr, r2
0063f548  29 00 00 3a                                      blo #0x63f5f4
0063f54c  14 20 93 e5                                      ldr r2, [r3, #0x14]
0063f550  00 00 52 e3                                      cmp r2, #0
0063f554  0b 00 00 0a                                      beq #0x63f588
0063f558  60 30 9d e5                                      ldr r3, [sp, #0x60]
0063f55c  a0 00 8d e2                                      add r0, sp, #0xa0
0063f560  54 30 8d e5                                      str r3, [sp, #0x54]
0063f564  00 00 53 e3                                      cmp r3, #0
0063f568  00 10 93 15                                      ldrne r1, [r3]
0063f56c  01 10 81 12                                      addne r1, r1, #1
0063f570  00 10 83 15                                      strne r1, [r3]
0063f574  54 30 9d 15                                      ldrne r3, [sp, #0x54]
0063f578  00 10 92 e5                                      ldr r1, [r2]
0063f57c  4c 10 20 e5                                      str r1, [r0, #-0x4c]!
0063f580  00 30 82 e5                                      str r3, [r2]
0063f584  97 45 f3 eb                                      bl #0x310be8
0063f588  08 00 a0 e1                                      mov r0, r8
0063f58c  95 45 f3 eb                                      bl #0x310be8
0063f590  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f594  03 00 a0 e1                                      mov r0, r3
0063f598  00 30 93 e5                                      ldr r3, [r3]
0063f59c  0f e0 a0 e1                                      mov lr, pc
0063f5a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0063f5a4  80 00 9d e5                                      ldr r0, [sp, #0x80]
0063f5a8  04 00 50 e1                                      cmp r0, r4
0063f5ac  02 00 00 0a                                      beq #0x63f5bc
0063f5b0  00 00 50 e3                                      cmp r0, #0
0063f5b4  00 00 00 0a                                      beq #0x63f5bc
0063f5b8  a4 43 f3 eb                                      bl #0x310450
0063f5bc  98 00 9d e5                                      ldr r0, [sp, #0x98]
0063f5c0  06 00 50 e1                                      cmp r0, r6
0063f5c4  02 00 00 0a                                      beq #0x63f5d4
0063f5c8  00 00 50 e3                                      cmp r0, #0
0063f5cc  00 00 00 0a                                      beq #0x63f5d4
0063f5d0  9e 43 f3 eb                                      bl #0x310450
0063f5d4  08 10 9d e5                                      ldr r1, [sp, #8]
0063f5d8  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0063f5dc  01 30 9b e7                                      ldr r3, [fp, r1]
0063f5e0  00 30 93 e5                                      ldr r3, [r3]
0063f5e4  03 00 52 e1                                      cmp r2, r3
0063f5e8  99 00 00 1a                                      bne #0x63f854
0063f5ec  a4 d0 8d e2                                      add sp, sp, #0xa4
0063f5f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0063f5f4  3c 30 8d e2                                      add r3, sp, #0x3c
0063f5f8  3c e0 8d e5                                      str lr, [sp, #0x3c]
0063f5fc  4c 00 8d e2                                      add r0, sp, #0x4c
0063f600  00 e0 a0 e3                                      mov lr, #0
0063f604  50 20 8d e2                                      add r2, sp, #0x50
0063f608  40 e0 8d e5                                      str lr, [sp, #0x40]
0063f60c  50 c0 8d e5                                      str ip, [sp, #0x50]
0063f610  17 ed ff eb                                      bl #0x63aa74
0063f614  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0063f618  cb ff ff ea                                      b #0x63f54c
0063f61c  38 21 95 e5                                      ldr r2, [r5, #0x138]
0063f620  00 00 53 e3                                      cmp r3, #0
0063f624  2c 30 8d e5                                      str r3, [sp, #0x2c]
0063f628  30 20 8d e5                                      str r2, [sp, #0x30]
0063f62c  04 00 00 0a                                      beq #0x63f644
0063f630  04 20 93 e5                                      ldr r2, [r3, #4]
0063f634  00 00 52 e3                                      cmp r2, #0
0063f638  01 20 82 12                                      addne r2, r2, #1
0063f63c  04 20 83 15                                      strne r2, [r3, #4]
0063f640  34 31 95 15                                      ldrne r3, [r5, #0x134]
0063f644  00 10 a0 e3                                      mov r1, #0
0063f648  34 10 8d e5                                      str r1, [sp, #0x34]
0063f64c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0063f650  20 00 93 e5                                      ldr r0, [r3, #0x20]
0063f654  34 30 90 e5                                      ldr r3, [r0, #0x34]
0063f658  01 00 53 e1                                      cmp r3, r1
0063f65c  18 00 80 02                                      addeq r0, r0, #0x18
0063f660  34 00 8d 05                                      streq r0, [sp, #0x34]
0063f664  68 00 00 1a                                      bne #0x63f80c
0063f668  10 10 9d e5                                      ldr r1, [sp, #0x10]
0063f66c  08 10 90 e9                                      ldmib r0, {r3, ip}
0063f670  01 20 9b e7                                      ldr r2, [fp, r1]
0063f674  c3 3f c3 e1                                      bic r3, r3, r3, asr #31
0063f678  0c 00 53 e1                                      cmp r3, ip
0063f67c  38 30 8d d5                                      strle r3, [sp, #0x38]
0063f680  38 c0 8d c5                                      strgt ip, [sp, #0x38]
0063f684  2c 10 8d e2                                      add r1, sp, #0x2c
0063f688  00 00 92 e5                                      ldr r0, [r2]
0063f68c  00 30 a0 e3                                      mov r3, #0
0063f690  68 20 8d e2                                      add r2, sp, #0x68
0063f694  0c 10 8d e5                                      str r1, [sp, #0xc]
0063f698  68 30 8d e5                                      str r3, [sp, #0x68]
0063f69c  be 33 ff eb                                      bl #0x60c59c
0063f6a0  68 20 9d e5                                      ldr r2, [sp, #0x68]
0063f6a4  00 00 52 e3                                      cmp r2, #0
0063f6a8  2f 00 00 0a                                      beq #0x63f76c
0063f6ac  14 00 92 e5                                      ldr r0, [r2, #0x14]
0063f6b0  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f6b4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0063f6b8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0063f6bc  00 20 93 e5                                      ldr r2, [r3]
0063f6c0  24 00 8d e5                                      str r0, [sp, #0x24]
0063f6c4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0063f6c8  02 30 83 e0                                      add r3, r3, r2
0063f6cc  03 00 a0 e1                                      mov r0, r3
0063f6d0  04 30 8d e5                                      str r3, [sp, #4]
0063f6d4  5c ef ff eb                                      bl #0x63b44c
0063f6d8  04 30 9d e5                                      ldr r3, [sp, #4]
0063f6dc  00 e0 a0 e1                                      mov lr, r0
0063f6e0  34 c0 93 e5                                      ldr ip, [r3, #0x34]
0063f6e4  30 10 83 e2                                      add r1, r3, #0x30
0063f6e8  00 00 5c e3                                      cmp ip, #0
0063f6ec  01 c0 a0 01                                      moveq ip, r1
0063f6f0  0a 00 00 0a                                      beq #0x63f720
0063f6f4  01 00 a0 e1                                      mov r0, r1
0063f6f8  01 00 00 ea                                      b #0x63f704
0063f6fc  0c 00 a0 e1                                      mov r0, ip
0063f700  03 c0 a0 e1                                      mov ip, r3
0063f704  10 30 9c e5                                      ldr r3, [ip, #0x10]
0063f708  03 00 5e e1                                      cmp lr, r3
0063f70c  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0063f710  08 30 9c 95                                      ldrls r3, [ip, #8]
0063f714  00 c0 a0 81                                      movhi ip, r0
0063f718  00 00 53 e3                                      cmp r3, #0
0063f71c  f6 ff ff 1a                                      bne #0x63f6fc
0063f720  0c 00 51 e1                                      cmp r1, ip
0063f724  03 00 00 0a                                      beq #0x63f738
0063f728  10 20 9c e5                                      ldr r2, [ip, #0x10]
0063f72c  0c 30 a0 e1                                      mov r3, ip
0063f730  02 00 5e e1                                      cmp lr, r2
0063f734  08 00 00 2a                                      bhs #0x63f75c
0063f738  44 30 8d e2                                      add r3, sp, #0x44
0063f73c  44 e0 8d e5                                      str lr, [sp, #0x44]
0063f740  58 00 8d e2                                      add r0, sp, #0x58
0063f744  00 e0 a0 e3                                      mov lr, #0
0063f748  5c 20 8d e2                                      add r2, sp, #0x5c
0063f74c  48 e0 8d e5                                      str lr, [sp, #0x48]
0063f750  5c c0 8d e5                                      str ip, [sp, #0x5c]
0063f754  c6 ec ff eb                                      bl #0x63aa74
0063f758  58 30 9d e5                                      ldr r3, [sp, #0x58]
0063f75c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063f760  00 00 53 e3                                      cmp r3, #0
0063f764  24 20 9d 15                                      ldrne r2, [sp, #0x24]
0063f768  00 20 83 15                                      strne r2, [r3]
0063f76c  ff 3f 0f e3                                      movw r3, #0xffff
0063f770  03 00 56 e1                                      cmp r6, r3
0063f774  28 00 00 0a                                      beq #0x63f81c
0063f778  00 30 9a e5                                      ldr r3, [sl]
0063f77c  56 20 a0 e3                                      mov r2, #0x56
0063f780  09 00 a0 e1                                      mov r0, sb
0063f784  00 00 53 e3                                      cmp r3, #0
0063f788  04 30 83 12                                      addne r3, r3, #4
0063f78c  08 10 a0 e1                                      mov r1, r8
0063f790  61 74 ff eb                                      bl #0x61c91c
0063f794  00 20 50 e2                                      subs r2, r0, #0
0063f798  1f 00 00 0a                                      beq #0x63f81c
0063f79c  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f7a0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0063f7a4  00 00 93 e5                                      ldr r0, [r3]
0063f7a8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0063f7ac  00 00 83 e0                                      add r0, r3, r0
0063f7b0  5d fd ff eb                                      bl #0x63ed2c
0063f7b4  08 10 a0 e1                                      mov r1, r8
0063f7b8  01 2c a0 e3                                      mov r2, #0x100
0063f7bc  ff 30 a0 e3                                      mov r3, #0xff
0063f7c0  09 00 a0 e1                                      mov r0, sb
0063f7c4  3f 72 ff eb                                      bl #0x61c0c8
0063f7c8  78 31 95 e5                                      ldr r3, [r5, #0x178]
0063f7cc  00 10 50 e2                                      subs r1, r0, #0
0063f7d0  01 10 a0 13                                      movne r1, #1
0063f7d4  70 11 c5 e5                                      strb r1, [r5, #0x170]
0063f7d8  00 c0 93 e5                                      ldr ip, [r3]
0063f7dc  00 20 a0 e1                                      mov r2, r0
0063f7e0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0063f7e4  0c 00 1c e5                                      ldr r0, [ip, #-0xc]
0063f7e8  00 00 83 e0                                      add r0, r3, r0
0063f7ec  4e fd ff eb                                      bl #0x63ed2c
0063f7f0  68 00 9d e5                                      ldr r0, [sp, #0x68]
0063f7f4  00 00 50 e3                                      cmp r0, #0
0063f7f8  00 00 00 0a                                      beq #0x63f800
0063f7fc  f4 30 ff eb                                      bl #0x60bbd4
0063f800  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0063f804  1a 67 ff eb                                      bl #0x619474
0063f808  b5 fe ff ea                                      b #0x63f2e4
0063f80c  09 00 a0 e1                                      mov r0, sb
0063f810  d7 3a ff eb                                      bl #0x60e374
0063f814  34 00 8d e5                                      str r0, [sp, #0x34]
0063f818  92 ff ff ea                                      b #0x63f668
0063f81c  19 20 a0 e3                                      mov r2, #0x19
0063f820  09 00 a0 e1                                      mov r0, sb
0063f824  08 10 a0 e1                                      mov r1, r8
0063f828  ff 30 a0 e3                                      mov r3, #0xff
0063f82c  25 72 ff eb                                      bl #0x61c0c8
0063f830  00 20 50 e2                                      subs r2, r0, #0
0063f834  d8 ff ff 1a                                      bne #0x63f79c
0063f838  56 20 a0 e3                                      mov r2, #0x56
0063f83c  09 00 a0 e1                                      mov r0, sb
0063f840  08 10 a0 e1                                      mov r1, r8
0063f844  20 30 9d e5                                      ldr r3, [sp, #0x20]
0063f848  33 74 ff eb                                      bl #0x61c91c
0063f84c  00 20 a0 e1                                      mov r2, r0
0063f850  d1 ff ff ea                                      b #0x63f79c
0063f854  ad 3a f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0063f858  6c 58 35 00 ac 40 00 00 bc 5e 2a 00 74 09 00 00  .byte 0x6c, 0x58, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00, 0xbc, 0x5e, 0x2a, 0x00, 0x74, 0x09, 0x00, 0x00
0063f868  c4 5e 2a 00 80 5e 2a 00 4c 5e 2a 00 08 5e 2a 00  .byte 0xc4, 0x5e, 0x2a, 0x00, 0x80, 0x5e, 0x2a, 0x00, 0x4c, 0x5e, 0x2a, 0x00, 0x08, 0x5e, 0x2a, 0x00
0063f878  f4 5d 2a 00 dc 5d 2a 00 c8 5d 2a 00 b0 5d 2a 00  .byte 0xf4, 0x5d, 0x2a, 0x00, 0xdc, 0x5d, 0x2a, 0x00, 0xc8, 0x5d, 0x2a, 0x00, 0xb0, 0x5d, 0x2a, 0x00
0063f888  94 5d 2a 00 7c 5d 2a 00 68 5d 2a 00 00 5d 2a 00  .byte 0x94, 0x5d, 0x2a, 0x00, 0x7c, 0x5d, 0x2a, 0x00, 0x68, 0x5d, 0x2a, 0x00, 0x00, 0x5d, 0x2a, 0x00

; FUNCTION 0x0063fed4, declared_size=264, range_size=264, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode9onAnimateEj
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
0063fed4  70 40 2d e9                                      push {r4, r5, r6, lr}
0063fed8  00 40 a0 e1                                      mov r4, r0
0063fedc  50 d0 4d e2                                      sub sp, sp, #0x50
0063fee0  01 50 a0 e1                                      mov r5, r1
0063fee4  a0 5b fd eb                                      bl #0x596d6c
0063fee8  10 31 94 e5                                      ldr r3, [r4, #0x110]
0063feec  44 51 84 e5                                      str r5, [r4, #0x144]
0063fef0  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
0063fef4  00 00 51 e3                                      cmp r1, #0
0063fef8  26 00 00 0a                                      beq #0x63ff98
0063fefc  01 00 a0 e1                                      mov r0, r1
0063ff00  00 30 91 e5                                      ldr r3, [r1]
0063ff04  80 51 94 e5                                      ldr r5, [r4, #0x180]
0063ff08  0f e0 a0 e1                                      mov lr, pc
0063ff0c  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0063ff10  41 20 a0 e3                                      mov r2, #0x41
0063ff14  84 10 80 e2                                      add r1, r0, #0x84
0063ff18  05 00 a0 e1                                      mov r0, r5
0063ff1c  51 3a f3 eb                                      bl #0x30e868
0063ff20  48 60 8d e2                                      add r6, sp, #0x48
0063ff24  06 00 a0 e1                                      mov r0, r6
0063ff28  04 10 a0 e1                                      mov r1, r4
0063ff2c  00 30 94 e5                                      ldr r3, [r4]
0063ff30  00 20 a0 e3                                      mov r2, #0
0063ff34  0f e0 a0 e1                                      mov lr, pc
0063ff38  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0063ff3c  74 11 94 e5                                      ldr r1, [r4, #0x174]
0063ff40  4c 50 8d e2                                      add r5, sp, #0x4c
0063ff44  05 30 a0 e1                                      mov r3, r5
0063ff48  00 20 a0 e3                                      mov r2, #0
0063ff4c  71 10 ff e6                                      uxth r1, r1
0063ff50  48 00 9d e5                                      ldr r0, [sp, #0x48]
0063ff54  92 1c fe eb                                      bl #0x5c71a4
0063ff58  06 00 a0 e1                                      mov r0, r6
0063ff5c  21 43 f3 eb                                      bl #0x310be8
0063ff60  44 01 94 e5                                      ldr r0, [r4, #0x144]
0063ff64  dd 38 f3 eb                                      bl #0x30e2e0
0063ff68  11 13 a0 e3                                      mov r1, #0x44000000
0063ff6c  7a 18 81 e2                                      add r1, r1, #0x7a0000
0063ff70  47 3b f3 eb                                      bl #0x30ec94
0063ff74  78 61 94 e5                                      ldr r6, [r4, #0x178]
0063ff78  00 10 a0 e1                                      mov r1, r0
0063ff7c  05 20 a0 e1                                      mov r2, r5
0063ff80  06 00 a0 e1                                      mov r0, r6
0063ff84  00 30 96 e5                                      ldr r3, [r6]
0063ff88  0f e0 a0 e1                                      mov lr, pc
0063ff8c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0063ff90  50 d0 8d e2                                      add sp, sp, #0x50
0063ff94  70 80 bd e8                                      pop {r4, r5, r6, pc}
0063ff98  80 61 94 e5                                      ldr r6, [r4, #0x180]
0063ff9c  04 50 8d e2                                      add r5, sp, #4
0063ffa0  40 20 a0 e3                                      mov r2, #0x40
0063ffa4  05 00 a0 e1                                      mov r0, r5
0063ffa8  2c 39 f3 eb                                      bl #0x30e460
0063ffac  fe 35 a0 e3                                      mov r3, #0x3f800000
0063ffb0  01 c0 a0 e3                                      mov ip, #1
0063ffb4  06 00 a0 e1                                      mov r0, r6
0063ffb8  05 10 a0 e1                                      mov r1, r5
0063ffbc  41 20 a0 e3                                      mov r2, #0x41
0063ffc0  40 30 8d e5                                      str r3, [sp, #0x40]
0063ffc4  44 c0 cd e5                                      strb ip, [sp, #0x44]
0063ffc8  04 30 8d e5                                      str r3, [sp, #4]
0063ffcc  18 30 8d e5                                      str r3, [sp, #0x18]
0063ffd0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0063ffd4  23 3a f3 eb                                      bl #0x30e868
0063ffd8  d0 ff ff ea                                      b #0x63ff20

; FUNCTION 0x00642e58, declared_size=4176, range_size=4176, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode18initParticleSystemEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::initParticleSystem(glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
00642e58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00642e5c  02 70 a0 e1                                      mov r7, r2
00642e60  d4 d0 4d e2                                      sub sp, sp, #0xd4
00642e64  00 40 a0 e1                                      mov r4, r0
00642e68  01 60 a0 e1                                      mov r6, r1
00642e6c  57 e1 ff eb                                      bl #0x63b3d0
00642e70  07 10 a0 e1                                      mov r1, r7
00642e74  df ff ff eb                                      bl #0x642df8
00642e78  78 01 84 e5                                      str r0, [r4, #0x178]
00642e7c  00 30 90 e5                                      ldr r3, [r0]
00642e80  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642e84  4c 1f 9f e5                                      ldr r1, [pc, #0xf4c]
00642e88  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00642e8c  08 20 92 e5                                      ldr r2, [r2, #8]
00642e90  01 10 8f e0                                      add r1, pc, r1
00642e94  03 00 80 e0                                      add r0, r0, r3
00642e98  cc ef ff eb                                      bl #0x63edd0
00642e9c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642ea0  34 5f 9f e5                                      ldr r5, [pc, #0xf34]
00642ea4  08 30 92 e5                                      ldr r3, [r2, #8]
00642ea8  05 50 8f e0                                      add r5, pc, r5
00642eac  01 00 53 e3                                      cmp r3, #1
00642eb0  f1 02 00 0a                                      beq #0x643a7c
00642eb4  02 00 53 e3                                      cmp r3, #2
00642eb8  da 02 00 0a                                      beq #0x643a28
00642ebc  00 00 53 e3                                      cmp r3, #0
00642ec0  91 02 00 0a                                      beq #0x64390c
00642ec4  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642ec8  10 1f 9f e5                                      ldr r1, [pc, #0xf10]
00642ecc  10 20 92 e5                                      ldr r2, [r2, #0x10]
00642ed0  00 00 93 e5                                      ldr r0, [r3]
00642ed4  01 10 8f e0                                      add r1, pc, r1
00642ed8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642edc  00 00 83 e0                                      add r0, r3, r0
00642ee0  13 f0 ff eb                                      bl #0x63ef34
00642ee4  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642ee8  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642eec  f0 1e 9f e5                                      ldr r1, [pc, #0xef0]
00642ef0  00 00 93 e5                                      ldr r0, [r3]
00642ef4  14 20 92 e5                                      ldr r2, [r2, #0x14]
00642ef8  01 10 8f e0                                      add r1, pc, r1
00642efc  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642f00  00 00 83 e0                                      add r0, r3, r0
00642f04  0a f0 ff eb                                      bl #0x63ef34
00642f08  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642f0c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642f10  d0 1e 9f e5                                      ldr r1, [pc, #0xed0]
00642f14  00 00 93 e5                                      ldr r0, [r3]
00642f18  18 20 92 e5                                      ldr r2, [r2, #0x18]
00642f1c  01 10 8f e0                                      add r1, pc, r1
00642f20  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642f24  00 00 83 e0                                      add r0, r3, r0
00642f28  a8 ef ff eb                                      bl #0x63edd0
00642f2c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642f30  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642f34  b0 1e 9f e5                                      ldr r1, [pc, #0xeb0]
00642f38  00 00 93 e5                                      ldr r0, [r3]
00642f3c  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
00642f40  01 10 8f e0                                      add r1, pc, r1
00642f44  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642f48  00 00 83 e0                                      add r0, r3, r0
00642f4c  9f ef ff eb                                      bl #0x63edd0
00642f50  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642f54  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642f58  90 1e 9f e5                                      ldr r1, [pc, #0xe90]
00642f5c  00 00 93 e5                                      ldr r0, [r3]
00642f60  20 20 92 e5                                      ldr r2, [r2, #0x20]
00642f64  01 10 8f e0                                      add r1, pc, r1
00642f68  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642f6c  00 00 83 e0                                      add r0, r3, r0
00642f70  ef ef ff eb                                      bl #0x63ef34
00642f74  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642f78  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642f7c  70 1e 9f e5                                      ldr r1, [pc, #0xe70]
00642f80  00 00 93 e5                                      ldr r0, [r3]
00642f84  24 20 92 e5                                      ldr r2, [r2, #0x24]
00642f88  01 10 8f e0                                      add r1, pc, r1
00642f8c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642f90  00 00 83 e0                                      add r0, r3, r0
00642f94  e6 ef ff eb                                      bl #0x63ef34
00642f98  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642f9c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642fa0  50 1e 9f e5                                      ldr r1, [pc, #0xe50]
00642fa4  00 00 93 e5                                      ldr r0, [r3]
00642fa8  30 20 92 e5                                      ldr r2, [r2, #0x30]
00642fac  01 10 8f e0                                      add r1, pc, r1
00642fb0  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642fb4  00 00 83 e0                                      add r0, r3, r0
00642fb8  dd ef ff eb                                      bl #0x63ef34
00642fbc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642fc0  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642fc4  30 1e 9f e5                                      ldr r1, [pc, #0xe30]
00642fc8  00 00 93 e5                                      ldr r0, [r3]
00642fcc  34 20 92 e5                                      ldr r2, [r2, #0x34]
00642fd0  01 10 8f e0                                      add r1, pc, r1
00642fd4  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642fd8  00 00 83 e0                                      add r0, r3, r0
00642fdc  d4 ef ff eb                                      bl #0x63ef34
00642fe0  78 31 94 e5                                      ldr r3, [r4, #0x178]
00642fe4  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00642fe8  10 1e 9f e5                                      ldr r1, [pc, #0xe10]
00642fec  00 00 93 e5                                      ldr r0, [r3]
00642ff0  3c 20 d2 e5                                      ldrb r2, [r2, #0x3c]
00642ff4  01 10 8f e0                                      add r1, pc, r1
00642ff8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00642ffc  00 00 83 e0                                      add r0, r3, r0
00643000  f4 ef ff eb                                      bl #0x63efd8
00643004  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643008  3c 30 d2 e5                                      ldrb r3, [r2, #0x3c]
0064300c  00 00 53 e3                                      cmp r3, #0
00643010  5c 02 00 0a                                      beq #0x643988
00643014  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643018  e4 1d 9f e5                                      ldr r1, [pc, #0xde4]
0064301c  40 20 92 e5                                      ldr r2, [r2, #0x40]
00643020  00 00 93 e5                                      ldr r0, [r3]
00643024  01 10 8f e0                                      add r1, pc, r1
00643028  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0064302c  00 00 83 e0                                      add r0, r3, r0
00643030  bf ef ff eb                                      bl #0x63ef34
00643034  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643038  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
0064303c  c4 1d 9f e5                                      ldr r1, [pc, #0xdc4]
00643040  00 00 93 e5                                      ldr r0, [r3]
00643044  44 20 92 e5                                      ldr r2, [r2, #0x44]
00643048  01 10 8f e0                                      add r1, pc, r1
0064304c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643050  00 00 83 e0                                      add r0, r3, r0
00643054  b6 ef ff eb                                      bl #0x63ef34
00643058  78 31 94 e5                                      ldr r3, [r4, #0x178]
0064305c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643060  a4 1d 9f e5                                      ldr r1, [pc, #0xda4]
00643064  00 00 93 e5                                      ldr r0, [r3]
00643068  4c 20 d2 e5                                      ldrb r2, [r2, #0x4c]
0064306c  01 10 8f e0                                      add r1, pc, r1
00643070  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643074  00 00 83 e0                                      add r0, r3, r0
00643078  d6 ef ff eb                                      bl #0x63efd8
0064307c  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00643080  4c 20 d3 e5                                      ldrb r2, [r3, #0x4c]
00643084  00 00 52 e3                                      cmp r2, #0
00643088  52 02 00 0a                                      beq #0x6439d8
0064308c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00643090  50 c0 93 e5                                      ldr ip, [r3, #0x50]
00643094  74 1d 9f e5                                      ldr r1, [pc, #0xd74]
00643098  00 e0 90 e5                                      ldr lr, [r0]
0064309c  74 20 8d e2                                      add r2, sp, #0x74
006430a0  01 10 8f e0                                      add r1, pc, r1
006430a4  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
006430a8  74 c0 8d e5                                      str ip, [sp, #0x74]
006430ac  54 c0 93 e5                                      ldr ip, [r3, #0x54]
006430b0  0e 00 80 e0                                      add r0, r0, lr
006430b4  78 c0 8d e5                                      str ip, [sp, #0x78]
006430b8  58 30 93 e5                                      ldr r3, [r3, #0x58]
006430bc  7c 30 8d e5                                      str r3, [sp, #0x7c]
006430c0  6b ef ff eb                                      bl #0x63ee74
006430c4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006430c8  78 01 94 e5                                      ldr r0, [r4, #0x178]
006430cc  40 1d 9f e5                                      ldr r1, [pc, #0xd40]
006430d0  5c c0 93 e5                                      ldr ip, [r3, #0x5c]
006430d4  00 e0 90 e5                                      ldr lr, [r0]
006430d8  01 10 8f e0                                      add r1, pc, r1
006430dc  68 20 8d e2                                      add r2, sp, #0x68
006430e0  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
006430e4  68 c0 8d e5                                      str ip, [sp, #0x68]
006430e8  60 c0 93 e5                                      ldr ip, [r3, #0x60]
006430ec  0e 00 80 e0                                      add r0, r0, lr
006430f0  6c c0 8d e5                                      str ip, [sp, #0x6c]
006430f4  64 30 93 e5                                      ldr r3, [r3, #0x64]
006430f8  70 30 8d e5                                      str r3, [sp, #0x70]
006430fc  5c ef ff eb                                      bl #0x63ee74
00643100  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643104  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643108  08 1d 9f e5                                      ldr r1, [pc, #0xd08]
0064310c  00 00 93 e5                                      ldr r0, [r3]
00643110  68 20 d2 e5                                      ldrb r2, [r2, #0x68]
00643114  01 10 8f e0                                      add r1, pc, r1
00643118  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0064311c  00 00 83 e0                                      add r0, r3, r0
00643120  ac ef ff eb                                      bl #0x63efd8
00643124  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643128  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
0064312c  e8 1c 9f e5                                      ldr r1, [pc, #0xce8]
00643130  00 00 93 e5                                      ldr r0, [r3]
00643134  6c 20 92 e5                                      ldr r2, [r2, #0x6c]
00643138  01 10 8f e0                                      add r1, pc, r1
0064313c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643140  00 00 83 e0                                      add r0, r3, r0
00643144  7a ef ff eb                                      bl #0x63ef34
00643148  78 31 94 e5                                      ldr r3, [r4, #0x178]
0064314c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643150  c8 1c 9f e5                                      ldr r1, [pc, #0xcc8]
00643154  00 00 93 e5                                      ldr r0, [r3]
00643158  70 20 92 e5                                      ldr r2, [r2, #0x70]
0064315c  01 10 8f e0                                      add r1, pc, r1
00643160  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643164  00 00 83 e0                                      add r0, r3, r0
00643168  71 ef ff eb                                      bl #0x63ef34
0064316c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643170  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643174  a8 1c 9f e5                                      ldr r1, [pc, #0xca8]
00643178  00 00 93 e5                                      ldr r0, [r3]
0064317c  69 20 d2 e5                                      ldrb r2, [r2, #0x69]
00643180  01 10 8f e0                                      add r1, pc, r1
00643184  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643188  00 00 83 e0                                      add r0, r3, r0
0064318c  91 ef ff eb                                      bl #0x63efd8
00643190  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643194  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643198  88 1c 9f e5                                      ldr r1, [pc, #0xc88]
0064319c  00 00 93 e5                                      ldr r0, [r3]
006431a0  74 20 92 e5                                      ldr r2, [r2, #0x74]
006431a4  01 10 8f e0                                      add r1, pc, r1
006431a8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006431ac  00 00 83 e0                                      add r0, r3, r0
006431b0  5f ef ff eb                                      bl #0x63ef34
006431b4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006431b8  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
006431bc  68 1c 9f e5                                      ldr r1, [pc, #0xc68]
006431c0  00 00 93 e5                                      ldr r0, [r3]
006431c4  78 20 92 e5                                      ldr r2, [r2, #0x78]
006431c8  01 10 8f e0                                      add r1, pc, r1
006431cc  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006431d0  00 00 83 e0                                      add r0, r3, r0
006431d4  56 ef ff eb                                      bl #0x63ef34
006431d8  78 31 94 e5                                      ldr r3, [r4, #0x178]
006431dc  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
006431e0  48 1c 9f e5                                      ldr r1, [pc, #0xc48]
006431e4  00 00 93 e5                                      ldr r0, [r3]
006431e8  80 20 d2 e5                                      ldrb r2, [r2, #0x80]
006431ec  01 10 8f e0                                      add r1, pc, r1
006431f0  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006431f4  00 00 83 e0                                      add r0, r3, r0
006431f8  76 ef ff eb                                      bl #0x63efd8
006431fc  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00643200  80 20 d3 e5                                      ldrb r2, [r3, #0x80]
00643204  00 00 52 e3                                      cmp r2, #0
00643208  e8 01 00 0a                                      beq #0x6439b0
0064320c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00643210  a4 c0 93 e5                                      ldr ip, [r3, #0xa4]
00643214  18 1c 9f e5                                      ldr r1, [pc, #0xc18]
00643218  00 e0 90 e5                                      ldr lr, [r0]
0064321c  5c 20 8d e2                                      add r2, sp, #0x5c
00643220  01 10 8f e0                                      add r1, pc, r1
00643224  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00643228  5c c0 8d e5                                      str ip, [sp, #0x5c]
0064322c  a8 c0 93 e5                                      ldr ip, [r3, #0xa8]
00643230  0e 00 80 e0                                      add r0, r0, lr
00643234  60 c0 8d e5                                      str ip, [sp, #0x60]
00643238  ac 30 93 e5                                      ldr r3, [r3, #0xac]
0064323c  64 30 8d e5                                      str r3, [sp, #0x64]
00643240  0b ef ff eb                                      bl #0x63ee74
00643244  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643248  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
0064324c  e4 1b 9f e5                                      ldr r1, [pc, #0xbe4]
00643250  00 00 93 e5                                      ldr r0, [r3]
00643254  84 20 d2 e5                                      ldrb r2, [r2, #0x84]
00643258  01 10 8f e0                                      add r1, pc, r1
0064325c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643260  00 00 83 e0                                      add r0, r3, r0
00643264  5b ef ff eb                                      bl #0x63efd8
00643268  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
0064326c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00643270  c4 1b 9f e5                                      ldr r1, [pc, #0xbc4]
00643274  88 c0 93 e5                                      ldr ip, [r3, #0x88]
00643278  00 e0 90 e5                                      ldr lr, [r0]
0064327c  01 10 8f e0                                      add r1, pc, r1
00643280  50 20 8d e2                                      add r2, sp, #0x50
00643284  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00643288  50 c0 8d e5                                      str ip, [sp, #0x50]
0064328c  8c c0 93 e5                                      ldr ip, [r3, #0x8c]
00643290  0e 00 80 e0                                      add r0, r0, lr
00643294  54 c0 8d e5                                      str ip, [sp, #0x54]
00643298  90 30 93 e5                                      ldr r3, [r3, #0x90]
0064329c  58 30 8d e5                                      str r3, [sp, #0x58]
006432a0  f3 ee ff eb                                      bl #0x63ee74
006432a4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006432a8  78 01 94 e5                                      ldr r0, [r4, #0x178]
006432ac  8c 1b 9f e5                                      ldr r1, [pc, #0xb8c]
006432b0  94 c0 93 e5                                      ldr ip, [r3, #0x94]
006432b4  00 e0 90 e5                                      ldr lr, [r0]
006432b8  01 10 8f e0                                      add r1, pc, r1
006432bc  44 20 8d e2                                      add r2, sp, #0x44
006432c0  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
006432c4  44 c0 8d e5                                      str ip, [sp, #0x44]
006432c8  98 c0 93 e5                                      ldr ip, [r3, #0x98]
006432cc  0e 00 80 e0                                      add r0, r0, lr
006432d0  48 c0 8d e5                                      str ip, [sp, #0x48]
006432d4  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
006432d8  4c 30 8d e5                                      str r3, [sp, #0x4c]
006432dc  e4 ee ff eb                                      bl #0x63ee74
006432e0  78 31 94 e5                                      ldr r3, [r4, #0x178]
006432e4  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
006432e8  54 1b 9f e5                                      ldr r1, [pc, #0xb54]
006432ec  00 00 93 e5                                      ldr r0, [r3]
006432f0  b4 20 92 e5                                      ldr r2, [r2, #0xb4]
006432f4  01 10 8f e0                                      add r1, pc, r1
006432f8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006432fc  00 00 83 e0                                      add r0, r3, r0
00643300  0b ef ff eb                                      bl #0x63ef34
00643304  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643308  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
0064330c  34 1b 9f e5                                      ldr r1, [pc, #0xb34]
00643310  00 00 93 e5                                      ldr r0, [r3]
00643314  b8 20 92 e5                                      ldr r2, [r2, #0xb8]
00643318  01 10 8f e0                                      add r1, pc, r1
0064331c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643320  00 00 83 e0                                      add r0, r3, r0
00643324  02 ef ff eb                                      bl #0x63ef34
00643328  78 31 94 e5                                      ldr r3, [r4, #0x178]
0064332c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643330  14 1b 9f e5                                      ldr r1, [pc, #0xb14]
00643334  00 00 93 e5                                      ldr r0, [r3]
00643338  c0 20 d2 e5                                      ldrb r2, [r2, #0xc0]
0064333c  01 10 8f e0                                      add r1, pc, r1
00643340  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643344  00 00 83 e0                                      add r0, r3, r0
00643348  22 ef ff eb                                      bl #0x63efd8
0064334c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643350  c0 30 d2 e5                                      ldrb r3, [r2, #0xc0]
00643354  00 00 53 e3                                      cmp r3, #0
00643358  a8 01 00 0a                                      beq #0x643a00
0064335c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643360  e8 1a 9f e5                                      ldr r1, [pc, #0xae8]
00643364  c4 20 d2 e5                                      ldrb r2, [r2, #0xc4]
00643368  00 00 93 e5                                      ldr r0, [r3]
0064336c  01 10 8f e0                                      add r1, pc, r1
00643370  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643374  00 00 83 e0                                      add r0, r3, r0
00643378  16 ef ff eb                                      bl #0x63efd8
0064337c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643380  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643384  c8 1a 9f e5                                      ldr r1, [pc, #0xac8]
00643388  00 00 93 e5                                      ldr r0, [r3]
0064338c  c4 20 d2 e5                                      ldrb r2, [r2, #0xc4]
00643390  01 10 8f e0                                      add r1, pc, r1
00643394  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643398  00 00 83 e0                                      add r0, r3, r0
0064339c  0d ef ff eb                                      bl #0x63efd8
006433a0  78 31 94 e5                                      ldr r3, [r4, #0x178]
006433a4  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
006433a8  a8 1a 9f e5                                      ldr r1, [pc, #0xaa8]
006433ac  00 00 93 e5                                      ldr r0, [r3]
006433b0  c6 20 d2 e5                                      ldrb r2, [r2, #0xc6]
006433b4  01 10 8f e0                                      add r1, pc, r1
006433b8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006433bc  00 00 83 e0                                      add r0, r3, r0
006433c0  04 ef ff eb                                      bl #0x63efd8
006433c4  00 00 57 e3                                      cmp r7, #0
006433c8  84 71 c4 e5                                      strb r7, [r4, #0x184]
006433cc  88 61 84 e5                                      str r6, [r4, #0x188]
006433d0  a0 00 00 0a                                      beq #0x643658
006433d4  80 7a 9f e5                                      ldr r7, [pc, #0xa80]
006433d8  07 30 95 e7                                      ldr r3, [r5, r7]
006433dc  00 30 93 e5                                      ldr r3, [r3]
006433e0  00 00 53 e3                                      cmp r3, #0
006433e4  c5 01 00 0a                                      beq #0x643b00
006433e8  04 20 93 e5                                      ldr r2, [r3, #4]
006433ec  01 20 82 e2                                      add r2, r2, #1
006433f0  04 20 83 e5                                      str r2, [r3, #4]
006433f4  40 01 94 e5                                      ldr r0, [r4, #0x140]
006433f8  40 31 84 e5                                      str r3, [r4, #0x140]
006433fc  00 00 50 e3                                      cmp r0, #0
00643400  00 00 00 0a                                      beq #0x643408
00643404  5e 68 f3 eb                                      bl #0x31d584
00643408  50 7a 9f e5                                      ldr r7, [pc, #0xa50]
0064340c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643410  07 30 95 e7                                      ldr r3, [r5, r7]
00643414  18 20 92 e5                                      ldr r2, [r2, #0x18]
00643418  00 30 93 e5                                      ldr r3, [r3]
0064341c  03 00 52 e1                                      cmp r2, r3
00643420  17 01 00 da                                      ble #0x643884
00643424  38 1a 9f e5                                      ldr r1, [pc, #0xa38]
00643428  01 30 95 e7                                      ldr r3, [r5, r1]
0064342c  18 10 8d e5                                      str r1, [sp, #0x18]
00643430  00 30 93 e5                                      ldr r3, [r3]
00643434  00 00 53 e3                                      cmp r3, #0
00643438  48 02 00 0a                                      beq #0x643d60
0064343c  07 80 95 e7                                      ldr r8, [r5, r7]
00643440  01 10 a0 e3                                      mov r1, #1
00643444  00 20 88 e5                                      str r2, [r8]
00643448  40 21 94 e5                                      ldr r2, [r4, #0x140]
0064344c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00643450  18 00 92 e5                                      ldr r0, [r2, #0x18]
00643454  a0 79 fd eb                                      bl #0x5a1adc
00643458  18 30 9d e5                                      ldr r3, [sp, #0x18]
0064345c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00643460  00 80 98 e5                                      ldr r8, [r8]
00643464  03 20 95 e7                                      ldr r2, [r5, r3]
00643468  1c 60 91 e5                                      ldr r6, [r1, #0x1c]
0064346c  40 31 94 e5                                      ldr r3, [r4, #0x140]
00643470  00 20 92 e5                                      ldr r2, [r2]
00643474  06 60 80 e0                                      add r6, r0, r6
00643478  00 00 52 e3                                      cmp r2, #0
0064347c  14 20 8d e5                                      str r2, [sp, #0x14]
00643480  02 10 a0 11                                      movne r1, r2
00643484  04 20 91 15                                      ldrne r2, [r1, #4]
00643488  20 30 93 e5                                      ldr r3, [r3, #0x20]
0064348c  01 20 82 12                                      addne r2, r2, #1
00643490  04 20 81 15                                      strne r2, [r1, #4]
00643494  14 20 9d e5                                      ldr r2, [sp, #0x14]
00643498  83 30 a0 e1                                      lsl r3, r3, #1
0064349c  98 03 08 e0                                      mul r8, r8, r3
006434a0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
006434a4  03 00 58 e1                                      cmp r8, r3
006434a8  8c 01 00 8a                                      bhi #0x643ae0
006434ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
006434b0  04 10 a0 e3                                      mov r1, #4
006434b4  4d 79 fd eb                                      bl #0x5a19f0
006434b8  07 b0 95 e7                                      ldr fp, [r5, r7]
006434bc  00 30 9b e5                                      ldr r3, [fp]
006434c0  00 00 53 e3                                      cmp r3, #0
006434c4  26 00 00 da                                      ble #0x643564
006434c8  00 e0 a0 e3                                      mov lr, #0
006434cc  0a 30 86 e2                                      add r3, r6, #0xa
006434d0  24 50 8d e5                                      str r5, [sp, #0x24]
006434d4  02 90 86 e2                                      add sb, r6, #2
006434d8  04 a0 86 e2                                      add sl, r6, #4
006434dc  06 80 86 e2                                      add r8, r6, #6
006434e0  08 70 86 e2                                      add r7, r6, #8
006434e4  0e c0 a0 e1                                      mov ip, lr
006434e8  0e 10 a0 e1                                      mov r1, lr
006434ec  20 40 8d e5                                      str r4, [sp, #0x20]
006434f0  03 50 a0 e1                                      mov r5, r3
006434f4  b0 40 d6 e1                                      ldrh r4, [r6]
006434f8  71 20 ff e6                                      uxth r2, r1
006434fc  00 30 a0 e1                                      mov r3, r0
00643500  04 40 82 e0                                      add r4, r2, r4
00643504  be 40 a3 e1                                      strh r4, [r3, lr]!
00643508  b0 40 d9 e1                                      ldrh r4, [sb]
0064350c  01 c0 8c e2                                      add ip, ip, #1
00643510  04 10 81 e2                                      add r1, r1, #4
00643514  04 40 82 e0                                      add r4, r2, r4
00643518  b2 40 c3 e1                                      strh r4, [r3, #2]
0064351c  b0 40 da e1                                      ldrh r4, [sl]
00643520  0c e0 8e e2                                      add lr, lr, #0xc
00643524  04 40 82 e0                                      add r4, r2, r4
00643528  b4 40 c3 e1                                      strh r4, [r3, #4]
0064352c  b0 40 d8 e1                                      ldrh r4, [r8]
00643530  04 40 82 e0                                      add r4, r2, r4
00643534  b6 40 c3 e1                                      strh r4, [r3, #6]
00643538  b0 40 d7 e1                                      ldrh r4, [r7]
0064353c  04 40 82 e0                                      add r4, r2, r4
00643540  b8 40 c3 e1                                      strh r4, [r3, #8]
00643544  b0 40 d5 e1                                      ldrh r4, [r5]
00643548  04 20 82 e0                                      add r2, r2, r4
0064354c  ba 20 c3 e1                                      strh r2, [r3, #0xa]
00643550  00 30 9b e5                                      ldr r3, [fp]
00643554  0c 00 53 e1                                      cmp r3, ip
00643558  e5 ff ff ca                                      bgt #0x6434f4
0064355c  20 40 9d e5                                      ldr r4, [sp, #0x20]
00643560  24 50 9d e5                                      ldr r5, [sp, #0x24]
00643564  00 00 50 e3                                      cmp r0, #0
00643568  08 00 00 0a                                      beq #0x643590
0064356c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00643570  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00643574  1f 20 03 e2                                      and r2, r3, #0x1f
00643578  01 00 52 e3                                      cmp r2, #1
0064357c  49 01 00 9a                                      bls #0x643aa8
00643580  01 20 42 e2                                      sub r2, r2, #1
00643584  1f 30 c3 e3                                      bic r3, r3, #0x1f
00643588  03 30 82 e1                                      orr r3, r2, r3
0064358c  13 30 c1 e5                                      strb r3, [r1, #0x13]
00643590  00 00 56 e3                                      cmp r6, #0
00643594  09 00 00 0a                                      beq #0x6435c0
00643598  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0064359c  18 60 92 e5                                      ldr r6, [r2, #0x18]
006435a0  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006435a4  1f 20 03 e2                                      and r2, r3, #0x1f
006435a8  01 00 52 e3                                      cmp r2, #1
006435ac  45 01 00 9a                                      bls #0x643ac8
006435b0  01 20 42 e2                                      sub r2, r2, #1
006435b4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006435b8  03 30 82 e1                                      orr r3, r2, r3
006435bc  13 30 c6 e5                                      strb r3, [r6, #0x13]
006435c0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006435c4  ee 67 f3 eb                                      bl #0x31d584
006435c8  af 00 00 ea                                      b #0x64388c
006435cc  01 c0 a0 e1                                      mov ip, r1
006435d0  0c 00 51 e1                                      cmp r1, ip
006435d4  03 00 00 0a                                      beq #0x6435e8
006435d8  10 20 9c e5                                      ldr r2, [ip, #0x10]
006435dc  0c 30 a0 e1                                      mov r3, ip
006435e0  02 00 5e e1                                      cmp lr, r2
006435e4  08 00 00 2a                                      bhs #0x64360c
006435e8  98 30 8d e2                                      add r3, sp, #0x98
006435ec  98 e0 8d e5                                      str lr, [sp, #0x98]
006435f0  b8 00 8d e2                                      add r0, sp, #0xb8
006435f4  00 e0 a0 e3                                      mov lr, #0
006435f8  bc 20 8d e2                                      add r2, sp, #0xbc
006435fc  9c e0 8d e5                                      str lr, [sp, #0x9c]
00643600  bc c0 8d e5                                      str ip, [sp, #0xbc]
00643604  1a dd ff eb                                      bl #0x63aa74
00643608  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
0064360c  14 30 93 e5                                      ldr r3, [r3, #0x14]
00643610  00 00 53 e3                                      cmp r3, #0
00643614  08 00 00 0a                                      beq #0x64363c
00643618  00 00 55 e3                                      cmp r5, #0
0064361c  04 20 95 15                                      ldrne r2, [r5, #4]
00643620  01 20 82 12                                      addne r2, r2, #1
00643624  04 20 85 15                                      strne r2, [r5, #4]
00643628  00 00 93 e5                                      ldr r0, [r3]
0064362c  00 50 83 e5                                      str r5, [r3]
00643630  00 00 50 e3                                      cmp r0, #0
00643634  00 00 00 0a                                      beq #0x64363c
00643638  d1 67 f3 eb                                      bl #0x31d584
0064363c  00 00 55 e3                                      cmp r5, #0
00643640  01 00 00 0a                                      beq #0x64364c
00643644  05 00 a0 e1                                      mov r0, r5
00643648  cd 67 f3 eb                                      bl #0x31d584
0064364c  06 38 a0 e3                                      mov r3, #0x60000
00643650  03 30 83 e2                                      add r3, r3, #3
00643654  8c 31 84 e5                                      str r3, [r4, #0x18c]
00643658  78 31 94 e5                                      ldr r3, [r4, #0x178]
0064365c  40 11 94 e5                                      ldr r1, [r4, #0x140]
00643660  00 20 93 e5                                      ldr r2, [r3]
00643664  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00643668  00 00 83 e0                                      add r0, r3, r0
0064366c  ac ee ff eb                                      bl #0x63f124
00643670  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643674  ec 17 9f e5                                      ldr r1, [pc, #0x7ec]
00643678  00 20 93 e5                                      ldr r2, [r3]
0064367c  01 10 8f e0                                      add r1, pc, r1
00643680  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00643684  05 50 83 e0                                      add r5, r3, r5
00643688  05 00 a0 e1                                      mov r0, r5
0064368c  6e df ff eb                                      bl #0x63b44c
00643690  34 c0 95 e5                                      ldr ip, [r5, #0x34]
00643694  30 10 85 e2                                      add r1, r5, #0x30
00643698  00 e0 a0 e1                                      mov lr, r0
0064369c  00 00 5c e3                                      cmp ip, #0
006436a0  01 c0 a0 01                                      moveq ip, r1
006436a4  0a 00 00 0a                                      beq #0x6436d4
006436a8  01 20 a0 e1                                      mov r2, r1
006436ac  00 00 00 ea                                      b #0x6436b4
006436b0  03 c0 a0 e1                                      mov ip, r3
006436b4  10 30 9c e5                                      ldr r3, [ip, #0x10]
006436b8  03 00 5e e1                                      cmp lr, r3
006436bc  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
006436c0  08 30 9c 95                                      ldrls r3, [ip, #8]
006436c4  02 c0 a0 81                                      movhi ip, r2
006436c8  0c 20 a0 e1                                      mov r2, ip
006436cc  00 00 53 e3                                      cmp r3, #0
006436d0  f6 ff ff 1a                                      bne #0x6436b0
006436d4  0c 00 51 e1                                      cmp r1, ip
006436d8  5f 00 00 0a                                      beq #0x64385c
006436dc  10 20 9c e5                                      ldr r2, [ip, #0x10]
006436e0  0c 30 a0 e1                                      mov r3, ip
006436e4  02 00 5e e1                                      cmp lr, r2
006436e8  5b 00 00 3a                                      blo #0x64385c
006436ec  14 20 93 e5                                      ldr r2, [r3, #0x14]
006436f0  78 31 94 e5                                      ldr r3, [r4, #0x178]
006436f4  70 17 9f e5                                      ldr r1, [pc, #0x770]
006436f8  48 21 84 e5                                      str r2, [r4, #0x148]
006436fc  00 20 93 e5                                      ldr r2, [r3]
00643700  01 10 8f e0                                      add r1, pc, r1
00643704  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00643708  05 50 83 e0                                      add r5, r3, r5
0064370c  05 00 a0 e1                                      mov r0, r5
00643710  4d df ff eb                                      bl #0x63b44c
00643714  34 c0 95 e5                                      ldr ip, [r5, #0x34]
00643718  30 10 85 e2                                      add r1, r5, #0x30
0064371c  00 e0 a0 e1                                      mov lr, r0
00643720  00 00 5c e3                                      cmp ip, #0
00643724  01 c0 a0 01                                      moveq ip, r1
00643728  0a 00 00 0a                                      beq #0x643758
0064372c  01 20 a0 e1                                      mov r2, r1
00643730  00 00 00 ea                                      b #0x643738
00643734  03 c0 a0 e1                                      mov ip, r3
00643738  10 30 9c e5                                      ldr r3, [ip, #0x10]
0064373c  03 00 5e e1                                      cmp lr, r3
00643740  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00643744  08 30 9c 95                                      ldrls r3, [ip, #8]
00643748  02 c0 a0 81                                      movhi ip, r2
0064374c  0c 20 a0 e1                                      mov r2, ip
00643750  00 00 53 e3                                      cmp r3, #0
00643754  f6 ff ff 1a                                      bne #0x643734
00643758  0c 00 51 e1                                      cmp r1, ip
0064375c  34 00 00 0a                                      beq #0x643834
00643760  10 20 9c e5                                      ldr r2, [ip, #0x10]
00643764  0c 30 a0 e1                                      mov r3, ip
00643768  02 00 5e e1                                      cmp lr, r2
0064376c  30 00 00 3a                                      blo #0x643834
00643770  14 20 93 e5                                      ldr r2, [r3, #0x14]
00643774  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643778  f0 16 9f e5                                      ldr r1, [pc, #0x6f0]
0064377c  80 21 84 e5                                      str r2, [r4, #0x180]
00643780  00 20 93 e5                                      ldr r2, [r3]
00643784  01 10 8f e0                                      add r1, pc, r1
00643788  0c 60 12 e5                                      ldr r6, [r2, #-0xc]
0064378c  06 60 83 e0                                      add r6, r3, r6
00643790  06 00 a0 e1                                      mov r0, r6
00643794  2c df ff eb                                      bl #0x63b44c
00643798  34 c0 96 e5                                      ldr ip, [r6, #0x34]
0064379c  30 10 86 e2                                      add r1, r6, #0x30
006437a0  00 50 a0 e1                                      mov r5, r0
006437a4  00 00 5c e3                                      cmp ip, #0
006437a8  01 c0 a0 01                                      moveq ip, r1
006437ac  0a 00 00 0a                                      beq #0x6437dc
006437b0  01 20 a0 e1                                      mov r2, r1
006437b4  00 00 00 ea                                      b #0x6437bc
006437b8  03 c0 a0 e1                                      mov ip, r3
006437bc  10 30 9c e5                                      ldr r3, [ip, #0x10]
006437c0  03 00 55 e1                                      cmp r5, r3
006437c4  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
006437c8  08 30 9c 95                                      ldrls r3, [ip, #8]
006437cc  02 c0 a0 81                                      movhi ip, r2
006437d0  0c 20 a0 e1                                      mov r2, ip
006437d4  00 00 53 e3                                      cmp r3, #0
006437d8  f6 ff ff 1a                                      bne #0x6437b8
006437dc  0c 00 51 e1                                      cmp r1, ip
006437e0  03 00 00 0a                                      beq #0x6437f4
006437e4  10 20 9c e5                                      ldr r2, [ip, #0x10]
006437e8  0c 30 a0 e1                                      mov r3, ip
006437ec  02 00 55 e1                                      cmp r5, r2
006437f0  08 00 00 2a                                      bhs #0x643818
006437f4  80 30 8d e2                                      add r3, sp, #0x80
006437f8  00 e0 a0 e3                                      mov lr, #0
006437fc  a0 00 8d e2                                      add r0, sp, #0xa0
00643800  a4 20 8d e2                                      add r2, sp, #0xa4
00643804  80 50 8d e5                                      str r5, [sp, #0x80]
00643808  84 e0 8d e5                                      str lr, [sp, #0x84]
0064380c  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00643810  97 dc ff eb                                      bl #0x63aa74
00643814  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00643818  14 10 93 e5                                      ldr r1, [r3, #0x14]
0064381c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643820  24 20 84 e2                                      add r2, r4, #0x24
00643824  4c 11 84 e5                                      str r1, [r4, #0x14c]
00643828  0c 20 83 e5                                      str r2, [r3, #0xc]
0064382c  d4 d0 8d e2                                      add sp, sp, #0xd4
00643830  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00643834  88 30 8d e2                                      add r3, sp, #0x88
00643838  88 e0 8d e5                                      str lr, [sp, #0x88]
0064383c  a8 00 8d e2                                      add r0, sp, #0xa8
00643840  00 e0 a0 e3                                      mov lr, #0
00643844  ac 20 8d e2                                      add r2, sp, #0xac
00643848  8c e0 8d e5                                      str lr, [sp, #0x8c]
0064384c  ac c0 8d e5                                      str ip, [sp, #0xac]
00643850  87 dc ff eb                                      bl #0x63aa74
00643854  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
00643858  c4 ff ff ea                                      b #0x643770
0064385c  90 30 8d e2                                      add r3, sp, #0x90
00643860  90 e0 8d e5                                      str lr, [sp, #0x90]
00643864  b0 00 8d e2                                      add r0, sp, #0xb0
00643868  00 e0 a0 e3                                      mov lr, #0
0064386c  b4 20 8d e2                                      add r2, sp, #0xb4
00643870  94 e0 8d e5                                      str lr, [sp, #0x94]
00643874  b4 c0 8d e5                                      str ip, [sp, #0xb4]
00643878  7d dc ff eb                                      bl #0x63aa74
0064387c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
00643880  99 ff ff ea                                      b #0x6436ec
00643884  d8 35 9f e5                                      ldr r3, [pc, #0x5d8]
00643888  18 30 8d e5                                      str r3, [sp, #0x18]
0064388c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00643890  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643894  02 10 95 e7                                      ldr r1, [r5, r2]
00643898  00 20 93 e5                                      ldr r2, [r3]
0064389c  00 50 91 e5                                      ldr r5, [r1]
006438a0  0c 60 12 e5                                      ldr r6, [r2, #-0xc]
006438a4  c8 15 9f e5                                      ldr r1, [pc, #0x5c8]
006438a8  00 00 55 e3                                      cmp r5, #0
006438ac  06 60 83 e0                                      add r6, r3, r6
006438b0  04 30 95 15                                      ldrne r3, [r5, #4]
006438b4  01 10 8f e0                                      add r1, pc, r1
006438b8  06 00 a0 e1                                      mov r0, r6
006438bc  01 30 83 12                                      addne r3, r3, #1
006438c0  04 30 85 15                                      strne r3, [r5, #4]
006438c4  e0 de ff eb                                      bl #0x63b44c
006438c8  34 c0 96 e5                                      ldr ip, [r6, #0x34]
006438cc  00 e0 a0 e1                                      mov lr, r0
006438d0  30 10 86 e2                                      add r1, r6, #0x30
006438d4  00 00 5c e3                                      cmp ip, #0
006438d8  3b ff ff 0a                                      beq #0x6435cc
006438dc  01 20 a0 e1                                      mov r2, r1
006438e0  00 00 00 ea                                      b #0x6438e8
006438e4  03 c0 a0 e1                                      mov ip, r3
006438e8  10 30 9c e5                                      ldr r3, [ip, #0x10]
006438ec  03 00 5e e1                                      cmp lr, r3
006438f0  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
006438f4  08 30 9c 95                                      ldrls r3, [ip, #8]
006438f8  02 c0 a0 81                                      movhi ip, r2
006438fc  0c 20 a0 e1                                      mov r2, ip
00643900  00 00 53 e3                                      cmp r3, #0
00643904  f6 ff ff 1a                                      bne #0x6438e4
00643908  30 ff ff ea                                      b #0x6435d0
0064390c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643910  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00643914  5c 15 9f e5                                      ldr r1, [pc, #0x55c]
00643918  00 00 93 e5                                      ldr r0, [r3]
0064391c  00 20 92 e5                                      ldr r2, [r2]
00643920  01 10 8f e0                                      add r1, pc, r1
00643924  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643928  00 00 83 e0                                      add r0, r3, r0
0064392c  80 ed ff eb                                      bl #0x63ef34
00643930  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643934  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643938  3c 15 9f e5                                      ldr r1, [pc, #0x53c]
0064393c  00 00 93 e5                                      ldr r0, [r3]
00643940  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00643944  01 10 8f e0                                      add r1, pc, r1
00643948  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0064394c  04 20 92 e5                                      ldr r2, [r2, #4]
00643950  00 00 83 e0                                      add r0, r3, r0
00643954  76 ed ff eb                                      bl #0x63ef34
00643958  78 31 94 e5                                      ldr r3, [r4, #0x178]
0064395c  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643960  18 15 9f e5                                      ldr r1, [pc, #0x518]
00643964  00 00 93 e5                                      ldr r0, [r3]
00643968  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0064396c  01 10 8f e0                                      add r1, pc, r1
00643970  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643974  08 20 92 e5                                      ldr r2, [r2, #8]
00643978  00 00 83 e0                                      add r0, r3, r0
0064397c  6c ed ff eb                                      bl #0x63ef34
00643980  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643984  4e fd ff ea                                      b #0x642ec4
00643988  78 31 94 e5                                      ldr r3, [r4, #0x178]
0064398c  f0 14 9f e5                                      ldr r1, [pc, #0x4f0]
00643990  38 20 92 e5                                      ldr r2, [r2, #0x38]
00643994  00 00 93 e5                                      ldr r0, [r3]
00643998  01 10 8f e0                                      add r1, pc, r1
0064399c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006439a0  00 00 83 e0                                      add r0, r3, r0
006439a4  62 ed ff eb                                      bl #0x63ef34
006439a8  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
006439ac  98 fd ff ea                                      b #0x643014
006439b0  78 01 94 e5                                      ldr r0, [r4, #0x178]
006439b4  7c 20 93 e5                                      ldr r2, [r3, #0x7c]
006439b8  c8 14 9f e5                                      ldr r1, [pc, #0x4c8]
006439bc  00 30 90 e5                                      ldr r3, [r0]
006439c0  01 10 8f e0                                      add r1, pc, r1
006439c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006439c8  03 00 80 e0                                      add r0, r0, r3
006439cc  58 ed ff eb                                      bl #0x63ef34
006439d0  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006439d4  0c fe ff ea                                      b #0x64320c
006439d8  78 01 94 e5                                      ldr r0, [r4, #0x178]
006439dc  48 20 93 e5                                      ldr r2, [r3, #0x48]
006439e0  a4 14 9f e5                                      ldr r1, [pc, #0x4a4]
006439e4  00 30 90 e5                                      ldr r3, [r0]
006439e8  01 10 8f e0                                      add r1, pc, r1
006439ec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006439f0  03 00 80 e0                                      add r0, r0, r3
006439f4  4e ed ff eb                                      bl #0x63ef34
006439f8  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
006439fc  a2 fd ff ea                                      b #0x64308c
00643a00  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643a04  84 14 9f e5                                      ldr r1, [pc, #0x484]
00643a08  bc 20 92 e5                                      ldr r2, [r2, #0xbc]
00643a0c  00 00 93 e5                                      ldr r0, [r3]
00643a10  01 10 8f e0                                      add r1, pc, r1
00643a14  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643a18  00 00 83 e0                                      add r0, r3, r0
00643a1c  44 ed ff eb                                      bl #0x63ef34
00643a20  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643a24  4c fe ff ea                                      b #0x64335c
00643a28  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643a2c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00643a30  5c 14 9f e5                                      ldr r1, [pc, #0x45c]
00643a34  00 00 93 e5                                      ldr r0, [r3]
00643a38  00 20 92 e5                                      ldr r2, [r2]
00643a3c  01 10 8f e0                                      add r1, pc, r1
00643a40  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643a44  00 00 83 e0                                      add r0, r3, r0
00643a48  39 ed ff eb                                      bl #0x63ef34
00643a4c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643a50  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643a54  3c 14 9f e5                                      ldr r1, [pc, #0x43c]
00643a58  00 00 93 e5                                      ldr r0, [r3]
00643a5c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00643a60  01 10 8f e0                                      add r1, pc, r1
00643a64  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643a68  04 20 92 e5                                      ldr r2, [r2, #4]
00643a6c  00 00 83 e0                                      add r0, r3, r0
00643a70  2f ed ff eb                                      bl #0x63ef34
00643a74  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643a78  11 fd ff ea                                      b #0x642ec4
00643a7c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643a80  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00643a84  10 14 9f e5                                      ldr r1, [pc, #0x410]
00643a88  00 00 93 e5                                      ldr r0, [r3]
00643a8c  00 20 92 e5                                      ldr r2, [r2]
00643a90  01 10 8f e0                                      add r1, pc, r1
00643a94  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00643a98  00 00 83 e0                                      add r0, r3, r0
00643a9c  24 ed ff eb                                      bl #0x63ef34
00643aa0  7c 21 94 e5                                      ldr r2, [r4, #0x17c]
00643aa4  06 fd ff ea                                      b #0x642ec4
00643aa8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00643aac  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00643ab0  20 00 13 e3                                      tst r3, #0x20
00643ab4  a4 00 00 1a                                      bne #0x643d4c
00643ab8  14 10 9d e5                                      ldr r1, [sp, #0x14]
00643abc  00 30 a0 e3                                      mov r3, #0
00643ac0  13 30 c1 e5                                      strb r3, [r1, #0x13]
00643ac4  b1 fe ff ea                                      b #0x643590
00643ac8  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
00643acc  20 00 13 e3                                      tst r3, #0x20
00643ad0  98 00 00 1a                                      bne #0x643d38
00643ad4  00 30 a0 e3                                      mov r3, #0
00643ad8  13 30 c6 e5                                      strb r3, [r6, #0x13]
00643adc  b7 fe ff ea                                      b #0x6435c0
00643ae0  08 00 a0 e1                                      mov r0, r8
00643ae4  e9 25 00 eb                                      bl #0x64d290
00643ae8  08 10 a0 e1                                      mov r1, r8
00643aec  00 20 a0 e1                                      mov r2, r0
00643af0  01 30 a0 e3                                      mov r3, #1
00643af4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00643af8  6d 78 fd eb                                      bl #0x5a1cb4
00643afc  6a fe ff ea                                      b #0x6434ac
00643b00  98 23 9f e5                                      ldr r2, [pc, #0x398]
00643b04  0c 10 a0 e3                                      mov r1, #0xc
00643b08  00 10 8d e5                                      str r1, [sp]
00643b0c  02 20 8f e0                                      add r2, pc, r2
00643b10  0c 00 8d e9                                      stmib sp, {r2, r3}
00643b14  cc b0 8d e2                                      add fp, sp, #0xcc
00643b18  00 c0 96 e5                                      ldr ip, [r6]
00643b1c  01 20 a0 e3                                      mov r2, #1
00643b20  06 10 a0 e1                                      mov r1, r6
00643b24  0b 00 a0 e1                                      mov r0, fp
00643b28  04 30 a0 e3                                      mov r3, #4
00643b2c  0f e0 a0 e1                                      mov lr, pc
00643b30  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00643b34  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
00643b38  00 80 a0 e3                                      mov r8, #0
00643b3c  08 10 a0 e1                                      mov r1, r8
00643b40  00 00 53 e3                                      cmp r3, #0
00643b44  2c 30 8d e5                                      str r3, [sp, #0x2c]
00643b48  04 20 93 15                                      ldrne r2, [r3, #4]
00643b4c  38 00 a0 e3                                      mov r0, #0x38
00643b50  c8 90 8d e2                                      add sb, sp, #0xc8
00643b54  01 20 82 12                                      addne r2, r2, #1
00643b58  04 20 83 15                                      strne r2, [r3, #4]
00643b5c  04 20 a0 e3                                      mov r2, #4
00643b60  06 30 a0 e3                                      mov r3, #6
00643b64  3c 20 8d e5                                      str r2, [sp, #0x3c]
00643b68  01 20 a0 e3                                      mov r2, #1
00643b6c  b0 24 cd e1                                      strh r2, [sp, #0x40]
00643b70  b2 34 cd e1                                      strh r3, [sp, #0x42]
00643b74  30 80 8d e5                                      str r8, [sp, #0x30]
00643b78  34 30 8d e5                                      str r3, [sp, #0x34]
00643b7c  38 80 8d e5                                      str r8, [sp, #0x38]
00643b80  89 c1 fb eb                                      bl #0x5341ac
00643b84  18 33 9f e5                                      ldr r3, [pc, #0x318]
00643b88  06 18 a0 e3                                      mov r1, #0x60000
00643b8c  00 a0 a0 e1                                      mov sl, r0
00643b90  03 30 95 e7                                      ldr r3, [r5, r3]
00643b94  10 80 80 e5                                      str r8, [r0, #0x10]
00643b98  04 80 80 e5                                      str r8, [r0, #4]
00643b9c  08 30 83 e2                                      add r3, r3, #8
00643ba0  08 80 80 e5                                      str r8, [r0, #8]
00643ba4  00 30 80 e5                                      str r3, [r0]
00643ba8  0c 80 80 e5                                      str r8, [r0, #0xc]
00643bac  03 10 81 e2                                      add r1, r1, #3
00643bb0  14 00 80 e2                                      add r0, r0, #0x14
00643bb4  e8 75 fd eb                                      bl #0x5a135c
00643bb8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00643bbc  07 70 95 e7                                      ldr r7, [r5, r7]
00643bc0  d0 00 8d e2                                      add r0, sp, #0xd0
00643bc4  08 00 53 e1                                      cmp r3, r8
00643bc8  18 30 8a e5                                      str r3, [sl, #0x18]
00643bcc  04 20 93 15                                      ldrne r2, [r3, #4]
00643bd0  00 80 a0 e3                                      mov r8, #0
00643bd4  01 20 82 12                                      addne r2, r2, #1
00643bd8  04 20 83 15                                      strne r2, [r3, #4]
00643bdc  30 30 9d e5                                      ldr r3, [sp, #0x30]
00643be0  1c 30 8a e5                                      str r3, [sl, #0x1c]
00643be4  34 30 9d e5                                      ldr r3, [sp, #0x34]
00643be8  20 30 8a e5                                      str r3, [sl, #0x20]
00643bec  38 30 9d e5                                      ldr r3, [sp, #0x38]
00643bf0  24 30 8a e5                                      str r3, [sl, #0x24]
00643bf4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00643bf8  28 30 8a e5                                      str r3, [sl, #0x28]
00643bfc  b0 34 dd e1                                      ldrh r3, [sp, #0x40]
00643c00  bc 32 ca e1                                      strh r3, [sl, #0x2c]
00643c04  b2 14 dd e1                                      ldrh r1, [sp, #0x42]
00643c08  30 80 8a e5                                      str r8, [sl, #0x30]
00643c0c  34 80 ca e5                                      strb r8, [sl, #0x34]
00643c10  be 12 ca e1                                      strh r1, [sl, #0x2e]
00643c14  c0 a0 8d e5                                      str sl, [sp, #0xc0]
00643c18  04 30 9a e5                                      ldr r3, [sl, #4]
00643c1c  01 30 83 e2                                      add r3, r3, #1
00643c20  04 30 8a e5                                      str r3, [sl, #4]
00643c24  00 20 97 e5                                      ldr r2, [r7]
00643c28  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
00643c2c  10 20 20 e5                                      str r2, [r0, #-0x10]!
00643c30  00 30 87 e5                                      str r3, [r7]
00643c34  dc cf ff eb                                      bl #0x637bac
00643c38  2c 00 8d e2                                      add r0, sp, #0x2c
00643c3c  d2 cf ff eb                                      bl #0x637b8c
00643c40  0b 00 a0 e1                                      mov r0, fp
00643c44  d0 cf ff eb                                      bl #0x637b8c
00643c48  00 20 97 e5                                      ldr r2, [r7]
00643c4c  04 30 a0 e3                                      mov r3, #4
00643c50  06 10 a0 e1                                      mov r1, r6
00643c54  14 a0 92 e5                                      ldr sl, [r2, #0x14]
00643c58  01 20 a0 e3                                      mov r2, #1
00643c5c  00 80 8d e5                                      str r8, [sp]
00643c60  04 80 8d e5                                      str r8, [sp, #4]
00643c64  08 20 8d e5                                      str r2, [sp, #8]
00643c68  00 c0 96 e5                                      ldr ip, [r6]
00643c6c  08 20 a0 e1                                      mov r2, r8
00643c70  09 00 a0 e1                                      mov r0, sb
00643c74  0f e0 a0 e1                                      mov lr, pc
00643c78  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00643c7c  00 20 e0 e3                                      mvn r2, #0
00643c80  09 10 a0 e1                                      mov r1, sb
00643c84  0a 00 a0 e1                                      mov r0, sl
00643c88  4c 76 fd eb                                      bl #0x5a15c0
00643c8c  00 61 a0 e1                                      lsl r6, r0, #2
00643c90  08 10 a0 e1                                      mov r1, r8
00643c94  06 00 a0 e1                                      mov r0, r6
00643c98  c8 80 9d e5                                      ldr r8, [sp, #0xc8]
00643c9c  41 c1 fb eb                                      bl #0x5341a8
00643ca0  06 10 a0 e1                                      mov r1, r6
00643ca4  00 20 a0 e1                                      mov r2, r0
00643ca8  01 30 a0 e3                                      mov r3, #1
00643cac  08 00 a0 e1                                      mov r0, r8
00643cb0  ff 77 fd eb                                      bl #0x5a1cb4
00643cb4  04 10 a0 e3                                      mov r1, #4
00643cb8  24 00 9a e5                                      ldr r0, [sl, #0x24]
00643cbc  4b 77 fd eb                                      bl #0x5a19f0
00643cc0  24 60 8a e2                                      add r6, sl, #0x24
00643cc4  04 c0 96 e5                                      ldr ip, [r6, #4]
00643cc8  00 20 a0 e3                                      mov r2, #0
00643ccc  fe 15 a0 e3                                      mov r1, #0x3f800000
00643cd0  0c 30 80 e0                                      add r3, r0, ip
00643cd4  0c 20 80 e7                                      str r2, [r0, ip]
00643cd8  04 20 83 e5                                      str r2, [r3, #4]
00643cdc  be 00 d6 e1                                      ldrh r0, [r6, #0xe]
00643ce0  00 c0 83 e0                                      add ip, r3, r0
00643ce4  00 20 83 e7                                      str r2, [r3, r0]
00643ce8  04 10 8c e5                                      str r1, [ip, #4]
00643cec  be 00 d6 e1                                      ldrh r0, [r6, #0xe]
00643cf0  80 c0 83 e0                                      add ip, r3, r0, lsl #1
00643cf4  80 10 83 e7                                      str r1, [r3, r0, lsl #1]
00643cf8  04 10 8c e5                                      str r1, [ip, #4]
00643cfc  be 00 d6 e1                                      ldrh r0, [r6, #0xe]
00643d00  80 00 80 e0                                      add r0, r0, r0, lsl #1
00643d04  00 c0 83 e0                                      add ip, r3, r0
00643d08  00 10 83 e7                                      str r1, [r3, r0]
00643d0c  04 20 8c e5                                      str r2, [ip, #4]
00643d10  04 30 a0 e3                                      mov r3, #4
00643d14  08 30 8a e5                                      str r3, [sl, #8]
00643d18  24 00 9a e5                                      ldr r0, [sl, #0x24]
00643d1c  51 cf ff eb                                      bl #0x637a68
00643d20  09 00 a0 e1                                      mov r0, sb
00643d24  98 cf ff eb                                      bl #0x637b8c
00643d28  00 30 97 e5                                      ldr r3, [r7]
00643d2c  00 00 53 e3                                      cmp r3, #0
00643d30  af fd ff 0a                                      beq #0x6433f4
00643d34  ab fd ff ea                                      b #0x6433e8
00643d38  00 30 96 e5                                      ldr r3, [r6]
00643d3c  06 00 a0 e1                                      mov r0, r6
00643d40  0f e0 a0 e1                                      mov lr, pc
00643d44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00643d48  61 ff ff ea                                      b #0x643ad4
00643d4c  00 30 92 e5                                      ldr r3, [r2]
00643d50  02 00 a0 e1                                      mov r0, r2
00643d54  0f e0 a0 e1                                      mov lr, pc
00643d58  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00643d5c  55 ff ff ea                                      b #0x643ab8
00643d60  88 c1 94 e5                                      ldr ip, [r4, #0x188]
00643d64  01 00 a0 e3                                      mov r0, #1
00643d68  c4 60 8d e2                                      add r6, sp, #0xc4
00643d6c  00 20 a0 e1                                      mov r2, r0
00643d70  0c 10 a0 e1                                      mov r1, ip
00643d74  00 c0 9c e5                                      ldr ip, [ip]
00643d78  04 30 8d e5                                      str r3, [sp, #4]
00643d7c  00 30 8d e5                                      str r3, [sp]
00643d80  08 00 8d e5                                      str r0, [sp, #8]
00643d84  04 30 a0 e3                                      mov r3, #4
00643d88  06 00 a0 e1                                      mov r0, r6
00643d8c  0f e0 a0 e1                                      mov lr, pc
00643d90  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00643d94  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00643d98  00 00 53 e3                                      cmp r3, #0
00643d9c  04 20 93 15                                      ldrne r2, [r3, #4]
00643da0  01 20 82 12                                      addne r2, r2, #1
00643da4  04 20 83 15                                      strne r2, [r3, #4]
00643da8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00643dac  01 20 95 e7                                      ldr r2, [r5, r1]
00643db0  00 00 92 e5                                      ldr r0, [r2]
00643db4  00 30 82 e5                                      str r3, [r2]
00643db8  00 00 50 e3                                      cmp r0, #0
00643dbc  00 00 00 0a                                      beq #0x643dc4
00643dc0  ef 65 f3 eb                                      bl #0x31d584
00643dc4  06 00 a0 e1                                      mov r0, r6
00643dc8  6f cf ff eb                                      bl #0x637b8c
00643dcc  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00643dd0  18 20 93 e5                                      ldr r2, [r3, #0x18]
00643dd4  98 fd ff ea                                      b #0x64343c
; mapping-symbol data/literal pool
00643dd8  78 23 2a 00 e8 1b 35 00 e4 24 2a 00 d0 24 2a 00  .byte 0x78, 0x23, 0x2a, 0x00, 0xe8, 0x1b, 0x35, 0x00, 0xe4, 0x24, 0x2a, 0x00, 0xd0, 0x24, 0x2a, 0x00
00643de8  dc 22 2a 00 a0 24 2a 00 3c 24 2a 00 20 24 2a 00  .byte 0xdc, 0x22, 0x2a, 0x00, 0xa0, 0x24, 0x2a, 0x00, 0x3c, 0x24, 0x2a, 0x00, 0x20, 0x24, 0x2a, 0x00
00643df8  4c 24 2a 00 38 24 2a 00 24 24 2a 00 cc 63 29 00  .byte 0x4c, 0x24, 0x2a, 0x00, 0x38, 0x24, 0x2a, 0x00, 0x24, 0x24, 0x2a, 0x00, 0xcc, 0x63, 0x29, 0x00
00643e08  68 22 2a 00 0c 22 2a 00 88 21 2a 00 60 21 2a 00  .byte 0x68, 0x22, 0x2a, 0x00, 0x0c, 0x22, 0x2a, 0x00, 0x88, 0x21, 0x2a, 0x00, 0x60, 0x21, 0x2a, 0x00
00643e18  2c 22 2a 00 a8 21 2a 00 94 21 2a 00 d0 21 2a 00  .byte 0x2c, 0x22, 0x2a, 0x00, 0xa8, 0x21, 0x2a, 0x00, 0x94, 0x21, 0x2a, 0x00, 0xd0, 0x21, 0x2a, 0x00
00643e28  1c 21 2a 00 08 21 2a 00 9c 21 2a 00 58 21 2a 00  .byte 0x1c, 0x21, 0x2a, 0x00, 0x08, 0x21, 0x2a, 0x00, 0x9c, 0x21, 0x2a, 0x00, 0x58, 0x21, 0x2a, 0x00
00643e38  d8 20 2a 00 8c 20 2a 00 60 20 2a 00 5c 1f 2a 00  .byte 0xd8, 0x20, 0x2a, 0x00, 0x8c, 0x20, 0x2a, 0x00, 0x60, 0x20, 0x2a, 0x00, 0x5c, 0x1f, 0x2a, 0x00
00643e48  48 1f 2a 00 54 1f 2a 00 a4 21 2a 00 98 21 2a 00  .byte 0x48, 0x1f, 0x2a, 0x00, 0x54, 0x1f, 0x2a, 0x00, 0xa4, 0x21, 0x2a, 0x00, 0x98, 0x21, 0x2a, 0x00
00643e58  8c 21 2a 00 e4 0b 00 00 90 0f 00 00 38 06 00 00  .byte 0x8c, 0x21, 0x2a, 0x00, 0xe4, 0x0b, 0x00, 0x00, 0x90, 0x0f, 0x00, 0x00, 0x38, 0x06, 0x00, 0x00
00643e68  3c 1f 2a 00 68 1c 2a 00 44 1e 2a 00 cc 1c 2a 00  .byte 0x3c, 0x1f, 0x2a, 0x00, 0x68, 0x1c, 0x2a, 0x00, 0x44, 0x1e, 0x2a, 0x00, 0xcc, 0x1c, 0x2a, 0x00
00643e78  f8 18 2a 00 1c 7a 2a 00 04 7a 2a 00 c8 17 2a 00  .byte 0xf8, 0x18, 0x2a, 0x00, 0x1c, 0x7a, 0x2a, 0x00, 0x04, 0x7a, 0x2a, 0x00, 0xc8, 0x17, 0x2a, 0x00
00643e88  e8 17 2a 00 a0 17 2a 00 c0 17 2a 00 dc 17 2a 00  .byte 0xe8, 0x17, 0x2a, 0x00, 0xa0, 0x17, 0x2a, 0x00, 0xc0, 0x17, 0x2a, 0x00, 0xdc, 0x17, 0x2a, 0x00
00643e98  10 79 2a 00 88 17 2a 00 3c 7d 35 00 54 0c 00 00  .byte 0x10, 0x79, 0x2a, 0x00, 0x88, 0x17, 0x2a, 0x00, 0x3c, 0x7d, 0x35, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x00643ea8, declared_size=1308, range_size=1308, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode6renderEPv
; demangled: glitch::collada::CGlitchNewParticleSystemSceneNode::render(void*)
; decoder-mode: arm
00643ea8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00643eac  10 31 90 e5                                      ldr r3, [r0, #0x110]
00643eb0  04 65 9f e5                                      ldr r6, [pc, #0x504]
00643eb4  c4 d0 4d e2                                      sub sp, sp, #0xc4
00643eb8  14 50 93 e5                                      ldr r5, [r3, #0x14]
00643ebc  06 60 8f e0                                      add r6, pc, r6
00643ec0  00 40 a0 e1                                      mov r4, r0
00643ec4  00 00 55 e3                                      cmp r5, #0
00643ec8  67 00 00 0a                                      beq #0x64406c
00643ecc  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
00643ed0  00 00 51 e3                                      cmp r1, #0
00643ed4  12 01 00 0a                                      beq #0x644324
00643ed8  01 00 a0 e1                                      mov r0, r1
00643edc  00 30 91 e5                                      ldr r3, [r1]
00643ee0  48 71 94 e5                                      ldr r7, [r4, #0x148]
00643ee4  0f e0 a0 e1                                      mov lr, pc
00643ee8  44 f1 93 e5                                      ldr pc, [r3, #0x144]
00643eec  41 20 a0 e3                                      mov r2, #0x41
00643ef0  84 10 80 e2                                      add r1, r0, #0x84
00643ef4  07 00 a0 e1                                      mov r0, r7
00643ef8  5a 2a f3 eb                                      bl #0x30e868
00643efc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643f00  00 20 93 e5                                      ldr r2, [r3]
00643f04  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00643f08  02 30 83 e0                                      add r3, r3, r2
00643f0c  54 30 d3 e5                                      ldrb r3, [r3, #0x54]
00643f10  00 00 53 e3                                      cmp r3, #0
00643f14  56 00 00 1a                                      bne #0x644074
00643f18  a0 24 9f e5                                      ldr r2, [pc, #0x4a0]
00643f1c  00 30 95 e5                                      ldr r3, [r5]
00643f20  05 00 a0 e1                                      mov r0, r5
00643f24  02 20 96 e7                                      ldr r2, [r6, r2]
00643f28  01 10 a0 e3                                      mov r1, #1
00643f2c  0f e0 a0 e1                                      mov lr, pc
00643f30  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00643f34  40 31 94 e5                                      ldr r3, [r4, #0x140]
00643f38  14 60 93 e5                                      ldr r6, [r3, #0x14]
00643f3c  00 00 56 e3                                      cmp r6, #0
00643f40  00 30 96 15                                      ldrne r3, [r6]
00643f44  08 a0 96 e5                                      ldr sl, [r6, #8]
00643f48  01 30 83 12                                      addne r3, r3, #1
00643f4c  00 30 86 15                                      strne r3, [r6]
00643f50  00 30 96 e5                                      ldr r3, [r6]
00643f54  01 30 43 e2                                      sub r3, r3, #1
00643f58  00 00 53 e3                                      cmp r3, #0
00643f5c  00 30 86 e5                                      str r3, [r6]
00643f60  03 00 00 1a                                      bne #0x643f74
00643f64  06 00 a0 e1                                      mov r0, r6
00643f68  ab 72 fd eb                                      bl #0x5a0a1c
00643f6c  06 00 a0 e1                                      mov r0, r6
00643f70  ce 28 f3 eb                                      bl #0x30e2b0
00643f74  78 31 94 e5                                      ldr r3, [r4, #0x178]
00643f78  00 10 95 e5                                      ldr r1, [r5]
00643f7c  97 2f 06 e3                                      movw r2, #0x6f97
00643f80  00 c0 93 e5                                      ldr ip, [r3]
00643f84  f0 61 91 e5                                      ldr r6, [r1, #0x1f0]
00643f88  f9 26 49 e3                                      movt r2, #0x96f9
00643f8c  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
00643f90  bc 00 8d e2                                      add r0, sp, #0xbc
00643f94  8c 81 94 e5                                      ldr r8, [r4, #0x18c]
00643f98  0e 10 83 e0                                      add r1, r3, lr
00643f9c  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00643fa0  28 70 91 e5                                      ldr r7, [r1, #0x28]
00643fa4  0e 30 93 e7                                      ldr r3, [r3, lr]
00643fa8  07 70 6c e0                                      rsb r7, ip, r7
00643fac  47 71 a0 e1                                      asr r7, r7, #2
00643fb0  92 07 07 e0                                      mul r7, r2, r7
00643fb4  0f e0 a0 e1                                      mov lr, pc
00643fb8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00643fbc  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00643fc0  9a 07 07 e0                                      mul r7, sl, r7
00643fc4  00 00 53 e3                                      cmp r3, #0
00643fc8  b8 30 8d e5                                      str r3, [sp, #0xb8]
00643fcc  00 20 93 15                                      ldrne r2, [r3]
00643fd0  05 00 a0 e1                                      mov r0, r5
00643fd4  01 20 82 12                                      addne r2, r2, #1
00643fd8  00 20 83 15                                      strne r2, [r3]
00643fdc  00 30 a0 e3                                      mov r3, #0
00643fe0  03 10 a0 e1                                      mov r1, r3
00643fe4  b8 20 8d e2                                      add r2, sp, #0xb8
00643fe8  0c 00 8d e9                                      stmib sp, {r2, r3}
00643fec  0c 30 8d e5                                      str r3, [sp, #0xc]
00643ff0  00 80 8d e5                                      str r8, [sp]
00643ff4  07 30 a0 e1                                      mov r3, r7
00643ff8  01 20 a0 e1                                      mov r2, r1
00643ffc  36 ff 2f e1                                      blx r6
00644000  b8 60 9d e5                                      ldr r6, [sp, #0xb8]
00644004  00 70 a0 e1                                      mov r7, r0
00644008  00 00 56 e3                                      cmp r6, #0
0064400c  08 00 00 0a                                      beq #0x644034
00644010  00 30 96 e5                                      ldr r3, [r6]
00644014  01 30 43 e2                                      sub r3, r3, #1
00644018  00 00 53 e3                                      cmp r3, #0
0064401c  00 30 86 e5                                      str r3, [r6]
00644020  03 00 00 1a                                      bne #0x644034
00644024  06 00 a0 e1                                      mov r0, r6
00644028  7b 72 fd eb                                      bl #0x5a0a1c
0064402c  06 00 a0 e1                                      mov r0, r6
00644030  9e 28 f3 eb                                      bl #0x30e2b0
00644034  bc 60 9d e5                                      ldr r6, [sp, #0xbc]
00644038  00 00 56 e3                                      cmp r6, #0
0064403c  08 00 00 0a                                      beq #0x644064
00644040  00 30 96 e5                                      ldr r3, [r6]
00644044  01 30 43 e2                                      sub r3, r3, #1
00644048  00 00 53 e3                                      cmp r3, #0
0064404c  00 30 86 e5                                      str r3, [r6]
00644050  03 00 00 1a                                      bne #0x644064
00644054  06 00 a0 e1                                      mov r0, r6
00644058  6f 72 fd eb                                      bl #0x5a0a1c
0064405c  06 00 a0 e1                                      mov r0, r6
00644060  92 28 f3 eb                                      bl #0x30e2b0
00644064  04 00 57 e3                                      cmp r7, #4
00644068  21 00 00 0a                                      beq #0x6440f4
0064406c  c4 d0 8d e2                                      add sp, sp, #0xc4
00644070  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00644074  00 70 a0 e3                                      mov r7, #0
00644078  10 60 8d e2                                      add r6, sp, #0x10
0064407c  07 10 a0 e1                                      mov r1, r7
00644080  40 20 a0 e3                                      mov r2, #0x40
00644084  06 00 a0 e1                                      mov r0, r6
00644088  f4 28 f3 eb                                      bl #0x30e460
0064408c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00644090  fe 25 a0 e3                                      mov r2, #0x3f800000
00644094  01 80 a0 e3                                      mov r8, #1
00644098  4c 20 8d e5                                      str r2, [sp, #0x4c]
0064409c  10 20 8d e5                                      str r2, [sp, #0x10]
006440a0  24 20 8d e5                                      str r2, [sp, #0x24]
006440a4  38 20 8d e5                                      str r2, [sp, #0x38]
006440a8  50 80 cd e5                                      strb r8, [sp, #0x50]
006440ac  03 00 a0 e1                                      mov r0, r3
006440b0  00 30 93 e5                                      ldr r3, [r3]
006440b4  0f e0 a0 e1                                      mov lr, pc
006440b8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006440bc  38 30 90 e5                                      ldr r3, [r0, #0x38]
006440c0  30 10 90 e5                                      ldr r1, [r0, #0x30]
006440c4  34 20 90 e5                                      ldr r2, [r0, #0x34]
006440c8  50 70 cd e5                                      strb r7, [sp, #0x50]
006440cc  40 10 8d e5                                      str r1, [sp, #0x40]
006440d0  44 20 8d e5                                      str r2, [sp, #0x44]
006440d4  48 30 8d e5                                      str r3, [sp, #0x48]
006440d8  08 10 a0 e1                                      mov r1, r8
006440dc  06 20 a0 e1                                      mov r2, r6
006440e0  00 30 95 e5                                      ldr r3, [r5]
006440e4  05 00 a0 e1                                      mov r0, r5
006440e8  0f e0 a0 e1                                      mov lr, pc
006440ec  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
006440f0  8f ff ff ea                                      b #0x643f34
006440f4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006440f8  b4 00 8d e2                                      add r0, sp, #0xb4
006440fc  00 20 93 e5                                      ldr r2, [r3]
00644100  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00644104  02 10 83 e0                                      add r1, r3, r2
00644108  02 30 93 e7                                      ldr r3, [r3, r2]
0064410c  0f e0 a0 e1                                      mov lr, pc
00644110  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00644114  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
00644118  00 10 a0 e3                                      mov r1, #0
0064411c  40 73 fd eb                                      bl #0x5a0e24
00644120  b4 60 9d e5                                      ldr r6, [sp, #0xb4]
00644124  00 00 56 e3                                      cmp r6, #0
00644128  08 00 00 0a                                      beq #0x644150
0064412c  00 30 96 e5                                      ldr r3, [r6]
00644130  01 30 43 e2                                      sub r3, r3, #1
00644134  00 00 53 e3                                      cmp r3, #0
00644138  00 30 86 e5                                      str r3, [r6]
0064413c  03 00 00 1a                                      bne #0x644150
00644140  06 00 a0 e1                                      mov r0, r6
00644144  34 72 fd eb                                      bl #0x5a0a1c
00644148  06 00 a0 e1                                      mov r0, r6
0064414c  57 28 f3 eb                                      bl #0x30e2b0
00644150  78 31 94 e5                                      ldr r3, [r4, #0x178]
00644154  00 10 a0 e3                                      mov r1, #0
00644158  00 20 93 e5                                      ldr r2, [r3]
0064415c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00644160  02 00 83 e0                                      add r0, r3, r2
00644164  02 30 93 e7                                      ldr r3, [r3, r2]
00644168  0f e0 a0 e1                                      mov lr, pc
0064416c  08 f0 93 e5                                      ldr pc, [r3, #8]
00644170  78 31 94 e5                                      ldr r3, [r4, #0x178]
00644174  00 70 a0 e1                                      mov r7, r0
00644178  00 20 93 e5                                      ldr r2, [r3]
0064417c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00644180  02 00 83 e0                                      add r0, r3, r2
00644184  02 30 93 e7                                      ldr r3, [r3, r2]
00644188  0f e0 a0 e1                                      mov lr, pc
0064418c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00644190  00 00 50 e3                                      cmp r0, #0
00644194  73 00 00 1a                                      bne #0x644368
00644198  a8 60 8d e2                                      add r6, sp, #0xa8
0064419c  06 00 a0 e1                                      mov r0, r6
006441a0  00 20 a0 e3                                      mov r2, #0
006441a4  00 30 94 e5                                      ldr r3, [r4]
006441a8  04 10 a0 e1                                      mov r1, r4
006441ac  0f e0 a0 e1                                      mov lr, pc
006441b0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006441b4  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006441b8  00 00 50 e3                                      cmp r0, #0
006441bc  ff 20 a0 03                                      moveq r2, #0xff
006441c0  01 00 00 0a                                      beq #0x6441cc
006441c4  da 06 fe eb                                      bl #0x5c5d34
006441c8  00 20 a0 e1                                      mov r2, r0
006441cc  06 10 a0 e1                                      mov r1, r6
006441d0  00 30 a0 e3                                      mov r3, #0
006441d4  05 00 a0 e1                                      mov r0, r5
006441d8  62 a4 fd eb                                      bl #0x5ad368
006441dc  06 00 a0 e1                                      mov r0, r6
006441e0  80 32 f3 eb                                      bl #0x310be8
006441e4  00 30 97 e5                                      ldr r3, [r7]
006441e8  05 00 a0 e1                                      mov r0, r5
006441ec  a4 10 8d e2                                      add r1, sp, #0xa4
006441f0  00 00 53 e3                                      cmp r3, #0
006441f4  a4 30 8d e5                                      str r3, [sp, #0xa4]
006441f8  00 20 93 15                                      ldrne r2, [r3]
006441fc  01 20 82 12                                      addne r2, r2, #1
00644200  00 20 83 15                                      strne r2, [r3]
00644204  00 20 95 e5                                      ldr r2, [r5]
00644208  00 30 a0 e3                                      mov r3, #0
0064420c  58 c0 92 e5                                      ldr ip, [r2, #0x58]
00644210  98 20 8d e2                                      add r2, sp, #0x98
00644214  00 20 8d e5                                      str r2, [sp]
00644218  98 30 8d e5                                      str r3, [sp, #0x98]
0064421c  04 20 87 e2                                      add r2, r7, #4
00644220  3c ff 2f e1                                      blx ip
00644224  98 00 9d e5                                      ldr r0, [sp, #0x98]
00644228  00 00 50 e3                                      cmp r0, #0
0064422c  00 00 00 0a                                      beq #0x644234
00644230  d3 64 f3 eb                                      bl #0x31d584
00644234  a4 60 9d e5                                      ldr r6, [sp, #0xa4]
00644238  00 00 56 e3                                      cmp r6, #0
0064423c  08 00 00 0a                                      beq #0x644264
00644240  00 30 96 e5                                      ldr r3, [r6]
00644244  01 30 43 e2                                      sub r3, r3, #1
00644248  00 00 53 e3                                      cmp r3, #0
0064424c  00 30 86 e5                                      str r3, [r6]
00644250  03 00 00 1a                                      bne #0x644264
00644254  06 00 a0 e1                                      mov r0, r6
00644258  ef 71 fd eb                                      bl #0x5a0a1c
0064425c  06 00 a0 e1                                      mov r0, r6
00644260  12 28 f3 eb                                      bl #0x30e2b0
00644264  78 31 94 e5                                      ldr r3, [r4, #0x178]
00644268  00 10 95 e5                                      ldr r1, [r5]
0064426c  a0 00 8d e2                                      add r0, sp, #0xa0
00644270  00 20 93 e5                                      ldr r2, [r3]
00644274  f4 61 91 e5                                      ldr r6, [r1, #0x1f4]
00644278  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0064427c  02 10 83 e0                                      add r1, r3, r2
00644280  02 30 93 e7                                      ldr r3, [r3, r2]
00644284  0f e0 a0 e1                                      mov lr, pc
00644288  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0064428c  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00644290  05 00 a0 e1                                      mov r0, r5
00644294  00 00 53 e3                                      cmp r3, #0
00644298  9c 30 8d e5                                      str r3, [sp, #0x9c]
0064429c  00 20 93 15                                      ldrne r2, [r3]
006442a0  01 20 82 12                                      addne r2, r2, #1
006442a4  00 20 83 15                                      strne r2, [r3]
006442a8  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006442ac  00 30 a0 e3                                      mov r3, #0
006442b0  03 10 a0 e1                                      mov r1, r3
006442b4  0c 00 8d e8                                      stm sp, {r2, r3}
006442b8  9c 20 8d e2                                      add r2, sp, #0x9c
006442bc  36 ff 2f e1                                      blx r6
006442c0  9c 40 9d e5                                      ldr r4, [sp, #0x9c]
006442c4  00 00 54 e3                                      cmp r4, #0
006442c8  08 00 00 0a                                      beq #0x6442f0
006442cc  00 30 94 e5                                      ldr r3, [r4]
006442d0  01 30 43 e2                                      sub r3, r3, #1
006442d4  00 00 53 e3                                      cmp r3, #0
006442d8  00 30 84 e5                                      str r3, [r4]
006442dc  03 00 00 1a                                      bne #0x6442f0
006442e0  04 00 a0 e1                                      mov r0, r4
006442e4  cc 71 fd eb                                      bl #0x5a0a1c
006442e8  04 00 a0 e1                                      mov r0, r4
006442ec  ef 27 f3 eb                                      bl #0x30e2b0
006442f0  a0 40 9d e5                                      ldr r4, [sp, #0xa0]
006442f4  00 00 54 e3                                      cmp r4, #0
006442f8  5b ff ff 0a                                      beq #0x64406c
006442fc  00 30 94 e5                                      ldr r3, [r4]
00644300  01 30 43 e2                                      sub r3, r3, #1
00644304  00 00 53 e3                                      cmp r3, #0
00644308  00 30 84 e5                                      str r3, [r4]
0064430c  56 ff ff 1a                                      bne #0x64406c
00644310  04 00 a0 e1                                      mov r0, r4
00644314  c0 71 fd eb                                      bl #0x5a0a1c
00644318  04 00 a0 e1                                      mov r0, r4
0064431c  e3 27 f3 eb                                      bl #0x30e2b0
00644320  51 ff ff ea                                      b #0x64406c
00644324  48 81 90 e5                                      ldr r8, [r0, #0x148]
00644328  54 70 8d e2                                      add r7, sp, #0x54
0064432c  40 20 a0 e3                                      mov r2, #0x40
00644330  07 00 a0 e1                                      mov r0, r7
00644334  49 28 f3 eb                                      bl #0x30e460
00644338  fe 35 a0 e3                                      mov r3, #0x3f800000
0064433c  01 c0 a0 e3                                      mov ip, #1
00644340  08 00 a0 e1                                      mov r0, r8
00644344  07 10 a0 e1                                      mov r1, r7
00644348  41 20 a0 e3                                      mov r2, #0x41
0064434c  90 30 8d e5                                      str r3, [sp, #0x90]
00644350  94 c0 cd e5                                      strb ip, [sp, #0x94]
00644354  54 30 8d e5                                      str r3, [sp, #0x54]
00644358  68 30 8d e5                                      str r3, [sp, #0x68]
0064435c  7c 30 8d e5                                      str r3, [sp, #0x7c]
00644360  40 29 f3 eb                                      bl #0x30e868
00644364  e4 fe ff ea                                      b #0x643efc
00644368  b0 60 8d e2                                      add r6, sp, #0xb0
0064436c  06 00 a0 e1                                      mov r0, r6
00644370  04 10 a0 e1                                      mov r1, r4
00644374  00 30 94 e5                                      ldr r3, [r4]
00644378  00 20 a0 e3                                      mov r2, #0
0064437c  0f e0 a0 e1                                      mov lr, pc
00644380  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00644384  74 11 94 e5                                      ldr r1, [r4, #0x174]
00644388  00 c0 e0 e3                                      mvn ip, #0
0064438c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00644390  71 10 ff e6                                      uxth r1, r1
00644394  00 20 a0 e3                                      mov r2, #0
00644398  ac 30 8d e2                                      add r3, sp, #0xac
0064439c  af c0 cd e5                                      strb ip, [sp, #0xaf]
006443a0  ac c0 cd e5                                      strb ip, [sp, #0xac]
006443a4  ad c0 cd e5                                      strb ip, [sp, #0xad]
006443a8  ae c0 cd e5                                      strb ip, [sp, #0xae]
006443ac  61 1a fe eb                                      bl #0x5cad38
006443b0  06 00 a0 e1                                      mov r0, r6
006443b4  0b 32 f3 eb                                      bl #0x310be8
006443b8  76 ff ff ea                                      b #0x644198
; mapping-symbol data/literal pool
006443bc  d4 0b 35 00 30 28 00 00                          .byte 0xd4, 0x0b, 0x35, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x006443c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch7collada33CGlitchNewParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
006443c4  00 30 90 e5                                      ldr r3, [r0]
006443c8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006443cc  03 00 80 e0                                      add r0, r0, r3
006443d0  af e1 ff ea                                      b #0x63ca94

; FUNCTION 0x006443d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch7collada33CGlitchNewParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
006443d4  00 30 90 e5                                      ldr r3, [r0]
006443d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006443dc  03 00 80 e0                                      add r0, r0, r3
006443e0  ab e1 ff ea                                      b #0x63ca94

; FUNCTION 0x006443e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch7collada33CGlitchNewParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
006443e4  00 30 90 e5                                      ldr r3, [r0]
006443e8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006443ec  03 00 80 e0                                      add r0, r0, r3
006443f0  8c e1 ff ea                                      b #0x63ca28

; FUNCTION 0x006443f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CGlitchNewParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch7collada33CGlitchNewParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode()
; decoder-mode: arm
006443f4  00 30 90 e5                                      ldr r3, [r0]
006443f8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006443fc  03 00 80 e0                                      add r0, r0, r3
00644400  88 e1 ff ea                                      b #0x63ca28
