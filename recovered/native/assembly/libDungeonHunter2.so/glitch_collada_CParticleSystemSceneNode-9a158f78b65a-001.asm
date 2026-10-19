; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064bb78, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZNK6glitch7collada24CParticleSystemSceneNode6getUIDEv
; demangled: glitch::collada::CParticleSystemSceneNode::getUID() const
; decoder-mode: arm
0064bb78  8c 31 90 e5                                      ldr r3, [r0, #0x18c]
0064bb7c  00 00 93 e5                                      ldr r0, [r3]
0064bb80  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bb84, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZNK6glitch7collada24CParticleSystemSceneNode7getTypeEv
; demangled: glitch::collada::CParticleSystemSceneNode::getType() const
; decoder-mode: arm
0064bb84  64 01 06 e3                                      movw r0, #0x6164
0064bb88  65 00 47 e3                                      movt r0, #0x7065
0064bb8c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bb90, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZNK6glitch7collada24CParticleSystemSceneNode16getParticleCountEv
; demangled: glitch::collada::CParticleSystemSceneNode::getParticleCount() const
; decoder-mode: arm
0064bb90  78 21 90 e5                                      ldr r2, [r0, #0x178]
0064bb94  29 3c 05 e3                                      movw r3, #0x5c29
0064bb98  8f 32 4c e3                                      movt r3, #0xc28f
0064bb9c  00 10 92 e5                                      ldr r1, [r2]
0064bba0  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0064bba4  01 20 82 e0                                      add r2, r2, r1
0064bba8  24 10 92 e5                                      ldr r1, [r2, #0x24]
0064bbac  28 00 92 e5                                      ldr r0, [r2, #0x28]
0064bbb0  00 00 61 e0                                      rsb r0, r1, r0
0064bbb4  40 01 a0 e1                                      asr r0, r0, #2
0064bbb8  93 00 00 e0                                      mul r0, r3, r0
0064bbbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064bbc0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZNK6glitch7collada24CParticleSystemSceneNode25getTransformedBoundingBoxEv
; demangled: glitch::collada::CParticleSystemSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
0064bbc0  4c 01 90 e5                                      ldr r0, [r0, #0x14c]
0064bbc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064ce44, declared_size=512, range_size=512, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZNK6glitch7collada24CParticleSystemSceneNode14getBoundingBoxEv
; demangled: glitch::collada::CParticleSystemSceneNode::getBoundingBox() const
; decoder-mode: arm
0064ce44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064ce48  ec 51 9f e5                                      ldr r5, [pc, #0x1ec]
0064ce4c  0c d0 4d e2                                      sub sp, sp, #0xc
0064ce50  00 40 a0 e1                                      mov r4, r0
0064ce54  05 50 8f e0                                      add r5, pc, r5
0064ce58  00 30 95 e5                                      ldr r3, [r5]
0064ce5c  01 00 13 e3                                      tst r3, #1
0064ce60  65 00 00 0a                                      beq #0x64cffc
0064ce64  24 00 94 e5                                      ldr r0, [r4, #0x24]
0064ce68  00 10 a0 e3                                      mov r1, #0
0064ce6c  be 07 f3 eb                                      bl #0x30ed6c
0064ce70  00 10 a0 e3                                      mov r1, #0
0064ce74  00 50 a0 e1                                      mov r5, r0
0064ce78  34 00 94 e5                                      ldr r0, [r4, #0x34]
0064ce7c  ba 07 f3 eb                                      bl #0x30ed6c
0064ce80  00 10 a0 e1                                      mov r1, r0
0064ce84  05 00 a0 e1                                      mov r0, r5
0064ce88  45 07 f3 eb                                      bl #0x30eba4
0064ce8c  00 10 a0 e3                                      mov r1, #0
0064ce90  00 50 a0 e1                                      mov r5, r0
0064ce94  44 00 94 e5                                      ldr r0, [r4, #0x44]
0064ce98  b3 07 f3 eb                                      bl #0x30ed6c
0064ce9c  00 10 a0 e1                                      mov r1, r0
0064cea0  05 00 a0 e1                                      mov r0, r5
0064cea4  3e 07 f3 eb                                      bl #0x30eba4
0064cea8  54 10 94 e5                                      ldr r1, [r4, #0x54]
0064ceac  3c 07 f3 eb                                      bl #0x30eba4
0064ceb0  00 10 a0 e3                                      mov r1, #0
0064ceb4  00 90 a0 e1                                      mov sb, r0
0064ceb8  28 00 94 e5                                      ldr r0, [r4, #0x28]
0064cebc  aa 07 f3 eb                                      bl #0x30ed6c
0064cec0  00 10 a0 e3                                      mov r1, #0
0064cec4  00 50 a0 e1                                      mov r5, r0
0064cec8  38 00 94 e5                                      ldr r0, [r4, #0x38]
0064cecc  a6 07 f3 eb                                      bl #0x30ed6c
0064ced0  00 10 a0 e1                                      mov r1, r0
0064ced4  05 00 a0 e1                                      mov r0, r5
0064ced8  31 07 f3 eb                                      bl #0x30eba4
0064cedc  00 10 a0 e3                                      mov r1, #0
0064cee0  00 50 a0 e1                                      mov r5, r0
0064cee4  48 00 94 e5                                      ldr r0, [r4, #0x48]
0064cee8  9f 07 f3 eb                                      bl #0x30ed6c
0064ceec  00 10 a0 e1                                      mov r1, r0
0064cef0  05 00 a0 e1                                      mov r0, r5
0064cef4  2a 07 f3 eb                                      bl #0x30eba4
0064cef8  58 10 94 e5                                      ldr r1, [r4, #0x58]
0064cefc  28 07 f3 eb                                      bl #0x30eba4
0064cf00  00 10 a0 e3                                      mov r1, #0
0064cf04  00 80 a0 e1                                      mov r8, r0
0064cf08  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
0064cf0c  96 07 f3 eb                                      bl #0x30ed6c
0064cf10  00 10 a0 e3                                      mov r1, #0
0064cf14  00 50 a0 e1                                      mov r5, r0
0064cf18  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
0064cf1c  92 07 f3 eb                                      bl #0x30ed6c
0064cf20  00 10 a0 e1                                      mov r1, r0
0064cf24  05 00 a0 e1                                      mov r0, r5
0064cf28  1d 07 f3 eb                                      bl #0x30eba4
0064cf2c  00 10 a0 e3                                      mov r1, #0
0064cf30  00 50 a0 e1                                      mov r5, r0
0064cf34  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0064cf38  8b 07 f3 eb                                      bl #0x30ed6c
0064cf3c  00 10 a0 e1                                      mov r1, r0
0064cf40  05 00 a0 e1                                      mov r0, r5
0064cf44  16 07 f3 eb                                      bl #0x30eba4
0064cf48  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0064cf4c  14 07 f3 eb                                      bl #0x30eba4
0064cf50  4c 31 94 e5                                      ldr r3, [r4, #0x14c]
0064cf54  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
0064cf58  00 60 a0 e1                                      mov r6, r0
0064cf5c  00 a0 93 e5                                      ldr sl, [r3]
0064cf60  04 40 8f e0                                      add r4, pc, r4
0064cf64  09 10 a0 e1                                      mov r1, sb
0064cf68  04 a0 84 e5                                      str sl, [r4, #4]
0064cf6c  04 70 93 e5                                      ldr r7, [r3, #4]
0064cf70  08 70 84 e5                                      str r7, [r4, #8]
0064cf74  08 50 93 e5                                      ldr r5, [r3, #8]
0064cf78  0c 50 84 e5                                      str r5, [r4, #0xc]
0064cf7c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0064cf80  10 00 84 e5                                      str r0, [r4, #0x10]
0064cf84  10 b0 93 e5                                      ldr fp, [r3, #0x10]
0064cf88  14 b0 84 e5                                      str fp, [r4, #0x14]
0064cf8c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0064cf90  04 30 8d e5                                      str r3, [sp, #4]
0064cf94  04 05 f3 eb                                      bl #0x30e3ac
0064cf98  08 10 a0 e1                                      mov r1, r8
0064cf9c  10 00 84 e5                                      str r0, [r4, #0x10]
0064cfa0  0b 00 a0 e1                                      mov r0, fp
0064cfa4  00 05 f3 eb                                      bl #0x30e3ac
0064cfa8  14 00 84 e5                                      str r0, [r4, #0x14]
0064cfac  04 30 9d e5                                      ldr r3, [sp, #4]
0064cfb0  06 10 a0 e1                                      mov r1, r6
0064cfb4  03 00 a0 e1                                      mov r0, r3
0064cfb8  fb 04 f3 eb                                      bl #0x30e3ac
0064cfbc  09 10 a0 e1                                      mov r1, sb
0064cfc0  18 00 84 e5                                      str r0, [r4, #0x18]
0064cfc4  0a 00 a0 e1                                      mov r0, sl
0064cfc8  f7 04 f3 eb                                      bl #0x30e3ac
0064cfcc  08 10 a0 e1                                      mov r1, r8
0064cfd0  04 00 84 e5                                      str r0, [r4, #4]
0064cfd4  07 00 a0 e1                                      mov r0, r7
0064cfd8  f3 04 f3 eb                                      bl #0x30e3ac
0064cfdc  06 10 a0 e1                                      mov r1, r6
0064cfe0  08 00 84 e5                                      str r0, [r4, #8]
0064cfe4  05 00 a0 e1                                      mov r0, r5
0064cfe8  ef 04 f3 eb                                      bl #0x30e3ac
0064cfec  0c 00 84 e5                                      str r0, [r4, #0xc]
0064cff0  04 00 84 e2                                      add r0, r4, #4
0064cff4  0c d0 8d e2                                      add sp, sp, #0xc
0064cff8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064cffc  05 00 a0 e1                                      mov r0, r5
0064d000  d9 05 f3 eb                                      bl #0x30e76c
0064d004  00 00 50 e3                                      cmp r0, #0
0064d008  95 ff ff 0a                                      beq #0x64ce64
0064d00c  bf 24 a0 e3                                      mov r2, #0xbf000000
0064d010  02 25 82 e2                                      add r2, r2, #0x800000
0064d014  fe 35 a0 e3                                      mov r3, #0x3f800000
0064d018  05 00 a0 e1                                      mov r0, r5
0064d01c  0c 20 85 e5                                      str r2, [r5, #0xc]
0064d020  18 30 85 e5                                      str r3, [r5, #0x18]
0064d024  04 20 85 e5                                      str r2, [r5, #4]
0064d028  08 20 85 e5                                      str r2, [r5, #8]
0064d02c  10 30 85 e5                                      str r3, [r5, #0x10]
0064d030  14 30 85 e5                                      str r3, [r5, #0x14]
0064d034  80 06 f3 eb                                      bl #0x30ea3c
0064d038  89 ff ff ea                                      b #0x64ce64
; mapping-symbol data/literal pool
0064d03c  78 a1 3a 00 6c a0 3a 00                          .byte 0x78, 0xa1, 0x3a, 0x00, 0x6c, 0xa0, 0x3a, 0x00

; FUNCTION 0x0064da1c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode19onRegisterSceneNodeEv
; demangled: glitch::collada::CParticleSystemSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0064da1c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0064da20  78 21 90 e5                                      ldr r2, [r0, #0x178]
0064da24  29 3c 05 e3                                      movw r3, #0x5c29
0064da28  8f 32 4c e3                                      movt r3, #0xc28f
0064da2c  00 10 92 e5                                      ldr r1, [r2]
0064da30  1c d0 4d e2                                      sub sp, sp, #0x1c
0064da34  00 60 a0 e1                                      mov r6, r0
0064da38  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0064da3c  01 20 82 e0                                      add r2, r2, r1
0064da40  24 10 92 e5                                      ldr r1, [r2, #0x24]
0064da44  28 20 92 e5                                      ldr r2, [r2, #0x28]
0064da48  02 20 61 e0                                      rsb r2, r1, r2
0064da4c  42 21 a0 e1                                      asr r2, r2, #2
0064da50  93 02 03 e0                                      mul r3, r3, r2
0064da54  00 00 53 e3                                      cmp r3, #0
0064da58  15 00 00 0a                                      beq #0x64dab4
0064da5c  10 71 90 e5                                      ldr r7, [r0, #0x110]
0064da60  14 40 8d e2                                      add r4, sp, #0x14
0064da64  04 00 a0 e1                                      mov r0, r4
0064da68  00 c0 97 e5                                      ldr ip, [r7]
0064da6c  06 10 a0 e1                                      mov r1, r6
0064da70  00 20 a0 e3                                      mov r2, #0
0064da74  00 30 96 e5                                      ldr r3, [r6]
0064da78  24 50 9c e5                                      ldr r5, [ip, #0x24]
0064da7c  0f e0 a0 e1                                      mov lr, pc
0064da80  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0064da84  08 20 a0 e3                                      mov r2, #8
0064da88  00 30 a0 e3                                      mov r3, #0
0064da8c  00 20 8d e5                                      str r2, [sp]
0064da90  02 21 e0 e3                                      mvn r2, #0x80000000
0064da94  08 20 8d e5                                      str r2, [sp, #8]
0064da98  04 30 8d e5                                      str r3, [sp, #4]
0064da9c  07 00 a0 e1                                      mov r0, r7
0064daa0  06 10 a0 e1                                      mov r1, r6
0064daa4  04 20 a0 e1                                      mov r2, r4
0064daa8  35 ff 2f e1                                      blx r5
0064daac  04 00 a0 e1                                      mov r0, r4
0064dab0  4c 0c f3 eb                                      bl #0x310be8
0064dab4  01 00 a0 e3                                      mov r0, #1
0064dab8  1c d0 8d e2                                      add sp, sp, #0x1c
0064dabc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0064dac0, declared_size=224, range_size=224, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode9onAnimateEj
; demangled: glitch::collada::CParticleSystemSceneNode::onAnimate(unsigned int)
; decoder-mode: arm
0064dac0  70 40 2d e9                                      push {r4, r5, r6, lr}
0064dac4  00 40 a0 e1                                      mov r4, r0
0064dac8  08 d0 4d e2                                      sub sp, sp, #8
0064dacc  01 50 a0 e1                                      mov r5, r1
0064dad0  a5 24 fd eb                                      bl #0x596d6c
0064dad4  ec 30 94 e5                                      ldr r3, [r4, #0xec]
0064dad8  78 61 94 e5                                      ldr r6, [r4, #0x178]
0064dadc  03 00 a0 e1                                      mov r0, r3
0064dae0  00 30 93 e5                                      ldr r3, [r3]
0064dae4  0f e0 a0 e1                                      mov lr, pc
0064dae8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0064daec  0c 00 86 e5                                      str r0, [r6, #0xc]
0064daf0  10 21 94 e5                                      ldr r2, [r4, #0x110]
0064daf4  00 30 e0 e3                                      mvn r3, #0
0064daf8  44 51 84 e5                                      str r5, [r4, #0x144]
0064dafc  07 30 cd e5                                      strb r3, [sp, #7]
0064db00  04 30 cd e5                                      strb r3, [sp, #4]
0064db04  05 30 cd e5                                      strb r3, [sp, #5]
0064db08  06 30 cd e5                                      strb r3, [sp, #6]
0064db0c  14 30 92 e5                                      ldr r3, [r2, #0x14]
0064db10  03 00 a0 e1                                      mov r0, r3
0064db14  00 30 93 e5                                      ldr r3, [r3]
0064db18  0f e0 a0 e1                                      mov lr, pc
0064db1c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0064db20  07 00 10 e3                                      tst r0, #7
0064db24  04 50 8d 02                                      addeq r5, sp, #4
0064db28  0e 00 00 0a                                      beq #0x64db68
0064db2c  0d 00 a0 e1                                      mov r0, sp
0064db30  04 10 a0 e1                                      mov r1, r4
0064db34  00 20 a0 e3                                      mov r2, #0
0064db38  00 30 94 e5                                      ldr r3, [r4]
0064db3c  0f e0 a0 e1                                      mov lr, pc
0064db40  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0064db44  74 11 94 e5                                      ldr r1, [r4, #0x174]
0064db48  04 50 8d e2                                      add r5, sp, #4
0064db4c  00 00 9d e5                                      ldr r0, [sp]
0064db50  71 10 ff e6                                      uxth r1, r1
0064db54  00 20 a0 e3                                      mov r2, #0
0064db58  05 30 a0 e1                                      mov r3, r5
0064db5c  90 e5 fd eb                                      bl #0x5c71a4
0064db60  0d 00 a0 e1                                      mov r0, sp
0064db64  1f 0c f3 eb                                      bl #0x310be8
0064db68  44 01 94 e5                                      ldr r0, [r4, #0x144]
0064db6c  db 01 f3 eb                                      bl #0x30e2e0
0064db70  11 13 a0 e3                                      mov r1, #0x44000000
0064db74  7a 18 81 e2                                      add r1, r1, #0x7a0000
0064db78  45 04 f3 eb                                      bl #0x30ec94
0064db7c  78 61 94 e5                                      ldr r6, [r4, #0x178]
0064db80  00 10 a0 e1                                      mov r1, r0
0064db84  05 20 a0 e1                                      mov r2, r5
0064db88  06 00 a0 e1                                      mov r0, r6
0064db8c  00 30 96 e5                                      ldr r3, [r6]
0064db90  0f e0 a0 e1                                      mov lr, pc
0064db94  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0064db98  08 d0 8d e2                                      add sp, sp, #8
0064db9c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064ecac, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNodeD1Ev
; demangled: glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
0064ecac  70 40 2d e9                                      push {r4, r5, r6, lr}
0064ecb0  54 50 9f e5                                      ldr r5, [pc, #0x54]
0064ecb4  54 30 9f e5                                      ldr r3, [pc, #0x54]
0064ecb8  78 21 90 e5                                      ldr r2, [r0, #0x178]
0064ecbc  05 50 8f e0                                      add r5, pc, r5
0064ecc0  03 30 95 e7                                      ldr r3, [r5, r3]
0064ecc4  00 00 52 e3                                      cmp r2, #0
0064ecc8  00 40 a0 e1                                      mov r4, r0
0064eccc  4e 1f 83 e2                                      add r1, r3, #0x138
0064ecd0  1c 30 83 e2                                      add r3, r3, #0x1c
0064ecd4  00 30 80 e5                                      str r3, [r0]
0064ecd8  90 11 80 e5                                      str r1, [r0, #0x190]
0064ecdc  03 00 00 0a                                      beq #0x64ecf0
0064ece0  02 00 a0 e1                                      mov r0, r2
0064ece4  00 30 92 e5                                      ldr r3, [r2]
0064ece8  0f e0 a0 e1                                      mov lr, pc
0064ecec  08 f0 93 e5                                      ldr pc, [r3, #8]
0064ecf0  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0064ecf4  04 00 a0 e1                                      mov r0, r4
0064ecf8  01 10 95 e7                                      ldr r1, [r5, r1]
0064ecfc  04 10 81 e2                                      add r1, r1, #4
0064ed00  ec 62 00 eb                                      bl #0x6678b8
0064ed04  04 00 a0 e1                                      mov r0, r4
0064ed08  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064ed0c  d4 5d 34 00 4c 2d 00 00 bc 13 00 00              .byte 0xd4, 0x5d, 0x34, 0x00, 0x4c, 0x2d, 0x00, 0x00, 0xbc, 0x13, 0x00, 0x00

; FUNCTION 0x0064ed18, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNodeD0Ev
; demangled: glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
0064ed18  10 40 2d e9                                      push {r4, lr}
0064ed1c  00 40 a0 e1                                      mov r4, r0
0064ed20  e1 ff ff eb                                      bl #0x64ecac
0064ed24  04 00 a0 e1                                      mov r0, r4
0064ed28  60 fd f2 eb                                      bl #0x30e2b0
0064ed2c  04 00 a0 e1                                      mov r0, r4
0064ed30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064ed34, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNodeD2Ev
; demangled: glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
0064ed34  70 40 2d e9                                      push {r4, r5, r6, lr}
0064ed38  00 30 91 e5                                      ldr r3, [r1]
0064ed3c  01 50 a0 e1                                      mov r5, r1
0064ed40  00 40 a0 e1                                      mov r4, r0
0064ed44  00 30 80 e5                                      str r3, [r0]
0064ed48  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0064ed4c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
0064ed50  03 20 80 e7                                      str r2, [r0, r3]
0064ed54  00 30 90 e5                                      ldr r3, [r0]
0064ed58  20 20 91 e5                                      ldr r2, [r1, #0x20]
0064ed5c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064ed60  03 20 80 e7                                      str r2, [r0, r3]
0064ed64  78 31 90 e5                                      ldr r3, [r0, #0x178]
0064ed68  00 00 53 e3                                      cmp r3, #0
0064ed6c  03 00 00 0a                                      beq #0x64ed80
0064ed70  03 00 a0 e1                                      mov r0, r3
0064ed74  00 30 93 e5                                      ldr r3, [r3]
0064ed78  0f e0 a0 e1                                      mov lr, pc
0064ed7c  08 f0 93 e5                                      ldr pc, [r3, #8]
0064ed80  04 10 85 e2                                      add r1, r5, #4
0064ed84  04 00 a0 e1                                      mov r0, r4
0064ed88  ca 62 00 eb                                      bl #0x6678b8
0064ed8c  04 00 a0 e1                                      mov r0, r4
0064ed90  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064ed94, declared_size=176, range_size=176, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_8SEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SEmitter&, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064ed94  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0064ed98  94 50 9f e5                                      ldr r5, [pc, #0x94]
0064ed9c  94 c0 9f e5                                      ldr ip, [pc, #0x94]
0064eda0  94 e0 9f e5                                      ldr lr, [pc, #0x94]
0064eda4  05 50 8f e0                                      add r5, pc, r5
0064eda8  0c c0 95 e7                                      ldr ip, [r5, ip]
0064edac  0e e0 95 e7                                      ldr lr, [r5, lr]
0064edb0  01 70 a0 e3                                      mov r7, #1
0064edb4  24 60 9c e5                                      ldr r6, [ip, #0x24]
0064edb8  08 e0 8e e2                                      add lr, lr, #8
0064edbc  94 71 80 e5                                      str r7, [r0, #0x194]
0064edc0  90 e1 80 e5                                      str lr, [r0, #0x190]
0064edc4  00 60 80 e5                                      str r6, [r0]
0064edc8  0c 60 16 e5                                      ldr r6, [r6, #-0xc]
0064edcc  28 70 9c e5                                      ldr r7, [ip, #0x28]
0064edd0  0c d0 4d e2                                      sub sp, sp, #0xc
0064edd4  01 e0 a0 e1                                      mov lr, r1
0064edd8  06 70 80 e7                                      str r7, [r0, r6]
0064eddc  04 10 8c e2                                      add r1, ip, #4
0064ede0  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0064ede4  02 60 a0 e1                                      mov r6, r2
0064ede8  0e 20 a0 e1                                      mov r2, lr
0064edec  00 40 a0 e1                                      mov r4, r0
0064edf0  00 c0 8d e5                                      str ip, [sp]
0064edf4  27 63 00 eb                                      bl #0x667a98
0064edf8  40 30 9f e5                                      ldr r3, [pc, #0x40]
0064edfc  8c 61 84 e5                                      str r6, [r4, #0x18c]
0064ee00  04 00 a0 e1                                      mov r0, r4
0064ee04  03 30 95 e7                                      ldr r3, [r5, r3]
0064ee08  02 10 a0 e3                                      mov r1, #2
0064ee0c  4e 2f 83 e2                                      add r2, r3, #0x138
0064ee10  1c 30 83 e2                                      add r3, r3, #0x1c
0064ee14  00 30 84 e5                                      str r3, [r4]
0064ee18  90 21 84 e5                                      str r2, [r4, #0x190]
0064ee1c  00 30 96 e5                                      ldr r3, [r6]
0064ee20  30 31 84 e5                                      str r3, [r4, #0x130]
0064ee24  dc 20 fd eb                                      bl #0x59719c
0064ee28  04 00 a0 e1                                      mov r0, r4
0064ee2c  0c d0 8d e2                                      add sp, sp, #0xc
0064ee30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0064ee34  ec 5c 34 00 bc 13 00 00 44 2b 00 00 4c 2d 00 00  .byte 0xec, 0x5c, 0x34, 0x00, 0xbc, 0x13, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x4c, 0x2d, 0x00, 0x00

; FUNCTION 0x0064ee44, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseERNS0_8SEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CParticleSystemSceneNode::CParticleSystemSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SEmitter&, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064ee44  70 40 2d e9                                      push {r4, r5, r6, lr}
0064ee48  08 d0 4d e2                                      sub sp, sp, #8
0064ee4c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0064ee50  01 50 a0 e1                                      mov r5, r1
0064ee54  03 60 a0 e1                                      mov r6, r3
0064ee58  04 10 81 e2                                      add r1, r1, #4
0064ee5c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0064ee60  00 40 a0 e1                                      mov r4, r0
0064ee64  00 c0 8d e5                                      str ip, [sp]
0064ee68  0a 63 00 eb                                      bl #0x667a98
0064ee6c  00 30 95 e5                                      ldr r3, [r5]
0064ee70  04 00 a0 e1                                      mov r0, r4
0064ee74  02 10 a0 e3                                      mov r1, #2
0064ee78  00 30 84 e5                                      str r3, [r4]
0064ee7c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0064ee80  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
0064ee84  03 20 84 e7                                      str r2, [r4, r3]
0064ee88  00 30 94 e5                                      ldr r3, [r4]
0064ee8c  20 20 95 e5                                      ldr r2, [r5, #0x20]
0064ee90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0064ee94  03 20 84 e7                                      str r2, [r4, r3]
0064ee98  8c 61 84 e5                                      str r6, [r4, #0x18c]
0064ee9c  00 30 96 e5                                      ldr r3, [r6]
0064eea0  30 31 84 e5                                      str r3, [r4, #0x130]
0064eea4  bc 20 fd eb                                      bl #0x59719c
0064eea8  04 00 a0 e1                                      mov r0, r4
0064eeac  08 d0 8d e2                                      add sp, sp, #8
0064eeb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0064f39c, declared_size=112, range_size=112, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode18deleteSharedBufferEv
; demangled: glitch::collada::CParticleSystemSceneNode::deleteSharedBuffer()
; decoder-mode: arm
0064f39c  10 40 2d e9                                      push {r4, lr}
0064f3a0  54 40 9f e5                                      ldr r4, [pc, #0x54]
0064f3a4  54 30 9f e5                                      ldr r3, [pc, #0x54]
0064f3a8  00 20 a0 e3                                      mov r2, #0
0064f3ac  04 40 8f e0                                      add r4, pc, r4
0064f3b0  03 30 94 e7                                      ldr r3, [r4, r3]
0064f3b4  00 00 93 e5                                      ldr r0, [r3]
0064f3b8  00 20 83 e5                                      str r2, [r3]
0064f3bc  02 00 50 e1                                      cmp r0, r2
0064f3c0  00 00 00 0a                                      beq #0x64f3c8
0064f3c4  6e 38 f3 eb                                      bl #0x31d584
0064f3c8  34 30 9f e5                                      ldr r3, [pc, #0x34]
0064f3cc  00 20 a0 e3                                      mov r2, #0
0064f3d0  03 30 94 e7                                      ldr r3, [r4, r3]
0064f3d4  00 00 93 e5                                      ldr r0, [r3]
0064f3d8  00 20 83 e5                                      str r2, [r3]
0064f3dc  02 00 50 e1                                      cmp r0, r2
0064f3e0  00 00 00 0a                                      beq #0x64f3e8
0064f3e4  66 38 f3 eb                                      bl #0x31d584
0064f3e8  18 30 9f e5                                      ldr r3, [pc, #0x18]
0064f3ec  00 20 a0 e3                                      mov r2, #0
0064f3f0  03 30 94 e7                                      ldr r3, [r4, r3]
0064f3f4  00 20 83 e5                                      str r2, [r3]
0064f3f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0064f3fc  e4 56 34 00 dc 28 00 00 b4 20 00 00 bc 11 00 00  .byte 0xe4, 0x56, 0x34, 0x00, 0xdc, 0x28, 0x00, 0x00, 0xb4, 0x20, 0x00, 0x00, 0xbc, 0x11, 0x00, 0x00

; FUNCTION 0x0064f6f8, declared_size=240, range_size=240, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::CParticleSystemSceneNode::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
0064f6f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064f6fc  50 31 90 e5                                      ldr r3, [r0, #0x150]
0064f700  59 8f 80 e2                                      add r8, r0, #0x164
0064f704  08 d0 4d e2                                      sub sp, sp, #8
0064f708  00 50 93 e5                                      ldr r5, [r3]
0064f70c  00 40 a0 e1                                      mov r4, r0
0064f710  01 60 a0 e1                                      mov r6, r1
0064f714  08 00 a0 e1                                      mov r0, r8
0064f718  05 10 a0 e1                                      mov r1, r5
0064f71c  fc ab ff eb                                      bl #0x63a714
0064f720  00 70 a0 e3                                      mov r7, #0
0064f724  08 20 8d e2                                      add r2, sp, #8
0064f728  04 70 22 e5                                      str r7, [r2, #-4]!
0064f72c  08 00 a0 e1                                      mov r0, r8
0064f730  05 10 a0 e1                                      mov r1, r5
0064f734  f3 b8 ff eb                                      bl #0x63db08
0064f738  07 00 55 e1                                      cmp r5, r7
0064f73c  27 00 00 da                                      ble #0x64f7e0
0064f740  64 91 06 e3                                      movw sb, #0x6164
0064f744  65 96 46 e3                                      movt sb, #0x6665
0064f748  50 31 94 e5                                      ldr r3, [r4, #0x150]
0064f74c  06 00 a0 e1                                      mov r0, r6
0064f750  04 30 93 e5                                      ldr r3, [r3, #4]
0064f754  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
0064f758  01 10 81 e2                                      add r1, r1, #1
0064f75c  a0 23 fd eb                                      bl #0x5985e4
0064f760  00 a0 50 e2                                      subs sl, r0, #0
0064f764  1a 00 00 0a                                      beq #0x64f7d4
0064f768  f4 80 ba e5                                      ldr r8, [sl, #0xf4]!
0064f76c  0a 00 58 e1                                      cmp r8, sl
0064f770  03 00 00 1a                                      bne #0x64f784
0064f774  16 00 00 ea                                      b #0x64f7d4
0064f778  00 80 98 e5                                      ldr r8, [r8]
0064f77c  08 00 5a e1                                      cmp sl, r8
0064f780  13 00 00 0a                                      beq #0x64f7d4
0064f784  00 00 58 e3                                      cmp r8, #0
0064f788  08 30 a0 01                                      moveq r3, r8
0064f78c  04 30 48 12                                      subne r3, r8, #4
0064f790  03 00 a0 e1                                      mov r0, r3
0064f794  00 30 93 e5                                      ldr r3, [r3]
0064f798  0f e0 a0 e1                                      mov lr, pc
0064f79c  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
0064f7a0  09 00 50 e1                                      cmp r0, sb
0064f7a4  f3 ff ff 1a                                      bne #0x64f778
0064f7a8  00 00 58 e3                                      cmp r8, #0
0064f7ac  08 30 a0 01                                      moveq r3, r8
0064f7b0  04 30 48 12                                      subne r3, r8, #4
0064f7b4  03 00 a0 e1                                      mov r0, r3
0064f7b8  04 10 a0 e1                                      mov r1, r4
0064f7bc  00 30 93 e5                                      ldr r3, [r3]
0064f7c0  0f e0 a0 e1                                      mov lr, pc
0064f7c4  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0064f7c8  00 80 98 e5                                      ldr r8, [r8]
0064f7cc  08 00 5a e1                                      cmp sl, r8
0064f7d0  eb ff ff 1a                                      bne #0x64f784
0064f7d4  01 70 87 e2                                      add r7, r7, #1
0064f7d8  05 00 57 e1                                      cmp r7, r5
0064f7dc  d9 ff ff 1a                                      bne #0x64f748
0064f7e0  08 d0 8d e2                                      add sp, sp, #8
0064f7e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0064fd60, declared_size=1140, range_size=1140, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode4initEv
; demangled: glitch::collada::CParticleSystemSceneNode::init()
; decoder-mode: arm
0064fd60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064fd64  58 41 90 e5                                      ldr r4, [r0, #0x158]
0064fd68  5c 71 90 e5                                      ldr r7, [r0, #0x15c]
0064fd6c  44 94 9f e5                                      ldr sb, [pc, #0x444]
0064fd70  64 d0 4d e2                                      sub sp, sp, #0x64
0064fd74  07 00 54 e1                                      cmp r4, r7
0064fd78  00 60 a0 e1                                      mov r6, r0
0064fd7c  09 90 8f e0                                      add sb, pc, sb
0064fd80  29 00 00 0a                                      beq #0x64fe2c
0064fd84  30 34 9f e5                                      ldr r3, [pc, #0x430]
0064fd88  30 14 9f e5                                      ldr r1, [pc, #0x430]
0064fd8c  4d 2f 80 e2                                      add r2, r0, #0x134
0064fd90  03 30 8f e0                                      add r3, pc, r3
0064fd94  0c 30 8d e5                                      str r3, [sp, #0xc]
0064fd98  24 34 9f e5                                      ldr r3, [pc, #0x424]
0064fd9c  08 10 8d e5                                      str r1, [sp, #8]
0064fda0  00 20 8d e5                                      str r2, [sp]
0064fda4  03 30 8f e0                                      add r3, pc, r3
0064fda8  10 30 8d e5                                      str r3, [sp, #0x10]
0064fdac  14 34 9f e5                                      ldr r3, [pc, #0x414]
0064fdb0  09 b0 a0 e1                                      mov fp, sb
0064fdb4  03 30 8f e0                                      add r3, pc, r3
0064fdb8  18 30 8d e5                                      str r3, [sp, #0x18]
0064fdbc  08 34 9f e5                                      ldr r3, [pc, #0x408]
0064fdc0  03 30 8f e0                                      add r3, pc, r3
0064fdc4  14 30 8d e5                                      str r3, [sp, #0x14]
0064fdc8  00 30 94 e5                                      ldr r3, [r4]
0064fdcc  00 20 a0 e3                                      mov r2, #0
0064fdd0  06 10 a0 e3                                      mov r1, #6
0064fdd4  1c 80 93 e5                                      ldr r8, [r3, #0x1c]
0064fdd8  04 00 93 e5                                      ldr r0, [r3, #4]
0064fddc  00 00 58 e3                                      cmp r8, #0
0064fde0  04 80 88 12                                      addne r8, r8, #4
0064fde4  47 fc fd eb                                      bl #0x5cef08
0064fde8  00 30 94 e5                                      ldr r3, [r4]
0064fdec  00 50 a0 e1                                      mov r5, r0
0064fdf0  04 30 93 e5                                      ldr r3, [r3, #4]
0064fdf4  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
0064fdf8  00 00 52 e1                                      cmp r2, r0
0064fdfc  20 a0 93 85                                      ldrhi sl, [r3, #0x20]
0064fe00  34 31 96 e5                                      ldr r3, [r6, #0x134]
0064fe04  00 a0 a0 93                                      movls sl, #0
0064fe08  00 a2 8a 80                                      addhi sl, sl, r0, lsl #4
0064fe0c  24 20 93 e5                                      ldr r2, [r3, #0x24]
0064fe10  20 20 92 e5                                      ldr r2, [r2, #0x20]
0064fe14  04 20 92 e5                                      ldr r2, [r2, #4]
0064fe18  00 00 52 e3                                      cmp r2, #0
0064fe1c  59 00 00 0a                                      beq #0x64ff88
0064fe20  04 40 84 e2                                      add r4, r4, #4
0064fe24  07 00 54 e1                                      cmp r4, r7
0064fe28  e6 ff ff 1a                                      bne #0x64fdc8
0064fe2c  58 40 8d e2                                      add r4, sp, #0x58
0064fe30  04 00 a0 e1                                      mov r0, r4
0064fe34  06 10 a0 e1                                      mov r1, r6
0064fe38  00 20 a0 e3                                      mov r2, #0
0064fe3c  00 30 96 e5                                      ldr r3, [r6]
0064fe40  0f e0 a0 e1                                      mov lr, pc
0064fe44  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0064fe48  58 30 9d e5                                      ldr r3, [sp, #0x58]
0064fe4c  06 10 a0 e3                                      mov r1, #6
0064fe50  00 20 a0 e3                                      mov r2, #0
0064fe54  04 00 93 e5                                      ldr r0, [r3, #4]
0064fe58  2a fc fd eb                                      bl #0x5cef08
0064fe5c  74 01 86 e5                                      str r0, [r6, #0x174]
0064fe60  04 00 a0 e1                                      mov r0, r4
0064fe64  5f 03 f3 eb                                      bl #0x310be8
0064fe68  78 c1 96 e5                                      ldr ip, [r6, #0x178]
0064fe6c  54 40 8d e2                                      add r4, sp, #0x54
0064fe70  04 00 a0 e1                                      mov r0, r4
0064fe74  00 30 9c e5                                      ldr r3, [ip]
0064fe78  06 10 a0 e1                                      mov r1, r6
0064fe7c  00 20 a0 e3                                      mov r2, #0
0064fe80  0c 50 13 e5                                      ldr r5, [r3, #-0xc]
0064fe84  00 30 96 e5                                      ldr r3, [r6]
0064fe88  05 50 8c e0                                      add r5, ip, r5
0064fe8c  0f e0 a0 e1                                      mov lr, pc
0064fe90  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0064fe94  34 13 9f e5                                      ldr r1, [pc, #0x334]
0064fe98  05 00 a0 e1                                      mov r0, r5
0064fe9c  01 10 8f e0                                      add r1, pc, r1
0064fea0  85 f4 ff eb                                      bl #0x64d0bc
0064fea4  34 c0 95 e5                                      ldr ip, [r5, #0x34]
0064fea8  30 10 85 e2                                      add r1, r5, #0x30
0064feac  00 e0 a0 e1                                      mov lr, r0
0064feb0  00 00 5c e3                                      cmp ip, #0
0064feb4  01 c0 a0 01                                      moveq ip, r1
0064feb8  0a 00 00 0a                                      beq #0x64fee8
0064febc  01 20 a0 e1                                      mov r2, r1
0064fec0  00 00 00 ea                                      b #0x64fec8
0064fec4  03 c0 a0 e1                                      mov ip, r3
0064fec8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0064fecc  03 00 5e e1                                      cmp lr, r3
0064fed0  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0064fed4  08 30 9c 95                                      ldrls r3, [ip, #8]
0064fed8  02 c0 a0 81                                      movhi ip, r2
0064fedc  0c 20 a0 e1                                      mov r2, ip
0064fee0  00 00 53 e3                                      cmp r3, #0
0064fee4  f6 ff ff 1a                                      bne #0x64fec4
0064fee8  0c 00 51 e1                                      cmp r1, ip
0064feec  1b 00 00 0a                                      beq #0x64ff60
0064fef0  10 20 9c e5                                      ldr r2, [ip, #0x10]
0064fef4  0c 30 a0 e1                                      mov r3, ip
0064fef8  02 00 5e e1                                      cmp lr, r2
0064fefc  17 00 00 3a                                      blo #0x64ff60
0064ff00  14 20 93 e5                                      ldr r2, [r3, #0x14]
0064ff04  00 00 52 e3                                      cmp r2, #0
0064ff08  0b 00 00 0a                                      beq #0x64ff3c
0064ff0c  54 30 9d e5                                      ldr r3, [sp, #0x54]
0064ff10  60 00 8d e2                                      add r0, sp, #0x60
0064ff14  48 30 8d e5                                      str r3, [sp, #0x48]
0064ff18  00 00 53 e3                                      cmp r3, #0
0064ff1c  00 10 93 15                                      ldrne r1, [r3]
0064ff20  01 10 81 12                                      addne r1, r1, #1
0064ff24  00 10 83 15                                      strne r1, [r3]
0064ff28  48 30 9d 15                                      ldrne r3, [sp, #0x48]
0064ff2c  00 10 92 e5                                      ldr r1, [r2]
0064ff30  18 10 20 e5                                      str r1, [r0, #-0x18]!
0064ff34  00 30 82 e5                                      str r3, [r2]
0064ff38  2a 03 f3 eb                                      bl #0x310be8
0064ff3c  04 00 a0 e1                                      mov r0, r4
0064ff40  28 03 f3 eb                                      bl #0x310be8
0064ff44  78 31 96 e5                                      ldr r3, [r6, #0x178]
0064ff48  03 00 a0 e1                                      mov r0, r3
0064ff4c  00 30 93 e5                                      ldr r3, [r3]
0064ff50  0f e0 a0 e1                                      mov lr, pc
0064ff54  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0064ff58  64 d0 8d e2                                      add sp, sp, #0x64
0064ff5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064ff60  30 30 8d e2                                      add r3, sp, #0x30
0064ff64  30 e0 8d e5                                      str lr, [sp, #0x30]
0064ff68  40 00 8d e2                                      add r0, sp, #0x40
0064ff6c  00 e0 a0 e3                                      mov lr, #0
0064ff70  44 20 8d e2                                      add r2, sp, #0x44
0064ff74  34 e0 8d e5                                      str lr, [sp, #0x34]
0064ff78  44 c0 8d e5                                      str ip, [sp, #0x44]
0064ff7c  bc aa ff eb                                      bl #0x63aa74
0064ff80  40 30 9d e5                                      ldr r3, [sp, #0x40]
0064ff84  dd ff ff ea                                      b #0x64ff00
0064ff88  38 21 96 e5                                      ldr r2, [r6, #0x138]
0064ff8c  00 00 53 e3                                      cmp r3, #0
0064ff90  20 30 8d e5                                      str r3, [sp, #0x20]
0064ff94  24 20 8d e5                                      str r2, [sp, #0x24]
0064ff98  04 00 00 0a                                      beq #0x64ffb0
0064ff9c  04 20 93 e5                                      ldr r2, [r3, #4]
0064ffa0  00 00 52 e3                                      cmp r2, #0
0064ffa4  01 20 82 12                                      addne r2, r2, #1
0064ffa8  04 20 83 15                                      strne r2, [r3, #4]
0064ffac  34 31 96 15                                      ldrne r3, [r6, #0x134]
0064ffb0  00 10 a0 e3                                      mov r1, #0
0064ffb4  28 10 8d e5                                      str r1, [sp, #0x28]
0064ffb8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0064ffbc  20 00 93 e5                                      ldr r0, [r3, #0x20]
0064ffc0  34 30 90 e5                                      ldr r3, [r0, #0x34]
0064ffc4  01 00 53 e1                                      cmp r3, r1
0064ffc8  18 00 80 02                                      addeq r0, r0, #0x18
0064ffcc  28 00 8d 05                                      streq r0, [sp, #0x28]
0064ffd0  66 00 00 1a                                      bne #0x650170
0064ffd4  08 10 9d e5                                      ldr r1, [sp, #8]
0064ffd8  08 10 90 e9                                      ldmib r0, {r3, ip}
0064ffdc  01 20 9b e7                                      ldr r2, [fp, r1]
0064ffe0  c3 3f c3 e1                                      bic r3, r3, r3, asr #31
0064ffe4  0c 00 53 e1                                      cmp r3, ip
0064ffe8  2c 30 8d d5                                      strle r3, [sp, #0x2c]
0064ffec  2c c0 8d c5                                      strgt ip, [sp, #0x2c]
0064fff0  20 10 8d e2                                      add r1, sp, #0x20
0064fff4  00 00 92 e5                                      ldr r0, [r2]
0064fff8  00 30 a0 e3                                      mov r3, #0
0064fffc  5c 20 8d e2                                      add r2, sp, #0x5c
00650000  04 10 8d e5                                      str r1, [sp, #4]
00650004  5c 30 8d e5                                      str r3, [sp, #0x5c]
00650008  63 f1 fe eb                                      bl #0x60c59c
0065000c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00650010  00 00 52 e3                                      cmp r2, #0
00650014  2d 00 00 0a                                      beq #0x6500d0
00650018  14 00 92 e5                                      ldr r0, [r2, #0x14]
0065001c  78 31 96 e5                                      ldr r3, [r6, #0x178]
00650020  14 10 9d e5                                      ldr r1, [sp, #0x14]
00650024  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00650028  00 20 93 e5                                      ldr r2, [r3]
0065002c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00650030  0c 90 12 e5                                      ldr sb, [r2, #-0xc]
00650034  09 90 83 e0                                      add sb, r3, sb
00650038  09 00 a0 e1                                      mov r0, sb
0065003c  1e f4 ff eb                                      bl #0x64d0bc
00650040  34 c0 99 e5                                      ldr ip, [sb, #0x34]
00650044  30 10 89 e2                                      add r1, sb, #0x30
00650048  00 e0 a0 e1                                      mov lr, r0
0065004c  00 00 5c e3                                      cmp ip, #0
00650050  01 c0 a0 01                                      moveq ip, r1
00650054  0a 00 00 0a                                      beq #0x650084
00650058  01 20 a0 e1                                      mov r2, r1
0065005c  00 00 00 ea                                      b #0x650064
00650060  03 c0 a0 e1                                      mov ip, r3
00650064  10 30 9c e5                                      ldr r3, [ip, #0x10]
00650068  03 00 5e e1                                      cmp lr, r3
0065006c  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00650070  08 30 9c 95                                      ldrls r3, [ip, #8]
00650074  02 c0 a0 81                                      movhi ip, r2
00650078  0c 20 a0 e1                                      mov r2, ip
0065007c  00 00 53 e3                                      cmp r3, #0
00650080  f6 ff ff 1a                                      bne #0x650060
00650084  0c 00 51 e1                                      cmp r1, ip
00650088  03 00 00 0a                                      beq #0x65009c
0065008c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00650090  0c 30 a0 e1                                      mov r3, ip
00650094  02 00 5e e1                                      cmp lr, r2
00650098  08 00 00 2a                                      bhs #0x6500c0
0065009c  38 30 8d e2                                      add r3, sp, #0x38
006500a0  38 e0 8d e5                                      str lr, [sp, #0x38]
006500a4  4c 00 8d e2                                      add r0, sp, #0x4c
006500a8  00 e0 a0 e3                                      mov lr, #0
006500ac  50 20 8d e2                                      add r2, sp, #0x50
006500b0  3c e0 8d e5                                      str lr, [sp, #0x3c]
006500b4  50 c0 8d e5                                      str ip, [sp, #0x50]
006500b8  6d aa ff eb                                      bl #0x63aa74
006500bc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006500c0  14 30 93 e5                                      ldr r3, [r3, #0x14]
006500c4  00 00 53 e3                                      cmp r3, #0
006500c8  1c 20 9d 15                                      ldrne r2, [sp, #0x1c]
006500cc  00 20 83 15                                      strne r2, [r3]
006500d0  ff 3f 0f e3                                      movw r3, #0xffff
006500d4  03 00 55 e1                                      cmp r5, r3
006500d8  28 00 00 0a                                      beq #0x650180
006500dc  00 30 9a e5                                      ldr r3, [sl]
006500e0  56 20 a0 e3                                      mov r2, #0x56
006500e4  00 00 9d e5                                      ldr r0, [sp]
006500e8  00 00 53 e3                                      cmp r3, #0
006500ec  04 30 83 12                                      addne r3, r3, #4
006500f0  08 10 a0 e1                                      mov r1, r8
006500f4  08 32 ff eb                                      bl #0x61c91c
006500f8  00 20 50 e2                                      subs r2, r0, #0
006500fc  1f 00 00 0a                                      beq #0x650180
00650100  78 31 96 e5                                      ldr r3, [r6, #0x178]
00650104  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00650108  00 00 93 e5                                      ldr r0, [r3]
0065010c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00650110  00 00 83 e0                                      add r0, r3, r0
00650114  e8 fe ff eb                                      bl #0x64fcbc
00650118  08 10 a0 e1                                      mov r1, r8
0065011c  01 2c a0 e3                                      mov r2, #0x100
00650120  ff 30 a0 e3                                      mov r3, #0xff
00650124  00 00 9d e5                                      ldr r0, [sp]
00650128  e6 2f ff eb                                      bl #0x61c0c8
0065012c  78 31 96 e5                                      ldr r3, [r6, #0x178]
00650130  00 10 50 e2                                      subs r1, r0, #0
00650134  01 10 a0 13                                      movne r1, #1
00650138  70 11 c6 e5                                      strb r1, [r6, #0x170]
0065013c  00 c0 93 e5                                      ldr ip, [r3]
00650140  00 20 a0 e1                                      mov r2, r0
00650144  10 10 9d e5                                      ldr r1, [sp, #0x10]
00650148  0c 00 1c e5                                      ldr r0, [ip, #-0xc]
0065014c  00 00 83 e0                                      add r0, r3, r0
00650150  d9 fe ff eb                                      bl #0x64fcbc
00650154  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00650158  00 00 50 e3                                      cmp r0, #0
0065015c  00 00 00 0a                                      beq #0x650164
00650160  9b ee fe eb                                      bl #0x60bbd4
00650164  04 00 9d e5                                      ldr r0, [sp, #4]
00650168  c1 24 ff eb                                      bl #0x619474
0065016c  2b ff ff ea                                      b #0x64fe20
00650170  00 00 9d e5                                      ldr r0, [sp]
00650174  7e f8 fe eb                                      bl #0x60e374
00650178  28 00 8d e5                                      str r0, [sp, #0x28]
0065017c  94 ff ff ea                                      b #0x64ffd4
00650180  19 20 a0 e3                                      mov r2, #0x19
00650184  00 00 9d e5                                      ldr r0, [sp]
00650188  08 10 a0 e1                                      mov r1, r8
0065018c  ff 30 a0 e3                                      mov r3, #0xff
00650190  cc 2f ff eb                                      bl #0x61c0c8
00650194  00 20 50 e2                                      subs r2, r0, #0
00650198  d8 ff ff 1a                                      bne #0x650100
0065019c  56 20 a0 e3                                      mov r2, #0x56
006501a0  00 00 9d e5                                      ldr r0, [sp]
006501a4  08 10 a0 e1                                      mov r1, r8
006501a8  18 30 9d e5                                      ldr r3, [sp, #0x18]
006501ac  da 31 ff eb                                      bl #0x61c91c
006501b0  00 20 a0 e1                                      mov r2, r0
006501b4  d1 ff ff ea                                      b #0x650100
; mapping-symbol data/literal pool
006501b8  14 4d 34 00 88 53 29 00 74 09 00 00 8c 53 29 00  .byte 0x14, 0x4d, 0x34, 0x00, 0x88, 0x53, 0x29, 0x00, 0x74, 0x09, 0x00, 0x00, 0x8c, 0x53, 0x29, 0x00
006501c8  44 53 29 00 10 53 29 00 4c 53 29 00              .byte 0x44, 0x53, 0x29, 0x00, 0x10, 0x53, 0x29, 0x00, 0x4c, 0x53, 0x29, 0x00

; FUNCTION 0x00651924, declared_size=168, range_size=168, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode26getParticleSystemParameterEPKc
; demangled: glitch::collada::CParticleSystemSceneNode::getParticleSystemParameter(char const*)
; decoder-mode: arm
00651924  30 40 2d e9                                      push {r4, r5, lr}
00651928  78 31 90 e5                                      ldr r3, [r0, #0x178]
0065192c  14 d0 4d e2                                      sub sp, sp, #0x14
00651930  00 20 93 e5                                      ldr r2, [r3]
00651934  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00651938  05 50 83 e0                                      add r5, r3, r5
0065193c  05 00 a0 e1                                      mov r0, r5
00651940  dd ed ff eb                                      bl #0x64d0bc
00651944  34 c0 95 e5                                      ldr ip, [r5, #0x34]
00651948  30 10 85 e2                                      add r1, r5, #0x30
0065194c  00 40 a0 e1                                      mov r4, r0
00651950  00 00 5c e3                                      cmp ip, #0
00651954  01 c0 a0 01                                      moveq ip, r1
00651958  0a 00 00 0a                                      beq #0x651988
0065195c  01 20 a0 e1                                      mov r2, r1
00651960  00 00 00 ea                                      b #0x651968
00651964  03 c0 a0 e1                                      mov ip, r3
00651968  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065196c  03 00 54 e1                                      cmp r4, r3
00651970  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00651974  08 30 9c 95                                      ldrls r3, [ip, #8]
00651978  02 c0 a0 81                                      movhi ip, r2
0065197c  0c 20 a0 e1                                      mov r2, ip
00651980  00 00 53 e3                                      cmp r3, #0
00651984  f6 ff ff 1a                                      bne #0x651964
00651988  0c 00 51 e1                                      cmp r1, ip
0065198c  03 00 00 0a                                      beq #0x6519a0
00651990  10 20 9c e5                                      ldr r2, [ip, #0x10]
00651994  0c 30 a0 e1                                      mov r3, ip
00651998  02 00 54 e1                                      cmp r4, r2
0065199c  07 00 00 2a                                      bhs #0x6519c0
006519a0  0d 30 a0 e1                                      mov r3, sp
006519a4  00 e0 a0 e3                                      mov lr, #0
006519a8  08 00 8d e2                                      add r0, sp, #8
006519ac  0c 20 8d e2                                      add r2, sp, #0xc
006519b0  10 40 8d e8                                      stm sp, {r4, lr}
006519b4  0c c0 8d e5                                      str ip, [sp, #0xc]
006519b8  2d a4 ff eb                                      bl #0x63aa74
006519bc  08 30 9d e5                                      ldr r3, [sp, #8]
006519c0  14 00 93 e5                                      ldr r0, [r3, #0x14]
006519c4  14 d0 8d e2                                      add sp, sp, #0x14
006519c8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0065615c, declared_size=756, range_size=756, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode15setParticleMeshEN5boost13intrusive_ptrINS_5scene11CMeshBufferEEE
; demangled: glitch::collada::CParticleSystemSceneNode::setParticleMesh(boost::intrusive_ptr<glitch::scene::CMeshBuffer>)
; decoder-mode: arm
0065615c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00656160  00 30 91 e5                                      ldr r3, [r1]
00656164  00 40 a0 e1                                      mov r4, r0
00656168  2c d0 4d e2                                      sub sp, sp, #0x2c
0065616c  00 00 53 e3                                      cmp r3, #0
00656170  04 20 93 15                                      ldrne r2, [r3, #4]
00656174  01 20 82 12                                      addne r2, r2, #1
00656178  04 20 83 15                                      strne r2, [r3, #4]
0065617c  40 01 90 e5                                      ldr r0, [r0, #0x140]
00656180  40 31 84 e5                                      str r3, [r4, #0x140]
00656184  00 00 50 e3                                      cmp r0, #0
00656188  00 00 00 0a                                      beq #0x656190
0065618c  fc 1c f3 eb                                      bl #0x31d584
00656190  7c 31 d4 e5                                      ldrb r3, [r4, #0x17c]
00656194  00 00 53 e3                                      cmp r3, #0
00656198  07 00 00 0a                                      beq #0x6561bc
0065619c  78 31 94 e5                                      ldr r3, [r4, #0x178]
006561a0  40 11 94 e5                                      ldr r1, [r4, #0x140]
006561a4  00 20 93 e5                                      ldr r2, [r3]
006561a8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
006561ac  00 00 83 e0                                      add r0, r3, r0
006561b0  ef e8 ff eb                                      bl #0x650574
006561b4  2c d0 8d e2                                      add sp, sp, #0x2c
006561b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006561bc  80 21 94 e5                                      ldr r2, [r4, #0x180]
006561c0  01 50 a0 e3                                      mov r5, #1
006561c4  24 00 8d e2                                      add r0, sp, #0x24
006561c8  00 c0 92 e5                                      ldr ip, [r2]
006561cc  02 10 a0 e1                                      mov r1, r2
006561d0  04 30 8d e5                                      str r3, [sp, #4]
006561d4  05 20 a0 e1                                      mov r2, r5
006561d8  00 30 8d e5                                      str r3, [sp]
006561dc  08 50 8d e5                                      str r5, [sp, #8]
006561e0  04 30 a0 e3                                      mov r3, #4
006561e4  0f e0 a0 e1                                      mov lr, pc
006561e8  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006561ec  40 21 94 e5                                      ldr r2, [r4, #0x140]
006561f0  05 10 a0 e1                                      mov r1, r5
006561f4  1c 20 8d e5                                      str r2, [sp, #0x1c]
006561f8  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
006561fc  18 00 92 e5                                      ldr r0, [r2, #0x18]
00656200  18 60 93 e5                                      ldr r6, [r3, #0x18]
00656204  34 2e fd eb                                      bl #0x5a1adc
00656208  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0065620c  24 70 9d e5                                      ldr r7, [sp, #0x24]
00656210  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
00656214  40 31 94 e5                                      ldr r3, [r4, #0x140]
00656218  00 00 57 e3                                      cmp r7, #0
0065621c  05 50 80 e0                                      add r5, r0, r5
00656220  20 80 93 e5                                      ldr r8, [r3, #0x20]
00656224  04 30 97 15                                      ldrne r3, [r7, #4]
00656228  88 80 a0 e1                                      lsl r8, r8, #1
0065622c  01 30 83 12                                      addne r3, r3, #1
00656230  04 30 87 15                                      strne r3, [r7, #4]
00656234  96 08 08 e0                                      mul r8, r6, r8
00656238  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0065623c  03 00 58 e1                                      cmp r8, r3
00656240  70 00 00 8a                                      bhi #0x656408
00656244  07 00 a0 e1                                      mov r0, r7
00656248  04 10 a0 e3                                      mov r1, #4
0065624c  e7 2d fd eb                                      bl #0x5a19f0
00656250  00 00 56 e3                                      cmp r6, #0
00656254  00 80 a0 e1                                      mov r8, r0
00656258  2e 00 00 da                                      ble #0x656318
0065625c  40 01 94 e5                                      ldr r0, [r4, #0x140]
00656260  00 90 a0 e3                                      mov sb, #0
00656264  09 30 a0 e1                                      mov r3, sb
00656268  20 10 90 e5                                      ldr r1, [r0, #0x20]
0065626c  09 b0 a0 e1                                      mov fp, sb
00656270  00 00 51 e3                                      cmp r1, #0
00656274  73 e0 ff 16                                      uxthne lr, r3
00656278  8b 10 a0 11                                      lslne r1, fp, #1
0065627c  00 20 a0 13                                      movne r2, #0
00656280  09 00 00 0a                                      beq #0x6562ac
00656284  82 00 a0 e1                                      lsl r0, r2, #1
00656288  b0 00 95 e1                                      ldrh r0, [r5, r0]
0065628c  01 20 82 e2                                      add r2, r2, #1
00656290  00 00 8e e0                                      add r0, lr, r0
00656294  b1 00 88 e1                                      strh r0, [r8, r1]
00656298  40 01 94 e5                                      ldr r0, [r4, #0x140]
0065629c  02 10 81 e2                                      add r1, r1, #2
006562a0  20 c0 90 e5                                      ldr ip, [r0, #0x20]
006562a4  0c 00 52 e1                                      cmp r2, ip
006562a8  f5 ff ff 3a                                      blo #0x656284
006562ac  14 a0 90 e5                                      ldr sl, [r0, #0x14]
006562b0  00 00 5a e3                                      cmp sl, #0
006562b4  00 20 9a 15                                      ldrne r2, [sl]
006562b8  01 20 82 12                                      addne r2, r2, #1
006562bc  00 20 8a 15                                      strne r2, [sl]
006562c0  00 10 9a e5                                      ldr r1, [sl]
006562c4  08 20 9a e5                                      ldr r2, [sl, #8]
006562c8  01 10 41 e2                                      sub r1, r1, #1
006562cc  00 00 51 e3                                      cmp r1, #0
006562d0  00 10 8a e5                                      str r1, [sl]
006562d4  07 00 00 1a                                      bne #0x6562f8
006562d8  0a 00 a0 e1                                      mov r0, sl
006562dc  18 20 8d e5                                      str r2, [sp, #0x18]
006562e0  14 30 8d e5                                      str r3, [sp, #0x14]
006562e4  cc 29 fd eb                                      bl #0x5a0a1c
006562e8  0a 00 a0 e1                                      mov r0, sl
006562ec  ef df f2 eb                                      bl #0x30e2b0
006562f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006562f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
006562f8  40 01 94 e5                                      ldr r0, [r4, #0x140]
006562fc  01 90 89 e2                                      add sb, sb, #1
00656300  06 00 59 e1                                      cmp sb, r6
00656304  20 10 90 e5                                      ldr r1, [r0, #0x20]
00656308  02 00 00 0a                                      beq #0x656318
0065630c  02 30 83 e0                                      add r3, r3, r2
00656310  01 b0 8b e0                                      add fp, fp, r1
00656314  d5 ff ff ea                                      b #0x656270
00656318  78 21 94 e5                                      ldr r2, [r4, #0x178]
0065631c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00656320  00 10 92 e5                                      ldr r1, [r2]
00656324  00 00 53 e3                                      cmp r3, #0
00656328  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
0065632c  20 30 8d e5                                      str r3, [sp, #0x20]
00656330  20 10 8d e2                                      add r1, sp, #0x20
00656334  00 00 82 e0                                      add r0, r2, r0
00656338  04 20 93 15                                      ldrne r2, [r3, #4]
0065633c  01 20 82 12                                      addne r2, r2, #1
00656340  04 20 83 15                                      strne r2, [r3, #4]
00656344  56 e8 ff eb                                      bl #0x6504a4
00656348  20 00 9d e5                                      ldr r0, [sp, #0x20]
0065634c  00 00 50 e3                                      cmp r0, #0
00656350  00 00 00 0a                                      beq #0x656358
00656354  8a 1c f3 eb                                      bl #0x31d584
00656358  02 38 a0 e3                                      mov r3, #0x20000
0065635c  03 30 83 e2                                      add r3, r3, #3
00656360  00 00 58 e3                                      cmp r8, #0
00656364  84 31 84 e5                                      str r3, [r4, #0x184]
00656368  07 00 00 0a                                      beq #0x65638c
0065636c  13 30 d7 e5                                      ldrb r3, [r7, #0x13]
00656370  1f 20 03 e2                                      and r2, r3, #0x1f
00656374  01 00 52 e3                                      cmp r2, #1
00656378  16 00 00 9a                                      bls #0x6563d8
0065637c  01 20 42 e2                                      sub r2, r2, #1
00656380  1f 30 c3 e3                                      bic r3, r3, #0x1f
00656384  03 30 82 e1                                      orr r3, r2, r3
00656388  13 30 c7 e5                                      strb r3, [r7, #0x13]
0065638c  00 00 55 e3                                      cmp r5, #0
00656390  09 00 00 0a                                      beq #0x6563bc
00656394  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00656398  18 50 92 e5                                      ldr r5, [r2, #0x18]
0065639c  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006563a0  1f 20 03 e2                                      and r2, r3, #0x1f
006563a4  01 00 52 e3                                      cmp r2, #1
006563a8  10 00 00 9a                                      bls #0x6563f0
006563ac  01 20 42 e2                                      sub r2, r2, #1
006563b0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006563b4  03 30 82 e1                                      orr r3, r2, r3
006563b8  13 30 c5 e5                                      strb r3, [r5, #0x13]
006563bc  07 00 a0 e1                                      mov r0, r7
006563c0  6f 1c f3 eb                                      bl #0x31d584
006563c4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006563c8  00 00 50 e3                                      cmp r0, #0
006563cc  72 ff ff 0a                                      beq #0x65619c
006563d0  6b 1c f3 eb                                      bl #0x31d584
006563d4  70 ff ff ea                                      b #0x65619c
006563d8  12 30 d7 e5                                      ldrb r3, [r7, #0x12]
006563dc  20 00 13 e3                                      tst r3, #0x20
006563e0  10 00 00 1a                                      bne #0x656428
006563e4  00 30 a0 e3                                      mov r3, #0
006563e8  13 30 c7 e5                                      strb r3, [r7, #0x13]
006563ec  e6 ff ff ea                                      b #0x65638c
006563f0  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006563f4  20 00 13 e3                                      tst r3, #0x20
006563f8  0f 00 00 1a                                      bne #0x65643c
006563fc  00 30 a0 e3                                      mov r3, #0
00656400  13 30 c5 e5                                      strb r3, [r5, #0x13]
00656404  ec ff ff ea                                      b #0x6563bc
00656408  08 00 a0 e1                                      mov r0, r8
0065640c  9f db ff eb                                      bl #0x64d290
00656410  08 10 a0 e1                                      mov r1, r8
00656414  00 20 a0 e1                                      mov r2, r0
00656418  01 30 a0 e3                                      mov r3, #1
0065641c  07 00 a0 e1                                      mov r0, r7
00656420  23 2e fd eb                                      bl #0x5a1cb4
00656424  86 ff ff ea                                      b #0x656244
00656428  00 30 97 e5                                      ldr r3, [r7]
0065642c  07 00 a0 e1                                      mov r0, r7
00656430  0f e0 a0 e1                                      mov lr, pc
00656434  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00656438  e9 ff ff ea                                      b #0x6563e4
0065643c  00 30 95 e5                                      ldr r3, [r5]
00656440  05 00 a0 e1                                      mov r0, r5
00656444  0f e0 a0 e1                                      mov lr, pc
00656448  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0065644c  ea ff ff ea                                      b #0x6563fc

; FUNCTION 0x00656450, declared_size=3688, range_size=3688, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode18initParticleSystemEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::CParticleSystemSceneNode::initParticleSystem(glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
00656450  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00656454  02 60 a0 e1                                      mov r6, r2
00656458  a4 d0 4d e2                                      sub sp, sp, #0xa4
0065645c  00 40 a0 e1                                      mov r4, r0
00656460  01 70 a0 e1                                      mov r7, r1
00656464  d9 93 ff eb                                      bl #0x63b3d0
00656468  06 10 a0 e1                                      mov r1, r6
0065646c  a8 fb ff eb                                      bl #0x655314
00656470  78 01 84 e5                                      str r0, [r4, #0x178]
00656474  00 30 90 e5                                      ldr r3, [r0]
00656478  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
0065647c  80 1d 9f e5                                      ldr r1, [pc, #0xd80]
00656480  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00656484  08 20 92 e5                                      ldr r2, [r2, #8]
00656488  01 10 8f e0                                      add r1, pc, r1
0065648c  03 00 80 e0                                      add r0, r0, r3
00656490  4f e7 ff eb                                      bl #0x6501d4
00656494  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656498  68 5d 9f e5                                      ldr r5, [pc, #0xd68]
0065649c  08 30 92 e5                                      ldr r3, [r2, #8]
006564a0  05 50 8f e0                                      add r5, pc, r5
006564a4  01 00 53 e3                                      cmp r3, #1
006564a8  67 02 00 0a                                      beq #0x656e4c
006564ac  02 00 53 e3                                      cmp r3, #2
006564b0  50 02 00 0a                                      beq #0x656df8
006564b4  00 00 53 e3                                      cmp r3, #0
006564b8  0c 02 00 0a                                      beq #0x656cf0
006564bc  78 31 94 e5                                      ldr r3, [r4, #0x178]
006564c0  44 1d 9f e5                                      ldr r1, [pc, #0xd44]
006564c4  18 20 92 e5                                      ldr r2, [r2, #0x18]
006564c8  00 00 93 e5                                      ldr r0, [r3]
006564cc  01 10 8f e0                                      add r1, pc, r1
006564d0  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006564d4  00 00 83 e0                                      add r0, r3, r0
006564d8  3d e7 ff eb                                      bl #0x6501d4
006564dc  78 31 94 e5                                      ldr r3, [r4, #0x178]
006564e0  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006564e4  24 1d 9f e5                                      ldr r1, [pc, #0xd24]
006564e8  00 00 93 e5                                      ldr r0, [r3]
006564ec  20 20 92 e5                                      ldr r2, [r2, #0x20]
006564f0  01 10 8f e0                                      add r1, pc, r1
006564f4  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006564f8  00 00 83 e0                                      add r0, r3, r0
006564fc  bf e7 ff eb                                      bl #0x650400
00656500  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656504  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656508  04 1d 9f e5                                      ldr r1, [pc, #0xd04]
0065650c  00 00 93 e5                                      ldr r0, [r3]
00656510  28 20 92 e5                                      ldr r2, [r2, #0x28]
00656514  01 10 8f e0                                      add r1, pc, r1
00656518  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0065651c  00 00 83 e0                                      add r0, r3, r0
00656520  b6 e7 ff eb                                      bl #0x650400
00656524  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656528  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
0065652c  e4 1c 9f e5                                      ldr r1, [pc, #0xce4]
00656530  00 00 93 e5                                      ldr r0, [r3]
00656534  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
00656538  01 10 8f e0                                      add r1, pc, r1
0065653c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656540  00 00 83 e0                                      add r0, r3, r0
00656544  ad e7 ff eb                                      bl #0x650400
00656548  78 31 94 e5                                      ldr r3, [r4, #0x178]
0065654c  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656550  c4 1c 9f e5                                      ldr r1, [pc, #0xcc4]
00656554  00 00 93 e5                                      ldr r0, [r3]
00656558  30 20 92 e5                                      ldr r2, [r2, #0x30]
0065655c  01 10 8f e0                                      add r1, pc, r1
00656560  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656564  00 00 83 e0                                      add r0, r3, r0
00656568  a4 e7 ff eb                                      bl #0x650400
0065656c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656570  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656574  a4 1c 9f e5                                      ldr r1, [pc, #0xca4]
00656578  00 00 93 e5                                      ldr r0, [r3]
0065657c  34 20 92 e5                                      ldr r2, [r2, #0x34]
00656580  01 10 8f e0                                      add r1, pc, r1
00656584  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656588  00 00 83 e0                                      add r0, r3, r0
0065658c  9b e7 ff eb                                      bl #0x650400
00656590  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656594  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656598  84 1c 9f e5                                      ldr r1, [pc, #0xc84]
0065659c  00 00 93 e5                                      ldr r0, [r3]
006565a0  38 20 92 e5                                      ldr r2, [r2, #0x38]
006565a4  01 10 8f e0                                      add r1, pc, r1
006565a8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006565ac  00 00 83 e0                                      add r0, r3, r0
006565b0  92 e7 ff eb                                      bl #0x650400
006565b4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006565b8  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006565bc  64 1c 9f e5                                      ldr r1, [pc, #0xc64]
006565c0  00 00 93 e5                                      ldr r0, [r3]
006565c4  3c 20 92 e5                                      ldr r2, [r2, #0x3c]
006565c8  01 10 8f e0                                      add r1, pc, r1
006565cc  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006565d0  00 00 83 e0                                      add r0, r3, r0
006565d4  89 e7 ff eb                                      bl #0x650400
006565d8  78 31 94 e5                                      ldr r3, [r4, #0x178]
006565dc  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006565e0  44 1c 9f e5                                      ldr r1, [pc, #0xc44]
006565e4  00 00 93 e5                                      ldr r0, [r3]
006565e8  40 20 92 e5                                      ldr r2, [r2, #0x40]
006565ec  01 10 8f e0                                      add r1, pc, r1
006565f0  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006565f4  00 00 83 e0                                      add r0, r3, r0
006565f8  80 e7 ff eb                                      bl #0x650400
006565fc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656600  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656604  24 1c 9f e5                                      ldr r1, [pc, #0xc24]
00656608  00 00 93 e5                                      ldr r0, [r3]
0065660c  44 20 92 e5                                      ldr r2, [r2, #0x44]
00656610  01 10 8f e0                                      add r1, pc, r1
00656614  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656618  00 00 83 e0                                      add r0, r3, r0
0065661c  77 e7 ff eb                                      bl #0x650400
00656620  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656624  48 30 92 e5                                      ldr r3, [r2, #0x48]
00656628  01 00 53 e3                                      cmp r3, #1
0065662c  ce 01 00 0a                                      beq #0x656d6c
00656630  02 00 53 e3                                      cmp r3, #2
00656634  e4 01 00 0a                                      beq #0x656dcc
00656638  00 00 53 e3                                      cmp r3, #0
0065663c  9d 01 00 0a                                      beq #0x656cb8
00656640  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656644  64 80 92 e5                                      ldr r8, [r2, #0x64]
00656648  e4 1b 9f e5                                      ldr r1, [pc, #0xbe4]
0065664c  00 20 93 e5                                      ldr r2, [r3]
00656650  01 10 8f e0                                      add r1, pc, r1
00656654  0c a0 12 e5                                      ldr sl, [r2, #-0xc]
00656658  0a a0 83 e0                                      add sl, r3, sl
0065665c  0a 00 a0 e1                                      mov r0, sl
00656660  95 da ff eb                                      bl #0x64d0bc
00656664  34 c0 9a e5                                      ldr ip, [sl, #0x34]
00656668  30 10 8a e2                                      add r1, sl, #0x30
0065666c  00 e0 a0 e1                                      mov lr, r0
00656670  00 00 5c e3                                      cmp ip, #0
00656674  01 c0 a0 01                                      moveq ip, r1
00656678  0a 00 00 0a                                      beq #0x6566a8
0065667c  01 20 a0 e1                                      mov r2, r1
00656680  00 00 00 ea                                      b #0x656688
00656684  03 c0 a0 e1                                      mov ip, r3
00656688  10 30 9c e5                                      ldr r3, [ip, #0x10]
0065668c  03 00 5e e1                                      cmp lr, r3
00656690  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00656694  08 30 9c 95                                      ldrls r3, [ip, #8]
00656698  02 c0 a0 81                                      movhi ip, r2
0065669c  0c 20 a0 e1                                      mov r2, ip
006566a0  00 00 53 e3                                      cmp r3, #0
006566a4  f6 ff ff 1a                                      bne #0x656684
006566a8  0c 00 51 e1                                      cmp r1, ip
006566ac  03 01 00 0a                                      beq #0x656ac0
006566b0  10 20 9c e5                                      ldr r2, [ip, #0x10]
006566b4  0c 30 a0 e1                                      mov r3, ip
006566b8  02 00 5e e1                                      cmp lr, r2
006566bc  ff 00 00 3a                                      blo #0x656ac0
006566c0  14 30 93 e5                                      ldr r3, [r3, #0x14]
006566c4  6c 1b 9f e5                                      ldr r1, [pc, #0xb6c]
006566c8  00 00 53 e3                                      cmp r3, #0
006566cc  00 80 83 15                                      strne r8, [r3]
006566d0  78 31 94 e5                                      ldr r3, [r4, #0x178]
006566d4  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006566d8  01 10 8f e0                                      add r1, pc, r1
006566dc  00 00 93 e5                                      ldr r0, [r3]
006566e0  5c 20 92 e5                                      ldr r2, [r2, #0x5c]
006566e4  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006566e8  00 00 83 e0                                      add r0, r3, r0
006566ec  43 e7 ff eb                                      bl #0x650400
006566f0  78 31 94 e5                                      ldr r3, [r4, #0x178]
006566f4  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006566f8  3c 1b 9f e5                                      ldr r1, [pc, #0xb3c]
006566fc  00 00 93 e5                                      ldr r0, [r3]
00656700  60 20 92 e5                                      ldr r2, [r2, #0x60]
00656704  01 10 8f e0                                      add r1, pc, r1
00656708  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0065670c  00 00 83 e0                                      add r0, r3, r0
00656710  3a e7 ff eb                                      bl #0x650400
00656714  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656718  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
0065671c  1c 1b 9f e5                                      ldr r1, [pc, #0xb1c]
00656720  00 00 93 e5                                      ldr r0, [r3]
00656724  68 20 92 e5                                      ldr r2, [r2, #0x68]
00656728  01 10 8f e0                                      add r1, pc, r1
0065672c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656730  00 00 83 e0                                      add r0, r3, r0
00656734  31 e7 ff eb                                      bl #0x650400
00656738  78 31 94 e5                                      ldr r3, [r4, #0x178]
0065673c  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656740  fc 1a 9f e5                                      ldr r1, [pc, #0xafc]
00656744  00 00 93 e5                                      ldr r0, [r3]
00656748  6c 20 92 e5                                      ldr r2, [r2, #0x6c]
0065674c  01 10 8f e0                                      add r1, pc, r1
00656750  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656754  00 00 83 e0                                      add r0, r3, r0
00656758  28 e7 ff eb                                      bl #0x650400
0065675c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656760  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656764  dc 1a 9f e5                                      ldr r1, [pc, #0xadc]
00656768  00 00 93 e5                                      ldr r0, [r3]
0065676c  70 20 92 e5                                      ldr r2, [r2, #0x70]
00656770  01 10 8f e0                                      add r1, pc, r1
00656774  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656778  00 00 83 e0                                      add r0, r3, r0
0065677c  1f e7 ff eb                                      bl #0x650400
00656780  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656784  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656788  bc 1a 9f e5                                      ldr r1, [pc, #0xabc]
0065678c  00 00 93 e5                                      ldr r0, [r3]
00656790  74 20 92 e5                                      ldr r2, [r2, #0x74]
00656794  01 10 8f e0                                      add r1, pc, r1
00656798  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0065679c  00 00 83 e0                                      add r0, r3, r0
006567a0  16 e7 ff eb                                      bl #0x650400
006567a4  78 31 94 e5                                      ldr r3, [r4, #0x178]
006567a8  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006567ac  9c 1a 9f e5                                      ldr r1, [pc, #0xa9c]
006567b0  00 00 93 e5                                      ldr r0, [r3]
006567b4  78 20 92 e5                                      ldr r2, [r2, #0x78]
006567b8  01 10 8f e0                                      add r1, pc, r1
006567bc  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006567c0  00 00 83 e0                                      add r0, r3, r0
006567c4  0d e7 ff eb                                      bl #0x650400
006567c8  78 31 94 e5                                      ldr r3, [r4, #0x178]
006567cc  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006567d0  7c 1a 9f e5                                      ldr r1, [pc, #0xa7c]
006567d4  00 00 93 e5                                      ldr r0, [r3]
006567d8  7c 20 92 e5                                      ldr r2, [r2, #0x7c]
006567dc  01 10 8f e0                                      add r1, pc, r1
006567e0  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006567e4  00 00 83 e0                                      add r0, r3, r0
006567e8  04 e7 ff eb                                      bl #0x650400
006567ec  78 31 94 e5                                      ldr r3, [r4, #0x178]
006567f0  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
006567f4  5c 1a 9f e5                                      ldr r1, [pc, #0xa5c]
006567f8  00 00 93 e5                                      ldr r0, [r3]
006567fc  80 20 92 e5                                      ldr r2, [r2, #0x80]
00656800  01 10 8f e0                                      add r1, pc, r1
00656804  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656808  00 00 83 e0                                      add r0, r3, r0
0065680c  fb e6 ff eb                                      bl #0x650400
00656810  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656814  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656818  3c 1a 9f e5                                      ldr r1, [pc, #0xa3c]
0065681c  00 00 93 e5                                      ldr r0, [r3]
00656820  84 20 92 e5                                      ldr r2, [r2, #0x84]
00656824  01 10 8f e0                                      add r1, pc, r1
00656828  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
0065682c  00 00 83 e0                                      add r0, r3, r0
00656830  f2 e6 ff eb                                      bl #0x650400
00656834  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656838  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
0065683c  1c 1a 9f e5                                      ldr r1, [pc, #0xa1c]
00656840  00 00 93 e5                                      ldr r0, [r3]
00656844  88 20 92 e5                                      ldr r2, [r2, #0x88]
00656848  01 10 8f e0                                      add r1, pc, r1
0065684c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656850  00 00 83 e0                                      add r0, r3, r0
00656854  5e e6 ff eb                                      bl #0x6501d4
00656858  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
0065685c  88 20 93 e5                                      ldr r2, [r3, #0x88]
00656860  01 00 52 e3                                      cmp r2, #1
00656864  91 01 00 0a                                      beq #0x656eb0
00656868  78 31 94 e5                                      ldr r3, [r4, #0x178]
0065686c  f0 19 9f e5                                      ldr r1, [pc, #0x9f0]
00656870  00 80 a0 e3                                      mov r8, #0
00656874  00 00 93 e5                                      ldr r0, [r3]
00656878  01 10 8f e0                                      add r1, pc, r1
0065687c  44 20 8d e2                                      add r2, sp, #0x44
00656880  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656884  44 80 8d e5                                      str r8, [sp, #0x44]
00656888  48 80 8d e5                                      str r8, [sp, #0x48]
0065688c  00 00 83 e0                                      add r0, r3, r0
00656890  4c 80 8d e5                                      str r8, [sp, #0x4c]
00656894  a9 e6 ff eb                                      bl #0x650340
00656898  78 31 94 e5                                      ldr r3, [r4, #0x178]
0065689c  c4 19 9f e5                                      ldr r1, [pc, #0x9c4]
006568a0  08 20 a0 e1                                      mov r2, r8
006568a4  00 00 93 e5                                      ldr r0, [r3]
006568a8  01 10 8f e0                                      add r1, pc, r1
006568ac  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
006568b0  00 00 83 e0                                      add r0, r3, r0
006568b4  d1 e6 ff eb                                      bl #0x650400
006568b8  00 00 56 e3                                      cmp r6, #0
006568bc  7c 61 c4 e5                                      strb r6, [r4, #0x17c]
006568c0  80 71 84 e5                                      str r7, [r4, #0x180]
006568c4  9e 00 00 0a                                      beq #0x656b44
006568c8  9c 69 9f e5                                      ldr r6, [pc, #0x99c]
006568cc  06 30 95 e7                                      ldr r3, [r5, r6]
006568d0  00 30 93 e5                                      ldr r3, [r3]
006568d4  00 00 53 e3                                      cmp r3, #0
006568d8  93 01 00 0a                                      beq #0x656f2c
006568dc  04 20 93 e5                                      ldr r2, [r3, #4]
006568e0  01 20 82 e2                                      add r2, r2, #1
006568e4  04 20 83 e5                                      str r2, [r3, #4]
006568e8  40 01 94 e5                                      ldr r0, [r4, #0x140]
006568ec  40 31 84 e5                                      str r3, [r4, #0x140]
006568f0  00 00 50 e3                                      cmp r0, #0
006568f4  00 00 00 0a                                      beq #0x6568fc
006568f8  21 1b f3 eb                                      bl #0x31d584
006568fc  6c 79 9f e5                                      ldr r7, [pc, #0x96c]
00656900  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656904  07 30 95 e7                                      ldr r3, [r5, r7]
00656908  18 20 92 e5                                      ldr r2, [r2, #0x18]
0065690c  00 30 93 e5                                      ldr r3, [r3]
00656910  03 00 52 e1                                      cmp r2, r3
00656914  73 00 00 da                                      ble #0x656ae8
00656918  54 19 9f e5                                      ldr r1, [pc, #0x954]
0065691c  01 30 95 e7                                      ldr r3, [r5, r1]
00656920  18 10 8d e5                                      str r1, [sp, #0x18]
00656924  00 30 93 e5                                      ldr r3, [r3]
00656928  00 00 53 e3                                      cmp r3, #0
0065692c  16 02 00 0a                                      beq #0x65718c
00656930  07 80 95 e7                                      ldr r8, [r5, r7]
00656934  01 10 a0 e3                                      mov r1, #1
00656938  00 20 88 e5                                      str r2, [r8]
0065693c  40 21 94 e5                                      ldr r2, [r4, #0x140]
00656940  1c 20 8d e5                                      str r2, [sp, #0x1c]
00656944  18 00 92 e5                                      ldr r0, [r2, #0x18]
00656948  63 2c fd eb                                      bl #0x5a1adc
0065694c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00656950  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00656954  00 80 98 e5                                      ldr r8, [r8]
00656958  03 20 95 e7                                      ldr r2, [r5, r3]
0065695c  1c 60 91 e5                                      ldr r6, [r1, #0x1c]
00656960  40 31 94 e5                                      ldr r3, [r4, #0x140]
00656964  00 20 92 e5                                      ldr r2, [r2]
00656968  06 60 80 e0                                      add r6, r0, r6
0065696c  00 00 52 e3                                      cmp r2, #0
00656970  14 20 8d e5                                      str r2, [sp, #0x14]
00656974  02 10 a0 11                                      movne r1, r2
00656978  04 20 91 15                                      ldrne r2, [r1, #4]
0065697c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00656980  01 20 82 12                                      addne r2, r2, #1
00656984  04 20 81 15                                      strne r2, [r1, #4]
00656988  14 20 9d e5                                      ldr r2, [sp, #0x14]
0065698c  83 30 a0 e1                                      lsl r3, r3, #1
00656990  98 03 08 e0                                      mul r8, r8, r3
00656994  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00656998  03 00 58 e1                                      cmp r8, r3
0065699c  5a 01 00 8a                                      bhi #0x656f0c
006569a0  14 00 9d e5                                      ldr r0, [sp, #0x14]
006569a4  04 10 a0 e3                                      mov r1, #4
006569a8  10 2c fd eb                                      bl #0x5a19f0
006569ac  07 b0 95 e7                                      ldr fp, [r5, r7]
006569b0  00 30 9b e5                                      ldr r3, [fp]
006569b4  00 00 53 e3                                      cmp r3, #0
006569b8  26 00 00 da                                      ble #0x656a58
006569bc  00 e0 a0 e3                                      mov lr, #0
006569c0  0a 30 86 e2                                      add r3, r6, #0xa
006569c4  24 50 8d e5                                      str r5, [sp, #0x24]
006569c8  02 90 86 e2                                      add sb, r6, #2
006569cc  04 a0 86 e2                                      add sl, r6, #4
006569d0  06 80 86 e2                                      add r8, r6, #6
006569d4  08 70 86 e2                                      add r7, r6, #8
006569d8  0e c0 a0 e1                                      mov ip, lr
006569dc  0e 10 a0 e1                                      mov r1, lr
006569e0  20 40 8d e5                                      str r4, [sp, #0x20]
006569e4  03 50 a0 e1                                      mov r5, r3
006569e8  b0 40 d6 e1                                      ldrh r4, [r6]
006569ec  71 20 ff e6                                      uxth r2, r1
006569f0  00 30 a0 e1                                      mov r3, r0
006569f4  04 40 82 e0                                      add r4, r2, r4
006569f8  be 40 a3 e1                                      strh r4, [r3, lr]!
006569fc  b0 40 d9 e1                                      ldrh r4, [sb]
00656a00  01 c0 8c e2                                      add ip, ip, #1
00656a04  04 10 81 e2                                      add r1, r1, #4
00656a08  04 40 82 e0                                      add r4, r2, r4
00656a0c  b2 40 c3 e1                                      strh r4, [r3, #2]
00656a10  b0 40 da e1                                      ldrh r4, [sl]
00656a14  0c e0 8e e2                                      add lr, lr, #0xc
00656a18  04 40 82 e0                                      add r4, r2, r4
00656a1c  b4 40 c3 e1                                      strh r4, [r3, #4]
00656a20  b0 40 d8 e1                                      ldrh r4, [r8]
00656a24  04 40 82 e0                                      add r4, r2, r4
00656a28  b6 40 c3 e1                                      strh r4, [r3, #6]
00656a2c  b0 40 d7 e1                                      ldrh r4, [r7]
00656a30  04 40 82 e0                                      add r4, r2, r4
00656a34  b8 40 c3 e1                                      strh r4, [r3, #8]
00656a38  b0 40 d5 e1                                      ldrh r4, [r5]
00656a3c  04 20 82 e0                                      add r2, r2, r4
00656a40  ba 20 c3 e1                                      strh r2, [r3, #0xa]
00656a44  00 30 9b e5                                      ldr r3, [fp]
00656a48  0c 00 53 e1                                      cmp r3, ip
00656a4c  e5 ff ff ca                                      bgt #0x6569e8
00656a50  20 40 9d e5                                      ldr r4, [sp, #0x20]
00656a54  24 50 9d e5                                      ldr r5, [sp, #0x24]
00656a58  00 00 50 e3                                      cmp r0, #0
00656a5c  08 00 00 0a                                      beq #0x656a84
00656a60  14 10 9d e5                                      ldr r1, [sp, #0x14]
00656a64  13 30 d1 e5                                      ldrb r3, [r1, #0x13]
00656a68  1f 20 03 e2                                      and r2, r3, #0x1f
00656a6c  01 00 52 e3                                      cmp r2, #1
00656a70  00 01 00 9a                                      bls #0x656e78
00656a74  01 20 42 e2                                      sub r2, r2, #1
00656a78  1f 30 c3 e3                                      bic r3, r3, #0x1f
00656a7c  03 30 82 e1                                      orr r3, r2, r3
00656a80  13 30 c1 e5                                      strb r3, [r1, #0x13]
00656a84  00 00 56 e3                                      cmp r6, #0
00656a88  09 00 00 0a                                      beq #0x656ab4
00656a8c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00656a90  18 60 92 e5                                      ldr r6, [r2, #0x18]
00656a94  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
00656a98  1f 20 03 e2                                      and r2, r3, #0x1f
00656a9c  01 00 52 e3                                      cmp r2, #1
00656aa0  fc 00 00 9a                                      bls #0x656e98
00656aa4  01 20 42 e2                                      sub r2, r2, #1
00656aa8  1f 30 c3 e3                                      bic r3, r3, #0x1f
00656aac  03 30 82 e1                                      orr r3, r2, r3
00656ab0  13 30 c6 e5                                      strb r3, [r6, #0x13]
00656ab4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00656ab8  b1 1a f3 eb                                      bl #0x31d584
00656abc  0b 00 00 ea                                      b #0x656af0
00656ac0  6c 30 8d e2                                      add r3, sp, #0x6c
00656ac4  6c e0 8d e5                                      str lr, [sp, #0x6c]
00656ac8  84 00 8d e2                                      add r0, sp, #0x84
00656acc  00 e0 a0 e3                                      mov lr, #0
00656ad0  88 20 8d e2                                      add r2, sp, #0x88
00656ad4  70 e0 8d e5                                      str lr, [sp, #0x70]
00656ad8  88 c0 8d e5                                      str ip, [sp, #0x88]
00656adc  e4 8f ff eb                                      bl #0x63aa74
00656ae0  84 30 9d e5                                      ldr r3, [sp, #0x84]
00656ae4  f5 fe ff ea                                      b #0x6566c0
00656ae8  84 37 9f e5                                      ldr r3, [pc, #0x784]
00656aec  18 30 8d e5                                      str r3, [sp, #0x18]
00656af0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00656af4  78 21 94 e5                                      ldr r2, [r4, #0x178]
00656af8  01 30 95 e7                                      ldr r3, [r5, r1]
00656afc  00 10 92 e5                                      ldr r1, [r2]
00656b00  00 30 93 e5                                      ldr r3, [r3]
00656b04  0c 00 11 e5                                      ldr r0, [r1, #-0xc]
00656b08  90 10 8d e2                                      add r1, sp, #0x90
00656b0c  00 00 53 e3                                      cmp r3, #0
00656b10  90 30 8d e5                                      str r3, [sp, #0x90]
00656b14  00 00 82 e0                                      add r0, r2, r0
00656b18  04 20 93 15                                      ldrne r2, [r3, #4]
00656b1c  01 20 82 12                                      addne r2, r2, #1
00656b20  04 20 83 15                                      strne r2, [r3, #4]
00656b24  5e e6 ff eb                                      bl #0x6504a4
00656b28  90 00 9d e5                                      ldr r0, [sp, #0x90]
00656b2c  00 00 50 e3                                      cmp r0, #0
00656b30  00 00 00 0a                                      beq #0x656b38
00656b34  92 1a f3 eb                                      bl #0x31d584
00656b38  06 38 a0 e3                                      mov r3, #0x60000
00656b3c  03 30 83 e2                                      add r3, r3, #3
00656b40  84 31 84 e5                                      str r3, [r4, #0x184]
00656b44  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656b48  40 11 94 e5                                      ldr r1, [r4, #0x140]
00656b4c  00 20 93 e5                                      ldr r2, [r3]
00656b50  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00656b54  00 00 83 e0                                      add r0, r3, r0
00656b58  85 e6 ff eb                                      bl #0x650574
00656b5c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656b60  10 17 9f e5                                      ldr r1, [pc, #0x710]
00656b64  00 20 93 e5                                      ldr r2, [r3]
00656b68  01 10 8f e0                                      add r1, pc, r1
00656b6c  0c 50 12 e5                                      ldr r5, [r2, #-0xc]
00656b70  05 50 83 e0                                      add r5, r3, r5
00656b74  05 00 a0 e1                                      mov r0, r5
00656b78  4f d9 ff eb                                      bl #0x64d0bc
00656b7c  34 c0 95 e5                                      ldr ip, [r5, #0x34]
00656b80  30 10 85 e2                                      add r1, r5, #0x30
00656b84  00 e0 a0 e1                                      mov lr, r0
00656b88  00 00 5c e3                                      cmp ip, #0
00656b8c  01 c0 a0 01                                      moveq ip, r1
00656b90  0a 00 00 0a                                      beq #0x656bc0
00656b94  01 20 a0 e1                                      mov r2, r1
00656b98  00 00 00 ea                                      b #0x656ba0
00656b9c  03 c0 a0 e1                                      mov ip, r3
00656ba0  10 30 9c e5                                      ldr r3, [ip, #0x10]
00656ba4  03 00 5e e1                                      cmp lr, r3
00656ba8  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00656bac  08 30 9c 95                                      ldrls r3, [ip, #8]
00656bb0  02 c0 a0 81                                      movhi ip, r2
00656bb4  0c 20 a0 e1                                      mov r2, ip
00656bb8  00 00 53 e3                                      cmp r3, #0
00656bbc  f6 ff ff 1a                                      bne #0x656b9c
00656bc0  0c 00 51 e1                                      cmp r1, ip
00656bc4  31 00 00 0a                                      beq #0x656c90
00656bc8  10 20 9c e5                                      ldr r2, [ip, #0x10]
00656bcc  0c 30 a0 e1                                      mov r3, ip
00656bd0  02 00 5e e1                                      cmp lr, r2
00656bd4  2d 00 00 3a                                      blo #0x656c90
00656bd8  14 20 93 e5                                      ldr r2, [r3, #0x14]
00656bdc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656be0  94 16 9f e5                                      ldr r1, [pc, #0x694]
00656be4  48 21 84 e5                                      str r2, [r4, #0x148]
00656be8  00 20 93 e5                                      ldr r2, [r3]
00656bec  01 10 8f e0                                      add r1, pc, r1
00656bf0  0c 60 12 e5                                      ldr r6, [r2, #-0xc]
00656bf4  06 60 83 e0                                      add r6, r3, r6
00656bf8  06 00 a0 e1                                      mov r0, r6
00656bfc  2e d9 ff eb                                      bl #0x64d0bc
00656c00  34 c0 96 e5                                      ldr ip, [r6, #0x34]
00656c04  30 10 86 e2                                      add r1, r6, #0x30
00656c08  00 50 a0 e1                                      mov r5, r0
00656c0c  00 00 5c e3                                      cmp ip, #0
00656c10  01 c0 a0 01                                      moveq ip, r1
00656c14  0a 00 00 0a                                      beq #0x656c44
00656c18  01 20 a0 e1                                      mov r2, r1
00656c1c  00 00 00 ea                                      b #0x656c24
00656c20  03 c0 a0 e1                                      mov ip, r3
00656c24  10 30 9c e5                                      ldr r3, [ip, #0x10]
00656c28  03 00 55 e1                                      cmp r5, r3
00656c2c  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00656c30  08 30 9c 95                                      ldrls r3, [ip, #8]
00656c34  02 c0 a0 81                                      movhi ip, r2
00656c38  0c 20 a0 e1                                      mov r2, ip
00656c3c  00 00 53 e3                                      cmp r3, #0
00656c40  f6 ff ff 1a                                      bne #0x656c20
00656c44  0c 00 51 e1                                      cmp r1, ip
00656c48  03 00 00 0a                                      beq #0x656c5c
00656c4c  10 20 9c e5                                      ldr r2, [ip, #0x10]
00656c50  0c 30 a0 e1                                      mov r3, ip
00656c54  02 00 55 e1                                      cmp r5, r2
00656c58  08 00 00 2a                                      bhs #0x656c80
00656c5c  5c 30 8d e2                                      add r3, sp, #0x5c
00656c60  00 e0 a0 e3                                      mov lr, #0
00656c64  74 00 8d e2                                      add r0, sp, #0x74
00656c68  78 20 8d e2                                      add r2, sp, #0x78
00656c6c  5c 50 8d e5                                      str r5, [sp, #0x5c]
00656c70  60 e0 8d e5                                      str lr, [sp, #0x60]
00656c74  78 c0 8d e5                                      str ip, [sp, #0x78]
00656c78  7d 8f ff eb                                      bl #0x63aa74
00656c7c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00656c80  14 30 93 e5                                      ldr r3, [r3, #0x14]
00656c84  4c 31 84 e5                                      str r3, [r4, #0x14c]
00656c88  a4 d0 8d e2                                      add sp, sp, #0xa4
00656c8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00656c90  64 30 8d e2                                      add r3, sp, #0x64
00656c94  64 e0 8d e5                                      str lr, [sp, #0x64]
00656c98  7c 00 8d e2                                      add r0, sp, #0x7c
00656c9c  00 e0 a0 e3                                      mov lr, #0
00656ca0  80 20 8d e2                                      add r2, sp, #0x80
00656ca4  68 e0 8d e5                                      str lr, [sp, #0x68]
00656ca8  80 c0 8d e5                                      str ip, [sp, #0x80]
00656cac  70 8f ff eb                                      bl #0x63aa74
00656cb0  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
00656cb4  c7 ff ff ea                                      b #0x656bd8
00656cb8  78 01 94 e5                                      ldr r0, [r4, #0x178]
00656cbc  bc 15 9f e5                                      ldr r1, [pc, #0x5bc]
00656cc0  00 30 a0 e3                                      mov r3, #0
00656cc4  00 c0 90 e5                                      ldr ip, [r0]
00656cc8  50 20 8d e2                                      add r2, sp, #0x50
00656ccc  01 10 8f e0                                      add r1, pc, r1
00656cd0  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00656cd4  58 30 8d e5                                      str r3, [sp, #0x58]
00656cd8  50 30 8d e5                                      str r3, [sp, #0x50]
00656cdc  0c 00 80 e0                                      add r0, r0, ip
00656ce0  54 30 8d e5                                      str r3, [sp, #0x54]
00656ce4  95 e5 ff eb                                      bl #0x650340
00656ce8  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656cec  53 fe ff ea                                      b #0x656640
00656cf0  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656cf4  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656cf8  84 15 9f e5                                      ldr r1, [pc, #0x584]
00656cfc  00 00 93 e5                                      ldr r0, [r3]
00656d00  00 20 92 e5                                      ldr r2, [r2]
00656d04  01 10 8f e0                                      add r1, pc, r1
00656d08  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656d0c  00 00 83 e0                                      add r0, r3, r0
00656d10  ba e5 ff eb                                      bl #0x650400
00656d14  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656d18  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656d1c  64 15 9f e5                                      ldr r1, [pc, #0x564]
00656d20  00 00 93 e5                                      ldr r0, [r3]
00656d24  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656d28  01 10 8f e0                                      add r1, pc, r1
00656d2c  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656d30  04 20 92 e5                                      ldr r2, [r2, #4]
00656d34  00 00 83 e0                                      add r0, r3, r0
00656d38  b0 e5 ff eb                                      bl #0x650400
00656d3c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656d40  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656d44  40 15 9f e5                                      ldr r1, [pc, #0x540]
00656d48  00 00 93 e5                                      ldr r0, [r3]
00656d4c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656d50  01 10 8f e0                                      add r1, pc, r1
00656d54  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656d58  08 20 92 e5                                      ldr r2, [r2, #8]
00656d5c  00 00 83 e0                                      add r0, r3, r0
00656d60  a6 e5 ff eb                                      bl #0x650400
00656d64  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656d68  d3 fd ff ea                                      b #0x6564bc
00656d6c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00656d70  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00656d74  14 15 9f e5                                      ldr r1, [pc, #0x514]
00656d78  00 c0 90 e5                                      ldr ip, [r0]
00656d7c  08 30 92 e5                                      ldr r3, [r2, #8]
00656d80  01 10 8f e0                                      add r1, pc, r1
00656d84  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00656d88  00 30 8d e5                                      str r3, [sp]
00656d8c  04 30 92 e5                                      ldr r3, [r2, #4]
00656d90  0c 00 80 e0                                      add r0, r0, ip
00656d94  00 20 92 e5                                      ldr r2, [r2]
00656d98  36 e5 ff eb                                      bl #0x650278
00656d9c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656da0  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656da4  e8 14 9f e5                                      ldr r1, [pc, #0x4e8]
00656da8  00 00 93 e5                                      ldr r0, [r3]
00656dac  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00656db0  01 10 8f e0                                      add r1, pc, r1
00656db4  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656db8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656dbc  00 00 83 e0                                      add r0, r3, r0
00656dc0  8e e5 ff eb                                      bl #0x650400
00656dc4  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656dc8  1c fe ff ea                                      b #0x656640
00656dcc  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656dd0  4c 20 92 e5                                      ldr r2, [r2, #0x4c]
00656dd4  bc 14 9f e5                                      ldr r1, [pc, #0x4bc]
00656dd8  00 00 93 e5                                      ldr r0, [r3]
00656ddc  04 20 92 e5                                      ldr r2, [r2, #4]
00656de0  01 10 8f e0                                      add r1, pc, r1
00656de4  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656de8  00 00 83 e0                                      add r0, r3, r0
00656dec  83 e5 ff eb                                      bl #0x650400
00656df0  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656df4  11 fe ff ea                                      b #0x656640
00656df8  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656dfc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656e00  94 14 9f e5                                      ldr r1, [pc, #0x494]
00656e04  00 00 93 e5                                      ldr r0, [r3]
00656e08  00 20 92 e5                                      ldr r2, [r2]
00656e0c  01 10 8f e0                                      add r1, pc, r1
00656e10  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656e14  00 00 83 e0                                      add r0, r3, r0
00656e18  78 e5 ff eb                                      bl #0x650400
00656e1c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656e20  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656e24  74 14 9f e5                                      ldr r1, [pc, #0x474]
00656e28  00 00 93 e5                                      ldr r0, [r3]
00656e2c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656e30  01 10 8f e0                                      add r1, pc, r1
00656e34  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656e38  04 20 92 e5                                      ldr r2, [r2, #4]
00656e3c  00 00 83 e0                                      add r0, r3, r0
00656e40  6e e5 ff eb                                      bl #0x650400
00656e44  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656e48  9b fd ff ea                                      b #0x6564bc
00656e4c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656e50  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656e54  48 14 9f e5                                      ldr r1, [pc, #0x448]
00656e58  00 00 93 e5                                      ldr r0, [r3]
00656e5c  00 20 92 e5                                      ldr r2, [r2]
00656e60  01 10 8f e0                                      add r1, pc, r1
00656e64  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656e68  00 00 83 e0                                      add r0, r3, r0
00656e6c  63 e5 ff eb                                      bl #0x650400
00656e70  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656e74  90 fd ff ea                                      b #0x6564bc
00656e78  14 20 9d e5                                      ldr r2, [sp, #0x14]
00656e7c  12 30 d2 e5                                      ldrb r3, [r2, #0x12]
00656e80  20 00 13 e3                                      tst r3, #0x20
00656e84  bb 00 00 1a                                      bne #0x657178
00656e88  14 10 9d e5                                      ldr r1, [sp, #0x14]
00656e8c  00 30 a0 e3                                      mov r3, #0
00656e90  13 30 c1 e5                                      strb r3, [r1, #0x13]
00656e94  fa fe ff ea                                      b #0x656a84
00656e98  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
00656e9c  20 00 13 e3                                      tst r3, #0x20
00656ea0  af 00 00 1a                                      bne #0x657164
00656ea4  00 30 a0 e3                                      mov r3, #0
00656ea8  13 30 c6 e5                                      strb r3, [r6, #0x13]
00656eac  00 ff ff ea                                      b #0x656ab4
00656eb0  78 01 94 e5                                      ldr r0, [r4, #0x178]
00656eb4  8c 20 93 e5                                      ldr r2, [r3, #0x8c]
00656eb8  e8 13 9f e5                                      ldr r1, [pc, #0x3e8]
00656ebc  00 c0 90 e5                                      ldr ip, [r0]
00656ec0  08 30 92 e5                                      ldr r3, [r2, #8]
00656ec4  01 10 8f e0                                      add r1, pc, r1
00656ec8  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00656ecc  00 30 8d e5                                      str r3, [sp]
00656ed0  04 30 92 e5                                      ldr r3, [r2, #4]
00656ed4  0c 00 80 e0                                      add r0, r0, ip
00656ed8  00 20 92 e5                                      ldr r2, [r2]
00656edc  e5 e4 ff eb                                      bl #0x650278
00656ee0  78 31 94 e5                                      ldr r3, [r4, #0x178]
00656ee4  8c 21 94 e5                                      ldr r2, [r4, #0x18c]
00656ee8  bc 13 9f e5                                      ldr r1, [pc, #0x3bc]
00656eec  00 00 93 e5                                      ldr r0, [r3]
00656ef0  8c 20 92 e5                                      ldr r2, [r2, #0x8c]
00656ef4  01 10 8f e0                                      add r1, pc, r1
00656ef8  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00656efc  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00656f00  00 00 83 e0                                      add r0, r3, r0
00656f04  3d e5 ff eb                                      bl #0x650400
00656f08  6a fe ff ea                                      b #0x6568b8
00656f0c  08 00 a0 e1                                      mov r0, r8
00656f10  de d8 ff eb                                      bl #0x64d290
00656f14  08 10 a0 e1                                      mov r1, r8
00656f18  00 20 a0 e1                                      mov r2, r0
00656f1c  01 30 a0 e3                                      mov r3, #1
00656f20  14 00 9d e5                                      ldr r0, [sp, #0x14]
00656f24  62 2b fd eb                                      bl #0x5a1cb4
00656f28  9c fe ff ea                                      b #0x6569a0
00656f2c  7c 23 9f e5                                      ldr r2, [pc, #0x37c]
00656f30  0c 10 a0 e3                                      mov r1, #0xc
00656f34  00 10 8d e5                                      str r1, [sp]
00656f38  02 20 8f e0                                      add r2, pc, r2
00656f3c  0c 00 8d e9                                      stmib sp, {r2, r3}
00656f40  9c b0 8d e2                                      add fp, sp, #0x9c
00656f44  00 c0 97 e5                                      ldr ip, [r7]
00656f48  01 20 a0 e3                                      mov r2, #1
00656f4c  07 10 a0 e1                                      mov r1, r7
00656f50  0b 00 a0 e1                                      mov r0, fp
00656f54  04 30 a0 e3                                      mov r3, #4
00656f58  0f e0 a0 e1                                      mov lr, pc
00656f5c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00656f60  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
00656f64  00 80 a0 e3                                      mov r8, #0
00656f68  08 10 a0 e1                                      mov r1, r8
00656f6c  00 00 53 e3                                      cmp r3, #0
00656f70  2c 30 8d e5                                      str r3, [sp, #0x2c]
00656f74  04 20 93 15                                      ldrne r2, [r3, #4]
00656f78  38 00 a0 e3                                      mov r0, #0x38
00656f7c  98 90 8d e2                                      add sb, sp, #0x98
00656f80  01 20 82 12                                      addne r2, r2, #1
00656f84  04 20 83 15                                      strne r2, [r3, #4]
00656f88  04 20 a0 e3                                      mov r2, #4
00656f8c  06 30 a0 e3                                      mov r3, #6
00656f90  3c 20 8d e5                                      str r2, [sp, #0x3c]
00656f94  01 20 a0 e3                                      mov r2, #1
00656f98  b0 24 cd e1                                      strh r2, [sp, #0x40]
00656f9c  b2 34 cd e1                                      strh r3, [sp, #0x42]
00656fa0  30 80 8d e5                                      str r8, [sp, #0x30]
00656fa4  34 30 8d e5                                      str r3, [sp, #0x34]
00656fa8  38 80 8d e5                                      str r8, [sp, #0x38]
00656fac  7e 74 fb eb                                      bl #0x5341ac
00656fb0  fc 32 9f e5                                      ldr r3, [pc, #0x2fc]
00656fb4  06 18 a0 e3                                      mov r1, #0x60000
00656fb8  00 a0 a0 e1                                      mov sl, r0
00656fbc  03 30 95 e7                                      ldr r3, [r5, r3]
00656fc0  10 80 80 e5                                      str r8, [r0, #0x10]
00656fc4  04 80 80 e5                                      str r8, [r0, #4]
00656fc8  08 30 83 e2                                      add r3, r3, #8
00656fcc  08 80 80 e5                                      str r8, [r0, #8]
00656fd0  00 30 80 e5                                      str r3, [r0]
00656fd4  0c 80 80 e5                                      str r8, [r0, #0xc]
00656fd8  03 10 81 e2                                      add r1, r1, #3
00656fdc  14 00 80 e2                                      add r0, r0, #0x14
00656fe0  dd 28 fd eb                                      bl #0x5a135c
00656fe4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00656fe8  06 60 95 e7                                      ldr r6, [r5, r6]
00656fec  a0 00 8d e2                                      add r0, sp, #0xa0
00656ff0  08 00 53 e1                                      cmp r3, r8
00656ff4  18 30 8a e5                                      str r3, [sl, #0x18]
00656ff8  04 20 93 15                                      ldrne r2, [r3, #4]
00656ffc  00 80 a0 e3                                      mov r8, #0
00657000  01 20 82 12                                      addne r2, r2, #1
00657004  04 20 83 15                                      strne r2, [r3, #4]
00657008  30 30 9d e5                                      ldr r3, [sp, #0x30]
0065700c  1c 30 8a e5                                      str r3, [sl, #0x1c]
00657010  34 30 9d e5                                      ldr r3, [sp, #0x34]
00657014  20 30 8a e5                                      str r3, [sl, #0x20]
00657018  38 30 9d e5                                      ldr r3, [sp, #0x38]
0065701c  24 30 8a e5                                      str r3, [sl, #0x24]
00657020  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00657024  28 30 8a e5                                      str r3, [sl, #0x28]
00657028  b0 34 dd e1                                      ldrh r3, [sp, #0x40]
0065702c  bc 32 ca e1                                      strh r3, [sl, #0x2c]
00657030  b2 14 dd e1                                      ldrh r1, [sp, #0x42]
00657034  30 80 8a e5                                      str r8, [sl, #0x30]
00657038  34 80 ca e5                                      strb r8, [sl, #0x34]
0065703c  be 12 ca e1                                      strh r1, [sl, #0x2e]
00657040  8c a0 8d e5                                      str sl, [sp, #0x8c]
00657044  04 30 9a e5                                      ldr r3, [sl, #4]
00657048  01 30 83 e2                                      add r3, r3, #1
0065704c  04 30 8a e5                                      str r3, [sl, #4]
00657050  00 20 96 e5                                      ldr r2, [r6]
00657054  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
00657058  14 20 20 e5                                      str r2, [r0, #-0x14]!
0065705c  00 30 86 e5                                      str r3, [r6]
00657060  d1 82 ff eb                                      bl #0x637bac
00657064  2c 00 8d e2                                      add r0, sp, #0x2c
00657068  c7 82 ff eb                                      bl #0x637b8c
0065706c  0b 00 a0 e1                                      mov r0, fp
00657070  c5 82 ff eb                                      bl #0x637b8c
00657074  00 20 96 e5                                      ldr r2, [r6]
00657078  04 30 a0 e3                                      mov r3, #4
0065707c  07 10 a0 e1                                      mov r1, r7
00657080  14 a0 92 e5                                      ldr sl, [r2, #0x14]
00657084  01 20 a0 e3                                      mov r2, #1
00657088  00 80 8d e5                                      str r8, [sp]
0065708c  04 80 8d e5                                      str r8, [sp, #4]
00657090  08 20 8d e5                                      str r2, [sp, #8]
00657094  00 c0 97 e5                                      ldr ip, [r7]
00657098  08 20 a0 e1                                      mov r2, r8
0065709c  09 00 a0 e1                                      mov r0, sb
006570a0  0f e0 a0 e1                                      mov lr, pc
006570a4  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006570a8  00 20 e0 e3                                      mvn r2, #0
006570ac  09 10 a0 e1                                      mov r1, sb
006570b0  0a 00 a0 e1                                      mov r0, sl
006570b4  41 29 fd eb                                      bl #0x5a15c0
006570b8  00 71 a0 e1                                      lsl r7, r0, #2
006570bc  08 10 a0 e1                                      mov r1, r8
006570c0  07 00 a0 e1                                      mov r0, r7
006570c4  98 80 9d e5                                      ldr r8, [sp, #0x98]
006570c8  36 74 fb eb                                      bl #0x5341a8
006570cc  07 10 a0 e1                                      mov r1, r7
006570d0  00 20 a0 e1                                      mov r2, r0
006570d4  01 30 a0 e3                                      mov r3, #1
006570d8  08 00 a0 e1                                      mov r0, r8
006570dc  f4 2a fd eb                                      bl #0x5a1cb4
006570e0  04 10 a0 e3                                      mov r1, #4
006570e4  24 00 9a e5                                      ldr r0, [sl, #0x24]
006570e8  40 2a fd eb                                      bl #0x5a19f0
006570ec  24 70 8a e2                                      add r7, sl, #0x24
006570f0  04 c0 97 e5                                      ldr ip, [r7, #4]
006570f4  00 20 a0 e3                                      mov r2, #0
006570f8  fe 15 a0 e3                                      mov r1, #0x3f800000
006570fc  0c 30 80 e0                                      add r3, r0, ip
00657100  0c 20 80 e7                                      str r2, [r0, ip]
00657104  04 20 83 e5                                      str r2, [r3, #4]
00657108  be 00 d7 e1                                      ldrh r0, [r7, #0xe]
0065710c  00 c0 83 e0                                      add ip, r3, r0
00657110  00 20 83 e7                                      str r2, [r3, r0]
00657114  04 10 8c e5                                      str r1, [ip, #4]
00657118  be 00 d7 e1                                      ldrh r0, [r7, #0xe]
0065711c  80 c0 83 e0                                      add ip, r3, r0, lsl #1
00657120  80 10 83 e7                                      str r1, [r3, r0, lsl #1]
00657124  04 10 8c e5                                      str r1, [ip, #4]
00657128  be 00 d7 e1                                      ldrh r0, [r7, #0xe]
0065712c  80 00 80 e0                                      add r0, r0, r0, lsl #1
00657130  00 c0 83 e0                                      add ip, r3, r0
00657134  00 10 83 e7                                      str r1, [r3, r0]
00657138  04 20 8c e5                                      str r2, [ip, #4]
0065713c  04 30 a0 e3                                      mov r3, #4
00657140  08 30 8a e5                                      str r3, [sl, #8]
00657144  24 00 9a e5                                      ldr r0, [sl, #0x24]
00657148  46 82 ff eb                                      bl #0x637a68
0065714c  09 00 a0 e1                                      mov r0, sb
00657150  8d 82 ff eb                                      bl #0x637b8c
00657154  00 30 96 e5                                      ldr r3, [r6]
00657158  00 00 53 e3                                      cmp r3, #0
0065715c  e1 fd ff 0a                                      beq #0x6568e8
00657160  dd fd ff ea                                      b #0x6568dc
00657164  00 30 96 e5                                      ldr r3, [r6]
00657168  06 00 a0 e1                                      mov r0, r6
0065716c  0f e0 a0 e1                                      mov lr, pc
00657170  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00657174  4a ff ff ea                                      b #0x656ea4
00657178  00 30 92 e5                                      ldr r3, [r2]
0065717c  02 00 a0 e1                                      mov r0, r2
00657180  0f e0 a0 e1                                      mov lr, pc
00657184  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00657188  3e ff ff ea                                      b #0x656e88
0065718c  80 c1 94 e5                                      ldr ip, [r4, #0x180]
00657190  01 00 a0 e3                                      mov r0, #1
00657194  94 60 8d e2                                      add r6, sp, #0x94
00657198  00 20 a0 e1                                      mov r2, r0
0065719c  0c 10 a0 e1                                      mov r1, ip
006571a0  00 c0 9c e5                                      ldr ip, [ip]
006571a4  04 30 8d e5                                      str r3, [sp, #4]
006571a8  00 30 8d e5                                      str r3, [sp]
006571ac  08 00 8d e5                                      str r0, [sp, #8]
006571b0  04 30 a0 e3                                      mov r3, #4
006571b4  06 00 a0 e1                                      mov r0, r6
006571b8  0f e0 a0 e1                                      mov lr, pc
006571bc  78 f0 9c e5                                      ldr pc, [ip, #0x78]
006571c0  94 30 9d e5                                      ldr r3, [sp, #0x94]
006571c4  00 00 53 e3                                      cmp r3, #0
006571c8  04 20 93 15                                      ldrne r2, [r3, #4]
006571cc  01 20 82 12                                      addne r2, r2, #1
006571d0  04 20 83 15                                      strne r2, [r3, #4]
006571d4  18 10 9d e5                                      ldr r1, [sp, #0x18]
006571d8  01 20 95 e7                                      ldr r2, [r5, r1]
006571dc  00 00 92 e5                                      ldr r0, [r2]
006571e0  00 30 82 e5                                      str r3, [r2]
006571e4  00 00 50 e3                                      cmp r0, #0
006571e8  00 00 00 0a                                      beq #0x6571f0
006571ec  e4 18 f3 eb                                      bl #0x31d584
006571f0  06 00 a0 e1                                      mov r0, r6
006571f4  64 82 ff eb                                      bl #0x637b8c
006571f8  8c 31 94 e5                                      ldr r3, [r4, #0x18c]
006571fc  18 20 93 e5                                      ldr r2, [r3, #0x18]
00657200  ca fd ff ea                                      b #0x656930
; mapping-symbol data/literal pool
00657204  80 ed 28 00 f0 e5 33 00 2c ed 28 00 c8 ee 28 00  .byte 0x80, 0xed, 0x28, 0x00, 0xf0, 0xe5, 0x33, 0x00, 0x2c, 0xed, 0x28, 0x00, 0xc8, 0xee, 0x28, 0x00
00657214  8c ee 28 00 70 ee 28 00 9c ee 28 00 88 ee 28 00  .byte 0x8c, 0xee, 0x28, 0x00, 0x70, 0xee, 0x28, 0x00, 0x9c, 0xee, 0x28, 0x00, 0x88, 0xee, 0x28, 0x00
00657224  84 f0 28 00 70 f0 28 00 04 2e 28 00 a0 ec 28 00  .byte 0x84, 0xf0, 0x28, 0x00, 0x70, 0xf0, 0x28, 0x00, 0x04, 0x2e, 0x28, 0x00, 0xa0, 0xec, 0x28, 0x00
00657234  e0 ed 28 00 70 ed 28 00 54 ed 28 00 48 ed 28 00  .byte 0xe0, 0xed, 0x28, 0x00, 0x70, 0xed, 0x28, 0x00, 0x54, 0xed, 0x28, 0x00, 0x48, 0xed, 0x28, 0x00
00657244  34 ed 28 00 28 ed 28 00 1c ed 28 00 08 eb 28 00  .byte 0x34, 0xed, 0x28, 0x00, 0x28, 0xed, 0x28, 0x00, 0x1c, 0xed, 0x28, 0x00, 0x08, 0xeb, 0x28, 0x00
00657254  f4 ea 28 00 e0 ea 28 00 cc ea 28 00 e8 ea 28 00  .byte 0xf4, 0xea, 0x28, 0x00, 0xe0, 0xea, 0x28, 0x00, 0xcc, 0xea, 0x28, 0x00, 0xe8, 0xea, 0x28, 0x00
00657264  90 ea 28 00 70 ea 28 00 b4 20 00 00 bc 11 00 00  .byte 0x90, 0xea, 0x28, 0x00, 0x70, 0xea, 0x28, 0x00, 0xb4, 0x20, 0x00, 0x00, 0xbc, 0x11, 0x00, 0x00
00657274  dc 28 00 00 50 ea 28 00 dc e9 28 00 5c e5 28 00  .byte 0xdc, 0x28, 0x00, 0x00, 0x50, 0xea, 0x28, 0x00, 0xdc, 0xe9, 0x28, 0x00, 0x5c, 0xe5, 0x28, 0x00
00657284  14 e5 28 00 38 46 29 00 20 46 29 00 a8 e4 28 00  .byte 0x14, 0xe5, 0x28, 0x00, 0x38, 0x46, 0x29, 0x00, 0x20, 0x46, 0x29, 0x00, 0xa8, 0xe4, 0x28, 0x00
00657294  88 e4 28 00 58 e4 28 00 0c e4 28 00 40 45 29 00  .byte 0x88, 0xe4, 0x28, 0x00, 0x58, 0xe4, 0x28, 0x00, 0x0c, 0xe4, 0x28, 0x00, 0x40, 0x45, 0x29, 0x00
006572a4  b8 e3 28 00 44 e4 28 00 24 e4 28 00 1c 49 34 00  .byte 0xb8, 0xe3, 0x28, 0x00, 0x44, 0xe4, 0x28, 0x00, 0x24, 0xe4, 0x28, 0x00, 0x1c, 0x49, 0x34, 0x00
006572b4  54 0c 00 00                                      .byte 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006572b8, declared_size=1308, range_size=1308, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZN6glitch7collada24CParticleSystemSceneNode6renderEPv
; demangled: glitch::collada::CParticleSystemSceneNode::render(void*)
; decoder-mode: arm
006572b8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006572bc  10 31 90 e5                                      ldr r3, [r0, #0x110]
006572c0  04 65 9f e5                                      ldr r6, [pc, #0x504]
006572c4  c4 d0 4d e2                                      sub sp, sp, #0xc4
006572c8  14 50 93 e5                                      ldr r5, [r3, #0x14]
006572cc  06 60 8f e0                                      add r6, pc, r6
006572d0  00 40 a0 e1                                      mov r4, r0
006572d4  00 00 55 e3                                      cmp r5, #0
006572d8  67 00 00 0a                                      beq #0x65747c
006572dc  e4 10 93 e5                                      ldr r1, [r3, #0xe4]
006572e0  00 00 51 e3                                      cmp r1, #0
006572e4  12 01 00 0a                                      beq #0x657734
006572e8  01 00 a0 e1                                      mov r0, r1
006572ec  00 30 91 e5                                      ldr r3, [r1]
006572f0  48 71 94 e5                                      ldr r7, [r4, #0x148]
006572f4  0f e0 a0 e1                                      mov lr, pc
006572f8  44 f1 93 e5                                      ldr pc, [r3, #0x144]
006572fc  41 20 a0 e3                                      mov r2, #0x41
00657300  84 10 80 e2                                      add r1, r0, #0x84
00657304  07 00 a0 e1                                      mov r0, r7
00657308  56 dd f2 eb                                      bl #0x30e868
0065730c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00657310  00 20 93 e5                                      ldr r2, [r3]
00657314  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00657318  02 30 83 e0                                      add r3, r3, r2
0065731c  54 30 d3 e5                                      ldrb r3, [r3, #0x54]
00657320  00 00 53 e3                                      cmp r3, #0
00657324  56 00 00 1a                                      bne #0x657484
00657328  a0 24 9f e5                                      ldr r2, [pc, #0x4a0]
0065732c  00 30 95 e5                                      ldr r3, [r5]
00657330  05 00 a0 e1                                      mov r0, r5
00657334  02 20 96 e7                                      ldr r2, [r6, r2]
00657338  01 10 a0 e3                                      mov r1, #1
0065733c  0f e0 a0 e1                                      mov lr, pc
00657340  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00657344  40 31 94 e5                                      ldr r3, [r4, #0x140]
00657348  14 60 93 e5                                      ldr r6, [r3, #0x14]
0065734c  00 00 56 e3                                      cmp r6, #0
00657350  00 30 96 15                                      ldrne r3, [r6]
00657354  08 a0 96 e5                                      ldr sl, [r6, #8]
00657358  01 30 83 12                                      addne r3, r3, #1
0065735c  00 30 86 15                                      strne r3, [r6]
00657360  00 30 96 e5                                      ldr r3, [r6]
00657364  01 30 43 e2                                      sub r3, r3, #1
00657368  00 00 53 e3                                      cmp r3, #0
0065736c  00 30 86 e5                                      str r3, [r6]
00657370  03 00 00 1a                                      bne #0x657384
00657374  06 00 a0 e1                                      mov r0, r6
00657378  a7 25 fd eb                                      bl #0x5a0a1c
0065737c  06 00 a0 e1                                      mov r0, r6
00657380  ca db f2 eb                                      bl #0x30e2b0
00657384  78 31 94 e5                                      ldr r3, [r4, #0x178]
00657388  00 10 95 e5                                      ldr r1, [r5]
0065738c  29 2c 05 e3                                      movw r2, #0x5c29
00657390  00 c0 93 e5                                      ldr ip, [r3]
00657394  f0 61 91 e5                                      ldr r6, [r1, #0x1f0]
00657398  8f 22 4c e3                                      movt r2, #0xc28f
0065739c  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
006573a0  bc 00 8d e2                                      add r0, sp, #0xbc
006573a4  84 81 94 e5                                      ldr r8, [r4, #0x184]
006573a8  0e 10 83 e0                                      add r1, r3, lr
006573ac  24 c0 91 e5                                      ldr ip, [r1, #0x24]
006573b0  28 70 91 e5                                      ldr r7, [r1, #0x28]
006573b4  0e 30 93 e7                                      ldr r3, [r3, lr]
006573b8  07 70 6c e0                                      rsb r7, ip, r7
006573bc  47 71 a0 e1                                      asr r7, r7, #2
006573c0  92 07 07 e0                                      mul r7, r2, r7
006573c4  0f e0 a0 e1                                      mov lr, pc
006573c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006573cc  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
006573d0  9a 07 07 e0                                      mul r7, sl, r7
006573d4  00 00 53 e3                                      cmp r3, #0
006573d8  b8 30 8d e5                                      str r3, [sp, #0xb8]
006573dc  00 20 93 15                                      ldrne r2, [r3]
006573e0  05 00 a0 e1                                      mov r0, r5
006573e4  01 20 82 12                                      addne r2, r2, #1
006573e8  00 20 83 15                                      strne r2, [r3]
006573ec  00 30 a0 e3                                      mov r3, #0
006573f0  03 10 a0 e1                                      mov r1, r3
006573f4  b8 20 8d e2                                      add r2, sp, #0xb8
006573f8  0c 00 8d e9                                      stmib sp, {r2, r3}
006573fc  0c 30 8d e5                                      str r3, [sp, #0xc]
00657400  00 80 8d e5                                      str r8, [sp]
00657404  07 30 a0 e1                                      mov r3, r7
00657408  01 20 a0 e1                                      mov r2, r1
0065740c  36 ff 2f e1                                      blx r6
00657410  b8 60 9d e5                                      ldr r6, [sp, #0xb8]
00657414  00 70 a0 e1                                      mov r7, r0
00657418  00 00 56 e3                                      cmp r6, #0
0065741c  08 00 00 0a                                      beq #0x657444
00657420  00 30 96 e5                                      ldr r3, [r6]
00657424  01 30 43 e2                                      sub r3, r3, #1
00657428  00 00 53 e3                                      cmp r3, #0
0065742c  00 30 86 e5                                      str r3, [r6]
00657430  03 00 00 1a                                      bne #0x657444
00657434  06 00 a0 e1                                      mov r0, r6
00657438  77 25 fd eb                                      bl #0x5a0a1c
0065743c  06 00 a0 e1                                      mov r0, r6
00657440  9a db f2 eb                                      bl #0x30e2b0
00657444  bc 60 9d e5                                      ldr r6, [sp, #0xbc]
00657448  00 00 56 e3                                      cmp r6, #0
0065744c  08 00 00 0a                                      beq #0x657474
00657450  00 30 96 e5                                      ldr r3, [r6]
00657454  01 30 43 e2                                      sub r3, r3, #1
00657458  00 00 53 e3                                      cmp r3, #0
0065745c  00 30 86 e5                                      str r3, [r6]
00657460  03 00 00 1a                                      bne #0x657474
00657464  06 00 a0 e1                                      mov r0, r6
00657468  6b 25 fd eb                                      bl #0x5a0a1c
0065746c  06 00 a0 e1                                      mov r0, r6
00657470  8e db f2 eb                                      bl #0x30e2b0
00657474  04 00 57 e3                                      cmp r7, #4
00657478  21 00 00 0a                                      beq #0x657504
0065747c  c4 d0 8d e2                                      add sp, sp, #0xc4
00657480  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00657484  00 70 a0 e3                                      mov r7, #0
00657488  10 60 8d e2                                      add r6, sp, #0x10
0065748c  07 10 a0 e1                                      mov r1, r7
00657490  40 20 a0 e3                                      mov r2, #0x40
00657494  06 00 a0 e1                                      mov r0, r6
00657498  f0 db f2 eb                                      bl #0x30e460
0065749c  78 31 94 e5                                      ldr r3, [r4, #0x178]
006574a0  fe 25 a0 e3                                      mov r2, #0x3f800000
006574a4  01 80 a0 e3                                      mov r8, #1
006574a8  4c 20 8d e5                                      str r2, [sp, #0x4c]
006574ac  10 20 8d e5                                      str r2, [sp, #0x10]
006574b0  24 20 8d e5                                      str r2, [sp, #0x24]
006574b4  38 20 8d e5                                      str r2, [sp, #0x38]
006574b8  50 80 cd e5                                      strb r8, [sp, #0x50]
006574bc  03 00 a0 e1                                      mov r0, r3
006574c0  00 30 93 e5                                      ldr r3, [r3]
006574c4  0f e0 a0 e1                                      mov lr, pc
006574c8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006574cc  38 30 90 e5                                      ldr r3, [r0, #0x38]
006574d0  30 10 90 e5                                      ldr r1, [r0, #0x30]
006574d4  34 20 90 e5                                      ldr r2, [r0, #0x34]
006574d8  50 70 cd e5                                      strb r7, [sp, #0x50]
006574dc  40 10 8d e5                                      str r1, [sp, #0x40]
006574e0  44 20 8d e5                                      str r2, [sp, #0x44]
006574e4  48 30 8d e5                                      str r3, [sp, #0x48]
006574e8  08 10 a0 e1                                      mov r1, r8
006574ec  06 20 a0 e1                                      mov r2, r6
006574f0  00 30 95 e5                                      ldr r3, [r5]
006574f4  05 00 a0 e1                                      mov r0, r5
006574f8  0f e0 a0 e1                                      mov lr, pc
006574fc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00657500  8f ff ff ea                                      b #0x657344
00657504  78 31 94 e5                                      ldr r3, [r4, #0x178]
00657508  b4 00 8d e2                                      add r0, sp, #0xb4
0065750c  00 20 93 e5                                      ldr r2, [r3]
00657510  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00657514  02 10 83 e0                                      add r1, r3, r2
00657518  02 30 93 e7                                      ldr r3, [r3, r2]
0065751c  0f e0 a0 e1                                      mov lr, pc
00657520  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00657524  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
00657528  00 10 a0 e3                                      mov r1, #0
0065752c  3c 26 fd eb                                      bl #0x5a0e24
00657530  b4 60 9d e5                                      ldr r6, [sp, #0xb4]
00657534  00 00 56 e3                                      cmp r6, #0
00657538  08 00 00 0a                                      beq #0x657560
0065753c  00 30 96 e5                                      ldr r3, [r6]
00657540  01 30 43 e2                                      sub r3, r3, #1
00657544  00 00 53 e3                                      cmp r3, #0
00657548  00 30 86 e5                                      str r3, [r6]
0065754c  03 00 00 1a                                      bne #0x657560
00657550  06 00 a0 e1                                      mov r0, r6
00657554  30 25 fd eb                                      bl #0x5a0a1c
00657558  06 00 a0 e1                                      mov r0, r6
0065755c  53 db f2 eb                                      bl #0x30e2b0
00657560  78 31 94 e5                                      ldr r3, [r4, #0x178]
00657564  00 10 a0 e3                                      mov r1, #0
00657568  00 20 93 e5                                      ldr r2, [r3]
0065756c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00657570  02 00 83 e0                                      add r0, r3, r2
00657574  02 30 93 e7                                      ldr r3, [r3, r2]
00657578  0f e0 a0 e1                                      mov lr, pc
0065757c  08 f0 93 e5                                      ldr pc, [r3, #8]
00657580  78 31 94 e5                                      ldr r3, [r4, #0x178]
00657584  00 70 a0 e1                                      mov r7, r0
00657588  00 20 93 e5                                      ldr r2, [r3]
0065758c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00657590  02 00 83 e0                                      add r0, r3, r2
00657594  02 30 93 e7                                      ldr r3, [r3, r2]
00657598  0f e0 a0 e1                                      mov lr, pc
0065759c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006575a0  00 00 50 e3                                      cmp r0, #0
006575a4  73 00 00 1a                                      bne #0x657778
006575a8  a8 60 8d e2                                      add r6, sp, #0xa8
006575ac  06 00 a0 e1                                      mov r0, r6
006575b0  00 20 a0 e3                                      mov r2, #0
006575b4  00 30 94 e5                                      ldr r3, [r4]
006575b8  04 10 a0 e1                                      mov r1, r4
006575bc  0f e0 a0 e1                                      mov lr, pc
006575c0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
006575c4  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
006575c8  00 00 50 e3                                      cmp r0, #0
006575cc  ff 20 a0 03                                      moveq r2, #0xff
006575d0  01 00 00 0a                                      beq #0x6575dc
006575d4  d6 b9 fd eb                                      bl #0x5c5d34
006575d8  00 20 a0 e1                                      mov r2, r0
006575dc  06 10 a0 e1                                      mov r1, r6
006575e0  00 30 a0 e3                                      mov r3, #0
006575e4  05 00 a0 e1                                      mov r0, r5
006575e8  5e 57 fd eb                                      bl #0x5ad368
006575ec  06 00 a0 e1                                      mov r0, r6
006575f0  7c e5 f2 eb                                      bl #0x310be8
006575f4  00 30 97 e5                                      ldr r3, [r7]
006575f8  05 00 a0 e1                                      mov r0, r5
006575fc  a4 10 8d e2                                      add r1, sp, #0xa4
00657600  00 00 53 e3                                      cmp r3, #0
00657604  a4 30 8d e5                                      str r3, [sp, #0xa4]
00657608  00 20 93 15                                      ldrne r2, [r3]
0065760c  01 20 82 12                                      addne r2, r2, #1
00657610  00 20 83 15                                      strne r2, [r3]
00657614  00 20 95 e5                                      ldr r2, [r5]
00657618  00 30 a0 e3                                      mov r3, #0
0065761c  58 c0 92 e5                                      ldr ip, [r2, #0x58]
00657620  98 20 8d e2                                      add r2, sp, #0x98
00657624  00 20 8d e5                                      str r2, [sp]
00657628  98 30 8d e5                                      str r3, [sp, #0x98]
0065762c  04 20 87 e2                                      add r2, r7, #4
00657630  3c ff 2f e1                                      blx ip
00657634  98 00 9d e5                                      ldr r0, [sp, #0x98]
00657638  00 00 50 e3                                      cmp r0, #0
0065763c  00 00 00 0a                                      beq #0x657644
00657640  cf 17 f3 eb                                      bl #0x31d584
00657644  a4 60 9d e5                                      ldr r6, [sp, #0xa4]
00657648  00 00 56 e3                                      cmp r6, #0
0065764c  08 00 00 0a                                      beq #0x657674
00657650  00 30 96 e5                                      ldr r3, [r6]
00657654  01 30 43 e2                                      sub r3, r3, #1
00657658  00 00 53 e3                                      cmp r3, #0
0065765c  00 30 86 e5                                      str r3, [r6]
00657660  03 00 00 1a                                      bne #0x657674
00657664  06 00 a0 e1                                      mov r0, r6
00657668  eb 24 fd eb                                      bl #0x5a0a1c
0065766c  06 00 a0 e1                                      mov r0, r6
00657670  0e db f2 eb                                      bl #0x30e2b0
00657674  78 31 94 e5                                      ldr r3, [r4, #0x178]
00657678  00 10 95 e5                                      ldr r1, [r5]
0065767c  a0 00 8d e2                                      add r0, sp, #0xa0
00657680  00 20 93 e5                                      ldr r2, [r3]
00657684  f4 61 91 e5                                      ldr r6, [r1, #0x1f4]
00657688  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0065768c  02 10 83 e0                                      add r1, r3, r2
00657690  02 30 93 e7                                      ldr r3, [r3, r2]
00657694  0f e0 a0 e1                                      mov lr, pc
00657698  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0065769c  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
006576a0  05 00 a0 e1                                      mov r0, r5
006576a4  00 00 53 e3                                      cmp r3, #0
006576a8  9c 30 8d e5                                      str r3, [sp, #0x9c]
006576ac  00 20 93 15                                      ldrne r2, [r3]
006576b0  01 20 82 12                                      addne r2, r2, #1
006576b4  00 20 83 15                                      strne r2, [r3]
006576b8  84 21 94 e5                                      ldr r2, [r4, #0x184]
006576bc  00 30 a0 e3                                      mov r3, #0
006576c0  03 10 a0 e1                                      mov r1, r3
006576c4  0c 00 8d e8                                      stm sp, {r2, r3}
006576c8  9c 20 8d e2                                      add r2, sp, #0x9c
006576cc  36 ff 2f e1                                      blx r6
006576d0  9c 40 9d e5                                      ldr r4, [sp, #0x9c]
006576d4  00 00 54 e3                                      cmp r4, #0
006576d8  08 00 00 0a                                      beq #0x657700
006576dc  00 30 94 e5                                      ldr r3, [r4]
006576e0  01 30 43 e2                                      sub r3, r3, #1
006576e4  00 00 53 e3                                      cmp r3, #0
006576e8  00 30 84 e5                                      str r3, [r4]
006576ec  03 00 00 1a                                      bne #0x657700
006576f0  04 00 a0 e1                                      mov r0, r4
006576f4  c8 24 fd eb                                      bl #0x5a0a1c
006576f8  04 00 a0 e1                                      mov r0, r4
006576fc  eb da f2 eb                                      bl #0x30e2b0
00657700  a0 40 9d e5                                      ldr r4, [sp, #0xa0]
00657704  00 00 54 e3                                      cmp r4, #0
00657708  5b ff ff 0a                                      beq #0x65747c
0065770c  00 30 94 e5                                      ldr r3, [r4]
00657710  01 30 43 e2                                      sub r3, r3, #1
00657714  00 00 53 e3                                      cmp r3, #0
00657718  00 30 84 e5                                      str r3, [r4]
0065771c  56 ff ff 1a                                      bne #0x65747c
00657720  04 00 a0 e1                                      mov r0, r4
00657724  bc 24 fd eb                                      bl #0x5a0a1c
00657728  04 00 a0 e1                                      mov r0, r4
0065772c  df da f2 eb                                      bl #0x30e2b0
00657730  51 ff ff ea                                      b #0x65747c
00657734  48 81 90 e5                                      ldr r8, [r0, #0x148]
00657738  54 70 8d e2                                      add r7, sp, #0x54
0065773c  40 20 a0 e3                                      mov r2, #0x40
00657740  07 00 a0 e1                                      mov r0, r7
00657744  45 db f2 eb                                      bl #0x30e460
00657748  fe 35 a0 e3                                      mov r3, #0x3f800000
0065774c  01 c0 a0 e3                                      mov ip, #1
00657750  08 00 a0 e1                                      mov r0, r8
00657754  07 10 a0 e1                                      mov r1, r7
00657758  41 20 a0 e3                                      mov r2, #0x41
0065775c  90 30 8d e5                                      str r3, [sp, #0x90]
00657760  94 c0 cd e5                                      strb ip, [sp, #0x94]
00657764  54 30 8d e5                                      str r3, [sp, #0x54]
00657768  68 30 8d e5                                      str r3, [sp, #0x68]
0065776c  7c 30 8d e5                                      str r3, [sp, #0x7c]
00657770  3c dc f2 eb                                      bl #0x30e868
00657774  e4 fe ff ea                                      b #0x65730c
00657778  b0 60 8d e2                                      add r6, sp, #0xb0
0065777c  06 00 a0 e1                                      mov r0, r6
00657780  04 10 a0 e1                                      mov r1, r4
00657784  00 30 94 e5                                      ldr r3, [r4]
00657788  00 20 a0 e3                                      mov r2, #0
0065778c  0f e0 a0 e1                                      mov lr, pc
00657790  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00657794  74 11 94 e5                                      ldr r1, [r4, #0x174]
00657798  00 c0 e0 e3                                      mvn ip, #0
0065779c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006577a0  71 10 ff e6                                      uxth r1, r1
006577a4  00 20 a0 e3                                      mov r2, #0
006577a8  ac 30 8d e2                                      add r3, sp, #0xac
006577ac  af c0 cd e5                                      strb ip, [sp, #0xaf]
006577b0  ac c0 cd e5                                      strb ip, [sp, #0xac]
006577b4  ad c0 cd e5                                      strb ip, [sp, #0xad]
006577b8  ae c0 cd e5                                      strb ip, [sp, #0xae]
006577bc  5d cd fd eb                                      bl #0x5cad38
006577c0  06 00 a0 e1                                      mov r0, r6
006577c4  07 e5 f2 eb                                      bl #0x310be8
006577c8  76 ff ff ea                                      b #0x6575a8
; mapping-symbol data/literal pool
006577cc  c4 d7 33 00 30 28 00 00                          .byte 0xc4, 0xd7, 0x33, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x006577d4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch7collada24CParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006577d4  00 30 90 e5                                      ldr r3, [r0]
006577d8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006577dc  03 00 80 e0                                      add r0, r0, r3
006577e0  4c dd ff ea                                      b #0x64ed18

; FUNCTION 0x006577e4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch7collada24CParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006577e4  00 30 90 e5                                      ldr r3, [r0]
006577e8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006577ec  03 00 80 e0                                      add r0, r0, r3
006577f0  48 dd ff ea                                      b #0x64ed18

; FUNCTION 0x006577f4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch7collada24CParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
006577f4  00 30 90 e5                                      ldr r3, [r0]
006577f8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006577fc  03 00 80 e0                                      add r0, r0, r3
00657800  29 dd ff ea                                      b #0x64ecac

; FUNCTION 0x00657804, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch7collada24CParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CParticleSystemSceneNode::~CParticleSystemSceneNode()
; decoder-mode: arm
00657804  00 30 90 e5                                      ldr r3, [r0]
00657808  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0065780c  03 00 80 e0                                      add r0, r0, r3
00657810  25 dd ff ea                                      b #0x64ecac
