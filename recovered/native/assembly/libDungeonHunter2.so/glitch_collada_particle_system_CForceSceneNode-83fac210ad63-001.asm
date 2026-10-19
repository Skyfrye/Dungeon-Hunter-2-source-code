; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062fee4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode*)
; decoder-mode: arm
0062fee4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062fee8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode*)
; decoder-mode: arm
0062fee8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062feec, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZNK6glitch7collada15particle_system15CForceSceneNode7getTypeEv
; demangled: glitch::collada::particle_system::CForceSceneNode::getType() const
; decoder-mode: arm
0062feec  64 01 06 e3                                      movw r0, #0x6164
0062fef0  65 06 46 e3                                      movt r0, #0x6665
0062fef4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062fef8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNode6renderEPv
; demangled: glitch::collada::particle_system::CForceSceneNode::render(void*)
; decoder-mode: arm
0062fef8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00630768, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNodeD1Ev
; demangled: glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
00630768  70 40 2d e9                                      push {r4, r5, r6, lr}
0063076c  40 50 9f e5                                      ldr r5, [pc, #0x40]
00630770  40 30 9f e5                                      ldr r3, [pc, #0x40]
00630774  00 40 a0 e1                                      mov r4, r0
00630778  05 50 8f e0                                      add r5, pc, r5
0063077c  03 30 95 e7                                      ldr r3, [r5, r3]
00630780  4d 0f 80 e2                                      add r0, r0, #0x134
00630784  4a 2f 83 e2                                      add r2, r3, #0x128
00630788  1c 30 83 e2                                      add r3, r3, #0x1c
0063078c  00 30 84 e5                                      str r3, [r4]
00630790  40 21 84 e5                                      str r2, [r4, #0x140]
00630794  36 a3 ff eb                                      bl #0x619474
00630798  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0063079c  04 00 a0 e1                                      mov r0, r4
006307a0  01 10 95 e7                                      ldr r1, [r5, r1]
006307a4  04 10 81 e2                                      add r1, r1, #4
006307a8  43 a1 fd eb                                      bl #0x598cbc
006307ac  04 00 a0 e1                                      mov r0, r4
006307b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006307b4  18 43 36 00 10 0a 00 00 10 27 00 00              .byte 0x18, 0x43, 0x36, 0x00, 0x10, 0x0a, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00

; FUNCTION 0x006307c0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system15CForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
006307c0  00 30 90 e5                                      ldr r3, [r0]
006307c4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006307c8  03 00 80 e0                                      add r0, r0, r3
006307cc  e5 ff ff ea                                      b #0x630768

; FUNCTION 0x006307d0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system15CForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
006307d0  00 30 90 e5                                      ldr r3, [r0]
006307d4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006307d8  03 00 80 e0                                      add r0, r0, r3
006307dc  e1 ff ff ea                                      b #0x630768

; FUNCTION 0x006307e0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNodeD0Ev
; demangled: glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
006307e0  10 40 2d e9                                      push {r4, lr}
006307e4  00 40 a0 e1                                      mov r4, r0
006307e8  de ff ff eb                                      bl #0x630768
006307ec  04 00 a0 e1                                      mov r0, r4
006307f0  ae 76 f3 eb                                      bl #0x30e2b0
006307f4  04 00 a0 e1                                      mov r0, r4
006307f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006307fc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system15CForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
006307fc  00 30 90 e5                                      ldr r3, [r0]
00630800  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00630804  03 00 80 e0                                      add r0, r0, r3
00630808  f4 ff ff ea                                      b #0x6307e0

; FUNCTION 0x0063080c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system15CForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
0063080c  00 30 90 e5                                      ldr r3, [r0]
00630810  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00630814  03 00 80 e0                                      add r0, r0, r3
00630818  f0 ff ff ea                                      b #0x6307e0

; FUNCTION 0x0063081c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNodeD2Ev
; demangled: glitch::collada::particle_system::CForceSceneNode::~CForceSceneNode()
; decoder-mode: arm
0063081c  70 40 2d e9                                      push {r4, r5, r6, lr}
00630820  00 30 91 e5                                      ldr r3, [r1]
00630824  00 40 a0 e1                                      mov r4, r0
00630828  01 50 a0 e1                                      mov r5, r1
0063082c  00 30 84 e5                                      str r3, [r4]
00630830  10 20 91 e5                                      ldr r2, [r1, #0x10]
00630834  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00630838  4d 0f 80 e2                                      add r0, r0, #0x134
0063083c  03 20 84 e7                                      str r2, [r4, r3]
00630840  00 30 94 e5                                      ldr r3, [r4]
00630844  14 20 91 e5                                      ldr r2, [r1, #0x14]
00630848  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0063084c  03 20 84 e7                                      str r2, [r4, r3]
00630850  07 a3 ff eb                                      bl #0x619474
00630854  04 00 a0 e1                                      mov r0, r4
00630858  04 10 85 e2                                      add r1, r5, #4
0063085c  16 a1 fd eb                                      bl #0x598cbc
00630860  04 00 a0 e1                                      mov r0, r4
00630864  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00630ee8, declared_size=132, range_size=132, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZNK6glitch7collada15particle_system15CForceSceneNode14getBoundingBoxEv
; demangled: glitch::collada::particle_system::CForceSceneNode::getBoundingBox() const
; decoder-mode: arm
00630ee8  70 40 2d e9                                      push {r4, r5, r6, lr}
00630eec  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
00630ef0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00630ef4  04 40 8f e0                                      add r4, pc, r4
00630ef8  03 50 94 e7                                      ldr r5, [r4, r3]
00630efc  00 30 95 e5                                      ldr r3, [r5]
00630f00  01 00 13 e3                                      tst r3, #1
00630f04  02 00 00 0a                                      beq #0x630f14
00630f08  58 60 9f e5                                      ldr r6, [pc, #0x58]
00630f0c  06 00 94 e7                                      ldr r0, [r4, r6]
00630f10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00630f14  05 00 a0 e1                                      mov r0, r5
00630f18  13 76 f3 eb                                      bl #0x30e76c
00630f1c  00 00 50 e3                                      cmp r0, #0
00630f20  f8 ff ff 0a                                      beq #0x630f08
00630f24  3c 60 9f e5                                      ldr r6, [pc, #0x3c]
00630f28  bf 14 a0 e3                                      mov r1, #0xbf000000
00630f2c  02 15 81 e2                                      add r1, r1, #0x800000
00630f30  06 30 94 e7                                      ldr r3, [r4, r6]
00630f34  fe 25 a0 e3                                      mov r2, #0x3f800000
00630f38  05 00 a0 e1                                      mov r0, r5
00630f3c  14 20 83 e5                                      str r2, [r3, #0x14]
00630f40  08 10 83 e5                                      str r1, [r3, #8]
00630f44  00 10 83 e5                                      str r1, [r3]
00630f48  04 10 83 e5                                      str r1, [r3, #4]
00630f4c  0c 20 83 e5                                      str r2, [r3, #0xc]
00630f50  10 20 83 e5                                      str r2, [r3, #0x10]
00630f54  b8 76 f3 eb                                      bl #0x30ea3c
00630f58  06 00 94 e7                                      ldr r0, [r4, r6]
00630f5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00630f60  9c 3b 36 00 4c 31 00 00 70 2c 00 00              .byte 0x9c, 0x3b, 0x36, 0x00, 0x4c, 0x31, 0x00, 0x00, 0x70, 0x2c, 0x00, 0x00

; FUNCTION 0x00630f6c, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode
; alias: _ZN6glitch7collada15particle_system15CForceSceneNodeC2ERKNS0_16CColladaDatabaseERKNS0_6SForceE
; demangled: glitch::collada::particle_system::CForceSceneNode::CForceSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SForce const&)
; decoder-mode: arm
00630f6c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00630f70  34 d0 4d e2                                      sub sp, sp, #0x34
00630f74  08 40 8d e2                                      add r4, sp, #8
00630f78  00 c0 a0 e3                                      mov ip, #0
00630f7c  fe e5 a0 e3                                      mov lr, #0x3f800000
00630f80  02 60 a0 e1                                      mov r6, r2
00630f84  00 40 8d e5                                      str r4, [sp]
00630f88  00 20 e0 e3                                      mvn r2, #0
00630f8c  18 40 8d e2                                      add r4, sp, #0x18
00630f90  01 50 a0 e1                                      mov r5, r1
00630f94  03 70 a0 e1                                      mov r7, r3
00630f98  04 10 81 e2                                      add r1, r1, #4
00630f9c  24 30 8d e2                                      add r3, sp, #0x24
00630fa0  04 40 8d e5                                      str r4, [sp, #4]
00630fa4  10 c0 8d e5                                      str ip, [sp, #0x10]
00630fa8  00 40 a0 e1                                      mov r4, r0
00630fac  20 e0 8d e5                                      str lr, [sp, #0x20]
00630fb0  24 c0 8d e5                                      str ip, [sp, #0x24]
00630fb4  28 c0 8d e5                                      str ip, [sp, #0x28]
00630fb8  2c c0 8d e5                                      str ip, [sp, #0x2c]
00630fbc  08 c0 8d e5                                      str ip, [sp, #8]
00630fc0  0c c0 8d e5                                      str ip, [sp, #0xc]
00630fc4  14 e0 8d e5                                      str lr, [sp, #0x14]
00630fc8  18 e0 8d e5                                      str lr, [sp, #0x18]
00630fcc  1c e0 8d e5                                      str lr, [sp, #0x1c]
00630fd0  3a a0 fd eb                                      bl #0x5990c0
00630fd4  00 20 96 e5                                      ldr r2, [r6]
00630fd8  68 30 9f e5                                      ldr r3, [pc, #0x68]
00630fdc  34 21 84 e5                                      str r2, [r4, #0x134]
00630fe0  04 10 96 e5                                      ldr r1, [r6, #4]
00630fe4  00 00 52 e3                                      cmp r2, #0
00630fe8  03 30 8f e0                                      add r3, pc, r3
00630fec  38 11 84 e5                                      str r1, [r4, #0x138]
00630ff0  03 00 00 0a                                      beq #0x631004
00630ff4  04 10 92 e5                                      ldr r1, [r2, #4]
00630ff8  00 00 51 e3                                      cmp r1, #0
00630ffc  01 10 81 12                                      addne r1, r1, #1
00631000  04 10 82 15                                      strne r1, [r2, #4]
00631004  40 20 9f e5                                      ldr r2, [pc, #0x40]
00631008  04 00 a0 e1                                      mov r0, r4
0063100c  02 20 93 e7                                      ldr r2, [r3, r2]
00631010  04 20 82 e2                                      add r2, r2, #4
00631014  30 21 84 e5                                      str r2, [r4, #0x130]
00631018  00 30 95 e5                                      ldr r3, [r5]
0063101c  00 30 84 e5                                      str r3, [r4]
00631020  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00631024  10 20 95 e5                                      ldr r2, [r5, #0x10]
00631028  03 20 84 e7                                      str r2, [r4, r3]
0063102c  00 30 94 e5                                      ldr r3, [r4]
00631030  14 20 95 e5                                      ldr r2, [r5, #0x14]
00631034  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00631038  03 20 84 e7                                      str r2, [r4, r3]
0063103c  3c 71 84 e5                                      str r7, [r4, #0x13c]
00631040  34 d0 8d e2                                      add sp, sp, #0x34
00631044  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00631048  a8 3a 36 00 b4 17 00 00                          .byte 0xa8, 0x3a, 0x36, 0x00, 0xb4, 0x17, 0x00, 0x00
