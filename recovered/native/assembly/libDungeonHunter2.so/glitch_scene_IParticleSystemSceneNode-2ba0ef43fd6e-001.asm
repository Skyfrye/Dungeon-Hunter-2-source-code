; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c1724, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZN6glitch5scene24IParticleSystemSceneNodeD1Ev
; demangled: glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006c1724  38 30 9f e5                                      ldr r3, [pc, #0x38]
006c1728  38 20 9f e5                                      ldr r2, [pc, #0x38]
006c172c  38 10 9f e5                                      ldr r1, [pc, #0x38]
006c1730  03 30 8f e0                                      add r3, pc, r3
006c1734  02 20 93 e7                                      ldr r2, [r3, r2]
006c1738  01 10 93 e7                                      ldr r1, [r3, r1]
006c173c  10 40 2d e9                                      push {r4, lr}
006c1740  5e cf 82 e2                                      add ip, r2, #0x178
006c1744  1c 20 82 e2                                      add r2, r2, #0x1c
006c1748  00 40 a0 e1                                      mov r4, r0
006c174c  00 20 80 e5                                      str r2, [r0]
006c1750  30 c1 80 e5                                      str ip, [r0, #0x130]
006c1754  04 10 81 e2                                      add r1, r1, #4
006c1758  57 5d fb eb                                      bl #0x598cbc
006c175c  04 00 a0 e1                                      mov r0, r4
006c1760  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c1764  60 33 2d 00 ec 45 00 00 20 33 00 00              .byte 0x60, 0x33, 0x2d, 0x00, 0xec, 0x45, 0x00, 0x00, 0x20, 0x33, 0x00, 0x00

; FUNCTION 0x006c1770, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch5scene24IParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006c1770  00 30 90 e5                                      ldr r3, [r0]
006c1774  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006c1778  03 00 80 e0                                      add r0, r0, r3
006c177c  e8 ff ff ea                                      b #0x6c1724

; FUNCTION 0x006c1780, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch5scene24IParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006c1780  00 30 90 e5                                      ldr r3, [r0]
006c1784  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c1788  03 00 80 e0                                      add r0, r0, r3
006c178c  e4 ff ff ea                                      b #0x6c1724

; FUNCTION 0x006c23f4, declared_size=132, range_size=132, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZN6glitch5scene24IParticleSystemSceneNodeC2EiRKNS_4core8vector3dIfEES6_S6_
; demangled: glitch::scene::IParticleSystemSceneNode::IParticleSystemSceneNode(int, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006c23f4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006c23f8  1c d0 4d e2                                      sub sp, sp, #0x1c
006c23fc  38 c0 9d e5                                      ldr ip, [sp, #0x38]
006c2400  08 60 8d e2                                      add r6, sp, #8
006c2404  00 40 a0 e1                                      mov r4, r0
006c2408  01 50 a0 e1                                      mov r5, r1
006c240c  02 80 a0 e1                                      mov r8, r2
006c2410  03 a0 a0 e1                                      mov sl, r3
006c2414  00 10 9c e5                                      ldr r1, [ip]
006c2418  08 30 9c e5                                      ldr r3, [ip, #8]
006c241c  04 20 9c e5                                      ldr r2, [ip, #4]
006c2420  06 00 a0 e1                                      mov r0, r6
006c2424  6b 69 f2 eb                                      bl #0x35c9d8
006c2428  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006c242c  04 70 85 e2                                      add r7, r5, #4
006c2430  08 20 a0 e1                                      mov r2, r8
006c2434  0a 30 a0 e1                                      mov r3, sl
006c2438  07 10 a0 e1                                      mov r1, r7
006c243c  04 00 a0 e1                                      mov r0, r4
006c2440  40 10 8d e8                                      stm sp, {r6, ip}
006c2444  1d 5b fb eb                                      bl #0x5990c0
006c2448  00 30 95 e5                                      ldr r3, [r5]
006c244c  04 00 a0 e1                                      mov r0, r4
006c2450  00 30 84 e5                                      str r3, [r4]
006c2454  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006c2458  10 20 95 e5                                      ldr r2, [r5, #0x10]
006c245c  03 20 84 e7                                      str r2, [r4, r3]
006c2460  00 30 94 e5                                      ldr r3, [r4]
006c2464  14 20 95 e5                                      ldr r2, [r5, #0x14]
006c2468  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c246c  03 20 84 e7                                      str r2, [r4, r3]
006c2470  1c d0 8d e2                                      add sp, sp, #0x1c
006c2474  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x006c3028, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZN6glitch5scene24IParticleSystemSceneNodeD0Ev
; demangled: glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006c3028  40 30 9f e5                                      ldr r3, [pc, #0x40]
006c302c  40 20 9f e5                                      ldr r2, [pc, #0x40]
006c3030  40 10 9f e5                                      ldr r1, [pc, #0x40]
006c3034  03 30 8f e0                                      add r3, pc, r3
006c3038  02 20 93 e7                                      ldr r2, [r3, r2]
006c303c  01 10 93 e7                                      ldr r1, [r3, r1]
006c3040  10 40 2d e9                                      push {r4, lr}
006c3044  5e cf 82 e2                                      add ip, r2, #0x178
006c3048  1c 20 82 e2                                      add r2, r2, #0x1c
006c304c  00 40 a0 e1                                      mov r4, r0
006c3050  00 20 80 e5                                      str r2, [r0]
006c3054  30 c1 80 e5                                      str ip, [r0, #0x130]
006c3058  04 10 81 e2                                      add r1, r1, #4
006c305c  16 57 fb eb                                      bl #0x598cbc
006c3060  04 00 a0 e1                                      mov r0, r4
006c3064  91 2c f1 eb                                      bl #0x30e2b0
006c3068  04 00 a0 e1                                      mov r0, r4
006c306c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006c3070  5c 1a 2d 00 ec 45 00 00 20 33 00 00              .byte 0x5c, 0x1a, 0x2d, 0x00, 0xec, 0x45, 0x00, 0x00, 0x20, 0x33, 0x00, 0x00

; FUNCTION 0x006c307c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch5scene24IParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006c307c  00 30 90 e5                                      ldr r3, [r0]
006c3080  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006c3084  03 00 80 e0                                      add r0, r0, r3
006c3088  e6 ff ff ea                                      b #0x6c3028

; FUNCTION 0x006c308c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::IParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch5scene24IParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006c308c  00 30 90 e5                                      ldr r3, [r0]
006c3090  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006c3094  03 00 80 e0                                      add r0, r0, r3
006c3098  e2 ff ff ea                                      b #0x6c3028
